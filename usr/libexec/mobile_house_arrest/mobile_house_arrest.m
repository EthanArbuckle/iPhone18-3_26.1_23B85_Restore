uint64_t sub_1000009C8(int a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a1 < 0 || !v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid inputs", buf, 2u);
    }

    goto LABEL_28;
  }

  v9 = v7;
  v10 = v9;
  v11 = v9;
  if (a4 == 1)
  {
    v11 = [v9 stringByAppendingPathComponent:@"Documents"];
  }

  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:v11];

  if (v13)
  {
    [v11 UTF8String];
    v14 = sandbox_extension_issue_file();
    if (v14)
    {
      v15 = v14;
      errorbuf = 0;
      if (sandbox_init("mobile-house-arrest", 1uLL, &errorbuf) < 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *__error();
          *buf = 67109378;
          LODWORD(v34[0]) = v25;
          WORD2(v34[0]) = 2080;
          *(v34 + 6) = errorbuf;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sandbox_init failed: %d (%s)", buf, 0x12u);
        }

        sandbox_free_error(errorbuf);
        goto LABEL_41;
      }

      if (sandbox_extension_consume() < 0)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        v26 = *__error();
        v27 = __error();
        v28 = strerror(*v27);
        *buf = 67109378;
        LODWORD(v34[0]) = v26;
        WORD2(v34[0]) = 2080;
        *(v34 + 6) = v28;
        v29 = "sandbox_extension_consume failed: %d (%s)";
        v30 = 18;
      }

      else
      {
        if (AFCCreateServerContext())
        {
          if (AFCConnectionCreate())
          {
            if (a2)
            {
              AFCConnectionSetSecureContext();
            }

            AFCInitServerConnection();
            AFCServerConnectionSetFileCoordinationEnabled();
            AFCServerConnectionSetRespectDataProtectionClass();
            AFCConnectionSetIOTimeout();
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_100001EBC(v10, v11);
            }

            v16 = AFCServeWithRoot();
            if (v16 != -402636789 && (v17 = v16) != 0)
            {
              v31 = AFCCopyErrorString();
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                LODWORD(v34[0]) = v17;
                WORD2(v34[0]) = 2112;
                *(v34 + 6) = v31;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AFCServe failed: 0x%x (%@)", buf, 0x12u);
              }

              v18 = 0xFFFFFFFFLL;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_100001F48();
              }

              v18 = 0;
            }

            AFCFreeServerContext();
            AFCConnectionClose();
            goto LABEL_42;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not open the AFC connection", buf, 2u);
          }

          AFCFreeServerContext();
LABEL_41:
          v18 = 0xFFFFFFFFLL;
LABEL_42:
          free(v15);

          goto LABEL_29;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        *buf = 0;
        v29 = "Could not create AFC server context";
        v30 = 2;
      }

      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v29, buf, v30);
      goto LABEL_41;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v21 = *__error();
    v22 = __error();
    v23 = strerror(*v22);
    *buf = 67109378;
    LODWORD(v34[0]) = v21;
    WORD2(v34[0]) = 2080;
    *(v34 + 6) = v23;
    v19 = "sandbox_extension_issue_file failed: %d (%s)";
    v20 = 18;
    goto LABEL_26;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34[0] = v11;
    v19 = "%@ does not exist";
    v20 = 12;
LABEL_26:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
  }

LABEL_27:

LABEL_28:
  v18 = 0xFFFFFFFFLL;
LABEL_29:

  return v18;
}

const __CFString *sub_100000ED0(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = v5;
  v51 = 0;
  if (!a1 || !v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "invalid input";
      goto LABEL_8;
    }

LABEL_9:
    v8 = @"InternalFailure";
    goto LABEL_10;
  }

  if (a3 >= 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "invalid request";
LABEL_8:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v50 = 0;
  v10 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:&v50];
  v11 = v50;
  if (v10)
  {
LABEL_16:
    v13 = v10;
    v14 = v6;
    v15 = v13;
    objc_opt_class();
    v16 = v15;
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 containingBundleRecord];
    }

    v17 = v16;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v14;
        v21 = "%@ is not an application or extension for an application.";
        goto LABEL_24;
      }

LABEL_25:
      v22 = 0;
      v8 = @"ApplicationLookupFailed";
      goto LABEL_26;
    }

    v19 = [v17 applicationState];
    v20 = [v19 isPlaceholder];

    if (v20)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v14;
        v21 = "found placeholder for %@";
LABEL_24:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    v47 = v11;
    if (os_variant_allows_internal_security_policies())
    {
      v34 = [v17 isAdHocCodeSigned];
    }

    else
    {
      v34 = 0;
    }

    v35 = [v17 typeForInstallMachinery];
    v36 = [v35 isEqualToString:@"User"];

    if ((v36 & 1) == 0 && (v34 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v17 typeForInstallMachinery];
        *buf = 138412546;
        v53 = v14;
        v54 = 2112;
        v55 = v37;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "invalid application type for %@: %@", buf, 0x16u);
      }

      v22 = 0;
      v8 = @"InstallationLookupFailed";
      v11 = v47;
      goto LABEL_26;
    }

    if (a3)
    {
      v11 = v47;
      if ((([v17 isFileSharingEnabled] | v34) & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v14;
          v38 = "file sharing is not enabled for %@";
          v39 = 12;
LABEL_78:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v38, buf, v39);
        }

LABEL_79:
        v22 = 0;
        v8 = @"InstallationLookupFailed";
LABEL_26:

        if (v22)
        {
          v23 = [v15 dataContainerURL];
          if (v23)
          {
            v24 = v23;
            v46 = v14;
            v25 = v11;
            v26 = +[NSFileManager defaultManager];
            v27 = [(__CFString *)v24 path];
            v28 = [v26 fileExistsAtPath:v27 isDirectory:&v51];

            if (v28)
            {
              v29 = v25;
              if (v51)
              {
                v30 = dispatch_time(0, 1000000000);
                v31 = dispatch_get_global_queue(0, 0);
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_1000017C4;
                block[3] = &unk_100004238;
                block[4] = a1;
                dispatch_after(v30, v31, block);

                v32 = [(__CFString *)v24 path];
                LODWORD(v31) = lockdown_get_socket();
                securecontext = lockdown_get_securecontext();
                sub_1000009C8(v31, securecontext, v32, a3);
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v53 = v46;
                  v54 = 2112;
                  v55 = v24;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "invalid data container for %@ (%@)", buf, 0x16u);
                }

                v8 = @"InvalidPath";
              }
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v53 = v46;
                v54 = 2112;
                v55 = v24;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "missing data container for %@ (%@)", buf, 0x16u);
              }

              v8 = @"PathMissing";
            }
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v14;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to retrieve data container for %@", buf, 0xCu);
            }

            v8 = @"MissingContainer";
          }
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v53 = v14;
            v54 = 2112;
            v55 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ is not an allowed app bundle or extension: %@", buf, 0x16u);
          }
        }

        goto LABEL_10;
      }

LABEL_60:
      v8 = 0;
      v22 = 1;
      goto LABEL_26;
    }

    v11 = v47;
    if (([v15 isProfileValidated] | v34))
    {
      if (v34 & 1 | (([v15 isUPPValidated] & 1) == 0))
      {
        goto LABEL_60;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_79;
      }

      if ([v15 isUPPValidated])
      {
        v43 = @"true";
      }

      else
      {
        v43 = @"false";
      }

      v44 = [v17 isAdHocCodeSigned];
      *buf = 138412802;
      if (v44)
      {
        v45 = @"true";
      }

      else
      {
        v45 = @"false";
      }

      v53 = v14;
      v54 = 2112;
      v55 = v43;
      v56 = 2112;
      v57 = v45;
      v38 = "unsupported code signature for %@ (UPP validated profile: %@, ad-hoc signed: %@)";
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_79;
      }

      if ([v15 isProfileValidated])
      {
        v40 = @"true";
      }

      else
      {
        v40 = @"false";
      }

      v41 = [v17 isAdHocCodeSigned];
      *buf = 138412802;
      if (v41)
      {
        v42 = @"true";
      }

      else
      {
        v42 = @"false";
      }

      v53 = v14;
      v54 = 2112;
      v55 = v40;
      v56 = 2112;
      v57 = v42;
      v38 = "unsupported code signature for %@ (validated profile: %@, ad-hoc signed: %@)";
    }

    v39 = 32;
    goto LABEL_78;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v53 = v6;
    v54 = 2112;
    v55 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to lookup application for %@, attempting app extension: %@", buf, 0x16u);
  }

  v49 = v11;
  v10 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:v6 error:&v49];
  v12 = v49;

  if (v10)
  {
    v11 = v12;
    goto LABEL_16;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v53 = v6;
    v54 = 2112;
    v55 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to lookup app extension for %@: %@", buf, 0x16u);
  }

  v8 = @"ApplicationLookupFailed";
LABEL_10:

  return v8;
}

uint64_t start()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100001F90();
  }

  v0 = &_dispatch_main_q;
  *(v4 + 6) = lockdown_checkin_xpc();

  if (*(v4 + 6))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(v4 + 6);
      *buf = 67109120;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to checkin with lockdown: 0x%08x", buf, 8u);
    }

    exit(1);
  }

  CFRunLoopRun();
  _Block_object_dispose(&v3, 8);
  return 0;
}

void sub_100001980(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = lockdown_receive_message();
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 67109120;
      LODWORD(v12) = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to receive request from host: 0x%08x", buf, 8u);
    }

LABEL_17:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "closing connection", buf, 2u);
    }

    lockdown_disconnect();
    exit(0);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = 0;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Received request: %@", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [0 objectForKeyedSubscript:@"Command"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [0 objectForKeyedSubscript:@"Identifier"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v5 isEqualToString:@"VendContainer"])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "vend container", buf, 2u);
          }

          v7 = 0;
          goto LABEL_15;
        }

        if ([v5 isEqualToString:@"VendDocuments"])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "vend documents", buf, 2u);
          }

          v7 = 1;
LABEL_15:
          v8 = sub_100000ED0(a2, v6, v7);
          if (!v8)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received unknown command: %@", buf, 0xCu);
        }

        v8 = @"UnknownCommand";
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Request did not contain an identifier", buf, 2u);
        }

        v8 = @"MissingIdentifier";
      }

LABEL_16:
      sub_100001D5C(a2, @"Error", v8);
      goto LABEL_17;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Request did not contain a command";
      goto LABEL_26;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = "Request is invalid";
LABEL_26:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
  }

  v8 = @"MissingCommand";
  goto LABEL_16;
}

void sub_100001D5C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 && v5)
  {
    v14 = v4;
    v15 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = lockdown_send_message();
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = v7;
        v12 = 1024;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to send message (%@) to host: 0x%08x", &v10, 0x12u);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "invalid inputs", &v10, 2u);
    }

    v7 = 0;
  }
}

void sub_100001EBC(uint64_t a1, uint64_t a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "serving %@, w/ sandbox path %@", &v2, 0x16u);
}