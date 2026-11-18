/* **************************************************
 *  WARNING: this is a generated file. Do not edit. *
 *  Any edits will be overwritten by the generator. *
 ************************************************** */

/*
SoLoud audio engine
Copyright (c) 2013-2020 Jari Komppa

This software is provided 'as-is', without any express or implied
warranty. In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

   1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software
   in a product, an acknowledgment in the product documentation would be
   appreciated but is not required.

   2. Altered source versions must be plainly marked as such, and must not be
   misrepresented as being the original software.

   3. This notice may not be removed or altered from any source
   distribution.
*/

/* SoLoud C-Api Code Generator (c)2013-2020 Jari Komppa http://iki.fi/sol/ */
package soloud

foreign import lib "soloud.lib"
_ :: lib

// Collected enumerations
Soloud_Enums :: enum i32 {
	SOLOUD_AUTO                    = 0,
	SOLOUD_SDL1                    = 1,
	SOLOUD_SDL2                    = 2,
	SOLOUD_PORTAUDIO               = 3,
	SOLOUD_WINMM                   = 4,
	SOLOUD_XAUDIO2                 = 5,
	SOLOUD_WASAPI                  = 6,
	SOLOUD_ALSA                    = 7,
	SOLOUD_JACK                    = 8,
	SOLOUD_OSS                     = 9,
	SOLOUD_OPENAL                  = 10,
	SOLOUD_COREAUDIO               = 11,
	SOLOUD_OPENSLES                = 12,
	SOLOUD_VITA_HOMEBREW           = 13,
	SOLOUD_MINIAUDIO               = 14,
	SOLOUD_NOSOUND                 = 15,
	SOLOUD_NULLDRIVER              = 16,
	SOLOUD_BACKEND_MAX             = 17,
	SOLOUD_CLIP_ROUNDOFF           = 1,
	SOLOUD_ENABLE_VISUALIZATION    = 2,
	SOLOUD_LEFT_HANDED_3D          = 4,
	SOLOUD_NO_FPU_REGISTER_CHANGE  = 8,
	SOLOUD_WAVE_SQUARE             = 0,
	SOLOUD_WAVE_SAW                = 1,
	SOLOUD_WAVE_SIN                = 2,
	SOLOUD_WAVE_TRIANGLE           = 3,
	SOLOUD_WAVE_BOUNCE             = 4,
	SOLOUD_WAVE_JAWS               = 5,
	SOLOUD_WAVE_HUMPS              = 6,
	SOLOUD_WAVE_FSQUARE            = 7,
	SOLOUD_WAVE_FSAW               = 8,
	SOLOUD_RESAMPLER_POINT         = 0,
	SOLOUD_RESAMPLER_LINEAR        = 1,
	SOLOUD_RESAMPLER_CATMULLROM    = 2,
	BASSBOOSTFILTER_WET            = 0,
	BASSBOOSTFILTER_BOOST          = 1,
	BIQUADRESONANTFILTER_LOWPASS   = 0,
	BIQUADRESONANTFILTER_HIGHPASS  = 1,
	BIQUADRESONANTFILTER_BANDPASS  = 2,
	BIQUADRESONANTFILTER_WET       = 0,
	BIQUADRESONANTFILTER_TYPE      = 1,
	BIQUADRESONANTFILTER_FREQUENCY = 2,
	BIQUADRESONANTFILTER_RESONANCE = 3,
	ECHOFILTER_WET                 = 0,
	ECHOFILTER_DELAY               = 1,
	ECHOFILTER_DECAY               = 2,
	ECHOFILTER_FILTER              = 3,
	FLANGERFILTER_WET              = 0,
	FLANGERFILTER_DELAY            = 1,
	FLANGERFILTER_FREQ             = 2,
	FREEVERBFILTER_WET             = 0,
	FREEVERBFILTER_FREEZE          = 1,
	FREEVERBFILTER_ROOMSIZE        = 2,
	FREEVERBFILTER_DAMP            = 3,
	FREEVERBFILTER_WIDTH           = 4,
	LOFIFILTER_WET                 = 0,
	LOFIFILTER_SAMPLERATE          = 1,
	LOFIFILTER_BITDEPTH            = 2,
	NOISE_WHITE                    = 0,
	NOISE_PINK                     = 1,
	NOISE_BROWNISH                 = 2,
	NOISE_BLUEISH                  = 3,
	ROBOTIZEFILTER_WET             = 0,
	ROBOTIZEFILTER_FREQ            = 1,
	ROBOTIZEFILTER_WAVE            = 2,
	SFXR_COIN                      = 0,
	SFXR_LASER                     = 1,
	SFXR_EXPLOSION                 = 2,
	SFXR_POWERUP                   = 3,
	SFXR_HURT                      = 4,
	SFXR_JUMP                      = 5,
	SFXR_BLIP                      = 6,
	SPEECH_KW_SAW                  = 0,
	SPEECH_KW_TRIANGLE             = 1,
	SPEECH_KW_SIN                  = 2,
	SPEECH_KW_SQUARE               = 3,
	SPEECH_KW_PULSE                = 4,
	SPEECH_KW_NOISE                = 5,
	SPEECH_KW_WARBLE               = 6,
	VIC_PAL                        = 0,
	VIC_NTSC                       = 1,
	VIC_BASS                       = 0,
	VIC_ALTO                       = 1,
	VIC_SOPRANO                    = 2,
	VIC_NOISE                      = 3,
	VIC_MAX_REGS                   = 4,
	WAVESHAPERFILTER_WET           = 0,
	WAVESHAPERFILTER_AMOUNT        = 1,
}

@(default_calling_convention="c")
foreign lib {
	/*
	* Soloud
	*/
	@(link_name="Soloud_destroy")
	destroy                       :: proc(aSoloud: ^Soloud) ---
	@(link_name="Soloud_create")
	create                        :: proc() -> ^Soloud ---
	@(link_name="Soloud_init")
	init                          :: proc(aSoloud: ^Soloud) -> i32 ---
	@(link_name="Soloud_initEx")
	init_ex                       :: proc(aSoloud: ^Soloud, aFlags: Init_Flags /* = Soloud::CLIP_ROUNDOFF */, aBackend: Backend /* = Soloud::AUTO */, aSamplerate: u32 /* = Soloud::AUTO */, aBufferSize: u32 /* = Soloud::AUTO */, aChannels: u32 /* = 2 */) -> i32 ---
	@(link_name="Soloud_deinit")
	deinit                        :: proc(aSoloud: ^Soloud) ---
	@(link_name="Soloud_getVersion")
	get_version                   :: proc(aSoloud: ^Soloud) -> u32 ---
	@(link_name="Soloud_getErrorString")
	get_error_string              :: proc(aSoloud: ^Soloud, aErrorCode: i32) -> cstring ---
	@(link_name="Soloud_getBackendId")
	get_backend_id                :: proc(aSoloud: ^Soloud) -> u32 ---
	@(link_name="Soloud_getBackendString")
	get_backend_string            :: proc(aSoloud: ^Soloud) -> cstring ---
	@(link_name="Soloud_getBackendChannels")
	get_backend_channels          :: proc(aSoloud: ^Soloud) -> u32 ---
	@(link_name="Soloud_getBackendSamplerate")
	get_backend_samplerate        :: proc(aSoloud: ^Soloud) -> u32 ---
	@(link_name="Soloud_getBackendBufferSize")
	get_backend_buffer_size       :: proc(aSoloud: ^Soloud) -> u32 ---
	@(link_name="Soloud_setSpeakerPosition")
	set_speaker_position          :: proc(aSoloud: ^Soloud, aChannel: u32, aX: f32, aY: f32, aZ: f32) -> i32 ---
	@(link_name="Soloud_getSpeakerPosition")
	get_speaker_position          :: proc(aSoloud: ^Soloud, aChannel: u32, aX: ^f32, aY: ^f32, aZ: ^f32) -> i32 ---
	@(link_name="Soloud_play")
	play                          :: proc(aSoloud: ^Soloud, aSound: ^Audio_Source) -> u32 ---
	@(link_name="Soloud_playEx")
	play_ex                       :: proc(aSoloud: ^Soloud, aSound: ^Audio_Source, aVolume: f32 /* = -1.0f */, aPan: f32 /* = 0.0f */, aPaused: i32 /* = 0 */, aBus: u32 /* = 0 */) -> u32 ---
	@(link_name="Soloud_playClocked")
	play_clocked                  :: proc(aSoloud: ^Soloud, aSoundTime: f64, aSound: ^Audio_Source) -> u32 ---
	@(link_name="Soloud_playClockedEx")
	play_clocked_ex               :: proc(aSoloud: ^Soloud, aSoundTime: f64, aSound: ^Audio_Source, aVolume: f32 /* = -1.0f */, aPan: f32 /* = 0.0f */, aBus: u32 /* = 0 */) -> u32 ---
	@(link_name="Soloud_play3d")
	play3d                        :: proc(aSoloud: ^Soloud, aSound: ^Audio_Source, aPosX: f32, aPosY: f32, aPosZ: f32) -> u32 ---
	@(link_name="Soloud_play3dEx")
	play3d_ex                     :: proc(aSoloud: ^Soloud, aSound: ^Audio_Source, aPosX: f32, aPosY: f32, aPosZ: f32, aVelX: f32 /* = 0.0f */, aVelY: f32 /* = 0.0f */, aVelZ: f32 /* = 0.0f */, aVolume: f32 /* = 1.0f */, aPaused: i32 /* = 0 */, aBus: u32 /* = 0 */) -> u32 ---
	@(link_name="Soloud_play3dClocked")
	play3d_clocked                :: proc(aSoloud: ^Soloud, aSoundTime: f64, aSound: ^Audio_Source, aPosX: f32, aPosY: f32, aPosZ: f32) -> u32 ---
	@(link_name="Soloud_play3dClockedEx")
	play3d_clocked_ex             :: proc(aSoloud: ^Soloud, aSoundTime: f64, aSound: ^Audio_Source, aPosX: f32, aPosY: f32, aPosZ: f32, aVelX: f32 /* = 0.0f */, aVelY: f32 /* = 0.0f */, aVelZ: f32 /* = 0.0f */, aVolume: f32 /* = 1.0f */, aBus: u32 /* = 0 */) -> u32 ---
	@(link_name="Soloud_playBackground")
	play_background               :: proc(aSoloud: ^Soloud, aSound: ^Audio_Source) -> u32 ---
	@(link_name="Soloud_playBackgroundEx")
	play_background_ex            :: proc(aSoloud: ^Soloud, aSound: ^Audio_Source, aVolume: f32 /* = -1.0f */, aPaused: i32 /* = 0 */, aBus: u32 /* = 0 */) -> u32 ---
	@(link_name="Soloud_seek")
	seek                          :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aSeconds: f64) -> i32 ---
	@(link_name="Soloud_stop")
	stop                          :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) ---
	@(link_name="Soloud_stopAll")
	stop_all                      :: proc(aSoloud: ^Soloud) ---
	@(link_name="Soloud_stopAudioSource")
	stop_audio_source             :: proc(aSoloud: ^Soloud, aSound: ^Audio_Source) ---
	@(link_name="Soloud_countAudioSource")
	count_audio_source            :: proc(aSoloud: ^Soloud, aSound: ^Audio_Source) -> i32 ---
	@(link_name="Soloud_setFilterParameter")
	set_filter_parameter          :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aFilterId: u32, aAttributeId: u32, aValue: f32) ---
	@(link_name="Soloud_getFilterParameter")
	get_filter_parameter          :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aFilterId: u32, aAttributeId: u32) -> f32 ---
	@(link_name="Soloud_fadeFilterParameter")
	fade_filter_parameter         :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aFilterId: u32, aAttributeId: u32, aTo: f32, aTime: f64) ---
	@(link_name="Soloud_oscillateFilterParameter")
	oscillate_filter_parameter    :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aFilterId: u32, aAttributeId: u32, aFrom: f32, aTo: f32, aTime: f64) ---
	@(link_name="Soloud_getStreamTime")
	get_stream_time               :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> f64 ---
	@(link_name="Soloud_getStreamPosition")
	get_stream_position           :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> f64 ---
	@(link_name="Soloud_getPause")
	get_pause                     :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> i32 ---
	@(link_name="Soloud_getVolume")
	get_volume                    :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> f32 ---
	@(link_name="Soloud_getOverallVolume")
	get_overall_volume            :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> f32 ---
	@(link_name="Soloud_getPan")
	get_pan                       :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> f32 ---
	@(link_name="Soloud_getSamplerate")
	get_samplerate                :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> f32 ---
	@(link_name="Soloud_getProtectVoice")
	get_protect_voice             :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> i32 ---
	@(link_name="Soloud_getActiveVoiceCount")
	get_active_voice_count        :: proc(aSoloud: ^Soloud) -> u32 ---
	@(link_name="Soloud_getVoiceCount")
	get_voice_count               :: proc(aSoloud: ^Soloud) -> u32 ---
	@(link_name="Soloud_isValidVoiceHandle")
	is_valid_voice_handle         :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> i32 ---
	@(link_name="Soloud_getRelativePlaySpeed")
	get_relative_play_speed       :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> f32 ---
	@(link_name="Soloud_getPostClipScaler")
	get_post_clip_scaler          :: proc(aSoloud: ^Soloud) -> f32 ---
	@(link_name="Soloud_getMainResampler")
	get_main_resampler            :: proc(aSoloud: ^Soloud) -> u32 ---
	@(link_name="Soloud_getGlobalVolume")
	get_global_volume             :: proc(aSoloud: ^Soloud) -> f32 ---
	@(link_name="Soloud_getMaxActiveVoiceCount")
	get_max_active_voice_count    :: proc(aSoloud: ^Soloud) -> u32 ---
	@(link_name="Soloud_getLooping")
	get_looping                   :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> i32 ---
	@(link_name="Soloud_getAutoStop")
	get_auto_stop                 :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> i32 ---
	@(link_name="Soloud_getLoopPoint")
	get_loop_point                :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> f64 ---
	@(link_name="Soloud_setLoopPoint")
	set_loop_point                :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aLoopPoint: f64) ---
	@(link_name="Soloud_setLooping")
	set_looping                   :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aLooping: i32) ---
	@(link_name="Soloud_setAutoStop")
	set_auto_stop                 :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aAutoStop: i32) ---
	@(link_name="Soloud_setMaxActiveVoiceCount")
	set_max_active_voice_count    :: proc(aSoloud: ^Soloud, aVoiceCount: u32) -> i32 ---
	@(link_name="Soloud_setInaudibleBehavior")
	set_inaudible_behavior        :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aMustTick: i32, aKill: i32) ---
	@(link_name="Soloud_setGlobalVolume")
	set_global_volume             :: proc(aSoloud: ^Soloud, aVolume: f32) ---
	@(link_name="Soloud_setPostClipScaler")
	set_post_clip_scaler          :: proc(aSoloud: ^Soloud, aScaler: f32) ---
	@(link_name="Soloud_setMainResampler")
	set_main_resampler            :: proc(aSoloud: ^Soloud, aResampler: u32) ---
	@(link_name="Soloud_setPause")
	set_pause                     :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aPause: i32) ---
	@(link_name="Soloud_setPauseAll")
	set_pause_all                 :: proc(aSoloud: ^Soloud, aPause: i32) ---
	@(link_name="Soloud_setRelativePlaySpeed")
	set_relative_play_speed       :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aSpeed: f32) -> i32 ---
	@(link_name="Soloud_setProtectVoice")
	set_protect_voice             :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aProtect: i32) ---
	@(link_name="Soloud_setSamplerate")
	set_samplerate                :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aSamplerate: f32) ---
	@(link_name="Soloud_setPan")
	set_pan                       :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aPan: f32) ---
	@(link_name="Soloud_setPanAbsolute")
	set_pan_absolute              :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aLVolume: f32, aRVolume: f32) ---
	@(link_name="Soloud_setChannelVolume")
	set_channel_volume            :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aChannel: u32, aVolume: f32) ---
	@(link_name="Soloud_setVolume")
	set_volume                    :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aVolume: f32) ---
	@(link_name="Soloud_setDelaySamples")
	set_delay_samples             :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aSamples: u32) ---
	@(link_name="Soloud_fadeVolume")
	fade_volume                   :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aTo: f32, aTime: f64) ---
	@(link_name="Soloud_fadePan")
	fade_pan                      :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aTo: f32, aTime: f64) ---
	@(link_name="Soloud_fadeRelativePlaySpeed")
	fade_relative_play_speed      :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aTo: f32, aTime: f64) ---
	@(link_name="Soloud_fadeGlobalVolume")
	fade_global_volume            :: proc(aSoloud: ^Soloud, aTo: f32, aTime: f64) ---
	@(link_name="Soloud_schedulePause")
	schedule_pause                :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aTime: f64) ---
	@(link_name="Soloud_scheduleStop")
	schedule_stop                 :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aTime: f64) ---
	@(link_name="Soloud_oscillateVolume")
	oscillate_volume              :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aFrom: f32, aTo: f32, aTime: f64) ---
	@(link_name="Soloud_oscillatePan")
	oscillate_pan                 :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aFrom: f32, aTo: f32, aTime: f64) ---
	@(link_name="Soloud_oscillateRelativePlaySpeed")
	oscillate_relative_play_speed :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aFrom: f32, aTo: f32, aTime: f64) ---
	@(link_name="Soloud_oscillateGlobalVolume")
	oscillate_global_volume       :: proc(aSoloud: ^Soloud, aFrom: f32, aTo: f32, aTime: f64) ---
	@(link_name="Soloud_setGlobalFilter")
	set_global_filter             :: proc(aSoloud: ^Soloud, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Soloud_setVisualizationEnable")
	set_visualization_enable      :: proc(aSoloud: ^Soloud, aEnable: i32) ---
	@(link_name="Soloud_calcFFT")
	calc_fft                      :: proc(aSoloud: ^Soloud) -> ^f32 ---
	@(link_name="Soloud_getWave")
	get_wave                      :: proc(aSoloud: ^Soloud) -> ^f32 ---
	@(link_name="Soloud_getApproximateVolume")
	get_approximate_volume        :: proc(aSoloud: ^Soloud, aChannel: u32) -> f32 ---
	@(link_name="Soloud_getLoopCount")
	get_loop_count                :: proc(aSoloud: ^Soloud, aVoiceHandle: u32) -> u32 ---
	@(link_name="Soloud_getInfo")
	get_info                      :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aInfoKey: u32) -> f32 ---
	@(link_name="Soloud_createVoiceGroup")
	create_voice_group            :: proc(aSoloud: ^Soloud) -> u32 ---
	@(link_name="Soloud_destroyVoiceGroup")
	destroy_voice_group           :: proc(aSoloud: ^Soloud, aVoiceGroupHandle: u32) -> i32 ---
	@(link_name="Soloud_addVoiceToGroup")
	add_voice_to_group            :: proc(aSoloud: ^Soloud, aVoiceGroupHandle: u32, aVoiceHandle: u32) -> i32 ---
	@(link_name="Soloud_isVoiceGroup")
	is_voice_group                :: proc(aSoloud: ^Soloud, aVoiceGroupHandle: u32) -> i32 ---
	@(link_name="Soloud_isVoiceGroupEmpty")
	is_voice_group_empty          :: proc(aSoloud: ^Soloud, aVoiceGroupHandle: u32) -> i32 ---
	@(link_name="Soloud_update3dAudio")
	update3d_audio                :: proc(aSoloud: ^Soloud) ---
	@(link_name="Soloud_set3dSoundSpeed")
	set3d_sound_speed             :: proc(aSoloud: ^Soloud, aSpeed: f32) -> i32 ---
	@(link_name="Soloud_get3dSoundSpeed")
	get3d_sound_speed             :: proc(aSoloud: ^Soloud) -> f32 ---
	@(link_name="Soloud_set3dListenerParameters")
	set3d_listener_parameters     :: proc(aSoloud: ^Soloud, aPosX: f32, aPosY: f32, aPosZ: f32, aAtX: f32, aAtY: f32, aAtZ: f32, aUpX: f32, aUpY: f32, aUpZ: f32) ---
	@(link_name="Soloud_set3dListenerParametersEx")
	set3d_listener_parameters_ex  :: proc(aSoloud: ^Soloud, aPosX: f32, aPosY: f32, aPosZ: f32, aAtX: f32, aAtY: f32, aAtZ: f32, aUpX: f32, aUpY: f32, aUpZ: f32, aVelocityX: f32 /* = 0.0f */, aVelocityY: f32 /* = 0.0f */, aVelocityZ: f32 /* = 0.0f */) ---
	@(link_name="Soloud_set3dListenerPosition")
	set3d_listener_position       :: proc(aSoloud: ^Soloud, aPosX: f32, aPosY: f32, aPosZ: f32) ---
	@(link_name="Soloud_set3dListenerAt")
	set3d_listener_at             :: proc(aSoloud: ^Soloud, aAtX: f32, aAtY: f32, aAtZ: f32) ---
	@(link_name="Soloud_set3dListenerUp")
	set3d_listener_up             :: proc(aSoloud: ^Soloud, aUpX: f32, aUpY: f32, aUpZ: f32) ---
	@(link_name="Soloud_set3dListenerVelocity")
	set3d_listener_velocity       :: proc(aSoloud: ^Soloud, aVelocityX: f32, aVelocityY: f32, aVelocityZ: f32) ---
	@(link_name="Soloud_set3dSourceParameters")
	set3d_source_parameters       :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aPosX: f32, aPosY: f32, aPosZ: f32) ---
	@(link_name="Soloud_set3dSourceParametersEx")
	set3d_source_parameters_ex    :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aPosX: f32, aPosY: f32, aPosZ: f32, aVelocityX: f32 /* = 0.0f */, aVelocityY: f32 /* = 0.0f */, aVelocityZ: f32 /* = 0.0f */) ---
	@(link_name="Soloud_set3dSourcePosition")
	set3d_source_position         :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aPosX: f32, aPosY: f32, aPosZ: f32) ---
	@(link_name="Soloud_set3dSourceVelocity")
	set3d_source_velocity         :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aVelocityX: f32, aVelocityY: f32, aVelocityZ: f32) ---
	@(link_name="Soloud_set3dSourceMinMaxDistance")
	set3d_source_min_max_distance :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Soloud_set3dSourceAttenuation")
	set3d_source_attenuation      :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Soloud_set3dSourceDopplerFactor")
	set3d_source_doppler_factor   :: proc(aSoloud: ^Soloud, aVoiceHandle: u32, aDopplerFactor: f32) ---
	@(link_name="Soloud_mix")
	mix                           :: proc(aSoloud: ^Soloud, aBuffer: ^f32, aSamples: u32) ---
	@(link_name="Soloud_mixSigned16")
	mix_signed16                  :: proc(aSoloud: ^Soloud, aBuffer: ^i16, aSamples: u32) ---

	/*
	* Ay
	*/
	@(link_name="Ay_destroy")
	ay_destroy                 :: proc(aAy: ^Ay) ---
	@(link_name="Ay_create")
	ay_create                  :: proc() -> ^Ay ---
	@(link_name="Ay_setVolume")
	ay_set_volume              :: proc(aAy: ^Ay, aVolume: f32) ---
	@(link_name="Ay_setLooping")
	ay_set_looping             :: proc(aAy: ^Ay, aLoop: i32) ---
	@(link_name="Ay_setAutoStop")
	ay_set_auto_stop           :: proc(aAy: ^Ay, aAutoStop: i32) ---
	@(link_name="Ay_set3dMinMaxDistance")
	ay_set3d_min_max_distance  :: proc(aAy: ^Ay, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Ay_set3dAttenuation")
	ay_set3d_attenuation       :: proc(aAy: ^Ay, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Ay_set3dDopplerFactor")
	ay_set3d_doppler_factor    :: proc(aAy: ^Ay, aDopplerFactor: f32) ---
	@(link_name="Ay_set3dListenerRelative")
	ay_set3d_listener_relative :: proc(aAy: ^Ay, aListenerRelative: i32) ---
	@(link_name="Ay_set3dDistanceDelay")
	ay_set3d_distance_delay    :: proc(aAy: ^Ay, aDistanceDelay: i32) ---
	@(link_name="Ay_set3dCollider")
	ay_set3d_collider          :: proc(aAy: ^Ay, aCollider: ^Audio_Collider) ---
	@(link_name="Ay_set3dColliderEx")
	ay_set3d_collider_ex       :: proc(aAy: ^Ay, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Ay_set3dAttenuator")
	ay_set3d_attenuator        :: proc(aAy: ^Ay, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Ay_setInaudibleBehavior")
	ay_set_inaudible_behavior  :: proc(aAy: ^Ay, aMustTick: i32, aKill: i32) ---
	@(link_name="Ay_setLoopPoint")
	ay_set_loop_point          :: proc(aAy: ^Ay, aLoopPoint: f64) ---
	@(link_name="Ay_getLoopPoint")
	ay_get_loop_point          :: proc(aAy: ^Ay) -> f64 ---
	@(link_name="Ay_setFilter")
	ay_set_filter              :: proc(aAy: ^Ay, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Ay_stop")
	ay_stop                    :: proc(aAy: ^Ay) ---

	/*
	* BassboostFilter
	*/
	@(link_name="BassboostFilter_destroy")
	bassboost_filter_destroy         :: proc(aBassboostFilter: ^Bassboost_Filter) ---
	@(link_name="BassboostFilter_getParamCount")
	bassboost_filter_get_param_count :: proc(aBassboostFilter: ^Bassboost_Filter) -> i32 ---
	@(link_name="BassboostFilter_getParamName")
	bassboost_filter_get_param_name  :: proc(aBassboostFilter: ^Bassboost_Filter, aParamIndex: u32) -> cstring ---
	@(link_name="BassboostFilter_getParamType")
	bassboost_filter_get_param_type  :: proc(aBassboostFilter: ^Bassboost_Filter, aParamIndex: u32) -> u32 ---
	@(link_name="BassboostFilter_getParamMax")
	bassboost_filter_get_param_max   :: proc(aBassboostFilter: ^Bassboost_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="BassboostFilter_getParamMin")
	bassboost_filter_get_param_min   :: proc(aBassboostFilter: ^Bassboost_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="BassboostFilter_setParams")
	bassboost_filter_set_params      :: proc(aBassboostFilter: ^Bassboost_Filter, aBoost: f32) -> i32 ---
	@(link_name="BassboostFilter_create")
	bassboost_filter_create          :: proc() -> ^Bassboost_Filter ---

	/*
	* BiquadResonantFilter
	*/
	@(link_name="BiquadResonantFilter_destroy")
	biquad_resonant_filter_destroy         :: proc(aBiquadResonantFilter: ^Biquad_Resonant_Filter) ---
	@(link_name="BiquadResonantFilter_getParamCount")
	biquad_resonant_filter_get_param_count :: proc(aBiquadResonantFilter: ^Biquad_Resonant_Filter) -> i32 ---
	@(link_name="BiquadResonantFilter_getParamName")
	biquad_resonant_filter_get_param_name  :: proc(aBiquadResonantFilter: ^Biquad_Resonant_Filter, aParamIndex: u32) -> cstring ---
	@(link_name="BiquadResonantFilter_getParamType")
	biquad_resonant_filter_get_param_type  :: proc(aBiquadResonantFilter: ^Biquad_Resonant_Filter, aParamIndex: u32) -> u32 ---
	@(link_name="BiquadResonantFilter_getParamMax")
	biquad_resonant_filter_get_param_max   :: proc(aBiquadResonantFilter: ^Biquad_Resonant_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="BiquadResonantFilter_getParamMin")
	biquad_resonant_filter_get_param_min   :: proc(aBiquadResonantFilter: ^Biquad_Resonant_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="BiquadResonantFilter_create")
	biquad_resonant_filter_create          :: proc() -> ^Biquad_Resonant_Filter ---
	@(link_name="BiquadResonantFilter_setParams")
	biquad_resonant_filter_set_params      :: proc(aBiquadResonantFilter: ^Biquad_Resonant_Filter, aType: i32, aFrequency: f32, aResonance: f32) -> i32 ---

	/*
	* Bus
	*/
	@(link_name="Bus_destroy")
	bus_destroy                  :: proc(aBus: ^Bus) ---
	@(link_name="Bus_create")
	bus_create                   :: proc() -> ^Bus ---
	@(link_name="Bus_setFilter")
	bus_set_filter               :: proc(aBus: ^Bus, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Bus_play")
	bus_play                     :: proc(aBus: ^Bus, aSound: ^Audio_Source) -> u32 ---
	@(link_name="Bus_playEx")
	bus_play_ex                  :: proc(aBus: ^Bus, aSound: ^Audio_Source, aVolume: f32 /* = 1.0f */, aPan: f32 /* = 0.0f */, aPaused: i32 /* = 0 */) -> u32 ---
	@(link_name="Bus_playClocked")
	bus_play_clocked             :: proc(aBus: ^Bus, aSoundTime: f64, aSound: ^Audio_Source) -> u32 ---
	@(link_name="Bus_playClockedEx")
	bus_play_clocked_ex          :: proc(aBus: ^Bus, aSoundTime: f64, aSound: ^Audio_Source, aVolume: f32 /* = 1.0f */, aPan: f32 /* = 0.0f */) -> u32 ---
	@(link_name="Bus_play3d")
	bus_play3d                   :: proc(aBus: ^Bus, aSound: ^Audio_Source, aPosX: f32, aPosY: f32, aPosZ: f32) -> u32 ---
	@(link_name="Bus_play3dEx")
	bus_play3d_ex                :: proc(aBus: ^Bus, aSound: ^Audio_Source, aPosX: f32, aPosY: f32, aPosZ: f32, aVelX: f32 /* = 0.0f */, aVelY: f32 /* = 0.0f */, aVelZ: f32 /* = 0.0f */, aVolume: f32 /* = 1.0f */, aPaused: i32 /* = 0 */) -> u32 ---
	@(link_name="Bus_play3dClocked")
	bus_play3d_clocked           :: proc(aBus: ^Bus, aSoundTime: f64, aSound: ^Audio_Source, aPosX: f32, aPosY: f32, aPosZ: f32) -> u32 ---
	@(link_name="Bus_play3dClockedEx")
	bus_play3d_clocked_ex        :: proc(aBus: ^Bus, aSoundTime: f64, aSound: ^Audio_Source, aPosX: f32, aPosY: f32, aPosZ: f32, aVelX: f32 /* = 0.0f */, aVelY: f32 /* = 0.0f */, aVelZ: f32 /* = 0.0f */, aVolume: f32 /* = 1.0f */) -> u32 ---
	@(link_name="Bus_setChannels")
	bus_set_channels             :: proc(aBus: ^Bus, aChannels: u32) -> i32 ---
	@(link_name="Bus_setVisualizationEnable")
	bus_set_visualization_enable :: proc(aBus: ^Bus, aEnable: i32) ---
	@(link_name="Bus_annexSound")
	bus_annex_sound              :: proc(aBus: ^Bus, aVoiceHandle: u32) ---
	@(link_name="Bus_calcFFT")
	bus_calc_fft                 :: proc(aBus: ^Bus) -> ^f32 ---
	@(link_name="Bus_getWave")
	bus_get_wave                 :: proc(aBus: ^Bus) -> ^f32 ---
	@(link_name="Bus_getApproximateVolume")
	bus_get_approximate_volume   :: proc(aBus: ^Bus, aChannel: u32) -> f32 ---
	@(link_name="Bus_getActiveVoiceCount")
	bus_get_active_voice_count   :: proc(aBus: ^Bus) -> u32 ---
	@(link_name="Bus_getResampler")
	bus_get_resampler            :: proc(aBus: ^Bus) -> u32 ---
	@(link_name="Bus_setResampler")
	bus_set_resampler            :: proc(aBus: ^Bus, aResampler: u32) ---
	@(link_name="Bus_setVolume")
	bus_set_volume               :: proc(aBus: ^Bus, aVolume: f32) ---
	@(link_name="Bus_setLooping")
	bus_set_looping              :: proc(aBus: ^Bus, aLoop: i32) ---
	@(link_name="Bus_setAutoStop")
	bus_set_auto_stop            :: proc(aBus: ^Bus, aAutoStop: i32) ---
	@(link_name="Bus_set3dMinMaxDistance")
	bus_set3d_min_max_distance   :: proc(aBus: ^Bus, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Bus_set3dAttenuation")
	bus_set3d_attenuation        :: proc(aBus: ^Bus, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Bus_set3dDopplerFactor")
	bus_set3d_doppler_factor     :: proc(aBus: ^Bus, aDopplerFactor: f32) ---
	@(link_name="Bus_set3dListenerRelative")
	bus_set3d_listener_relative  :: proc(aBus: ^Bus, aListenerRelative: i32) ---
	@(link_name="Bus_set3dDistanceDelay")
	bus_set3d_distance_delay     :: proc(aBus: ^Bus, aDistanceDelay: i32) ---
	@(link_name="Bus_set3dCollider")
	bus_set3d_collider           :: proc(aBus: ^Bus, aCollider: ^Audio_Collider) ---
	@(link_name="Bus_set3dColliderEx")
	bus_set3d_collider_ex        :: proc(aBus: ^Bus, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Bus_set3dAttenuator")
	bus_set3d_attenuator         :: proc(aBus: ^Bus, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Bus_setInaudibleBehavior")
	bus_set_inaudible_behavior   :: proc(aBus: ^Bus, aMustTick: i32, aKill: i32) ---
	@(link_name="Bus_setLoopPoint")
	bus_set_loop_point           :: proc(aBus: ^Bus, aLoopPoint: f64) ---
	@(link_name="Bus_getLoopPoint")
	bus_get_loop_point           :: proc(aBus: ^Bus) -> f64 ---
	@(link_name="Bus_stop")
	bus_stop                     :: proc(aBus: ^Bus) ---

	/*
	* DCRemovalFilter
	*/
	@(link_name="DCRemovalFilter_destroy")
	dc_removal_filter_destroy         :: proc(aDCRemovalFilter: ^Dcremoval_Filter) ---
	@(link_name="DCRemovalFilter_create")
	dc_removal_filter_create          :: proc() -> ^Dcremoval_Filter ---
	@(link_name="DCRemovalFilter_setParams")
	dc_removal_filter_set_params      :: proc(aDCRemovalFilter: ^Dcremoval_Filter) -> i32 ---
	@(link_name="DCRemovalFilter_setParamsEx")
	dc_removal_filter_set_params_ex   :: proc(aDCRemovalFilter: ^Dcremoval_Filter, aLength: f32 /* = 0.1f */) -> i32 ---
	@(link_name="DCRemovalFilter_getParamCount")
	dc_removal_filter_get_param_count :: proc(aDCRemovalFilter: ^Dcremoval_Filter) -> i32 ---
	@(link_name="DCRemovalFilter_getParamName")
	dc_removal_filter_get_param_name  :: proc(aDCRemovalFilter: ^Dcremoval_Filter, aParamIndex: u32) -> cstring ---
	@(link_name="DCRemovalFilter_getParamType")
	dc_removal_filter_get_param_type  :: proc(aDCRemovalFilter: ^Dcremoval_Filter, aParamIndex: u32) -> u32 ---
	@(link_name="DCRemovalFilter_getParamMax")
	dc_removal_filter_get_param_max   :: proc(aDCRemovalFilter: ^Dcremoval_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="DCRemovalFilter_getParamMin")
	dc_removal_filter_get_param_min   :: proc(aDCRemovalFilter: ^Dcremoval_Filter, aParamIndex: u32) -> f32 ---

	/*
	* EchoFilter
	*/
	@(link_name="EchoFilter_destroy")
	echo_filter_destroy         :: proc(aEchoFilter: ^Echo_Filter) ---
	@(link_name="EchoFilter_getParamCount")
	echo_filter_get_param_count :: proc(aEchoFilter: ^Echo_Filter) -> i32 ---
	@(link_name="EchoFilter_getParamName")
	echo_filter_get_param_name  :: proc(aEchoFilter: ^Echo_Filter, aParamIndex: u32) -> cstring ---
	@(link_name="EchoFilter_getParamType")
	echo_filter_get_param_type  :: proc(aEchoFilter: ^Echo_Filter, aParamIndex: u32) -> u32 ---
	@(link_name="EchoFilter_getParamMax")
	echo_filter_get_param_max   :: proc(aEchoFilter: ^Echo_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="EchoFilter_getParamMin")
	echo_filter_get_param_min   :: proc(aEchoFilter: ^Echo_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="EchoFilter_create")
	echo_filter_create          :: proc() -> ^Echo_Filter ---
	@(link_name="EchoFilter_setParams")
	echo_filter_set_params      :: proc(aEchoFilter: ^Echo_Filter, aDelay: f32) -> i32 ---
	@(link_name="EchoFilter_setParamsEx")
	echo_filter_set_params_ex   :: proc(aEchoFilter: ^Echo_Filter, aDelay: f32, aDecay: f32 /* = 0.7f */, aFilter: f32 /* = 0.0f */) -> i32 ---

	/*
	* FFTFilter
	*/
	@(link_name="FFTFilter_destroy")
	fft_filter_destroy         :: proc(aFFTFilter: ^Fftfilter) ---
	@(link_name="FFTFilter_create")
	fft_filter_create          :: proc() -> ^Fftfilter ---
	@(link_name="FFTFilter_getParamCount")
	fft_filter_get_param_count :: proc(aFFTFilter: ^Fftfilter) -> i32 ---
	@(link_name="FFTFilter_getParamName")
	fft_filter_get_param_name  :: proc(aFFTFilter: ^Fftfilter, aParamIndex: u32) -> cstring ---
	@(link_name="FFTFilter_getParamType")
	fft_filter_get_param_type  :: proc(aFFTFilter: ^Fftfilter, aParamIndex: u32) -> u32 ---
	@(link_name="FFTFilter_getParamMax")
	fft_filter_get_param_max   :: proc(aFFTFilter: ^Fftfilter, aParamIndex: u32) -> f32 ---
	@(link_name="FFTFilter_getParamMin")
	fft_filter_get_param_min   :: proc(aFFTFilter: ^Fftfilter, aParamIndex: u32) -> f32 ---

	/*
	* FlangerFilter
	*/
	@(link_name="FlangerFilter_destroy")
	flanger_filter_destroy         :: proc(aFlangerFilter: ^Flanger_Filter) ---
	@(link_name="FlangerFilter_getParamCount")
	flanger_filter_get_param_count :: proc(aFlangerFilter: ^Flanger_Filter) -> i32 ---
	@(link_name="FlangerFilter_getParamName")
	flanger_filter_get_param_name  :: proc(aFlangerFilter: ^Flanger_Filter, aParamIndex: u32) -> cstring ---
	@(link_name="FlangerFilter_getParamType")
	flanger_filter_get_param_type  :: proc(aFlangerFilter: ^Flanger_Filter, aParamIndex: u32) -> u32 ---
	@(link_name="FlangerFilter_getParamMax")
	flanger_filter_get_param_max   :: proc(aFlangerFilter: ^Flanger_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="FlangerFilter_getParamMin")
	flanger_filter_get_param_min   :: proc(aFlangerFilter: ^Flanger_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="FlangerFilter_create")
	flanger_filter_create          :: proc() -> ^Flanger_Filter ---
	@(link_name="FlangerFilter_setParams")
	flanger_filter_set_params      :: proc(aFlangerFilter: ^Flanger_Filter, aDelay: f32, aFreq: f32) -> i32 ---

	/*
	* FreeverbFilter
	*/
	@(link_name="FreeverbFilter_destroy")
	freeverb_filter_destroy         :: proc(aFreeverbFilter: ^Freeverb_Filter) ---
	@(link_name="FreeverbFilter_getParamCount")
	freeverb_filter_get_param_count :: proc(aFreeverbFilter: ^Freeverb_Filter) -> i32 ---
	@(link_name="FreeverbFilter_getParamName")
	freeverb_filter_get_param_name  :: proc(aFreeverbFilter: ^Freeverb_Filter, aParamIndex: u32) -> cstring ---
	@(link_name="FreeverbFilter_getParamType")
	freeverb_filter_get_param_type  :: proc(aFreeverbFilter: ^Freeverb_Filter, aParamIndex: u32) -> u32 ---
	@(link_name="FreeverbFilter_getParamMax")
	freeverb_filter_get_param_max   :: proc(aFreeverbFilter: ^Freeverb_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="FreeverbFilter_getParamMin")
	freeverb_filter_get_param_min   :: proc(aFreeverbFilter: ^Freeverb_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="FreeverbFilter_create")
	freeverb_filter_create          :: proc() -> ^Freeverb_Filter ---
	@(link_name="FreeverbFilter_setParams")
	freeverb_filter_set_params      :: proc(aFreeverbFilter: ^Freeverb_Filter, aMode: f32, aRoomSize: f32, aDamp: f32, aWidth: f32) -> i32 ---

	/*
	* LofiFilter
	*/
	@(link_name="LofiFilter_destroy")
	lofi_filter_destroy         :: proc(aLofiFilter: ^Lofi_Filter) ---
	@(link_name="LofiFilter_getParamCount")
	lofi_filter_get_param_count :: proc(aLofiFilter: ^Lofi_Filter) -> i32 ---
	@(link_name="LofiFilter_getParamName")
	lofi_filter_get_param_name  :: proc(aLofiFilter: ^Lofi_Filter, aParamIndex: u32) -> cstring ---
	@(link_name="LofiFilter_getParamType")
	lofi_filter_get_param_type  :: proc(aLofiFilter: ^Lofi_Filter, aParamIndex: u32) -> u32 ---
	@(link_name="LofiFilter_getParamMax")
	lofi_filter_get_param_max   :: proc(aLofiFilter: ^Lofi_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="LofiFilter_getParamMin")
	lofi_filter_get_param_min   :: proc(aLofiFilter: ^Lofi_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="LofiFilter_create")
	lofi_filter_create          :: proc() -> ^Lofi_Filter ---
	@(link_name="LofiFilter_setParams")
	lofi_filter_set_params      :: proc(aLofiFilter: ^Lofi_Filter, aSampleRate: f32, aBitdepth: f32) -> i32 ---

	/*
	* Monotone
	*/
	@(link_name="Monotone_destroy")
	monotone_destroy                 :: proc(aMonotone: ^Monotone) ---
	@(link_name="Monotone_create")
	monotone_create                  :: proc() -> ^Monotone ---
	@(link_name="Monotone_setParams")
	monotone_set_params              :: proc(aMonotone: ^Monotone, aHardwareChannels: i32) -> i32 ---
	@(link_name="Monotone_setParamsEx")
	monotone_set_params_ex           :: proc(aMonotone: ^Monotone, aHardwareChannels: i32, aWaveform: i32 /* = Soloud::WAVE_SQUARE */) -> i32 ---
	@(link_name="Monotone_load")
	monotone_load                    :: proc(aMonotone: ^Monotone, aFilename: cstring) -> i32 ---
	@(link_name="Monotone_loadMem")
	monotone_load_mem                :: proc(aMonotone: ^Monotone, aMem: ^u8, aLength: u32) -> i32 ---
	@(link_name="Monotone_loadMemEx")
	monotone_load_mem_ex             :: proc(aMonotone: ^Monotone, aMem: ^u8, aLength: u32, aCopy: i32 /* = false */, aTakeOwnership: i32 /* = true */) -> i32 ---
	@(link_name="Monotone_loadFile")
	monotone_load_file               :: proc(aMonotone: ^Monotone, aFile: ^File) -> i32 ---
	@(link_name="Monotone_setVolume")
	monotone_set_volume              :: proc(aMonotone: ^Monotone, aVolume: f32) ---
	@(link_name="Monotone_setLooping")
	monotone_set_looping             :: proc(aMonotone: ^Monotone, aLoop: i32) ---
	@(link_name="Monotone_setAutoStop")
	monotone_set_auto_stop           :: proc(aMonotone: ^Monotone, aAutoStop: i32) ---
	@(link_name="Monotone_set3dMinMaxDistance")
	monotone_set3d_min_max_distance  :: proc(aMonotone: ^Monotone, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Monotone_set3dAttenuation")
	monotone_set3d_attenuation       :: proc(aMonotone: ^Monotone, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Monotone_set3dDopplerFactor")
	monotone_set3d_doppler_factor    :: proc(aMonotone: ^Monotone, aDopplerFactor: f32) ---
	@(link_name="Monotone_set3dListenerRelative")
	monotone_set3d_listener_relative :: proc(aMonotone: ^Monotone, aListenerRelative: i32) ---
	@(link_name="Monotone_set3dDistanceDelay")
	monotone_set3d_distance_delay    :: proc(aMonotone: ^Monotone, aDistanceDelay: i32) ---
	@(link_name="Monotone_set3dCollider")
	monotone_set3d_collider          :: proc(aMonotone: ^Monotone, aCollider: ^Audio_Collider) ---
	@(link_name="Monotone_set3dColliderEx")
	monotone_set3d_collider_ex       :: proc(aMonotone: ^Monotone, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Monotone_set3dAttenuator")
	monotone_set3d_attenuator        :: proc(aMonotone: ^Monotone, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Monotone_setInaudibleBehavior")
	monotone_set_inaudible_behavior  :: proc(aMonotone: ^Monotone, aMustTick: i32, aKill: i32) ---
	@(link_name="Monotone_setLoopPoint")
	monotone_set_loop_point          :: proc(aMonotone: ^Monotone, aLoopPoint: f64) ---
	@(link_name="Monotone_getLoopPoint")
	monotone_get_loop_point          :: proc(aMonotone: ^Monotone) -> f64 ---
	@(link_name="Monotone_setFilter")
	monotone_set_filter              :: proc(aMonotone: ^Monotone, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Monotone_stop")
	monotone_stop                    :: proc(aMonotone: ^Monotone) ---

	/*
	* Noise
	*/
	@(link_name="Noise_destroy")
	noise_destroy                 :: proc(aNoise: ^Noise) ---
	@(link_name="Noise_create")
	noise_create                  :: proc() -> ^Noise ---
	@(link_name="Noise_setOctaveScale")
	noise_set_octave_scale        :: proc(aNoise: ^Noise, aOct0: f32, aOct1: f32, aOct2: f32, aOct3: f32, aOct4: f32, aOct5: f32, aOct6: f32, aOct7: f32, aOct8: f32, aOct9: f32) ---
	@(link_name="Noise_setType")
	noise_set_type                :: proc(aNoise: ^Noise, aType: i32) ---
	@(link_name="Noise_setVolume")
	noise_set_volume              :: proc(aNoise: ^Noise, aVolume: f32) ---
	@(link_name="Noise_setLooping")
	noise_set_looping             :: proc(aNoise: ^Noise, aLoop: i32) ---
	@(link_name="Noise_setAutoStop")
	noise_set_auto_stop           :: proc(aNoise: ^Noise, aAutoStop: i32) ---
	@(link_name="Noise_set3dMinMaxDistance")
	noise_set3d_min_max_distance  :: proc(aNoise: ^Noise, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Noise_set3dAttenuation")
	noise_set3d_attenuation       :: proc(aNoise: ^Noise, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Noise_set3dDopplerFactor")
	noise_set3d_doppler_factor    :: proc(aNoise: ^Noise, aDopplerFactor: f32) ---
	@(link_name="Noise_set3dListenerRelative")
	noise_set3d_listener_relative :: proc(aNoise: ^Noise, aListenerRelative: i32) ---
	@(link_name="Noise_set3dDistanceDelay")
	noise_set3d_distance_delay    :: proc(aNoise: ^Noise, aDistanceDelay: i32) ---
	@(link_name="Noise_set3dCollider")
	noise_set3d_collider          :: proc(aNoise: ^Noise, aCollider: ^Audio_Collider) ---
	@(link_name="Noise_set3dColliderEx")
	noise_set3d_collider_ex       :: proc(aNoise: ^Noise, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Noise_set3dAttenuator")
	noise_set3d_attenuator        :: proc(aNoise: ^Noise, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Noise_setInaudibleBehavior")
	noise_set_inaudible_behavior  :: proc(aNoise: ^Noise, aMustTick: i32, aKill: i32) ---
	@(link_name="Noise_setLoopPoint")
	noise_set_loop_point          :: proc(aNoise: ^Noise, aLoopPoint: f64) ---
	@(link_name="Noise_getLoopPoint")
	noise_get_loop_point          :: proc(aNoise: ^Noise) -> f64 ---
	@(link_name="Noise_setFilter")
	noise_set_filter              :: proc(aNoise: ^Noise, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Noise_stop")
	noise_stop                    :: proc(aNoise: ^Noise) ---

	/*
	* Openmpt
	*/
	@(link_name="Openmpt_destroy")
	openmpt_destroy                 :: proc(aOpenmpt: ^Openmpt) ---
	@(link_name="Openmpt_create")
	openmpt_create                  :: proc() -> ^Openmpt ---
	@(link_name="Openmpt_load")
	openmpt_load                    :: proc(aOpenmpt: ^Openmpt, aFilename: cstring) -> i32 ---
	@(link_name="Openmpt_loadMem")
	openmpt_load_mem                :: proc(aOpenmpt: ^Openmpt, aMem: ^u8, aLength: u32) -> i32 ---
	@(link_name="Openmpt_loadMemEx")
	openmpt_load_mem_ex             :: proc(aOpenmpt: ^Openmpt, aMem: ^u8, aLength: u32, aCopy: i32 /* = false */, aTakeOwnership: i32 /* = true */) -> i32 ---
	@(link_name="Openmpt_loadFile")
	openmpt_load_file               :: proc(aOpenmpt: ^Openmpt, aFile: ^File) -> i32 ---
	@(link_name="Openmpt_setVolume")
	openmpt_set_volume              :: proc(aOpenmpt: ^Openmpt, aVolume: f32) ---
	@(link_name="Openmpt_setLooping")
	openmpt_set_looping             :: proc(aOpenmpt: ^Openmpt, aLoop: i32) ---
	@(link_name="Openmpt_setAutoStop")
	openmpt_set_auto_stop           :: proc(aOpenmpt: ^Openmpt, aAutoStop: i32) ---
	@(link_name="Openmpt_set3dMinMaxDistance")
	openmpt_set3d_min_max_distance  :: proc(aOpenmpt: ^Openmpt, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Openmpt_set3dAttenuation")
	openmpt_set3d_attenuation       :: proc(aOpenmpt: ^Openmpt, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Openmpt_set3dDopplerFactor")
	openmpt_set3d_doppler_factor    :: proc(aOpenmpt: ^Openmpt, aDopplerFactor: f32) ---
	@(link_name="Openmpt_set3dListenerRelative")
	openmpt_set3d_listener_relative :: proc(aOpenmpt: ^Openmpt, aListenerRelative: i32) ---
	@(link_name="Openmpt_set3dDistanceDelay")
	openmpt_set3d_distance_delay    :: proc(aOpenmpt: ^Openmpt, aDistanceDelay: i32) ---
	@(link_name="Openmpt_set3dCollider")
	openmpt_set3d_collider          :: proc(aOpenmpt: ^Openmpt, aCollider: ^Audio_Collider) ---
	@(link_name="Openmpt_set3dColliderEx")
	openmpt_set3d_collider_ex       :: proc(aOpenmpt: ^Openmpt, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Openmpt_set3dAttenuator")
	openmpt_set3d_attenuator        :: proc(aOpenmpt: ^Openmpt, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Openmpt_setInaudibleBehavior")
	openmpt_set_inaudible_behavior  :: proc(aOpenmpt: ^Openmpt, aMustTick: i32, aKill: i32) ---
	@(link_name="Openmpt_setLoopPoint")
	openmpt_set_loop_point          :: proc(aOpenmpt: ^Openmpt, aLoopPoint: f64) ---
	@(link_name="Openmpt_getLoopPoint")
	openmpt_get_loop_point          :: proc(aOpenmpt: ^Openmpt) -> f64 ---
	@(link_name="Openmpt_setFilter")
	openmpt_set_filter              :: proc(aOpenmpt: ^Openmpt, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Openmpt_stop")
	openmpt_stop                    :: proc(aOpenmpt: ^Openmpt) ---

	/*
	* Queue
	*/
	@(link_name="Queue_destroy")
	queue_destroy                      :: proc(aQueue: ^Queue) ---
	@(link_name="Queue_create")
	queue_create                       :: proc() -> ^Queue ---
	@(link_name="Queue_play")
	queue_play                         :: proc(aQueue: ^Queue, aSound: ^Audio_Source) -> i32 ---
	@(link_name="Queue_getQueueCount")
	queue_get_queue_count              :: proc(aQueue: ^Queue) -> u32 ---
	@(link_name="Queue_isCurrentlyPlaying")
	queue_is_currently_playing         :: proc(aQueue: ^Queue, aSound: ^Audio_Source) -> i32 ---
	@(link_name="Queue_setParamsFromAudioSource")
	queue_set_params_from_audio_source :: proc(aQueue: ^Queue, aSound: ^Audio_Source) -> i32 ---
	@(link_name="Queue_setParams")
	queue_set_params                   :: proc(aQueue: ^Queue, aSamplerate: f32) -> i32 ---
	@(link_name="Queue_setParamsEx")
	queue_set_params_ex                :: proc(aQueue: ^Queue, aSamplerate: f32, aChannels: u32 /* = 2 */) -> i32 ---
	@(link_name="Queue_setVolume")
	queue_set_volume                   :: proc(aQueue: ^Queue, aVolume: f32) ---
	@(link_name="Queue_setLooping")
	queue_set_looping                  :: proc(aQueue: ^Queue, aLoop: i32) ---
	@(link_name="Queue_setAutoStop")
	queue_set_auto_stop                :: proc(aQueue: ^Queue, aAutoStop: i32) ---
	@(link_name="Queue_set3dMinMaxDistance")
	queue_set3d_min_max_distance       :: proc(aQueue: ^Queue, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Queue_set3dAttenuation")
	queue_set3d_attenuation            :: proc(aQueue: ^Queue, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Queue_set3dDopplerFactor")
	queue_set3d_doppler_factor         :: proc(aQueue: ^Queue, aDopplerFactor: f32) ---
	@(link_name="Queue_set3dListenerRelative")
	queue_set3d_listener_relative      :: proc(aQueue: ^Queue, aListenerRelative: i32) ---
	@(link_name="Queue_set3dDistanceDelay")
	queue_set3d_distance_delay         :: proc(aQueue: ^Queue, aDistanceDelay: i32) ---
	@(link_name="Queue_set3dCollider")
	queue_set3d_collider               :: proc(aQueue: ^Queue, aCollider: ^Audio_Collider) ---
	@(link_name="Queue_set3dColliderEx")
	queue_set3d_collider_ex            :: proc(aQueue: ^Queue, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Queue_set3dAttenuator")
	queue_set3d_attenuator             :: proc(aQueue: ^Queue, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Queue_setInaudibleBehavior")
	queue_set_inaudible_behavior       :: proc(aQueue: ^Queue, aMustTick: i32, aKill: i32) ---
	@(link_name="Queue_setLoopPoint")
	queue_set_loop_point               :: proc(aQueue: ^Queue, aLoopPoint: f64) ---
	@(link_name="Queue_getLoopPoint")
	queue_get_loop_point               :: proc(aQueue: ^Queue) -> f64 ---
	@(link_name="Queue_setFilter")
	queue_set_filter                   :: proc(aQueue: ^Queue, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Queue_stop")
	queue_stop                         :: proc(aQueue: ^Queue) ---

	/*
	* RobotizeFilter
	*/
	@(link_name="RobotizeFilter_destroy")
	robotize_filter_destroy         :: proc(aRobotizeFilter: ^Robotize_Filter) ---
	@(link_name="RobotizeFilter_getParamCount")
	robotize_filter_get_param_count :: proc(aRobotizeFilter: ^Robotize_Filter) -> i32 ---
	@(link_name="RobotizeFilter_getParamName")
	robotize_filter_get_param_name  :: proc(aRobotizeFilter: ^Robotize_Filter, aParamIndex: u32) -> cstring ---
	@(link_name="RobotizeFilter_getParamType")
	robotize_filter_get_param_type  :: proc(aRobotizeFilter: ^Robotize_Filter, aParamIndex: u32) -> u32 ---
	@(link_name="RobotizeFilter_getParamMax")
	robotize_filter_get_param_max   :: proc(aRobotizeFilter: ^Robotize_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="RobotizeFilter_getParamMin")
	robotize_filter_get_param_min   :: proc(aRobotizeFilter: ^Robotize_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="RobotizeFilter_setParams")
	robotize_filter_set_params      :: proc(aRobotizeFilter: ^Robotize_Filter, aFreq: f32, aWaveform: i32) ---
	@(link_name="RobotizeFilter_create")
	robotize_filter_create          :: proc() -> ^Robotize_Filter ---

	/*
	* Sfxr
	*/
	@(link_name="Sfxr_destroy")
	sfxr_destroy                 :: proc(aSfxr: ^Sfxr) ---
	@(link_name="Sfxr_create")
	sfxr_create                  :: proc() -> ^Sfxr ---
	@(link_name="Sfxr_resetParams")
	sfxr_reset_params            :: proc(aSfxr: ^Sfxr) ---
	@(link_name="Sfxr_loadParams")
	sfxr_load_params             :: proc(aSfxr: ^Sfxr, aFilename: cstring) -> i32 ---
	@(link_name="Sfxr_loadParamsMem")
	sfxr_load_params_mem         :: proc(aSfxr: ^Sfxr, aMem: ^u8, aLength: u32) -> i32 ---
	@(link_name="Sfxr_loadParamsMemEx")
	sfxr_load_params_mem_ex      :: proc(aSfxr: ^Sfxr, aMem: ^u8, aLength: u32, aCopy: i32 /* = false */, aTakeOwnership: i32 /* = true */) -> i32 ---
	@(link_name="Sfxr_loadParamsFile")
	sfxr_load_params_file        :: proc(aSfxr: ^Sfxr, aFile: ^File) -> i32 ---
	@(link_name="Sfxr_loadPreset")
	sfxr_load_preset             :: proc(aSfxr: ^Sfxr, aPresetNo: i32, aRandSeed: i32) -> i32 ---
	@(link_name="Sfxr_setVolume")
	sfxr_set_volume              :: proc(aSfxr: ^Sfxr, aVolume: f32) ---
	@(link_name="Sfxr_setLooping")
	sfxr_set_looping             :: proc(aSfxr: ^Sfxr, aLoop: i32) ---
	@(link_name="Sfxr_setAutoStop")
	sfxr_set_auto_stop           :: proc(aSfxr: ^Sfxr, aAutoStop: i32) ---
	@(link_name="Sfxr_set3dMinMaxDistance")
	sfxr_set3d_min_max_distance  :: proc(aSfxr: ^Sfxr, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Sfxr_set3dAttenuation")
	sfxr_set3d_attenuation       :: proc(aSfxr: ^Sfxr, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Sfxr_set3dDopplerFactor")
	sfxr_set3d_doppler_factor    :: proc(aSfxr: ^Sfxr, aDopplerFactor: f32) ---
	@(link_name="Sfxr_set3dListenerRelative")
	sfxr_set3d_listener_relative :: proc(aSfxr: ^Sfxr, aListenerRelative: i32) ---
	@(link_name="Sfxr_set3dDistanceDelay")
	sfxr_set3d_distance_delay    :: proc(aSfxr: ^Sfxr, aDistanceDelay: i32) ---
	@(link_name="Sfxr_set3dCollider")
	sfxr_set3d_collider          :: proc(aSfxr: ^Sfxr, aCollider: ^Audio_Collider) ---
	@(link_name="Sfxr_set3dColliderEx")
	sfxr_set3d_collider_ex       :: proc(aSfxr: ^Sfxr, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Sfxr_set3dAttenuator")
	sfxr_set3d_attenuator        :: proc(aSfxr: ^Sfxr, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Sfxr_setInaudibleBehavior")
	sfxr_set_inaudible_behavior  :: proc(aSfxr: ^Sfxr, aMustTick: i32, aKill: i32) ---
	@(link_name="Sfxr_setLoopPoint")
	sfxr_set_loop_point          :: proc(aSfxr: ^Sfxr, aLoopPoint: f64) ---
	@(link_name="Sfxr_getLoopPoint")
	sfxr_get_loop_point          :: proc(aSfxr: ^Sfxr) -> f64 ---
	@(link_name="Sfxr_setFilter")
	sfxr_set_filter              :: proc(aSfxr: ^Sfxr, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Sfxr_stop")
	sfxr_stop                    :: proc(aSfxr: ^Sfxr) ---

	/*
	* Speech
	*/
	@(link_name="Speech_destroy")
	speech_destroy                 :: proc(aSpeech: ^Speech) ---
	@(link_name="Speech_create")
	speech_create                  :: proc() -> ^Speech ---
	@(link_name="Speech_setText")
	speech_set_text                :: proc(aSpeech: ^Speech, aText: cstring) -> i32 ---
	@(link_name="Speech_setParams")
	speech_set_params              :: proc(aSpeech: ^Speech) -> i32 ---
	@(link_name="Speech_setParamsEx")
	speech_set_params_ex           :: proc(aSpeech: ^Speech, aBaseFrequency: u32 /* = 1330 */, aBaseSpeed: f32 /* = 10.0f */, aBaseDeclination: f32 /* = 0.5f */, aBaseWaveform: i32 /* = KW_TRIANGLE */) -> i32 ---
	@(link_name="Speech_setVolume")
	speech_set_volume              :: proc(aSpeech: ^Speech, aVolume: f32) ---
	@(link_name="Speech_setLooping")
	speech_set_looping             :: proc(aSpeech: ^Speech, aLoop: i32) ---
	@(link_name="Speech_setAutoStop")
	speech_set_auto_stop           :: proc(aSpeech: ^Speech, aAutoStop: i32) ---
	@(link_name="Speech_set3dMinMaxDistance")
	speech_set3d_min_max_distance  :: proc(aSpeech: ^Speech, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Speech_set3dAttenuation")
	speech_set3d_attenuation       :: proc(aSpeech: ^Speech, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Speech_set3dDopplerFactor")
	speech_set3d_doppler_factor    :: proc(aSpeech: ^Speech, aDopplerFactor: f32) ---
	@(link_name="Speech_set3dListenerRelative")
	speech_set3d_listener_relative :: proc(aSpeech: ^Speech, aListenerRelative: i32) ---
	@(link_name="Speech_set3dDistanceDelay")
	speech_set3d_distance_delay    :: proc(aSpeech: ^Speech, aDistanceDelay: i32) ---
	@(link_name="Speech_set3dCollider")
	speech_set3d_collider          :: proc(aSpeech: ^Speech, aCollider: ^Audio_Collider) ---
	@(link_name="Speech_set3dColliderEx")
	speech_set3d_collider_ex       :: proc(aSpeech: ^Speech, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Speech_set3dAttenuator")
	speech_set3d_attenuator        :: proc(aSpeech: ^Speech, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Speech_setInaudibleBehavior")
	speech_set_inaudible_behavior  :: proc(aSpeech: ^Speech, aMustTick: i32, aKill: i32) ---
	@(link_name="Speech_setLoopPoint")
	speech_set_loop_point          :: proc(aSpeech: ^Speech, aLoopPoint: f64) ---
	@(link_name="Speech_getLoopPoint")
	speech_get_loop_point          :: proc(aSpeech: ^Speech) -> f64 ---
	@(link_name="Speech_setFilter")
	speech_set_filter              :: proc(aSpeech: ^Speech, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Speech_stop")
	speech_stop                    :: proc(aSpeech: ^Speech) ---

	/*
	* TedSid
	*/
	@(link_name="TedSid_destroy")
	ted_sid_destroy                 :: proc(aTedSid: ^Ted_Sid) ---
	@(link_name="TedSid_create")
	ted_sid_create                  :: proc() -> ^Ted_Sid ---
	@(link_name="TedSid_load")
	ted_sid_load                    :: proc(aTedSid: ^Ted_Sid, aFilename: cstring) -> i32 ---
	@(link_name="TedSid_loadMem")
	ted_sid_load_mem                :: proc(aTedSid: ^Ted_Sid, aMem: ^u8, aLength: u32) -> i32 ---
	@(link_name="TedSid_loadMemEx")
	ted_sid_load_mem_ex             :: proc(aTedSid: ^Ted_Sid, aMem: ^u8, aLength: u32, aCopy: i32 /* = false */, aTakeOwnership: i32 /* = true */) -> i32 ---
	@(link_name="TedSid_loadFile")
	ted_sid_load_file               :: proc(aTedSid: ^Ted_Sid, aFile: ^File) -> i32 ---
	@(link_name="TedSid_setVolume")
	ted_sid_set_volume              :: proc(aTedSid: ^Ted_Sid, aVolume: f32) ---
	@(link_name="TedSid_setLooping")
	ted_sid_set_looping             :: proc(aTedSid: ^Ted_Sid, aLoop: i32) ---
	@(link_name="TedSid_setAutoStop")
	ted_sid_set_auto_stop           :: proc(aTedSid: ^Ted_Sid, aAutoStop: i32) ---
	@(link_name="TedSid_set3dMinMaxDistance")
	ted_sid_set3d_min_max_distance  :: proc(aTedSid: ^Ted_Sid, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="TedSid_set3dAttenuation")
	ted_sid_set3d_attenuation       :: proc(aTedSid: ^Ted_Sid, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="TedSid_set3dDopplerFactor")
	ted_sid_set3d_doppler_factor    :: proc(aTedSid: ^Ted_Sid, aDopplerFactor: f32) ---
	@(link_name="TedSid_set3dListenerRelative")
	ted_sid_set3d_listener_relative :: proc(aTedSid: ^Ted_Sid, aListenerRelative: i32) ---
	@(link_name="TedSid_set3dDistanceDelay")
	ted_sid_set3d_distance_delay    :: proc(aTedSid: ^Ted_Sid, aDistanceDelay: i32) ---
	@(link_name="TedSid_set3dCollider")
	ted_sid_set3d_collider          :: proc(aTedSid: ^Ted_Sid, aCollider: ^Audio_Collider) ---
	@(link_name="TedSid_set3dColliderEx")
	ted_sid_set3d_collider_ex       :: proc(aTedSid: ^Ted_Sid, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="TedSid_set3dAttenuator")
	ted_sid_set3d_attenuator        :: proc(aTedSid: ^Ted_Sid, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="TedSid_setInaudibleBehavior")
	ted_sid_set_inaudible_behavior  :: proc(aTedSid: ^Ted_Sid, aMustTick: i32, aKill: i32) ---
	@(link_name="TedSid_setLoopPoint")
	ted_sid_set_loop_point          :: proc(aTedSid: ^Ted_Sid, aLoopPoint: f64) ---
	@(link_name="TedSid_getLoopPoint")
	ted_sid_get_loop_point          :: proc(aTedSid: ^Ted_Sid) -> f64 ---
	@(link_name="TedSid_setFilter")
	ted_sid_set_filter              :: proc(aTedSid: ^Ted_Sid, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="TedSid_stop")
	ted_sid_stop                    :: proc(aTedSid: ^Ted_Sid) ---

	/*
	* Vic
	*/
	@(link_name="Vic_destroy")
	vic_destroy                 :: proc(aVic: ^Vic) ---
	@(link_name="Vic_create")
	vic_create                  :: proc() -> ^Vic ---
	@(link_name="Vic_setModel")
	vic_set_model               :: proc(aVic: ^Vic, model: i32) ---
	@(link_name="Vic_getModel")
	vic_get_model               :: proc(aVic: ^Vic) -> i32 ---
	@(link_name="Vic_setRegister")
	vic_set_register            :: proc(aVic: ^Vic, reg: i32, value: u8) ---
	@(link_name="Vic_getRegister")
	vic_get_register            :: proc(aVic: ^Vic, reg: i32) -> u8 ---
	@(link_name="Vic_setVolume")
	vic_set_volume              :: proc(aVic: ^Vic, aVolume: f32) ---
	@(link_name="Vic_setLooping")
	vic_set_looping             :: proc(aVic: ^Vic, aLoop: i32) ---
	@(link_name="Vic_setAutoStop")
	vic_set_auto_stop           :: proc(aVic: ^Vic, aAutoStop: i32) ---
	@(link_name="Vic_set3dMinMaxDistance")
	vic_set3d_min_max_distance  :: proc(aVic: ^Vic, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Vic_set3dAttenuation")
	vic_set3d_attenuation       :: proc(aVic: ^Vic, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Vic_set3dDopplerFactor")
	vic_set3d_doppler_factor    :: proc(aVic: ^Vic, aDopplerFactor: f32) ---
	@(link_name="Vic_set3dListenerRelative")
	vic_set3d_listener_relative :: proc(aVic: ^Vic, aListenerRelative: i32) ---
	@(link_name="Vic_set3dDistanceDelay")
	vic_set3d_distance_delay    :: proc(aVic: ^Vic, aDistanceDelay: i32) ---
	@(link_name="Vic_set3dCollider")
	vic_set3d_collider          :: proc(aVic: ^Vic, aCollider: ^Audio_Collider) ---
	@(link_name="Vic_set3dColliderEx")
	vic_set3d_collider_ex       :: proc(aVic: ^Vic, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Vic_set3dAttenuator")
	vic_set3d_attenuator        :: proc(aVic: ^Vic, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Vic_setInaudibleBehavior")
	vic_set_inaudible_behavior  :: proc(aVic: ^Vic, aMustTick: i32, aKill: i32) ---
	@(link_name="Vic_setLoopPoint")
	vic_set_loop_point          :: proc(aVic: ^Vic, aLoopPoint: f64) ---
	@(link_name="Vic_getLoopPoint")
	vic_get_loop_point          :: proc(aVic: ^Vic) -> f64 ---
	@(link_name="Vic_setFilter")
	vic_set_filter              :: proc(aVic: ^Vic, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Vic_stop")
	vic_stop                    :: proc(aVic: ^Vic) ---

	/*
	* Vizsn
	*/
	@(link_name="Vizsn_destroy")
	vizsn_destroy                 :: proc(aVizsn: ^Vizsn) ---
	@(link_name="Vizsn_create")
	vizsn_create                  :: proc() -> ^Vizsn ---
	@(link_name="Vizsn_setText")
	vizsn_set_text                :: proc(aVizsn: ^Vizsn, aText: cstring) ---
	@(link_name="Vizsn_setVolume")
	vizsn_set_volume              :: proc(aVizsn: ^Vizsn, aVolume: f32) ---
	@(link_name="Vizsn_setLooping")
	vizsn_set_looping             :: proc(aVizsn: ^Vizsn, aLoop: i32) ---
	@(link_name="Vizsn_setAutoStop")
	vizsn_set_auto_stop           :: proc(aVizsn: ^Vizsn, aAutoStop: i32) ---
	@(link_name="Vizsn_set3dMinMaxDistance")
	vizsn_set3d_min_max_distance  :: proc(aVizsn: ^Vizsn, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Vizsn_set3dAttenuation")
	vizsn_set3d_attenuation       :: proc(aVizsn: ^Vizsn, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Vizsn_set3dDopplerFactor")
	vizsn_set3d_doppler_factor    :: proc(aVizsn: ^Vizsn, aDopplerFactor: f32) ---
	@(link_name="Vizsn_set3dListenerRelative")
	vizsn_set3d_listener_relative :: proc(aVizsn: ^Vizsn, aListenerRelative: i32) ---
	@(link_name="Vizsn_set3dDistanceDelay")
	vizsn_set3d_distance_delay    :: proc(aVizsn: ^Vizsn, aDistanceDelay: i32) ---
	@(link_name="Vizsn_set3dCollider")
	vizsn_set3d_collider          :: proc(aVizsn: ^Vizsn, aCollider: ^Audio_Collider) ---
	@(link_name="Vizsn_set3dColliderEx")
	vizsn_set3d_collider_ex       :: proc(aVizsn: ^Vizsn, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Vizsn_set3dAttenuator")
	vizsn_set3d_attenuator        :: proc(aVizsn: ^Vizsn, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Vizsn_setInaudibleBehavior")
	vizsn_set_inaudible_behavior  :: proc(aVizsn: ^Vizsn, aMustTick: i32, aKill: i32) ---
	@(link_name="Vizsn_setLoopPoint")
	vizsn_set_loop_point          :: proc(aVizsn: ^Vizsn, aLoopPoint: f64) ---
	@(link_name="Vizsn_getLoopPoint")
	vizsn_get_loop_point          :: proc(aVizsn: ^Vizsn) -> f64 ---
	@(link_name="Vizsn_setFilter")
	vizsn_set_filter              :: proc(aVizsn: ^Vizsn, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Vizsn_stop")
	vizsn_stop                    :: proc(aVizsn: ^Vizsn) ---

	/*
	* Wav
	*/
	@(link_name="Wav_destroy")
	wav_destroy                 :: proc(aWav: ^Wav) ---
	@(link_name="Wav_create")
	wav_create                  :: proc() -> ^Wav ---
	@(link_name="Wav_load")
	wav_load                    :: proc(aWav: ^Wav, aFilename: cstring) -> i32 ---
	@(link_name="Wav_loadMem")
	wav_load_mem                :: proc(aWav: ^Wav, aMem: ^u8, aLength: u32) -> i32 ---
	@(link_name="Wav_loadMemEx")
	wav_load_mem_ex             :: proc(aWav: ^Wav, aMem: ^u8, aLength: u32, aCopy: i32 /* = false */, aTakeOwnership: i32 /* = true */) -> i32 ---
	@(link_name="Wav_loadFile")
	wav_load_file               :: proc(aWav: ^Wav, aFile: ^File) -> i32 ---
	@(link_name="Wav_loadRawWave8")
	wav_load_raw_wave8          :: proc(aWav: ^Wav, aMem: ^u8, aLength: u32) -> i32 ---
	@(link_name="Wav_loadRawWave8Ex")
	wav_load_raw_wave8ex        :: proc(aWav: ^Wav, aMem: ^u8, aLength: u32, aSamplerate: f32 /* = 44100.0f */, aChannels: u32 /* = 1 */) -> i32 ---
	@(link_name="Wav_loadRawWave16")
	wav_load_raw_wave16         :: proc(aWav: ^Wav, aMem: ^i16, aLength: u32) -> i32 ---
	@(link_name="Wav_loadRawWave16Ex")
	wav_load_raw_wave16ex       :: proc(aWav: ^Wav, aMem: ^i16, aLength: u32, aSamplerate: f32 /* = 44100.0f */, aChannels: u32 /* = 1 */) -> i32 ---
	@(link_name="Wav_loadRawWave")
	wav_load_raw_wave           :: proc(aWav: ^Wav, aMem: ^f32, aLength: u32) -> i32 ---
	@(link_name="Wav_loadRawWaveEx")
	wav_load_raw_wave_ex        :: proc(aWav: ^Wav, aMem: ^f32, aLength: u32, aSamplerate: f32 /* = 44100.0f */, aChannels: u32 /* = 1 */, aCopy: i32 /* = false */, aTakeOwnership: i32 /* = true */) -> i32 ---
	@(link_name="Wav_getLength")
	wav_get_length              :: proc(aWav: ^Wav) -> f64 ---
	@(link_name="Wav_setVolume")
	wav_set_volume              :: proc(aWav: ^Wav, aVolume: f32) ---
	@(link_name="Wav_setLooping")
	wav_set_looping             :: proc(aWav: ^Wav, aLoop: i32) ---
	@(link_name="Wav_setAutoStop")
	wav_set_auto_stop           :: proc(aWav: ^Wav, aAutoStop: i32) ---
	@(link_name="Wav_set3dMinMaxDistance")
	wav_set3d_min_max_distance  :: proc(aWav: ^Wav, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="Wav_set3dAttenuation")
	wav_set3d_attenuation       :: proc(aWav: ^Wav, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="Wav_set3dDopplerFactor")
	wav_set3d_doppler_factor    :: proc(aWav: ^Wav, aDopplerFactor: f32) ---
	@(link_name="Wav_set3dListenerRelative")
	wav_set3d_listener_relative :: proc(aWav: ^Wav, aListenerRelative: i32) ---
	@(link_name="Wav_set3dDistanceDelay")
	wav_set3d_distance_delay    :: proc(aWav: ^Wav, aDistanceDelay: i32) ---
	@(link_name="Wav_set3dCollider")
	wav_set3d_collider          :: proc(aWav: ^Wav, aCollider: ^Audio_Collider) ---
	@(link_name="Wav_set3dColliderEx")
	wav_set3d_collider_ex       :: proc(aWav: ^Wav, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="Wav_set3dAttenuator")
	wav_set3d_attenuator        :: proc(aWav: ^Wav, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="Wav_setInaudibleBehavior")
	wav_set_inaudible_behavior  :: proc(aWav: ^Wav, aMustTick: i32, aKill: i32) ---
	@(link_name="Wav_setLoopPoint")
	wav_set_loop_point          :: proc(aWav: ^Wav, aLoopPoint: f64) ---
	@(link_name="Wav_getLoopPoint")
	wav_get_loop_point          :: proc(aWav: ^Wav) -> f64 ---
	@(link_name="Wav_setFilter")
	wav_set_filter              :: proc(aWav: ^Wav, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="Wav_stop")
	wav_stop                    :: proc(aWav: ^Wav) ---

	/*
	* WaveShaperFilter
	*/
	@(link_name="WaveShaperFilter_destroy")
	wave_shaper_filter_destroy         :: proc(aWaveShaperFilter: ^Wave_Shaper_Filter) ---
	@(link_name="WaveShaperFilter_setParams")
	wave_shaper_filter_set_params      :: proc(aWaveShaperFilter: ^Wave_Shaper_Filter, aAmount: f32) -> i32 ---
	@(link_name="WaveShaperFilter_create")
	wave_shaper_filter_create          :: proc() -> ^Wave_Shaper_Filter ---
	@(link_name="WaveShaperFilter_getParamCount")
	wave_shaper_filter_get_param_count :: proc(aWaveShaperFilter: ^Wave_Shaper_Filter) -> i32 ---
	@(link_name="WaveShaperFilter_getParamName")
	wave_shaper_filter_get_param_name  :: proc(aWaveShaperFilter: ^Wave_Shaper_Filter, aParamIndex: u32) -> cstring ---
	@(link_name="WaveShaperFilter_getParamType")
	wave_shaper_filter_get_param_type  :: proc(aWaveShaperFilter: ^Wave_Shaper_Filter, aParamIndex: u32) -> u32 ---
	@(link_name="WaveShaperFilter_getParamMax")
	wave_shaper_filter_get_param_max   :: proc(aWaveShaperFilter: ^Wave_Shaper_Filter, aParamIndex: u32) -> f32 ---
	@(link_name="WaveShaperFilter_getParamMin")
	wave_shaper_filter_get_param_min   :: proc(aWaveShaperFilter: ^Wave_Shaper_Filter, aParamIndex: u32) -> f32 ---

	/*
	* WavStream
	*/
	@(link_name="WavStream_destroy")
	wav_stream_destroy                 :: proc(aWavStream: ^Wav_Stream) ---
	@(link_name="WavStream_create")
	wav_stream_create                  :: proc() -> ^Wav_Stream ---
	@(link_name="WavStream_load")
	wav_stream_load                    :: proc(aWavStream: ^Wav_Stream, aFilename: cstring) -> i32 ---
	@(link_name="WavStream_loadMem")
	wav_stream_load_mem                :: proc(aWavStream: ^Wav_Stream, aData: ^u8, aDataLen: u32) -> i32 ---
	@(link_name="WavStream_loadMemEx")
	wav_stream_load_mem_ex             :: proc(aWavStream: ^Wav_Stream, aData: ^u8, aDataLen: u32, aCopy: i32 /* = false */, aTakeOwnership: i32 /* = true */) -> i32 ---
	@(link_name="WavStream_loadToMem")
	wav_stream_load_to_mem             :: proc(aWavStream: ^Wav_Stream, aFilename: cstring) -> i32 ---
	@(link_name="WavStream_loadFile")
	wav_stream_load_file               :: proc(aWavStream: ^Wav_Stream, aFile: ^File) -> i32 ---
	@(link_name="WavStream_loadFileToMem")
	wav_stream_load_file_to_mem        :: proc(aWavStream: ^Wav_Stream, aFile: ^File) -> i32 ---
	@(link_name="WavStream_getLength")
	wav_stream_get_length              :: proc(aWavStream: ^Wav_Stream) -> f64 ---
	@(link_name="WavStream_setVolume")
	wav_stream_set_volume              :: proc(aWavStream: ^Wav_Stream, aVolume: f32) ---
	@(link_name="WavStream_setLooping")
	wav_stream_set_looping             :: proc(aWavStream: ^Wav_Stream, aLoop: i32) ---
	@(link_name="WavStream_setAutoStop")
	wav_stream_set_auto_stop           :: proc(aWavStream: ^Wav_Stream, aAutoStop: i32) ---
	@(link_name="WavStream_set3dMinMaxDistance")
	wav_stream_set3d_min_max_distance  :: proc(aWavStream: ^Wav_Stream, aMinDistance: f32, aMaxDistance: f32) ---
	@(link_name="WavStream_set3dAttenuation")
	wav_stream_set3d_attenuation       :: proc(aWavStream: ^Wav_Stream, aAttenuationModel: u32, aAttenuationRolloffFactor: f32) ---
	@(link_name="WavStream_set3dDopplerFactor")
	wav_stream_set3d_doppler_factor    :: proc(aWavStream: ^Wav_Stream, aDopplerFactor: f32) ---
	@(link_name="WavStream_set3dListenerRelative")
	wav_stream_set3d_listener_relative :: proc(aWavStream: ^Wav_Stream, aListenerRelative: i32) ---
	@(link_name="WavStream_set3dDistanceDelay")
	wav_stream_set3d_distance_delay    :: proc(aWavStream: ^Wav_Stream, aDistanceDelay: i32) ---
	@(link_name="WavStream_set3dCollider")
	wav_stream_set3d_collider          :: proc(aWavStream: ^Wav_Stream, aCollider: ^Audio_Collider) ---
	@(link_name="WavStream_set3dColliderEx")
	wav_stream_set3d_collider_ex       :: proc(aWavStream: ^Wav_Stream, aCollider: ^Audio_Collider, aUserData: i32 /* = 0 */) ---
	@(link_name="WavStream_set3dAttenuator")
	wav_stream_set3d_attenuator        :: proc(aWavStream: ^Wav_Stream, aAttenuator: ^Audio_Attenuator) ---
	@(link_name="WavStream_setInaudibleBehavior")
	wav_stream_set_inaudible_behavior  :: proc(aWavStream: ^Wav_Stream, aMustTick: i32, aKill: i32) ---
	@(link_name="WavStream_setLoopPoint")
	wav_stream_set_loop_point          :: proc(aWavStream: ^Wav_Stream, aLoopPoint: f64) ---
	@(link_name="WavStream_getLoopPoint")
	wav_stream_get_loop_point          :: proc(aWavStream: ^Wav_Stream) -> f64 ---
	@(link_name="WavStream_setFilter")
	wav_stream_set_filter              :: proc(aWavStream: ^Wav_Stream, aFilterId: u32, aFilter: ^Filter) ---
	@(link_name="WavStream_stop")
	wav_stream_stop                    :: proc(aWavStream: ^Wav_Stream) ---
}


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
