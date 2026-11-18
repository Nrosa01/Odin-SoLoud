// This file generates a rename.sjson that can be copied into bindgen.sjon
// This is totally optional and manual to use

package main

import "core:unicode"
import "core:fmt"
import "core:os"
import "core:strings"

INPUT_PATH :: "gen/soloud/soloud_c.h"
OUTPUT_PATH :: "gen/soloud/rename.sjson"

is_identifier :: proc(c: u8) -> bool {
    return unicode.is_letter(rune(c)) || unicode.is_digit(rune(c)) || c == '_'
}

extract_function_name :: proc(input_line: string) -> string {
	line := strings.trim_space(input_line)

	if len(line) == 0 {
		return ""
	}

	// Ignore preprocessor directives and comments
	if line[0] == '#' || line[0] == '/' || line[0] == '*' {
		return ""
	}

	// SoLoud C API declarations end with a semicolon
	if line[len(line) - 1] != ';' {
		return ""
	}

	// Find the opening parenthesis of the function declaration
	open_paren := -1
	for i := 0; i < len(line); i += 1 {
		if line[i] == '(' {
			open_paren = i
			break
		}
	}
	if open_paren <= 0 {
		return ""
	}

	// Walk backwards to extract the identifier before '('
	start := open_paren
	for start > 0 {
		if !is_identifier(line[start - 1]) {
			break
		}

		start -= 1
	}
	if start == open_paren {
		return ""
	}
	name := line[start:open_paren]

	// SoLoud C API function names start with an uppercase letter
	if name[0] < 'A' || name[0] > 'Z' {
		return ""
	}

	return name
}

main :: proc() {
	header_data, read_err := os.read_entire_file(INPUT_PATH, context.allocator)

	if read_err != nil {
		fmt.println("Failed to read header:", os.error_string(read_err))
		return
	}

	header := string(header_data)

	output := strings.builder_make()
	defer strings.builder_destroy(&output)

	strings.write_string(&output, "rename = {\n")

	function_count := 0
	line_start := 0
	for i := 0; i <= len(header); i += 1 {
		if i == len(header) || header[i] == '\n' {
			line := header[line_start:i]
			function_name := extract_function_name(line)

			if function_name != "" {
				snake_name, conversion_err := strings.to_snake_case(function_name)

				if conversion_err != nil {
					fmt.println("Failed to convert:", function_name)
					return
				}

				strings.write_string(&output, "\t\"")
				strings.write_string(&output, function_name)
				strings.write_string(&output, "\" = \"")

				strings.write_string(&output, snake_name)
				strings.write_string(&output, "\"\n")

				function_count += 1
			}

			line_start = i + 1
		}
	}

	strings.write_string(&output, "}\n")

	write_err := os.write_entire_file(OUTPUT_PATH, strings.to_string(output))

	if write_err != nil {
		fmt.println("Failed to write output:", os.error_string(write_err))
		return
	}

	fmt.println("Generated", function_count, "function renames.")
	fmt.println("Output:", OUTPUT_PATH)
}
