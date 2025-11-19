@interface CountryBillingInput
- (BOOL)inArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CountryBillingInput)initWithBillingCountry:(id)a3 status:(unint64_t)a4 process:(id)a5;
- (CountryBillingInput)initWithCoder:(id)a3;
- (NSString)countryCode;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CountryBillingInput

- (BOOL)inArray:(id)a3
{
  v4 = a3;
  v5 = [(CountryBillingInput *)self countryCode];
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
          v7 = [v6 containsObject:v5];
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
    v6 = [(CountryBillingInput *)self appStoreCountryCode];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(CountryBillingInput *)self iCloudCountryCode];
    }

    v5 = v8;
  }

  return v5;
}

- (NSString)description
{
  v3 = [(CountryBillingInput *)self countryCode];
  v4 = [(CountryBillingInput *)self appStoreCountryCode];
  v5 = [(CountryBillingInput *)self musicCountryCode];
  v6 = [(CountryBillingInput *)self iCloudCountryCode];
  v10.receiver = self;
  v10.super_class = CountryBillingInput;
  v7 = [(EligibilityInput *)&v10 description];
  v8 = [NSString stringWithFormat:@"[CountryBillingInput countryCode:%@ appStore:%@ music:%@ iCloud:%@ %@]", v3, v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CountryBillingInput;
  if ([(EligibilityInput *)&v21 isEqual:v4])
  {
    if (v4 == self)
    {
      v18 = 1;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CountryBillingInput *)self countryCode];
      v7 = [(CountryBillingInput *)v5 countryCode];
      v8 = sub_1000277EC(v6, v7);

      if (v8)
      {
        v9 = [(CountryBillingInput *)self appStoreCountryCode];
        v10 = [(CountryBillingInput *)v5 appStoreCountryCode];
        v11 = sub_1000277EC(v9, v10);

        if (v11)
        {
          v12 = [(CountryBillingInput *)self musicCountryCode];
          v13 = [(CountryBillingInput *)v5 musicCountryCode];
          v14 = sub_1000277EC(v12, v13);

          if (v14)
          {
            v15 = [(CountryBillingInput *)self iCloudCountryCode];
            v16 = [(CountryBillingInput *)v5 iCloudCountryCode];
            v17 = sub_1000277EC(v15, v16);

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
  v4 = [(CountryBillingInput *)self countryCode];
  v5 = [v4 hash];
  v6 = [(CountryBillingInput *)self appStoreCountryCode];
  v7 = v5 ^ [v6 hash];
  v8 = [(CountryBillingInput *)self musicCountryCode];
  v9 = v7 ^ [v8 hash];
  v10 = [(CountryBillingInput *)self iCloudCountryCode];
  v11 = v9 ^ [v10 hash];

  return v11 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = CountryBillingInput;
  v5 = [(EligibilityInput *)&v15 copyWithZone:?];
  v6 = [(CountryBillingInput *)self countryCode];
  v7 = [v6 copyWithZone:a3];
  [v5 setCountryCode:v7];

  v8 = [(CountryBillingInput *)self appStoreCountryCode];
  v9 = [v8 copyWithZone:a3];
  [v5 setAppStoreCountryCode:v9];

  v10 = [(CountryBillingInput *)self musicCountryCode];
  v11 = [v10 copyWithZone:a3];
  [v5 setMusicCountryCode:v11];

  v12 = [(CountryBillingInput *)self iCloudCountryCode];
  v13 = [v12 copyWithZone:a3];
  [v5 setICloudCountryCode:v13];

  return v5;
}

- (CountryBillingInput)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CountryBillingInput;
  v5 = [(EligibilityInput *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appStoreCountryCode"];
    appStoreCountryCode = v5->_appStoreCountryCode;
    v5->_appStoreCountryCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"musicCountryCode"];
    musicCountryCode = v5->_musicCountryCode;
    v5->_musicCountryCode = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iCloudCountryCode"];
    iCloudCountryCode = v5->_iCloudCountryCode;
    v5->_iCloudCountryCode = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CountryBillingInput;
  [(EligibilityInput *)&v10 encodeWithCoder:v4];
  v5 = [(CountryBillingInput *)self countryCode];

  if (v5)
  {
    v6 = [(CountryBillingInput *)self countryCode];
    [v4 encodeObject:v6 forKey:@"countryCode"];
  }

  v7 = [(CountryBillingInput *)self appStoreCountryCode];
  [v4 encodeObject:v7 forKey:@"appStoreCountryCode"];

  v8 = [(CountryBillingInput *)self musicCountryCode];
  [v4 encodeObject:v8 forKey:@"musicCountryCode"];

  v9 = [(CountryBillingInput *)self iCloudCountryCode];
  [v4 encodeObject:v9 forKey:@"iCloudCountryCode"];
}

- (CountryBillingInput)initWithBillingCountry:(id)a3 status:(unint64_t)a4 process:(id)a5
{
  v8 = a3;
  v31.receiver = self;
  v31.super_class = CountryBillingInput;
  v9 = [(EligibilityInput *)&v31 initWithInputType:2 status:a4 process:a5];
  if (!v9)
  {
    goto LABEL_17;
  }

  if (!v8)
  {
LABEL_26:
    v22 = v9;
    goto LABEL_27;
  }

  type = xpc_get_type(v8);
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

    v12 = v8;
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

  v12 = v8;
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