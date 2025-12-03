@interface LEAudioXPCSession
- (LEAudioXPCSession)initWithConnection:(id)connection;
- (void)_handlekCBMsgChangeSessionMicrophoneGainMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgChangeSessionMicrophoneMuteStateMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgChangeSessionVolumeMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgChangeSessionVolumeMuteStateMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgChangeSessionVolumeOffsetMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgLEAudioRegisterMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgReadPresetsMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgSetActivePresetMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgSetMicrophoneMuteMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgSetVolumeMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgSetVolumeMuteMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgSetVolumeOffSetMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgWriteMicrophoneAudioInputMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgWritePresetNameMsg:(id)msg reply:(id)reply;
- (void)_handlekCBMsgWriteVolumeAudioInputMsg:(id)msg reply:(id)reply;
- (void)activePresetUpdated:(id)updated withIndex:(unsigned __int8)index;
- (void)handleMsg:(id)msg;
- (void)microphoneInputGainUpdated:(id)updated withGain:(char)gain;
- (void)microphoneMuteUpdated:(id)updated withMute:(unsigned __int8)mute;
- (void)presetNameUpdated:(id)updated withIndex:(unsigned __int8)index;
- (void)presetsUpdated:(id)updated;
- (void)sendLEAudioMsg:(const char *)msg withArgs:(id)args;
- (void)sessionCompleted:(id)completed;
- (void)sessionMicrophoneGainUpdated:(id)updated withMicrophoneGain:(char)gain;
- (void)sessionMicrophoneMuteUpdated:(id)updated withMicrophoneMute:(unsigned __int8)mute;
- (void)sessionVolumeMuteUpdated:(id)updated withVolumeMute:(unsigned __int8)mute;
- (void)sessionVolumeOffsetUpdated:(id)updated withVolumeOffset:(char)offset;
- (void)sessionVolumeUpdated:(id)updated withVolume:(unsigned __int8)volume;
- (void)supportedFeaturesUpdated:(id)updated;
- (void)volumeInputGainUpdated:(id)updated withGain:(char)gain;
- (void)volumeMuteUpdated:(id)updated withMute:(unsigned __int8)mute;
- (void)volumeOffsetUpdated:(id)updated withOffset:(char)offset;
- (void)volumeUpdated:(id)updated withVolume:(unsigned __int8)volume;
@end

@implementation LEAudioXPCSession

- (LEAudioXPCSession)initWithConnection:(id)connection
{
  v8.receiver = self;
  v8.super_class = LEAudioXPCSession;
  v3 = [(LEAudioXpcConnection *)&v8 initWithConnection:connection];
  v4 = qword_1000A9FE8;
  qword_1000A9FE8 = v3;

  v5 = +[ConnectionManager instance];
  v6 = qword_1000A9FF0;
  qword_1000A9FF0 = v5;

  return v3;
}

- (void)sendLEAudioMsg:(const char *)msg withArgs:(id)args
{
  argsCopy = args;
  *keys = *&off_1000955D0;
  v10[0] = xpc_string_create(msg);
  v7 = argsCopy;
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

- (void)handleMsg:(id)msg
{
  msgCopy = msg;
  v5 = [(LEAudioXpcConnection *)self stringForKey:"kCBMsgId" optional:0 dict:msgCopy];
  v6 = [(LEAudioXpcConnection *)self xpcDictForKey:"kCBMsgArgs" optional:1 dict:msgCopy];
  reply = xpc_dictionary_create_reply(msgCopy);

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

- (void)_handlekCBMsgLEAudioRegisterMsg:(id)msg reply:(id)reply
{
  v4 = [(LEAudioXpcConnection *)self stringForKey:"kCBMsgArgLEAudioClient" optional:0 dict:msg];
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CC64();
  }
}

- (void)_handlekCBMsgSetVolumeMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  xuuid = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioDeviceUUID");
  v6 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(xuuid)];
  v7 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolume" optional:0 dict:msgCopy];

  [qword_1000A9FF0 changeVolume:v6 withVolume:{objc_msgSend(v7, "unsignedCharValue")}];
}

- (void)_handlekCBMsgSetVolumeOffSetMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioChangeCounter" optional:0 dict:msgCopy];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioLocation" optional:0 dict:msgCopy];
  v10 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolumeOffset" optional:0 dict:msgCopy];

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

- (void)_handlekCBMsgSetVolumeMuteMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolumeMuteState" optional:0 dict:msgCopy];

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CCCC();
  }

  [qword_1000A9FF0 changeVolumeMute:v7 withMute:{objc_msgSend(v8, "unsignedCharValue")}];
}

- (void)_handlekCBMsgWriteVolumeAudioInputMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioAudioInputOpcode" optional:0 dict:msgCopy];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioAudioInputType" optional:0 dict:msgCopy];
  v10 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolumeGain" optional:0 dict:msgCopy];

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

- (void)_handlekCBMsgSetMicrophoneMuteMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioMicrophoneMuteState" optional:0 dict:msgCopy];

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CD34();
  }

  [qword_1000A9FF0 changeMirophoneMute:v7 withMute:{objc_msgSend(v8, "unsignedCharValue")}];
}

- (void)_handlekCBMsgWriteMicrophoneAudioInputMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioAudioInputOpcode" optional:0 dict:msgCopy];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioAudioInputType" optional:0 dict:msgCopy];
  v10 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioMicrophoneGain" optional:0 dict:msgCopy];

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

- (void)_handlekCBMsgReadPresetsMsg:(id)msg reply:(id)reply
{
  v4 = xpc_dictionary_get_value(msg, "kCBMsgArgLEAudioDeviceUUID");
  v5 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v4)];
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CD9C(v6);
  }

  [qword_1000A9FF0 readPresets:v5 withStartIndex:1 withNumPresets:255];
}

- (void)_handlekCBMsgSetActivePresetMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioPresetType" optional:0 dict:msgCopy];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioPresetIndex" optional:0 dict:msgCopy];

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CDE0();
  }

  [qword_1000A9FF0 setActivePreset:v7 withType:objc_msgSend(v8 withIndex:{"unsignedCharValue"), objc_msgSend(v9, "unsignedCharValue")}];
}

- (void)_handlekCBMsgWritePresetNameMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioDeviceUUID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioPresetIndex" optional:0 dict:msgCopy];
  v9 = [(LEAudioXpcConnection *)self stringForKey:"kCBMsgArgLEAudioPresetName" optional:0 dict:msgCopy];

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CE54();
  }

  [qword_1000A9FF0 writePresetName:v7 withName:v9 forIndex:{objc_msgSend(v8, "unsignedCharValue")}];
}

- (void)volumeUpdated:(id)updated withVolume:(unsigned __int8)volume
{
  volumeCopy = volume;
  *uuid = 0;
  v11 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  peripheral = [updatedCopy peripheral];

  identifier = [peripheral identifier];
  [identifier getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioVolume", volumeCopy);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioVolumeUpdated" withArgs:v7];
}

- (void)volumeOffsetUpdated:(id)updated withOffset:(char)offset
{
  offsetCopy = offset;
  *uuid = 0;
  v11 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  peripheral = [updatedCopy peripheral];

  identifier = [peripheral identifier];
  [identifier getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgLEAudioVolumeOffset", offsetCopy);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioVolumeOffsetUpdated" withArgs:v7];
}

- (void)volumeMuteUpdated:(id)updated withMute:(unsigned __int8)mute
{
  muteCopy = mute;
  *uuid = 0;
  v11 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  peripheral = [updatedCopy peripheral];

  identifier = [peripheral identifier];
  [identifier getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioVolumeMuteState", muteCopy);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioVolumeMuteUpdated" withArgs:v7];
}

- (void)volumeInputGainUpdated:(id)updated withGain:(char)gain
{
  gainCopy = gain;
  *uuid = 0;
  v11 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  peripheral = [updatedCopy peripheral];

  identifier = [peripheral identifier];
  [identifier getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgLEAudioVolumeGain", gainCopy);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioVolumeInputGainUpdated" withArgs:v7];
}

- (void)microphoneMuteUpdated:(id)updated withMute:(unsigned __int8)mute
{
  muteCopy = mute;
  *uuid = 0;
  v11 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  peripheral = [updatedCopy peripheral];

  identifier = [peripheral identifier];
  [identifier getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioMicrophoneMuteState", muteCopy);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioMicrophoneMuteUpdated" withArgs:v7];
}

- (void)microphoneInputGainUpdated:(id)updated withGain:(char)gain
{
  gainCopy = gain;
  *uuid = 0;
  v11 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  peripheral = [updatedCopy peripheral];

  identifier = [peripheral identifier];
  [identifier getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgLEAudioMicrophoneGain", gainCopy);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioMicrophoneGainUpdated" withArgs:v7];
}

- (void)presetsUpdated:(id)updated
{
  updatedCopy = updated;
  xdict = xpc_dictionary_create(0, 0, 0);
  v4 = xpc_array_create(0, 0);
  v5 = xpc_array_create(0, 0);
  v6 = xpc_array_create(0, 0);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  hasInterface = [updatedCopy hasInterface];
  presets = [hasInterface presets];

  obj = presets;
  v9 = [presets countByEnumeratingWithState:&v23 objects:v29 count:16];
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
        hasInterface2 = [updatedCopy hasInterface];
        presets2 = [hasInterface2 presets];
        v16 = [presets2 objectForKey:v13];

        xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, [v16 index]);
        xpc_array_set_uint64(v5, 0xFFFFFFFFFFFFFFFFLL, [v16 isAvailable] | objc_msgSend(v16, "writable"));
        name = [v16 name];
        xpc_array_set_string(v6, 0xFFFFFFFFFFFFFFFFLL, [name UTF8String]);
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  *uuid = 0;
  v28 = 0;
  peripheral = [updatedCopy peripheral];
  identifier = [peripheral identifier];
  [identifier getUUIDBytes:uuid];

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

- (void)activePresetUpdated:(id)updated withIndex:(unsigned __int8)index
{
  indexCopy = index;
  *uuid = 0;
  v11 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  peripheral = [updatedCopy peripheral];

  identifier = [peripheral identifier];
  [identifier getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioPresetIndex", indexCopy);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioActivePresetUpdated" withArgs:v7];
}

- (void)presetNameUpdated:(id)updated withIndex:(unsigned __int8)index
{
  indexCopy = index;
  *uuid = 0;
  v11 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  peripheral = [updatedCopy peripheral];

  identifier = [peripheral identifier];
  [identifier getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioPresetIndex", indexCopy);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioPresetNameUpdated" withArgs:v7];
}

- (void)supportedFeaturesUpdated:(id)updated
{
  *uuid = 0;
  v15 = 0;
  updatedCopy = updated;
  v5 = xpc_dictionary_create(0, 0, 0);
  hasInterface = [updatedCopy hasInterface];
  getHearingAidType = [hasInterface getHearingAidType];

  hasInterface2 = [updatedCopy hasInterface];
  LOBYTE(hasInterface) = [hasInterface2 presetSyncSupported];

  hasInterface3 = [updatedCopy hasInterface];
  LOBYTE(hasInterface2) = [hasInterface3 independentPresets];

  hasInterface4 = [updatedCopy hasInterface];
  LOBYTE(hasInterface3) = [hasInterface4 dynamicPresents];

  hasInterface5 = [updatedCopy hasInterface];
  LOBYTE(hasInterface4) = [hasInterface5 writablePresentsSupported];

  peripheral = [updatedCopy peripheral];

  identifier = [peripheral identifier];
  [identifier getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v5, "kCBMsgArgLEAudioDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v5, "kCBMsgArgLEAudioHearingAidType", getHearingAidType);
  xpc_dictionary_set_BOOL(v5, "kCBMsgArgLEAudioHearingAidSyncSupported", hasInterface);
  xpc_dictionary_set_BOOL(v5, "kCBMsgArgLEAudioHearingAidIndependent", hasInterface2);
  xpc_dictionary_set_BOOL(v5, "kCBMsgArgLEAudioHearingAidDynamic", hasInterface3);
  xpc_dictionary_set_BOOL(v5, "kCBMsgArgLEAudioHearingAidWritable", hasInterface4);
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CEC8();
  }

  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioHearingAidFeaturesUpdated" withArgs:v5];
}

- (void)_handlekCBMsgChangeSessionVolumeMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioSessionID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolume" optional:0 dict:msgCopy];
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
    [v8 floatValue];
    v13 = 138412802;
    v14 = msgCopy;
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

- (void)_handlekCBMsgChangeSessionVolumeOffsetMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioSessionID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioLocation" optional:0 dict:msgCopy];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolumeOffset" optional:0 dict:msgCopy];
  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v12 = v10;
    v13 = 138413058;
    v14 = msgCopy;
    v15 = 2112;
    v16 = v7;
    v17 = 1024;
    unsignedCharValue = [v8 unsignedCharValue];
    v19 = 1024;
    shortValue = [v9 shortValue];
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "_handleChangeSessionVolumeOffsetMsg: %@, id:%@, location: %d, offset: %d", &v13, 0x22u);
  }

  v11 = +[ConnectionManager instance];
  [v11 updateVolumeOffsetForSession:v7 withOffset:objc_msgSend(v9 forAudioLocation:{"shortValue"), objc_msgSend(v8, "unsignedIntValue")}];
}

- (void)_handlekCBMsgChangeSessionVolumeMuteStateMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioSessionID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioVolumeMuteState" optional:0 dict:msgCopy];
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
    v12 = 138412802;
    v13 = msgCopy;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    unsignedCharValue = [v8 unsignedCharValue];
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_handleChangeSessionVolumeMuteStateMsg: %@, id:%@, value: %d", &v12, 0x1Cu);
  }

  v10 = +[ConnectionManager instance];
  [v10 updateVolumeMuteForSession:v7 withMute:{objc_msgSend(v8, "unsignedCharValue")}];
}

- (void)_handlekCBMsgChangeSessionMicrophoneMuteStateMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioSessionID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioMicrophoneMuteState" optional:0 dict:msgCopy];
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
    v12 = 138412802;
    v13 = msgCopy;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    unsignedCharValue = [v8 unsignedCharValue];
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_handleChangeSessionMicrophoneMuteStateMsg: %@, id:%@,  value: %d", &v12, 0x1Cu);
  }

  v10 = +[ConnectionManager instance];
  [v10 updateMicrophoneForSession:v7 withMute:{objc_msgSend(v8, "unsignedCharValue")}];
}

- (void)_handlekCBMsgChangeSessionMicrophoneGainMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v6 = xpc_dictionary_get_value(msgCopy, "kCBMsgArgLEAudioSessionID");
  v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v6)];
  v8 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioMicrophoneGain" optional:0 dict:msgCopy];
  v9 = [(LEAudioXpcConnection *)self numberForKey:"kCBMsgArgLEAudioAudioInputType" optional:0 dict:msgCopy];
  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    v12 = v10;
    v13 = 138413058;
    v14 = msgCopy;
    v15 = 2112;
    v16 = v7;
    v17 = 1024;
    charValue = [v8 charValue];
    v19 = 1024;
    charValue2 = [v9 charValue];
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "_handleChangeSessionMicrophoneMuteGainnMsg: %@, id:%@, gain: %d, type: %d", &v13, 0x22u);
  }

  v11 = +[ConnectionManager instance];
  [v11 updateMicrophoneGainForSession:v7 withGainSetting:objc_msgSend(v8 forInputType:{"charValue"), objc_msgSend(v9, "unsignedCharValue")}];
}

- (void)sessionCompleted:(id)completed
{
  completedCopy = completed;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = xpc_array_create(0, 0);
  *v28 = 0;
  v29 = 0;
  *v26 = 0;
  v27 = 0;
  v6 = [completedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioSessionID"];
  v7 = [completedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioDeviceUUID"];
  v17 = v6;
  [v6 getUUIDBytes:v28];
  v16 = v7;
  [v7 getUUIDBytes:v26];
  v8 = [completedCopy objectForKeyedSubscript:@"kCoordinatedSetSize"];
  v9 = [completedCopy objectForKeyedSubscript:@"kSinkAudioLocations"];
  v10 = [completedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioCoordinatedSetIds"];
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

        identifier = [*(*(&v19 + 1) + 8 * v14) identifier];
        *uuid = 0;
        v24 = 0;
        [identifier getUUIDBytes:uuid];
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

- (void)sessionVolumeUpdated:(id)updated withVolume:(unsigned __int8)volume
{
  volumeCopy = volume;
  *uuid = 0;
  v9 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  [updatedCopy getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioSessionID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioVolume", volumeCopy);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionVolumeUpdated" withArgs:v7];
}

- (void)sessionVolumeOffsetUpdated:(id)updated withVolumeOffset:(char)offset
{
  offsetCopy = offset;
  *uuid = 0;
  v9 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  [updatedCopy getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioSessionID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgLEAudioVolumeOffset", offsetCopy);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionVolumeOffsetUpdated" withArgs:v7];
}

- (void)sessionVolumeMuteUpdated:(id)updated withVolumeMute:(unsigned __int8)mute
{
  muteCopy = mute;
  *uuid = 0;
  v9 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  [updatedCopy getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioSessionID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioVolumeMuteState", muteCopy);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionVolumeMuteUpdated" withArgs:v7];
}

- (void)sessionMicrophoneMuteUpdated:(id)updated withMicrophoneMute:(unsigned __int8)mute
{
  muteCopy = mute;
  *uuid = 0;
  v9 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  [updatedCopy getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioSessionID", uuid);
  xpc_dictionary_set_uint64(v7, "kCBMsgArgLEAudioMicrophoneMuteState", muteCopy);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionMicrophoneMuteUpdated" withArgs:v7];
}

- (void)sessionMicrophoneGainUpdated:(id)updated withMicrophoneGain:(char)gain
{
  gainCopy = gain;
  *uuid = 0;
  v9 = 0;
  updatedCopy = updated;
  v7 = xpc_dictionary_create(0, 0, 0);
  [updatedCopy getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v7, "kCBMsgArgLEAudioSessionID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgLEAudioMicrophoneGain", gainCopy);
  [(LEAudioXPCSession *)self sendLEAudioMsg:"kCBMsgLEAudioSessionMicrophoneGainUpdated" withArgs:v7];
}

@end