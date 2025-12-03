@interface MSDLocalization
+ (BOOL)getChannelWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forDeviceClass:(id)class;
+ (BOOL)getRetailWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forDeviceClass:(id)class;
+ (BOOL)getWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forOwnershipWarningFlag:(id)flag;
+ (id)getLocalizedOwnershipWarnings:(id)warnings;
+ (id)sharedInstance;
+ (void)fillInMissingLocales:(id)locales withOwnershipWarningMsg:(id)msg;
- (MSDLocalization)init;
- (id)localizedStringWithKey:(id)key defaultString:(id)string;
@end

@implementation MSDLocalization

+ (id)sharedInstance
{
  if (qword_1001A58D0 != -1)
  {
    sub_1000DC748();
  }

  v3 = qword_1001A58C8;

  return v3;
}

- (MSDLocalization)init
{
  v15.receiver = self;
  v15.super_class = MSDLocalization;
  v2 = [(MSDLocalization *)&v15 init];
  if (v2)
  {
    v3 = [NSBundle bundleWithPath:@"/Applications/StoreDemoViewService.app"];
    v4 = v3;
    if (v3)
    {
      localizations = [v3 localizations];
      v6 = +[NSLocale preferredLanguages];
      v7 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v6];

      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = [v4 pathForResource:@"Localizable" ofType:@"strings" inDirectory:@"." forLocalization:v8];

      v10 = [[NSDictionary alloc] initWithContentsOfFile:v9];
      localizationTable = v2->_localizationTable;
      v2->_localizationTable = v10;
    }

    else
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000DC75C(v12);
      }

      v7 = v2->_localizationTable;
      v2->_localizationTable = 0;
    }

    v13 = v2;
  }

  return v2;
}

- (id)localizedStringWithKey:(id)key defaultString:(id)string
{
  keyCopy = key;
  stringCopy = string;
  localizationTable = [(MSDLocalization *)self localizationTable];

  if (localizationTable)
  {
    localizationTable2 = [(MSDLocalization *)self localizationTable];
    v10 = [localizationTable2 objectForKey:keyCopy];

    v11 = v10;
    if (!v10)
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = +[NSLocale preferredLanguages];
        v16 = 138543618;
        v17 = keyCopy;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Localization lookup failed for key %{public}@, preferred languages %{public}@", &v16, 0x16u);
      }

      v11 = stringCopy;
    }

    v14 = v11;
  }

  else
  {
    v14 = stringCopy;
  }

  return v14;
}

+ (id)getLocalizedOwnershipWarnings:(id)warnings
{
  warningsCopy = warnings;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "+[MSDLocalization getLocalizedOwnershipWarnings:]";
    v14 = 2114;
    v15 = warningsCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - ownershipWarningFlag:  %{public}@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007CAE0;
  block[3] = &unk_100169B70;
  v11 = warningsCopy;
  v5 = qword_1001A58E0;
  v6 = warningsCopy;
  if (v5 != -1)
  {
    dispatch_once(&qword_1001A58E0, block);
  }

  v7 = qword_1001A58D8;
  v8 = qword_1001A58D8;

  return v7;
}

+ (void)fillInMissingLocales:(id)locales withOwnershipWarningMsg:(id)msg
{
  localesCopy = locales;
  msgCopy = msg;
  if (qword_1001A58F0 != -1)
  {
    sub_1000DC984();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = qword_1001A58E8;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [localesCopy objectForKey:{v12, v14}];

        if (!v13)
        {
          [localesCopy setObject:msgCopy forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

+ (BOOL)getWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forOwnershipWarningFlag:(id)flag
{
  flagCopy = flag;
  *keys = 0;
  *warnings = 0;
  v8 = MGGetStringAnswer();
  v9 = v8;
  if (!v8)
  {
    sub_1000DCAF0();
LABEL_16:
    v11 = 0;
    goto LABEL_12;
  }

  if (([v8 isEqualToString:@"iPhone"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"iPad") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"iPod") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"Watch") & 1) == 0)
  {
    sub_1000DC998();
    goto LABEL_16;
  }

  if (([flagCopy isEqualToString:@"2"] & 1) == 0 && (objc_msgSend(flagCopy, "isEqualToString:", @"1") & 1) == 0)
  {
    sub_1000DCA44();
    goto LABEL_16;
  }

  if ([flagCopy isEqualToString:@"2"])
  {
    v10 = [MSDLocalization getChannelWarningKeys:keys andPlaceHolderWarnings:warnings forDeviceClass:v9];
  }

  else
  {
    v10 = [MSDLocalization getRetailWarningKeys:keys andPlaceHolderWarnings:warnings forDeviceClass:v9];
  }

  v11 = v10;
LABEL_12:

  return v11;
}

+ (BOOL)getChannelWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forDeviceClass:(id)class
{
  classCopy = class;
  v8 = +[NSMutableDictionary dictionary];
  v9 = kMMSDPropertyClaimTitleKey;
  [v8 setObject:@"PropertyClaimTitle_Channel" forKey:kMMSDPropertyClaimTitleKey];
  v10 = kMMSDPropertyClaimLinkKey;
  [v8 setObject:@"PropertyClaimLink_Channel" forKey:kMMSDPropertyClaimLinkKey];
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:@"Property of Apple Authorized Reseller" forKey:v9];
  [v11 setObject:&stru_10016D9D8 forKey:v10];
  if ([classCopy isEqualToString:@"iPhone"])
  {
    v12 = @"This iPhone cannot be used and is not for sale.";
    v13 = @"PropertyClaimBody_iPhone_Channel";
LABEL_9:
    v14 = kMMSDPropertyClaimBodyKey;
    [v8 setObject:v13 forKey:kMMSDPropertyClaimBodyKey];
    [v11 setObject:v12 forKey:v14];
    goto LABEL_10;
  }

  if ([classCopy isEqualToString:@"iPad"])
  {
    v12 = @"This iPad cannot be used and is not for sale.";
    v13 = @"PropertyClaimBody_iPad_Channel";
    goto LABEL_9;
  }

  if ([classCopy isEqualToString:@"iPod"])
  {
    v12 = @"This iPod cannot be used and is not for sale.";
    v13 = @"PropertyClaimBody_iPod_Channel";
    goto LABEL_9;
  }

  if ([classCopy isEqualToString:@"Watch"])
  {
    v12 = @"This Apple Watch cannot be used and is not for sale.";
    v13 = @"PropertyClaimBody_AppleWatch_Channel";
    goto LABEL_9;
  }

LABEL_10:
  *keys = [NSDictionary dictionaryWithDictionary:v8];
  *warnings = [NSDictionary dictionaryWithDictionary:v11];

  return 1;
}

+ (BOOL)getRetailWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forDeviceClass:(id)class
{
  classCopy = class;
  v8 = +[NSMutableDictionary dictionary];
  v9 = kMMSDPropertyClaimTitleKey;
  [v8 setObject:@"PropertyClaimTitle_Retail" forKey:kMMSDPropertyClaimTitleKey];
  v10 = kMMSDPropertyClaimLinkKey;
  [v8 setObject:@"PropertyClaimLink_Retail" forKey:kMMSDPropertyClaimLinkKey];
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:@"Property of Apple" forKey:v9];
  [v11 setObject:@"apple.com/retail" forKey:v10];
  if ([classCopy isEqualToString:@"iPhone"])
  {
    v12 = @"This iPhone cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v13 = @"PropertyClaimBody_iPhone_Retail";
LABEL_9:
    v14 = kMMSDPropertyClaimBodyKey;
    [v8 setObject:v13 forKey:kMMSDPropertyClaimBodyKey];
    [v11 setObject:v12 forKey:v14];
    goto LABEL_10;
  }

  if ([classCopy isEqualToString:@"iPad"])
  {
    v12 = @"This iPad cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v13 = @"PropertyClaimBody_iPad_Retail";
    goto LABEL_9;
  }

  if ([classCopy isEqualToString:@"iPod"])
  {
    v12 = @"This iPod cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v13 = @"PropertyClaimBody_iPod_Retail";
    goto LABEL_9;
  }

  if ([classCopy isEqualToString:@"Watch"])
  {
    v12 = @"This Apple Watch cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v13 = @"PropertyClaimBody_AppleWatch_Retail";
    goto LABEL_9;
  }

LABEL_10:
  *keys = [NSDictionary dictionaryWithDictionary:v8];
  *warnings = [NSDictionary dictionaryWithDictionary:v11];

  return 1;
}

@end