@interface RSDLocalService
- ($53DFC3DD9429D54544A2B2B9F14ED761)getTcpOptions;
- (BOOL)serviceWantsToBeExposedToDevice:(id)device;
- (BOOL)setExposePolicy:(id)policy;
- (RSDLocalService)initWithServiceEntryNamed:(const char *)named;
- (RSDLocalService)initWithToken:(unint64_t)token name:(char *)name event:(id)event;
- (id)copyServiceDescription;
- (void)dealloc;
- (void)fireDevice:(id)device fd:(int)fd;
@end

@implementation RSDLocalService

- (RSDLocalService)initWithToken:(unint64_t)token name:(char *)name event:(id)event
{
  eventCopy = event;
  v9 = [(RSDLocalService *)self init];
  v10 = v9;
  if (!v9)
  {
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  [(RSDLocalService *)v9 setToken:token];
  [(RSDLocalService *)v10 setName:strdup(name)];
  string = xpc_dictionary_get_string(eventCopy, "RequireEntitlement");
  if (!string)
  {
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100038A3C();
    }

    goto LABEL_12;
  }

  [(RSDLocalService *)v10 setEntitlement:strdup(string)];
  if (![(RSDLocalService *)v10 setExposePolicy:eventCopy])
  {
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_1000389D4();
    }

    goto LABEL_12;
  }

  v12 = xpc_dictionary_get_value(eventCopy, "ServiceProperties");
  v13 = v12;
  if (v12 && xpc_get_type(v12) == &_xpc_type_dictionary)
  {
    [(RSDLocalService *)v10 setProperties:v13];
  }

  v14 = v10;

LABEL_13:
  return v14;
}

- ($53DFC3DD9429D54544A2B2B9F14ED761)getTcpOptions
{
  *&retstr->var0 = 256;
  *&retstr->var2 = xmmword_100049E10;
  properties = [(RSDLocalService *)self properties];

  if (properties)
  {
    properties2 = [(RSDLocalService *)self properties];
    xdict = xpc_dictionary_get_dictionary(properties2, "TcpOptions");

    v8 = xdict;
    if (xdict)
    {
      v9 = xpc_dictionary_get_value(xdict, "KeepAlive");
      v10 = v9;
      if (v9 && xpc_get_type(v9) == &_xpc_type_BOOL)
      {
        retstr->var1 = xpc_BOOL_get_value(v10);
      }

      uint64 = xpc_dictionary_get_uint64(xdict, "KeepAliveTime");
      if (uint64)
      {
        retstr->var2 = uint64;
      }

      v12 = xpc_dictionary_get_uint64(xdict, "KeepCount");
      if (v12)
      {
        retstr->var3 = v12;
      }

      v13 = xpc_dictionary_get_uint64(xdict, "KeepInterval");
      if (v13)
      {
        retstr->var4 = v13;
      }

      v14 = xpc_dictionary_get_uint64(xdict, "ConnectTimeout");
      if (v14)
      {
        retstr->var5 = v14;
      }

      v8 = xdict;
    }
  }

  return result;
}

- (RSDLocalService)initWithServiceEntryNamed:(const char *)named
{
  v4 = [(RSDLocalService *)self init];
  if (v4 && (v5 = getservbyname(named, "tcp")) != 0)
  {
    [(RSDLocalService *)v4 setLegacy_port:bswap32(LOWORD(v5->s_port)) >> 16];
    [(RSDLocalService *)v4 setName:strdup(named)];
    [(RSDLocalService *)v4 setEntitlement:strdup("AppleInternal")];
    keys = "Legacy";
    values = &_xpc_BOOL_true;
    v6 = xpc_dictionary_create(&keys, &values, 1uLL);
    [(RSDLocalService *)v4 setProperties:v6];

    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)fireDevice:(id)device fd:(int)fd
{
  deviceCopy = device;
  if (fd == -1)
  {
    sub_100038ABC(&v9, v10);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_fd(v6, "fd", fd);
  v7 = [deviceCopy copyClientDescriptionWithSensitiveProperties:0];
  xpc_dictionary_set_value(v6, "device", v7);

  [(RSDLocalService *)self token];
  xpc_event_publisher_fire();
}

- (BOOL)serviceWantsToBeExposedToDevice:(id)device
{
  deviceCopy = device;
  limit_load_to_device_types = [(RSDLocalService *)self limit_load_to_device_types];
  if (!limit_load_to_device_types)
  {
    goto LABEL_44;
  }

  limit_load_to_device_types2 = [(RSDLocalService *)self limit_load_to_device_types];
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [deviceCopy type]);
  v8 = [limit_load_to_device_types2 containsObject:v7];

  if (v8)
  {
LABEL_44:
    limit_load_from_device_types = [(RSDLocalService *)self limit_load_from_device_types];
    if (!limit_load_from_device_types)
    {
      goto LABEL_10;
    }

    limit_load_from_device_types2 = [(RSDLocalService *)self limit_load_from_device_types];
    v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [deviceCopy type]);
    v12 = [limit_load_from_device_types2 containsObject:v11];

    if ((v12 & 1) == 0)
    {
LABEL_10:
      if ([(RSDLocalService *)self entitlement]&& (!strcmp([(RSDLocalService *)self entitlement], "AppleInternal") || !strcmp([(RSDLocalService *)self entitlement], "None-AppleInternal")) && (os_variant_has_internal_content() & 1) != 0 || [(RSDLocalService *)self is_exposed_to_untrusted_devices])
      {
        goto LABEL_11;
      }

      if (![(RSDLocalService *)self is_exposed_to_untrusted_devices_presetup])
      {
        goto LABEL_38;
      }

      v14 = MKBGetDeviceLockState();
      v15 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 67109120;
        *&v27[4] = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MobileKeyBagState: %d", v27, 8u);
      }

      v16 = xpc_dictionary_get_BOOL(qword_1000646F8, "StoreDemoMode");
      if (qword_100064378 != -1)
      {
        sub_100038B28();
      }

      v17 = byte_100064370;
      v18 = CFPreferencesCopyValue(@"SetupDone", @"com.apple.purplebuddy", @"mobile", kCFPreferencesCurrentHost);
      v19 = v18;
      if (v18)
      {
        v20 = CFBooleanGetValue(v18) != 0;
        CFRelease(v19);
      }

      else
      {
        v20 = 0;
      }

      v21 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
      {
        v22 = "no";
        if (v17)
        {
          v23 = "yes";
        }

        else
        {
          v23 = "no";
        }

        if (v16)
        {
          v24 = "yes";
        }

        else
        {
          v24 = "no";
        }

        *v27 = 136315906;
        *&v27[4] = v23;
        if (v14 == 3)
        {
          v25 = "yes";
        }

        else
        {
          v25 = "no";
        }

        *&v27[12] = 2080;
        *&v27[14] = v24;
        *&v27[22] = 2080;
        v28 = v25;
        if (v20)
        {
          v22 = "yes";
        }

        v29 = 2080;
        v30 = v22;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "setup status:\n\tin diagnostics mode: %s\n\tin store demo mode: %s\n\tno passcode set: %s\n\tbuddy is done: %s\n", v27, 0x2Au);
        if ((v17 & 1) == 0)
        {
LABEL_22:
          if (v14 == 3)
          {
            if (!v16 && v20)
            {
              goto LABEL_38;
            }

LABEL_11:
            isTrusted = 1;
            goto LABEL_41;
          }
        }
      }

      else if ((v17 & 1) == 0)
      {
        goto LABEL_22;
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_38:
      if (![(RSDLocalService *)self is_exposed_to_untrusted_devices_internal:*v27]|| (os_variant_allows_internal_security_policies() & 1) == 0)
      {
        isTrusted = [deviceCopy isTrusted];
        goto LABEL_41;
      }

      goto LABEL_11;
    }
  }

  isTrusted = 0;
LABEL_41:

  return isTrusted;
}

- (id)copyServiceDescription
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if ([(RSDLocalService *)self entitlement])
  {
    if (!strcmp([(RSDLocalService *)self entitlement], "None-AppleInternal"))
    {
      xpc_dictionary_set_string(v3, "EntitlementOverride", "None-AppleInternal");
      entitlement = "AppleInternal";
    }

    else
    {
      entitlement = [(RSDLocalService *)self entitlement];
    }

    xpc_dictionary_set_string(v3, "Entitlement", entitlement);
  }

  properties = [(RSDLocalService *)self properties];

  if (properties)
  {
    properties2 = [(RSDLocalService *)self properties];
    xpc_dictionary_set_value(v3, "Properties", properties2);
  }

  if ([(RSDLocalService *)self legacy_port])
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__str = v7;
    v10 = v7;
    snprintf(__str, 0x20uLL, "%d", [(RSDLocalService *)self legacy_port]);
    xpc_dictionary_set_string(v3, "Port", __str);
  }

  return v3;
}

- (BOOL)setExposePolicy:(id)policy
{
  policyCopy = policy;
  v5 = xpc_dictionary_get_value(policyCopy, "LimitExposedToDeviceType");
  v6 = xpc_dictionary_get_value(policyCopy, "LimitExposedFromDeviceType");
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  if (!v8)
  {
    v14 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100038B50(v14);
    }

    goto LABEL_23;
  }

  [(RSDLocalService *)self setIs_exposed_to_untrusted_devices_presetup:xpc_dictionary_get_BOOL(policyCopy, "ExposedToUntrustedDevicesPreSetup")];
  v10 = xpc_dictionary_get_value(policyCopy, "ExposedToUntrustedDevices");
  v11 = v10;
  if (v10)
  {
    type = xpc_get_type(v10);
    if (type == &_xpc_type_BOOL)
    {
      [(RSDLocalService *)self setIs_exposed_to_untrusted_devices:xpc_BOOL_get_value(v11)];
    }

    else
    {
      if (type == &_xpc_type_array)
      {
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 3221225472;
        applier[2] = sub_100007228;
        applier[3] = &unk_10005D0E0;
        applier[4] = self;
        xpc_array_apply(v11, applier);
        if (!v5)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v13 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
      {
        sub_100038BDC(v13, self);
        if (!v5)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }
  }

  if (v5)
  {
LABEL_19:
    v16 = sub_1000072F0([(RSDLocalService *)self name], v5);
    [(RSDLocalService *)self setLimit_load_to_device_types:v16];
  }

LABEL_20:
  if (v7)
  {
    v17 = sub_1000072F0([(RSDLocalService *)self name], v7);
    [(RSDLocalService *)self setLimit_load_from_device_types:v17];
  }

LABEL_23:
  return v9;
}

- (void)dealloc
{
  free(self->_name);
  free(self->_entitlement);
  v3.receiver = self;
  v3.super_class = RSDLocalService;
  [(RSDLocalService *)&v3 dealloc];
}

@end