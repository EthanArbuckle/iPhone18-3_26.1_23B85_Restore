@interface LanguageAssetLoader
+ (id)sharedInstance;
- (BOOL)alreadyHandledLanguageOrID:(__CFString *)d;
- (BOOL)checkFontAssetsSanityWithLanguageAssetInfo:(id)info;
- (BOOL)dictionaryAssetMatched:(id)matched primaryLanguages:(id)languages assetInfo:(id)info;
- (BOOL)fontAssetMatched:(id)matched primaryLanguage:(id)language assetInfo:(id)info;
- (BOOL)isPowerRequestSatisfied;
- (BOOL)shouldExcludeProductWithLanguageAssetInfo:(id)info;
- (LanguageAssetLoader)init;
- (id)alreadyInstalledAssetsWithPrimaryLanguages:(id)languages results:(id)results assetInfo:(id)info;
- (id)assetIdentifier:(id)identifier assetInfo:(id)info;
- (id)downloadOptions:(id)options;
- (id)effectiveAssetFlagArrayForAssetInfo:(id)info;
- (id)filterIncompatibleFontAssets:(id)assets;
- (id)localAssetsWithType:(id)type assetInfo:(id)info;
- (id)normalizedLanguage:(id)language;
- (id)notificationStringWithPrimaryLanguage:(id)language assetInfo:(id)info;
- (id)oldDictionaryAssetsWithLanguageAssetInfo:(id)info;
- (void)actualDownloadLanguageAssets;
- (void)dealloc;
- (void)downloadLanguageAssets;
- (void)logAssetsWithAssetType:(id)type;
- (void)purgeLocalAssetsWithType:(id)type mobileAssetVersionV2:(BOOL)v2;
- (void)reachabilityChanged;
- (void)reset;
- (void)setDownloadFlagToAssetFlagArray:(id)array primaryLanguages:(id)languages assetInfo:(id)info;
- (void)updatePreferenceWithAssetIdentifier:(__CFString *)identifier;
- (void)updatePreferenceWithLanguageOrID:(__CFString *)d;
@end

@implementation LanguageAssetLoader

+ (id)sharedInstance
{
  if (qword_10000C5C0 != -1)
  {
    sub_1000044DC();
  }

  return qword_10000C5B8;
}

- (LanguageAssetLoader)init
{
  v7.receiver = self;
  v7.super_class = LanguageAssetLoader;
  v2 = [(LanguageAssetLoader *)&v7 init];
  if (v2)
  {
    v2->_langugeAssetsInfoPlist = [[NSDictionary alloc] initWithContentsOfFile:@"/usr/share/com.apple.languageassetd/AssetInfo.plist"];
    v2->_productType = 0;
    *&v2->_needRedownload = 0;
    v2->_reachabilityRef = 0;
    v3 = MGCopyAnswer();
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      if (v5 == CFStringGetTypeID())
      {
        v2->_productType = v4;
      }

      else
      {
        CFRelease(v4);
      }
    }

    v2->_reachabilityRef = SCNetworkReachabilityCreateWithName(0, "mesu.apple.com");
    v2->_compatibilityVersion = DCSDictionaryAssetGetCompatibilityVersion();
  }

  return v2;
}

- (void)dealloc
{
  productType = self->_productType;
  if (productType)
  {
    CFRelease(productType);
  }

  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    Current = CFRunLoopGetCurrent();
    SCNetworkReachabilityUnscheduleFromRunLoop(reachabilityRef, Current, kCFRunLoopDefaultMode);
    CFRelease(self->_reachabilityRef);
  }

  v6.receiver = self;
  v6.super_class = LanguageAssetLoader;
  [(LanguageAssetLoader *)&v6 dealloc];
}

- (void)logAssetsWithAssetType:(id)type
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3 = objc_opt_new();
  [v3 setDiscretionary:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001C40;
  v4[3] = &unk_100008510;
  v4[4] = &v5;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.DictionaryServices.dictionary3iOS" options:v3 then:v4];
  while ((v6[3] & 1) == 0)
  {
    [+[NSRunLoop currentRunLoop](NSRunLoop runUntilDate:"runUntilDate:", [NSDate dateWithTimeIntervalSinceNow:0.1]];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)reset
{
  if (qword_10000C5C8 != -1)
  {
    sub_1000044F0();
  }
}

- (void)updatePreferenceWithAssetIdentifier:(__CFString *)identifier
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5 = CFPreferencesCopyAppValue(@"AssetDownloadStarted", @"com.apple.languageassetd");
  if (v5)
  {
    v6 = v5;
    v8.length = CFArrayGetCount(v5);
    v8.location = 0;
    CFArrayAppendArray(Mutable, v6, v8);
    CFRelease(v6);
  }

  CFArrayAppendValue(Mutable, identifier);
  CFPreferencesSetAppValue(@"AssetDownloadStarted", Mutable, @"com.apple.languageassetd");
  CFPreferencesAppSynchronize(@"com.apple.languageassetd");

  CFRelease(Mutable);
}

- (void)updatePreferenceWithLanguageOrID:(__CFString *)d
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5 = CFPreferencesCopyAppValue(@"HandledLanguages", @"com.apple.languageassetd");
  if (v5)
  {
    v6 = v5;
    v8.length = CFArrayGetCount(v5);
    v8.location = 0;
    CFArrayAppendArray(Mutable, v6, v8);
    CFRelease(v6);
  }

  CFArrayAppendValue(Mutable, d);
  CFPreferencesSetAppValue(@"HandledLanguages", Mutable, @"com.apple.languageassetd");
  CFPreferencesAppSynchronize(@"com.apple.languageassetd");

  CFRelease(Mutable);
}

- (BOOL)alreadyHandledLanguageOrID:(__CFString *)d
{
  v4 = CFPreferencesCopyAppValue(@"HandledLanguages", @"com.apple.languageassetd");
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v8.length = CFArrayGetCount(v4);
  v8.location = 0;
  v6 = CFArrayContainsValue(v5, v8, d) != 0;
  CFRelease(v5);
  return v6;
}

- (id)assetIdentifier:(id)identifier assetInfo:(id)info
{
  if ([objc_msgSend(identifier "assetType")])
  {
    attributes = [identifier attributes];
  }

  else
  {
    assetType = [identifier assetType];
    if (![assetType isEqualToString:kFSFontAssetType])
    {
      return 0;
    }

    v11 = [objc_msgSend(identifier "attributes")];
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    if (![v11 count])
    {
      return 0;
    }

    attributes = [v12 objectAtIndex:0];
  }

  v7 = attributes;
  v8 = [info objectForKey:@"IdentifierAttributeKey"];

  return [v7 objectForKey:v8];
}

- (BOOL)dictionaryAssetMatched:(id)matched primaryLanguages:(id)languages assetInfo:(id)info
{
  if ([objc_msgSend(objc_msgSend(matched "attributes")] != self->_compatibilityVersion)
  {
    return 0;
  }

  [matched attributes];
  return DCSPreferredOrderOfDictionaryAssetAttributesForLanguages() != -1;
}

- (BOOL)fontAssetMatched:(id)matched primaryLanguage:(id)language assetInfo:(id)info
{
  v8 = [objc_msgSend(matched "attributes")];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v23 + 1) + 8 * v12) isEqualToString:language])
        {
          v9 = [objc_msgSend(info objectForKey:{@"LanguageAndFontFamilyNamesMapping", "objectForKey:", language}];
          if (v9)
          {
            v13 = v9;
            v9 = [objc_msgSend(matched "attributes")];
            if (v9)
            {
              v14 = v9;
              v9 = [v9 count];
              if (v9)
              {
                v21 = 0u;
                v22 = 0u;
                v19 = 0u;
                v20 = 0u;
                v9 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
                if (v9)
                {
                  v15 = v9;
                  v16 = *v20;
                  while (2)
                  {
                    for (i = 0; i != v15; i = i + 1)
                    {
                      if (*v20 != v16)
                      {
                        objc_enumerationMutation(v14);
                      }

                      if ([v13 containsObject:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "objectForKey:", objc_msgSend(info, "objectForKey:", @"FontFamilyNameKey"}])
                      {
                        LOBYTE(v9) = 1;
                        return v9;
                      }
                    }

                    v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
                    LOBYTE(v9) = 0;
                    if (v15)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }
            }
          }

          return v9;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v10 = v9;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  return v9;
}

- (id)downloadOptions:(id)options
{
  v3 = objc_opt_new();
  [v3 setAllowsCellularAccess:0];
  [v3 setDiscretionary:0];
  return v3;
}

- (id)alreadyInstalledAssetsWithPrimaryLanguages:(id)languages results:(id)results assetInfo:(id)info
{
  v9 = [[NSMutableArray alloc] initWithCapacity:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = results;
  v10 = [results countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v24 = *v30;
    v22 = kFSFontAssetType;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        if ([v13 state] != 1)
        {
          if ([objc_msgSend(v13 "assetType")])
          {
            if ([(LanguageAssetLoader *)self dictionaryAssetMatched:v13 primaryLanguages:languages assetInfo:info])
            {
              v14 = [(LanguageAssetLoader *)self assetIdentifier:v13 assetInfo:info];
              if (v14)
              {
                [v9 addObject:v14];
              }
            }
          }

          else if ([objc_msgSend(v13 "assetType")])
          {
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v15 = [languages countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v26;
              do
              {
                for (i = 0; i != v16; i = i + 1)
                {
                  if (*v26 != v17)
                  {
                    objc_enumerationMutation(languages);
                  }

                  if ([(LanguageAssetLoader *)self fontAssetMatched:v13 primaryLanguage:*(*(&v25 + 1) + 8 * i) assetInfo:info])
                  {
                    v19 = [(LanguageAssetLoader *)self assetIdentifier:v13 assetInfo:info];
                    if (v19)
                    {
                      [v9 addObject:v19];
                    }
                  }
                }

                v16 = [languages countByEnumeratingWithState:&v25 objects:v33 count:16];
              }

              while (v16);
            }
          }
        }

        v12 = v12 + 1;
      }

      while (v12 != v11);
      v20 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      v11 = v20;
    }

    while (v20);
  }

  return v9;
}

- (id)notificationStringWithPrimaryLanguage:(id)language assetInfo:(id)info
{
  v5 = [info objectForKey:@"NotificationBaseKey"];

  return [v5 stringByAppendingString:language];
}

- (id)localAssetsWithType:(id)type assetInfo:(id)info
{
  v7 = [[NSMutableArray alloc] initWithCapacity:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [type countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(type);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 state] != 1)
        {
          v13 = [(LanguageAssetLoader *)self assetIdentifier:v12 assetInfo:info];
          if (v13)
          {
            v14 = v13;
            if (([v7 containsObject:v13] & 1) == 0)
            {
              [v7 addObject:v14];
            }
          }
        }
      }

      v9 = [type countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)filterIncompatibleFontAssets:(id)assets
{
  v27 = FSGetMaxSupportedFontAssetCompatibilityVersion();
  v4 = objc_opt_new();
  v30 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = assets;
  v28 = [assets countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v28)
  {
    v26 = *v40;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v39 + 1) + 8 * i);
        attributes = [v6 attributes];
        v8 = [attributes objectForKey:@"_CompatibilityVersion"];
        unsignedIntValue = [v8 unsignedIntValue];
        if (unsignedIntValue <= v27)
        {
          v10 = unsignedIntValue;
          [v30 addObject:v6];
          v11 = [attributes objectForKey:@"FontInfo4"];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v36;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v36 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v35 + 1) + 8 * j) objectForKey:@"PostScriptFontName"];
                v17 = [v4 objectForKey:v16];
                if (!v17 || [v17 intValue] < v10)
                {
                  [v4 setValue:v8 forKey:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v13);
          }
        }
      }

      v28 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v28);
  }

  v29 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [v30 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v30);
        }

        v22 = *(*(&v31 + 1) + 8 * k);
        attributes2 = [v22 attributes];
        if ([objc_msgSend(v4 objectForKey:{objc_msgSend(objc_msgSend(objc_msgSend(attributes2, "objectForKey:", @"FontInfo4", "objectAtIndexedSubscript:", 0), "objectForKey:", @"PostScriptFontName", "isEqualToNumber:", objc_msgSend(attributes2, "objectForKey:", @"_CompatibilityVersion"}])
        {
          [v29 addObject:v22];
        }
      }

      v19 = [v30 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v19);
  }

  return v29;
}

- (id)effectiveAssetFlagArrayForAssetInfo:(id)info
{
  v4 = [info objectForKey:@"AssetType"];
  v43 = [NSMutableArray arrayWithCapacity:0];
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_msgSend(info objectForKey:{@"MinCompatibilityVersion", "integerValue"}];
  v7 = [objc_msgSend(info objectForKey:{@"MaxCompatibilityVersion", "integerValue"}];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8 && v6 <= v7;
  v10 = !v9;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  if (v10)
  {
    v6 = 0;
  }

  v12 = objc_opt_new();
  if (v6 > v11)
  {
LABEL_20:
    v42 = v5;
    if ([v4 isEqualToString:kFSFontAssetType])
    {
      v14 = [(LanguageAssetLoader *)self filterIncompatibleFontAssets:v12];
    }

    else
    {
      v14 = v12;
    }

    v15 = [NSMutableDictionary dictionaryWithCapacity:0];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v16 = [v14 countByEnumeratingWithState:&v50 objects:v57 count:16];
    v17 = v43;
    if (!v16)
    {
LABEL_50:
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      allKeys = [(NSMutableDictionary *)v15 allKeys];
      v34 = [allKeys countByEnumeratingWithState:&v46 objects:v54 count:16];
      v5 = v42;
      if (v34)
      {
        v35 = v34;
        v36 = *v47;
        do
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v47 != v36)
            {
              objc_enumerationMutation(allKeys);
            }

            v38 = *(*(&v46 + 1) + 8 * i);
            v39 = [-[NSMutableDictionary objectForKeyedSubscript:](v15 objectForKeyedSubscript:{v38), "objectForKeyedSubscript:", @"asset"}];
            if ([v39 state] == 3 || objc_msgSend(v39, "state") != 1 && objc_msgSend(objc_msgSend(objc_msgSend(v39, "attributes"), "objectForKeyedSubscript:", @"_CompatibilityVersion"), "integerValue") != self->_compatibilityVersion)
            {
              [v39 purgeSync];
              [v39 refreshState];
              [(NSMutableDictionary *)v15 removeObjectForKey:v38];
            }
          }

          v35 = [allKeys countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v35);
      }

      v40 = v43;
      [(NSMutableArray *)v43 addObjectsFromArray:[(NSMutableDictionary *)v15 allValues]];
      goto LABEL_63;
    }

    v18 = v16;
    v19 = *v51;
    v44 = v14;
LABEL_25:
    v20 = 0;
    while (1)
    {
      if (*v51 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v50 + 1) + 8 * v20);
      if ([v4 isEqualToString:@"com.apple.MobileAsset.DictionaryServices.dictionary3iOS"])
      {
        v22 = [objc_msgSend(v21 "attributes")];
        if (v22)
        {
          v23 = v22;
          v24 = [-[NSMutableDictionary objectForKeyedSubscript:](v15 objectForKeyedSubscript:{v22), "objectForKeyedSubscript:", @"asset"}];
          if (!v24)
          {
            goto LABEL_37;
          }

          v25 = v24;
          if ([objc_msgSend(objc_msgSend(v21 "attributes")] == self->_compatibilityVersion)
          {
            if ([objc_msgSend(objc_msgSend(v25 "attributes")] != self->_compatibilityVersion || (v26 = objc_msgSend(objc_msgSend(objc_msgSend(v21, "attributes"), "objectForKeyedSubscript:", @"_ContentVersion"), "integerValue"), v9 = v26 <= objc_msgSend(objc_msgSend(objc_msgSend(v25, "attributes"), "objectForKeyedSubscript:", @"_ContentVersion"), "integerValue"), v14 = v44, !v9) || objc_msgSend(v25, "state") == 3)
            {
              if ([v25 state] == 1)
              {
LABEL_37:
                v27 = 0;
LABEL_44:
                v55[0] = @"asset";
                v55[1] = @"downloadNeeded";
                v56[0] = v21;
                v56[1] = [NSNumber numberWithBool:v27];
                v31 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:v56];
                [(NSMutableDictionary *)v15 setObject:v31 forKey:v23];

                goto LABEL_45;
              }

              v28 = 1;
              v29 = v25;
              v25 = v21;
LABEL_42:
              [v29 purgeSync];
              [v29 refreshState];
              state = [v25 state];
              v27 = state == 1;
              if (!v28)
              {
                v17 = v43;
                v14 = v44;
                if (state == 1)
                {
                  [-[NSMutableDictionary objectForKeyedSubscript:](v15 objectForKeyedSubscript:{v23), "setObject:forKeyedSubscript:", &__kCFBooleanTrue, @"downloadNeeded"}];
                }

                goto LABEL_45;
              }

              v17 = v43;
              v14 = v44;
              goto LABEL_44;
            }
          }

          if ([v21 state] != 1)
          {
            v28 = 0;
            v29 = v21;
            goto LABEL_42;
          }
        }
      }

      else
      {
        [(NSMutableArray *)v17 addObject:[NSMutableDictionary dictionaryWithObject:v21 forKey:@"asset"]];
      }

LABEL_45:
      if (v18 == ++v20)
      {
        v32 = [v14 countByEnumeratingWithState:&v50 objects:v57 count:16];
        v18 = v32;
        if (!v32)
        {
          goto LABEL_50;
        }

        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v13 = [[MAAssetQuery alloc] initWithType:v4];
    [v13 returnTypes:2];
    [v13 setDoNotBlockBeforeFirstUnlock:1];
    if (v6 >= 1)
    {
      [v13 addKeyValuePair:@"_CompatibilityVersion" with:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", v6)}];
    }

    if ([v13 queryMetaDataSync])
    {
      break;
    }

    [v12 addObjectsFromArray:{objc_msgSend(v13, "results")}];

    if (v11 + 1 == ++v6)
    {
      goto LABEL_20;
    }
  }

  v40 = 0;
  self->_needRedownload = 1;
LABEL_63:
  objc_autoreleasePoolPop(v5);
  return v40;
}

- (void)setDownloadFlagToAssetFlagArray:(id)array primaryLanguages:(id)languages assetInfo:(id)info
{
  v9 = objc_autoreleasePoolPush();
  v10 = [info objectForKey:@"AssetType"];
  obj = languages;
  if (languages)
  {
    v43 = kFSFontAssetType;
    v11 = &FSGetMaxSupportedFontAssetCompatibilityVersion_ptr;
    v40 = v9;
    arrayCopy = array;
    v48 = v10;
    if ([v10 isEqualToString:?])
    {
      v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [languages count]);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v13 = [languages countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v62;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v62 != v15)
            {
              objc_enumerationMutation(languages);
            }

            v17 = *(*(&v61 + 1) + 8 * i);
            v18 = [NSString stringWithFormat:@"%@-%@", v48, v17];
            if (![(LanguageAssetLoader *)self alreadyHandledLanguageOrID:v18])
            {
              [(NSMutableArray *)v12 addObject:v17];
              [(LanguageAssetLoader *)self updatePreferenceWithLanguageOrID:v18];
            }
          }

          v14 = [languages countByEnumeratingWithState:&v61 objects:v68 count:16];
        }

        while (v14);
        obj = v12;
        array = arrayCopy;
        v11 = &FSGetMaxSupportedFontAssetCompatibilityVersion_ptr;
      }

      else
      {
        obj = v12;
      }
    }

    v19 = [v11[84] arrayWithCapacity:{objc_msgSend(array, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v20 = [array countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v58;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v58 != v22)
          {
            objc_enumerationMutation(array);
          }

          [v19 addObject:{objc_msgSend(*(*(&v57 + 1) + 8 * j), "objectForKeyedSubscript:", @"asset"}];
        }

        v21 = [array countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v21);
    }

    v24 = [(LanguageAssetLoader *)self alreadyInstalledAssetsWithPrimaryLanguages:obj results:v19 assetInfo:info];
    v25 = [(LanguageAssetLoader *)self localAssetsWithType:v19 assetInfo:info];
    v44 = DCSDictionaryAssetCopyRemovedDictionaryIdentifiers();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v26 = [array countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v26)
    {
      v27 = v26;
      v47 = *v54;
      v41 = v25;
      v42 = v24;
      do
      {
        v28 = 0;
        do
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(arrayCopy);
          }

          v29 = *(*(&v53 + 1) + 8 * v28);
          v30 = [v29 objectForKeyedSubscript:@"asset"];
          v31 = [(LanguageAssetLoader *)self assetIdentifier:v30 assetInfo:info];
          if (v31)
          {
            v32 = v31;
            if (([v25 containsObject:v31] & 1) == 0 && objc_msgSend(v30, "state") == 1 && (objc_msgSend(v24, "containsObject:", v32) & 1) == 0)
            {
              if ([objc_msgSend(v30 "assetType")])
              {
                if (([v44 containsObject:v32] & 1) == 0)
                {
                  v33 = [NSString stringWithFormat:@"%@-%@", v48, v32];
                  if (![(LanguageAssetLoader *)self alreadyHandledLanguageOrID:v33])
                  {
                    if ([(LanguageAssetLoader *)self dictionaryAssetMatched:v30 primaryLanguages:obj assetInfo:info])
                    {
                      [(LanguageAssetLoader *)self updatePreferenceWithLanguageOrID:v33];
LABEL_39:
                      [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:@"downloadNeeded"];
                      v25 = v41;
                      v24 = v42;
                    }
                  }
                }
              }

              else if ([objc_msgSend(v30 "assetType")])
              {
                v51 = 0u;
                v52 = 0u;
                v49 = 0u;
                v50 = 0u;
                v34 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
                if (v34)
                {
                  v35 = v34;
                  v36 = *v50;
LABEL_43:
                  v37 = 0;
                  while (1)
                  {
                    if (*v50 != v36)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v38 = *(*(&v49 + 1) + 8 * v37);
                    if ([(__CFString *)v38 isEqualToString:@"zh-HK"])
                    {
                      v38 = @"zh-Hant";
                    }

                    if ([(LanguageAssetLoader *)self primaryLanguageIsInBlackList:v38 assetType:v48 assetInfo:info]&& [(LanguageAssetLoader *)self fontAssetMatched:v30 primaryLanguage:v38 assetInfo:info])
                    {
                      goto LABEL_39;
                    }

                    if (v35 == ++v37)
                    {
                      v35 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
                      v25 = v41;
                      v24 = v42;
                      if (v35)
                      {
                        goto LABEL_43;
                      }

                      break;
                    }
                  }
                }
              }
            }
          }

          v28 = v28 + 1;
        }

        while (v28 != v27);
        v39 = [arrayCopy countByEnumeratingWithState:&v53 objects:v66 count:16];
        v27 = v39;
      }

      while (v39);
    }

    v9 = v40;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100004504();
  }

  objc_autoreleasePoolPop(v9);
}

- (BOOL)isPowerRequestSatisfied
{
  if (IOPSDrawingUnlimitedPower())
  {
    return 1;
  }

  IOPSGetPercentRemaining();
  return 0;
}

- (void)purgeLocalAssetsWithType:(id)type mobileAssetVersionV2:(BOOL)v2
{
  if (v2)
  {
    v4 = [[MAAssetQuery alloc] initWithType:type];
    [v4 returnTypes:1];
    [v4 setDoNotBlockBeforeFirstUnlock:1];
    if (![v4 queryMetaDataSync])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      results = [v4 results];
      v6 = [results countByEnumeratingWithState:&v19 objects:v28 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v20;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(results);
            }

            v10 = *(*(&v19 + 1) + 8 * i);
            if ([v10 state] != 1)
            {
              [v10 purgeSync];
            }
          }

          v7 = [results countByEnumeratingWithState:&v19 objects:v28 count:16];
        }

        while (v7);
      }
    }
  }

  else
  {
    v4 = [[ASAssetQuery alloc] initWithAssetType:type];
    [v4 setQueriesLocalAssetInformationOnly:1];
    v27 = 0;
    v11 = [v4 runQueryAndReturnError:&v27];
    v12 = v27;
    if (v27)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10000454C(v12);
      }
    }

    else
    {
      v13 = v11;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v23 + 1) + 8 * j);
            if ([v18 state])
            {
              [v18 purgeAndReturnError:0];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v15);
      }
    }
  }
}

- (BOOL)checkFontAssetsSanityWithLanguageAssetInfo:(id)info
{
  [(LanguageAssetLoader *)self purgeLocalAssetsWithType:@"com.apple.MobileAsset.Font" mobileAssetVersionV2:0];
  [(LanguageAssetLoader *)self purgeLocalAssetsWithType:@"com.apple.MobileAsset.Font2" mobileAssetVersionV2:0];
  [(LanguageAssetLoader *)self purgeLocalAssetsWithType:@"com.apple.MobileAsset.Font3" mobileAssetVersionV2:0];
  [(LanguageAssetLoader *)self purgeLocalAssetsWithType:@"com.apple.MobileAsset.Font4" mobileAssetVersionV2:0];
  [(LanguageAssetLoader *)self purgeLocalAssetsWithType:@"com.apple.MobileAsset.Font5" mobileAssetVersionV2:0];
  return 1;
}

- (BOOL)shouldExcludeProductWithLanguageAssetInfo:(id)info
{
  if (self->_productType)
  {
    v4 = [info objectForKey:@"ExclusionProductTypesKey"];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (([(__CFString *)self->_productType hasPrefix:*(*(&v10 + 1) + 8 * i)]& 1) != 0)
          {
            LOBYTE(v5) = 1;
            return v5;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        LOBYTE(v5) = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)normalizedLanguage:(id)language
{
  v3 = [NSLocale componentsFromLocaleIdentifier:language];
  v4 = [(NSDictionary *)v3 objectForKey:NSLocaleLanguageCode];
  if (v4)
  {
    v5 = [(NSDictionary *)v3 objectForKey:NSLocaleCountryCode];
    if ([(__CFString *)v4 isEqualToString:@"zh"])
    {
      v6 = [(NSDictionary *)v3 objectForKey:NSLocaleScriptCode];
      if (([v6 isEqualToString:@"Hans"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"Hant"))
      {
        return [NSString stringWithFormat:@"%@-%@", v4, v6];
      }

      if (([(__CFString *)v5 isEqualToString:@"HK"]& 1) != 0)
      {
        return @"zh-Hant";
      }

      else
      {
        v4 = @"zh-Hant";
        if (([(__CFString *)v5 isEqualToString:@"MO"]& 1) == 0 && ![(__CFString *)v5 isEqualToString:@"TW"])
        {
          return 0;
        }
      }
    }

    else if ([(__CFString *)v4 isEqualToString:@"en"])
    {
      v8 = [(__CFString *)v5 isEqualToString:@"SG"];
      v9 = @"GB";
      if (!v8)
      {
        v9 = v5;
      }

      if (v9)
      {
        return [NSString stringWithFormat:@"%@-%@", v4, v9];
      }
    }
  }

  return v4;
}

- (void)actualDownloadLanguageAssets
{
  self->_needRedownload = 0;
  if ([(LanguageAssetLoader *)self isPowerRequestSatisfied])
  {
    v3 = [(NSDictionary *)self->_langugeAssetsInfoPlist objectForKey:@"LanguageAssets"];
    v4 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/PrivateFrameworks/FontServices.framework/FontAssetInfo.plist"];
    if (v4)
    {
      v3 = [v3 arrayByAddingObject:v4];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v13 = kFSFontAssetType;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 objectForKey:@"AssetType"];
          if ([objc_msgSend(v9 objectForKey:{@"Download", "BOOLValue"}] && !-[LanguageAssetLoader shouldExcludeProductWithLanguageAssetInfo:](self, "shouldExcludeProductWithLanguageAssetInfo:", v9))
          {
            if ([v10 isEqualToString:@"com.apple.MobileAsset.Font"])
            {
              v9 = [v9 mutableCopy];
              v10 = v13;
              [v9 setObject:v13 forKey:@"AssetType"];
            }

            v11 = objc_opt_new();
            [v11 setAllowsCellularAccess:0];
            [v11 setDiscretionary:0];
            NSLog(@"startCatalogDownload: assetType=[%@]", v10);
            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3221225472;
            v14[2] = sub_100000E68;
            v14[3] = &unk_100008558;
            v14[4] = v10;
            v14[5] = self;
            v14[6] = v9;
            [MAAsset startCatalogDownload:v10 options:v11 then:v14];
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  self->_needRedownload = v12;
}

- (void)downloadLanguageAssets
{
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    Current = CFRunLoopGetCurrent();
    SCNetworkReachabilityUnscheduleFromRunLoop(reachabilityRef, Current, kCFRunLoopDefaultMode);
  }

  [(LanguageAssetLoader *)self actualDownloadLanguageAssets];
  if (self->_needRedownload)
  {
    v5 = self->_reachabilityRef;
    if (v5)
    {
      v8.version = 0;
      memset(&v8.retain, 0, 24);
      v8.info = self;
      if (SCNetworkReachabilitySetCallback(v5, sub_1000041A8, &v8))
      {
        v6 = self->_reachabilityRef;
        v7 = CFRunLoopGetCurrent();
        SCNetworkReachabilityScheduleWithRunLoop(v6, v7, kCFRunLoopDefaultMode);
      }
    }
  }
}

- (id)oldDictionaryAssetsWithLanguageAssetInfo:(id)info
{
  v4 = [[ASAssetQuery alloc] initWithAssetType:@"com.apple.MobileAsset.DictionaryServices.dictionary3iOS"];
  [v4 setQueriesLocalAssetInformationOnly:1];
  v5 = [v4 runQueryAndReturnError:0];
  v6 = [NSMutableArray arrayWithCapacity:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 state] == 1)
        {
          v12 = [objc_msgSend(v11 "attributes")];
          [(NSMutableArray *)v6 addObject:v12];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1000043AC;
          v14[3] = &unk_100008580;
          v14[4] = v12;
          [v11 purge:v14];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([(NSMutableArray *)v6 count])
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)reachabilityChanged
{
  if (self->_needRedownload)
  {
    v10 = v2;
    v11 = v3;
    reachabilityRef = self->_reachabilityRef;
    if (reachabilityRef)
    {
      flags = 0;
      if (SCNetworkReachabilityGetFlags(reachabilityRef, &flags))
      {
        v6 = (flags & 2) == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        [(LanguageAssetLoader *)self actualDownloadLanguageAssets];
        if (!self->_needRedownload)
        {
          v7 = self->_reachabilityRef;
          Current = CFRunLoopGetCurrent();
          SCNetworkReachabilityUnscheduleFromRunLoop(v7, Current, kCFRunLoopDefaultMode);
        }
      }
    }
  }
}

@end