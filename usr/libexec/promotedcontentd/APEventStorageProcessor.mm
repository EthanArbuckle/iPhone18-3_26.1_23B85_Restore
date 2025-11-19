@interface APEventStorageProcessor
- (APEventStorageProcessor)initWithDatabase:(id)a3;
- (BOOL)_createAdInstanceRowForMetric:(id)a3 accountToken:(id)a4;
- (BOOL)_preProcessDaemonReceivedMetric:(id)a3 accountToken:(id)a4;
- (BOOL)_preProcessInterfacePlacedMetric:(id)a3 accountToken:(id)a4;
- (BOOL)_preProcessInternalConversionMetric:(id)a3 accountToken:(id)a4;
- (id)_adInstanceForMetric:(id)a3 accountToken:(id)a4;
- (void)processMetric:(id)a3 accountToken:(id)a4;
@end

@implementation APEventStorageProcessor

- (APEventStorageProcessor)initWithDatabase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APEventStorageProcessor;
  v6 = [(APEventStorageProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
  }

  return v7;
}

- (void)processMetric:(id)a3 accountToken:(id)a4
{
  v6 = a3;
  if ([(APEventStorageProcessor *)self _createAdInstanceRowForMetric:v6 accountToken:a4])
  {
    v7 = [(APEventStorageProcessor *)self database];
    v8 = [v7 getTableForClass:objc_opt_class()];

    if (v8)
    {
      if (([v8 insertMetric:v6] & 1) == 0)
      {
        v9 = APLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v16 = [v6 metric];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to store metric %ld in ActionsStore.", buf, 0xCu);
        }

        v10 = [v6 description];
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

- (BOOL)_createAdInstanceRowForMetric:(id)a3 accountToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 purpose] != 100 || objc_msgSend(v6, "metric") != 1000)
  {
    v9 = objc_alloc_init(APLegacyFeatureFlags);
    if ([v9 devicePipelinesEnabled] && objc_msgSend(v6, "purpose") == -9000 && objc_msgSend(v6, "metric") == 9100)
    {
      v10 = [(APEventStorageProcessor *)self _preProcessInternalConversionMetric:v6 accountToken:v7];
    }

    else
    {
      if ([v6 purpose] != 100 || objc_msgSend(v6, "metric") != 1403)
      {
        v11 = [(APEventStorageProcessor *)self _adInstanceForMetric:v6 accountToken:v7];
        v8 = v11 != 0;

        goto LABEL_13;
      }

      v10 = [(APEventStorageProcessor *)self _preProcessInterfacePlacedMetric:v6 accountToken:v7];
    }

    v8 = v10;
LABEL_13:

    goto LABEL_14;
  }

  v8 = [(APEventStorageProcessor *)self _preProcessDaemonReceivedMetric:v6 accountToken:v7];
LABEL_14:

  return v8;
}

- (BOOL)_preProcessDaemonReceivedMetric:(id)a3 accountToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 internalProperties];

  if (v8)
  {
    v9 = [(APEventStorageProcessor *)self _adInstanceForMetric:v6 accountToken:v7];
    if (v9)
    {
      v10 = [v6 internalProperties];
      v11 = [v10 objectForKey:kAPMetricSubscriptionIdentifier];
      [v9 setAdamId:v11];

      v12 = [v10 objectForKey:kAPMetadataIdentifier];
      [v9 setAdMetadata:v12];

      v13 = [v6 bundleIdentifier];
      [v9 setBundleId:v13];

      v14 = [v9 updateNotNilColumns];
    }

    else
    {
      v14 = 0;
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
    v16 = [v6 description];
    v21 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    CreateDiagnosticReport();

    v14 = 0;
  }

  return v14;
}

- (BOOL)_preProcessInternalConversionMetric:(id)a3 accountToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 properties];

  if (v8)
  {
    v9 = [(APEventStorageProcessor *)self _adInstanceForMetric:v6 accountToken:v7];
    if (!v9)
    {
      v16 = 0;
      goto LABEL_13;
    }

    v10 = [v6 properties];
    v11 = [v10 objectForKey:@"itemID"];
    if (!v11)
    {
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v22 = [v6 metric];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Conversion Signal metric %ld doesn't have adamId.", buf, 0xCu);
      }

      v13 = [v6 description];
      v20 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      CreateDiagnosticReport();
    }

    v15 = [v11 stringValue];
    [v9 setAdamId:v15];

    v16 = [v9 updateNotNilColumns];
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
    v9 = [v6 description];
    v24 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    CreateDiagnosticReport();
    v16 = 0;
  }

LABEL_13:
  return v16;
}

- (BOOL)_preProcessInterfacePlacedMetric:(id)a3 accountToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 properties];

  if (v8)
  {
    v9 = [(APEventStorageProcessor *)self _adInstanceForMetric:v6 accountToken:v7];
    if (v9)
    {
      v10 = [v6 properties];
      v11 = [v10 objectForKeyedSubscript:kAPMetricPlacementType];

      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setAdType:v11];
        }
      }

      v12 = [v6 properties];
      v13 = [v12 objectForKeyedSubscript:kAPMetricFormat];

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setAdFormatType:v13];
        }
      }

      v14 = [v6 properties];
      v15 = [v14 objectForKeyedSubscript:kAPMetricContainer];

      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setContainerType:v15];
        }
      }

      v16 = [v9 updateNotNilColumns];
    }

    else
    {
      v16 = 0;
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
    v18 = [v6 description];
    v23 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    CreateDiagnosticReport();

    v16 = 0;
  }

  return v16;
}

- (id)_adInstanceForMetric:(id)a3 accountToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APEventStorageProcessor *)self database];
  v9 = [v8 getTableForClass:objc_opt_class()];

  if (v9)
  {
    v10 = [v6 secondaryHandle];
    if (!v10)
    {
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Secondary Handle is nil, falling back to handle for impressionId.", v15, 2u);
      }

      v10 = [v6 handle];
    }

    v12 = [v9 insertOrIgnoreAdInstanceForImpressionId:v10 accountToken:v7];
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