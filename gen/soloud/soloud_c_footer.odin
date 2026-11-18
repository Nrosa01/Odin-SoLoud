
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

// Independent opaque types
Aligned_Float_Buffer      :: struct {}
Tiny_Aligned_Float_Buffer :: struct {}

Soloud :: struct {}

Audio_Collider    :: struct {}
Audio_Attenuator  :: struct {}

Fader :: struct {}
File  :: struct {}


// Audio source hierarchy
Audio_Source :: struct {}

Ay :: struct {
    using audio_source: Audio_Source,
}

Bus :: struct {
    using audio_source: Audio_Source,
}

Monotone :: struct {
    using audio_source: Audio_Source,
}

Noise :: struct {
    using audio_source: Audio_Source,
}

Openmpt :: struct {
    using audio_source: Audio_Source,
}

Queue :: struct {
    using audio_source: Audio_Source,
}

Sfxr :: struct {
    using audio_source: Audio_Source,
}

Speech :: struct {
    using audio_source: Audio_Source,
}

Ted_Sid :: struct {
    using audio_source: Audio_Source,
}

Vic :: struct {
    using audio_source: Audio_Source,
}

Vizsn :: struct {
    using audio_source: Audio_Source,
}

Wav :: struct {
    using audio_source: Audio_Source,
}

Wav_Stream :: struct {
    using audio_source: Audio_Source,
}


// Filter hierarchy
Filter :: struct {}

Fftfilter :: struct {
    using filter: Filter,
}

Bassboost_Filter :: struct {
    using fft_filter: Fftfilter,
}

Biquad_Resonant_Filter :: struct {
    using filter: Filter,
}

Dcremoval_Filter :: struct {
    using filter: Filter,
}

Echo_Filter :: struct {
    using filter: Filter,
}

Flanger_Filter :: struct {
    using filter: Filter,
}

Freeverb_Filter :: struct {
    using filter: Filter,
}

Lofi_Filter :: struct {
    using filter: Filter,
}

Robotize_Filter :: struct {
    using filter: Filter,
}

Wave_Shaper_Filter :: struct {
    using filter: Filter,
}
