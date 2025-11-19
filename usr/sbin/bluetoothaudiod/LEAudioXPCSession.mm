@interface LEAudioXPCSession
- (LEAudioXPCSession)initWithConnection:(id)a3;
- (void)_handlekCBMsgChangeSessionMicrophoneGainMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgChangeSessionMicrophoneMuteStateMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgChangeSessionVolumeMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgChangeSessionVolumeMuteStateMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgChangeSessionVolumeOffsetMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgLEAudioRegisterMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgReadPresetsMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgSetActivePresetMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgSetMicrophoneMuteMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgSetVolumeMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgSetVolumeMuteMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgSetVolumeOffSetMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgWriteMicrophoneAudioInputMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgWritePresetNameMsg:(id)a3 reply:(id)a4;
- (void)_handlekCBMsgWriteVolumeAudioInputMsg:(id)a3 reply:(id)a4;
- (void)activePresetUpdated:(id)a3 withIndex:(unsigned __int8)a4;
- (void)handleMsg:(id)a3;
- (void)microphoneInputGainUpdated:(id)a3 withGain:(char)a4;
- (void)microphoneMuteUpdated:(id)a3 withMute:(unsigned __int8)a4;
- (void)presetNameUpdated:(id)a3 withIndex:(unsigned __int8)a4;
- (void)presetsUpdated:(id)a3;
- (void)sendLEAudioMsg:(const char *)a3 withArgs:(id)a4;
- (void)sessionCompleted:(id)a3;
- (void)sessionMicrophoneGainUpdated:(id)a3 withMicrophoneGain:(char)a4;
- (void)sessionMicrophoneMuteUpdated:(id)a3 withMicrophoneMute:(unsigned __int8)a4;
- (void)sessionVolumeMuteUpdated:(id)a3 withVolumeMute:(unsigned __int8)a4;
- (void)sessionVolumeOffsetUpdated:(id)a3 withVolumeOffset:(char)a4;
- (void)sessionVolumeUpdated:(id)a3 withVolume:(unsigned __int8)a4;
- (void)supportedFeaturesUpdated:(id)a3;
- (void)volumeInputGainUpdated:(id)a3 withGain:(char)a4;
- (void)volumeMuteUpdated:(id)a3 withMute:(unsigned __int8)a4;
- (void)volumeOffsetUpdated:(id)a3 withOffset:(char)a4;
- (void)volumeUpdated:(id)a3 withVolume:(unsigned __int8)a4;
@end

@implementation LEAudioXPCSession

- (LEAudioXPCSession)initWithConnection:(id)a3
{
  v8.receiver = self;
  v8.super_class = LEAudioXPCSession;
  v3 = [(LEAudioXpcConnection *)&v8 initWithConnection:a3];
  v4 = qword_1000A9FE8;
  qword_1000A9FE8 = v3;

  v5 = +[ConnectionManager instance];
  v6 = qword_1000A9FF0;
  qword_1000A9FF0 = v5;

  return v3;
}

- (void)sendLEAudioMsg:(const char *)a3 withArgs:(id)a4
{
  v6 = a4;
  *keys = *&off_1000955D0;
  v10[0] = xpc_string_create(a3);
  v7 = v6;
  v10[1] = v7;
  v8 = xpc_dictionary_create(keys, v10, 2uLL);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CB94();
  }

  [(LEAudioXpcConnection *)self sendMsg:v8, v10[0]];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)handleMsg:(id)a3
{
  v4 = a3;
  v5 = [(LEAudioXpcConnection *)self stringForKey:"kCBMsgId" optional:0 dict:v4];
  v6 = [(LEAudioXpcConnection *)self xpcDictForKey:"kCBMsgArgs" optional:1 dict:v4];
  reply = xpc_dictionary_create_reply(v4);

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CBFC();
  }

  v8 = [NSString stringWithFormat:@"_handle%@Msg:reply:", v5];
  v9 = NSSelectorFromString(v8);

  if (objc_opt_respondsToSelector())
  {
    [self v9];
  }

  if (reply)
  {
    [(LEAudioXpcConnection *)self sendReply:reply];
  }
}

- (void)_handlekCBMsgLEAudioRegisterMsg:(id)a3 reply:(id)a4
{
  v4 = [(LEAudioXpcConnection *)self stringForKey:"kCBMsgArgLEAudioClient" optional:0 dict:a3];
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CC64();
  }
}

- (void)_handlekCBMsgSetVolumeMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  xuuid = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioDeviceUUID");
  v6 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(xuuid)];
  v7 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolume" optional:0 dict:v5];

  [qword_1000A9FF0 changeVolume:v6 withVolume:{objc_msgSend(v7, "unsignedCharValue")}];
}

- (void)_handlekCBMsgSetVolumeOffSetMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioChangeCounter" optional:0 dict:v5];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioLocation" optional:0 dict:v5];
  v10 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolumeOffset" optional:0 dict:v5];

  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_handleSetVolumeOffSetMsg - changeCouter: %@, locatino: %@, offset: %@", &v12, 0x20u);
  }

  [qword_1000A9FF0 changeVolumeOffset:v7 withOffset:objc_msgSend(v10 forAudioLocation:{"shortValue"), objc_msgSend(v9, "unsignedIntValue")}];
}

- (void)_handlekCBMsgSetVolumeMuteMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolumeMuteState" optional:0 dict:v5];

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CCCC();
  }

  [qword_1000A9FF0 changeVolumeMute:v7 withMute:{objc_msgSend(v8, "unsignedCharValue")}];
}

- (void)_handlekCBMsgWriteVolumeAudioInputMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioAudioInputOpcode" optional:0 dict:v5];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioAudioInputType" optional:0 dict:v5];
  v10 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolumeGain" optional:0 dict:v5];

  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_handleWriteVolumeAudioInputMsg - changeCouter: %@, locatino: %@, gain: %@", &v12, 0x20u);
  }

  [qword_1000A9FF0 changeVolumeAudioInputGainSetting:v7 withGainSetting:objc_msgSend(v10 forInputType:{"charValue"), objc_msgSend(v9, "unsignedCharValue")}];
}

- (void)_handlekCBMsgSetMicrophoneMuteMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioMicrophoneMuteState" optional:0 dict:v5];

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CD34();
  }

  [qword_1000A9FF0 changeMirophoneMute:v7 withMute:{objc_msgSend(v8, "unsignedCharValue")}];
}

- (void)_handlekCBMsgWriteMicrophoneAudioInputMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioAudioInputOpcode" optional:0 dict:v5];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioAudioInputType" optional:0 dict:v5];
  v10 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioMicrophoneGain" optional:0 dict:v5];

  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_handleWriteMicrophoneAudioInputMsg - changeCouter: %@, locatino: %@, gain: %@", &v12, 0x20u);
  }

  [qword_1000A9FF0 changeMicrophoneGainSetting:v7 withGainSetting:objc_msgSend(v10 forInputType:{"charValue"), objc_msgSend(v9, "unsignedCharValue")}];
}

- (void)_handlekCBMsgReadPresetsMsg:(id)a3 reply:(id)a4
{
  v4 = xpc_dictionary_get_value(a3, "kCBMsgArgLEAudioDeviceUUID");
  v5 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v4)];
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CD9C(v6);
  }

  [qword_1000A9FF0 readPresets:v5 withStartIndex:1 withNumPresets:255];
}

- (void)_handlekCBMsgSetActivePresetMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioPresetType" optional:0 dict:v5];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioPresetIndex" optional:0 dict:v5];

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CDE0();
  }

  [qword_1000A9FF0 setActivePreset:v7 withType:objc_msgSend(v8 withIndex:{"unsignedCharValue"), objc_msgSend(v9, "unsignedCharValue")}];
}

- (void)_handlekCBMsgWritePresetNameMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioPresetIndex" optional:0 dict:v5];
  v9 = [(LEAudioXpcConnection *)self stringForKey:"kCBMsgArgLEAudioPresetName" optional:0 dict:v5];

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CE54();
  }

  [qword_1000A9FF0 writePresetName:v7 withName:v9 forIndex:{objc_msgSend(v8, "unsignedCharValue")}];
}

- (void)volumeUpdated:(id)a3 withVolume:(unsigned __int8)a4
{
  v4 = a4;
  *uuid = 0;
  v11 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [v6 peripheral];

  v9 = [v8 identifier];
  [v9 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioVolume", v4);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioVolumeUpdated" withArgs:v7];
}

- (void)volumeOffsetUpdated:(id)a3 withOffset:(char)a4
{
  v4 = a4;
  *uuid = 0;
  v11 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [v6 peripheral];

  v9 = [v8 identifier];
  [v9 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgLEAudioVolumeOffset", v4);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioVolumeOffsetUpdated" withArgs:v7];
}

- (void)volumeMuteUpdated:(id)a3 withMute:(unsigned __int8)a4
{
  v4 = a4;
  *uuid = 0;
  v11 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [v6 peripheral];

  v9 = [v8 identifier];
  [v9 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioVolumeMuteState", v4);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioVolumeMuteUpdated" withArgs:v7];
}

- (void)volumeInputGainUpdated:(id)a3 withGain:(char)a4
{
  v4 = a4;
  *uuid = 0;
  v11 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [v6 peripheral];

  v9 = [v8 identifier];
  [v9 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgLEAudioVolumeGain", v4);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioVolumeInputGainUpdated" withArgs:v7];
}

- (void)microphoneMuteUpdated:(id)a3 withMute:(unsigned __int8)a4
{
  v4 = a4;
  *uuid = 0;
  v11 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [v6 peripheral];

  v9 = [v8 identifier];
  [v9 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioMicrophoneMuteState", v4);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioMicrophoneMuteUpdated" withArgs:v7];
}

- (void)microphoneInputGainUpdated:(id)a3 withGain:(char)a4
{
  v4 = a4;
  *uuid = 0;
  v11 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [v6 peripheral];

  v9 = [v8 identifier];
  [v9 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgLEAudioMicrophoneGain", v4);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioMicrophoneGainUpdated" withArgs:v7];
}

- (void)presetsUpdated:(id)a3
{
  v3 = a3;
  xdict = xpc_dictionary_create(0, 0, 0);
  v4 = xpc_array_create(0, 0);
  v5 = xpc_array_create(0, 0);
  v6 = xpc_array_create(0, 0);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v3 hasInterface];
  v8 = [v7 presets];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v3 hasInterface];
        v15 = [v14 presets];
        v16 = [v15 objectForKey:v13];

        xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, [v16 index]);
        xpc_array_set_uint64(v5, 0xFFFFFFFFFFFFFFFFLL, [v16 isAvailable] | objc_msgSend(v16, "writable"));
        v17 = [v16 name];
        xpc_array_set_string(v6, 0xFFFFFFFFFFFFFFFFLL, [v17 UTF8String]);
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  *uuid = 0;
  v28 = 0;
  v18 = [v3 peripheral];
  v19 = [v18 identifier];
  [v19 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(xdict, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_value(xdict, "kCBMsgArgLEAudioDevicePresetIndexes", v4);
  xpc_dictionary_set_value(xdict, "kCBMsgArgLEAudioDevicePresetProperties", v5);
  xpc_dictionary_set_value(xdict, "kCBMsgArgLEAudioDevicePresetNames", v6);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioReadPresetUpdated" withArgs:xdict];
}

- (void)activePresetUpdated:(id)a3 withIndex:(unsigned __int8)a4
{
  v4 = a4;
  *uuid = 0;
  v11 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [v6 peripheral];

  v9 = [v8 identifier];
  [v9 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioPresetIndex", v4);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioActivePresetUpdated" withArgs:v7];
}

- (void)presetNameUpdated:(id)a3 withIndex:(unsigned __int8)a4
{
  v4 = a4;
  *uuid = 0;
  v11 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [v6 peripheral];

  v9 = [v8 identifier];
  [v9 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioPresetIndex", v4);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioPresetNameUpdated" withArgs:v7];
}

- (void)supportedFeaturesUpdated:(id)a3
{
  *uuid = 0;
  v15 = 0;
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = [v4 hasInterface];
  v7 = [v6 getHearingAidType];

  v8 = [v4 hasInterface];
  LOBYTE(v6) = [v8 presetSyncSupported];

  v9 = [v4 hasInterface];
  LOBYTE(v8) = [v9 independentPresets];

  v10 = [v4 hasInterface];
  LOBYTE(v9) = [v10 dynamicPresents];

  v11 = [v4 hasInterface];
  LOBYTE(v10) = [v11 writablePresentsSupported];

  v12 = [v4 peripheral];

  v13 = [v12 identifier];
  [v13 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v5, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v5, "kCBMsgArgLEAudioHearingAidType", v7);
  xpc_dictionary_set_BOOL(v5, "kCBMsgArgLEAudioHearingAidSyncSupported", v6);
  xpc_dictionary_set_BOOL(v5, "kCBMsgArgLEAudioHearingAidIndependent", v8);
  xpc_dictionary_set_BOOL(v5, "kCBMsgArgLEAudioHearingAidDynamic", v9);
  xpc_dictionary_set_BOOL(v5, "kCBMsgArgLEAudioHearingAidWritable", v10);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioHearingAidFeaturesUpdated" withArgs:v5];
}

- (void)_handlekCBMsgChangeSessionVolumeMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioSessionID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolume" optional:0 dict:v5];
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
    [v8 floatValue];
    v13 = 138412802;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = v12;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_handleChangeSessionVolumeMsg: %@, id:%@, value: %f", &v13, 0x20u);
  }

  v10 = +[ConnectionManager instance];
  [v8 floatValue];
  [v10 updateVolumeForSession:v7 withVolume:?];
}

- (void)_handlekCBMsgChangeSessionVolumeOffsetMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioSessionID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioLocation" optional:0 dict:v5];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolumeOffset" optional:0 dict:v5];
  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v12 = v10;
    v13 = 138413058;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    v17 = 1024;
    v18 = [v8 unsignedCharValue];
    v19 = 1024;
    v20 = [v9 shortValue];
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "_handleChangeSessionVolumeOffsetMsg: %@, id:%@, location: %d, offset: %d", &v13, 0x22u);
  }

  v11 = +[ConnectionManager instance];
  [v11 updateVolumeOffsetForSession:v7 withOffset:objc_msgSend(v9 forAudioLocation:{"shortValue"), objc_msgSend(v8, "unsignedIntValue")}];
}

- (void)_handlekCBMsgChangeSessionVolumeMuteStateMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioSessionID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolumeMuteState" optional:0 dict:v5];
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    v17 = [v8 unsignedCharValue];
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_handleChangeSessionVolumeMuteStateMsg: %@, id:%@, value: %d", &v12, 0x1Cu);
  }

  v10 = +[ConnectionManager instance];
  [v10 updateVolumeMuteForSession:v7 withMute:{objc_msgSend(v8, "unsignedCharValue")}];
}

- (void)_handlekCBMsgChangeSessionMicrophoneMuteStateMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioSessionID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioMicrophoneMuteState" optional:0 dict:v5];
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    v17 = [v8 unsignedCharValue];
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_handleChangeSessionMicrophoneMuteStateMsg: %@, id:%@,  value: %d", &v12, 0x1Cu);
  }

  v10 = +[ConnectionManager instance];
  [v10 updateMicrophoneForSession:v7 withMute:{objc_msgSend(v8, "unsignedCharValue")}];
}

- (void)_handlekCBMsgChangeSessionMicrophoneGainMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "kCBMsgArgLEAudioSessionID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioMicrophoneGain" optional:0 dict:v5];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioAudioInputType" optional:0 dict:v5];
  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v12 = v10;
    v13 = 138413058;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    v17 = 1024;
    v18 = [v8 charValue];
    v19 = 1024;
    v20 = [v9 charValue];
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "_handleChangeSessionMicrophoneMuteGainnMsg: %@, id:%@, gain: %d, type: %d", &v13, 0x22u);
  }

  v11 = +[ConnectionManager instance];
  [v11 updateMicrophoneGainForSession:v7 withGainSetting:objc_msgSend(v8 forInputType:{"charValue"), objc_msgSend(v9, "unsignedCharValue")}];
}

- (void)sessionCompleted:(id)a3
{
  v3 = a3;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = xpc_array_create(0, 0);
  *v28 = 0;
  v29 = 0;
  *v26 = 0;
  v27 = 0;
  v6 = [v3 objectForKeyedSubscript:@"kCBMsgArgLEAudioSessionID"];
  v7 = [v3 objectForKeyedSubscript:@"kCBMsgArgLEAudioDeviceUUID"];
  v17 = v6;
  [v6 getUUIDBytes:v28];
  v16 = v7;
  [v7 getUUIDBytes:v26];
  v8 = [v3 objectForKeyedSubscript:@"kCoordinatedSetSize"];
  v9 = [v3 objectForKeyedSubscript:@"kSinkAudioLocations"];
  v10 = [v3 objectForKeyedSubscript:@"kCBMsgArgLEAudioCoordinatedSetIds"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * v14) identifier];
        *uuid = 0;
        v24 = 0;
        [v15 getUUIDBytes:uuid];
        xpc_array_set_uuid(v5, 0xFFFFFFFFFFFFFFFFLL, uuid);

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v12);
  }

  xpc_dictionary_set_uuid(v4, "kCBMsgArgLEAudioSessionID", v28);
  xpc_dictionary_set_uint64(v4, "kCBMsgArgLEAudioCoordinatedSetSize", [v8 unsignedCharValue]);
  xpc_dictionary_set_value(v4, "kCBMsgArgLEAudioCoordinatedSetIds", v5);
  xpc_dictionary_set_uuid(v4, "kCBMsgArgLEAudioDeviceUUID", v26);
  xpc_dictionary_set_uint64(v4, "kCBMsgArgLEAudioLocation", [v9 unsignedIntValue]);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionCompleted" withArgs:v4];
}

- (void)sessionVolumeUpdated:(id)a3 withVolume:(unsigned __int8)a4
{
  v4 = a4;
  *uuid = 0;
  v9 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  [v6 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioSessionID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioVolume", v4);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionVolumeUpdated" withArgs:v7];
}

- (void)sessionVolumeOffsetUpdated:(id)a3 withVolumeOffset:(char)a4
{
  v4 = a4;
  *uuid = 0;
  v9 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  [v6 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioSessionID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgLEAudioVolumeOffset", v4);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionVolumeOffsetUpdated" withArgs:v7];
}

- (void)sessionVolumeMuteUpdated:(id)a3 withVolumeMute:(unsigned __int8)a4
{
  v4 = a4;
  *uuid = 0;
  v9 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  [v6 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioSessionID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioVolumeMuteState", v4);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionVolumeMuteUpdated" withArgs:v7];
}

- (void)sessionMicrophoneMuteUpdated:(id)a3 withMicrophoneMute:(unsigned __int8)a4
{
  v4 = a4;
  *uuid = 0;
  v9 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  [v6 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioSessionID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioMicrophoneMuteState", v4);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionMicrophoneMuteUpdated" withArgs:v7];
}

- (void)sessionMicrophoneGainUpdated:(id)a3 withMicrophoneGain:(char)a4
{
  v4 = a4;
  *uuid = 0;
  v9 = 0;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  [v6 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioSessionID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgLEAudioMicrophoneGain", v4);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionMicrophoneGainUpdated" withArgs:v7];
}

@end