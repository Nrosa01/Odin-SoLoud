# Odin SoLoud

This repository contains Odin bindings for [SoLoud](https://github.com/jarikomppa/soloud)

This repository contains a compiled binary of [odin-c-bindgen](https://github.com/karl-zylinski/odin-c-bindgen). It is recommended to compile your own. 

    SoLoud commit: ``e82fd32``
    odin-c-bindgen commit: ``12f4e7a``

# Features

- Odin naming convention for types and procedures
- Init_Flags as bit_set
- Basic subtype polimorphism for ``Audio_Source`` and ``Filter`` derived structures
  - This allows functions that expect ``^Audio_Source`` to receive ``^Speech`` and other compatible types. Safer than rawptr as it avoids passing certain types

# Repository structure

```
./
├── gen/
│   ├── soloud/
│   │   ├── bidgen.sjson
│   │   ├── soloud_c.h
│   │   └── soloud_c_footer.odin
│   └── bindgen.exe
├── tools/
│   └── generate_rename.odin
├── main.odin
├── soloud.dll
└── soloud/
    ├── soloud_c.odin
    └── soloud.lib
```

You only need the ./soloud and soloud.dll to use in your project. ./gen contains the neccessary files to generate bindings. ./tools contains a script to rename functions to snake case. Usually this is not recommended as it might make finding functions in the original documentation harder. Given the library is small, I prefer to keep it a bit more idiomatic.

If you don't like that, you can delete the ``"rename = {"`` block in ``bindgen.sjson``

The ``./main.odin`` file contains an usage example, adapted from SoLoud [simplest](https://github.com/jarikomppa/soloud/blob/master/demos/simplest/main.cpp) example.

# Generating new bindings

You will need to replace `./gen/soloud/soloud_c.h` with the new header. You will also need to compile SoLoud to generate the require libraries depending on your system, .dll and .lib in the case of Windows. **YOU MUST COMPILE IN X64**. By default, SoLoud [genie](https://github.com/bkaradzic/genie) will generate a visual studio project that targets x86. Odin compiler is distributed only as x64 binary so only x64 shared libraries are compatible

# End

I hope you find this useful. I made this mainly for me and I don't think I will update it much. And SoLoud hasn't updated since 2024.
