void sub_10001A6B8(uint64_t a1, uint64_t a2)
{
  v4 = ne_log_obj();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to remove duplicate %{public}@ configuration with error %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removed duplicate %{public}@ configuration", &v9, 0xCu);
  }
}

void sub_10001A7C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = ne_log_obj();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to save configuration with error %@ for %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Saved configuration successfully", &v8, 2u);
  }
}

void sub_10001A8D0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 entitlements];
  v4 = [v3 objectForKey:@"com.apple.developer.media-device-discovery-extension" ofClass:objc_opt_class()];

  v5 = [v2 entitlements];
  v6 = [v5 objectForKey:@"com.apple.developer.wifi-aware" ofClass:objc_opt_class()];
  v7 = v4 | v6;

  if (v7)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v2 bundleIdentifier];
      LODWORD(v10) = 138412290;
      *(&v10 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "App %@ has local network entitlements, updating notification", &v10, 0xCu);
    }

    if (qword_100046B30 != -1)
    {
      dispatch_once(&qword_100046B30, &stru_10003D040);
    }

    *&v10 = _NSConcreteStackBlock;
    *(&v10 + 1) = 3221225472;
    v11 = sub_10000E1A4;
    v12 = &unk_10003CF00;
    v13 = "com.apple.networkextension.apps-have-local-network-entitlements";
    v14 = 1;
    dispatch_async(qword_100046B28, &v10);
  }
}

void sub_10001AAB0(id a1)
{
  v1 = qword_100046B68;
  qword_100046B68 = &off_100043E00;

  v2 = qword_100046B70;
  qword_100046B70 = &off_100043E18;
}

void sub_10001AB00(uint64_t a1, void *a2, BOOL *a3)
{
  v34 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v34 plugInKitPlugins];
    v6 = *(a1 + 32);
    v7 = v34;
    v8 = v5;
    v9 = v6;
    objc_opt_self();
    v10 = [v7 entitlementValueForKey:@"com.apple.networking.vpn.configuration" ofClass:objc_opt_class()];
    if (isa_nsarray() && [v10 count] && (!v9 || objc_msgSend(v10, "containsObject:", v9)))
    {
      v28 = v10;
      v29 = v9;
      v30 = v7;
      v32 = a1;
      v33 = a3;
      v27 = [v9 hasPrefix:@"com.apple."];
      v11 = objc_alloc_init(NSMutableDictionary);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v31 = v8;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v35 + 1) + 8 * i);
            v18 = [v17 protocol];
            v19 = [v18 isEqualToString:@"com.apple.networkextension.app-proxy"];

            v20 = @"HasAppProxy";
            if ((v19 & 1) == 0)
            {
              v21 = [v17 protocol];
              v22 = [v21 isEqualToString:@"com.apple.networkextension.packet-tunnel"];

              v20 = @"HasPacketTunnel";
              if (!v22)
              {
                continue;
              }
            }

            [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:v20];
          }

          v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v14);
      }

      if (v27 && ![v11 count])
      {
        v24 = v11;
        v11 = 0;
        a1 = v32;
        a3 = v33;
        v7 = v30;
        v8 = v31;
        v10 = v28;
        v9 = v29;
      }

      else
      {
        v7 = v30;
        v23 = [v30 bundleIdentifier];
        [v11 setObject:v23 forKeyedSubscript:@"PluginType"];

        v10 = v28;
        [v11 setObject:v28 forKeyedSubscript:@"LegacyPluginTypes"];
        v24 = [v30 localizedName];
        [v11 setObject:v24 forKeyedSubscript:@"AppName"];
        a1 = v32;
        a3 = v33;
        v8 = v31;
        v9 = v29;
      }
    }

    else
    {
      v11 = 0;
    }

    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v11;
  }

  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

void sub_10001AE5C(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (!v3 || xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v4 = 0;
LABEL_4:
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    goto LABEL_5;
  }

  int64 = xpc_dictionary_get_int64(xdict, "result-code");
  v8 = xpc_dictionary_get_value(xdict, "result-data");
  v4 = v8;
  if (int64 || !v8 || xpc_get_type(v8) != &_xpc_type_endpoint)
  {
    goto LABEL_4;
  }

  sub_10000BA0C(NEHelperServer, *(a1 + 32), 0, v4);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

LABEL_5:
}

void sub_10001AF64(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    Property = objc_getProperty(v4, a2, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_10000BA0C(NEHelperServer, Property, a2, 0);
  v6 = *(a1 + 40);

  sub_10000BA0C(NEHelperServer, v6, 0, 0);
}

void sub_10001AFE8(unsigned __int8 *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    v48 = v9;
    v11 = v7;
    v12 = [v11 VPN];
    v13 = [v12 protocol];

    v14 = [v13 identityData];

    v47 = a1;
    v45 = v13;
    if (v14)
    {
      v15 = [v13 identityData];
      v16 = [v13 identityDataPassword];
      v14 = [NEIdentityKeychainItem importPKCS12Data:v15 passphrase:v16];

      if (v14)
      {
        if ([v14 count])
        {
          v17 = [v14 firstObject];
          [v13 setIdentityReferenceInternal:v17];
        }
      }
    }

    v49 = v8;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v46 = v11;
    v18 = [v11 relay];
    v19 = [v18 relays];

    v20 = [v19 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v58;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v58 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v57 + 1) + 8 * i);
          v25 = [v24 identityData];

          if (v25)
          {
            v26 = [v24 identityData];
            v27 = [v24 identityDataPassword];
            v28 = [NEIdentityKeychainItem importPKCS12Data:v26 passphrase:v27];

            if (v28)
            {
              if ([v28 count])
              {
                v29 = [v28 firstObject];
                [v24 setIdentityReferenceInternal:v29];
              }

              if ([v28 count] >= 2)
              {
                v30 = [v28 mutableCopy];
                [v30 removeObjectAtIndex:0];
                [v24 setCertificateReferences:v30];
              }

              v14 = v28;
            }

            else
            {
              v14 = 0;
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v21);
    }

    sub_10001B4F4(v47, v46);
    v31 = [v46 VPN];
    v32 = [v31 protocol];
    v33 = [v32 type];

    v8 = v49;
    v10 = v48;
    if (v33 == 1)
    {
      v34 = [v46 VPN];
      v35 = [v34 protocol];

      if ([v35 authenticationMethod] == 1)
      {
        [v35 setLocalIdentifier:0];
      }

      else
      {
        [v35 setIdentityReferenceInternal:0];
      }
    }

    v36 = [v46 contentFilter];
    if (v36 && (v37 = v47[16], v36, v37 == 1))
    {
      v38 = sub_10001B748();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B7A0;
      block[3] = &unk_10003D798;
      v39 = &v53;
      v53 = v46;
      v56 = v48;
      v54 = v49;
      v55 = v47;
      dispatch_async(v38, block);

      v40 = v56;
    }

    else
    {
      v40 = +[NEConfigurationManager sharedManagerForAllUsers];
      v42 = objc_getProperty(v47, v41, 56, 1);
      Property = objc_getProperty(v47, v43, 40, 1);
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10001B9C0;
      v50[3] = &unk_10003D180;
      v39 = &v51;
      v51 = v48;
      [v40 saveConfigurationToDisk:v46 currentSignature:v49 userUUID:v42 isUpgrade:0 completionQueue:Property completionHandler:v50];
    }
  }
}

void sub_10001B4F4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = [a2 relay];
    v3 = [v2 relays];

    v4 = [v3 countByEnumeratingWithState:&v15 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [v8 identityReferenceInternal];

          if (v9)
          {
            v10 = [v8 certificateReferences];

            if (v10)
            {
              v11 = [v8 certificateReferences];
              v12 = [v8 identityReferenceInternal];
              v13 = [v11 arrayByAddingObject:v12];
            }

            else
            {
              v11 = [v8 identityReferenceInternal];
              v21 = v11;
              v13 = [NSArray arrayWithObjects:&v21 count:1];
            }

            v14 = v13;
            objc_opt_self();
            if ([v14 count])
            {
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100002668;
              block[3] = &unk_10003D7C0;
              v20 = v14;
              dispatch_async(&_dispatch_main_q, block);
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v22 count:16];
      }

      while (v5);
    }
  }
}

id sub_10001B748()
{
  objc_opt_self();
  if (qword_100046B58 != -1)
  {
    dispatch_once(&qword_100046B58, &stru_10003D118);
  }

  v0 = qword_100046B50;

  return v0;
}

void sub_10001B7A0(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationIdentifier];
  v3 = sub_10001438C(NEHelperConfigurationManager, v2);

  if (v3)
  {
    v4 = sub_10001B748();
    dispatch_suspend(v4);

    v6 = +[NEConfigurationManager sharedManagerForAllUsers];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    Property = *(a1 + 48);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 56, 1);
    }

    v11 = Property;
    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = objc_getProperty(v12, v10, 40, 1);
    }

    else
    {
      v13 = 0;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001BA08;
    v17[3] = &unk_10003D180;
    v18 = *(a1 + 56);
    [v6 saveConfigurationToDisk:v7 currentSignature:v8 userUUID:v11 isUpgrade:0 completionQueue:v13 completionHandler:v17];
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) applicationIdentifier];
      v16 = [*(a1 + 32) name];
      *buf = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ is no longer the current allowed content filter app, cannot save configuration %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_10001B9C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t sub_10001BA08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10001B748();
  dispatch_resume(v4);

  v5 = *(a1 + 32);
  v6 = [v3 code];

  v7 = *(v5 + 16);

  return v7(v5, v6);
}

void sub_10001BA8C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("allowed-content-filter", v3);
  v2 = qword_100046B50;
  qword_100046B50 = v1;
}

void sub_10001BAF0()
{
  objc_opt_self();
  if (qword_100046B98 != -1)
  {

    dispatch_once(&qword_100046B98, &stru_10003D6D8);
  }
}

id sub_10001BB40(uint64_t a1)
{
  v2 = [qword_100046B88 objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = qword_100046B88;
  v6 = *(a1 + 32);

  return [v5 removeObjectForKey:v6];
}

void sub_10001BBA0(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100046B88;
  qword_100046B88 = v1;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("pending operations", v5);
  v4 = qword_100046B90;
  qword_100046B90 = v3;
}

void sub_10001BC7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  string = xpc_dictionary_get_string(*(a1 + 32), "bundle-id");
  v28 = xpc_dictionary_get_BOOL(*(a1 + 32), "one-per-configuration");
  if (string)
  {
    v26 = a1;
    v29 = [[NSString alloc] initWithUTF8String:string];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    v8 = v28;
    if (v7)
    {
      v9 = v7;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v13 = [v12 appVPN];
          if (v13)
          {
            v14 = v13;
            v15 = [v12 appVPN];
            v16 = [v15 isEnabled];

            if (v16)
            {
              v17 = [v12 appVPN];
              v18 = [v17 copyAppRuleBySigningIdentifier:v29];

              if (v18)
              {
                if (v8)
                {
                  v19 = [v18 matchDomains];
                  v20 = [v19 firstObject];

                  if (v20)
                  {
                    [v4 addObject:v20];
                  }
                }

                else
                {
                  v32 = 0u;
                  v33 = 0u;
                  v30 = 0u;
                  v31 = 0u;
                  v20 = [v18 matchDomains];
                  v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
                  if (v21)
                  {
                    v22 = v21;
                    v23 = *v31;
                    do
                    {
                      for (j = 0; j != v22; j = j + 1)
                      {
                        if (*v31 != v23)
                        {
                          objc_enumerationMutation(v20);
                        }

                        [v4 addObject:*(*(&v30 + 1) + 8 * j)];
                      }

                      v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
                    }

                    while (v22);
                    v8 = v28;
                  }
                }
              }
            }
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    a1 = v26;
    v3 = v27;
  }

  v25 = _CFXPCCreateXPCObjectFromCFObject();
  sub_10000BA0C(NEHelperServer, *(a1 + 32), 0, v25);
}

void sub_10001BF4C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[NSMutableDictionary dictionary];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v54;
    v39 = *v54;
    do
    {
      v7 = 0;
      v40 = v5;
      do
      {
        if (*v54 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v53 + 1) + 8 * v7);
        v9 = [v8 pathController];
        if (v9)
        {
          v10 = v9;
          v11 = [v8 pathController];
          v12 = [v11 isEnabled];

          if (v12)
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v13 = [v8 pathController];
            v14 = [v13 pathRules];

            v15 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
            v43 = v7;
            if (v15)
            {
              v16 = v15;
              v17 = *v50;
              while (2)
              {
                for (i = 0; i != v16; i = i + 1)
                {
                  if (*v50 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v49 + 1) + 8 * i);
                  if ([v19 isDefaultPathRule])
                  {
                    v42 = v19;
                    goto LABEL_18;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

            v42 = 0;
LABEL_18:

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v20 = [v8 pathController];
            v21 = [v20 pathRules];

            v44 = v21;
            v22 = [v21 countByEnumeratingWithState:&v45 objects:v57 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v46;
              do
              {
                for (j = 0; j != v23; j = j + 1)
                {
                  if (*v46 != v24)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v26 = *(*(&v45 + 1) + 8 * j);
                  v27 = [v26 matchSigningIdentifier];
                  v28 = [v3 objectForKeyedSubscript:v27];
                  if (!v28)
                  {
                    v29 = [NEPathRule alloc];
                    v30 = [v26 matchSigningIdentifier];
                    v28 = [v29 initWithSigningIdentifier:v30];
                  }

                  v31 = [v8 pathController];
                  v32 = [v31 ignoreRouteRules];

                  if ((v32 & 1) == 0)
                  {
                    [v28 addCellularBehavior:objc_msgSend(v26 grade:{"cellularBehavior"), objc_msgSend(v8, "grade")}];
                    [v28 addWiFiBehavior:objc_msgSend(v26 grade:{"wifiBehavior"), objc_msgSend(v8, "grade")}];
                  }

                  if ([v26 denyCellularFallback])
                  {
                    [v28 setDenyCellularFallback:1];
                  }

                  if ([v26 denyMulticast])
                  {
                    [v28 setDenyMulticast:1];
                  }

                  if ([v26 multicastPreferenceSet])
                  {
                    [v28 setMulticastPreferenceSet:1];
                  }

                  [v3 setObject:v28 forKeyedSubscript:v27];
                }

                v23 = [v44 countByEnumeratingWithState:&v45 objects:v57 count:16];
              }

              while (v23);
            }

            v6 = v39;
            v5 = v40;
            v7 = v43;
          }
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v5);
  }

  v33 = [v3 allValues];
  v34 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v35 = v34;
  if (v33)
  {
    [v34 encodeObject:v33 forKey:@"config-aggregate-rules"];
  }

  [v35 finishEncoding];
  v36 = [v35 encodedData];
  v37 = xpc_data_create([v36 bytes], objc_msgSend(v36, "length"));
  sub_10000BA0C(NEHelperServer, *(a1 + 32), 0, v37);
}

void sub_10001C3F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v4 = sub_100020804();
    v6 = [*(a1 + 32) UUIDString];
    if (v4)
    {
      Property = objc_getProperty(v4, v5, 8, 1);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100025B34;
      v9[3] = &unk_10003D770;
      v9[4] = v4;
      v10 = v6;
      dispatch_async(Property, v9);
    }

    v3 = 0;
  }

  v8 = *(a1 + 40);

  sub_10000BA0C(NEHelperServer, v8, v3, 0);
}

void sub_10001C508(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [v8 objectForKeyedSubscript:@"ConfigurationProperties"];
        v15 = [v13 identifier];
        v16 = [v14 objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:@"Signature"];

        if (v17 && sub_10001C740(NEHelperConfigurationManager, *(a1 + 32), v13))
        {
          v18 = +[NEConfigurationManager sharedManagerForAllUsers];
          v19 = NECopyConsoleUserUUID();
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10001CDE8;
          v21[3] = &unk_10003D2C0;
          v21[4] = v13;
          [v18 saveConfigurationToDisk:v13 currentSignature:v17 userUUID:v19 isUpgrade:0 completionQueue:&_dispatch_main_q completionHandler:v21];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }
}

BOOL sub_10001C740(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = v5;
  v7 = v4;
  objc_opt_self();
  v8 = [v7 appVPN];
  v9 = [v7 contentFilter];
  v10 = [v9 perApp];

  if (v10)
  {
    v11 = [v7 contentFilter];
  }

  else
  {
    v12 = [v7 dnsProxy];
    v13 = [v12 perApp];

    if (v13)
    {
      v11 = [v7 dnsProxy];
    }

    else
    {
      v14 = [v7 relay];
      v15 = [v14 perApp];

      if (!v15)
      {
        v17 = 0;
        v20 = 0;
        v18 = v8;
        if (v8)
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      v11 = [v7 relay];
    }
  }

  v16 = v11;
  v17 = [v11 perApp];

  if (v8)
  {
    v18 = v8;
LABEL_10:
    v19 = [v18 appRules];
    v20 = [v19 mutableCopy];

    goto LABEL_11;
  }

  v18 = v17;
  if (v17)
  {
    goto LABEL_10;
  }

  v20 = 0;
LABEL_11:
  v21 = [v7 externalIdentifier];

  if (v21)
  {
    v22 = [v7 externalIdentifier];
    v23 = [v6 objectForKeyedSubscript:v22];

    if (isa_nsarray() && [v23 count])
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (!v25)
      {
        goto LABEL_33;
      }

      v26 = v25;
      v54 = v23;
      v55 = v17;
      v56 = v8;
      v57 = v6;
      v27 = *v60;
      while (1)
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v60 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v59 + 1) + 8 * i);
          if (!isa_nsstring())
          {
            v30 = ne_log_obj();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = [v7 externalIdentifier];
              *buf = 138412546;
              v64 = v31;
              v65 = 2112;
              v66 = @"NETestAppMapping";
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Value of %@ in %@ in the Info.plist contains a non-string object, skipping", buf, 0x16u);
            }

            goto LABEL_27;
          }

          if (!v20)
          {
            v20 = objc_alloc_init(NSMutableArray);
LABEL_26:
            v30 = [[NEAppRule alloc] initWithSigningIdentifier:v29];
            [v20 addObject:v30];
LABEL_27:

            continue;
          }

          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_10001CDA4;
          v58[3] = &unk_10003D568;
          v58[4] = v29;
          if ([v20 indexOfObjectPassingTest:v58] == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_26;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v59 objects:v67 count:16];
        if (!v26)
        {
          v8 = v56;
          v6 = v57;
          v23 = v54;
          goto LABEL_33;
        }
      }
    }

    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v53 = [v7 externalIdentifier];
      *v67 = 138412546;
      v68 = v53;
      v69 = 2112;
      v70 = @"NETestAppMapping";
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Value of %@ in %@ in the Info.plist is not an array or is empty", v67, 0x16u);
    }

LABEL_33:
  }

  v32 = [v20 count];
  if (v32)
  {
    v33 = [v7 appVPN];

    if (v33)
    {
      v34 = [v7 appVPN];
      [v34 setAppRules:v20];
LABEL_53:

      goto LABEL_54;
    }

    v35 = [v7 contentFilter];

    if (v35)
    {
      v36 = [v7 contentFilter];
      v37 = [v36 perApp];

      if (!v37)
      {
        v38 = objc_alloc_init(NEPerApp);
        v39 = [v7 contentFilter];
        [v39 setPerApp:v38];
      }

      v40 = [v7 contentFilter];
LABEL_52:
      v34 = v40;
      v51 = [v40 perApp];
      [v51 setAppRules:v20];

      goto LABEL_53;
    }

    v41 = [v7 dnsProxy];

    if (v41)
    {
      v42 = [v7 dnsProxy];
      v43 = [v42 perApp];

      if (!v43)
      {
        v44 = objc_alloc_init(NEPerApp);
        v45 = [v7 dnsProxy];
        [v45 setPerApp:v44];
      }

      v40 = [v7 dnsProxy];
      goto LABEL_52;
    }

    v46 = [v7 relay];

    if (v46)
    {
      v47 = [v7 relay];
      v48 = [v47 perApp];

      if (!v48)
      {
        v49 = objc_alloc_init(NEPerApp);
        v50 = [v7 relay];
        [v50 setPerApp:v49];
      }

      v40 = [v7 relay];
      goto LABEL_52;
    }
  }

LABEL_54:

  return v32 != 0;
}

id sub_10001CDA4(uint64_t a1, void *a2)
{
  v3 = [a2 matchSigningIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10001CDE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) identifier];
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to add app rules to %@: %@", &v6, 0x16u);
    }
  }
}

void sub_10001CEC8(xpc_object_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v184 = a5;
  int64 = xpc_dictionary_get_int64(a1[4], "permission-type");
  v9 = [a1[5] contentFilter];
  if (!v9 || a1[6])
  {

    goto LABEL_4;
  }

  v14 = a1[7];
  if (v14)
  {
    v15 = v14[12];

    if (v15)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v216 objects:v225 count:16];
  if (!v17)
  {
    goto LABEL_23;
  }

  v18 = v17;
  v19 = *v217;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v217 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v216 + 1) + 8 * i);
      v22 = [v21 contentFilter];

      if (v22)
      {
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          Property = a1[7];
          if (Property)
          {
            Property = objc_getProperty(Property, v47, 72, 1);
          }

          v113 = Property;
          v114 = [a1[5] identifier];
          v116 = [v21 identifier];
          v117 = a1[7];
          if (v117)
          {
            v117 = objc_getProperty(v117, v115, 48, 1);
          }

          *v231 = 138413058;
          v232 = v113;
          v233 = 2112;
          v234 = v114;
          v235 = 2112;
          v236 = v116;
          v237 = 2112;
          v238 = v117;
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%@ trying to save a new content filter configuration with identifier %@, but a configuration (%@) already exists for application identifier %@", v231, 0x2Au);
        }

        sub_10000BA0C(NEHelperServer, a1[4], 10, 0);
        goto LABEL_192;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v216 objects:v225 count:16];
  }

  while (v18);
LABEL_23:

LABEL_4:
  if (int64 == 3)
  {
LABEL_7:
    v11 = "APP_WARNING_HEADER_DNS_PROXY";
    v12 = "APP_WARNING_DNS_PROXY";
    v13 = @"DNS Proxy";
  }

  else
  {
    if (!int64)
    {
      v10 = [a1[5] dnsProxy];

      if (v10)
      {
        goto LABEL_7;
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
LABEL_25:
      v23 = v12;
      v24 = [a1[5] contentFilter];

      if (v24)
      {
        v11 = "APP_WARNING_HEADER_FILTER";
        v23 = "APP_WARNING_FILTER";
        v13 = @"content filter";
      }

      v25 = [a1[5] relay];

      if (v25)
      {
        v11 = "APP_WARNING_HEADER_RELAY";
        v23 = "APP_WARNING_RELAY";
        v13 = @"Relay";
      }

      v26 = [a1[5] urlFilter];

      if (v26)
      {
        v11 = "APP_WARNING_HEADER_URL_FILTER";
        v12 = "APP_WARNING_URL_FILTER";
        v13 = @"URL filter";
      }

      else
      {
        v12 = v23;
      }

      goto LABEL_32;
    }

    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  if (int64 == 1)
  {
    v11 = "APP_WARNING_HEADER_FILTER";
    v12 = "APP_WARNING_FILTER";
    v13 = @"content filter";
  }

  else if (!int64)
  {
    goto LABEL_25;
  }

LABEL_32:
  if (int64 == 2 || !v13)
  {
    v27 = [a1[5] VPN];
    v28 = [v27 tunnelType];

    if (v28 == 2)
    {
      v13 = @"Transparent Proxy";
    }

    else
    {
      v13 = @"VPN";
    }

    if (v28 == 2)
    {
      v12 = "APP_WARNING_FILTER";
    }

    else
    {
      v12 = "APP_WARNING_VPN";
    }

    if (v28 == 2)
    {
      v11 = "APP_WARNING_HEADER_TRANSPARENT_PROXY";
    }

    else
    {
      v11 = "APP_WARNING_HEADER_VPN";
    }
  }

  v177 = v12;
  v176 = v13;
  v178 = v11;
  if (![a1[5] isTransparentProxy])
  {
LABEL_82:
    v59 = a1[7];
    v60 = a1[5];
    v61 = v7;
    v62 = v60;
    v63 = v62;
    if (!v59)
    {

      v93 = a1[5];
      goto LABEL_148;
    }

    v182 = [NSPredicate predicateWithBlock:&stru_10003D158];
    v183 = v61;
    v64 = [v61 filteredArrayUsingPredicate:?];
    if (!int64)
    {
      goto LABEL_93;
    }

    v65 = [v63 contentFilter];
    v66 = v65;
    if (int64 < 2 || !v65)
    {
      v67 = v64;
      v68 = [v63 VPN];
      v69 = v68;
      if (int64 <= 2 || !v68)
      {
        v70 = [v63 appVPN];
        v71 = v70;
        if (int64 < 3 || !v70)
        {
          v102 = [v63 dnsProxy];

          v64 = v67;
          if (int64 <= 3 || !v102)
          {
            v92 = [v67 count] != 0;
            goto LABEL_115;
          }

LABEL_93:
          v180 = a1;
          v181 = v7;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v179 = v64;
          v191 = v64;
          v72 = [v191 countByEnumeratingWithState:&v220 objects:v231 count:16];
          if (v72)
          {
            v73 = v72;
            obja = *v221;
            v185 = v63;
LABEL_95:
            v74 = 0;
            v186 = v73;
            while (1)
            {
              if (*v221 != obja)
              {
                objc_enumerationMutation(v191);
              }

              v75 = *(*(&v220 + 1) + 8 * v74);
              v76 = [v63 urlFilter];
              if (v76)
              {
                v77 = v76;
                v78 = [v75 urlFilter];
                if (v78)
                {
                  v79 = v78;
                  v193 = [v63 urlFilter];
                  v80 = [v193 appBundleIdentifier];
                  v81 = [v75 urlFilter];
                  v82 = [v81 appBundleIdentifier];
                  v83 = v80;
                  if ([v80 isEqual:v82])
                  {
                    v187 = [v63 urlFilter];
                    v84 = [v187 controlProviderBundleIdentifier];
                    v85 = [v75 urlFilter];
                    v86 = [v85 controlProviderBundleIdentifier];
                    v189 = [v84 isEqual:v86];

                    v63 = v185;
                    v73 = v186;

                    if (v189)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_105;
                  }
                }
              }

LABEL_105:
              v87 = [v63 contentFilter];
              if (v87)
              {
                v88 = v87;
                v89 = [v75 contentFilter];

                if (v89)
                {
LABEL_113:

                  v92 = 1;
                  goto LABEL_114;
                }
              }

              v90 = [v63 contentFilter];
              if (v90)
              {
              }

              else
              {
                v91 = [v75 contentFilter];

                if (!v91)
                {
                  goto LABEL_113;
                }
              }

              if (v73 == ++v74)
              {
                v73 = [v191 countByEnumeratingWithState:&v220 objects:v231 count:16];
                if (v73)
                {
                  goto LABEL_95;
                }

                break;
              }
            }
          }

          v92 = 0;
LABEL_114:
          a1 = v180;
          v7 = v181;
          v64 = v179;
LABEL_115:

          v93 = a1[5];
          if (v92)
          {
            if ([v93 grade] == 2)
            {
              v94 = [a1[5] relay];

              if (!v94)
              {
                v201 = 0u;
                v202 = 0u;
                v199 = 0u;
                v200 = 0u;
                v95 = v183;
                v96 = [v95 countByEnumeratingWithState:&v199 objects:v224 count:16];
                if (v96)
                {
                  v97 = v96;
                  v98 = *v200;
LABEL_120:
                  v99 = 0;
                  while (1)
                  {
                    if (*v200 != v98)
                    {
                      objc_enumerationMutation(v95);
                    }

                    v100 = *(*(&v199 + 1) + 8 * v99);
                    if ([v100 grade] == 2)
                    {
                      break;
                    }

                    if (v97 == ++v99)
                    {
                      v97 = [v95 countByEnumeratingWithState:&v199 objects:v224 count:16];
                      if (v97)
                      {
                        goto LABEL_120;
                      }

                      goto LABEL_126;
                    }
                  }

                  v101 = v100;

                  if (!v101)
                  {
                    goto LABEL_134;
                  }

                  if (a1[6])
                  {
                    [v101 clearSystemKeychain];
                    goto LABEL_133;
                  }

                  v107 = ne_log_obj();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                  {
                    v119 = a1[7];
                    if (v119)
                    {
                      v119 = objc_getProperty(v119, v108, 72, 1);
                    }

                    v120 = v119;
                    v122 = [a1[5] identifier];
                    v123 = a1[7];
                    if (v123)
                    {
                      v123 = objc_getProperty(v123, v121, 48, 1);
                    }

                    *v231 = 138413314;
                    v232 = v120;
                    v233 = 2112;
                    v234 = v176;
                    v235 = 2112;
                    v236 = v122;
                    v237 = 2112;
                    v238 = v184;
                    v239 = 2112;
                    v240 = v123;
                    _os_log_error_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%@ trying to save a new personal %@ configuration with identifier %@, but a configuration (%@) already exists for application identifier %@", v231, 0x34u);
                  }

                  sub_10000BA0C(NEHelperServer, a1[4], 10, 0);
                  goto LABEL_192;
                }

LABEL_126:
                v101 = v95;
LABEL_133:
              }
            }

LABEL_134:
            v104 = a1[6];
            v103 = a1[7];
            v197[0] = _NSConcreteStackBlock;
            v197[1] = 3221225472;
            v197[2] = sub_10001E6D0;
            v197[3] = &unk_10003D1A8;
            v105 = a1[5];
            v198 = a1[4];
            sub_10001AFE8(v103, v105, v104, v197);
            v106 = v198;
LABEL_182:

            goto LABEL_192;
          }

LABEL_148:
          v124 = [v93 appPush];

          if (v124)
          {
            v125 = a1[7];
            if (v125 && ((*(v125 + 5) & 0x20) != 0 || (v125[9] & 1) != 0))
            {
              v126 = a1[5];
              v127 = a1[6];
              v214[0] = _NSConcreteStackBlock;
              v214[1] = 3221225472;
              v214[2] = sub_10001E370;
              v214[3] = &unk_10003D1A8;
              v215 = a1[4];
              sub_10001AFE8(v125, v126, v127, v214);
              v128 = +[NEConfigurationManager sharedManagerForAllUsers];
              v130 = [a1[5] application];
              v131 = a1[7];
              if (v131)
              {
                v132 = objc_getProperty(v131, v129, 40, 1);
              }

              else
              {
                v132 = 0;
              }

              v212[0] = _NSConcreteStackBlock;
              v212[1] = 3221225472;
              v212[2] = sub_10001E38C;
              v212[3] = &unk_10003D1D0;
              v213 = a1[5];
              [v128 showLocalNetworkAlertForApp:v130 withCompletionQueue:v132 handler:v212];

              v106 = v215;
              goto LABEL_182;
            }

            v150 = ne_log_obj();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              v152 = a1[7];
              if (v152)
              {
                v153 = objc_getProperty(a1[7], v151, 72, 1);
              }

              else
              {
                v153 = 0;
              }

              *v231 = 138412546;
              v232 = v152;
              v233 = 2112;
              v234 = v153;
              v154 = "%@ [%@] is not entitled to save app push provider configuration";
LABEL_199:
              _os_log_error_impl(&_mh_execute_header, v150, OS_LOG_TYPE_ERROR, v154, v231, 0x16u);
              goto LABEL_184;
            }

            goto LABEL_184;
          }

          v133 = [a1[5] hotspot];

          if (!v133)
          {
            v203[0] = _NSConcreteStackBlock;
            v203[1] = 3221225472;
            v203[2] = sub_10001E578;
            v203[3] = &unk_10003D220;
            objb = a1[7];
            v155 = a1[5];
            v206 = v178;
            v207 = v177;
            v156 = a1[6];
            v157 = a1[4];
            *&v158 = v156;
            *(&v158 + 1) = v157;
            *&v159 = objb;
            *(&v159 + 1) = v155;
            v204 = v159;
            v205 = v158;
            [NEUserNotification cancelCurrentNotificationWithResponse:2 queue:&_dispatch_main_q completionHandler:v203];

            v106 = *(&v204 + 1);
            goto LABEL_182;
          }

          v134 = a1[7];
          if (!v134 || (v134[5] & 0x100) == 0 && (*(v134 + 9) & 1) == 0)
          {
            v150 = ne_log_obj();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              v174 = a1[7];
              if (v174)
              {
                v175 = objc_getProperty(a1[7], v169, 72, 1);
              }

              else
              {
                v175 = 0;
              }

              *v231 = 138412546;
              v232 = v174;
              v233 = 2112;
              v234 = v175;
              v154 = "%@ [%@] is not entitled to save hotspot provider configuration";
              goto LABEL_199;
            }

LABEL_184:

            v57 = a1[4];
            v58 = 10;
            goto LABEL_191;
          }

          v135 = [a1[5] hotspot];
          v136 = [v135 evaluatedSSIDs];
          if ([v136 count])
          {
            v137 = a1[7];
            v138 = [a1[5] hotspot];
            if (v137)
            {
              *&v220 = WiFiManagerClientCreate();
              if (v220 && ([v138 pluginType], v139 = objc_claimAutoreleasedReturnValue(), v140 = WiFiManagerClientCopyNetworksWithBundleIdentifier(), *buf = v140, v139, v140))
              {
                Count = CFArrayGetCount(v140);
                v142 = objc_alloc_init(NSMutableArray);
                if (Count >= 1)
                {
                  for (j = 0; j != Count; ++j)
                  {
                    CFArrayGetValueAtIndex(v140, j);
                    [v142 addObject:WiFiNetworkGetSSID()];
                  }
                }

                v144 = [v138 evaluatedSSIDs];
                if ([v144 count])
                {
                  v145 = [v142 count];

                  if (v145)
                  {
                    v146 = [v138 evaluatedSSIDs];
                    v147 = [NSSet setWithArray:v146];

                    v148 = [NSSet setWithArray:v142];
                    if ([v147 isSubsetOfSet:v148])
                    {
                      v149 = 1;
                    }

                    else
                    {
                      v149 = [v147 isEqualToSet:v148];
                    }

                    myCFRelease();
                    myCFRelease();

                    if ((v149 & 1) == 0)
                    {
                      goto LABEL_188;
                    }

LABEL_179:
                    v162 = a1[6];
                    v161 = a1[7];
                    v210[0] = _NSConcreteStackBlock;
                    v210[1] = 3221225472;
                    v210[2] = sub_10001E474;
                    v210[3] = &unk_10003D1A8;
                    v163 = a1[5];
                    v211 = a1[4];
                    sub_10001AFE8(v161, v163, v162, v210);
                    v164 = +[NEConfigurationManager sharedManagerForAllUsers];
                    v166 = [a1[5] application];
                    v167 = a1[7];
                    if (v167)
                    {
                      v168 = objc_getProperty(v167, v165, 40, 1);
                    }

                    else
                    {
                      v168 = 0;
                    }

                    v208[0] = _NSConcreteStackBlock;
                    v208[1] = 3221225472;
                    v208[2] = sub_10001E490;
                    v208[3] = &unk_10003D1D0;
                    v209 = a1[5];
                    [v164 showLocalNetworkAlertForApp:v166 withCompletionQueue:v168 handler:v208];

                    v106 = v211;
                    goto LABEL_182;
                  }
                }

                else
                {
                }

                myCFRelease();
                myCFRelease();
              }

              else
              {
                v160 = ne_log_obj();
                if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
                {
                  v173 = [v138 pluginType];
                  *v231 = 138412290;
                  v232 = v173;
                  _os_log_debug_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEBUG, "failed to find Wi-Fi networks owned by app [%@]", v231, 0xCu);
                }

                myCFRelease();
              }
            }

LABEL_188:
            v170 = ne_log_obj();
            if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
            {
              v171 = [a1[5] hotspot];
              v172 = [v171 pluginType];
              *v231 = 138412290;
              v232 = v172;
              _os_log_error_impl(&_mh_execute_header, v170, OS_LOG_TYPE_ERROR, "app [%@] does not own the configured evaluated SSIDs", v231, 0xCu);
            }

            v57 = a1[4];
            v58 = 2;
            goto LABEL_191;
          }

          goto LABEL_179;
        }
      }

      v64 = v67;
    }

    goto LABEL_93;
  }

  v29 = a1[7];
  v30 = a1[5];
  v31 = v7;
  if (!v29)
  {
    goto LABEL_81;
  }

  v32 = ne_log_obj();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    if (v29[10])
    {
      v51 = "Enabled";
    }

    else
    {
      v51 = "Disabled";
    }

    v52 = "No";
    if (v29[13])
    {
      v52 = "Yes";
    }

    *buf = 136315394;
    *&buf[4] = v51;
    v227 = 2080;
    v228 = v52;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "platform entitled: %s isDevelopment: %s", buf, 0x16u);
  }

  if (v29[10])
  {
LABEL_81:

    goto LABEL_82;
  }

  v33 = [v30 VPN];
  v34 = [v33 protocol];

  if (!v34)
  {
    v45 = 2;
    goto LABEL_79;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_80;
  }

  if (v31)
  {
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    obj = v31;
    v35 = [obj countByEnumeratingWithState:&v220 objects:v231 count:16];
    if (v35)
    {
      v36 = v35;
      v188 = v34;
      v190 = v29;
      v192 = v31;
      v37 = *v221;
      while (2)
      {
        for (k = 0; k != v36; k = k + 1)
        {
          v39 = a1;
          v40 = v7;
          if (*v221 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v220 + 1) + 8 * k);
          v42 = [v41 identifier];
          v43 = [v30 identifier];

          if (v42 == v43)
          {
            v48 = [v41 VPN];
            v49 = [v48 protocol];

            v50 = [v49 order];
            v44 = v50;
            v7 = v40;
            a1 = v39;
            v29 = v190;
            v31 = v192;
            v34 = v188;
            goto LABEL_64;
          }

          v7 = v40;
          a1 = v39;
        }

        v36 = [obj countByEnumeratingWithState:&v220 objects:v231 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }

      v29 = v190;
      v31 = v192;
      v34 = v188;
    }

    v44 = 0x7FFFFFFFLL;
LABEL_64:
  }

  else
  {
    v44 = 0x7FFFFFFFLL;
  }

  v53 = ne_log_obj();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    v109 = [v34 order];
    v111 = objc_getProperty(v29, v110, 48, 1);
    *buf = 134218498;
    *&buf[4] = v109;
    v227 = 2048;
    v228 = v44;
    v229 = 2112;
    v230 = v111;
    _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "protocol.order %lu, allowed_order %lu, applicationID: %@", buf, 0x20u);
  }

  if ([v34 order] == v44 || !objc_getProperty(v29, v54, 48, 1))
  {
LABEL_80:

    goto LABEL_81;
  }

  v55 = ne_log_obj();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    v118 = objc_getProperty(v29, v56, 72, 1);
    *buf = 138412290;
    *&buf[4] = v118;
    _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%@ trying to modify transparent proxy order through an app. Modifying transparent proxy order is only allowed through profile.", buf, 0xCu);
  }

  v45 = 10;
LABEL_79:

  v57 = a1[4];
  v58 = v45;
LABEL_191:
  sub_10000BA0C(NEHelperServer, v57, v58, 0);
LABEL_192:
}

void sub_10001E38C(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v5 = "granted";
    }

    else
    {
      v5 = "denied";
    }

    v6 = [*(a1 + 32) application];
    v7 = 136315394;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "user %s local network access for %@", &v7, 0x16u);
  }
}

void sub_10001E490(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v5 = "granted";
    }

    else
    {
      v5 = "denied";
    }

    v6 = [*(a1 + 32) application];
    v7 = 136315394;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "user %s local network access for %@", &v7, 0x16u);
  }
}

void sub_10001E578(uint64_t a1)
{
  v2 = [NEUserNotification alloc];
  v4 = [*(a1 + 40) applicationName];
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 32);
  if (v7)
  {
    Property = objc_getProperty(v7, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001E6EC;
  v18[3] = &unk_10003D1F8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v17 = *(a1 + 32);
  v11 = *(a1 + 56);
  *&v12 = v17;
  *(&v12 + 1) = v11;
  *&v13 = v9;
  *(&v13 + 1) = v10;
  v19 = v13;
  v20 = v12;
  v15 = [v2 initAndShowAddConfigurationsForApp:v4 warningHeader:v5 warning:v6 callbackQueue:Property callbackHandler:v18];
  v16 = *(a1 + 32);
  if (v16)
  {
    objc_setProperty_atomic(v16, v14, v15, 88);
  }
}

void sub_10001E6EC(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    if (+[NEUserNotification shouldPromptForLocalAuthentication])
    {
      v3 = [*(a1 + 32) identifier];
      v4 = v3;
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = *(a1 + 48);
      if (v7)
      {
        v34 = *(v7 + 16);
      }

      else
      {
        v34 = 0;
      }

      v8 = *(a1 + 56);
      v9 = v3;
      v10 = v8;
      obj = v5;
      v11 = v5;
      v12 = v6;
      objc_opt_self();
      v13 = [NEHelperPendingOperation alloc];
      v14 = v9;
      v15 = v12;
      v16 = v11;
      v17 = v10;
      if (v13)
      {
        block.receiver = v13;
        block.super_class = NEHelperPendingOperation;
        v18 = objc_msgSendSuper2(&block, "init");
        v13 = v18;
        if (v18)
        {
          v18->_operation = 3;
          objc_storeStrong(&v18->_configurationIdentifier, v4);
          objc_storeStrong(&v13->_configuration, v6);
          objc_storeStrong(&v13->_signature, obj);
          v13->_isAllowedContentFilterApp = v34 & 1;
          objc_storeStrong(&v13->_requestMessage, v8);
        }
      }

      sub_10001BAF0();
      v19 = qword_100046B90;
      block.receiver = _NSConcreteStackBlock;
      block.super_class = 3221225472;
      v40 = sub_10001EAC4;
      v41 = &unk_10003D770;
      v42 = v14;
      v43 = v13;
      v20 = v13;
      v21 = v14;
      dispatch_sync(v19, &block);

      v22 = *(a1 + 48);
      if (v22)
      {
        v23 = *(a1 + 32);
        v25 = objc_getProperty(v22, v24, 80, 1);
        v26 = [v23 identifier];

        v27 = [v26 UUIDString];
        obja = [NSString stringWithFormat:@"prefs:root=General&path=ManagedConfigurationList/VPN/LocalAuthenticationTrigger&sender=%@&configID=%@", v25, v27];

        v28 = [NSURL URLWithString:obja];
        v29 = +[LSApplicationWorkspace defaultWorkspace];
        [v29 openSensitiveURL:v28 withOptions:0];
      }
    }

    else
    {
      v32 = *(a1 + 40);
      v31 = *(a1 + 48);
      v33 = *(a1 + 32);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10001EAA8;
      v37[3] = &unk_10003D1A8;
      v38 = *(a1 + 56);
      sub_10001AFE8(v31, v33, v32, v37);
    }
  }

  else
  {
    v30 = *(a1 + 56);

    sub_10000BA0C(NEHelperServer, v30, 10, 0);
  }
}

BOOL sub_10001EAD8(id a1, id a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [v3 contentFilter];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 VPN];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 appVPN];
      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v8 = [v3 dnsProxy];
        if (v8)
        {
          v5 = 1;
        }

        else
        {
          v9 = [v3 relay];
          if (v9)
          {
            v5 = 1;
          }

          else
          {
            v10 = [v3 urlFilter];
            v5 = v10 != 0;
          }
        }
      }
    }
  }

  return v5;
}

void sub_10001F48C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    if (!a3)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v7)
      {
        v9 = v7;
        v10 = *v21;
        *&v8 = 136315394;
        v19 = v8;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = [v12 VPN];
            v14 = [v13 protocol];
            v15 = [v14 type];

            if (v15 == 3)
            {
              v16 = ne_log_obj();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = v19;
                v25 = "+[NEHelperConfigurationManager handleUnsupportedConfiguration:]_block_invoke";
                v26 = 2112;
                v27 = v12;
                _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s: removing configuration %@", buf, 0x16u);
              }

              v17 = +[NEConfigurationManager sharedManagerForAllUsers];
              v18 = [v12 identifier];
              [v17 removeConfigurationFromDisk:v18 completionQueue:*(a1 + 32) completionHandler:&stru_10003D5D0];
            }
          }

          v9 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v9);
      }
    }
  }
}

void sub_10001F684(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "+[NEHelperConfigurationManager handleUnsupportedConfiguration:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: failed to remove the configuration: %@", &v4, 0x16u);
    }
  }
}

void sub_10001F74C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = dispatch_queue_create("upgrade-app-groups", 0);
  v4 = +[NEConfigurationManager sharedManagerForAllUsers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F840;
  v7[3] = &unk_10003D668;
  v8 = v2;
  v9 = v3;
  v5 = v3;
  v6 = v2;
  [v4 loadConfigurations:0 withFilter:0 completionQueue:v5 completionHandler:v7];
}

void sub_10001F840(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v53 = a3;
  v57 = a5;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v63 objects:v71 count:16];
  v55 = a1;
  if (!v9)
  {
    v56 = 0;
    v59 = 0;
    v11 = 0;
    goto LABEL_38;
  }

  v10 = v9;
  v56 = 0;
  v59 = 0;
  v11 = 0;
  v12 = *v64;
  v58 = v8;
  do
  {
    v13 = 0;
    do
    {
      if (*v64 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v63 + 1) + 8 * v13);
      v15 = [v14 applicationIdentifier];
      if (!v15)
      {
        goto LABEL_27;
      }

      v16 = v15;
      if (![*(a1 + 32) count])
      {

LABEL_11:
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v14 applicationIdentifier];
          *buf = 138412290;
          v68 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Upgrading app groups for app %@", buf, 0xCu);
        }

        v21 = [v14 applicationIdentifier];
        v22 = [NELaunchServices bundleProxyForIdentifier:v21 uid:0 plugins:0];

        if (v22)
        {
          v23 = [v22 appGroups];
          v24 = [v23 count];

          v25 = ne_log_obj();
          v26 = v25;
          if (v24)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v27 = [v22 appGroups];
              v28 = [v14 applicationIdentifier];
              *buf = 138412546;
              v68 = v27;
              v69 = 2112;
              v70 = v28;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Adding app groups %@ for app %@", buf, 0x16u);
            }

            v29 = +[NEConfigurationManager sharedManagerForAllUsers];
            v30 = [v22 appGroups];
            v31 = [v14 applicationIdentifier];
            [v29 addGroups:v30 forApp:v31];

            if (v11)
            {
              v8 = v58;
LABEL_26:

              goto LABEL_27;
            }

            v36 = [v57 objectForKeyedSubscript:@"ConfigurationProperties"];
            v37 = [v14 identifier];
            v26 = [v36 objectForKeyedSubscript:v37];

            v35 = [v26 objectForKeyedSubscript:@"Signature"];

            if (isa_nsdata())
            {
              v38 = +[NEConfigurationManager sharedManagerForAllUsers];
              v39 = [v14 identifier];
              v40 = [v38 getCurrentUserUUIDForConfigurationID:v39 fromIndex:v57];

              v11 = v14;
              v56 = v40;
            }

            else
            {
              v41 = ne_log_obj();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = [v14 name];
                *buf = 138412290;
                v68 = v42;
                _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "No signature found for AppleConnect configuration %@", buf, 0xCu);
              }

              v11 = 0;
            }

            v8 = v58;
            a1 = v55;
LABEL_25:

            v59 = v35;
            goto LABEL_26;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v14 applicationIdentifier];
            *buf = 138412290;
            v68 = v32;
            v33 = v26;
            v34 = "App %@ does not have any app groups";
LABEL_23:
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
          }
        }

        else
        {
          v26 = ne_log_obj();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v14 applicationIdentifier];
            *buf = 138412290;
            v68 = v32;
            v33 = v26;
            v34 = "Did not find %@ while upgrading app groups";
            goto LABEL_23;
          }
        }

        v35 = v59;
        goto LABEL_25;
      }

      v17 = *(a1 + 32);
      v18 = [v14 applicationIdentifier];
      LODWORD(v17) = [v17 containsObject:v18];

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_27:
      v13 = v13 + 1;
    }

    while (v10 != v13);
    v43 = [v8 countByEnumeratingWithState:&v63 objects:v71 count:16];
    v10 = v43;
  }

  while (v43);
LABEL_38:
  v62 = 0;
  v44 = +[NEConfigurationManager sharedManagerForAllUsers];
  v45 = [v44 copyAppGroupMapDidChange:&v62];

  if (v45 && (v62 & 1) != 0)
  {
    v46 = v54;
    v48 = v56;
    v47 = v57;
    v49 = v59;
    if (v11)
    {
      v50 = +[NEConfigurationManager sharedManagerForAllUsers];
      v51 = *(v55 + 40);
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_10001FEC0;
      v60[3] = &unk_10003D2C0;
      v61 = v11;
      [v50 saveConfigurationToDisk:v61 currentSignature:v59 userUUID:v56 isUpgrade:0 completionQueue:v51 completionHandler:v60];

      v52 = v61;
      goto LABEL_45;
    }
  }

  else
  {
    v52 = ne_log_obj();
    v47 = v57;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "App group map did not change", buf, 2u);
    }

    v46 = v54;
    v48 = v56;
    v49 = v59;
LABEL_45:
  }
}

void sub_10001FEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != 9)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) name];
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to save %@ while upgrading app groups: %@", &v7, 0x16u);
    }
  }
}

void sub_10001FFB0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_1000169A0;
  v8[4] = sub_1000169B0;
  v9 = os_transaction_create();
  v3 = sub_10001B748();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000200E8;
  v5[3] = &unk_10003D700;
  v6 = v2;
  v7 = v8;
  v4 = v2;
  dispatch_async(v3, v5);

  _Block_object_dispose(v8, 8);
}

void sub_1000200D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000200E8(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Current allowed content filter app is now %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&unk_100046B80);
  v4 = qword_100046B38;
  if (qword_100046B38)
  {
    if (*(a1 + 32))
    {
      LODWORD(v5) = [qword_100046B38 isEqualToString:?] ^ 1;
      v4 = qword_100046B38;
    }

    else
    {
      LODWORD(v5) = 1;
    }

    v26 = @"application-id";
    v27 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    if (v5)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138412802;
        v21 = qword_100046B38;
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = qword_100046B38;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current allowed content filter app changed from %@ to %@, removing content filter configurations created by %@", buf, 0x20u);
      }

      LOBYTE(v5) = 1;
    }
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v8 = [*(a1 + 32) copy];
  v9 = qword_100046B38;
  qword_100046B38 = v8;

  os_unfair_lock_unlock(&unk_100046B80);
  if (v5)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("Remove filters queue", v10);

    v12 = sub_10001B748();
    dispatch_suspend(v12);

    v13 = +[NEConfigurationManager sharedManagerForAllUsers];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002038C;
    v17[3] = &unk_10003D6B8;
    v14 = *(a1 + 40);
    v18 = v11;
    v19 = v14;
    v15 = v11;
    [v13 loadConfigurations:0 withFilter:v6 completionQueue:v15 completionHandler:v17];
  }

  else
  {
    v16 = *(*(a1 + 40) + 8);
    v15 = *(v16 + 40);
    *(v16 + 40) = 0;
  }
}

void sub_10002038C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v29 + 1) + 8 * v11);
      v13 = [v12 contentFilter];

      if (v13)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v12;

    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 name];
      *buf = 138412290;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing %@ content filter configuration", buf, 0xCu);
    }

    v17 = +[NEConfigurationManager sharedManagerForAllUsers];
    v18 = [v14 identifier];
    v19 = *(a1 + 32);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100020614;
    v25[3] = &unk_10003D690;
    v26 = v14;
    v20 = v6;
    v21 = *(a1 + 40);
    v27 = v20;
    v28 = v21;
    v22 = v14;
    [v17 removeConfigurationFromDisk:v18 completionQueue:v19 completionHandler:v25];
  }

  else
  {
LABEL_9:

LABEL_14:
    v23 = sub_10001B748();
    dispatch_resume(v23);

    v24 = *(*(a1 + 40) + 8);
    v22 = *(v24 + 40);
    *(v24 + 40) = 0;
  }
}

void sub_100020614(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) name];
      v8 = *(a1 + 40);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to remove content filter configuration %@: %@", &v9, 0x16u);
    }
  }

  v4 = sub_10001B748();
  dispatch_resume(v4);

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

id sub_100020804()
{
  objc_opt_self();
  if (qword_100046BC8 != -1)
  {
    dispatch_once(&qword_100046BC8, &stru_10003D720);
  }

  v0 = qword_100046BD0;

  return v0;
}

void sub_10002085C(SCPreferencesRef *a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
    goto LABEL_109;
  }

  Property = objc_getProperty(a1, v3, 8, 1);
  dispatch_assert_queue_V2(Property);
  if (!a1[2])
  {
LABEL_108:
    sub_10000BA0C(NEHelperServer, v4, 22, 0);
    goto LABEL_109;
  }

  uint64 = xpc_dictionary_get_uint64(v4, "cache-command");
  if (uint64 <= 4)
  {
    if (uint64 > 2)
    {
      if (uint64 == 3)
      {
        v38 = xpc_dictionary_get_remote_connection(v4);
        v39 = sub_10000E080(NEHelperServer, v38) || sub_10000E080(NEHelperServer, v38);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          string = xpc_dictionary_get_string(v4, "cache-signing-identifier");
          if (string)
          {
            v61 = string;
            v62 = xpc_dictionary_get_string(v4, "cache-executable-path");
            if (v62)
            {
              v63 = [NSString stringWithUTF8String:v62];
            }

            else
            {
              v63 = 0;
            }

            int64 = xpc_dictionary_get_int64(v4, "cache-user-uid");
            if (!int64)
            {
              memset(buf, 0, 32);
              xpc_dictionary_get_audit_token();
              v93 = 0u;
              v94 = 0u;
              int64 = NEUIDForAuditToken();
            }

            LOBYTE(v93) = 0;
            v67 = [NSString stringWithUTF8String:v61];
            v68 = xpc_dictionary_get_BOOL(v4, "cache-allow-synthesis");
            v69 = sub_1000224D8(a1, v67, v63, v68, int64, &v93);

            if (isa_nsarray())
            {
              if (v39 || (v93 & 1) == 0)
              {
                v70 = xpc_array_create(0, 0);
                v89 = 0u;
                v90 = 0u;
                v91 = 0u;
                v92 = 0u;
                v71 = v69;
                v72 = [v71 countByEnumeratingWithState:&v89 objects:v96 count:16];
                if (v72)
                {
                  v73 = v72;
                  v74 = *v90;
                  do
                  {
                    for (i = 0; i != v73; i = i + 1)
                    {
                      if (*v90 != v74)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v76 = *(*(&v89 + 1) + 8 * i);
                      *buf = 0;
                      *&buf[8] = 0;
                      [v76 getUUIDBytes:buf];
                      xpc_array_set_uuid(v70, 0xFFFFFFFFFFFFFFFFLL, buf);
                    }

                    v73 = [v71 countByEnumeratingWithState:&v89 objects:v96 count:16];
                  }

                  while (v73);
                }

                xpc_dictionary_set_value(v19, "cache-app-uuid", v70);
              }

              else
              {
                v70 = ne_log_obj();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
                {
                  v83 = objc_getProperty(a1, v80, 24, 1);
                  *buf = 138412546;
                  *&buf[4] = v83;
                  *&buf[12] = 2080;
                  *&buf[14] = v61;
                  _os_log_fault_impl(&_mh_execute_header, v70, OS_LOG_TYPE_FAULT, "%@ is trying to access information for %s but is not entitled to do so. Please add the com.apple.private.network.socket-delegate or the com.apple.private.necp.policies entitlement", buf, 0x16u);
                }
              }
            }

            goto LABEL_102;
          }
        }

        goto LABEL_107;
      }

      v23 = xpc_dictionary_get_remote_connection(v4);
      v24 = sub_10000E080(NEHelperServer, v23);

      v25 = xpc_dictionary_get_string(v4, "cache-service");
      v26 = xpc_dictionary_get_value(v4, "cache-domain-dictionaries");
      v19 = v26;
      if (!v25 || v26 && xpc_get_type(v26) != &_xpc_type_array)
      {
        goto LABEL_107;
      }

      v27 = xpc_dictionary_get_string(v4, "cache-interface-name");
      if (!v27)
      {
        goto LABEL_107;
      }

      if (v24)
      {
        v28 = v27;
        if (!v19)
        {
          v19 = [NSString stringWithUTF8String:v25];
          v50 = sub_100021D20(a1, v19, v28);
LABEL_99:
          v29 = v50;
LABEL_100:

          if ((v29 & 1) == 0)
          {
            goto LABEL_108;
          }

          goto LABEL_101;
        }

        v20 = _CFXPCCreateCFObjectFromXPCObject();
        v21 = [NSString stringWithUTF8String:v25];
        v22 = sub_100021A78(a1, v20, v21, v28);
LABEL_28:
        v29 = v22;

        goto LABEL_100;
      }

      v77 = ne_log_obj();
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_106;
      }

      *buf = 138412546;
      *&buf[4] = objc_getProperty(a1, v78, 24, 1);
      *&buf[12] = 2080;
      *&buf[14] = "com.apple.private.nehelper.privileged";
      v79 = "Denying set domain dictionary command because %@ does not have the %s entitlement";
    }

    else
    {
      if (uint64 == 1)
      {
        v33 = xpc_dictionary_create(0, 0, 0);
        if (!v33)
        {
          goto LABEL_108;
        }

        v19 = v33;
        if (SCPreferencesGetValue(a1[2], @"redirected-addresses"))
        {
          v34 = _CFXPCCreateXPCObjectFromCFObject();
          v35 = v34;
          if (v34 && xpc_get_type(v34) == &_xpc_type_dictionary)
          {
            xpc_dictionary_set_value(v19, "redirected-addresses", v35);
          }
        }

        if (SCPreferencesGetValue(a1[2], @"services"))
        {
          v36 = _CFXPCCreateXPCObjectFromCFObject();
          v37 = v36;
          if (v36 && xpc_get_type(v36) == &_xpc_type_dictionary)
          {
            xpc_dictionary_set_value(v19, "services", v37);
          }
        }

LABEL_102:
        sub_10000BA0C(NEHelperServer, v4, 0, v19);

        goto LABEL_109;
      }

      if (uint64 != 2)
      {
        goto LABEL_108;
      }

      v15 = xpc_dictionary_get_remote_connection(v4);
      v16 = sub_10000E080(NEHelperServer, v15);

      v17 = xpc_dictionary_get_string(v4, "cache-service");
      v18 = xpc_dictionary_get_value(v4, "cache-routes");
      v19 = v18;
      if (!v17 || !v18 || xpc_get_type(v18) != &_xpc_type_dictionary)
      {
        goto LABEL_107;
      }

      if (v16)
      {
        v20 = _CFXPCCreateCFObjectFromXPCObject();
        v21 = [NSString stringWithUTF8String:v17];
        v22 = sub_1000214B8(a1, v20, v21);
        goto LABEL_28;
      }

      v77 = ne_log_obj();
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_106;
      }

      *buf = 138412546;
      *&buf[4] = objc_getProperty(a1, v81, 24, 1);
      *&buf[12] = 2080;
      *&buf[14] = "com.apple.private.nehelper.privileged";
      v79 = "Denying set routes command because %@ does not have the %s entitlement";
    }

LABEL_105:
    _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, v79, buf, 0x16u);
    goto LABEL_106;
  }

  if (uint64 <= 7)
  {
    if (uint64 != 5)
    {
      if (uint64 != 7)
      {
        goto LABEL_108;
      }

      v30 = xpc_dictionary_get_remote_connection(v4);
      v31 = sub_10000E080(NEHelperServer, v30);

      if (v31)
      {
        v32 = xpc_dictionary_get_string(v4, "cache-interface-name");
        if (!v32)
        {
          goto LABEL_108;
        }

        sub_100022398(a1, v32);
        goto LABEL_101;
      }

      v19 = ne_log_obj();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      *buf = 138412546;
      *&buf[4] = objc_getProperty(a1, v58, 24, 1);
      *&buf[12] = 2080;
      *&buf[14] = "com.apple.private.nehelper.privileged";
      v59 = "Denying clear redirected addresses command because %@ does not have the %s entitlement";
      goto LABEL_72;
    }

    v43 = xpc_dictionary_get_remote_connection(v4);
    v44 = sub_10000E080(NEHelperServer, v43);

    v45 = xpc_dictionary_get_value(v4, "cache-redirected-address");
    v19 = v45;
    if (!v45)
    {
      goto LABEL_107;
    }

    if (xpc_get_type(v45) != &_xpc_type_data)
    {
      goto LABEL_107;
    }

    if (xpc_data_get_length(v19) < 0x10)
    {
      goto LABEL_107;
    }

    v46 = xpc_dictionary_get_string(v4, "cache-interface-name");
    if (!v46)
    {
      goto LABEL_107;
    }

    if (v44)
    {
      v47 = v46;
      bytes_ptr = xpc_data_get_bytes_ptr(v19);
      v49 = *bytes_ptr;
      if (xpc_data_get_length(v19) < v49)
      {
        goto LABEL_107;
      }

      v50 = sub_100021F9C(a1, bytes_ptr, v47);
      goto LABEL_99;
    }

    v77 = ne_log_obj();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = objc_getProperty(a1, v82, 24, 1);
      *&buf[12] = 2080;
      *&buf[14] = "com.apple.private.nehelper.privileged";
      v79 = "Denying add redirected address command because %@ does not have the %s entitlement";
      goto LABEL_105;
    }

LABEL_106:

    goto LABEL_107;
  }

  if (uint64 == 8)
  {
    v40 = xpc_dictionary_get_string(v4, "cache-app-bundle-id");
    if (v40)
    {
      v41 = [NSString stringWithUTF8String:v40];
      v95 = v41;
      v42 = [NSArray arrayWithObjects:&v95 count:1];
      sub_1000228C0(a1, v42);
    }

    else
    {
      sub_100022AC0(a1);
    }

LABEL_101:
    v19 = 0;
    goto LABEL_102;
  }

  if (uint64 == 9)
  {
    v51 = xpc_dictionary_get_remote_connection(v4);
    v52 = sub_10000E080(NEHelperServer, v51);

    if (v52)
    {
      v53 = xpc_dictionary_get_string(v4, "cache-service");
      v54 = xpc_dictionary_get_value(v4, "cache-match-domains");
      v19 = v54;
      if (v53 && v54 && xpc_get_type(v54) == &_xpc_type_array)
      {
        v55 = _CFXPCCreateCFObjectFromXPCObject();
        v56 = [NSString stringWithUTF8String:v53];
        v57 = sub_100022DB4(a1, v55, v56);

        if (!v57)
        {
          goto LABEL_108;
        }

        goto LABEL_101;
      }

LABEL_107:

      goto LABEL_108;
    }

    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    *buf = 138412546;
    *&buf[4] = objc_getProperty(a1, v64, 24, 1);
    *&buf[12] = 2080;
    *&buf[14] = "com.apple.private.nehelper.privileged";
    v59 = "Denying set match domains command because %@ does not have the %s entitlement";
LABEL_72:
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v59, buf, 0x16u);
    goto LABEL_107;
  }

  if (uint64 != 10)
  {
    goto LABEL_108;
  }

  uuid = xpc_dictionary_get_uuid(v4, "config-identifier");
  if (!uuid)
  {
    v65 = ne_log_obj();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "No configuration ID provided for populating the cache", buf, 2u);
    }

    goto LABEL_108;
  }

  v8 = uuid;
  v9 = xpc_dictionary_get_int64(v4, "cache-user-uid");
  if (!v9)
  {
    memset(buf, 0, 32);
    xpc_dictionary_get_audit_token();
    v93 = 0u;
    v94 = 0u;
    v9 = NEUIDForAuditToken();
  }

  v10 = [[NSUUID alloc] initWithUUIDBytes:v8];
  v11 = +[NEConfigurationManager sharedManagerForAllUsers];
  v13 = objc_getProperty(a1, v12, 8, 1);
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_100022BD4;
  v84[3] = &unk_10003D748;
  v85 = v10;
  v86 = v4;
  v87 = a1;
  v88 = v9;
  v14 = v10;
  [v11 loadConfigurationWithID:v14 withCompletionQueue:v13 handler:v84];

LABEL_109:
}

uint64_t sub_1000214B8(SCPreferencesRef *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Property = objc_getProperty(a1, v7, 8, 1);
  dispatch_assert_queue_V2(Property);
  v9 = SCPreferencesGetValue(a1[2], @"services");
  v57 = v9;
  if (isa_nsdictionary())
  {
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(NSMutableDictionary);
  }

  v11 = v10;
  v12 = [v10 objectForKeyedSubscript:v6];
  v56 = v12;
  if (isa_nsdictionary())
  {
    v13 = [v12 mutableCopy];
  }

  else
  {
    v13 = objc_alloc_init(NSMutableDictionary);
  }

  v14 = v13;
  v15 = ne_session_type_to_string();
  v16 = [NSString stringWithUTF8String:v15];
  v17 = [v14 objectForKeyedSubscript:v16];

  v55 = v17;
  if (isa_nsdictionary())
  {
    v18 = [v17 mutableCopy];
    [v18 removeObjectForKey:@"included-routes"];
    [v18 removeObjectForKey:@"excluded-routes"];
  }

  else
  {
    v18 = objc_alloc_init(NSMutableDictionary);
  }

  v19 = [v5 objectForKeyedSubscript:@"included-routes"];

  if (v19)
  {
    v20 = [v5 objectForKeyedSubscript:@"included-routes"];
    [v18 setObject:v20 forKeyedSubscript:@"included-routes"];
  }

  v21 = [v5 objectForKeyedSubscript:@"excluded-routes"];

  if (v21)
  {
    v22 = [v5 objectForKeyedSubscript:@"excluded-routes"];
    [v18 setObject:v22 forKeyedSubscript:@"excluded-routes"];
  }

  v23 = [NSString stringWithUTF8String:v15];
  [v14 setObject:v18 forKeyedSubscript:v23];

  v24 = v6;
  [v11 setObject:v14 forKeyedSubscript:v6];
  if (SCPreferencesSetValue(a1[2], @"services", v11) && SCPreferencesCommitChanges(a1[2]))
  {
    sub_1000230CC(a1, v25);
    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  if (nelog_is_extra_vpn_logging_enabled())
  {
    v27 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = objc_alloc_init(NSMutableString);
      v29 = [v27 mutableCopy];
      v54 = [v27 objectForKeyedSubscript:@"included-routes"];
      v51 = v24;
      if (v54)
      {
        v52 = v29;
        v30 = [v54 objectForKeyedSubscript:@"ipv4-subnets"];
        v31 = v30;
        if (v30)
        {
          v32 = v24;
          v33 = sub_100025014(v30);
          [(__CFString *)v28 appendFormat:@"\nIPv4: %@", v33];

          v24 = v32;
        }

        v34 = v28;
        v35 = [v54 objectForKeyedSubscript:@"ipv6-subnets"];
        v36 = v35;
        if (v35)
        {
          v37 = sub_100025014(v35);
          [(__CFString *)v34 appendFormat:@"\nIPv6: %@", v37];

          v24 = v51;
        }

        v28 = v34;
        v29 = v52;
      }

      v38 = [v27 objectForKeyedSubscript:@"excluded-routes"];
      v39 = v38;
      if (v38)
      {
        v53 = v28;
        v50 = v26;
        v40 = [v38 objectForKeyedSubscript:@"ipv4-subnets"];
        v41 = v40;
        if (v40)
        {
          v42 = sub_100025014(v40);
          [(__CFString *)v53 appendFormat:@"\nIPv4 excluded: %@", v42];
        }

        v43 = [v39 objectForKeyedSubscript:@"ipv6-subnets"];
        v44 = v43;
        if (v43)
        {
          v45 = v29;
          v46 = sub_100025014(v43);
          [(__CFString *)v53 appendFormat:@"\nIPv6 excluded: %@", v46];

          v29 = v45;
        }

        v24 = v51;
        v28 = v53;
        v26 = v50;
      }

      [v29 setObject:0 forKeyedSubscript:@"included-routes"];
      [v29 setObject:0 forKeyedSubscript:@"excluded-routes"];
      if ([v29 count])
      {
        [(__CFString *)v28 appendFormat:@"\nextra: %@", v29];
      }
    }

    else
    {
      v28 = @"NULL";
    }

    v47 = ne_log_large_obj();
    v48 = v47;
    if (v26)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v59 = v24;
        v60 = 2112;
        v61 = v28;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Set routes for service %@:%@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v59 = v24;
      v60 = 2112;
      v61 = v28;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to set routes for service %@:%@", buf, 0x16u);
    }
  }

  return v26;
}

uint64_t sub_100021A78(SCPreferencesRef *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  Property = objc_getProperty(a1, v9, 8, 1);
  dispatch_assert_queue_V2(Property);
  if (isa_nsarray())
  {
    v11 = SCPreferencesGetValue(a1[2], @"services");
    if (isa_nsdictionary())
    {
      v12 = [v11 mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(NSMutableDictionary);
    }

    v14 = v12;
    v15 = [v12 objectForKeyedSubscript:v8];
    v33 = v15;
    v34 = v11;
    if (isa_nsdictionary())
    {
      v16 = [v15 mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(NSMutableDictionary);
    }

    v17 = v16;
    v18 = ne_session_type_to_string();
    v19 = [NSString stringWithUTF8String:v18];
    v20 = [v17 objectForKeyedSubscript:v19];

    v32 = v20;
    if (isa_nsdictionary())
    {
      v21 = [v20 mutableCopy];
    }

    else
    {
      v21 = objc_alloc_init(NSMutableDictionary);
    }

    v22 = v21;
    v23 = [NSString stringWithUTF8String:a4, v8];
    v24 = [v22 objectForKeyedSubscript:v23];
    v25 = isa_nsdictionary();

    if (v25)
    {
      v26 = [v22 objectForKeyedSubscript:v23];
      v27 = [v26 mutableCopy];
    }

    else
    {
      v27 = objc_alloc_init(NSMutableDictionary);
    }

    [v27 setObject:v7 forKeyedSubscript:@"service-domain-info"];
    [v22 setObject:v27 forKeyedSubscript:v23];
    v28 = [NSString stringWithUTF8String:v18];
    [v17 setObject:v22 forKeyedSubscript:v28];

    v8 = v31;
    [v14 setObject:v17 forKeyedSubscript:v31];
    if (SCPreferencesSetValue(a1[2], @"services", v14) && SCPreferencesCommitChanges(a1[2]))
    {
      sub_1000230CC(a1, v29);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_100021D20(SCPreferencesRef *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  Property = objc_getProperty(a1, v6, 8, 1);
  dispatch_assert_queue_V2(Property);
  v8 = SCPreferencesGetValue(a1[2], @"services");
  if (isa_nsdictionary())
  {
    v9 = [v8 mutableCopy];
    v10 = [v9 objectForKeyedSubscript:v5];
    if (isa_nsdictionary())
    {
      v11 = [v10 mutableCopy];
      v28 = ne_session_type_to_string();
      v12 = [NSString stringWithUTF8String:?];
      v13 = v11;
      v14 = [v11 objectForKeyedSubscript:v12];

      if (isa_nsdictionary())
      {
        v15 = [v14 mutableCopy];
        v16 = a3;
        v17 = v15;
        v29 = [NSString stringWithUTF8String:v16];
        v18 = [v17 objectForKeyedSubscript:?];
        if (isa_nsdictionary())
        {
          v26 = v18;
          v27 = v17;
          v19 = [v18 mutableCopy];
          v20 = [v19 objectForKeyedSubscript:@"service-domains"];

          v21 = v13;
          if (v20)
          {
            [v19 removeObjectForKey:@"service-domains"];
            v17 = v27;
            [v27 setObject:v19 forKeyedSubscript:v29];
            v22 = [NSString stringWithUTF8String:v28];
            [v21 setObject:v27 forKeyedSubscript:v22];

            [v9 setObject:v21 forKeyedSubscript:v5];
            if (SCPreferencesSetValue(a1[2], @"services", v9) && SCPreferencesCommitChanges(a1[2]))
            {
              sub_1000230CC(a1, v23);
              v24 = 1;
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
            v17 = v27;
          }

          v18 = v26;
        }

        else
        {
          v24 = 0;
          v21 = v13;
        }
      }

      else
      {
        v24 = 0;
        v21 = v13;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t sub_100021F9C(SCPreferencesRef *a1, uint64_t a2, uint64_t a3)
{
  Property = objc_getProperty(a1, a2, 8, 1);
  dispatch_assert_queue_V2(Property);
  if (!a2)
  {
    return 0;
  }

  v7 = *(a2 + 1);
  if (v7 != 30 && v7 != 2)
  {
    return 0;
  }

  v9 = SCPreferencesGetValue(a1[2], @"redirected-addresses");
  if (isa_nsdictionary())
  {
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(NSMutableDictionary);
  }

  v12 = v10;
  v13 = [NSString stringWithUTF8String:a3];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = isa_nsdictionary();

  if (v15)
  {
    v16 = [v12 objectForKeyedSubscript:v13];
    v17 = [v16 mutableCopy];
  }

  else
  {
    v17 = objc_alloc_init(NSMutableDictionary);
  }

  v18 = *(a2 + 1);
  if (v18 == 30)
  {
    v23 = [v17 objectForKeyedSubscript:@"ipv6-subnets"];
    v24 = isa_nsdictionary();

    if (v24)
    {
      v25 = [v17 objectForKeyedSubscript:@"ipv6-subnets"];
      v22 = [v25 mutableCopy];
    }

    else
    {
      v22 = objc_alloc_init(NSMutableDictionary);
    }

    if (!isa_nsdictionary())
    {
      goto LABEL_41;
    }

    v30 = [v22 objectForKeyedSubscript:@"subnet-addresses"];
    v31 = isa_nsarray();

    if (v31)
    {
      v32 = [v22 objectForKeyedSubscript:@"subnet-addresses"];
      v29 = [v32 mutableCopy];
    }

    else
    {
      v29 = objc_alloc_init(NSMutableArray);
    }

    if (isa_nsarray())
    {
      v35 = [NSData dataWithBytes:a2 + 8 length:16];
      if (([v29 containsObject:v35] & 1) == 0)
      {
        [v29 addObject:v35];
      }

      [v22 setObject:v29 forKeyedSubscript:@"subnet-addresses"];
    }

    v34 = @"ipv6-subnets";
    goto LABEL_40;
  }

  if (v18 != 2)
  {
    goto LABEL_42;
  }

  v19 = [v17 objectForKeyedSubscript:@"ipv4-subnets"];
  v20 = isa_nsdictionary();

  if (v20)
  {
    v21 = [v17 objectForKeyedSubscript:@"ipv4-subnets"];
    v22 = [v21 mutableCopy];
  }

  else
  {
    v22 = objc_alloc_init(NSMutableDictionary);
  }

  if (isa_nsdictionary())
  {
    v26 = [v22 objectForKeyedSubscript:@"subnet-addresses"];
    v27 = isa_nsarray();

    if (v27)
    {
      v28 = [v22 objectForKeyedSubscript:@"subnet-addresses"];
      v29 = [v28 mutableCopy];
    }

    else
    {
      v29 = objc_alloc_init(NSMutableArray);
    }

    if (isa_nsarray())
    {
      v33 = [NSData dataWithBytes:a2 + 4 length:4];
      if (([v29 containsObject:v33] & 1) == 0)
      {
        [v29 addObject:v33];
      }

      [v22 setObject:v29 forKeyedSubscript:@"subnet-addresses"];
    }

    v34 = @"ipv4-subnets";
LABEL_40:
    [v17 setObject:v22 forKeyedSubscript:v34];
  }

LABEL_41:

LABEL_42:
  [v12 setObject:v17 forKeyedSubscript:v13];
  if (SCPreferencesSetValue(a1[2], @"redirected-addresses", v12) && SCPreferencesCommitChanges(a1[2]))
  {
    sub_1000230CC(a1, v36);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_100022398(SCPreferencesRef *a1, const char *a2)
{
  Property = objc_getProperty(a1, a2, 8, 1);
  dispatch_assert_queue_V2(Property);
  v10 = SCPreferencesGetValue(a1[2], @"redirected-addresses");
  if (!isa_nsdictionary())
  {
    goto LABEL_8;
  }

  v5 = [v10 mutableCopy];
  v6 = [NSString stringWithUTF8String:a2];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = isa_nsdictionary();

  if (v8)
  {
    [v5 setObject:0 forKeyedSubscript:v6];
  }

  if (!v5)
  {
LABEL_8:
    if (!SCPreferencesRemoveValue(a1[2], @"redirected-addresses"))
    {
      v5 = 0;
      goto LABEL_12;
    }

    v5 = 0;
    if (!SCPreferencesCommitChanges(a1[2]))
    {
      goto LABEL_12;
    }

LABEL_10:
    sub_1000230CC(a1, v9);
    goto LABEL_12;
  }

  if (SCPreferencesSetValue(a1[2], @"redirected-addresses", v5) && SCPreferencesCommitChanges(a1[2]))
  {
    goto LABEL_10;
  }

LABEL_12:
}

id sub_1000224D8(void *a1, void *a2, void *a3, int a4, unsigned int a5, _BYTE *a6)
{
  v11 = a2;
  if (a1)
  {
    v39 = 0;
    v12 = sub_1000239B4(a1, v11, a3, a4, a5, 0, a6, &v39);
    v13 = v12;
    if (byte_100046BD8)
    {
      goto LABEL_26;
    }

    v14 = v39;
    v15 = v12;
    v16 = v11;
    v17 = sub_100024648(v15);
    v18 = v17;
    if (v14 == 1 && [v17 count] != 1)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v33 = [v18 count];
        *buf = 134217984;
        v41 = v33;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Synthentic UUID count is wrong (%lu)", buf, 0xCu);
      }

      goto LABEL_25;
    }

    os_unfair_lock_lock(&unk_100046BE8);
    v19 = sub_100023734();
    v38 = sub_100023914(v19, 0);
    v20 = [v38 objectForKeyedSubscript:v16];
    v21 = [v20 isEqualToArray:v18];
    v22 = ne_log_obj();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    v37 = v21;
    if (v21)
    {
      v24 = v20;
      if (v23)
      {
        v25 = [v20 count];
        *buf = 134218242;
        v41 = v25;
        v42 = 2112;
        v43 = v16;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%lu UUIDs for %@ are already in the cache", buf, 0x16u);
      }

      if ((v14 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v23)
      {
        v26 = [v15 count];
        *buf = 134218242;
        v41 = v26;
        v42 = 2112;
        v43 = v16;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Caching %lu UUID(s) for %@", buf, 0x16u);
      }

      [v38 setObject:v18 forKeyedSubscript:v16];
      v24 = v20;
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    v36 = v15;
    v27 = sub_100023914(v19, 1);
    v28 = [v27 objectForKeyedSubscript:v16];
    v29 = [v18 firstObject];
    v30 = [v28 isEqualToData:v29];

    v31 = ne_log_obj();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (v32)
      {
        *buf = 138412290;
        v41 = v16;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "A synthetic UUID for %@ is already in the cache", buf, 0xCu);
      }

      v15 = v36;
      if (v37)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v32)
      {
        *buf = 138412290;
        v41 = v16;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Caching a synthetic UUID for %@", buf, 0xCu);
      }

      v34 = [v18 firstObject];
      [v27 setObject:v34 forKeyedSubscript:v16];

      v15 = v36;
    }

LABEL_23:
    sub_10002479C(v19);
LABEL_24:
    os_unfair_lock_unlock(&unk_100046BE8);

LABEL_25:
    goto LABEL_26;
  }

  v13 = 0;
LABEL_26:

  return v13;
}

void sub_1000228C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock(&unk_100046BE8);
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing UUIDs for %@", buf, 0xCu);
    }

    v5 = sub_100024CDC();
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"uuid-mappings"];
      if (v7)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v3;
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          while (2)
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [v7 objectForKeyedSubscript:{*(*(&v16 + 1) + 8 * i), v16}];

              if (v13)
              {

                v14 = [v7 mutableCopy];
                [v14 removeObjectsForKeys:v8];
                v15 = [v6 mutableCopy];
                [v15 setObject:v14 forKeyedSubscript:@"uuid-mappings"];
                sub_10002479C(v15);

                v8 = v14;
                goto LABEL_16;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }
    }

    os_unfair_lock_unlock(&unk_100046BE8);
  }
}

void sub_100022AC0(void *a1)
{
  if (a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing the UUID cache", v10, 2u);
    }

    +[NEProcessInfo clearUUIDCache];
    os_unfair_lock_lock(&unk_100046BE8);
    v3 = sub_100024CDC();
    v4 = v3;
    if (v3)
    {
      v5 = [v3 mutableCopy];
    }

    else
    {
      v5 = objc_alloc_init(NSMutableDictionary);
    }

    v6 = v5;
    [v5 setObject:0 forKeyedSubscript:@"uuid-mappings"];
    sub_10002479C(v6);
    os_unfair_lock_unlock(&unk_100046BE8);
    v7 = sub_1000016DC();
    if (v7)
    {
      v8 = v7[12];

      if (v8)
      {
        sub_100024D20(a1, v9);
      }
    }
  }
}

void sub_100022BD4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v10 = [v5 appVPN];

    if (v10)
    {
      v11 = [v6 appVPN];
      v12 = [v11 appRules];
    }

    else
    {
      v13 = [v6 pathController];

      if (!v13)
      {
        v18 = [v6 relay];

        if (!v18)
        {
LABEL_12:
          v8 = *(a1 + 40);
          v9 = 0;
          goto LABEL_13;
        }

        v11 = [v6 relay];
        v19 = [v11 perApp];
        v14 = [v19 appRules];

LABEL_10:
        if (v14)
        {
          v15 = *(a1 + 48);
          v16 = *(a1 + 56);
          v17 = [v6 name];
          sub_1000231B0(v15, v14, v16, v17);
        }

        goto LABEL_12;
      }

      v11 = [v6 pathController];
      v12 = [v11 pathRules];
    }

    v14 = v12;
    goto LABEL_10;
  }

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    v21 = 138412290;
    v22 = v20;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to load configuration %@", &v21, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = 2;
LABEL_13:
  sub_10000BA0C(NEHelperServer, v8, v9, 0);
}

uint64_t sub_100022DB4(SCPreferencesRef *a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  Property = objc_getProperty(a1, v6, 8, 1);
  dispatch_assert_queue_V2(Property);
  v8 = SCPreferencesGetValue(a1[2], @"services");
  if (isa_nsdictionary())
  {
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(NSMutableDictionary);
  }

  v10 = v9;
  v11 = [v9 objectForKeyedSubscript:{v5, v23}];
  v25 = v11;
  if (isa_nsdictionary())
  {
    v12 = [v11 mutableCopy];
  }

  else
  {
    v12 = objc_alloc_init(NSMutableDictionary);
  }

  v13 = v12;
  v14 = ne_session_type_to_string();
  v15 = [NSString stringWithUTF8String:v14];
  v16 = [v13 objectForKeyedSubscript:v15];

  if (isa_nsdictionary())
  {
    v17 = [v16 mutableCopy];
    [v17 removeObjectForKey:@"match-domains"];
  }

  else
  {
    v17 = objc_alloc_init(NSMutableDictionary);
  }

  [v17 setObject:v24 forKeyedSubscript:@"match-domains"];
  v18 = [NSString stringWithUTF8String:v14];
  [v13 setObject:v17 forKeyedSubscript:v18];

  [v10 setObject:v13 forKeyedSubscript:v5];
  if (SCPreferencesSetValue(a1[2], @"services", v10) && SCPreferencesCommitChanges(a1[2]))
  {
    sub_1000230CC(a1, v19);
    if ((nelog_is_extra_vpn_logging_enabled() & 1) == 0)
    {
      v21 = 1;
      goto LABEL_23;
    }

    v20 = ne_log_large_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v5;
      v28 = 2112;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Set match domains for service %@:%@", buf, 0x16u);
    }

    v21 = 1;
  }

  else
  {
    if ((nelog_is_extra_vpn_logging_enabled() & 1) == 0)
    {
      v21 = 0;
      goto LABEL_23;
    }

    v20 = ne_log_large_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = v5;
      v28 = 2112;
      v29 = v24;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to set match domains for service %@:%@", buf, 0x16u);
    }

    v21 = 0;
  }

LABEL_23:
  return v21;
}

void sub_1000230CC(void *a1, const char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 8, 1);
    dispatch_assert_queue_V2(Property);
    v3 = notify_post("com.apple.networkextension.ondemandcachechanged");
    if (v3)
    {
      v4 = v3;
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "com.apple.networkextension.ondemandcachechanged";
        v8 = 1024;
        v9 = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to post the %s notification: %u", &v6, 0x12u);
      }
    }
  }
}

void sub_1000231B0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v43 = a4;
  if (!a1)
  {
    goto LABEL_40;
  }

  os_unfair_lock_lock(&unk_100046BE8);
  v8 = sub_100023734();
  v9 = sub_100023914(v8, 0);
  v40 = sub_100023914(v8, 1);
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v54 = v43;
    v55 = 2048;
    v56 = [v7 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Populating the cache with UUIDs for %lu app rules", buf, 0x16u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = v7;
  v46 = [v11 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (!v46)
  {

    goto LABEL_36;
  }

  v38 = v8;
  v39 = v7;
  v12 = 0;
  v45 = *v50;
  v42 = v11;
  v41 = a1;
  do
  {
    for (i = 0; i != v46; i = i + 1)
    {
      if (*v50 != v45)
      {
        objc_enumerationMutation(v11);
      }

      v14 = *(*(&v49 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
        v16 = [v15 matchSigningIdentifier];
        v17 = [v16 isEqualToString:@"PathRuleDefaultIdentifier"];

        if (v17)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v15 = 0;
      }

      v18 = [v14 matchSigningIdentifier];
      v19 = [v9 objectForKeyedSubscript:v18];

      if (!v19)
      {
        v48 = 0;
        if (v15)
        {
          v20 = [v15 isIdentifierExternal];
        }

        else
        {
          v20 = 0;
        }

        v47 = 0;
        v21 = [v14 matchSigningIdentifier];
        v22 = [v14 matchPath];
        v23 = sub_1000239B4(a1, v21, v22, v20, a3, 0, &v48, &v47);

        v24 = sub_100024648(v23);
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v9;
          v27 = [v23 count];
          v44 = v24;
          v28 = v23;
          v29 = a3;
          if (v47)
          {
            v30 = @"synthetic ";
          }

          else
          {
            v30 = &stru_10003E738;
          }

          v31 = [v14 matchSigningIdentifier];
          *buf = 138413058;
          v54 = v43;
          v55 = 2048;
          v56 = v27;
          v9 = v26;
          a1 = v41;
          v57 = 2112;
          v58 = v30;
          a3 = v29;
          v23 = v28;
          v24 = v44;
          v59 = 2112;
          v60 = v31;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: Populating the cache with %lu %@UUID(s) for %@", buf, 0x2Au);

          v11 = v42;
        }

        v32 = [v14 matchSigningIdentifier];
        [v9 setObject:v24 forKeyedSubscript:v32];

        if (v47 == 1)
        {
          if ([v24 count] == 1)
          {
            v33 = [v24 firstObject];
            v34 = [v14 matchSigningIdentifier];
            [v40 setObject:v33 forKeyedSubscript:v34];
          }

          else
          {
            v33 = ne_log_obj();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [v24 count];
              *buf = 138412546;
              v54 = v43;
              v55 = 2048;
              v56 = v35;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@: Cannot populate synthesized UUID, count is wrong (%lu)", buf, 0x16u);
            }
          }
        }

        v12 = 1;
      }

LABEL_29:
    }

    v46 = [v11 countByEnumeratingWithState:&v49 objects:v61 count:16];
  }

  while (v46);

  v8 = v38;
  v7 = v39;
  if (v12)
  {
    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v43;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@: Saving the cache", buf, 0xCu);
    }

    sub_10002479C(v38);
    goto LABEL_39;
  }

LABEL_36:
  v37 = ne_log_obj();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v43;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@: Cache was already fully populated", buf, 0xCu);
  }

LABEL_39:
  os_unfair_lock_unlock(&unk_100046BE8);

LABEL_40:
}

void *sub_100023734()
{
  v0 = sub_100024CDC();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 mutableCopy];
  }

  else
  {
    v2 = objc_alloc_init(NSMutableDictionary);
  }

  v3 = v2;
  v4 = [v2 objectForKeyedSubscript:@"os-version"];

  if (!v4)
  {
    v5 = ne_session_copy_os_version_string();
    if (v5)
    {
      v6 = v5;
      v7 = [[NSString alloc] initWithCString:v5 encoding:4];
      free(v6);
      [v3 setObject:v7 forKeyedSubscript:@"os-version"];
    }

    else
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get the current OS version", buf, 2u);
      }
    }
  }

  v8 = [v3 objectForKeyedSubscript:@"boot-uuid"];

  if (!v8)
  {
    *buf = 0;
    v13 = 0;
    if (ne_session_get_boot_session_uuid())
    {
      v9 = [[NSData alloc] initWithBytes:buf length:16];
      [v3 setObject:v9 forKeyedSubscript:@"boot-uuid"];
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get the current boot session UUID", v11, 2u);
      }
    }
  }

  return v3;
}

id sub_100023914(void *a1, int a2)
{
  v3 = @"uuid-mappings";
  if (a2)
  {
    v3 = @"synthesized-uuid-mappings";
  }

  v4 = v3;
  v5 = a1;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(NSMutableDictionary);
  }

  v9 = v8;
  [v5 setObject:v8 forKeyedSubscript:v4];

  return v9;
}

id sub_1000239B4(void *a1, void *a2, void *a3, int a4, unsigned int a5, unint64_t a6, _BYTE *a7, _BYTE *a8)
{
  v13 = a2;
  v14 = a3;
  v16 = objc_getProperty(a1, v15, 8, 1);
  dispatch_assert_queue_V2(v16);

  if (a6 < 0xB)
  {
    if (v14)
    {
      v109 = v14;
      v19 = [NSArray arrayWithObjects:&v109 count:1];
    }

    else
    {
      v19 = 0;
    }

    v88 = a4;
    v97 = v19;
    if (isa_nsarray())
    {
      v20 = sub_100024A1C(a1, v19);
      if (isa_nsarray())
      {
        v21 = [v20 count] == 0;
LABEL_13:
        v96 = a6;
        v98 = v13;
        if (!v14 && v21)
        {
          v101 = 0;
          v22 = [NELaunchServices bundleProxyForIdentifier:v13 uid:a5 plugins:&v101];
          v23 = v101;
          if ([v23 count] && objc_msgSend(v22, "isWatchKitApp"))
          {

            v22 = 0;
          }

          if (v22 | v23)
          {
            v89 = a8;
            *a7 = 1;
            v24 = v22;
            v25 = v23;
            v26 = v20;
            Property = objc_getProperty(a1, v27, 8, 1);
            dispatch_assert_queue_V2(Property);
            v94 = v24;
            v29 = v26;
            v20 = sub_100024BC0(a1, v24, v26);
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            v30 = v25;
            v31 = [v30 countByEnumeratingWithState:&v102 objects:buf count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v103;
              do
              {
                v34 = 0;
                v35 = v20;
                do
                {
                  if (*v103 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v20 = sub_100024BC0(a1, *(*(&v102 + 1) + 8 * v34), v35);

                  v34 = v34 + 1;
                  v35 = v20;
                }

                while (v32 != v34);
                v32 = [v30 countByEnumeratingWithState:&v102 objects:buf count:16];
              }

              while (v32);
            }

            v13 = v98;
            a8 = v89;
            v14 = 0;
          }
        }

        v36 = [qword_100046BA8 objectForKeyedSubscript:v13];
        v95 = v36;
        if (isa_nsstring())
        {
          v108 = v36;
          v37 = [NSArray arrayWithObjects:&v108 count:1];
        }

        else if (*a7)
        {
          v37 = 0;
        }

        else
        {
          v38 = v13;
          v40 = objc_getProperty(a1, v39, 8, 1);
          dispatch_assert_queue_V2(v40);
          v41 = v38;
          v42 = v41;
          if ([v41 hasPrefix:@"com.apple."])
          {
            v42 = [v41 substringFromIndex:10];

            if ([v42 hasPrefix:@"icloud."])
            {
              v43 = [v42 substringFromIndex:7];

              v42 = v43;
            }
          }

          if ([v42 rangeOfCharacterFromSet:qword_100046BB8] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v92 = [@"/usr/libexec/" stringByAppendingString:v42];
            *buf = v92;
            v44 = [@"/usr/sbin/" stringByAppendingString:v42];
            *&buf[8] = v44;
            v45 = [@"/usr/local/bin/" stringByAppendingString:v42];
            *&buf[16] = v45;
            [@"/usr/bin/" stringByAppendingString:v42];
            v46 = a8;
            v48 = v47 = v14;
            v111 = v48;
            v37 = [NSArray arrayWithObjects:buf count:4];

            v14 = v47;
            a8 = v46;

            v13 = v98;
          }

          else
          {
            v37 = 0;
          }
        }

        v93 = v37;
        if (isa_nsarray())
        {
          v49 = sub_100024A1C(a1, v37);
          if (isa_nsarray() && [v49 count])
          {
            if (isa_nsarray() && [v20 count])
            {
              v50 = [v20 arrayByAddingObjectsFromArray:v49];
            }

            else
            {
              v50 = v49;
            }

            v51 = v50;

            v20 = v51;
          }
        }

        v52 = v13;
        v54 = objc_getProperty(a1, v53, 8, 1);
        dispatch_assert_queue_V2(v54);
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v55 = qword_100046BA0;
        v56 = [v55 countByEnumeratingWithState:&v102 objects:buf count:16];
        if (v56)
        {
          v57 = v56;
          v90 = a8;
          v91 = v14;
          v58 = *v103;
          while (2)
          {
            for (i = 0; i != v57; i = i + 1)
            {
              if (*v103 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v60 = *(*(&v102 + 1) + 8 * i);
              v61 = [v60 objectAtIndexedSubscript:0];
              v62 = [v52 isEqualToString:v61];

              if (v62)
              {
                v63 = [v60 objectAtIndexedSubscript:1];
                goto LABEL_58;
              }
            }

            v57 = [v55 countByEnumeratingWithState:&v102 objects:buf count:16];
            if (v57)
            {
              continue;
            }

            break;
          }

          v63 = 0;
LABEL_58:
          v13 = v98;
          a8 = v90;
          v14 = v91;
        }

        else
        {
          v63 = 0;
        }

        if (isa_nsuuid())
        {
          v64 = v96;
          if (isa_nsarray() && [v20 count])
          {
            v65 = [v20 arrayByAddingObject:v63];
          }

          else
          {
            v107 = v63;
            v65 = [NSArray arrayWithObjects:&v107 count:1];
          }

          v66 = v65;

          v20 = v66;
        }

        else
        {
          v64 = v96;
        }

        if ((!isa_nsarray() || ![v20 count]) && objc_msgSend(v52, "hasPrefix:", @"com.apple.webapp-"))
        {
          v67 = sub_1000239B4(a1, @"com.apple.webapp", v14, 0, a5, v64 + 1, a7, a8);

          v20 = v67;
        }

        if (!isa_nsarray() || ![v20 count])
        {
          v68 = [qword_100046BB0 objectForKeyedSubscript:v52];
          if (isa_nsstring())
          {
            v69 = sub_1000239B4(a1, v68, v14, 0, a5, v64 + 1, a7, a8);

            v20 = v69;
          }
        }

        if (isa_nsarray())
        {
          if ([v20 count] | v64)
          {
            goto LABEL_85;
          }
        }

        else if (v64)
        {
          goto LABEL_85;
        }

        if ([v52 hasPrefix:@"iCloud."])
        {
          v70 = [v52 substringFromIndex:7];
          v71 = sub_1000239B4(a1, v70, v14, 0, a5, v64 + 1, a7, a8);

          if (!isa_nsarray() || ![v71 count])
          {
            v72 = sub_1000239B4(a1, @"com.apple.bird", v14, 0, a5, v64 + 1, a7, a8);

            v71 = v72;
          }

          v20 = v71;
        }

LABEL_85:
        if (isa_nsarray())
        {
          if ([v20 count] | v64)
          {
            goto LABEL_94;
          }
        }

        else if (v64)
        {
          goto LABEL_94;
        }

        if ([v52 hasPrefix:@"com.apple.clouddocs."])
        {
          v73 = [v52 substringFromIndex:20];
          v74 = sub_1000239B4(a1, v73, v14, 0, a5, v64 + 1, a7, a8);

          if (!isa_nsarray() || ![v74 count])
          {
            v75 = sub_1000239B4(a1, @"com.apple.bird", v14, 0, a5, v64 + 1, a7, a8);

            v74 = v75;
          }

          v20 = v74;
        }

LABEL_94:
        if ((!isa_nsarray() || ![v20 count]) && objc_msgSend(v52, "hasPrefix:", @"com.apple.CloudDocs"))
        {
          v76 = sub_1000239B4(a1, @"com.apple.bird", v14, 0, a5, v64 + 1, a7, a8);

          v20 = v76;
        }

        if (isa_nsarray())
        {
          if ([v20 count] | v64)
          {
            goto LABEL_104;
          }
        }

        else if (v64)
        {
          goto LABEL_104;
        }

        if ([v52 hasPrefix:@"com.apple.cloudkit."])
        {
          v77 = sub_1000239B4(a1, @"com.apple.cloudd", v14, 0, a5, v64 + 1, a7, a8);

          v20 = v77;
        }

LABEL_104:
        if (isa_nsarray())
        {
          if ([v20 count] | v64)
          {
            goto LABEL_112;
          }
        }

        else if (v64)
        {
          goto LABEL_112;
        }

        if (([v52 hasPrefix:@"com.automation."] & 1) != 0 || (objc_msgSend(v52, "hasPrefix:", @"com.iosframeworksqa.") & 1) != 0 || objc_msgSend(v52, "hasPrefix:", @"com.atvqa."))
        {
          v78 = sub_1000239B4(a1, @"com.apple.coreautomationd", v14, 0, a5, v64 + 1, a7, a8);

          v20 = v78;
        }

LABEL_112:
        if (isa_nsarray())
        {
          if ([v20 count] | v64)
          {
            goto LABEL_120;
          }
        }

        else if (v64)
        {
          goto LABEL_120;
        }

        if ([v52 length] >= 0xC && objc_msgSend(v52, "rangeOfCharacterFromSet:", qword_100046BC0) == 10)
        {
          v79 = [v52 substringWithRange:{10, 1}];
          v80 = [v79 isEqualToString:@"."];

          if (v80)
          {
            v81 = [v52 substringFromIndex:11];
            v82 = sub_1000239B4(a1, v81, v14, 0, a5, v64 + 1, a7, a8);

            v20 = v82;
          }
        }

LABEL_120:
        if (isa_nsarray())
        {
          if ([v20 count] | v64 || (v88 & 1) == 0)
          {
LABEL_129:
            v18 = v20;

            v17 = v97;
            goto LABEL_130;
          }
        }

        else if (v64 || !v88)
        {
          goto LABEL_129;
        }

        v83 = objc_alloc_init(NSUUID);
        v106 = v83;
        v84 = [NSArray arrayWithObjects:&v106 count:1];

        v85 = ne_log_obj();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v86 = [v52 UTF8String];
          *buf = 138412546;
          *&buf[4] = v83;
          *&buf[12] = 2080;
          *&buf[14] = v86;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Synthesized UUID %@ for bundle ID %s", buf, 0x16u);
        }

        *a8 = 1;
        v20 = v84;
        goto LABEL_129;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = 1;
    goto LABEL_13;
  }

  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "we are out of our depths!", buf, 2u);
  }

  v18 = 0;
LABEL_130:

  return v18;
}

id sub_100024648(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (isa_nsuuid())
        {
          v15[0] = 0;
          v15[1] = 0;
          [v8 getUUIDBytes:{v15, v11}];
          v9 = [[NSData alloc] initWithBytes:v15 length:16];
          [v2 addObject:v9];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_10002479C(uint64_t a1)
{
  v13 = 0;
  v1 = [NSPropertyListSerialization dataWithPropertyList:a1 format:200 options:0 error:&v13];
  v2 = v13;
  v3 = v2;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v3;
      v6 = "Failed to serialize the cache plist: %@";
      v7 = v5;
      v8 = 12;
LABEL_22:
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (([v1 writeToFile:@"/Library/Preferences/com.apple.networkextension.uuidcache.plist" atomically:1] & 1) == 0)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Failed to write the serialized cache to disk";
      v7 = v5;
      v8 = 2;
      goto LABEL_22;
    }

LABEL_19:

    goto LABEL_20;
  }

  ne_force_reset_uuid_cache();
  if (dword_1000468A4 != -1)
  {
    goto LABEL_14;
  }

  v9 = notify_register_check("com.apple.networkextension.uuidcache", &dword_1000468A4);
  if (v9)
  {
    v10 = v9;
    dword_1000468A4 = -1;
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "com.apple.networkextension.uuidcache";
      v16 = 1024;
      v17 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to register for %s notifications: %u", buf, 0x12u);
    }
  }

  if (dword_1000468A4 != -1)
  {
LABEL_14:
    ++qword_100046BE0;
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = qword_100046BE0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting UUID cache generation to %llu", buf, 0xCu);
    }

    if (!notify_set_state(dword_1000468A4, qword_100046BE0))
    {
      notify_post("com.apple.networkextension.uuidcache");
    }
  }

LABEL_20:
}

id sub_100024A1C(void *a1, void *a2)
{
  v3 = a2;
  Property = objc_getProperty(a1, v4, 8, 1);
  dispatch_assert_queue_V2(Property);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = +[NSFileManager defaultManager];
        v14 = [v13 isReadableFileAtPath:v12];

        if (v14)
        {
          v15 = [NEProcessInfo copyUUIDsForExecutable:v12];
          if (v9)
          {
            [v9 addObjectsFromArray:v15];
          }

          else
          {
            v9 = [[NSMutableArray alloc] initWithArray:v15];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_100024BC0(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  Property = objc_getProperty(a1, v7, 8, 1);
  dispatch_assert_queue_V2(Property);
  v9 = [v6 machOUUIDs];

  if (!isa_nsarray() || ![v9 count])
  {
    goto LABEL_6;
  }

  if ([v9 count] >= 2 && +[NEProcessInfo is64bitCapable](NEProcessInfo, "is64bitCapable"))
  {
    v10 = [v9 mutableCopy];
    [v10 exchangeObjectAtIndex:objc_msgSend(v9 withObjectAtIndex:{"count") - 1, 0}];
    if (!v10)
    {
LABEL_6:
      v10 = v5;
      goto LABEL_7;
    }
  }

  else
  {
    v10 = [v9 copy];
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  if (v5)
  {
    v12 = [v5 arrayByAddingObjectsFromArray:v10];

    v10 = v12;
  }

LABEL_7:

  return v10;
}

uint64_t sub_100024CDC()
{
  v0 = ne_copy_uuid_cache();
  if (v0)
  {
    v1 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_100024D20(void *a1, const char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 8, 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100024DAC;
    block[3] = &unk_10003D7C0;
    block[4] = a1;
    dispatch_async(Property, block);
  }
}

void sub_100024DAC(uint64_t a1)
{
  v3 = +[NEConfigurationManager sharedManagerForAllUsers];
  v4 = *(a1 + 32);
  if (v4)
  {
    Property = objc_getProperty(v4, v2, 8, 1);
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
    Property = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100024E68;
  v7[3] = &unk_10003D850;
  v7[4] = v6;
  [v3 loadConfigurationsWithCompletionQueue:Property handler:v7];
}

void sub_100024E68(uint64_t a1, void *a2)
{
  v13 = a2;
  if ([v13 count])
  {
    v3 = [v13 indexOfObjectPassingTest:&stru_10003D828];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [v13 objectAtIndexedSubscript:v3];
      v5 = [v4 appVPN];

      if (v5)
      {
        v6 = [v4 appVPN];
        v7 = [v6 appRules];
      }

      else
      {
        v8 = [v4 pathController];

        if (!v8)
        {
LABEL_9:

          goto LABEL_10;
        }

        v6 = [v4 pathController];
        v7 = [v6 pathRules];
      }

      v9 = v7;

      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = NEGetConsoleUserUID();
        v12 = [v4 name];
        sub_1000231B0(v10, v9, v11, v12);
      }

      goto LABEL_9;
    }
  }

LABEL_10:
}

BOOL sub_100024F98(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 name];
    v6 = [v5 isEqualToString:@"com.apple.commcenter.ne.cellularusage"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100025014(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v1 count] != 2)
  {
    goto LABEL_40;
  }

  v2 = [v1 objectForKeyedSubscript:@"subnet-addresses"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_39:

LABEL_40:
    v5 = [v1 description];
    goto LABEL_41;
  }

  v3 = [v1 objectForKeyedSubscript:@"subnet-masks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = [v2 count], v4 != objc_msgSend(v3, "count")))
  {

    goto LABEL_39;
  }

  v5 = objc_alloc_init(NSMutableString);
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v25 = v4;
    do
    {
      if (v7)
      {
        [v5 appendString:{@", "}];
      }

      v8 = [v2 objectAtIndexedSubscript:v6];
      v9 = [v3 objectAtIndexedSubscript:v6];
      v10 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 length];
          if (v11 == [v9 length] && (v11 == 16 || v11 == 4))
          {
            if (v11 == 16)
            {
              v12 = 30;
            }

            else
            {
              v12 = 2;
            }

            if (inet_ntop(v12, [v10 bytes], v26, 0x2Eu))
            {
              v13 = [v9 bytes];
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
LABEL_20:
              v18 = v16;
              while (2)
              {
                v19 = v13[v14];
                v20 = 7;
                v21 = v18;
                do
                {
                  v18 = ((1 << v20) & v19) == 0;
                  if (((1 << v20) & v19) != 0)
                  {
                    ++v17;
                    if (v21)
                    {
                      v14 = ++v15;
                      v16 = 1;
                      if (v11 > v15)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_30;
                    }
                  }

                  --v20;
                  v21 = v18;
                }

                while (v20 != -1);
                v14 = ++v15;
                if (v11 > v15)
                {
                  continue;
                }

                break;
              }

              if ((v16 & 1) == 0)
              {
                if (8 * v11 == v17)
                {
                  v23 = [NSString stringWithUTF8String:v26];
                }

                else
                {
                  v23 = [[NSString alloc] initWithFormat:@"%s/%u", v26, v17];
                }

                v22 = v23;
                v4 = v25;
                goto LABEL_32;
              }
            }

LABEL_30:
            v4 = v25;
          }
        }
      }

      v22 = [[NSString alloc] initWithFormat:@"[%@/%@]", v10, v9];
LABEL_32:

      [v5 appendString:v22];
      ++v6;
      v7 = 1;
    }

    while (v6 != v4);
  }

LABEL_41:
  return v5;
}

void sub_100025380(id a1)
{
  v46[0] = @"com.apple.datausage.dataaccess.activesync";
  v35 = [[NSUUID alloc] initWithUUIDString:@"D61963E5-13EC-4EAB-A9EB-E6C9BF4D266B"];
  v46[1] = v35;
  v34 = [NSArray arrayWithObjects:v46 count:2];
  v47[0] = v34;
  v45[0] = @"com.apple.datausage.telephony.mms";
  v33 = [[NSUUID alloc] initWithUUIDString:@"569F2700-CAF9-483D-B19D-7AF406DCE15E"];
  v45[1] = v33;
  v32 = [NSArray arrayWithObjects:v45 count:2];
  v47[1] = v32;
  v44[0] = @"com.apple.datausage.atc";
  v31 = [[NSUUID alloc] initWithUUIDString:@"B3F98213-9C65-405E-BB33-55FA02C7E003"];
  v44[1] = v31;
  v30 = [NSArray arrayWithObjects:v44 count:2];
  v47[2] = v30;
  v43[0] = @"com.apple.datausage.telephony.ims";
  v29 = [[NSUUID alloc] initWithUUIDString:@"67A03811-DB0A-594E-C2AE-8B0517EDF26F"];
  v43[1] = v29;
  v28 = [NSArray arrayWithObjects:v43 count:2];
  v47[3] = v28;
  v42[0] = @"com.apple.icloud.restore";
  v27 = [[NSUUID alloc] initWithUUIDString:@"D444877C-8E3A-461F-97E2-17A8C4B9924E"];
  v42[1] = v27;
  v26 = [NSArray arrayWithObjects:v42 count:2];
  v47[4] = v26;
  v41[0] = @"com.apple.datausage.airdrop";
  v25 = [[NSUUID alloc] initWithUUIDString:@"9CE8B501-90E7-456E-952B-4937ED29C7BD"];
  v41[1] = v25;
  v24 = [NSArray arrayWithObjects:v41 count:2];
  v47[5] = v24;
  v40[0] = @"com.apple.datausage.dns.multicast";
  v1 = [[NSUUID alloc] initWithUUIDString:@"979C0A62-49FE-4739-BDCB-CAC584AC832D"];
  v40[1] = v1;
  v2 = [NSArray arrayWithObjects:v40 count:2];
  v47[6] = v2;
  v39[0] = @"com.apple.datausage.telephony.rcs";
  v3 = [[NSUUID alloc] initWithUUIDString:@"CE95569A-401E-4586-ABCF-1231D42E1D3C"];
  v39[1] = v3;
  v4 = [NSArray arrayWithObjects:v39 count:2];
  v47[7] = v4;
  v38[0] = @"com.apple.datausage.telephony.rcs.private";
  v5 = [[NSUUID alloc] initWithUUIDString:@"D5AE3AE4-5D00-43F6-BC25-B4441DE372B9"];
  v38[1] = v5;
  v6 = [NSArray arrayWithObjects:v38 count:2];
  v47[8] = v6;
  v37[0] = @"com.apple.mobileassetd.client.auto-asset-client";
  v7 = [[NSUUID alloc] initWithUUIDString:@"5C5BCB61-2C52-4D1F-9C1B-A5049F4998E8"];
  v37[1] = v7;
  v8 = [NSArray arrayWithObjects:v37 count:2];
  v47[9] = v8;
  v9 = [NSArray arrayWithObjects:v47 count:10];
  v10 = qword_100046BA0;
  qword_100046BA0 = v9;

  v11 = qword_100046BA8;
  qword_100046BA8 = &off_100043E30;

  v12 = qword_100046BB0;
  qword_100046BB0 = &off_100043E58;

  v13 = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_-+"];
  v14 = [v13 invertedSet];
  v15 = qword_100046BB8;
  qword_100046BB8 = v14;

  v16 = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"];
  v17 = [v16 invertedSet];
  v18 = qword_100046BC0;
  qword_100046BC0 = v17;

  v19 = SCPreferencesCreate(kCFAllocatorDefault, @"NEHelper control settings", @"/Library/Preferences/com.apple.networkextension.control.plist");
  if (v19)
  {
    v20 = v19;
    Value = SCPreferencesGetValue(v19, @"DisableUUIDDiskCache");
    NEInitCFTypes();
    if (NEIsValidCFType())
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      byte_100046BD8 = valuePtr != 0;
    }

    CFRelease(v20);
  }

  v22 = objc_alloc_init(NEHelperCacheManager);
  v23 = qword_100046BD0;
  qword_100046BD0 = v22;
}

void sub_100025B34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v12 = SCPreferencesGetValue(v3, @"services");
  if (isa_nsdictionary())
  {
    v4 = [v12 mutableCopy];
  }

  else
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  v5 = v4;
  v6 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  if (v6)
  {
    [v5 removeObjectForKey:*(a1 + 40)];
    v7 = *(a1 + 32);
    v8 = v7 ? *(v7 + 16) : 0;
    if (SCPreferencesSetValue(v8, @"services", v5))
    {
      v9 = *(a1 + 32);
      v10 = v9 ? *(v9 + 16) : 0;
      if (SCPreferencesCommitChanges(v10))
      {
        sub_1000230CC(*(a1 + 32), v11);
      }
    }
  }
}

void sub_100025C38(uint64_t a1)
{
  v3 = 0;
  v2 = sub_1000224D8(*(a1 + 32), *(a1 + 40), *(a1 + 48), 0, 0, &v3);
  (*(*(a1 + 56) + 16))();
}

void sub_100025C9C(void *a1, const char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 8, 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100025D28;
    block[3] = &unk_10003D7C0;
    block[4] = a1;
    dispatch_async(Property, block);
  }
}

void sub_100025D30(void *a1, const char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 8, 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100025DBC;
    block[3] = &unk_10003D7C0;
    block[4] = a1;
    dispatch_async(Property, block);
  }
}

void sub_100025DBC(uint64_t a1)
{
  +[NEProcessInfo clearUUIDCache];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  if (SCPreferencesRemoveAllValues())
  {
    v4 = *(a1 + 32);
    v5 = v4 ? *(v4 + 16) : 0;
    if (SCPreferencesCommitChanges(v5))
    {
      sub_1000230CC(*(a1 + 32), v6);
    }
  }

  v7 = *(a1 + 32);

  sub_100022AC0(v7);
}

void sub_100025E3C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (a1)
  {
    Property = objc_getProperty(a1, v6, 8, 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100025F14;
    block[3] = &unk_10003D7E8;
    block[4] = a1;
    v10 = v5;
    v11 = v7;
    dispatch_async(Property, block);
  }
}

uint64_t sub_100025F14(uint64_t a1)
{
  sub_1000228C0(*(a1 + 32), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1000265E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v4 count];
      v10 = *(a1 + 32);
      *buf = 134218242;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Found %lu UUID(s) by lookup for bundle id: %@", buf, 0x16u);
    }

    v6 = [v4 firstObject];
    v7 = v6;
    if (v6)
    {
      [v6 getUUIDBytes:&v12];
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v11;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Found UUID: %@ for bundleID: %@", buf, 0x16u);
    }

    if (!uuid_is_null(&v12))
    {
      xpc_dictionary_set_uuid(*(a1 + 40), "app-euuid", &v12);
    }
  }

  sub_10000BA0C(NEHelperServer, *(a1 + 48), 0, *(a1 + 40));
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_100046BF0 != -1)
  {
    dispatch_once(&qword_100046BF0, &stru_10003D8B8);
  }

  v1 = sub_1000016DC();
  if (v1)
  {
    v2 = +[NEConfigurationManager sharedManagerForAllUsers];
    [v2 postGeneration];

    Property = objc_getProperty(v1, v3, 24, 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000C4B4;
    handler[3] = &unk_10003D4C8;
    handler[4] = v1;
    xpc_set_event_stream_handler("com.apple.fsevents.matching", Property, handler);
    v6 = objc_getProperty(v1, v5, 24, 1);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000C4C4;
    v18[3] = &unk_10003D4C8;
    v18[4] = v1;
    xpc_set_event_stream_handler("com.apple.distnoted.matching", v6, v18);
    v8 = objc_getProperty(v1, v7, 24, 1);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000C4D4;
    v17[3] = &unk_10003CE78;
    v17[4] = v1;
    if (notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", v1 + 4, v8, v17))
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(block) = 136315138;
        *(&block + 4) = "com.apple.mobile.keybagd.first_unlock";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to register for the %s notification", &block, 0xCu);
      }
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000C4DC;
    v16[3] = &unk_10003CEA0;
    v16[4] = v1;
    [MOEffectiveSettings startObservingChangesWithHandler:v16];
    v11 = objc_getProperty(v1, v10, 32, 1);
    xpc_connection_resume(v11);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("check launch services", v12);

    *&block = _NSConcreteStackBlock;
    *(&block + 1) = 3221225472;
    v21 = sub_10000C5D0;
    v22 = &unk_10003D7C0;
    v23 = v1;
    dispatch_async(v13, &block);
  }

  objc_autoreleasePoolPop(v0);
  v14 = +[NSRunLoop mainRunLoop];
  [v14 run];

  return 0;
}

void sub_100026DDC(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("nw_privileged_queue", v1);
  v3 = qword_100046BF8;
  qword_100046BF8 = v2;

  v4 = qword_100046BF8;

  _NWPrivilegedHelperStart(v4);
}