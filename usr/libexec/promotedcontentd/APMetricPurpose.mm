@interface APMetricPurpose
- (APMetricPurpose)initWithPurposeDefinition:(id)a3;
- (APMetricPurpose)initWithPurposeJSON:(id)a3;
- (BOOL)_validateMetric:(id)a3 forKey:(id)a4 fromDictionary:(id)a5;
- (BOOL)_validateMetric:(id)a3 withMetrics:(id)a4;
- (BOOL)_validateRouteDefinition:(id)a3;
- (BOOL)metricIsDefined:(int64_t)a3;
- (BOOL)metricIsDiagnosticsAndUsage:(int64_t)a3;
- (BOOL)metricIsDisabled:(int64_t)a3;
- (id)_metricsByNumber:(id)a3;
- (id)stringForMetric:(int64_t)a3;
@end

@implementation APMetricPurpose

- (BOOL)_validateMetric:(id)a3 forKey:(id)a4 fromDictionary:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 objectForKeyedSubscript:@"value"];
    v11 = [v9 objectForKeyedSubscript:@"dnu"];
    v12 = [v9 objectForKeyedSubscript:@"disabled"];
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
          v19 = v7;
          v20 = 2114;
          v21 = v8;
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
            v19 = v7;
            v20 = 2114;
            v21 = v8;
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
            v19 = v7;
            v20 = 2114;
            v21 = v8;
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
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "The purpose (%{public}@) value for metric (%{public}@) isn't a dictionary!", &v18, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)_validateMetric:(id)a3 withMetrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v6;
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
      v25 = v6;
      v17 = "The purpose (%{public}@) metrics in the definition isn't a dictionary!";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = v7;
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
            v25 = v6;
            v26 = 2114;
            v27 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The purpose (%{public}@) has a metric key (%{public}@) that is not a string!", buf, 0x16u);
          }

          v12 = 0;
        }

        v16 = [v8 objectForKeyedSubscript:v14];
        v12 &= [(APMetricPurpose *)self _validateMetric:v6 forKey:v14 fromDictionary:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v10);
    v7 = v19;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

LABEL_21:

  return v12;
}

- (BOOL)_validateRouteDefinition:(id)a3
{
  v4 = a3;
  if (!v4)
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
      *&v23[4] = v4;
      v14 = "The purpose definition is not a dictionary! %{public}@";
      v15 = v5;
      v16 = 12;
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v5 = [v4 objectForKeyedSubscript:@"name"];
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

  v8 = [v4 objectForKeyedSubscript:@"purpose"];
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

  v9 = [v8 integerValue];
  v10 = [v4 objectForKeyedSubscript:@"dest"];
  v11 = v10;
  if ((v9 & 0x8000000000000000) == 0)
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
  v21 = [v4 objectForKeyedSubscript:{@"metrics", *v23, *&v23[16]}];
  v18 = isKindOfClass & [(APMetricPurpose *)self _validateMetric:v5 withMetrics:v21];
  if ((v18 & 1) == 0)
  {
    v22 = APLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 138543362;
      *&v23[4] = v4;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "There were type errors in the purpose definition: %{public}@", v23, 0xCu);
    }
  }

LABEL_23:
  return v18;
}

- (id)_metricsByNumber:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
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

- (APMetricPurpose)initWithPurposeJSON:(id)a3
{
  v11 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v11];
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
      v8 = self;
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

  v8 = 0;
LABEL_6:

  return v8;
}

- (APMetricPurpose)initWithPurposeDefinition:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"purpose"];
  v6 = [v5 integerValue];

  v7 = [APMetricPurposeRegistry metricRouteForPurpose:v6];
  if (v7)
  {
    v8 = [NSString stringWithFormat:@"Metric Route (%d) should not be created more than once, exiting!", v6];
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Metric Route (%d) should not be created more than once, exiting!", buf, 8u);
    }

    APSimulateCrash();
  }

  if ([(APMetricPurpose *)self _validateRouteDefinition:v4])
  {
    v25.receiver = self;
    v25.super_class = APMetricPurpose;
    v10 = [(APMetricPurpose *)&v25 init];
    if (v10)
    {
      v11 = [v4 objectForKeyedSubscript:@"name"];
      name = v10->_name;
      v10->_name = v11;

      v13 = [v4 objectForKeyedSubscript:@"purpose"];
      v10->_purpose = [v13 integerValue];

      v14 = [APDestination alloc];
      v15 = [v4 objectForKeyedSubscript:@"dest"];
      v16 = [(APDestination *)v14 initWithString:v15];
      destination = v10->_destination;
      v10->_destination = v16;

      v18 = [[APEventChannel alloc] initWithDestination:v10->_destination purpose:v10->_purpose];
      channel = v10->_channel;
      v10->_channel = v18;

      v20 = [v4 objectForKeyedSubscript:@"metrics"];
      v21 = [(APMetricPurpose *)v10 _metricsByNumber:v20];
      metrics = v10->_metrics;
      v10->_metrics = v21;

      [APMetricPurposeRegistry setMetricPurpose:v10];
    }

    self = v10;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)metricIsDefined:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [(NSDictionary *)self->_metrics objectForKeyedSubscript:v4];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (BOOL)metricIsDiagnosticsAndUsage:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [(NSDictionary *)self->_metrics objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:@"dnu"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)metricIsDisabled:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [(NSDictionary *)self->_metrics objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:@"disabled"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (id)stringForMetric:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [(NSDictionary *)self->_metrics objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:@"name"];

  return v6;
}

@end