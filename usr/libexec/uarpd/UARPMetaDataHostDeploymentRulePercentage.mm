@interface UARPMetaDataHostDeploymentRulePercentage
- (UARPMetaDataHostDeploymentRulePercentage)init;
- (UARPMetaDataHostDeploymentRulePercentage)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataHostDeploymentRulePercentage)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataHostDeploymentRulePercentage

- (UARPMetaDataHostDeploymentRulePercentage)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHostDeploymentRulePercentage;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -1003827189;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Deployment Rule Percentage";
  }

  return v3;
}

- (UARPMetaDataHostDeploymentRulePercentage)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataHostDeploymentRulePercentage *)self init];
  if (!v6)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v7 = v5;
  v8 = [v7 objectForKeyedSubscript:@"Percentage Limit"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v9 = [v7 objectForKeyedSubscript:@"Until Year"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v6->_untilYear = [v9 unsignedIntegerValue];
  v10 = [v7 objectForKeyedSubscript:@"Until Month"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v6->_untilMonth = [v10 unsignedIntegerValue];
  v11 = [v7 objectForKeyedSubscript:@"Until Day"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  v6->_untilDay = [v11 unsignedIntegerValue];
  v6->_percentageLimit = [v8 unsignedIntegerValue];
  v12 = objc_opt_new();
  [v12 setDateFormat:@"yyyy-MM-dd"];
  v13 = [NSString stringWithFormat:@"%@-%@-%@", v9, v10, v11];
  v14 = [v12 dateFromString:v13];
  untilDate = v6->_untilDate;
  v6->_untilDate = v14;

  v6->super._tlvLength = 5;
LABEL_8:
  v16 = v6;
LABEL_14:

  return v16;
}

- (UARPMetaDataHostDeploymentRulePercentage)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataHostDeploymentRulePercentage *)self init];
  if (v6)
  {
    if (a3 != 5)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v6->_untilYear = uarpNtohs(*a4);
    v6->_untilMonth = *(a4 + 2);
    v6->_untilDay = *(a4 + 3);
    v6->_percentageLimit = *(a4 + 4);
    v7 = objc_opt_new();
    [v7 setDateFormat:@"yyyy-MM-dd"];
    untilMonth = v6->_untilMonth;
    v9 = [NSString stringWithFormat:@"%lu-%lu-%lu", v6->_untilYear, untilMonth, v6->_untilDay];
    v10 = [v7 dateFromString:v9];
    untilDate = v6->_untilDate;
    v6->_untilDate = v10;
  }

  v12 = v6;
LABEL_6:

  return v12;
}

- (id)tlvValue
{
  v5 = uarpHtons(LOWORD(self->_untilYear));
  untilMonth = self->_untilMonth;
  untilDay = self->_untilDay;
  percentageLimit = self->_percentageLimit;
  v3 = [NSData dataWithBytes:&v5 length:5];

  return v3;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"yyyy-MM-dd"];
  v4 = [(UARPMetaData *)self tlvName];
  percentageLimit = self->_percentageLimit;
  v6 = [v3 stringFromDate:self->_untilDate];
  v7 = [NSString stringWithFormat:@"<%@: %lu until %@>", v4, percentageLimit, v6];

  return v7;
}

@end