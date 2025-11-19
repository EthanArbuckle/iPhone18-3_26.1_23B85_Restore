@interface SDAutoUnlockMacIconCache
- (id)_userDefaultsKeyForHash:(id)a3;
- (id)iconImageDataForHash:(id)a3;
- (void)cacheIconImageData:(id)a3 hash:(id)a4 appName:(id)a5;
@end

@implementation SDAutoUnlockMacIconCache

- (id)iconImageDataForHash:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockMacIconCache *)self _userDefaultsKeyForHash:v4];
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

- (void)cacheIconImageData:(id)a3 hash:(id)a4 appName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SDAutoUnlockMacIconCache *)self _userDefaultsKeyForHash:v9];
  v14[0] = @"AutoUnlockImageData";
  v14[1] = @"AutoUnlockAppName";
  v15[0] = v8;
  v15[1] = v10;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v13 = +[NSUserDefaults standardUserDefaults];
  [v13 setObject:v12 forKey:v11];
  [v13 synchronize];
  if (dword_100972ED8 <= 90 && (dword_100972ED8 != -1 || _LogCategory_Initialize()))
  {
    [v8 length];
    LogPrintF();
  }
}

- (id)_userDefaultsKeyForHash:(id)a3
{
  v3 = SFHexStringForData();
  v4 = [NSString stringWithFormat:@"%@-%@", @"AUIconCacheItem", v3];

  return v4;
}

@end