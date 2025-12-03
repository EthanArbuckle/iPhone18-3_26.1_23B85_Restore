@interface PreciseLocationInput
- (BOOL)anyInArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PreciseLocationInput)initWithCoder:(id)coder;
- (PreciseLocationInput)initWithLocations:(id)locations status:(unint64_t)status process:(id)process;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PreciseLocationInput

- (BOOL)anyInArray:(id)array
{
  arrayCopy = array;
  countryCodes = [(PreciseLocationInput *)self countryCodes];
  if (countryCodes)
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
          v7 = [NSSet setWithArray:v6];
          v8 = [countryCodes intersectsSet:v7];
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
  countryCodes = [(PreciseLocationInput *)self countryCodes];
  v7.receiver = self;
  v7.super_class = PreciseLocationInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[PreciseLocationInput countryCodes:%@ %@]", countryCodes, v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = PreciseLocationInput;
  if (![(EligibilityInput *)&v11 isEqual:equalCopy])
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    countryCodes = [(PreciseLocationInput *)self countryCodes];
    countryCodes2 = [(PreciseLocationInput *)v5 countryCodes];
    v8 = sub_1000277EC(countryCodes, countryCodes2);

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
  countryCodes = [(PreciseLocationInput *)self countryCodes];
  v5 = [countryCodes hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = PreciseLocationInput;
  v5 = [(EligibilityInput *)&v9 copyWithZone:?];
  countryCodes = [(PreciseLocationInput *)self countryCodes];
  v7 = [countryCodes copyWithZone:zone];
  [v5 setCountryCodes:v7];

  return v5;
}

- (PreciseLocationInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PreciseLocationInput;
  v5 = [(EligibilityInput *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"countryCodes"];
    countryCodes = v5->_countryCodes;
    v5->_countryCodes = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PreciseLocationInput;
  coderCopy = coder;
  [(EligibilityInput *)&v6 encodeWithCoder:coderCopy];
  v5 = [(PreciseLocationInput *)self countryCodes:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"countryCodes"];
}

- (PreciseLocationInput)initWithLocations:(id)locations status:(unint64_t)status process:(id)process
{
  locationsCopy = locations;
  processCopy = process;
  if (locationsCopy)
  {
    type = xpc_get_type(locationsCopy);
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
      selfCopy = 0;
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
  v14 = [(EligibilityInput *)&v19 initWithInputType:16 status:status process:processCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_countryCodes, v12);
  }

  self = v15;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

@end