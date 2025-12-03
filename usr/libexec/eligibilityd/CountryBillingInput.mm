@interface CountryBillingInput
- (BOOL)inArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (CountryBillingInput)initWithBillingCountry:(id)country status:(unint64_t)status process:(id)process;
- (CountryBillingInput)initWithCoder:(id)coder;
- (NSString)countryCode;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CountryBillingInput

- (BOOL)inArray:(id)array
{
  arrayCopy = array;
  countryCode = [(CountryBillingInput *)self countryCode];
  if (countryCode)
  {
    objc_opt_class();
    v6 = arrayCopy;
    if (objc_opt_isKindOfClass())
    {
      if (v6)
      {
        objc_opt_class();
        if (sub_100027870(v6))
        {
          v7 = [v6 containsObject:countryCode];
        }

        else
        {
          v10 = sub_10001F638();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = 136315138;
            v12 = "[CountryBillingInput inArray:]";
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Country list contains non-String entries", &v11, 0xCu);
          }

          v7 = 0;
        }

LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    v8 = sub_10001F638();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[CountryBillingInput inArray:]";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Unexpected type passed to selector: %@", &v11, 0x16u);
    }

    v7 = 0;
    v6 = v8;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (NSString)countryCode
{
  v3 = self->_countryCode;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    appStoreCountryCode = [(CountryBillingInput *)self appStoreCountryCode];
    v7 = appStoreCountryCode;
    if (appStoreCountryCode)
    {
      iCloudCountryCode = appStoreCountryCode;
    }

    else
    {
      iCloudCountryCode = [(CountryBillingInput *)self iCloudCountryCode];
    }

    v5 = iCloudCountryCode;
  }

  return v5;
}

- (NSString)description
{
  countryCode = [(CountryBillingInput *)self countryCode];
  appStoreCountryCode = [(CountryBillingInput *)self appStoreCountryCode];
  musicCountryCode = [(CountryBillingInput *)self musicCountryCode];
  iCloudCountryCode = [(CountryBillingInput *)self iCloudCountryCode];
  v10.receiver = self;
  v10.super_class = CountryBillingInput;
  v7 = [(EligibilityInput *)&v10 description];
  v8 = [NSString stringWithFormat:@"[CountryBillingInput countryCode:%@ appStore:%@ music:%@ iCloud:%@ %@]", countryCode, appStoreCountryCode, musicCountryCode, iCloudCountryCode, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v21.receiver = self;
  v21.super_class = CountryBillingInput;
  if ([(EligibilityInput *)&v21 isEqual:equalCopy])
  {
    if (equalCopy == self)
    {
      v18 = 1;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      countryCode = [(CountryBillingInput *)self countryCode];
      countryCode2 = [(CountryBillingInput *)v5 countryCode];
      v8 = sub_1000277EC(countryCode, countryCode2);

      if (v8)
      {
        appStoreCountryCode = [(CountryBillingInput *)self appStoreCountryCode];
        appStoreCountryCode2 = [(CountryBillingInput *)v5 appStoreCountryCode];
        v11 = sub_1000277EC(appStoreCountryCode, appStoreCountryCode2);

        if (v11)
        {
          musicCountryCode = [(CountryBillingInput *)self musicCountryCode];
          musicCountryCode2 = [(CountryBillingInput *)v5 musicCountryCode];
          v14 = sub_1000277EC(musicCountryCode, musicCountryCode2);

          if (v14)
          {
            iCloudCountryCode = [(CountryBillingInput *)self iCloudCountryCode];
            iCloudCountryCode2 = [(CountryBillingInput *)v5 iCloudCountryCode];
            v17 = sub_1000277EC(iCloudCountryCode, iCloudCountryCode2);

            if (v17)
            {
              v18 = 1;
LABEL_21:

              goto LABEL_22;
            }

            v19 = sub_10001F638();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v23 = "[CountryBillingInput isEqual:]";
              v24 = 2080;
              v25 = "iCloudCountryCode";
              goto LABEL_19;
            }

LABEL_20:

            v18 = 0;
            goto LABEL_21;
          }

          v19 = sub_10001F638();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          *buf = 136315394;
          v23 = "[CountryBillingInput isEqual:]";
          v24 = 2080;
          v25 = "musicCountryCode";
        }

        else
        {
          v19 = sub_10001F638();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          *buf = 136315394;
          v23 = "[CountryBillingInput isEqual:]";
          v24 = 2080;
          v25 = "appStoreCountryCode";
        }
      }

      else
      {
        v19 = sub_10001F638();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *buf = 136315394;
        v23 = "[CountryBillingInput isEqual:]";
        v24 = 2080;
        v25 = "countryCode";
      }

LABEL_19:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
      goto LABEL_20;
    }
  }

  v18 = 0;
LABEL_22:

  return v18;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = CountryBillingInput;
  v3 = [(EligibilityInput *)&v13 hash];
  countryCode = [(CountryBillingInput *)self countryCode];
  v5 = [countryCode hash];
  appStoreCountryCode = [(CountryBillingInput *)self appStoreCountryCode];
  v7 = v5 ^ [appStoreCountryCode hash];
  musicCountryCode = [(CountryBillingInput *)self musicCountryCode];
  v9 = v7 ^ [musicCountryCode hash];
  iCloudCountryCode = [(CountryBillingInput *)self iCloudCountryCode];
  v11 = v9 ^ [iCloudCountryCode hash];

  return v11 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15.receiver = self;
  v15.super_class = CountryBillingInput;
  v5 = [(EligibilityInput *)&v15 copyWithZone:?];
  countryCode = [(CountryBillingInput *)self countryCode];
  v7 = [countryCode copyWithZone:zone];
  [v5 setCountryCode:v7];

  appStoreCountryCode = [(CountryBillingInput *)self appStoreCountryCode];
  v9 = [appStoreCountryCode copyWithZone:zone];
  [v5 setAppStoreCountryCode:v9];

  musicCountryCode = [(CountryBillingInput *)self musicCountryCode];
  v11 = [musicCountryCode copyWithZone:zone];
  [v5 setMusicCountryCode:v11];

  iCloudCountryCode = [(CountryBillingInput *)self iCloudCountryCode];
  v13 = [iCloudCountryCode copyWithZone:zone];
  [v5 setICloudCountryCode:v13];

  return v5;
}

- (CountryBillingInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CountryBillingInput;
  v5 = [(EligibilityInput *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appStoreCountryCode"];
    appStoreCountryCode = v5->_appStoreCountryCode;
    v5->_appStoreCountryCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"musicCountryCode"];
    musicCountryCode = v5->_musicCountryCode;
    v5->_musicCountryCode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iCloudCountryCode"];
    iCloudCountryCode = v5->_iCloudCountryCode;
    v5->_iCloudCountryCode = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CountryBillingInput;
  [(EligibilityInput *)&v10 encodeWithCoder:coderCopy];
  countryCode = [(CountryBillingInput *)self countryCode];

  if (countryCode)
  {
    countryCode2 = [(CountryBillingInput *)self countryCode];
    [coderCopy encodeObject:countryCode2 forKey:@"countryCode"];
  }

  appStoreCountryCode = [(CountryBillingInput *)self appStoreCountryCode];
  [coderCopy encodeObject:appStoreCountryCode forKey:@"appStoreCountryCode"];

  musicCountryCode = [(CountryBillingInput *)self musicCountryCode];
  [coderCopy encodeObject:musicCountryCode forKey:@"musicCountryCode"];

  iCloudCountryCode = [(CountryBillingInput *)self iCloudCountryCode];
  [coderCopy encodeObject:iCloudCountryCode forKey:@"iCloudCountryCode"];
}

- (CountryBillingInput)initWithBillingCountry:(id)country status:(unint64_t)status process:(id)process
{
  countryCopy = country;
  v31.receiver = self;
  v31.super_class = CountryBillingInput;
  v9 = [(EligibilityInput *)&v31 initWithInputType:2 status:status process:process];
  if (!v9)
  {
    goto LABEL_17;
  }

  if (!countryCopy)
  {
LABEL_26:
    v22 = v9;
    goto LABEL_27;
  }

  type = xpc_get_type(countryCopy);
  if (type != &_xpc_type_string)
  {
    v11 = type;
    if (type != &_xpc_type_dictionary)
    {
      v12 = sub_10001F638();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        name = xpc_type_get_name(v11);
        *buf = 136315394;
        v33 = "[CountryBillingInput initWithBillingCountry:status:process:]";
        v34 = 2080;
        v35 = name;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Billing country code input is wrong data type: %s", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v12 = countryCopy;
    string = xpc_dictionary_get_string(v12, "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING_KEY_APP_STORE_ACCOUNT");
    v18 = xpc_dictionary_get_string(v12, "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING_KEY_MUSIC_ACCOUNT");
    v19 = xpc_dictionary_get_string(v12, "OS_ELIGIBILITY_INPUT_COUNTRY_BILLING_KEY_ICLOUD_ACCOUNT");
    v15 = v19;
    if (!string && !v18 && !v19)
    {
      v20 = sub_10001F638();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "[CountryBillingInput initWithBillingCountry:status:process:]";
        v34 = 2112;
        v35 = v12;
        v21 = "%s: Failed to read billing country codes from %@";
LABEL_29:
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (string)
    {
      v23 = [NSString stringWithUTF8String:string];
      appStoreCountryCode = v9->_appStoreCountryCode;
      v9->_appStoreCountryCode = v23;
    }

    if (v18)
    {
      v25 = [NSString stringWithUTF8String:v18];
      musicCountryCode = v9->_musicCountryCode;
      v9->_musicCountryCode = v25;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = &OBJC_IVAR___CountryBillingInput__iCloudCountryCode;
LABEL_24:
    v27 = [NSString stringWithUTF8String:v15];
    v28 = *v16;
    v29 = *(&v9->super.super.isa + v28);
    *(&v9->super.super.isa + v28) = v27;

LABEL_25:
    goto LABEL_26;
  }

  v12 = countryCopy;
  string_ptr = xpc_string_get_string_ptr(v12);
  if (string_ptr)
  {
    v15 = string_ptr;
    v16 = &OBJC_IVAR___CountryBillingInput__countryCode;
    goto LABEL_24;
  }

  v20 = sub_10001F638();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v33 = "[CountryBillingInput initWithBillingCountry:status:process:]";
    v34 = 2112;
    v35 = v12;
    v21 = "%s: Failed to read billing country code from %@";
    goto LABEL_29;
  }

LABEL_15:

LABEL_16:
LABEL_17:
  v22 = 0;
LABEL_27:

  return v22;
}

@end