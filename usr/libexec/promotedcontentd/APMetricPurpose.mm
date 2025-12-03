@interface APMetricPurpose
- (APMetricPurpose)initWithPurposeDefinition:(id)definition;
- (APMetricPurpose)initWithPurposeJSON:(id)n;
- (BOOL)_validateMetric:(id)metric forKey:(id)key fromDictionary:(id)dictionary;
- (BOOL)_validateMetric:(id)metric withMetrics:(id)metrics;
- (BOOL)_validateRouteDefinition:(id)definition;
- (BOOL)metricIsDefined:(int64_t)defined;
- (BOOL)metricIsDiagnosticsAndUsage:(int64_t)usage;
- (BOOL)metricIsDisabled:(int64_t)disabled;
- (id)_metricsByNumber:(id)number;
- (id)stringForMetric:(int64_t)metric;
@end

@implementation APMetricPurpose

- (BOOL)_validateMetric:(id)metric forKey:(id)key fromDictionary:(id)dictionary
{
  metricCopy = metric;
  keyCopy = key;
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"dnu"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"disabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass())))
    {
      v13 = 1;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = APLogForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138543874;
          v19 = metricCopy;
          v20 = 2114;
          v21 = keyCopy;
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "The purpose (%{public}@) metric (%{public}@) value (%{public}@) isn't a number!", &v18, 0x20u);
        }
      }

      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = APLogForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138543874;
            v19 = metricCopy;
            v20 = 2114;
            v21 = keyCopy;
            v22 = 2114;
            v23 = v11;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The purpose (%{public}@) metric (%{public}@) dnu (%{public}@) isn't a number!", &v18, 0x20u);
          }
        }
      }

      if (v12)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = APLogForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138543874;
            v19 = metricCopy;
            v20 = 2114;
            v21 = keyCopy;
            v22 = 2114;
            v23 = v12;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "The purpose (%{public}@) metric (%{public}@) dnu (%{public}@) isn't a number!", &v18, 0x20u);
          }
        }
      }

      v13 = 0;
    }
  }

  else
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543618;
      v19 = metricCopy;
      v20 = 2114;
      v21 = keyCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "The purpose (%{public}@) value for metric (%{public}@) isn't a dictionary!", &v18, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)_validateMetric:(id)metric withMetrics:(id)metrics
{
  metricCopy = metric;
  metricsCopy = metrics;
  if (!metricsCopy)
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = metricCopy;
      v17 = "The purpose (%{public}@) metrics are nil!";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
    }

LABEL_20:
    LOBYTE(v12) = 0;
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = metricCopy;
      v17 = "The purpose (%{public}@) metrics in the definition isn't a dictionary!";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = metricsCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = metricsCopy;
    v11 = *v21;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = APLogForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v25 = metricCopy;
            v26 = 2114;
            v27 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The purpose (%{public}@) has a metric key (%{public}@) that is not a string!", buf, 0x16u);
          }

          v12 = 0;
        }

        v16 = [v8 objectForKeyedSubscript:v14];
        v12 &= [(APMetricPurpose *)self _validateMetric:metricCopy forKey:v14 fromDictionary:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v10);
    metricsCopy = v19;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

LABEL_21:

  return v12;
}

- (BOOL)_validateRouteDefinition:(id)definition
{
  definitionCopy = definition;
  if (!definitionCopy)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      v14 = "The purpose definition can not be nil!";
      v15 = v5;
      v16 = 2;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, v23, v16);
    }

LABEL_22:
    LOBYTE(v18) = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 138543362;
      *&v23[4] = definitionCopy;
      v14 = "The purpose definition is not a dictionary! %{public}@";
      v15 = v5;
      v16 = 12;
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v5 = [definitionCopy objectForKeyedSubscript:@"name"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 138543362;
      *&v23[4] = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "The name (%{public}@) isn't a string!", v23, 0xCu);
    }
  }

  v8 = [definitionCopy objectForKeyedSubscript:@"purpose"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v23 = 138543618;
      *&v23[4] = v5;
      *&v23[12] = 2114;
      *&v23[14] = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "The purpose (%{public}@) number (%{public}@) in the definition isn't a number!", v23, 0x16u);
    }

    goto LABEL_22;
  }

  integerValue = [v8 integerValue];
  v10 = [definitionCopy objectForKeyedSubscript:@"dest"];
  v11 = v10;
  if ((integerValue & 0x8000000000000000) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [NSURL URLWithString:v11];
      if (v12)
      {
LABEL_31:

        goto LABEL_32;
      }

      v13 = APLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 138543618;
        *&v23[4] = v5;
        *&v23[12] = 2114;
        *&v23[14] = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "The purpose (%{public}@) destination (%{public}@) can not be converted to a URL!", v23, 0x16u);
      }

LABEL_30:
      isKindOfClass = 0;
      goto LABEL_31;
    }

    v12 = APLogForCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *v23 = 138543618;
    *&v23[4] = v5;
    *&v23[12] = 2114;
    *&v23[14] = v11;
    v20 = "The purpose (%{public}@) destination (%{public}@) in the definition isn't a String!";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v20, v23, 0x16u);
    goto LABEL_30;
  }

  if (v10)
  {
    v12 = APLogForCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *v23 = 138543618;
    *&v23[4] = v5;
    *&v23[12] = 2114;
    *&v23[14] = v11;
    v20 = "The purpose (%{public}@) has a destination (%{public}@) when it shouldn't!";
    goto LABEL_29;
  }

LABEL_32:
  v21 = [definitionCopy objectForKeyedSubscript:{@"metrics", *v23, *&v23[16]}];
  v18 = isKindOfClass & [(APMetricPurpose *)self _validateMetric:v5 withMetrics:v21];
  if ((v18 & 1) == 0)
  {
    v22 = APLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 138543362;
      *&v23[4] = definitionCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "There were type errors in the purpose definition: %{public}@", v23, 0xCu);
    }
  }

LABEL_23:
  return v18;
}

- (id)_metricsByNumber:(id)number
{
  numberCopy = number;
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [numberCopy count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = numberCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [v11 objectForKeyedSubscript:@"value"];
        v13 = [v11 objectForKeyedSubscript:@"dnu"];
        if (v13)
        {
          [NSDictionary dictionaryWithObjectsAndKeys:v10, @"name", v13, @"dnu", 0, v19];
        }

        else
        {
          [NSDictionary dictionaryWithObjectsAndKeys:v10, @"name", 0, v17, v18, v19];
        }
        v14 = ;
        [v4 setObject:v14 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = [NSDictionary dictionaryWithDictionary:v4];

  return v15;
}

- (APMetricPurpose)initWithPurposeJSON:(id)n
{
  v11 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = [NSString stringWithFormat:@"Error parsing purpose JSON data: %@", v5];
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error parsing purpose JSON data: %{public}@", buf, 0xCu);
    }

    APSimulateCrash();
    goto LABEL_5;
  }

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self = [(APMetricPurpose *)self initWithPurposeDefinition:v4];
      selfCopy = self;
      goto LABEL_6;
    }

    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Parsed purpose definition isn't a dictionary!";
      goto LABEL_14;
    }
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Parsed purpose definition is nil!";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }
  }

LABEL_5:

  selfCopy = 0;
LABEL_6:

  return selfCopy;
}

- (APMetricPurpose)initWithPurposeDefinition:(id)definition
{
  definitionCopy = definition;
  v5 = [definitionCopy objectForKeyedSubscript:@"purpose"];
  integerValue = [v5 integerValue];

  v7 = [APMetricPurposeRegistry metricRouteForPurpose:integerValue];
  if (v7)
  {
    v8 = [NSString stringWithFormat:@"Metric Route (%d) should not be created more than once, exiting!", integerValue];
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v27 = integerValue;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Metric Route (%d) should not be created more than once, exiting!", buf, 8u);
    }

    APSimulateCrash();
  }

  if ([(APMetricPurpose *)self _validateRouteDefinition:definitionCopy])
  {
    v25.receiver = self;
    v25.super_class = APMetricPurpose;
    v10 = [(APMetricPurpose *)&v25 init];
    if (v10)
    {
      v11 = [definitionCopy objectForKeyedSubscript:@"name"];
      name = v10->_name;
      v10->_name = v11;

      v13 = [definitionCopy objectForKeyedSubscript:@"purpose"];
      v10->_purpose = [v13 integerValue];

      v14 = [APDestination alloc];
      v15 = [definitionCopy objectForKeyedSubscript:@"dest"];
      v16 = [(APDestination *)v14 initWithString:v15];
      destination = v10->_destination;
      v10->_destination = v16;

      v18 = [[APEventChannel alloc] initWithDestination:v10->_destination purpose:v10->_purpose];
      channel = v10->_channel;
      v10->_channel = v18;

      v20 = [definitionCopy objectForKeyedSubscript:@"metrics"];
      v21 = [(APMetricPurpose *)v10 _metricsByNumber:v20];
      metrics = v10->_metrics;
      v10->_metrics = v21;

      [APMetricPurposeRegistry setMetricPurpose:v10];
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)metricIsDefined:(int64_t)defined
{
  v4 = [NSNumber numberWithInteger:defined];
  v5 = [(NSDictionary *)self->_metrics objectForKeyedSubscript:v4];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (BOOL)metricIsDiagnosticsAndUsage:(int64_t)usage
{
  v4 = [NSNumber numberWithInteger:usage];
  v5 = [(NSDictionary *)self->_metrics objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:@"dnu"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)metricIsDisabled:(int64_t)disabled
{
  v4 = [NSNumber numberWithInteger:disabled];
  v5 = [(NSDictionary *)self->_metrics objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:@"disabled"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (id)stringForMetric:(int64_t)metric
{
  v4 = [NSNumber numberWithInteger:metric];
  v5 = [(NSDictionary *)self->_metrics objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:@"name"];

  return v6;
}

@end