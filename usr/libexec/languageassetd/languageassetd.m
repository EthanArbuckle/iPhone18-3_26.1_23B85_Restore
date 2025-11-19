void sub_100000E68(uint64_t a1, uint64_t a2)
{
  NSLog(@"startCatalogDownload completed: assetType=[%@] result=%ld", *(a1 + 32), a2);
  if (a2)
  {
    *(*(a1 + 40) + 24) = 1;
  }

  else if (![*(a1 + 32) isEqualToString:kFSFontAssetType] || objc_msgSend(*(a1 + 40), "checkFontAssetsSanityWithLanguageAssetInfo:", *(a1 + 48)))
  {
    v4 = [*(a1 + 40) effectiveAssetFlagArrayForAssetInfo:*(a1 + 48)];
    if ((*(*(a1 + 40) + 24) & 1) == 0)
    {
      v5 = v4;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v68;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v68 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v8 += [objc_msgSend(*(*(&v67 + 1) + 8 * i) objectForKeyedSubscript:{@"downloadNeeded", "BOOLValue"}];
          }

          v7 = [v5 countByEnumeratingWithState:&v67 objects:v76 count:16];
        }

        while (v7);
      }

      else
      {
        v8 = 0;
      }

      v11 = [+[TIInputModeController sharedInputModeController](TIInputModeController "sharedInputModeController")];
      v12 = [NSMutableArray arrayWithCapacity:0];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v13 = [v11 countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v64;
        do
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v64 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v63 + 1) + 8 * j);
            v18 = [*(a1 + 40) normalizedLanguage:TIInputModeGetLanguageWithRegion()];
            if (v18)
            {
              [(NSMutableArray *)v12 addObject:v18];
            }
          }

          v14 = [v11 countByEnumeratingWithState:&v63 objects:v75 count:16];
        }

        while (v14);
      }

      [*(a1 + 40) setDownloadFlagToAssetFlagArray:v5 primaryLanguages:v12 assetInfo:*(a1 + 48)];
      if ((*(*(a1 + 40) + 25) & 1) == 0)
      {
        v19 = [NSMutableArray arrayWithCapacity:0];
        v20 = +[NSLocale preferredLanguages];
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v21 = [(NSArray *)v20 countByEnumeratingWithState:&v59 objects:v74 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v60;
          do
          {
            for (k = 0; k != v22; k = k + 1)
            {
              if (*v60 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [*(a1 + 40) normalizedLanguage:*(*(&v59 + 1) + 8 * k)];
              if (v25)
              {
                [(NSMutableArray *)v19 addObject:v25];
              }
            }

            v22 = [(NSArray *)v20 countByEnumeratingWithState:&v59 objects:v74 count:16];
          }

          while (v22);
        }

        [*(a1 + 40) setDownloadFlagToAssetFlagArray:v5 primaryLanguages:v19 assetInfo:*(a1 + 48)];
      }

      if ([*(a1 + 32) isEqualToString:@"com.apple.MobileAsset.DictionaryServices.dictionary3iOS"])
      {
        [*(a1 + 40) purgeLocalAssetsWithType:@"com.apple.MobileAsset.DictionaryServices.dictionary2" mobileAssetVersionV2:1];
        v26 = [*(a1 + 40) oldDictionaryAssetsWithLanguageAssetInfo:*(a1 + 48)];
        if (!([v26 count] + v8))
        {
          v26 = DCSDictionaryAssetCopyDownloadedDictionaryIdentifiers();
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v45 = [v26 countByEnumeratingWithState:&v55 objects:v73 count:16];
        if (v45)
        {
          obj = v26;
          v44 = *v56;
          do
          {
            for (m = 0; m != v45; m = m + 1)
            {
              if (*v56 != v44)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v55 + 1) + 8 * m);
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v29 = [v5 countByEnumeratingWithState:&v51 objects:v72 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v52;
                while (2)
                {
                  for (n = 0; n != v30; n = n + 1)
                  {
                    if (*v52 != v31)
                    {
                      objc_enumerationMutation(v5);
                    }

                    v33 = *(*(&v51 + 1) + 8 * n);
                    v34 = [v33 objectForKeyedSubscript:@"asset"];
                    if ([objc_msgSend(*(a1 + 40) assetIdentifier:v34 assetInfo:{*(a1 + 48)), "isEqualToString:", v28}])
                    {
                      if ([v34 state] == 1)
                      {
                        [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:@"downloadNeeded"];
                      }

                      goto LABEL_55;
                    }
                  }

                  v30 = [v5 countByEnumeratingWithState:&v51 objects:v72 count:16];
                  if (v30)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_55:
              ;
            }

            v45 = [obj countByEnumeratingWithState:&v55 objects:v73 count:16];
          }

          while (v45);
        }
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v35 = [v5 countByEnumeratingWithState:&v47 objects:v71 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v48;
        do
        {
          for (ii = 0; ii != v36; ii = ii + 1)
          {
            if (*v48 != v37)
            {
              objc_enumerationMutation(v5);
            }

            v39 = *(*(&v47 + 1) + 8 * ii);
            if ([objc_msgSend(v39 objectForKeyedSubscript:{@"downloadNeeded", "BOOLValue"}])
            {
              v40 = [v39 objectForKeyedSubscript:@"asset"];
              v41 = [*(a1 + 40) assetIdentifier:v40 assetInfo:*(a1 + 48)];
              [*(a1 + 40) updatePreferenceWithAssetIdentifier:v41];
              NSLog(@"AssetType:%@: start downloading asset %@", *(a1 + 32), v41);
              v42 = [*(a1 + 40) downloadOptions:*(a1 + 32)];
              v46[0] = _NSConcreteStackBlock;
              v46[1] = 3221225472;
              v46[2] = sub_100004078;
              v46[3] = &unk_100008558;
              v46[4] = *(a1 + 32);
              v46[5] = v41;
              v46[6] = v40;
              [v40 startDownload:v42 then:v46];
            }
          }

          v36 = [v5 countByEnumeratingWithState:&v47 objects:v71 count:16];
        }

        while (v36);
      }
    }
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  [+[LanguageAssetLoaderDaemon sharedInstance](LanguageAssetLoaderDaemon run];
  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_10000163C(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = [NSString stringWithUTF8String:string];
    CFPreferencesAppSynchronize(@"com.apple.purplebuddy");
    if (CFPreferencesGetAppBooleanValue(@"ForceNoBuddy", @"com.apple.purplebuddy", 0))
    {
      v4 = 0;
    }

    else
    {
      v4 = CFPreferencesGetAppBooleanValue(@"SetupDone", @"com.apple.purplebuddy", 0) == 0;
    }

    if (![(NSString *)v3 isEqualToString:@"com.apple.purplebuddy.setupdone"]&& v4 | ![(NSString *)v3 isEqualToString:@"AppleLanguagePreferencesChangedNotification"]&& v4 | ![(NSString *)v3 isEqualToString:@"AppleKeyboardsPreferencesChangedNotification"])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[_setupXPCEventHandler] needn't handle event: %@", buf, 0xCu);
      }
    }

    else
    {
      [+[LanguageAssetLoader sharedInstance](LanguageAssetLoader setIsKeyboardsChanged:"setIsKeyboardsChanged:", [(NSString *)v3 isEqualToString:@"AppleKeyboardsPreferencesChangedNotification"]];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001854;
      block[3] = &unk_100008388;
      block[4] = v3;
      if ([(NSString *)v3 isEqualToString:@"com.apple.purplebuddy.setupdone"])
      {
        v5 = 60000000000;
      }

      else
      {
        v5 = 1000000000;
      }

      v6 = dispatch_time(0, v5);
      dispatch_after(v6, &_dispatch_main_q, block);
    }
  }
}

id sub_100001854(uint64_t a1)
{
  NSLog(@"downloadLanguageAssets: eventString=[%@]", *(a1 + 32));
  v1 = +[LanguageAssetLoader sharedInstance];

  return [(LanguageAssetLoader *)v1 downloadLanguageAssets];
}

void sub_1000018F4(id a1, OS_xpc_object *a2)
{
  xpc_connection_set_event_handler(a2, &stru_1000083C8);

  xpc_connection_resume(a2);
}

void sub_100001C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001C40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(@"Catelog download failed. Error=%ld", a2);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v3 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.DictionaryServices.dictionary3iOS"];
    [v3 returnTypes:2];
    [v3 setDoNotBlockBeforeFirstUnlock:1];
    v4 = [v3 queryMetaDataSync];
    if (v4)
    {
      NSLog(@"Query meta data failed. Error=%ld", v4);
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [v3 results];
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            v11 = [objc_msgSend(v10 "attributes")];
            if ([v10 state] == 2)
            {
              NSLog(@"Local asset: %@", v11);
            }

            else
            {
              NSLog(@"Remote asset: %@", v11);
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_100001E3C(id a1)
{
  v1 = _CFCopySystemVersionDictionary();
  if (v1)
  {
    v2 = v1;
    Value = CFDictionaryGetValue(v1, _kCFSystemVersionBuildVersionKey);
    if (Value)
    {
      v4 = Value;
      CFRetain(Value);
      CFRelease(v2);
      v5 = CFPreferencesCopyAppValue(@"LastSystemVersion", @"com.apple.languageassetd");
      if (v5)
      {
        v6 = v5;
        if (CFStringCompare(v4, v5, 1uLL))
        {
          CFPreferencesSetAppValue(@"AssetDownloadStarted", 0, @"com.apple.languageassetd");
          CFPreferencesSetAppValue(@"LastSystemVersion", v4, @"com.apple.languageassetd");
          CFPreferencesSetAppValue(@"HandledLanguages", 0, @"com.apple.languageassetd");
          CFPreferencesAppSynchronize(@"com.apple.languageassetd");
          ASSetAssetServerURLForAssetType();
        }

        CFRelease(v6);
      }

      else
      {
        CFPreferencesSetAppValue(@"AssetDownloadStarted", 0, @"com.apple.languageassetd");
        CFPreferencesSetAppValue(@"LastSystemVersion", v4, @"com.apple.languageassetd");
        CFPreferencesSetAppValue(@"HandledLanguages", 0, @"com.apple.languageassetd");
        CFPreferencesAppSynchronize(@"com.apple.languageassetd");
        ASSetAssetServerURLForAssetType();
      }
    }

    else
    {
      v4 = v2;
    }

    CFRelease(v4);
  }
}

id sub_100004078(uint64_t a1, uint64_t a2)
{
  NSLog(@"AssetType:%@: download completed: asset %@, result=%ld", *(a1 + 32), *(a1 + 40), a2);
  result = [*(a1 + 32) isEqualToString:@"com.apple.MobileAsset.DictionaryServices.dictionary3iOS"];
  if (result)
  {
    v4 = [*(a1 + 48) attributes];

    return _DCSDictionaryAssetAttributesDownloaded(v4);
  }

  return result;
}

void sub_10000446C()
{
  if (qword_10000C5D0 != -1)
  {
    sub_1000045CC();
  }
}

void sub_10000454C(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "\t Error running language asset query: error %@.", &v1, 0xCu);
}