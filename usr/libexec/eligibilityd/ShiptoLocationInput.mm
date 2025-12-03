@interface ShiptoLocationInput
- (BOOL)inArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (ShiptoLocationInput)initWithCoder:(id)coder;
- (ShiptoLocationInput)initWithShiptoLocation:(id)location status:(unint64_t)status process:(id)process;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ShiptoLocationInput

- (BOOL)inArray:(id)array
{
  arrayCopy = array;
  countryCode = [(ShiptoLocationInput *)self countryCode];
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
            v12 = "[ShiptoLocationInput inArray:]";
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
      v12 = "[ShiptoLocationInput inArray:]";
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

- (NSString)description
{
  countryCode = [(ShiptoLocationInput *)self countryCode];
  legacyRegionInfo = [(ShiptoLocationInput *)self legacyRegionInfo];
  legacySoftwareBehaviors = [(ShiptoLocationInput *)self legacySoftwareBehaviors];
  v9.receiver = self;
  v9.super_class = ShiptoLocationInput;
  v6 = [(EligibilityInput *)&v9 description];
  v7 = [NSString stringWithFormat:@"[ShiptoLocationInput countryCode:%@ legacyRegionInfo:%@ legacySoftwareBehaviors:%@ %@]", countryCode, legacyRegionInfo, legacySoftwareBehaviors, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = ShiptoLocationInput;
  if ([(EligibilityInput *)&v18 isEqual:equalCopy])
  {
    if (equalCopy == self)
    {
      v15 = 1;
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      countryCode = [(ShiptoLocationInput *)self countryCode];
      countryCode2 = [(ShiptoLocationInput *)v5 countryCode];
      v8 = sub_1000277EC(countryCode, countryCode2);

      if (v8)
      {
        legacyRegionInfo = [(ShiptoLocationInput *)self legacyRegionInfo];
        legacyRegionInfo2 = [(ShiptoLocationInput *)v5 legacyRegionInfo];
        v11 = sub_1000277EC(legacyRegionInfo, legacyRegionInfo2);

        if (v11)
        {
          legacySoftwareBehaviors = [(ShiptoLocationInput *)self legacySoftwareBehaviors];
          legacySoftwareBehaviors2 = [(ShiptoLocationInput *)v5 legacySoftwareBehaviors];
          v14 = sub_1000277EC(legacySoftwareBehaviors, legacySoftwareBehaviors2);

          if (v14)
          {
            v15 = 1;
LABEL_18:

            goto LABEL_19;
          }

          v16 = sub_10001F638();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v20 = "[ShiptoLocationInput isEqual:]";
            v21 = 2080;
            v22 = "legacySoftwareBehaviors";
            goto LABEL_16;
          }

LABEL_17:

          v15 = 0;
          goto LABEL_18;
        }

        v16 = sub_10001F638();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        *buf = 136315394;
        v20 = "[ShiptoLocationInput isEqual:]";
        v21 = 2080;
        v22 = "legacyRegionInfo";
      }

      else
      {
        v16 = sub_10001F638();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        *buf = 136315394;
        v20 = "[ShiptoLocationInput isEqual:]";
        v21 = 2080;
        v22 = "countryCode";
      }

LABEL_16:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
      goto LABEL_17;
    }
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = ShiptoLocationInput;
  v3 = [(EligibilityInput *)&v11 hash];
  countryCode = [(ShiptoLocationInput *)self countryCode];
  v5 = [countryCode hash];
  legacyRegionInfo = [(ShiptoLocationInput *)self legacyRegionInfo];
  v7 = v5 ^ [legacyRegionInfo hash];
  legacySoftwareBehaviors = [(ShiptoLocationInput *)self legacySoftwareBehaviors];
  v9 = v7 ^ [legacySoftwareBehaviors hash];

  return v9 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = ShiptoLocationInput;
  v5 = [(EligibilityInput *)&v13 copyWithZone:?];
  countryCode = [(ShiptoLocationInput *)self countryCode];
  v7 = [countryCode copyWithZone:zone];
  [v5 setCountryCode:v7];

  legacyRegionInfo = [(ShiptoLocationInput *)self legacyRegionInfo];
  v9 = [legacyRegionInfo copyWithZone:zone];
  [v5 setLegacyRegionInfo:v9];

  legacySoftwareBehaviors = [(ShiptoLocationInput *)self legacySoftwareBehaviors];
  v11 = [legacySoftwareBehaviors copyWithZone:zone];
  [v5 setLegacySoftwareBehaviors:v11];

  return v5;
}

- (ShiptoLocationInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ShiptoLocationInput;
  v5 = [(EligibilityInput *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"legacyRegionInfo"];
    legacyRegionInfo = v5->_legacyRegionInfo;
    v5->_legacyRegionInfo = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"legacySoftwareBehaviors"];
    legacySoftwareBehaviors = v5->_legacySoftwareBehaviors;
    v5->_legacySoftwareBehaviors = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ShiptoLocationInput;
  [(EligibilityInput *)&v11 encodeWithCoder:coderCopy];
  countryCode = [(ShiptoLocationInput *)self countryCode];

  if (countryCode)
  {
    countryCode2 = [(ShiptoLocationInput *)self countryCode];
    [coderCopy encodeObject:countryCode2 forKey:@"countryCode"];
  }

  legacyRegionInfo = [(ShiptoLocationInput *)self legacyRegionInfo];

  if (legacyRegionInfo)
  {
    legacyRegionInfo2 = [(ShiptoLocationInput *)self legacyRegionInfo];
    [coderCopy encodeObject:legacyRegionInfo2 forKey:@"legacyRegionInfo"];
  }

  legacySoftwareBehaviors = [(ShiptoLocationInput *)self legacySoftwareBehaviors];

  if (legacySoftwareBehaviors)
  {
    legacySoftwareBehaviors2 = [(ShiptoLocationInput *)self legacySoftwareBehaviors];
    [coderCopy encodeObject:legacySoftwareBehaviors2 forKey:@"legacySoftwareBehaviors"];
  }
}

- (ShiptoLocationInput)initWithShiptoLocation:(id)location status:(unint64_t)status process:(id)process
{
  locationCopy = location;
  v27.receiver = self;
  v27.super_class = ShiptoLocationInput;
  v9 = [(EligibilityInput *)&v27 initWithInputType:17 status:status process:process];
  v10 = v9;
  if (!v9)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_16;
  }

  if (!locationCopy)
  {
    v14 = v9;
    goto LABEL_16;
  }

  type = xpc_get_type(locationCopy);
  if (type != &_xpc_type_dictionary)
  {
    v12 = type;
    v13 = sub_10001F638();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      name = xpc_type_get_name(v12);
      *buf = 136315394;
      v29 = "[ShiptoLocationInput initWithShiptoLocation:status:process:]";
      v30 = 2080;
      v31 = name;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Ship-to location input is wrong data type: %s", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v15 = locationCopy;
  string = xpc_dictionary_get_string(v15, "OS_ELIGIBILITY_INPUT_SHIPTO_LOCATION_KEY_COUNTRY_CODE");
  v17 = xpc_dictionary_get_string(v15, "OS_ELIGIBILITY_INPUT_SHIPTO_LOCATION_KEY_LEGACY_REGION_INFO");
  v18 = xpc_dictionary_get_string(v15, "OS_ELIGIBILITY_INPUT_SHIPTO_LOCATION_KEY_LEGACY_SOFTWARE_BEHAVIORS");
  if (string)
  {
    v19 = [NSString stringWithUTF8String:string];
    countryCode = v10->_countryCode;
    v10->_countryCode = v19;
  }

  if (v17)
  {
    v21 = [NSString stringWithUTF8String:v17];
    legacyRegionInfo = v10->_legacyRegionInfo;
    v10->_legacyRegionInfo = v21;
  }

  if (v18)
  {
    v23 = [NSString stringWithUTF8String:v18];
    legacySoftwareBehaviors = v10->_legacySoftwareBehaviors;
    v10->_legacySoftwareBehaviors = v23;
  }

  v14 = v10;

LABEL_16:
  return v14;
}

@end