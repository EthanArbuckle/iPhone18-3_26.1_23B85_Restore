@interface DeviceLanguageInput
- (BOOL)canFallbackTo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DeviceLanguageInput)init;
- (DeviceLanguageInput)initWithCoder:(id)a3;
- (NSArray)deviceLanguages;
- (NSString)primaryLanguage;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DeviceLanguageInput

- (id)description
{
  v3 = [(DeviceLanguageInput *)self primaryLanguage];
  v4 = [(DeviceLanguageInput *)self deviceLanguages];
  v8.receiver = self;
  v8.super_class = DeviceLanguageInput;
  v5 = [(EligibilityInput *)&v8 description];
  v6 = [NSString stringWithFormat:@"[DeviceLanguageInput deviceLanguages:(%@)%@ %@]", v3, v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DeviceLanguageInput;
  if ([(EligibilityInput *)&v7 isEqual:v4])
  {
    if (v4 == self)
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = DeviceLanguageInput;
  return [(EligibilityInput *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = DeviceLanguageInput;
  return [(EligibilityInput *)&v4 copyWithZone:a3];
}

- (DeviceLanguageInput)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = DeviceLanguageInput;
  return [(EligibilityInput *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = DeviceLanguageInput;
  [(EligibilityInput *)&v3 encodeWithCoder:a3];
}

- (DeviceLanguageInput)init
{
  v3.receiver = self;
  v3.super_class = DeviceLanguageInput;
  return [(EligibilityInput *)&v3 initWithInputType:7 status:0 process:@"eligibilityd"];
}

- (BOOL)canFallbackTo:(id)a3
{
  v4 = a3;
  v5 = [(DeviceLanguageInput *)self primaryLanguage];
  if (v5)
  {
    objc_opt_class();
    v6 = v4;
    if (objc_opt_isKindOfClass())
    {
      if (v6)
      {
        objc_opt_class();
        if (sub_100027870(v6))
        {
          v7 = [[NSLocale alloc] initWithLocaleIdentifier:v5];
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v6 = v6;
          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v8)
          {
            v9 = *v19;
            while (2)
            {
              for (i = 0; i != v8; i = i + 1)
              {
                if (*v19 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v18 + 1) + 8 * i);
                v12 = [NSLocale alloc];
                v13 = [v12 initWithLocaleIdentifier:{v11, v18}];
                v14 = [v13 isEquivalentTo:v7];

                if (v14)
                {
                  LOBYTE(v8) = 1;
                  goto LABEL_25;
                }
              }

              v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
              if (v8)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:
        }

        else
        {
          v17 = sub_10001F638();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v24 = "[DeviceLanguageInput canFallbackTo:]";
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Languages contains non-String entries", buf, 0xCu);
          }

          LOBYTE(v8) = 0;
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    v15 = sub_10001F638();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[DeviceLanguageInput canFallbackTo:]";
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Unexpected type passed to selector: %@", buf, 0x16u);
    }

    LOBYTE(v8) = 0;
    v6 = v15;
LABEL_19:

    goto LABEL_20;
  }

  LOBYTE(v8) = 0;
LABEL_20:

  return v8;
}

- (NSString)primaryLanguage
{
  v3 = +[NSLocale systemLanguages];
  v4 = [(DeviceLanguageInput *)self deviceLanguages];
  v5 = [NSBundle preferredLocalizationsFromArray:v3 forPreferences:v4];
  v6 = [v5 firstObject];

  return v6;
}

- (NSArray)deviceLanguages
{
  v2 = +[GlobalConfiguration sharedInstance];
  v3 = [v2 currentUsername];

  if (!v3)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v4 = CFPreferencesCopyValue(@"AppleLanguages", kCFPreferencesAnyApplication, v3, kCFPreferencesAnyHost);
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v8 = sub_10001F638();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      v7 = 0;
      goto LABEL_13;
    }

    v11 = 136315138;
    v12 = "[DeviceLanguageInput deviceLanguages]";
    v9 = "%s: Failed to read device language preferences";
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, &v11, 0xCu);
    goto LABEL_12;
  }

  objc_opt_class();
  if ((sub_100027870(v6) & 1) == 0)
  {
    v8 = sub_10001F638();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = 136315138;
    v12 = "[DeviceLanguageInput deviceLanguages]";
    v9 = "%s: Device language preference contains non-String entries";
    goto LABEL_18;
  }

  v7 = v6;
LABEL_13:

LABEL_14:

  return v7;
}

@end