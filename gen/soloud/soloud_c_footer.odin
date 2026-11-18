
// Only Miniaudio is supported. Other backend haven't been tested
Backend :: enum u32 {
    AUTO           = 0,
    SDL1           = 1,
    SDL2           = 2,
    PORTAUDIO      = 3,
    WINMM          = 4,
    XAUDIO2        = 5,
    WASAPI         = 6,
    ALSA           = 7,
    JACK           = 8,
    OSS            = 9,
    OPENAL         = 10,
    COREAUDIO      = 11,
    OPENSLES       = 12,
    VITA_HOMEBREW  = 13,
    MINIAUDIO      = 14,
    NOSOUND        = 15,
    NULLDRIVER     = 16,
}

Init_Flag :: enum u32 {
    CLIP_ROUNDOFF,
    ENABLE_VISUALIZATION,
    LEFT_HANDED_3D,
    NO_FPU_REGISTER_CHANGE,
}

Init_Flags :: bit_set[Init_Flag; u32]
