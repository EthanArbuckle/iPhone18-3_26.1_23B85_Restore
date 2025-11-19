@interface LocatedCountryInput
+ (unint64_t)_parseConfidenceFromInputDict:(id)a3;
- (BOOL)anyInArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LocatedCountryInput)initWithCoder:(id)a3;
- (LocatedCountryInput)initWithCountryCodes:(id)a3 status:(unint64_t)a4 process:(id)a5;
- (NSSet)countryCodes;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)_deviceMinimiumRequiredConfidence;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LocatedCountryInput

- (BOOL)anyInArray:(id)a3
{
  v4 = a3;
  v5 = [(LocatedCountryInput *)self countryCodes];
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
          v7 = [NSSet setWithArray:v6];
          v8 = [v5 intersectsSet:v7];
        }

        else
        {
          v11 = sub_10001F638();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = 136315138;
            v13 = "[LocatedCountryInput anyInArray:]";
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: Country list contains non-String entries", &v12, 0xCu);
          }

          v8 = 0;
        }

LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    v9 = sub_10001F638();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[LocatedCountryInput anyInArray:]";
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Unexpected type passed to selector: %@", &v12, 0x16u);
    }

    v8 = 0;
    v6 = v9;
    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (NSString)description
{
  v3 = [(LocatedCountryInput *)self countryCodes];
  v4 = [(LocatedCountryInput *)self confidence];
  v8.receiver = self;
  v8.super_class = LocatedCountryInput;
  v5 = [(EligibilityInput *)&v8 description];
  v6 = [NSString stringWithFormat:@"[LocatedCountryInput countryCodes:%@ confidence:%lu %@]", v3, v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = LocatedCountryInput;
  if ([(EligibilityInput *)&v13 isEqual:v4])
  {
    if (v4 == self)
    {
      v10 = 1;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(LocatedCountryInput *)self countryCodes];
      v7 = [(LocatedCountryInput *)v5 countryCodes];
      v8 = sub_1000277EC(v6, v7);

      if (v8)
      {
        v9 = [(LocatedCountryInput *)self confidence];
        if (v9 == [(LocatedCountryInput *)v5 confidence])
        {
          v10 = 1;
LABEL_15:

          goto LABEL_16;
        }

        v11 = sub_10001F638();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v15 = "[LocatedCountryInput isEqual:]";
          v16 = 2080;
          v17 = "confidence";
          goto LABEL_13;
        }
      }

      else
      {
        v11 = sub_10001F638();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v15 = "[LocatedCountryInput isEqual:]";
          v16 = 2080;
          v17 = "countryCodes";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
        }
      }

      v10 = 0;
      goto LABEL_15;
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = LocatedCountryInput;
  v3 = [(EligibilityInput *)&v8 hash];
  v4 = [(LocatedCountryInput *)self countryCodes];
  v5 = [v4 hash];
  v6 = v5 ^ [(LocatedCountryInput *)self confidence];

  return v6 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = LocatedCountryInput;
  v5 = [(EligibilityInput *)&v9 copyWithZone:?];
  v6 = [(LocatedCountryInput *)self countryCodes];
  v7 = [v6 copyWithZone:a3];
  [v5 setCountryCodes:v7];

  [v5 setConfidence:{-[LocatedCountryInput confidence](self, "confidence")}];
  return v5;
}

- (LocatedCountryInput)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LocatedCountryInput;
  v5 = [(EligibilityInput *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"countryCodes"];
    countryCodes = v5->_countryCodes;
    v5->_countryCodes = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
    v5->_confidence = [v10 unsignedIntegerValue];

    if (!v5->_confidence)
    {
      if (v5->_countryCodes)
      {
        v5->_confidence = 4;
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LocatedCountryInput;
  v4 = a3;
  [(EligibilityInput *)&v6 encodeWithCoder:v4];
  v5 = [(LocatedCountryInput *)self countryCodes:v6.receiver];
  [v4 encodeObject:v5 forKey:@"countryCodes"];
}

- (NSSet)countryCodes
{
  v3 = [(LocatedCountryInput *)self confidence];
  if (v3 >= [(LocatedCountryInput *)self _deviceMinimiumRequiredConfidence])
  {
    v4 = self->_countryCodes;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_deviceMinimiumRequiredConfidence
{
  if (MGGetBoolAnswer())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (LocatedCountryInput)initWithCountryCodes:(id)a3 status:(unint64_t)a4 process:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    type = xpc_get_type(v8);
    if (type == &_xpc_type_array)
    {
      v12 = v8;
      v16 = 4;
    }

    else
    {
      v11 = type;
      if (type != &_xpc_type_dictionary)
      {
        v12 = sub_10001F638();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
LABEL_25:
          v21 = 0;
          goto LABEL_26;
        }

        *buf = 136315394;
        v29 = "[LocatedCountryInput initWithCountryCodes:status:process:]";
        v30 = 2080;
        name = xpc_type_get_name(v11);
        v13 = "%s: Located country codes input is wrong data type: %s";
        v14 = v12;
        v15 = 22;
LABEL_6:
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
        goto LABEL_25;
      }

      v22 = xpc_dictionary_get_array(v8, "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION_KEY_COUNTRY_CODE_LIST");
      if (!v22)
      {
        v12 = sub_10001F638();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        *buf = 136315138;
        v29 = "[LocatedCountryInput initWithCountryCodes:status:process:]";
        v13 = "%s: Located country codes input missing country code array";
        v14 = v12;
        v15 = 12;
        goto LABEL_6;
      }

      v12 = v22;
      v23 = [LocatedCountryInput _parseConfidenceFromInputDict:v8];
      if (!v23)
      {
        v25 = sub_10001F638();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v29 = "[LocatedCountryInput initWithCountryCodes:status:process:]";
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: Located country codes input missing confidence values", buf, 0xCu);
        }

        goto LABEL_25;
      }

      v16 = v23;
    }

    v17 = _CFXPCCreateCFObjectFromXPCObject();
    objc_opt_class();
    if ((sub_100027870(v17) & 1) == 0)
    {
      v24 = sub_10001F638();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v29 = "[LocatedCountryInput initWithCountryCodes:status:process:]";
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s: Located country codes input contains non-String entries", buf, 0xCu);
      }

      goto LABEL_25;
    }

    v18 = [NSSet setWithArray:v17];

    v12 = v18;
  }

  else
  {
    v16 = 0;
    v12 = 0;
  }

  v27.receiver = self;
  v27.super_class = LocatedCountryInput;
  v19 = [(EligibilityInput *)&v27 initWithInputType:1 status:a4 process:v9];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_countryCodes, v12);
    v20->_confidence = v16;
  }

  self = v20;
  v21 = self;
LABEL_26:

  return v21;
}

+ (unint64_t)_parseConfidenceFromInputDict:(id)a3
{
  v3 = a3;
  if (xpc_dictionary_get_BOOL(v3, "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION_KEY_HAS_SINGLE_LOCATION"))
  {
    v4 = 4;
  }

  else if (xpc_dictionary_get_BOOL(v3, "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION_KEY_HAS_NEARBY_CELLS_MCC"))
  {
    v4 = 3;
  }

  else if (xpc_dictionary_get_BOOL(v3, "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION_KEY_HAS_SERVING_CELL_MCC"))
  {
    v4 = 2;
  }

  else
  {
    v4 = xpc_dictionary_get_BOOL(v3, "OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION_KEY_HAS_WIFIAP");
  }

  return v4;
}

@end