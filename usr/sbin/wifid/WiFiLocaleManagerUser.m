@interface WiFiLocaleManagerUser
- (WiFiLocaleManagerUser)initWithContext:(__WiFiManager *)a3;
- (id)get80211dCountryCodes:(unint64_t *)a3;
- (id)getCompanionCountryCode;
- (id)getCountryCodeFromUserDefaults;
- (id)getDeviceCountryCode;
- (unsigned)setDeviceCountryCode:(id)a3;
- (unsigned)setUserDefaultCountryCode:(id)a3;
- (unsigned)suspendLocaleCheck;
- (void)dealloc;
- (void)update80211dCountryCodes:(id)a3;
- (void)updatePeerCountryCode:(id)a3;
- (void)updateRemoteClientCountryCode:(id)a3;
@end

@implementation WiFiLocaleManagerUser

- (unsigned)suspendLocaleCheck
{
  v3 = sub_10000EEE0(self->_manager);
  v4 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self->_manager && v3)
  {
    sub_100008488();
    v7[1] = 3221225472;
    v7[2] = sub_100020F8C;
    v7[3] = &unk_100261468;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(v5, v7);
    v4 = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

- (id)getDeviceCountryCode
{
  v3 = sub_10000EEE0(self->_manager);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_100002BE0;
  v16 = sub_1000067CC;
  v17 = [[NSMutableString alloc] initWithString:&stru_1002680F8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self->_manager && v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002133C;
    block[3] = &unk_100261440;
    block[4] = self;
    block[5] = &v8;
    block[6] = &v12;
    dispatch_sync(v3, block);
    if (*(v9 + 24))
    {
      if (![v13[5] caseInsensitiveCompare:@"XZ"] || !objc_msgSend(v13[5], "caseInsensitiveCompare:", @"X0") || !objc_msgSend(v13[5], "caseInsensitiveCompare:", @"X2") || !objc_msgSend(v13[5], "caseInsensitiveCompare:", @"X3"))
      {
        [v13[5] setString:&stru_1002680F8];
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Error: Unable to get locale in use"];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  v4 = v13[5];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

- (WiFiLocaleManagerUser)initWithContext:(__WiFiManager *)a3
{
  v8.receiver = self;
  v8.super_class = WiFiLocaleManagerUser;
  v4 = [(WiFiLocaleManagerUser *)&v8 init];
  v5 = v4;
  if (v4 && (v4->_manager = a3, v6 = objc_alloc_init(WiFiLocaleManager), (v5->_localeManager = v6) != 0))
  {
    [v6 setDelegate:v5];
    v5->_countryCodeList = [[NSCountedSet alloc] initWithCapacity:0];
    v5->_countryCodeIECount = 0;
    v5->_peerCountryCode = 0;
    v5->_remoteClientCountryCode = 0;
  }

  else
  {

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  self->_countryCodeList = 0;

  self->_localeManager = 0;
  v3.receiver = self;
  v3.super_class = WiFiLocaleManagerUser;
  [(WiFiLocaleManagerUser *)&v3 dealloc];
}

- (void)update80211dCountryCodes:(id)a3
{
  v4 = [a3 objectForKey:@"scanResults"];
  if ([v4 count])
  {
    [(NSCountedSet *)self->_countryCodeList removeAllObjects];
    self->_countryCodeIECount = 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_msgSend(*(*(&v10 + 1) + 8 * v8) objectForKey:{@"80211D_IE", "objectForKey:", @"IE_KEY_80211D_COUNTRY_CODE"}];
        if (v9)
        {
          -[NSCountedSet addObject:](self->_countryCodeList, "addObject:", [v9 uppercaseString]);
          ++self->_countryCodeIECount;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)updatePeerCountryCode:(id)a3
{
  self->_peerCountryCode = [a3 copy];
  v5 = [(WiFiLocaleManager *)self->_localeManager isDefaultCountryCode:[(WiFiLocaleManager *)self->_localeManager getLocaleCountryCode]];
  if (self->_peerCountryCode)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    localeManager = self->_localeManager;

    [(WiFiLocaleManager *)localeManager determineAndSetLocale:1];
  }
}

- (void)updateRemoteClientCountryCode:(id)a3
{
  if (a3)
  {
    v5 = [a3 copy];
    self->_remoteClientCountryCode = v5;
    if (v5)
    {
      localeManager = self->_localeManager;

      [(WiFiLocaleManager *)localeManager determineAndSetLocale:1];
    }
  }

  else
  {
    self->_remoteClientCountryCode = 0;
  }
}

- (id)getCompanionCountryCode
{
  v3 = sub_10000EEE0(self->_manager);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_100002BE0;
  v16 = sub_1000067CC;
  v17 = [[NSMutableString alloc] initWithString:&stru_1002680F8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self->_manager && v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011A718;
    block[3] = &unk_100261440;
    block[4] = self;
    block[5] = &v8;
    block[6] = &v12;
    dispatch_sync(v3, block);
    if (*(v9 + 24))
    {
      if (![v13[5] caseInsensitiveCompare:@"XZ"] || !objc_msgSend(v13[5], "caseInsensitiveCompare:", @"X0") || !objc_msgSend(v13[5], "caseInsensitiveCompare:", @"X2") || !objc_msgSend(v13[5], "caseInsensitiveCompare:", @"X3"))
      {
        [v13[5] setString:&stru_1002680F8];
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Error: Unable to get companion country code"];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  v4 = v13[5];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

- (id)get80211dCountryCodes:(unint64_t *)a3
{
  v5 = sub_10000EEE0(self->_manager);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_100002BE0;
  v19 = sub_1000067CC;
  v6 = [[NSCountedSet alloc] initWithCapacity:0];
  v7 = 0;
  v20 = v6;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (self->_manager && v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011A8D4;
    block[3] = &unk_100261440;
    block[4] = self;
    block[5] = &v15;
    block[6] = &v11;
    dispatch_sync(v5, block);
    v7 = v12[3];
  }

  *a3 = v7;
  v8 = v16[5];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

- (id)getCountryCodeFromUserDefaults
{
  v3 = sub_10000EEE0(self->_manager);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_100002BE0;
  v16 = sub_1000067CC;
  v17 = [[NSMutableString alloc] initWithString:&stru_1002680F8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self->_manager && v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011AB7C;
    block[3] = &unk_100261440;
    block[4] = self;
    block[5] = &v8;
    block[6] = &v12;
    dispatch_sync(v3, block);
    if (*(v9 + 24))
    {
      if (![v13[5] caseInsensitiveCompare:@"XZ"] || !objc_msgSend(v13[5], "caseInsensitiveCompare:", @"X0") || !objc_msgSend(v13[5], "caseInsensitiveCompare:", @"X2") || !objc_msgSend(v13[5], "caseInsensitiveCompare:", @"X3"))
      {
        [v13[5] setString:&stru_1002680F8];
      }

      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WiFiCC : country code from user defaults [%@]", "-[WiFiLocaleManagerUser getCountryCodeFromUserDefaults]", v13[5]}];
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Error: Unable to get recently used country code"];
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  v5 = v13[5];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

- (unsigned)setUserDefaultCountryCode:(id)a3
{
  v5 = sub_10000EEE0(self->_manager);
  manager = self->_manager;
  if (manager && v5 && sub_10007B41C(manager))
  {
    sub_100008488();
    v8[1] = 3221225472;
    v8[2] = sub_10011A398;
    v8[3] = &unk_100261330;
    v8[4] = a3;
    v8[5] = self;
    dispatch_sync(v5, v8);
  }

  return 1;
}

- (unsigned)setDeviceCountryCode:(id)a3
{
  v5 = sub_10000EEE0(self->_manager);
  [(WiFiLocaleManager *)self->_localeManager isDefaultCountryCode:a3];
  v6 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (self->_manager && v5)
  {
    sub_100008488();
    v9[1] = 3221225472;
    v9[2] = sub_10011A4B0;
    v9[3] = &unk_100263410;
    v9[5] = a3;
    v9[6] = &v11;
    v9[4] = self;
    v10 = v7 ^ 1;
    dispatch_sync(v5, v9);
    v6 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

@end