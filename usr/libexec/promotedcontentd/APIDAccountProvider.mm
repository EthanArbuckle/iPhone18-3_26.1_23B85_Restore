@interface APIDAccountProvider
+ (id)privateUserAccount;
+ (id)segmentData;
+ (id)sharedInstance;
+ (id)userAccount;
+ (int64_t)effectiveAge;
+ (void)fetchGenderAndAgeData:(BOOL)data completionHandler:(id)handler;
- (APIDAccountProvider)init;
- (BOOL)_loadIDAccounts;
- (int64_t)getAgeFromSegmentData:(id)data;
- (int64_t)getEffectiveAgeFromBirthYear:(int64_t)year;
- (void)dealloc;
@end

@implementation APIDAccountProvider

- (BOOL)_loadIDAccounts
{
  v3 = +[APIDAccountsSettings settings];
  accountSettings = self->_accountSettings;
  self->_accountSettings = v3;

  v5 = self->_accountSettings;
  if (v5)
  {
    iDAccountsRecord = [(APIDAccountsSettings *)self->_accountSettings IDAccountsRecord];
    storefront = [(APIDAccountsSettings *)self->_accountSettings storefront];
    monthlyIDResetCount = [(APIDAccountsSettings *)self->_accountSettings monthlyIDResetCount];
    v9 = +[APIDAccountsDefaultsSettings settings];
    storefrontOverride = [v9 storefrontOverride];

    if (!+[APSystemInternal isAppleInternalInstall]|| !storefrontOverride)
    {
      goto LABEL_19;
    }

    if ([storefrontOverride length] < 6)
    {
      v13 = APLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Using override without modelnumber", buf, 2u);
      }

      v12 = [NSString stringWithFormat:@"%@%@", storefrontOverride, @"-1, 30"];
    }

    else
    {
      if ([storefrontOverride length] < 7)
      {
        if ([storefront length] < 7)
        {
          goto LABEL_16;
        }

        v24 = APLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Merging the storefronts into a new value.", buf, 2u);
        }

        v26 = storefrontOverride;
        v25 = [storefront substringFromIndex:6];
        v14 = [NSString stringWithFormat:@"%@%@", v26, v25];

        storefront = v25;
LABEL_15:

        storefront = v14;
LABEL_16:
        v15 = APLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138739971;
          v28 = storefront;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "StorefrontOverridden as = %{sensitive}@", buf, 0xCu);
        }

LABEL_19:
        v16 = [[APIDAccount alloc] initWithIDAccountsRecord:iDAccountsRecord storefront:storefront monthlyIDResetCount:monthlyIDResetCount];
        [(APIDAccountProvider *)self setIdAccount:v16];

        v17 = +[APIDAccountsDefaultsSettings settings];
        effectiveBirthYear = [v17 effectiveBirthYear];

        if (+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") && effectiveBirthYear && [effectiveBirthYear integerValue] >= 1)
        {
          -[APIDAccountProvider setEffectiveAge:](self, "setEffectiveAge:", -[APIDAccountProvider getEffectiveAgeFromBirthYear:](self, "getEffectiveAgeFromBirthYear:", [effectiveBirthYear integerValue]));
LABEL_30:

          goto LABEL_31;
        }

        if ([storefront hasPrefix:@"143441"])
        {
          idAccount = [(APIDAccountProvider *)self idAccount];
          -[APIDAccountProvider setEffectiveAge:](self, "setEffectiveAge:", -[APIDAccountProvider getEffectiveAgeFromBirthYear:](self, "getEffectiveAgeFromBirthYear:", [idAccount effectiveBirthYear]));

          v20 = APLogForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v21 = "User age is being set to effective age.";
LABEL_28:
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
          }
        }

        else
        {
          v22 = [iDAccountsRecord objectForKeyedSubscript:@"segmentData"];
          [(APIDAccountProvider *)self setEffectiveAge:[(APIDAccountProvider *)self getAgeFromSegmentData:v22]];

          v20 = APLogForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v21 = "User age is being set to age from segment data.";
            goto LABEL_28;
          }
        }

        goto LABEL_30;
      }

      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Use the large specific full value for Override", buf, 2u);
      }

      v12 = storefrontOverride;
    }

    v14 = v12;
    goto LABEL_15;
  }

  iDAccountsRecord = APLogForCategory();
  if (os_log_type_enabled(iDAccountsRecord, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, iDAccountsRecord, OS_LOG_TYPE_ERROR, "Error reading from settings module.", buf, 2u);
  }

LABEL_31:

  return v5 != 0;
}

+ (id)segmentData
{
  sharedInstance = [self sharedInstance];
  accountSettings = [sharedInstance accountSettings];
  iDAccountsRecord = [accountSettings IDAccountsRecord];

  v5 = [iDAccountsRecord objectForKeyedSubscript:@"segmentData"];

  return v5;
}

+ (id)sharedInstance
{
  if (qword_1004E6918 != -1)
  {
    sub_100393A80();
  }

  v3 = qword_1004E6910;

  return v3;
}

+ (id)privateUserAccount
{
  sharedInstance = [self sharedInstance];
  idAccount = [sharedInstance idAccount];

  return idAccount;
}

+ (id)userAccount
{
  sharedInstance = [self sharedInstance];
  idAccount = [sharedInstance idAccount];

  return idAccount;
}

+ (int64_t)effectiveAge
{
  sharedInstance = [self sharedInstance];
  effectiveAge = [sharedInstance effectiveAge];

  return effectiveAge;
}

- (APIDAccountProvider)init
{
  v13.receiver = self;
  v13.super_class = APIDAccountProvider;
  v2 = [(APIDAccountProvider *)&v13 init];
  v3 = v2;
  if (v2)
  {
    if (![(APIDAccountProvider *)v2 _loadIDAccounts])
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_initWeak(&location, v3);
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    v5 = kAPAccountChangedNotification;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002838;
    v10[3] = &unk_10047C8E0;
    objc_copyWeak(&v11, &location);
    v6 = [v4 addObserverForName:v5 object:@"com.apple.AdLib" queue:0 usingBlock:v10];
    accountChangedNotificationObject = v3->_accountChangedNotificationObject;
    v3->_accountChangedNotificationObject = v6;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v8 = v3;
LABEL_6:

  return v8;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self->_accountChangedNotificationObject];

  v4.receiver = self;
  v4.super_class = APIDAccountProvider;
  [(APIDAccountProvider *)&v4 dealloc];
}

- (int64_t)getAgeFromSegmentData:(id)data
{
  if (!data)
  {
    return -1;
  }

  v3 = [data dataUsingEncoding:4];
  v15 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v15];
  v5 = v15;

  if (v5)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "segmentData is not in JSON format. Unable to parse segmentData.", v14, 2u);
    }

    v7 = -1;
  }

  else
  {
    v6 = [v4 objectForKeyedSubscript:@"it"];
    v8 = [v6 objectForKeyedSubscript:@"dm"];
    v9 = [v8 objectForKeyedSubscript:@"13"];
    if (v9)
    {
      v10 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
      v11 = +[NSDate date];
      v12 = [v10 component:4 fromDate:v11];

      v7 = v12 + ~[v9 integerValue];
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (int64_t)getEffectiveAgeFromBirthYear:(int64_t)year
{
  if (!year)
  {
    return -1;
  }

  v4 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  v5 = +[NSDate date];
  v6 = [v4 component:4 fromDate:v5];

  v7 = v6 + ~year;
  return v7;
}

+ (void)fetchGenderAndAgeData:(BOOL)data completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[APIDAccountProvider segmentData];
  v6 = v5;
  v7 = @"nil";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Fetching segmentData.  segmentData = %{private}@", buf, 0xCu);
  }

  if (!v6)
  {
    v15 = 0;
    v16 = 0;
    v17 = -1;
    goto LABEL_45;
  }

  v10 = [v6 dataUsingEncoding:4];
  v40 = 0;
  v11 = [NSJSONSerialization JSONObjectWithData:v10 options:0 error:&v40];
  v12 = v40;

  v13 = v12;
  if (v12)
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "segmentData is not in JSON format. Unable to parse segmentData.", buf, 2u);
    }

    v15 = 0;
    v16 = 0;
    v17 = -1;
    goto LABEL_44;
  }

  v14 = [v11 objectForKeyedSubscript:@"it"];
  v39 = [v14 objectForKeyedSubscript:@"dm"];
  v18 = [v39 objectForKeyedSubscript:@"13"];
  v38 = v18;
  if (v18)
  {
    v19 = v18;
    v20 = v11;
    v21 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v22 = +[NSDate date];
    v36 = v21;
    v23 = [v21 component:4 fromDate:v22];

    integerValue = [v19 integerValue];
    v17 = v23 - integerValue;
    if (integerValue)
    {
      v11 = v20;
      if (v17 > 17)
      {
        if (v17 > 0x18)
        {
          if (v17 > 0x22)
          {
            if (v17 > 0x2C)
            {
              if (v17 > 0x36)
              {
                if (v17 > 0x40)
                {
                  v25 = 10016;
                }

                else
                {
                  v25 = 10015;
                }
              }

              else
              {
                v25 = 10014;
              }
            }

            else
            {
              v25 = 10013;
            }
          }

          else
          {
            v25 = 10012;
          }
        }

        else
        {
          v25 = 10011;
        }
      }

      else
      {
        v25 = 10010;
      }

      v15 = [NSNumber numberWithUnsignedInt:v25];
    }

    else
    {
      v15 = [NSNumber numberWithUnsignedInt:0];
      v11 = v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = -1;
  }

  v26 = [v39 objectForKeyedSubscript:@"18"];
  v27 = v26;
  if (v26)
  {
    v37 = v11;
    integerValue2 = [v26 integerValue];
    v29 = APLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      v42 = @"18";
      v43 = 2117;
      v44 = v27;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "userProvidedGenderString %{private}@ = %{sensitive}@", buf, 0x16u);
    }

    if (integerValue2 == 1)
    {
      v30 = [v39 objectForKeyedSubscript:@"17"];
      v31 = APLogForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v42 = @"17";
        v43 = 2117;
        v44 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "genderGroupString %{private}@ = %{sensitive}@", buf, 0x16u);
      }

      if (v30)
      {
        v32 = objc_alloc_init(NSNumberFormatter);
        [v32 setNumberStyle:1];
        v16 = [v32 numberFromString:v30];

LABEL_42:
        v13 = 0;

        v11 = v37;
        goto LABEL_43;
      }
    }

    else
    {
      v30 = APLogForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Gender is not inferred and so we cannot provide gender to News", buf, 2u);
      }
    }

    v16 = 0;
    goto LABEL_42;
  }

  v16 = 0;
  v13 = 0;
LABEL_43:

LABEL_44:
LABEL_45:
  v33 = +[NSMutableDictionary dictionary];
  [v33 setValue:v16 forKey:@"gender"];
  [v33 setValue:v15 forKey:@"ageGroup"];
  v34 = [NSNumber numberWithInteger:v17];
  [v33 setValue:v34 forKey:@"age"];

  v35 = [v33 copy];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v35);
  }
}

@end