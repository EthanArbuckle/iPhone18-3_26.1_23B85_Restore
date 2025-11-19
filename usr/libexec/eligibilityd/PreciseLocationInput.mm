@interface PreciseLocationInput
- (BOOL)anyInArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PreciseLocationInput)initWithCoder:(id)a3;
- (PreciseLocationInput)initWithLocations:(id)a3 status:(unint64_t)a4 process:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PreciseLocationInput

- (BOOL)anyInArray:(id)a3
{
  v4 = a3;
  v5 = [(PreciseLocationInput *)self countryCodes];
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
            v13 = "[PreciseLocationInput anyInArray:]";
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
      v13 = "[PreciseLocationInput anyInArray:]";
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
  v3 = [(PreciseLocationInput *)self countryCodes];
  v7.receiver = self;
  v7.super_class = PreciseLocationInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[PreciseLocationInput countryCodes:%@ %@]", v3, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PreciseLocationInput;
  if (![(EligibilityInput *)&v11 isEqual:v4])
  {
    goto LABEL_9;
  }

  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PreciseLocationInput *)self countryCodes];
    v7 = [(PreciseLocationInput *)v5 countryCodes];
    v8 = sub_1000277EC(v6, v7);

    if ((v8 & 1) == 0)
    {
      v9 = sub_10001F638();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[PreciseLocationInput isEqual:]";
        v14 = 2080;
        v15 = "countryCodes";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PreciseLocationInput;
  v3 = [(EligibilityInput *)&v7 hash];
  v4 = [(PreciseLocationInput *)self countryCodes];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = PreciseLocationInput;
  v5 = [(EligibilityInput *)&v9 copyWithZone:?];
  v6 = [(PreciseLocationInput *)self countryCodes];
  v7 = [v6 copyWithZone:a3];
  [v5 setCountryCodes:v7];

  return v5;
}

- (PreciseLocationInput)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PreciseLocationInput;
  v5 = [(EligibilityInput *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"countryCodes"];
    countryCodes = v5->_countryCodes;
    v5->_countryCodes = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PreciseLocationInput;
  v4 = a3;
  [(EligibilityInput *)&v6 encodeWithCoder:v4];
  v5 = [(PreciseLocationInput *)self countryCodes:v6.receiver];
  [v4 encodeObject:v5 forKey:@"countryCodes"];
}

- (PreciseLocationInput)initWithLocations:(id)a3 status:(unint64_t)a4 process:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    type = xpc_get_type(v8);
    if (type != &_xpc_type_array)
    {
      v11 = type;
      v12 = sub_10001F638();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[PreciseLocationInput initWithLocations:status:process:]";
        v22 = 2080;
        name = xpc_type_get_name(v11);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Precise location input is wrong data type: %s", buf, 0x16u);
      }

LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    v12 = _CFXPCCreateCFObjectFromXPCObject();
    objc_opt_class();
    if ((sub_100027870(v12) & 1) == 0)
    {
      v17 = sub_10001F638();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v21 = "[PreciseLocationInput initWithLocations:status:process:]";
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Precise location input contains non-String entries", buf, 0xCu);
      }

      goto LABEL_14;
    }

    v13 = [NSSet setWithArray:v12];

    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  v19.receiver = self;
  v19.super_class = PreciseLocationInput;
  v14 = [(EligibilityInput *)&v19 initWithInputType:16 status:a4 process:v9];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_countryCodes, v12);
  }

  self = v15;
  v16 = self;
LABEL_15:

  return v16;
}

@end