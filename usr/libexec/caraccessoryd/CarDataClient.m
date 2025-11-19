@interface CarDataClient
+ (int64_t)osStatusFromCarDataError:(unint64_t)a3;
- (CarDataClient)initWithPluginID:(id)a3;
- (CarDataClientDelegate)clientDelegate;
- (id)cachedValueForInstanceID:(id)a3;
- (id)parseValues:(id)a3 errors:(id)a4;
- (int64_t)handleCommand:(id)a3 transactionID:(id)a4 values:(id)a5 errors:(id)a6 priority:(unint64_t)a7;
- (void)addRegistrationFromCache:(id)a3 priority:(id)a4 withResponse:(id)a5;
- (void)cacheValues:(id)a3;
- (void)notifyInstanceID:(id)a3 value:(id)a4 priority:(id)a5;
- (void)readFromCache:(id)a3 priority:(id)a4 withResponse:(id)a5;
- (void)readInstanceIDs:(id)a3 priority:(id)a4 withResponse:(id)a5;
- (void)receiveData:(id)a3 priority:(unint64_t)a4;
- (void)registerAllWithPriority:(id)a3 withResponse:(id)a4;
- (void)registerInstanceIDs:(id)a3 priority:(id)a4 withResponse:(id)a5;
- (void)removeRegistrationFromCache:(id)a3 priority:(id)a4 withResponse:(id)a5;
- (void)requestConfigurationWithPriority:(id)a3 withResponse:(id)a4;
- (void)requestInstanceID:(id)a3 value:(id)a4 priority:(id)a5 withResponse:(id)a6;
- (void)responseInstanceID:(id)a3 error:(id)a4 transactionID:(id)a5 priority:(id)a6;
- (void)responseInstanceID:(id)a3 value:(id)a4 transactionID:(id)a5 priority:(id)a6;
- (void)responseTransactionID:(id)a3 error:(id)a4 priority:(id)a5;
- (void)sendCommand:(id)a3 values:(id)a4 errors:(id)a5 error:(id)a6 transactionID:(id)a7 priority:(id)a8 withResponse:(id)a9;
- (void)sendCommand:(id)a3 values:(id)a4 priority:(id)a5 withResponse:(id)a6;
- (void)unregisterAllWithPriority:(id)a3 withResponse:(id)a4;
- (void)unregisterInstanceIDs:(id)a3 priority:(id)a4 withResponse:(id)a5;
- (void)writeValues:(id)a3 priority:(id)a4 withResponse:(id)a5;
@end

@implementation CarDataClient

- (CarDataClient)initWithPluginID:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = CarDataClient;
  v6 = [(CarDataClient *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pluginID, a3);
    v8 = objc_alloc_init(NSMutableDictionary);
    transactions = v7->_transactions;
    v7->_transactions = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    cachedValues = v7->_cachedValues;
    v7->_cachedValues = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_DEFAULT, 0);

    v14 = dispatch_queue_create("com.apple.caraccessoryd.CarDataClient.Processing", v13);
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v14;
  }

  return v7;
}

- (void)sendCommand:(id)a3 values:(id)a4 priority:(id)a5 withResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (RandomBytes())
  {
    v14 = CAFDClientLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CarDataClient sendCommand:values:priority:withResponse:];
    }
  }

  else
  {
    v14 = [NSNumber numberWithLongLong:0];
    [(CarDataClient *)self sendCommand:v10 values:v11 errors:0 error:0 transactionID:v14 priority:v12 withResponse:v13];
  }
}

- (void)sendCommand:(id)a3 values:(id)a4 errors:(id)a5 error:(id)a6 transactionID:(id)a7 priority:(id)a8 withResponse:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(CarDataClient *)self processingQueue];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __85__CarDataClient_sendCommand_values_errors_error_transactionID_priority_withResponse___block_invoke;
  v30[3] = &unk_100055688;
  v31 = v15;
  v32 = v19;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = self;
  v37 = v20;
  v38 = v21;
  v23 = v21;
  v24 = v20;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v19;
  v29 = v15;
  dispatch_async(v22, v30);
}

void __85__CarDataClient_sendCommand_values_errors_error_transactionID_priority_withResponse___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setObject:*(a1 + 32) forKeyedSubscript:kCarDataProtocolKeyCommand];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:kCarDataProtocolKeyTransactionID];
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:kCarDataProtocolKeyValues];
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:kCarDataProtocolKeyErrors];
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    [v2 setObject:v7 forKeyedSubscript:kCarDataProtocolKeyError];
  }

  v72 = 0;
  v8 = [NSData CAF_encodeCarDataFrom:v2 error:&v72];
  v9 = v72;
  if (v9)
  {
    v10 = CAFDClientLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v46 = *(a1 + 32);
      v47 = [*(a1 + 72) pluginID];
      v48 = *(a1 + 40);
      v49 = *(a1 + 80);
      *buf = 138544386;
      v74 = v46;
      v75 = 2114;
      v76 = v47;
      v77 = 2114;
      v78 = v48;
      v79 = 2114;
      v80 = v49;
      v81 = 2114;
      v82 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to serialize command %{public}@ for pluginID: %{public}@ transactionID: %{public}@ with priority: %{public}@ with error: %{public}@", buf, 0x34u);
    }

    v11 = *(a1 + 88);
    if (v11)
    {
      v12 = [[CAFResponse alloc] initWithError:v9];
      (*(v11 + 16))(v11, v12);
    }

    goto LABEL_35;
  }

  if (v8)
  {
    v13 = [*(a1 + 72) clientDelegate];

    if (!v13)
    {
      v14 = CAFDClientLogging();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v57 = *(a1 + 32);
        v58 = [*(a1 + 72) pluginID];
        v59 = *(a1 + 40);
        v60 = *(a1 + 80);
        *buf = 138544130;
        v74 = v57;
        v75 = 2114;
        v76 = v58;
        v77 = 2114;
        v78 = v59;
        v79 = 2114;
        v80 = v60;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Client delegate for command: %{public}@ pluginID: %{public}@ transactionID: %{public}@ with priority: %{public}@ missing", buf, 0x2Au);
      }

      v15 = *(a1 + 88);
      if (v15)
      {
        v16 = [CAFResponse alloc];
        v17 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:3 userInfo:0];
        v18 = [v16 initWithError:v17];
        (*(v15 + 16))(v15, v18);
      }
    }

    if (*(a1 + 48))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = CAFDClientLogging();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = [*(a1 + 72) pluginID];
          v21 = *(a1 + 32);
          v22 = *(a1 + 40);
          v66 = *(a1 + 80);
          v23 = [*(a1 + 48) count];
          v24 = [*(a1 + 48) componentsJoinedByString:{@", "}];
          *buf = 138544642;
          v74 = v20;
          v75 = 2114;
          v76 = v21;
          v77 = 2114;
          v78 = v22;
          v79 = 2114;
          v80 = v66;
          v81 = 2048;
          v82 = v23;
          v83 = 2114;
          v84 = v24;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Send pluginID: %{public}@ command: %{public}@ transactionID: %{public}@ with priority: %{public}@ values array with %ld entries, [%{public}@]", buf, 0x3Eu);
        }

        goto LABEL_34;
      }

      v37 = *(a1 + 48);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v19 = CAFDClientLogging();
      v39 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (isKindOfClass)
      {
        if (v39)
        {
          v40 = [*(a1 + 72) pluginID];
          v42 = *(a1 + 32);
          v41 = *(a1 + 40);
          v65 = v41;
          v67 = *(a1 + 80);
          v43 = [*(a1 + 48) count];
          v44 = [*(a1 + 48) allKeys];
          v45 = [v44 componentsJoinedByString:{@", "}];
          *buf = 138544642;
          v74 = v40;
          v75 = 2114;
          v76 = v42;
          v77 = 2114;
          v78 = v65;
          v79 = 2114;
          v80 = v67;
          v81 = 2048;
          v82 = v43;
          v83 = 2114;
          v84 = v45;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Send pluginID: %{public}@ command: %{public}@ transactionID: %{public}@ with priority: %{public}@ values dictionary with %ld entries, [%{public}@]", buf, 0x3Eu);
        }

        goto LABEL_34;
      }

      if (!v39)
      {
LABEL_34:

        v50 = [*(a1 + 72) clientDelegate];
        v51 = [*(a1 + 72) pluginID];
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = __85__CarDataClient_sendCommand_values_errors_error_transactionID_priority_withResponse___block_invoke_32;
        v68[3] = &unk_100055660;
        v52 = *(a1 + 80);
        v68[4] = *(a1 + 72);
        v69 = *(a1 + 40);
        v70 = *(a1 + 80);
        v71 = *(a1 + 88);
        [v50 sendToPluginID:v51 payload:v8 priority:v52 completion:v68];

        goto LABEL_35;
      }

      v30 = [*(a1 + 72) pluginID];
      v61 = *(a1 + 32);
      v62 = *(a1 + 40);
      v63 = *(a1 + 80);
      v64 = *(a1 + 48);
      *buf = 138544386;
      v74 = v30;
      v75 = 2114;
      v76 = v61;
      v77 = 2114;
      v78 = v62;
      v79 = 2114;
      v80 = v63;
      v81 = 2114;
      v82 = v64;
      v34 = "Send pluginID: %{public}@ command: %{public}@ transactionID: %{public}@ with priority: %{public}@ values: %{public}@";
      v35 = v19;
      v36 = 52;
    }

    else
    {
      v19 = CAFDClientLogging();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_34;
      }

      v30 = [*(a1 + 72) pluginID];
      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      v33 = *(a1 + 80);
      *buf = 138544130;
      v74 = v30;
      v75 = 2114;
      v76 = v31;
      v77 = 2114;
      v78 = v32;
      v79 = 2114;
      v80 = v33;
      v34 = "Send pluginID: %{public}@ command: %{public}@ transactionID: %{public}@ with priority: %{public}@ without values";
      v35 = v19;
      v36 = 42;
    }

    _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, v34, buf, v36);

    goto LABEL_34;
  }

  v25 = CAFDClientLogging();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v53 = *(a1 + 32);
    v54 = [*(a1 + 72) pluginID];
    v55 = *(a1 + 40);
    v56 = *(a1 + 80);
    *buf = 138544130;
    v74 = v53;
    v75 = 2114;
    v76 = v54;
    v77 = 2114;
    v78 = v55;
    v79 = 2114;
    v80 = v56;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to package command %{public}@ for pluginID: %{public}@ transactionID: %{public}@ with priority: %{public}@", buf, 0x2Au);
  }

  v26 = *(a1 + 88);
  if (v26)
  {
    v27 = [CAFResponse alloc];
    v28 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:3 userInfo:0];
    v29 = [v27 initWithError:v28];
    (*(v26 + 16))(v26, v29);
  }

LABEL_35:
}

void __85__CarDataClient_sendCommand_values_errors_error_transactionID_priority_withResponse___block_invoke_32(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __85__CarDataClient_sendCommand_values_errors_error_transactionID_priority_withResponse___block_invoke_2;
  block[3] = &unk_1000553E0;
  v12 = v3;
  v10 = *(a1 + 2);
  v5 = *(&v10 + 1);
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

void __85__CarDataClient_sendCommand_values_errors_error_transactionID_priority_withResponse___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = CAFDClientLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __85__CarDataClient_sendCommand_values_errors_error_transactionID_priority_withResponse___block_invoke_2_cold_1(a1);
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      v4 = [[CAFResponse alloc] initWithError:*(a1 + 32)];
      (*(v3 + 16))(v3, v4);
    }
  }

  else
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      v7 = objc_retainBlock(v5);
      v6 = [*(a1 + 40) transactions];
      [v6 setObject:v7 forKeyedSubscript:*(a1 + 48)];
    }
  }
}

- (id)parseValues:(id)a3 errors:(id)a4
{
  v6 = a4;
  v7 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __36__CarDataClient_parseValues_errors___block_invoke;
  v15[3] = &unk_1000556B0;
  v15[4] = self;
  v8 = objc_alloc_init(NSMutableDictionary);
  v16 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v15];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __36__CarDataClient_parseValues_errors___block_invoke_38;
  v13[3] = &unk_1000556B0;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __36__CarDataClient_parseValues_errors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = v5;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = +[NSNull null];
    if ([v6 isEqual:v8])
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;

    v11 = [[CAFCharacteristicValue alloc] initWithValue:v10 error:0];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];

    v12 = v7;
  }

  else
  {

    v12 = CAFDLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __36__CarDataClient_parseValues_errors___block_invoke_cold_1();
    }
  }
}

void __36__CarDataClient_parseValues_errors___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = v5;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = [v8 integerValue];
      if (v9)
      {
        v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v9 userInfo:0];
        v11 = CAFDLogging();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v17 = [*(a1 + 32) pluginID];
          v18 = 138543874;
          v19 = v17;
          v20 = 2114;
          v21 = v7;
          v22 = 2114;
          v23 = v8;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Received characteristic value from pluginID: %{public}@ instanceID: %{public}@ with error %{public}@", &v18, 0x20u);
        }
      }

      else
      {
        v10 = 0;
      }

      v14 = [[CAFCharacteristicValue alloc] initWithValue:0 error:v10];
      [*(a1 + 40) setObject:v14 forKeyedSubscript:v7];
    }

    else
    {

      v13 = CAFDLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = [*(a1 + 32) pluginID];
        v18 = 138543874;
        v19 = v15;
        v20 = 2114;
        v21 = v7;
        v22 = 2114;
        v23 = objc_opt_class();
        v16 = v23;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Parsing characteristic value from pluginID: %{public}@ instanceID: %{public}@ failed with wrong error data type %{public}@", &v18, 0x20u);
      }

      v8 = v13;
    }

    v12 = v7;
  }

  else
  {

    v12 = CAFDLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __36__CarDataClient_parseValues_errors___block_invoke_cold_1();
    }
  }
}

- (void)cacheValues:(id)a3
{
  if (self->_cachedValues)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = __29__CarDataClient_cacheValues___block_invoke;
    v3[3] = &unk_1000556D8;
    v3[4] = self;
    [a3 enumerateKeysAndObjectsUsingBlock:v3];
  }
}

void __29__CarDataClient_cacheValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 cachedValues];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [v11 value];
    [v8 setValue:v9];

    v10 = [v11 error];
    [v8 setError:v10];
  }
}

- (void)addRegistrationFromCache:(id)a3 priority:(id)a4 withResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CarDataClient *)self processingQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __64__CarDataClient_addRegistrationFromCache_priority_withResponse___block_invoke;
  v15[3] = &unk_1000555D0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __64__CarDataClient_addRegistrationFromCache_priority_withResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedValues];
  if (v2 && (v3 = v2, [*(a1 + 32) clientDelegate], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = objc_alloc_init(NSMutableArray);
    v7 = objc_alloc_init(NSMutableDictionary);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __64__CarDataClient_addRegistrationFromCache_priority_withResponse___block_invoke_2;
    v26[3] = &unk_100055700;
    v8 = *(a1 + 40);
    v26[4] = *(a1 + 32);
    v9 = v7;
    v27 = v9;
    v10 = v5;
    v28 = v10;
    v11 = v6;
    v29 = v11;
    [v8 enumerateObjectsUsingBlock:v26];
    v12 = CAFDClientLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v20 = [*(a1 + 32) pluginID];
      v25 = [*(a1 + 40) count];
      v21 = [v11 count];
      v22 = [v11 componentsJoinedByString:{@", "}];
      v23 = [v10 count];
      v24 = [v10 componentsJoinedByString:{@", "}];
      *buf = 138544642;
      v31 = v20;
      v32 = 2048;
      v33 = v25;
      v34 = 2048;
      v35 = v21;
      v36 = 2114;
      v37 = v22;
      v38 = 2048;
      v39 = v23;
      v40 = 2114;
      v41 = v24;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Add registration from cache pluginID: %{public}@ total: %ld cached: %ld [%{public}@] missing: %ld [%{public}@]", buf, 0x3Eu);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = [[CAFResponse alloc] initWithValues:v9];
      (*(v13 + 16))(v13, v14);
    }

    if ([v10 count])
    {
      [*(a1 + 32) sendCommand:kCarDataProtocolCmdKeyRegisterRequest values:v10 priority:*(a1 + 48) withResponse:*(a1 + 56)];
    }
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = kCarDataProtocolCmdKeyRegisterRequest;

    [v15 sendCommand:v19 values:v16 priority:v17 withResponse:v18];
  }
}

void __64__CarDataClient_addRegistrationFromCache_priority_withResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) cachedValues];
  v4 = [v3 objectForKeyedSubscript:v9];

  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v9];
    v5 = 56;
  }

  else
  {
    v6 = [[CAFCharacteristicValue alloc] initWithValue:0 error:0];
    v7 = [*(a1 + 32) cachedValues];
    [v7 setObject:v6 forKeyedSubscript:v9];

    v8 = +[NSNull null];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];

    v5 = 48;
  }

  [*(a1 + v5) addObject:v9];
}

- (void)removeRegistrationFromCache:(id)a3 priority:(id)a4 withResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CarDataClient *)self processingQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __67__CarDataClient_removeRegistrationFromCache_priority_withResponse___block_invoke;
  v15[3] = &unk_1000555D0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __67__CarDataClient_removeRegistrationFromCache_priority_withResponse___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) cachedValues];
  if (v3 && (v4 = v3, [*v2 clientDelegate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = CAFDClientLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __67__CarDataClient_removeRegistrationFromCache_priority_withResponse___block_invoke_cold_1();
    }

    v7 = *(a1 + 40);
    if (v7 && [v7 count])
    {
      v8 = CAFDClientLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v17 = [*(a1 + 32) pluginID];
        v18 = [*(a1 + 40) count];
        v19 = *(a1 + 48);
        v20 = 138543874;
        v21 = v17;
        v22 = 2048;
        v23 = v18;
        v24 = 2114;
        v25 = v19;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Remove registration pluginID: %{public}@ instanceID count: %ld with priority: %{public}@", &v20, 0x20u);
      }

      v9 = [*(a1 + 32) cachedValues];
      [v9 removeObjectsForKeys:*(a1 + 40)];

      [*(a1 + 32) sendCommand:kCarDataProtocolCmdKeyUnregisterRequest values:*(a1 + 40) priority:*(a1 + 48) withResponse:*(a1 + 56)];
    }

    else
    {
      v15 = *(a1 + 56);
      if (v15)
      {
        v16 = [[CAFResponse alloc] initWithValuesAndError:0 error:0];
        (*(v15 + 16))(v15, v16);
      }
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = kCarDataProtocolCmdKeyUnregisterRequest;

    [v10 sendCommand:v14 values:v11 priority:v12 withResponse:v13];
  }
}

- (void)readFromCache:(id)a3 priority:(id)a4 withResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CarDataClient *)self processingQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __53__CarDataClient_readFromCache_priority_withResponse___block_invoke;
  v15[3] = &unk_1000555D0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __53__CarDataClient_readFromCache_priority_withResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedValues];
  if (v2 && (v3 = v2, [*(a1 + 32) clientDelegate], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [[NSMutableArray alloc] initWithArray:*(a1 + 40)];
    v6 = objc_alloc_init(NSMutableDictionary);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __53__CarDataClient_readFromCache_priority_withResponse___block_invoke_2;
    v26[3] = &unk_100055728;
    v7 = *(a1 + 40);
    v26[4] = *(a1 + 32);
    v8 = v6;
    v27 = v8;
    v9 = v5;
    v28 = v9;
    [v7 enumerateObjectsUsingBlock:v26];
    v10 = CAFDClientLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v19 = [*(a1 + 32) pluginID];
      v20 = [*(a1 + 40) count];
      v21 = [v8 count];
      v22 = [v9 count];
      *buf = 138544130;
      v30 = v19;
      v31 = 2048;
      v32 = v20;
      v33 = 2048;
      v34 = v21;
      v35 = 2048;
      v36 = v22;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Read values pluginID: %{public}@ total: %ld from cache: %ld missing: %ld", buf, 0x2Au);
    }

    if ([v8 count])
    {
      v11 = CAFDClientLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v23 = [*(a1 + 32) pluginID];
        v24 = [*(a1 + 40) count];
        v25 = *(a1 + 48);
        *buf = 138543874;
        v30 = v23;
        v31 = 2048;
        v32 = v24;
        v33 = 2114;
        v34 = v25;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Read values pluginID: %{public}@ instanceID count: %ld with priority: %{public}@", buf, 0x20u);
      }

      v12 = *(a1 + 56);
      if (v12)
      {
        v13 = [[CAFResponse alloc] initWithValues:v8];
        (*(v12 + 16))(v12, v13);
      }
    }

    if ([v9 count])
    {
      [*(a1 + 32) sendCommand:kCarDataProtocolCmdKeyReadRequest values:v9 priority:*(a1 + 48) withResponse:*(a1 + 56)];
    }
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = kCarDataProtocolCmdKeyReadRequest;

    [v14 sendCommand:v18 values:v15 priority:v16 withResponse:v17];
  }
}

void __53__CarDataClient_readFromCache_priority_withResponse___block_invoke_2(id *a1, void *a2)
{
  v5 = a2;
  v3 = [a1[4] cachedValues];
  v4 = [v3 objectForKeyedSubscript:v5];

  if (v4)
  {
    [a1[5] setObject:v4 forKeyedSubscript:v5];
    [a1[6] removeObject:v5];
  }
}

- (int64_t)handleCommand:(id)a3 transactionID:(id)a4 values:(id)a5 errors:(id)a6 priority:(unint64_t)a7
{
  v12 = 0xEEEEB0B5B2B2EEEELL;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = CARSignpostLogForCategory();
  v18 = 0xEEEEB0B5B2B2EEEELL;
  if (!self || (CARSignpostLogForCategory(), v19 = objc_claimAutoreleasedReturnValue(), v18 = os_signpost_id_make_with_pointer(v19, self), v19, v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
  {
    if (os_signpost_enabled(v17))
    {
      v20 = [(CarDataClient *)self pluginID];
      *buf = 138543874;
      v124 = v13;
      v125 = 2114;
      v126 = v20;
      v127 = 2114;
      v128 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, v18, "CAFd-RecieveCommand", "%{public}@ plugin: %{public}@ transactionID: %{public}@", buf, 0x20u);
    }
  }

  if ([v13 isEqualToString:kCarDataProtocolCmdKeyUpdateNotify])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v22 = CAFDClientLogging();
    v23 = v22;
    if (isKindOfClass)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v66 = [(CarDataClient *)self pluginID];
        v67 = [v15 count];
        v68 = [v15 allKeys];
        v69 = [v68 componentsJoinedByString:{@", "}];
        *buf = 138544130;
        v124 = v66;
        v125 = 2114;
        v126 = v14;
        v127 = 2048;
        v128 = v67;
        v129 = 2114;
        v130 = v69;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Received pluginID: %{public}@ transactionID: %{public}@ update values count: %lu [%{public}@]", buf, 0x2Au);
      }

      v24 = self;
      v25 = v15;
      v26 = 0;
LABEL_18:
      v28 = [(CarDataClient *)v24 parseValues:v25 errors:v26];
      [(CarDataClient *)self cacheValues:v28];
      WeakRetained = objc_loadWeakRetained(&self->clientDelegate);

      if (!WeakRetained)
      {
LABEL_21:

LABEL_22:
        v32 = 0;
        goto LABEL_142;
      }

      v30 = objc_loadWeakRetained(&self->clientDelegate);
      v31 = [(CarDataClient *)self pluginID];
      [v30 didReceiveUpdateFromPluginID:v31 values:v28];

LABEL_20:
      goto LABEL_21;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v33 = [(CarDataClient *)self pluginID];
      v34 = objc_opt_class();
      *buf = 138543874;
      v124 = v33;
      v125 = 2114;
      v126 = v14;
      v127 = 2114;
      v128 = v34;
      v35 = v34;
      v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong update data type %{public}@";
LABEL_60:
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v36, buf, 0x20u);

      goto LABEL_141;
    }

    goto LABEL_141;
  }

  if ([v13 isEqualToString:kCarDataProtocolCmdKeyRegisterResponse])
  {
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v23 = CAFDClientLogging();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v33 = [(CarDataClient *)self pluginID];
        v45 = objc_opt_class();
        *buf = 138543874;
        v124 = v33;
        v125 = 2114;
        v126 = v14;
        v127 = 2114;
        v128 = v45;
        v35 = v45;
        v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong register response values type %{public}@";
        goto LABEL_60;
      }
    }

    else
    {
      if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v27 = CAFDClientLogging();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v77 = [(CarDataClient *)self pluginID];
          v117 = [v15 count];
          v78 = [v16 count];
          v79 = [v15 allKeys];
          v80 = [v79 componentsJoinedByString:{@", "}];
          *buf = 138544386;
          v124 = v77;
          v125 = 2114;
          v126 = v14;
          v127 = 2048;
          v128 = v117;
          v129 = 2048;
          v130 = v78;
          v131 = 2114;
          v132 = v80;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Received pluginID: %{public}@ transactionID: %{public}@ register response values count: %ld errors count: %ld [%{public}@]", buf, 0x34u);
        }

        v24 = self;
        v25 = v15;
        v26 = v16;
        goto LABEL_18;
      }

      v23 = CAFDClientLogging();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v33 = [(CarDataClient *)self pluginID];
        v52 = objc_opt_class();
        *buf = 138543874;
        v124 = v33;
        v125 = 2114;
        v126 = v14;
        v127 = 2114;
        v128 = v52;
        v35 = v52;
        v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong register response errors type %{public}@";
        goto LABEL_60;
      }
    }

LABEL_141:

    v32 = 8;
    goto LABEL_142;
  }

  if ([v13 isEqualToString:kCarDataProtocolCmdKeyUnregisterResponse])
  {
    v37 = CAFDClientLogging();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [CarDataClient handleCommand:transactionID:values:errors:priority:];
    }

    goto LABEL_28;
  }

  if ([v13 isEqualToString:kCarDataProtocolCmdKeyReadResponse])
  {
    if (v14)
    {
      if (v15)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = CAFDClientLogging();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }

          v33 = [(CarDataClient *)self pluginID];
          v70 = objc_opt_class();
          *buf = 138543874;
          v124 = v33;
          v125 = 2114;
          v126 = v14;
          v127 = 2114;
          v128 = v70;
          v35 = v70;
          v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong read response values type %{public}@";
          goto LABEL_60;
        }
      }

      if (v16)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = CAFDClientLogging();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }

          v33 = [(CarDataClient *)self pluginID];
          v72 = objc_opt_class();
          *buf = 138543874;
          v124 = v33;
          v125 = 2114;
          v126 = v14;
          v127 = 2114;
          v128 = v72;
          v35 = v72;
          v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong read response errors type %{public}@";
          goto LABEL_60;
        }
      }

      v41 = CARSignpostLogForCategory();
      if (!self || (CARSignpostLogForCategory(), v42 = objc_claimAutoreleasedReturnValue(), v12 = os_signpost_id_make_with_pointer(v42, self), v42, v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
      {
        if (os_signpost_enabled(v41))
        {
          v43 = [(CarDataClient *)self pluginID];
          *buf = 138543618;
          v124 = v43;
          v125 = 2114;
          v126 = v14;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_EVENT, v12, "Get", "Receive plugin read response pluginID: %{public}@ transactionID: %{public}@", buf, 0x16u);
        }
      }

      v44 = CAFDClientLogging();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v93 = [(CarDataClient *)self pluginID];
        v116 = [v15 count];
        v118 = [v15 allKeys];
        v94 = [v118 componentsJoinedByString:{@", "}];
        v115 = [v16 count];
        v95 = [v16 allKeys];
        v96 = [v95 componentsJoinedByString:{@", "}];
        *buf = 138544642;
        v124 = v93;
        v125 = 2114;
        v126 = v14;
        v127 = 2048;
        v128 = v116;
        v129 = 2114;
        v130 = v94;
        v131 = 2048;
        v132 = v115;
        v133 = 2114;
        v134 = v96;
        _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Received pluginID: %{public}@ transactionID: %{public}@ read response values count: %ld [%{public}@] errors count: %ld [%{public}@]", buf, 0x3Eu);
      }

      v28 = [(CarDataClient *)self parseValues:v15 errors:v16];
      [(CarDataClient *)self cacheValues:v28];
      goto LABEL_75;
    }

    v60 = CAFDClientLogging();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [CarDataClient handleCommand:? transactionID:? values:? errors:? priority:?];
    }

LABEL_121:

    v32 = 6;
    goto LABEL_142;
  }

  if ([v13 isEqualToString:kCarDataProtocolCmdKeyWriteResponse])
  {
    if (!v14)
    {
      v60 = CAFDClientLogging();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [CarDataClient handleCommand:? transactionID:? values:? errors:? priority:?];
      }

      goto LABEL_121;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = CAFDClientLogging();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_141;
      }

      v33 = [(CarDataClient *)self pluginID];
      v71 = objc_opt_class();
      *buf = 138543874;
      v124 = v33;
      v125 = 2114;
      v126 = v14;
      v127 = 2114;
      v128 = v71;
      v35 = v71;
      v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong write response errors type %{public}@";
      goto LABEL_60;
    }

    v46 = CARSignpostLogForCategory();
    if (!self || (CARSignpostLogForCategory(), v47 = objc_claimAutoreleasedReturnValue(), v12 = os_signpost_id_make_with_pointer(v47, self), v47, v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
    {
      if (os_signpost_enabled(v46))
      {
        v48 = [(CarDataClient *)self pluginID];
        *buf = 138543618;
        v124 = v48;
        v125 = 2114;
        v126 = v14;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, v12, "Set", "Receive plugin write response pluginID: %{public}@ transactionID: %{public}@", buf, 0x16u);
      }
    }

    v49 = CAFDClientLogging();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v99 = [(CarDataClient *)self pluginID];
      v100 = [v16 count];
      v101 = [v16 allKeys];
      v102 = [v101 componentsJoinedByString:{@", "}];
      *buf = 138544130;
      v124 = v99;
      v125 = 2114;
      v126 = v14;
      v127 = 2048;
      v128 = v100;
      v129 = 2114;
      v130 = v102;
      _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Received pluginID: %{public}@ transactionID: %{public}@ write response result count: %ld [%{public}@]", buf, 0x2Au);
    }

    v50 = self;
    v51 = 0;
LABEL_74:
    v28 = [(CarDataClient *)v50 parseValues:v51 errors:v16];
LABEL_75:
    v57 = [(CarDataClient *)self transactions];
    v58 = [v57 objectForKeyedSubscript:v14];

    if (v58)
    {
      v59 = [[CAFResponse alloc] initWithValues:v28];
      (v58)[2](v58, v59);
    }

    goto LABEL_77;
  }

  if ([v13 isEqualToString:kCarDataProtocolCmdKeyControlResponse])
  {
    if (!v14)
    {
      v60 = CAFDClientLogging();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [CarDataClient handleCommand:? transactionID:? values:? errors:? priority:?];
      }

      goto LABEL_121;
    }

    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = CAFDClientLogging();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_141;
        }

        v33 = [(CarDataClient *)self pluginID];
        v85 = objc_opt_class();
        *buf = 138543874;
        v124 = v33;
        v125 = 2114;
        v126 = v14;
        v127 = 2114;
        v128 = v85;
        v35 = v85;
        v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong control response errors type %{public}@";
        goto LABEL_60;
      }
    }

    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = CAFDClientLogging();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_141;
        }

        v33 = [(CarDataClient *)self pluginID];
        v89 = objc_opt_class();
        *buf = 138543874;
        v124 = v33;
        v125 = 2114;
        v126 = v14;
        v127 = 2114;
        v128 = v89;
        v35 = v89;
        v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong control response values type %{public}@";
        goto LABEL_60;
      }
    }

    v53 = CARSignpostLogForCategory();
    if (!self || (CARSignpostLogForCategory(), v54 = objc_claimAutoreleasedReturnValue(), v12 = os_signpost_id_make_with_pointer(v54, self), v54, v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
    {
      if (os_signpost_enabled(v53))
      {
        v55 = [(CarDataClient *)self pluginID];
        *buf = 138543618;
        v124 = v55;
        v125 = 2114;
        v126 = v14;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_EVENT, v12, "Control", "Receive plugin control response pluginID: %{public}@ transactionID: %{public}@", buf, 0x16u);
      }
    }

    v56 = CAFDClientLogging();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v104 = [(CarDataClient *)self pluginID];
      v105 = [v15 count];
      v106 = [v16 count];
      *buf = 138544130;
      v124 = v104;
      v125 = 2114;
      v126 = v14;
      v127 = 2048;
      v128 = v105;
      v129 = 2048;
      v130 = v106;
      _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Received pluginID: %{public}@ transactionID: %{public}@ control response values count: %ld errors count: %ld", buf, 0x2Au);
    }

    v50 = self;
    v51 = v15;
    goto LABEL_74;
  }

  if ([v13 isEqualToString:kCarDataProtocolCmdKeyControlRequest])
  {
    if (!v14)
    {
      v60 = CAFDClientLogging();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [CarDataClient handleCommand:? transactionID:? values:? errors:? priority:?];
      }

      goto LABEL_121;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = CARSignpostLogForCategory();
      if (!self || (CARSignpostLogForCategory(), v62 = objc_claimAutoreleasedReturnValue(), v12 = os_signpost_id_make_with_pointer(v62, self), v62, v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
      {
        if (os_signpost_enabled(v61))
        {
          v63 = [(CarDataClient *)self pluginID];
          *buf = 138543618;
          v124 = v63;
          v125 = 2114;
          v126 = v14;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, OS_SIGNPOST_EVENT, v12, "Control", "Receive plugin control request pluginID: %{public}@ transactionID: %{public}@", buf, 0x16u);
        }
      }

      v64 = CAFDClientLogging();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        v107 = [(CarDataClient *)self pluginID];
        v108 = [v15 count];
        *buf = 138543874;
        v124 = v107;
        v125 = 2114;
        v126 = v14;
        v127 = 2048;
        v128 = v108;
        _os_log_debug_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "Received pluginID: %{public}@ transactionID: %{public}@ control request values count: %ld", buf, 0x20u);
      }

      v65 = objc_loadWeakRetained(&self->clientDelegate);
      if (v65)
      {
        v120[0] = _NSConcreteStackBlock;
        v120[1] = 3221225472;
        v120[2] = __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke;
        v120[3] = &unk_100055778;
        v120[4] = self;
        v121 = v14;
        v122 = a7;
        [v15 enumerateKeysAndObjectsUsingBlock:v120];

        goto LABEL_22;
      }

      v28 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:10 userInfo:0];
      v30 = [NSNumber numberWithUnsignedInteger:a7];
      [(CarDataClient *)self responseTransactionID:v14 error:v28 priority:v30];
      goto LABEL_20;
    }

    v86 = CAFDClientLogging();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v109 = [(CarDataClient *)self pluginID];
      v110 = objc_opt_class();
      *buf = 138543874;
      v124 = v109;
      v125 = 2114;
      v126 = v14;
      v127 = 2114;
      v128 = v110;
      v111 = v110;
      _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "Error pluginID: %{public}@ transactionID: %{public}@ wrong control request values type %{public}@", buf, 0x20u);
    }

    v32 = 8;
    v87 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:8 userInfo:0];
    v88 = [NSNumber numberWithUnsignedInteger:a7];
    [(CarDataClient *)self responseTransactionID:v14 error:v87 priority:v88];
  }

  else if ([v13 isEqualToString:kCarDataProtocolCmdKeyControlNotify])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = CAFDClientLogging();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_141;
      }

      v33 = [(CarDataClient *)self pluginID];
      v90 = objc_opt_class();
      *buf = 138543874;
      v124 = v33;
      v125 = 2114;
      v126 = v14;
      v127 = 2114;
      v128 = v90;
      v35 = v90;
      v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong control notify values type %{public}@";
      goto LABEL_60;
    }

    v73 = CARSignpostLogForCategory();
    if (!self || (CARSignpostLogForCategory(), v74 = objc_claimAutoreleasedReturnValue(), v12 = os_signpost_id_make_with_pointer(v74, self), v74, v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
    {
      if (os_signpost_enabled(v73))
      {
        v75 = [(CarDataClient *)self pluginID];
        *buf = 138543362;
        v124 = v75;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_EVENT, v12, "Control", "Receive plugin control notify pluginID: %{public}@", buf, 0xCu);
      }
    }

    v76 = CAFDClientLogging();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      v112 = [(CarDataClient *)self pluginID];
      v113 = [v15 count];
      *buf = 138543874;
      v124 = v112;
      v125 = 2114;
      v126 = v14;
      v127 = 2048;
      v128 = v113;
      _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "Received pluginID: %{public}@ transactionID: %{public}@ control notify values count: %lu", buf, 0x20u);
    }

    v32 = objc_loadWeakRetained(&self->clientDelegate);
    if (v32)
    {
      v119[0] = _NSConcreteStackBlock;
      v119[1] = 3221225472;
      v119[2] = __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_44;
      v119[3] = &unk_1000557A0;
      v119[4] = self;
      [v15 enumerateKeysAndObjectsUsingBlock:v119];
      goto LABEL_22;
    }
  }

  else
  {
    if ([v13 isEqualToString:kCarDataProtocolCmdKeyConfigResponse])
    {
      objc_opt_class();
      v81 = objc_opt_isKindOfClass();
      v82 = CAFDClientLogging();
      v23 = v82;
      if ((v81 & 1) == 0)
      {
        if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_141;
        }

        v33 = [(CarDataClient *)self pluginID];
        v97 = objc_opt_class();
        *buf = 138543874;
        v124 = v33;
        v125 = 2114;
        v126 = v14;
        v127 = 2114;
        v128 = v97;
        v35 = v97;
        v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong config response values type %{public}@";
        goto LABEL_60;
      }

      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        [CarDataClient handleCommand:transactionID:values:errors:priority:];
      }

      v83 = objc_loadWeakRetained(&self->clientDelegate);
      if (!v83)
      {
LABEL_29:
        if (v14)
        {
          v38 = [(CarDataClient *)self transactions];
          v39 = [v38 objectForKeyedSubscript:v14];

          if (v39)
          {
            v40 = [[CAFResponse alloc] initWithValuesAndError:0 error:0];
            (v39)[2](v39, v40);
          }
        }

        goto LABEL_22;
      }

      v37 = objc_loadWeakRetained(&self->clientDelegate);
      v84 = [(CarDataClient *)self pluginID];
      [v37 didReceiveConfigFromPluginID:v84 config:v15];

LABEL_28:
      goto LABEL_29;
    }

    if (![v13 isEqualToString:kCarDataProtocolCmdKeyConfigNotify])
    {
      v23 = CAFDClientLogging();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v98 = [(CarDataClient *)self pluginID];
        *buf = 138543874;
        v124 = v98;
        v125 = 2114;
        v126 = v14;
        v127 = 2114;
        v128 = v13;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Error pluginID: %{public}@ transactionID: %{public}@ unknown command %{public}@", buf, 0x20u);
      }

      goto LABEL_141;
    }

    objc_opt_class();
    v91 = objc_opt_isKindOfClass();
    v92 = CAFDClientLogging();
    v23 = v92;
    if ((v91 & 1) == 0)
    {
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_141;
      }

      v33 = [(CarDataClient *)self pluginID];
      v114 = objc_opt_class();
      *buf = 138543874;
      v124 = v33;
      v125 = 2114;
      v126 = v14;
      v127 = 2114;
      v128 = v114;
      v35 = v114;
      v36 = "Error pluginID: %{public}@ transactionID: %{public}@ wrong config notify values type %{public}@";
      goto LABEL_60;
    }

    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      [CarDataClient handleCommand:transactionID:values:errors:priority:];
    }

    v32 = objc_loadWeakRetained(&self->clientDelegate);
    if (v32)
    {
      v28 = objc_loadWeakRetained(&self->clientDelegate);
      v58 = [(CarDataClient *)self pluginID];
      [v28 didReceiveConfigFromPluginID:v58 config:v15];
LABEL_77:

      goto LABEL_21;
    }
  }

LABEL_142:

  return v32;
}

void __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = v5;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = +[NSNull null];
    v9 = [v6 isEqual:v8];

    if (v9)
    {
      v10 = 0;
LABEL_13:
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
      v17 = [*(a1 + 32) pluginID];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_42;
      v24[3] = &unk_100055750;
      v24[4] = *(a1 + 32);
      v14 = v7;
      v25 = v14;
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v26 = v18;
      v27 = v19;
      [WeakRetained didReceiveRequestFromPluginID:v17 instanceID:v14 value:v10 withResponse:v24];

      goto LABEL_14;
    }

    objc_opt_class();
    v15 = v6;
    if (v15 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_13;
    }

    v20 = CAFDLogging();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_cold_1();
    }

    v21 = *(a1 + 32);
    v10 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:8 userInfo:0];
    v22 = *(a1 + 40);
    v23 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v21 responseInstanceID:v7 error:v10 transactionID:v22 priority:v23];

    v14 = v7;
  }

  else
  {

    v11 = CAFDLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_cold_2();
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:7 userInfo:0];
    v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v12 responseTransactionID:v13 error:v14 priority:v10];
  }

LABEL_14:
}

void __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_42(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = [NSNumber numberWithUnsignedInteger:a1[7]];
  if (v5)
  {
    [v6 responseInstanceID:v7 error:v5 transactionID:v8 priority:v9];
  }

  else
  {
    [v6 responseInstanceID:v7 value:v10 transactionID:v8 priority:v9];
  }
}

void __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = v5;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = +[NSNull null];
    v9 = [v6 isEqual:v8];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      objc_opt_class();
      v12 = v6;
      if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v10 = v12;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        v10 = CAFDLogging();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_44_cold_1();
        }

        goto LABEL_13;
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v14 = [*(a1 + 32) pluginID];
    [WeakRetained didReceiveNotificationFromPluginID:v14 instanceID:v7 value:v10];

LABEL_13:
    v11 = v7;
    goto LABEL_14;
  }

  v11 = CAFDLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_44_cold_2();
  }

LABEL_14:
}

- (void)receiveData:(id)a3 priority:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CarDataClient *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __38__CarDataClient_receiveData_priority___block_invoke;
  block[3] = &unk_1000557C8;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __38__CarDataClient_receiveData_priority___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v27 = 0;
  v3 = [v2 CAF_decodeCarData:&v27];
  v4 = v27;
  v5 = v3;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v4)
  {
    objc_opt_class();
    v8 = [v6 objectForKeyedSubscript:kCarDataProtocolKeyTransactionID];
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    objc_opt_class();
    v10 = [v6 objectForKeyedSubscript:kCarDataProtocolKeyCommand];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v7 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:5 userInfo:0];
      if (v7)
      {
LABEL_30:
        v19 = CAFDClientLogging();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v26 = [*(a1 + 40) pluginID];
          *buf = 138543874;
          v29 = v26;
          v30 = 2114;
          v31 = v9;
          v32 = 2114;
          v33 = v7;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Received pluginID: %{public}@ transactionID: %{public}@ error: %{public}@", buf, 0x20u);
        }

        if ([v11 isEqualToString:kCarDataProtocolCmdKeyGeneralError])
        {
          v20 = [*(a1 + 40) clientDelegate];
          v21 = [*(a1 + 40) pluginID];
          [v20 didReceiveErrorFromPluginID:v21 error:v7];
        }

        if (!v9)
        {
          goto LABEL_39;
        }

        v22 = [*(a1 + 40) transactions];
        v23 = [v22 objectForKeyedSubscript:v9];

        if (v23)
        {
          v24 = [[CAFResponse alloc] initWithError:v7];
          (v23)[2](v23, v24);
        }

LABEL_38:
        v25 = [*(a1 + 40) transactions];
        [v25 removeObjectForKey:v9];

LABEL_39:
        goto LABEL_40;
      }

LABEL_24:
      if (!v9)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    objc_opt_class();
    v12 = [v6 objectForKeyedSubscript:kCarDataProtocolKeyError];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = [v13 integerValue];
      v15 = NSOSStatusErrorDomain;
    }

    else
    {
      v16 = *(a1 + 40);
      v17 = [v6 objectForKeyedSubscript:kCarDataProtocolKeyValues];
      v18 = [v6 objectForKeyedSubscript:kCarDataProtocolKeyErrors];
      v7 = [v16 handleCommand:v11 transactionID:v9 values:v17 errors:v18 priority:*(a1 + 48)];

      if (!v7)
      {
        goto LABEL_29;
      }

      v15 = @"com.apple.caraccessoryframework.cardata";
      v14 = v7;
    }

    v7 = [NSError errorWithDomain:v15 code:v14 userInfo:0];
LABEL_29:

    if (v7)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v7 = CAFDClientLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __38__CarDataClient_receiveData_priority___block_invoke_cold_1();
  }

LABEL_40:
}

- (void)requestConfigurationWithPriority:(id)a3 withResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CAFDClientLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CarDataClient requestConfigurationWithPriority:withResponse:];
  }

  [(CarDataClient *)self sendCommand:kCarDataProtocolCmdKeyConfigRequest values:0 priority:v6 withResponse:v7];
}

- (void)registerAllWithPriority:(id)a3 withResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CAFDClientLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CarDataClient registerAllWithPriority:withResponse:];
  }

  [(CarDataClient *)self sendCommand:kCarDataProtocolCmdKeyRegisterRequest values:kCarDataProtocolValueWildcard priority:v6 withResponse:v7];
}

- (void)unregisterAllWithPriority:(id)a3 withResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CAFDClientLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CarDataClient unregisterAllWithPriority:withResponse:];
  }

  [(CarDataClient *)self sendCommand:kCarDataProtocolCmdKeyUnregisterRequest values:kCarDataProtocolValueWildcard priority:v6 withResponse:v7];
}

- (void)registerInstanceIDs:(id)a3 priority:(id)a4 withResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CAFDClientLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(CarDataClient *)self pluginID];
    v14 = 138543874;
    v15 = v13;
    v16 = 2048;
    v17 = [v8 count];
    v18 = 2114;
    v19 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Request pluginID: %{public}@ add registration for instanceIDs count: %ld with priority: %{public}@", &v14, 0x20u);
  }

  if (v8 && [v8 count])
  {
    [(CarDataClient *)self addRegistrationFromCache:v8 priority:v9 withResponse:v10];
  }

  else if (v10)
  {
    v12 = [[CAFResponse alloc] initWithValues:&__NSDictionary0__struct];
    v10[2](v10, v12);
  }
}

- (void)unregisterInstanceIDs:(id)a3 priority:(id)a4 withResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CAFDClientLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(CarDataClient *)self pluginID];
    v14 = 138543874;
    v15 = v13;
    v16 = 2048;
    v17 = [v8 count];
    v18 = 2114;
    v19 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Request pluginID: %{public}@ remove registration for instanceIDs count: %ld with priority: %{public}@", &v14, 0x20u);
  }

  if (v8 && [v8 count])
  {
    [(CarDataClient *)self removeRegistrationFromCache:v8 priority:v9 withResponse:v10];
  }

  else if (v10)
  {
    v12 = [[CAFResponse alloc] initWithValuesAndError:0 error:0];
    v10[2](v10, v12);
  }
}

- (void)readInstanceIDs:(id)a3 priority:(id)a4 withResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CAFDClientLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(CarDataClient *)self pluginID];
    v14 = 138543874;
    v15 = v13;
    v16 = 2048;
    v17 = [v8 count];
    v18 = 2114;
    v19 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Request pluginID: %{public}@ read for instanceIDs count: %ld with priority: %{public}@", &v14, 0x20u);
  }

  if (v8 && [v8 count])
  {
    [(CarDataClient *)self readFromCache:v8 priority:v9 withResponse:v10];
  }

  else if (v10)
  {
    v12 = [[CAFResponse alloc] initWithValues:&__NSDictionary0__struct];
    v10[2](v10, v12);
  }
}

- (void)writeValues:(id)a3 priority:(id)a4 withResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CAFDClientLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(CarDataClient *)self pluginID];
    v17 = 138543874;
    v18 = v14;
    v19 = 2048;
    v20 = [v8 count];
    v21 = 2114;
    v22 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Request pluginID: %{public}@ write for values count: %ld with priority: %{public}@", &v17, 0x20u);
  }

  if (v8 && [v8 count])
  {
    v12 = CAFDClientLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = [(CarDataClient *)self pluginID];
      v16 = [v8 count];
      v17 = 138543874;
      v18 = v15;
      v19 = 2048;
      v20 = v16;
      v21 = 2114;
      v22 = v9;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Write values pluginID: %{public}@ instanceID count: %ld with priority: %{public}@", &v17, 0x20u);
    }

    [(CarDataClient *)self sendCommand:kCarDataProtocolCmdKeyWriteRequest values:v8 priority:v9 withResponse:v10];
  }

  else if (v10)
  {
    v13 = [[CAFResponse alloc] initWithValues:&__NSDictionary0__struct];
    v10[2](v10, v13);
  }
}

- (void)requestInstanceID:(id)a3 value:(id)a4 priority:(id)a5 withResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CAFDClientLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v21 = [(CarDataClient *)self pluginID];
    v22 = @"YES";
    *buf = 138544130;
    v31 = v21;
    if (!v11)
    {
      v22 = @"NO";
    }

    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v22;
    v36 = 2114;
    v37 = v12;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Request pluginID: %{public}@ instanceID: %{public}@ with value: %{public}@ and priority: %{public}@", buf, 0x2Au);
  }

  v15 = kCarDataProtocolCmdKeyControlRequest;
  v28 = v10;
  v16 = v11;
  if (!v11)
  {
    v16 = +[NSNull null];
  }

  v29 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __63__CarDataClient_requestInstanceID_value_priority_withResponse___block_invoke;
  v23[3] = &unk_1000557F0;
  v24 = v10;
  v25 = self;
  v26 = v12;
  v27 = v13;
  v18 = v12;
  v19 = v10;
  v20 = v13;
  [(CarDataClient *)self sendCommand:v15 values:v17 priority:v18 withResponse:v23];

  if (!v11)
  {
  }
}

void __63__CarDataClient_requestInstanceID_value_priority_withResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 56))
  {
    goto LABEL_12;
  }

  v5 = [v3 error];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v4 values];

    if (v6)
    {
      v8 = [v4 values];
      v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];

      if (v9)
      {
        v6 = [v9 error];
        v7 = [v9 value];
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      goto LABEL_10;
    }
  }

  v7 = 0;
LABEL_10:
  v10 = CAFDClientLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 40) pluginID];
    v12 = v11;
    v13 = *(a1 + 32);
    v14 = @"YES";
    v15 = *(a1 + 48);
    v16 = 138544386;
    if (!v7)
    {
      v14 = @"NO";
    }

    v17 = v11;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v15;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Response pluginID: %{public}@ instanceID: %{public}@ control with value: %{public}@ error: %{public}@ and priority: %{public}@", &v16, 0x34u);
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56));
LABEL_12:
}

- (void)notifyInstanceID:(id)a3 value:(id)a4 priority:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CAFDClientLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(CarDataClient *)self pluginID];
    v16 = @"YES";
    *buf = 138544130;
    v20 = v15;
    if (!v9)
    {
      v16 = @"NO";
    }

    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v16;
    v25 = 2114;
    v26 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Notify pluginID: %{public}@ instanceID: %{public}@ with value: %{public}@ and priority: %{public}@", buf, 0x2Au);
  }

  v12 = kCarDataProtocolCmdKeyControlNotify;
  v17 = v8;
  v13 = v9;
  if (!v9)
  {
    v13 = +[NSNull null];
  }

  v18 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [(CarDataClient *)self sendCommand:v12 values:v14 priority:v10 withResponse:0];

  if (!v9)
  {
  }
}

- (void)responseInstanceID:(id)a3 value:(id)a4 transactionID:(id)a5 priority:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CAFDClientLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(CarDataClient *)self pluginID];
    *buf = 138544386;
    v19 = @"YES";
    v23 = v18;
    if (!v11)
    {
      v19 = @"NO";
    }

    v24 = 2114;
    v25 = v10;
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = v19;
    v30 = 2114;
    v31 = v13;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Response pluginID: %{public}@ instanceID: %{public}@ transactionID: %{public}@ with value: %{public}@ and priority: %{public}@", buf, 0x34u);
  }

  v15 = kCarDataProtocolCmdKeyControlResponse;
  v20 = v10;
  v16 = v11;
  if (!v11)
  {
    v16 = +[NSNull null];
  }

  v21 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [(CarDataClient *)self sendCommand:v15 values:v17 transactionID:v12 priority:v13];

  if (!v11)
  {
  }
}

- (void)responseInstanceID:(id)a3 error:(id)a4 transactionID:(id)a5 priority:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CAFDClientLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v19 = [(CarDataClient *)self pluginID];
    *buf = 138544386;
    v23 = v19;
    v24 = 2114;
    v25 = v10;
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = v13;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Response pluginID: %{public}@ instanceID: %{public}@ transactionID: %{public}@ with error: %{public}@ and priority: %{public}@", buf, 0x34u);
  }

  v15 = +[CarDataClient osStatusFromCarDataError:](CarDataClient, "osStatusFromCarDataError:", [v11 code]);
  v16 = kCarDataProtocolCmdKeyControlResponse;
  v17 = [NSNumber numberWithInteger:v15, v10];
  v21 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [(CarDataClient *)self sendCommand:v16 errors:v18 transactionID:v12 priority:v13];
}

- (void)responseTransactionID:(id)a3 error:(id)a4 priority:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CAFDClientLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(CarDataClient *)self pluginID];
    v14 = 138544130;
    v15 = v13;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Response pluginID: %{public}@ transactionID: %{public}@ with error: %{public}@ and priority: %{public}@", &v14, 0x2Au);
  }

  v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", NSOSStatusErrorDomain, +[CarDataClient osStatusFromCarDataError:](CarDataClient, "osStatusFromCarDataError:", [v9 code]), 0);
  [(CarDataClient *)self sendCommand:kCarDataProtocolCmdKeyControlResponse error:v12 transactionID:v8 priority:v10];
}

- (id)cachedValueForInstanceID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = [(CarDataClient *)self processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__CarDataClient_cachedValueForInstanceID___block_invoke;
  block[3] = &unk_100055818;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __42__CarDataClient_cachedValueForInstanceID___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) cachedValues];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 value];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (int64_t)osStatusFromCarDataError:(unint64_t)a3
{
  if (a3 > 0xA)
  {
    return -6700;
  }

  else
  {
    return qword_1000427E8[a3];
  }
}

- (CarDataClientDelegate)clientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->clientDelegate);

  return WeakRetained;
}

- (void)sendCommand:values:priority:withResponse:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [v0 pluginID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __85__CarDataClient_sendCommand_values_errors_error_transactionID_priority_withResponse___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 40) pluginID];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __36__CarDataClient_parseValues_errors___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  [OUTLINED_FUNCTION_6_0(v1) pluginID];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __67__CarDataClient_removeRegistrationFromCache_priority_withResponse___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v2 = [*v1 pluginID];
  [*(v0 + 40) count];
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, v3, v4, "Remove registration from cache pluginID: %{public}@ instanceID count: %ld", v5, v6, v7, v8, 2u);
}

- (void)handleCommand:transactionID:values:errors:priority:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [v0 pluginID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, v2, v3, "Received pluginID: %{public}@ transactionID: %{public}@ config notify", v4, v5, v6, v7, v8);
}

- (void)handleCommand:transactionID:values:errors:priority:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [v0 pluginID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, v2, v3, "Received pluginID: %{public}@ transactionID: %{public}@ config response", v4, v5, v6, v7, v8);
}

- (void)handleCommand:(void *)a1 transactionID:values:errors:priority:.cold.3(void *a1)
{
  v1 = [a1 pluginID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleCommand:(void *)a1 transactionID:values:errors:priority:.cold.4(void *a1)
{
  v1 = [a1 pluginID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleCommand:(void *)a1 transactionID:values:errors:priority:.cold.5(void *a1)
{
  v1 = [a1 pluginID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleCommand:(void *)a1 transactionID:values:errors:priority:.cold.6(void *a1)
{
  v1 = [a1 pluginID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleCommand:transactionID:values:errors:priority:.cold.7()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [v0 pluginID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, v2, v3, "Received pluginID: %{public}@ transactionID: %{public}@ unregister response result: OK", v4, v5, v6, v7, v8);
}

void __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  [OUTLINED_FUNCTION_6_0(v1) pluginID];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  [OUTLINED_FUNCTION_6_0(v1) pluginID];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_44_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  [OUTLINED_FUNCTION_6_0(v1) pluginID];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __68__CarDataClient_handleCommand_transactionID_values_errors_priority___block_invoke_44_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  [OUTLINED_FUNCTION_6_0(v1) pluginID];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __38__CarDataClient_receiveData_priority___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [*(v0 + 40) pluginID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)requestConfigurationWithPriority:withResponse:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [v0 pluginID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, v2, v3, "Request pluginID: %{public}@ config with priority: %{public}@", v4, v5, v6, v7, v8);
}

- (void)registerAllWithPriority:withResponse:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [v0 pluginID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, v2, v3, "Request pluginID: %{public}@ to register all with priority: %{public}@", v4, v5, v6, v7, v8);
}

- (void)unregisterAllWithPriority:withResponse:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [v0 pluginID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, v2, v3, "Request pluginID: %{public}@ to unregister all with priority: %{public}@", v4, v5, v6, v7, v8);
}

@end