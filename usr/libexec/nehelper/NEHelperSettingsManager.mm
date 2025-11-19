@interface NEHelperSettingsManager
- (NEHelperSettingsManager)initWithFirstMessage:(id)a3;
- (void)handleMessage:(id)a3;
@end

@implementation NEHelperSettingsManager

- (void)handleMessage:(id)a3
{
  v3 = a3;
  string = xpc_dictionary_get_string(v3, "setting-name");
  int64 = xpc_dictionary_get_int64(v3, "setting-type");
  if (string)
  {
    v6 = strcmp(string, "CriticalDomains") == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = string;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling a Settings message with setting name %s", buf, 0xCu);
  }

  v8 = SCPreferencesCreate(kCFAllocatorDefault, @"nehelper", @"/Library/Preferences/com.apple.networkextension.control.plist");
  if (v8)
  {
    v9 = v8;
    if (!SCPreferencesLock(v8, 1u))
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        Error = SCCopyLastError();
        *buf = 136315394;
        *&buf[4] = "/Library/Preferences/com.apple.networkextension.control.plist";
        v35 = 2112;
        v36 = Error;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to lock SCPreferences for %s: %@", buf, 0x16u);
      }

      sub_10000BA0C(NEHelperServer, v3, 22, 0);
      goto LABEL_56;
    }

    v10 = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x600u);
    if (int64 <= 2)
    {
      if (int64 != 1)
      {
        if (int64 == 2)
        {
          *buf = xpc_dictionary_get_int64(v3, "setting-value");
          v33 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, buf);
          SCPreferencesSetValue(v9, v10, v33);
          myCFRelease();
          goto LABEL_43;
        }

        goto LABEL_23;
      }

      v16 = xpc_dictionary_get_BOOL(v3, "setting-value");
      v17 = &kCFBooleanTrue;
      if (!v16)
      {
        v17 = &kCFBooleanFalse;
      }

      SCPreferencesSetValue(v9, v10, *v17);
LABEL_43:
      if (SCPreferencesCommitChanges(v9))
      {
        sub_10000BA0C(NEHelperServer, v3, 0, 0);
        if (v6)
        {
          v25 = notify_post("com.apple.neconfigurationchanged");
          if (v25)
          {
            v26 = v25;
            v27 = ne_log_obj();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "com.apple.neconfigurationchanged";
              v35 = 1024;
              LODWORD(v36) = v26;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to post %s: %d", buf, 0x12u);
            }
          }
        }

LABEL_52:
        myCFRelease();
        if (!SCPreferencesUnlock(v9))
        {
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v32 = SCCopyLastError();
            *buf = 136315394;
            *&buf[4] = "/Library/Preferences/com.apple.networkextension.control.plist";
            v35 = 2112;
            v36 = v32;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to unlock preferences for %s: %@", buf, 0x16u);
          }
        }

LABEL_56:
        CFRelease(v9);
        goto LABEL_57;
      }

LABEL_49:
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v31 = SCCopyLastError();
        *buf = 136315394;
        *&buf[4] = string;
        v35 = 2112;
        v36 = v31;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to change %s: %@", buf, 0x16u);
      }

      sub_10000BA0C(NEHelperServer, v3, 22, 0);
      goto LABEL_52;
    }

    if (int64 == 3)
    {
      v18 = xpc_dictionary_get_value(v3, "setting-value");
      v15 = v18;
      if (!v18 || xpc_get_type(v18) != &_xpc_type_array)
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Setting value is not a valid array", buf, 2u);
        }

        goto LABEL_33;
      }

      v20 = SCPreferencesGetValue(v9, v10);
      v22 = _CFXPCCreateCFObjectFromXPCObject();
      v23 = sub_10000EAA4(NEHelperSettingsManager, v20, v22);
      if (v6)
      {
        v24 = ne_log_large_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = string;
          v35 = 2112;
          v36 = v22;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Saving new %s: %@", buf, 0x16u);
        }
      }

      SCPreferencesSetValue(v9, v10, v23);
    }

    else
    {
      if (int64 != 4)
      {
LABEL_23:
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = int64;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid setting type: %lld", buf, 0xCu);
        }

LABEL_33:

        goto LABEL_49;
      }

      v13 = SCPreferencesRemoveValue(v9, v10);
      v14 = ne_log_obj();
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v10;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removed %@ setting", buf, 0xCu);
        }

        goto LABEL_42;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_42:

        goto LABEL_43;
      }

      v20 = SCCopyLastError();
      *buf = 138412546;
      *&buf[4] = v10;
      v35 = 2112;
      v36 = v20;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to remove %@ setting: %@", buf, 0x16u);
    }

    goto LABEL_42;
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v21 = SCCopyLastError();
    *buf = 136315394;
    *&buf[4] = "/Library/Preferences/com.apple.networkextension.control.plist";
    v35 = 2112;
    v36 = v21;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create SCPreferences for %s: %@", buf, 0x16u);
  }

  sub_10000BA0C(NEHelperServer, v3, 22, 0);
LABEL_57:
}

- (NEHelperSettingsManager)initWithFirstMessage:(id)a3
{
  v4 = xpc_dictionary_get_remote_connection(a3);
  if (sub_10000E080(NEHelperServer, v4))
  {
    v9.receiver = self;
    v9.super_class = NEHelperSettingsManager;
    self = [(NEHelperSettingsManager *)&v9 init];
    v5 = self;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10000E0E0(NEHelperServer, v4);
      *buf = 138412546;
      v11 = v8;
      v12 = 2080;
      v13 = "com.apple.private.networkextension.configuration";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Denying settings manager connection because %@ does not have the %s entitlement", buf, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

@end