@interface APEventStorageProcessor
- (APEventStorageProcessor)initWithDatabase:(id)database;
- (BOOL)_createAdInstanceRowForMetric:(id)metric accountToken:(id)token;
- (BOOL)_preProcessDaemonReceivedMetric:(id)metric accountToken:(id)token;
- (BOOL)_preProcessInterfacePlacedMetric:(id)metric accountToken:(id)token;
- (BOOL)_preProcessInternalConversionMetric:(id)metric accountToken:(id)token;
- (id)_adInstanceForMetric:(id)metric accountToken:(id)token;
- (void)processMetric:(id)metric accountToken:(id)token;
@end

@implementation APEventStorageProcessor

- (APEventStorageProcessor)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = APEventStorageProcessor;
  v6 = [(APEventStorageProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
  }

  return v7;
}

- (void)processMetric:(id)metric accountToken:(id)token
{
  metricCopy = metric;
  if ([(APEventStorageProcessor *)self _createAdInstanceRowForMetric:metricCopy accountToken:token])
  {
    database = [(APEventStorageProcessor *)self database];
    v8 = [database getTableForClass:objc_opt_class()];

    if (v8)
    {
      if (([v8 insertMetric:metricCopy] & 1) == 0)
      {
        v9 = APLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          metric = [metricCopy metric];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to store metric %ld in ActionsStore.", buf, 0xCu);
        }

        v10 = [metricCopy description];
        v14 = v10;
        v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
        CreateDiagnosticReport();
      }
    }

    else
    {
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to get ActionsStore event table.", buf, 2u);
      }

      CreateDiagnosticReport();
    }
  }
}

- (BOOL)_createAdInstanceRowForMetric:(id)metric accountToken:(id)token
{
  metricCopy = metric;
  tokenCopy = token;
  if ([metricCopy purpose] != 100 || objc_msgSend(metricCopy, "metric") != 1000)
  {
    v9 = objc_alloc_init(APLegacyFeatureFlags);
    if ([v9 devicePipelinesEnabled] && objc_msgSend(metricCopy, "purpose") == -9000 && objc_msgSend(metricCopy, "metric") == 9100)
    {
      v10 = [(APEventStorageProcessor *)self _preProcessInternalConversionMetric:metricCopy accountToken:tokenCopy];
    }

    else
    {
      if ([metricCopy purpose] != 100 || objc_msgSend(metricCopy, "metric") != 1403)
      {
        v11 = [(APEventStorageProcessor *)self _adInstanceForMetric:metricCopy accountToken:tokenCopy];
        v8 = v11 != 0;

        goto LABEL_13;
      }

      v10 = [(APEventStorageProcessor *)self _preProcessInterfacePlacedMetric:metricCopy accountToken:tokenCopy];
    }

    v8 = v10;
LABEL_13:

    goto LABEL_14;
  }

  v8 = [(APEventStorageProcessor *)self _preProcessDaemonReceivedMetric:metricCopy accountToken:tokenCopy];
LABEL_14:

  return v8;
}

- (BOOL)_preProcessDaemonReceivedMetric:(id)metric accountToken:(id)token
{
  metricCopy = metric;
  tokenCopy = token;
  internalProperties = [metricCopy internalProperties];

  if (internalProperties)
  {
    v9 = [(APEventStorageProcessor *)self _adInstanceForMetric:metricCopy accountToken:tokenCopy];
    if (v9)
    {
      internalProperties2 = [metricCopy internalProperties];
      v11 = [internalProperties2 objectForKey:kAPMetricSubscriptionIdentifier];
      [v9 setAdamId:v11];

      v12 = [internalProperties2 objectForKey:kAPMetadataIdentifier];
      [v9 setAdMetadata:v12];

      bundleIdentifier = [metricCopy bundleIdentifier];
      [v9 setBundleId:bundleIdentifier];

      updateNotNilColumns = [v9 updateNotNilColumns];
    }

    else
    {
      updateNotNilColumns = 0;
    }
  }

  else
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Journey received DaemonReceived metric doesn't have internal properties.", v19, 2u);
    }

    v20 = @"apMetric";
    v16 = [metricCopy description];
    v21 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    CreateDiagnosticReport();

    updateNotNilColumns = 0;
  }

  return updateNotNilColumns;
}

- (BOOL)_preProcessInternalConversionMetric:(id)metric accountToken:(id)token
{
  metricCopy = metric;
  tokenCopy = token;
  properties = [metricCopy properties];

  if (properties)
  {
    v9 = [(APEventStorageProcessor *)self _adInstanceForMetric:metricCopy accountToken:tokenCopy];
    if (!v9)
    {
      updateNotNilColumns = 0;
      goto LABEL_13;
    }

    properties2 = [metricCopy properties];
    v11 = [properties2 objectForKey:@"itemID"];
    if (!v11)
    {
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        metric = [metricCopy metric];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Conversion Signal metric %ld doesn't have adamId.", buf, 0xCu);
      }

      v13 = [metricCopy description];
      v20 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      CreateDiagnosticReport();
    }

    stringValue = [v11 stringValue];
    [v9 setAdamId:stringValue];

    updateNotNilColumns = [v9 updateNotNilColumns];
  }

  else
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Conversion Signal metric doesn't have properties.", buf, 2u);
    }

    v23 = @"apMetric";
    v9 = [metricCopy description];
    v24 = v9;
    properties2 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    CreateDiagnosticReport();
    updateNotNilColumns = 0;
  }

LABEL_13:
  return updateNotNilColumns;
}

- (BOOL)_preProcessInterfacePlacedMetric:(id)metric accountToken:(id)token
{
  metricCopy = metric;
  tokenCopy = token;
  properties = [metricCopy properties];

  if (properties)
  {
    v9 = [(APEventStorageProcessor *)self _adInstanceForMetric:metricCopy accountToken:tokenCopy];
    if (v9)
    {
      properties2 = [metricCopy properties];
      v11 = [properties2 objectForKeyedSubscript:kAPMetricPlacementType];

      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setAdType:v11];
        }
      }

      properties3 = [metricCopy properties];
      v13 = [properties3 objectForKeyedSubscript:kAPMetricFormat];

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setAdFormatType:v13];
        }
      }

      properties4 = [metricCopy properties];
      v15 = [properties4 objectForKeyedSubscript:kAPMetricContainer];

      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setContainerType:v15];
        }
      }

      updateNotNilColumns = [v9 updateNotNilColumns];
    }

    else
    {
      updateNotNilColumns = 0;
    }
  }

  else
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Journey received InterfacePlaced metric doesn't have properties.", v21, 2u);
    }

    v22 = @"apMetric";
    v18 = [metricCopy description];
    v23 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    CreateDiagnosticReport();

    updateNotNilColumns = 0;
  }

  return updateNotNilColumns;
}

- (id)_adInstanceForMetric:(id)metric accountToken:(id)token
{
  metricCopy = metric;
  tokenCopy = token;
  database = [(APEventStorageProcessor *)self database];
  v9 = [database getTableForClass:objc_opt_class()];

  if (v9)
  {
    secondaryHandle = [metricCopy secondaryHandle];
    if (!secondaryHandle)
    {
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Secondary Handle is nil, falling back to handle for impressionId.", v15, 2u);
      }

      secondaryHandle = [metricCopy handle];
    }

    v12 = [v9 insertOrIgnoreAdInstanceForImpressionId:secondaryHandle accountToken:tokenCopy];
  }

  else
  {
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to get ActionsStore AdInstance table.", buf, 2u);
    }

    CreateDiagnosticReport();
    v12 = 0;
  }

  return v12;
}

@end