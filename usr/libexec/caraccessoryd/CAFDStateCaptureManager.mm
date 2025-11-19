@interface CAFDStateCaptureManager
- (CAFCarConfiguration)currentCarConfiguration;
- (CAFDStateCaptureManager)init;
- (CAFDStateCaptureManagerDelegate)delegate;
- (id)accessoryConfigForPluginID:(id)a3 instanceID:(id)a4;
- (id)carConfigSummary;
- (id)stateCaptureForPluginID:(id)a3;
- (id)valueCaptureIIDsFromAccessoryConfig:(id)a3;
- (void)carConfigDidUpdate;
- (void)setCurrentCarConfiguration:(id)a3;
@end

@implementation CAFDStateCaptureManager

- (CAFDStateCaptureManager)init
{
  v18.receiver = self;
  v18.super_class = CAFDStateCaptureManager;
  v2 = [(CAFDStateCaptureManager *)&v18 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pluginStateCaptures = v2->_pluginStateCaptures;
    v2->_pluginStateCaptures = v3;

    v5 = objc_opt_new();
    accessoryConfigs = v2->_accessoryConfigs;
    v2->_accessoryConfigs = v5;

    objc_initWeak(&location, v2);
    v7 = [CAFStateCapture alloc];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __31__CAFDStateCaptureManager_init__block_invoke;
    v15[3] = &unk_100055200;
    objc_copyWeak(&v16, &location);
    v8 = [v7 initWithIdentifier:@"Notification Registrations" capture:v15];
    [(CAFDStateCaptureManager *)v2 setRegistrationsStateCapture:v8];

    v9 = [CAFStateCapture alloc];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __31__CAFDStateCaptureManager_init__block_invoke_2;
    v13[3] = &unk_100055200;
    objc_copyWeak(&v14, &location);
    v10 = [v9 initWithIdentifier:@"Car" capture:v13];
    [(CAFDStateCaptureManager *)v2 setCarStateCapture:v10];

    v11 = CAFStateCaptureLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(CAFDStateCaptureManager *)v11 init];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __31__CAFDStateCaptureManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_opt_new();
    v3 = [WeakRetained delegate];
    v4 = [v3 pluginCount];

    if (v4)
    {
      v5 = 0;
      do
      {
        v6 = [WeakRetained delegate];
        v7 = [NSNumber numberWithUnsignedInteger:v5];
        v8 = [v6 registrationsForPluginID:v7];
        v9 = [NSNumber numberWithUnsignedInteger:v5];
        [v2 setObject:v8 forKeyedSubscript:v9];

        ++v5;
        v10 = [WeakRetained delegate];
        v11 = [v10 pluginCount];
      }

      while (v5 < v11);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *__31__CAFDStateCaptureManager_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained currentCarConfiguration];
    v4 = v3;
    if (v3)
    {
      v15[0] = @"name";
      v5 = [v3 name];
      v6 = v5;
      v7 = @"Unknown Name";
      if (v5)
      {
        v7 = v5;
      }

      v16[0] = v7;
      v15[1] = @"uniqueIdentifier";
      v8 = [v4 uniqueIdentifier];
      v9 = [v8 UUIDString];
      v16[1] = v9;
      v15[2] = @"pluginCount";
      v10 = [v2 delegate];
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 pluginCount]);
      v16[2] = v11;
      v15[3] = @"configs";
      v12 = [v2 carConfigSummary];
      v16[3] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
    }

    else
    {
      v13 = @"No Car";
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setCurrentCarConfiguration:(id)a3
{
  objc_storeWeak(&self->_currentCarConfiguration, a3);

  [(CAFDStateCaptureManager *)self carConfigDidUpdate];
}

- (void)carConfigDidUpdate
{
  v3 = [a1 pluginStateCaptures];
  v4 = [v3 allKeys];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = 136315394;
  v7 = "[CAFDStateCaptureManager carConfigDidUpdate]";
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s fired, capturing [%@]", &v6, 0x16u);
}

- (id)stateCaptureForPluginID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  objc_opt_class();
  v6 = [(CAFDStateCaptureManager *)self currentCarConfiguration];
  v7 = [v6 pluginConfigs];
  v8 = [v7 objectForKeyedSubscript:v4];
  v9 = [v8 objectForKeyedSubscript:kCarDataConfigurationAccessoriesKey];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __51__CAFDStateCaptureManager_stateCaptureForPluginID___block_invoke;
  v16[3] = &unk_100055250;
  v16[4] = self;
  v17 = v4;
  v11 = v5;
  v18 = v11;
  v12 = v4;
  [v10 enumerateObjectsUsingBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

void __51__CAFDStateCaptureManager_stateCaptureForPluginID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:kCarDataConfigurationIIDKey];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [CAFCarConfiguration getType:v5];
  v9 = [*(a1 + 32) accessoryConfigs];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 40)];

  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = [*(a1 + 32) accessoryConfigs];
    [v12 setObject:v11 forKeyedSubscript:*(a1 + 40)];
  }

  v13 = [*(a1 + 32) accessoryConfigs];
  v14 = [v13 objectForKeyedSubscript:*(a1 + 40)];
  [v14 setObject:v5 forKeyedSubscript:v7];

  objc_initWeak(location, *(a1 + 32));
  v15 = *(a1 + 48);
  v16 = [CAFStateCapture alloc];
  v17 = [NSString stringWithFormat:@"PluginConfig %@.%@", *(a1 + 40), v7];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __51__CAFDStateCaptureManager_stateCaptureForPluginID___block_invoke_2;
  v29[3] = &unk_100055228;
  objc_copyWeak(&v32, location);
  v30 = *(a1 + 40);
  v18 = v7;
  v31 = v18;
  v19 = [v16 initWithIdentifier:v17 capture:v29];
  [v15 addObject:v19];

  v20 = +[CAFAccessoryTypes stateCaptureValues];
  LODWORD(v17) = [v20 containsObject:v8];

  if (v17)
  {
    v21 = *(a1 + 48);
    v22 = [CAFStateCapture alloc];
    v23 = [NSString stringWithFormat:@"PluginValues %@.%@", *(a1 + 40), v18];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __51__CAFDStateCaptureManager_stateCaptureForPluginID___block_invoke_3;
    v25[3] = &unk_100055228;
    objc_copyWeak(&v28, location);
    v26 = *(a1 + 40);
    v27 = v18;
    v24 = [v22 initWithIdentifier:v23 capture:v25];
    [v21 addObject:v24];

    objc_destroyWeak(&v28);
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(location);
}

id __51__CAFDStateCaptureManager_stateCaptureForPluginID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained accessoryConfigForPluginID:*(a1 + 32) instanceID:*(a1 + 40)];

  return v3;
}

id __51__CAFDStateCaptureManager_stateCaptureForPluginID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained delegate];
  v4 = [*(a1 + 32) unsignedIntegerValue];
  v5 = [WeakRetained accessoryConfigForPluginID:*(a1 + 32) instanceID:*(a1 + 40)];
  v6 = [WeakRetained valueCaptureIIDsFromAccessoryConfig:v5];
  v7 = [v3 valuesForPluginID:v4 iids:v6];

  return v7;
}

- (id)accessoryConfigForPluginID:(id)a3 instanceID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CAFDStateCaptureManager *)self accessoryConfigs];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 objectForKeyedSubscript:v6];

  return v10;
}

- (id)carConfigSummary
{
  v3 = objc_opt_new();
  v4 = [(CAFDStateCaptureManager *)self currentCarConfiguration];
  v5 = [v4 pluginConfigs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __43__CAFDStateCaptureManager_carConfigSummary__block_invoke;
  v8[3] = &unk_1000552A0;
  v6 = v3;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __43__CAFDStateCaptureManager_carConfigSummary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  objc_opt_class();
  v8 = [v5 objectForKeyedSubscript:kCarDataConfigurationAccessoriesKey];

  v9 = v8;
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __43__CAFDStateCaptureManager_carConfigSummary__block_invoke_2;
  v12[3] = &unk_100055278;
  v13 = v7;
  v11 = v7;
  [v10 enumerateObjectsUsingBlock:v12];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v6];
}

void __43__CAFDStateCaptureManager_carConfigSummary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:kCarDataConfigurationIIDKey];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_new();
  objc_opt_class();
  v9 = kCarDataConfigurationServicesKey;
  v10 = [v5 objectForKeyedSubscript:kCarDataConfigurationServicesKey];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __43__CAFDStateCaptureManager_carConfigSummary__block_invoke_3;
  v18 = &unk_100055278;
  v19 = v8;
  v12 = v8;
  [v11 enumerateObjectsUsingBlock:&v15];
  v20[0] = kCarDataConfigurationTypeKey;
  v13 = [CAFCarConfiguration getType:v5, v15, v16, v17, v18];
  v20[1] = v9;
  v21[0] = v13;
  v21[1] = v12;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [*(a1 + 32) setObject:v14 forKeyedSubscript:v7];
}

void __43__CAFDStateCaptureManager_carConfigSummary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:kCarDataConfigurationIIDKey];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_new();
  objc_opt_class();
  v9 = kCarDataConfigurationCharacteristicsKey;
  v10 = [v5 objectForKeyedSubscript:kCarDataConfigurationCharacteristicsKey];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __43__CAFDStateCaptureManager_carConfigSummary__block_invoke_4;
  v18 = &unk_100055278;
  v19 = v8;
  v12 = v8;
  [v11 enumerateObjectsUsingBlock:&v15];
  v20[0] = kCarDataConfigurationTypeKey;
  v13 = [CAFCarConfiguration getType:v5, v15, v16, v17, v18];
  v20[1] = v9;
  v21[0] = v13;
  v21[1] = v12;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [*(a1 + 32) setObject:v14 forKeyedSubscript:v7];
}

void __43__CAFDStateCaptureManager_carConfigSummary__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  v9 = v4;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    v4 = v9;
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:kCarDataConfigurationIIDKey];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [CAFCarConfiguration getType:v5];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

- (id)valueCaptureIIDsFromAccessoryConfig:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_opt_class();
  v5 = [v3 objectForKeyedSubscript:kCarDataConfigurationServicesKey];

  v6 = v5;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __63__CAFDStateCaptureManager_valueCaptureIIDsFromAccessoryConfig___block_invoke;
  v10[3] = &unk_100055278;
  v8 = v4;
  v11 = v8;
  [v7 enumerateObjectsUsingBlock:v10];

  return v8;
}

void __63__CAFDStateCaptureManager_valueCaptureIIDsFromAccessoryConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [CAFCarConfiguration getType:v5];
  v7 = +[CAFServiceTypes stateCaptureValues];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    objc_opt_class();
    v9 = [v5 objectForKeyedSubscript:kCarDataConfigurationCharacteristicsKey];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __63__CAFDStateCaptureManager_valueCaptureIIDsFromAccessoryConfig___block_invoke_2;
    v11[3] = &unk_100055278;
    v12 = *(a1 + 32);
    [v10 enumerateObjectsUsingBlock:v11];
  }
}

void __63__CAFDStateCaptureManager_valueCaptureIIDsFromAccessoryConfig___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  v11 = v4;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }

    v4 = v11;
  }

  else
  {
    v5 = 0;
  }

  v6 = [CAFCarConfiguration getType:v5];
  v7 = +[CAFCharacteristicTypes stateCaptureValues];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    objc_opt_class();
    v9 = [v5 objectForKeyedSubscript:kCarDataConfigurationIIDKey];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [*(a1 + 32) addObject:v10];
  }
}

- (CAFDStateCaptureManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CAFCarConfiguration)currentCarConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_currentCarConfiguration);

  return WeakRetained;
}

@end