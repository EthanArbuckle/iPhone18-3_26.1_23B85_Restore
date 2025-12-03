@interface UARPDeploymentRules
+ (id)calculateDeploymentPercent:(id)percent;
+ (id)calculateWeeklyDeploymentDay:(id)day;
- (BOOL)processCountryDeploymentRules:(id)rules;
- (BOOL)processPercentageDeploymentRules:(id)rules;
- (UARPDeploymentRules)initWithRulesDictionary:(id)dictionary;
@end

@implementation UARPDeploymentRules

- (UARPDeploymentRules)initWithRulesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = UARPDeploymentRules;
  v5 = [(UARPDeploymentRules *)&v15 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_opt_new();
  percentageRules = v5->_percentageRules;
  v5->_percentageRules = v6;

  v8 = objc_opt_new();
  countryRules = v5->_countryRules;
  v5->_countryRules = v8;

  v10 = [dictionaryCopy objectForKeyedSubscript:@"Percentage Rules"];
  if (![(UARPDeploymentRules *)v5 processPercentageDeploymentRules:v10])
  {

    goto LABEL_6;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"Country Rules"];
  v12 = [(UARPDeploymentRules *)v5 processCountryDeploymentRules:v11];

  if (!v12)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

LABEL_4:
  v13 = v5;
LABEL_7:

  return v13;
}

- (BOOL)processPercentageDeploymentRules:(id)rules
{
  rulesCopy = rules;
  if (rulesCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_15;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = rulesCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [UARPMetaDataHostDeploymentRulePercentage alloc];
          v12 = [(UARPMetaDataHostDeploymentRulePercentage *)v11 initWithPropertyListValue:v10 relativeURL:0, v15];
          if (v12)
          {
            [(NSMutableArray *)self->_percentageRules addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = 1;
LABEL_15:

  return v13;
}

- (BOOL)processCountryDeploymentRules:(id)rules
{
  rulesCopy = rules;
  if (rulesCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_15;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = rulesCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [UARPMetaDataHostDeploymentRuleCountry alloc];
          v12 = [(UARPMetaDataHostDeploymentRuleCountry *)v11 initWithPropertyListValue:v10 relativeURL:0, v15];
          if (v12)
          {
            [(NSMutableArray *)self->_countryRules addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = 1;
LABEL_15:

  return v13;
}

+ (id)calculateWeeklyDeploymentDay:(id)day
{
  dayCopy = day;
  if ([dayCopy length])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v4 += *([dayCopy UTF8String] + v5++);
    }

    while (v5 < [dayCopy length]);
    v6 = v4 % 7;
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithUnsignedInt:v6];

  return v7;
}

+ (id)calculateDeploymentPercent:(id)percent
{
  percentCopy = percent;
  if ([percentCopy length])
  {
    v4 = 0;
    v5 = 0;
    v6 = 3;
    do
    {
      v7 = *([percentCopy UTF8String] + v5);
      v4 += v7;
      v6 *= v7;
      ++v5;
    }

    while (v5 < [percentCopy length]);
    v8 = v6 % 0xA + 10 * (v4 % 0xA);
  }

  else
  {
    v8 = 3;
  }

  v9 = [NSNumber numberWithUnsignedInt:v8];

  return v9;
}

@end