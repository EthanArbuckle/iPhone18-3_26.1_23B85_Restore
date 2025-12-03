@interface SDAutoUnlockMacIconCache
- (id)_userDefaultsKeyForHash:(id)hash;
- (id)iconImageDataForHash:(id)hash;
- (void)cacheIconImageData:(id)data hash:(id)hash appName:(id)name;
@end

@implementation SDAutoUnlockMacIconCache

- (id)iconImageDataForHash:(id)hash
{
  hashCopy = hash;
  v5 = [(SDAutoUnlockMacIconCache *)self _userDefaultsKeyForHash:hashCopy];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:v5];
  if (!v7)
  {
    if (dword_100972ED8 <= 50 && (dword_100972ED8 != -1 || _LogCategory_Initialize()))
    {
      sub_100222C90();
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (dword_100972ED8 <= 90 && (dword_100972ED8 != -1 || _LogCategory_Initialize()))
    {
      sub_100222C70();
    }

LABEL_11:
    v9 = 0;
    goto LABEL_18;
  }

  CFDataGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (dword_100972ED8 <= 50 && (dword_100972ED8 != -1 || _LogCategory_Initialize()))
  {
    [v8 length];
    LogPrintF();
  }

  v9 = v8;

LABEL_18:

  return v9;
}

- (void)cacheIconImageData:(id)data hash:(id)hash appName:(id)name
{
  dataCopy = data;
  hashCopy = hash;
  nameCopy = name;
  v11 = [(SDAutoUnlockMacIconCache *)self _userDefaultsKeyForHash:hashCopy];
  v14[0] = @"AutoUnlockImageData";
  v14[1] = @"AutoUnlockAppName";
  v15[0] = dataCopy;
  v15[1] = nameCopy;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v13 = +[NSUserDefaults standardUserDefaults];
  [v13 setObject:v12 forKey:v11];
  [v13 synchronize];
  if (dword_100972ED8 <= 90 && (dword_100972ED8 != -1 || _LogCategory_Initialize()))
  {
    [dataCopy length];
    LogPrintF();
  }
}

- (id)_userDefaultsKeyForHash:(id)hash
{
  v3 = SFHexStringForData();
  v4 = [NSString stringWithFormat:@"%@-%@", @"AUIconCacheItem", v3];

  return v4;
}

@end