@interface UARPMetaDataHostDeploymentRuleCountry
- (UARPMetaDataHostDeploymentRuleCountry)init;
- (UARPMetaDataHostDeploymentRuleCountry)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataHostDeploymentRuleCountry)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataHostDeploymentRuleCountry

- (UARPMetaDataHostDeploymentRuleCountry)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHostDeploymentRuleCountry;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -1003827188;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Deployment Rule Country";
  }

  return v3;
}

- (UARPMetaDataHostDeploymentRuleCountry)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataHostDeploymentRuleCountry *)self init];
  if (!v6)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v7 = valueCopy;
  v8 = [v7 objectForKeyedSubscript:@"Country"];
  countryCode = v6->_countryCode;
  v6->_countryCode = v8;

  v10 = v6->_countryCode;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [(NSString *)v6->_countryCode length]!= 2)
  {
LABEL_13:

    goto LABEL_14;
  }

  v11 = [v7 objectForKeyedSubscript:@"Until Year"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v6->_untilYear = [v11 unsignedIntegerValue];
  v12 = [v7 objectForKeyedSubscript:@"Until Month"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v6->_untilMonth = [v12 unsignedIntegerValue];
  v13 = [v7 objectForKeyedSubscript:@"Until Day"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v6->_untilDay = [v13 unsignedIntegerValue];
  v14 = objc_opt_new();
  [v14 setDateFormat:@"yyyy-MM-dd"];
  v15 = [NSString stringWithFormat:@"%@-%@-%@", v11, v12, v13];
  v16 = [v14 dateFromString:v15];
  untilDate = v6->_untilDate;
  v6->_untilDate = v16;

  v6->super._tlvLength = 6;
LABEL_9:
  v18 = v6;
LABEL_15:

  return v18;
}

- (UARPMetaDataHostDeploymentRuleCountry)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataHostDeploymentRuleCountry *)self init];
  if (v6)
  {
    if (length != 6)
    {
      v14 = 0;
      goto LABEL_6;
    }

    v6->_untilYear = uarpNtohs(*value);
    v6->_untilMonth = *(value + 2);
    v6->_untilDay = *(value + 3);
    v7 = [NSString stringWithFormat:@"%c%c", *(value + 4), *(value + 5)];
    countryCode = v6->_countryCode;
    v6->_countryCode = v7;

    v9 = objc_opt_new();
    [v9 setDateFormat:@"yyyy-MM-dd"];
    untilMonth = v6->_untilMonth;
    v11 = [NSString stringWithFormat:@"%lu-%lu-%lu", v6->_untilYear, untilMonth, v6->_untilDay];
    v12 = [v9 dateFromString:v11];
    untilDate = v6->_untilDate;
    v6->_untilDate = v12;
  }

  v14 = v6;
LABEL_6:

  return v14;
}

- (id)tlvValue
{
  v7 = uarpHtons(LOWORD(self->_untilYear));
  untilDay = self->_untilDay;
  untilMonth = self->_untilMonth;
  v9 = untilDay;
  uTF8String = [(NSString *)self->_countryCode UTF8String];
  v10 = *uTF8String;
  v11 = uTF8String[1];
  v5 = [NSData dataWithBytes:&v7 length:6];

  return v5;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"yyyy-MM-dd"];
  tlvName = [(UARPMetaData *)self tlvName];
  countryCode = self->_countryCode;
  v6 = [v3 stringFromDate:self->_untilDate];
  v7 = [NSString stringWithFormat:@"<%@: %@ until %@>", tlvName, countryCode, v6];

  return v7;
}

@end