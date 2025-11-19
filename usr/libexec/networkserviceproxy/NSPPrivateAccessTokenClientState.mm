@interface NSPPrivateAccessTokenClientState
- (NSPPrivateAccessTokenClientState)init;
- (void)dealloc;
@end

@implementation NSPPrivateAccessTokenClientState

- (NSPPrivateAccessTokenClientState)init
{
  v22.receiver = self;
  v22.super_class = NSPPrivateAccessTokenClientState;
  v2 = [(NSPPrivateAccessTokenClientState *)&v22 init];
  if (v2)
  {
    v3 = [NPUtilities copyKeyFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.ClientKey"];
    if (v3)
    {
      v4 = v3;
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v26 = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Found client key in keychain", v26, 2u);
      }

      v2->_clientKey = v4;
    }

    else if (!v2->_clientKey)
    {
      *v24 = kSecAttrKeyType;
      v25 = kSecAttrKeySizeInBits;
      *v26 = kSecAttrKeyTypeECSECPrimeRandom;
      v27 = &off_100114338;
      v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v24 count:2];
      RandomKey = SecKeyCreateRandomKey(v6, 0);
      if (RandomKey)
      {
        v2->_clientKey = RandomKey;
        [NPUtilities saveKeyToKeychain:RandomKey withIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.ClientKey"];
        v8 = nplog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Generated new client key", buf, 2u);
        }
      }

      else
      {
        v8 = nplog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "SecKeyCreateRandomKey failed to generate client key", buf, 2u);
        }
      }
    }

    v10 = [NPUtilities copyDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Secret" accountName:@"client-tokens"];
    if (v10)
    {
      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v26 = 0;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Found client secret in keychain", v26, 2u);
      }

      objc_setProperty_atomic(v2, v12, v10, 16);
      goto LABEL_28;
    }

    if (objc_getProperty(v2, v9, 16, 1))
    {
LABEL_28:
      v20 = v2;
      goto LABEL_29;
    }

    *v26 = 0;
    ccrng();
    if (*v26)
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        v14 = "Failed to generate random";
LABEL_24:
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, v24, 2u);
      }
    }

    else
    {
      v15 = (32 * *ccec_cp_384()) | 0x10;
      v16 = malloc_type_calloc(1uLL, v15, 0x40BFDC82uLL);
      if (!ccec_generate_key())
      {
        v17 = [[NSData alloc] initWithBytes:v16 length:v15];
        objc_setProperty_atomic(v2, v18, v17, 16);

        free(v16);
        [NPUtilities saveDataToKeychain:objc_getProperty(v2 withIdentifier:v19 accountName:16, 1), @"com.apple.NetworkServiceProxy.PrivateAccessTokens.Secret", @"client-tokens"];
        v13 = nplog_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *v24 = 0;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Generated new client secret", v24, 2u);
        }

        goto LABEL_27;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        v14 = "Failed to generate key";
        goto LABEL_24;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *v26 = 0;
    _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "[super init] failed", v26, 2u);
  }

LABEL_29:

  return v2;
}

- (void)dealloc
{
  if (self)
  {
    clientKey = self->_clientKey;
    if (clientKey)
    {
      CFRelease(clientKey);
      self->_clientKey = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = NSPPrivateAccessTokenClientState;
  [(NSPPrivateAccessTokenClientState *)&v4 dealloc];
}

@end