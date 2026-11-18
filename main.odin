// Demostration file that mimics "simplest" project from SoLoud

package main

import "core:fmt"
import "soloud"
import "core:time"

main :: proc() {
	// Equivalent to SoLoud::Soloud soloud;
	// In C++ declaring that calls the constructor internally
	engine := soloud.create()
	defer soloud.destroy(engine)

	result := soloud.init_ex(
        engine,
        {.CLIP_ROUNDOFF},
        .MINIAUDIO,
        0, // Sample rate: AUTO
        0, // Buffer size: AUTO
        2, // Channels: stereo
    )

    if result != 0 {
    	fmt.printfln("SoLoud didn't start well. Error: %v", soloud.get_error_string(engine, result))
        return
    }

    // C++ already calls that when destroying the engine
    // But it's still a good practice to do
    defer soloud.deinit(engine)

    // Equivalent to SoLoud::Speech speech;
	speech : ^soloud.Speech = soloud.speech_create()
	defer soloud.speech_destroy(speech)
	soloud.speech_set_text(speech, "1 2 3   1 2 3   Hello world. Welcome to So-Loud.")
	soloud.play(engine, speech)

	for soloud.get_active_voice_count(engine) > 0 {
		time.sleep(100 * time.Millisecond)
	}
}
