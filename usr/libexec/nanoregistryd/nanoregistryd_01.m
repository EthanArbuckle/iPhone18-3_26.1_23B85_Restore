void sub_1000329B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NRQueue registryDaemonQueue];
  v4 = [v3 queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032A68;
  v5[3] = &unk_100175660;
  v5[4] = *(a1 + 32);
  [v2 debounceOnQueue:v4 block:v5];
}

id sub_100032A68(uint64_t a1)
{
  v2 = +[EPNanoRegistryStatusCodeElection sharedInstance];
  v3 = [v2 statusCode];

  result = [*(a1 + 32) managedConfigurationWatchDisabled];
  if (v3 == 2 && result != 0)
  {
    v6 = *(a1 + 32);

    return [v6 createUnpairTransactionsWithCompletion:0];
  }

  return result;
}

uint64_t sub_100032EA4(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138412546;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating token %@ with value %lld", &v8, 0x16u);
    }
  }

  notify_set_state(*(a1 + 48), *(a1 + 40));
  return notify_post([*(a1 + 32) UTF8String]);
}

void sub_100033424(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 deviceCollection];
  v4 = [v3 activeDevice];
  v5 = [v4 objectForKeyedSubscript:NRDevicePropertyIsPaired];
  v6 = [v5 value];
  if ([v6 BOOLValue])
  {
    v7 = [v2 deviceCollection];
    v8 = [v7 activeDevice];
    v9 = NRDevicePropertyPairingID;
    v10 = [v8 objectForKeyedSubscript:NRDevicePropertyPairingID];
    v11 = [v10 value];
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
    v9 = NRDevicePropertyPairingID;
  }

  v13 = [v2 deviceCollection];
  v14 = [v13 activeDevice];
  v15 = [v14 objectForKeyedSubscript:v9];
  v16 = [v15 value];
  v27 = v2;
  if (v16)
  {
    v17 = [v2 deviceCollection];
    v18 = [v17 activeDevice];
    v19 = [v18 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
    v20 = [v19 value];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      v12 = 2;
    }
  }

  v22 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
  v23 = [v22 enableNanoDaemons:v12 didEnable:0];
  if (*(a1 + 40))
  {
    v24 = +[NRQueue registryDaemonQueue];
    v25 = [v24 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000336D0;
    block[3] = &unk_100175D58;
    v29 = *(a1 + 40);
    dispatch_async(v25, block);
  }
}

void sub_100033828(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 paired];
  if (!v7)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v8 = [v5 activeDeviceID];
  if (!v8)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v9 = [v5 objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:NRDevicePropertyIsPaired];
  v11 = [v10 value];

  if (([v11 BOOLValue] & 1) == 0)
  {
LABEL_7:
    v35 = v7;
    v40 = v8;
    v36 = a1;
    v37 = v6;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v41 = *v46;
      v16 = NRDevicePropertyIsPaired;
      v39 = NRDevicePropertyLastActiveDate;
      do
      {
        v17 = 0;
        v18 = v11;
        do
        {
          if (*v46 != v41)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v45 + 1) + 8 * v17);
          v20 = [v12 objectForKeyedSubscript:v19];
          v21 = [v20 objectForKeyedSubscript:v16];
          v11 = [v21 value];

          if ([v11 BOOLValue])
          {
            v22 = [v12 objectForKeyedSubscript:v19];
            v23 = [v22 objectForKeyedSubscript:v39];
            v24 = [v23 value];

            if (!v15 || v24 && [v24 compare:v15] == 1)
            {
              v25 = v24;

              v26 = v19;
              v15 = v25;
              v40 = v26;
            }
          }

          v17 = v17 + 1;
          v18 = v11;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v6 = v37;
    v5 = v38;
    a1 = v36;
    v8 = v40;
    v7 = v35;
  }

LABEL_24:
  v27 = nr_daemon_log();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

  if (v28)
  {
    v29 = nr_daemon_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v30 = "YES";
      }

      else
      {
        v30 = "NO";
      }

      v31 = [v8 UUIDString];
      *buf = 136315394;
      v50 = v30;
      v51 = 2112;
      v52 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "ensureActiveDevice: deviceCollection.isPaired=%s MRUDeviceID=%@", buf, 0x16u);
    }
  }

  v32 = +[NRQueue registryDaemonQueue];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100033C10;
  v42[3] = &unk_100175688;
  v33 = *(a1 + 32);
  v43 = v8;
  v44 = v33;
  v34 = v8;
  [v32 dispatchAsync:v42];
}

uint64_t sub_100033C10(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_1000341CC(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 xpcDeviceID:*(a1 + 32) needsPasscode:*(a1 + 40)];
}

void sub_100034934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003495C(uint64_t a1, int a2)
{
  if (*(a1 + 56) == 1)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = sub_100023050;
    v16 = sub_100023060;
    v17 = 0;
    v4 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100034B2C;
    v11[3] = &unk_100176D80;
    v11[4] = buf;
    [v4 grabRegistryWithReadBlock:v11];
    if (([*(*(*(a1 + 48) + 8) + 40) isEqual:*(v13 + 5)] & a2) == 1)
    {
      v5 = *(a1 + 40);
      v6 = v5;
      if (v5)
      {
        v7 = [v5[18] serviceFromClass:objc_opt_class()];
        [v7 propertiesSent];
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else if ((a2 & 1) == 0)
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Property update failed to send", buf, 2u);
      }
    }
  }
}

void sub_100034B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100034B2C(uint64_t a1, void *a2)
{
  v7 = [a2 activeDevice];
  v3 = [v7 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v4 = [v3 value];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_100034C9C(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v29 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v31 = a1;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v9 = NRDevicePropertyPairedDate;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [*(v31 + 32) objectForKeyedSubscript:{v11, v28}];
        if ([v11 isEqual:v9])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 doubleValue];
            v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

            v12 = v13;
          }
        }

        if (sub_10005F7FC(v11))
        {
          v14 = 0;
        }

        else
        {
          v14 = [v29 storeSecureProperty:v12];

          v12 = v14;
        }

        v15 = +[NSNull null];
        v16 = [v12 isEqual:v15];

        if (v16)
        {
          v17 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
          [v5 setObject:v17 forKeyedSubscript:v11];
        }

        else
        {
          v17 = [[NRDevicePropertyDiff alloc] initWithValue:v12];
          v18 = [[NRDevicePropertyDiffType alloc] initWithDiff:v17 andChangeType:1];
          [v5 setObject:v18 forKeyedSubscript:v11];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  v19 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v5];
  v20 = [[NRDeviceDiffType alloc] initWithDiff:v19 andChangeType:1];
  v21 = [NRDeviceCollectionDiff alloc];
  v38 = *(v31 + 40);
  v39 = v20;
  v22 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v23 = [v21 initWithDeviceCollectionDiffDeviceDiffs:v22];

  v24 = [v28 applyDiff:v23];
  v25 = +[NRQueue registryDaemonQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10003505C;
  v32[3] = &unk_100175FA0;
  v26 = *(v31 + 56);
  v32[4] = *(v31 + 48);
  v33 = v26;
  [v25 dispatchAsync:v32];

  return 0;
}

uint64_t sub_10003505C(uint64_t a1)
{
  --*(*(a1 + 32) + 272);
  v2 = *(a1 + 32);
  if (!*(v2 + 272))
  {
    v3 = *(v2 + 264);
    *(v2 + 264) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100035224(uint64_t a1, void *a2)
{
  v2 = a2;
  v30 = +[NSMutableArray array];
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = [v2 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking %lu devices in the registry for any unexpected devices", buf, 0xCu);
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v2;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v31 = *v36;
    v9 = _NRDevicePropertyCompatibilityState;
    v10 = _NRDevicePropertyBluetoothIdentifier;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [v6 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * v11)];
        v13 = [v12 objectForKeyedSubscript:v9];
        v14 = [v13 value];

        v15 = [v12 objectForKeyedSubscript:v10];
        v16 = [v15 value];

        if (([v12 isPaired] & 1) != 0 || objc_msgSend(v14, "integerValue"))
        {
          v17 = nr_daemon_log();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

          if (v18)
          {
            v19 = nr_daemon_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v40 = v16;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Not removing UUID: %@", buf, 0xCu);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v30 addObject:v16];
          }
        }

        else
        {
          v20 = nr_daemon_log();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

          if (v21)
          {
            v22 = nr_daemon_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = [v12 isPaired];
              v24 = [v14 integerValue];
              *buf = 138412802;
              v40 = v16;
              v41 = 1024;
              v42 = v23;
              v43 = 2048;
              v44 = v24;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unexpected device with UUID %@ (isPaired = %{BOOL}d, compatibilityStateNumber = %ld), leaving out of known devices.", buf, 0x1Cu);
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v25 = [v6 countByEnumeratingWithState:&v35 objects:v45 count:16];
      v8 = v25;
    }

    while (v25);
  }

  v26 = +[NRQueue registryDaemonQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10003563C;
  v32[3] = &unk_1001768B0;
  v27 = *(a1 + 40);
  v32[4] = *(a1 + 32);
  v33 = v30;
  v34 = v27;
  v28 = v30;
  [v26 dispatchAsync:v32];
}

void sub_10003563C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = +[NRQueue registryDaemonQueue];
  v5 = [v4 queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003570C;
  v6[3] = &unk_100176DF8;
  v7 = *(a1 + 48);
  [v2 purgeIDSPairedDevicesExceptFor:v3 withQueue:v5 andCompletion:v6];
}

uint64_t sub_10003570C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100035974(void *a1)
{
  if (atomic_fetch_add((*(a1[6] + 8) + 40), 0xFFFFFFFF) == 1)
  {
    v3 = a1[5];
    if (v3)
    {
      v7 = v1;
      v8 = v2;
      v4 = a1[4];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100035A24;
      block[3] = &unk_100175D58;
      v6 = v3;
      dispatch_async(v4, block);
    }
  }
}

void sub_100035A38(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v23 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "purgeIDSPairedDevicesExceptFor: IDSDeleterBlock", buf, 2u);
    }
  }

  if (v23)
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000FEA24(v23);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v21 = [NSMutableSet setWithArray:v22];
    v11 = [NSSet setWithArray:*(a1 + 32)];
    [v21 minusSet:v11];

    if ([v21 count])
    {
      *buf = 0;
      v34 = buf;
      v35 = 0x3020000000;
      v36 = [v21 count];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v21;
      v12 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v12)
      {
        v13 = *v30;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v29 + 1) + 8 * i);
            v16 = nr_daemon_log();
            v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

            if (v17)
            {
              v18 = nr_daemon_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [v15 UUIDString];
                *v37 = 138543362;
                v38 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "purgeIDSPairedDevicesExceptFor: Deleting unwanted IDS device %{public}@", v37, 0xCu);
              }
            }

            v20 = *(a1 + 40);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100035E04;
            block[3] = &unk_100176E70;
            block[4] = v15;
            v28 = buf;
            v27 = *(a1 + 56);
            v26 = *(a1 + 48);
            dispatch_async(v20, block);
          }

          v12 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v12);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_100035E04(uint64_t a1)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 48);
  v2 = v4;
  v3 = *(a1 + 40);
  IDSLocalPairingDeletePairedDevice();
}

void sub_100035EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  add = atomic_fetch_add((*(*(a1 + 48) + 8) + 40), 0xFFFFFFFF);
  if (v3)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000FEAB4(v3, a1);
      }
    }
  }

  if (add == 1)
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_100035F64(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  IDSLocalPairingGetPairedDevicesWithCompletionBlock();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return IDSLocalPairingGetPairingDevicesWithCompletionBlock();
}

void sub_100036204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003622C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100036E08(uint64_t a1, void *a2)
{
  v3 = [a2 activeDeviceID];
  v4 = [*(a1 + 32) pairingID];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        *buf = 138412290;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sync after software update for device %@", buf, 0xCu);
      }
    }

    v10 = objc_opt_new();
    v11 = [EPRoutingSlipEntry alloc];
    v12 = [v3 UUIDString];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"none";
    }

    v15 = [@"checkForSyncAfterSoftwareUpdate-" stringByAppendingString:v14];
    v16 = objc_opt_class();
    v17 = [[EPSagaOperandUUID alloc] initWithUUID:v3, @"nrDeviceIdentifier"];
    v22 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = [(EPRoutingSlipEntry *)v11 initWithName:v15 transactionClass:v16 operands:v18];
    [v10 setEntry:v19];

    [v10 setRunningStatusCode:2];
    [v10 setOperationType:@"reunionSync"];
    [v10 setTargetPairingID:v3];
    v20 = [*(*(a1 + 40) + 144) serviceFromClass:objc_opt_class()];
    [v20 addTransaction:v10];
  }
}

void sub_10003713C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NRQueue registryDaemonQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100037204;
  v7[3] = &unk_100175688;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 dispatchAsync:v7];
}

uint64_t sub_1000372BC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[NSMutableDictionary dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v8 = NRDevicePropertyAdvertisedName;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = [v11 objectForKeyedSubscript:v8];
        v13 = [v12 value];

        if (v13)
        {
          v14 = [*(*(a1 + 32) + 472) objectForKeyedSubscript:v13];
          if (v14)
          {
            if (([v11 isActive] & 1) == 0 && (objc_msgSend(v11, "isPaired") & 1) == 0 && (objc_msgSend(v11, "isArchived") & 1) == 0)
            {
              [v14 timeIntervalSinceNow];
              if (fabs(v15) > 65.0)
              {
                v19 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
                [v3 setObject:v19 forKeyedSubscript:v10];
              }
            }
          }
        }

        v16 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v3];
        v17 = [v4 applyDiff:v16];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  return 0;
}

uint64_t sub_100037594(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = NRDevicePropertyAdvertisedName;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = [v11 objectForKeyedSubscript:v8];
        v13 = [v12 value];

        if (v13 && [v13 isEqual:*(a1 + 32)] && (objc_msgSend(v11, "isActive") & 1) == 0 && (objc_msgSend(v11, "isPaired") & 1) == 0 && (objc_msgSend(v11, "isArchived") & 1) == 0)
        {
          v14 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
          [v3 setObject:v14 forKeyedSubscript:v10];
        }

        v15 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v3];
        v16 = [v4 applyDiff:v15];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return 0;
}

void sub_1000379DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 472);
  v6 = a2;
  [v5 setObject:v3 forKeyedSubscript:v4];
  v7 = [v6 objectForKeyedSubscript:*(*(a1 + 32) + 248)];

  v8 = [v7 objectForKeyedSubscript:NRDevicePropertyPairingID];
  v9 = [v8 value];

  v10 = [v7 objectForKeyedSubscript:NRDevicePropertyAdvertisedName];
  v11 = [v10 value];

  v12 = [v7 objectForKeyedSubscript:_NRDevicePropertyRSSI];
  v13 = [v12 value];

  v14 = *(a1 + 40);
  if (!v14 || ![v14 isEqual:v11])
  {
    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 40);
        v20 = 138412546;
        v21 = v19;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "advertised name %@ from Bluetooth doesn't match device we're looking for %{public}@ (ignoring)", &v20, 0x16u);
      }
    }

    goto LABEL_11;
  }

  if (([*(*(a1 + 32) + 216) containsObject:*(a1 + 40)] & 1) != 0 && v13 && !sub_1000A1628(objc_msgSend(v13, "integerValue"), objc_msgSend(*(a1 + 56), "integerValue")))
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v15 = v9;
LABEL_12:
  [*(a1 + 32) _upsertDeviceDiscoveredBy:1 pairingID:v15 advertisedName:*(a1 + 40) bluetoothDeviceID:*(a1 + 64) rssiValue:*(a1 + 80) withBlock:*(a1 + 72)];
}

void sub_100037C2C(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = NRDevicePropertyAdvertisedName;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      v10 = [v3 objectForKeyedSubscript:{v9, v17}];
      v11 = [v10 objectForKeyedSubscript:v7];
      v12 = [v11 value];

      if ([v10 isPaired] & 1) == 0 && (objc_msgSend(v12, "isEqual:", *(a1 + 32)))
      {
        break;
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v14 = v9;
    v15 = [v10 objectForKeyedSubscript:_NRDevicePropertyRSSI];
    v13 = [v15 value];

    if (!v14)
    {
      goto LABEL_16;
    }

    if (([*(*(a1 + 40) + 216) containsObject:*(a1 + 32)] & 1) != 0 && v13 && !sub_1000A1628(objc_msgSend(v13, "integerValue"), objc_msgSend(*(a1 + 48), "integerValue")))
    {
      v16 = 0;
    }

    else
    {
      v14 = v14;
      v16 = v14;
    }
  }

  else
  {
LABEL_10:

    v13 = 0;
LABEL_16:
    v16 = +[NSUUID UUID];
    v14 = 0;
  }

  [*(a1 + 40) _upsertDeviceDiscoveredBy:1 pairingID:v16 advertisedName:*(a1 + 32) bluetoothDeviceID:*(a1 + 56) rssiValue:*(a1 + 72) withBlock:*(a1 + 64)];
}

void sub_100037F84(uint64_t a1, void *a2)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = NRDevicePropertyAdvertisedName;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = [v3 objectForKeyedSubscript:{v9, v15}];
      v11 = [v10 objectForKeyedSubscript:v7];
      v12 = [v11 value];

      if ([v10 isPaired] & 1) == 0 && (objc_msgSend(v12, "isEqual:", *(a1 + 32)))
      {
        break;
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v13 = v9;

    if (!v13)
    {
      goto LABEL_14;
    }

    if ([*(*(a1 + 40) + 216) containsObject:*(a1 + 32)])
    {
      v14 = 0;
    }

    else
    {
      v13 = v13;
      v14 = v13;
    }
  }

  else
  {
LABEL_10:

LABEL_14:
    v14 = +[NSUUID UUID];
    v13 = 0;
  }

  [*(a1 + 40) _upsertDeviceDiscoveredBy:2 pairingID:v14 advertisedName:*(a1 + 32) bluetoothDeviceID:*(a1 + 48) rssiValue:*(a1 + 64) withBlock:*(a1 + 56)];
}

uint64_t sub_1000383F4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 216) addObject:*(a1 + 40)];
  v4 = [NRDevicePropertyDiffType alloc];
  v5 = [NRDevicePropertyDiff alloc];
  v6 = [NSNumber numberWithInteger:*(a1 + 72)];
  v7 = [v5 initWithValue:v6];
  v59 = [v4 initWithDiff:v7 andChangeType:1];

  v8 = objc_opt_new();
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [NRDevicePropertyDiffType alloc];
  v12 = [NRDevicePropertyDiff alloc];
  v13 = [NSNumber numberWithDouble:v10];
  v14 = [v12 initWithValue:v13];
  v58 = [v11 initWithDiff:v14 andChangeType:1];

  v15 = [NRDevicePropertyDiffType alloc];
  v16 = [[NRDevicePropertyDiff alloc] initWithValue:*(a1 + 40)];
  v17 = [v15 initWithDiff:v16 andChangeType:1];

  v18 = [NRDevicePropertyDiffType alloc];
  v19 = [NRDevicePropertyDiff alloc];
  v20 = [NSNumber numberWithUnsignedInteger:*(a1 + 80)];
  v21 = [v19 initWithValue:v20];
  v22 = [v18 initWithDiff:v21 andChangeType:1];

  v23 = [NRDevicePropertyDiffType alloc];
  v24 = [[NRDevicePropertyDiff alloc] initWithValue:*(a1 + 48)];
  v25 = [v23 initWithDiff:v24 andChangeType:1];

  v26 = [NRDevicePropertyDiffType alloc];
  v27 = [[NRDevicePropertyDiff alloc] initWithValue:*(a1 + 56)];
  v28 = [v26 initWithDiff:v27 andChangeType:1];

  v29 = [NSMutableDictionary alloc];
  v55 = v28;
  v56 = v25;
  v57 = v17;
  v30 = [v29 initWithObjectsAndKeys:{v17, NRDevicePropertyAdvertisedName, v25, _NRDevicePropertyBluetoothIdentifier, v28, NRDevicePropertyPairingID, v22, _NRDevicePropertyDiscoveryMechanism, 0}];
  v31 = [v3 objectForKeyedSubscript:*(a1 + 56)];
  v32 = _NRDevicePropertyRSSI;
  v33 = [v31 objectForKeyedSubscript:_NRDevicePropertyRSSI];
  v34 = [v33 value];

  v35 = [v3 objectForKeyedSubscript:*(a1 + 56)];
  v36 = _NRDevicePropertyLastRSSIUpdate;
  v37 = [v35 objectForKeyedSubscript:_NRDevicePropertyLastRSSIUpdate];
  v38 = [v37 value];

  v39 = *(a1 + 72);
  v40 = [v34 integerValue];
  [v38 doubleValue];
  if (sub_1000A15FC(v39, v40, v10, v41))
  {
    v42 = nr_daemon_log();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

    if (v43)
    {
      v44 = nr_daemon_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *(a1 + 40);
        v45 = [*(a1 + 56) UUIDString];
        *buf = 138543618;
        v66 = v54;
        v67 = 2114;
        v68 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Updating or creating device %{public}@ %{public}@", buf, 0x16u);
      }
    }

    [v30 setObject:v59 forKeyedSubscript:v32];
    [v30 setObject:v58 forKeyedSubscript:v36];
  }

  v46 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v30];
  v47 = [NRDeviceCollectionDiff alloc];
  v63 = *(a1 + 56);
  v48 = [[NRDeviceDiffType alloc] initWithDiff:v46 andChangeType:0];
  v64 = v48;
  v49 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v50 = [v47 initWithDeviceCollectionDiffDeviceDiffs:v49];

  v51 = [v3 applyDiff:v50];
  v52 = +[NRQueue registryDaemonQueue];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000389B8;
  v60[3] = &unk_100175688;
  v62 = *(a1 + 64);
  v61 = *(a1 + 56);
  [v52 dispatchAsync:v60];

  return 0;
}

uint64_t sub_1000389B8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100038BB4(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 objectForKeyedSubscript:NRDevicePropertyAdvertisedName];
  v5 = [v4 value];

  v6 = nr_daemon_log();
  LODWORD(v4) = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "advertisedName=%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

_BYTE *sub_100038F1C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 248), *(a1 + 40));
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Making the call to Bluetooth central scanForPeripheralsWithServices", v10, 2u);
    }
  }

  v5 = *(*(a1 + 32) + 120);
  v6 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
  v13 = v6;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v11 = CBCentralManagerScanOptionAllowDuplicatesKey;
  v12 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v5 scanForPeripheralsWithServices:v7 options:v8];

  *(*(a1 + 32) + 38) = 1;
  result = *(a1 + 32);
  if (result[32] == 1)
  {
    return [result _beginNetworkRelayDiscovery];
  }

  return result;
}

uint64_t sub_1000390D0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _cleanUpDiscoveredDevicesWithCollection:a2];
  v3 = +[NRQueue registryDaemonQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100039184;
  v5[3] = &unk_100175D58;
  v6 = *(a1 + 40);
  [v3 dispatchAsync:v5];

  return 0;
}

void sub_1000393C0(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 xpcHasNewOOBKey:*(a1 + 32)];
}

void sub_100039BD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activeDevice];
  v5 = [v4 objectForKeyedSubscript:_NRDevicePropertyCompatibilityState];
  v6 = [v5 value];

  v7 = nr_daemon_log();
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v3 activeDevice];
        v12 = [v11 pairingID];
        *buf = 136446722;
        v20 = "[NRPairingDaemon updateTrafficClass]_block_invoke";
        v21 = 2114;
        v22 = v12;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting compatibility state for %{public}@ to %@", buf, 0x20u);
      }
    }

    v13 = +[NRQueue registryDaemonQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100039E14;
    v16[3] = &unk_1001758F8;
    v16[4] = *(a1 + 32);
    v17 = v6;
    v18 = *(a1 + 40);
    [v13 dispatchAsync:v16];
  }

  else
  {
    v14 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v15 = nr_daemon_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000FEB68(v3);
      }
    }
  }
}

void sub_100039E14(id *a1)
{
  v3 = [a1[4] getTrafficClassifiersForCompatibilityState:{objc_msgSend(a1[5], "integerValue")}];
  v2 = objc_opt_new();
  [v2 setTrafficClasses:v3];
  [a1[6] updateTrafficClassesWithClasses:v2];
}

void sub_10003A024(uint64_t a1, void *a2)
{
  v3 = [a2 activeDeviceID];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 submitPairingReportWithRegistry:*(a1 + 32) deviceID:v3];
  }

  else
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (!v6)
    {
      goto LABEL_4;
    }

    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Albert pairing reporter submission requested from pairtool but no active device is present", v7, 2u);
    }
  }

LABEL_4:
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10003A324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!*(a1 + 32))
  {
    goto LABEL_7;
  }

  v7 = [v5 objectForKeyedSubscript:?];
  if (![v7 isAltAccount])
  {

LABEL_7:
    v25 = +[NRQueue registryDaemonQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10003A69C;
    v27[3] = &unk_100175D58;
    v28 = *(a1 + 56);
    [v25 dispatchAsync:v27];

    v7 = v28;
    goto LABEL_8;
  }

  v8 = +[NSMutableDictionary dictionary];
  v9 = [*(a1 + 40) lowercaseString];
  v10 = [v6 storeSecureProperty:v9];

  v11 = [NRDevicePropertyDiffType alloc];
  v12 = [[NRDevicePropertyDiff alloc] initWithValue:v10];
  v13 = [v11 initWithDiff:v12 andChangeType:1];
  [v8 setObject:v13 forKeyedSubscript:_NRDevicePropertyPairingParentAccountIdentifier];

  if (*(a1 + 48))
  {
    v14 = [v6 storeSecureProperty:?];
    v15 = [NRDevicePropertyDiffType alloc];
    v16 = [[NRDevicePropertyDiff alloc] initWithValue:v14];
    v17 = [v15 initWithDiff:v16 andChangeType:1];
    [v8 setObject:v17 forKeyedSubscript:_NRDevicePropertyPairingParentAltDSID];
  }

  v18 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v8];
  v19 = [[NRDeviceDiffType alloc] initWithDiff:v18 andChangeType:1];
  v20 = [NRDeviceCollectionDiff alloc];
  v31 = *(a1 + 32);
  v32 = v19;
  v21 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v22 = [v20 initWithDeviceCollectionDiffDeviceDiffs:v21];

  v23 = [v5 applyDiff:v22];
  v24 = +[NRQueue registryDaemonQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10003A688;
  v29[3] = &unk_100175D58;
  v30 = *(a1 + 56);
  [v24 dispatchAsync:v29];

LABEL_8:
  return 0;
}

uint64_t sub_10003A7B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!*(a1 + 32))
  {
    goto LABEL_7;
  }

  v7 = [v5 objectForKeyedSubscript:?];
  if (![v7 isAltAccount])
  {

LABEL_7:
    v25 = +[NRQueue registryDaemonQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10003AB30;
    v27[3] = &unk_100175D58;
    v28 = *(a1 + 56);
    [v25 dispatchAsync:v27];

    v7 = v28;
    goto LABEL_8;
  }

  v8 = +[NSMutableDictionary dictionary];
  v9 = [*(a1 + 40) lowercaseString];
  v10 = [v6 storeSecureProperty:v9];

  v11 = [NRDevicePropertyDiffType alloc];
  v12 = [[NRDevicePropertyDiff alloc] initWithValue:v10];
  v13 = [v11 initWithDiff:v12 andChangeType:1];
  [v8 setObject:v13 forKeyedSubscript:_NRDevicePropertyAltAccountIdentifier];

  if (*(a1 + 48))
  {
    v14 = [v6 storeSecureProperty:?];
    v15 = [NRDevicePropertyDiffType alloc];
    v16 = [[NRDevicePropertyDiff alloc] initWithValue:v14];
    v17 = [v15 initWithDiff:v16 andChangeType:1];
    [v8 setObject:v17 forKeyedSubscript:_NRDevicePropertyAltAccountAltDSID];
  }

  v18 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v8];
  v19 = [[NRDeviceDiffType alloc] initWithDiff:v18 andChangeType:1];
  v20 = [NRDeviceCollectionDiff alloc];
  v31 = *(a1 + 32);
  v32 = v19;
  v21 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v22 = [v20 initWithDeviceCollectionDiffDeviceDiffs:v21];

  v23 = [v5 applyDiff:v22];
  v24 = +[NRQueue registryDaemonQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10003AB1C;
  v29[3] = &unk_100175D58;
  v30 = *(a1 + 56);
  [v24 dispatchAsync:v29];

LABEL_8:
  return 0;
}

uint64_t sub_10003B414(uint64_t a1, int a2)
{
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (a2)
  {
    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "xpcWatchBuddyCompletedSetupSteps removing proxy from pairing client", buf, 2u);
      }
    }

    *(*(a1 + 32) + 47) = 0;
    *(*(a1 + 32) + 48) = 0;
    [*(*(a1 + 32) + 376) removeAllObjects];
  }

  else if (v5)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "xpcWatchBuddyCompletedSetupSteps skipping update", v9, 2u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_10003B548(uint64_t a1, void *a2)
{
  v7 = [a2 activeDevice];
  v3 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
  v4 = [v7 supportsCapability:v3];

  if (v4)
  {
    v5 = [v7 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
    v6 = [v5 value];

    *(*(a1 + 32) + 34) = v6 == 0;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) _queueMarkDeviceIsSetup:v7];
}

uint64_t sub_10003B7B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  if (v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = NRDevicePropertyWatchBuddyStage;
    v7 = [v4 objectForKeyedSubscript:NRDevicePropertyWatchBuddyStage];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = 0;
    if ((isKindOfClass & 1) != 0 && v7)
    {
      v9 = [v7 unsignedIntValue];
    }

    v10 = *(a1 + 40) | v9;
    v11 = nr_daemon_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = nr_daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "[NRPairingDaemon xpcUpdateWatchBuddyStage:forPairingID:]_block_invoke";
        v29 = 1026;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s updating effective value: %{public}x", buf, 0x12u);
      }
    }

    v14 = [NSNumber numberWithUnsignedInt:v10];
    v15 = [NRDevicePropertyDiffType alloc];
    v16 = [[NRDevicePropertyDiff alloc] initWithValue:v14];
    v17 = [v15 initWithDiff:v16 andChangeType:1];
    [v5 setObject:v17 forKeyedSubscript:v6];

    v18 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v5];
    v19 = [[NRDeviceDiffType alloc] initWithDiff:v18 andChangeType:1];
    v20 = [NRDeviceCollectionDiff alloc];
    v25 = *(a1 + 32);
    v26 = v19;
    v21 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v22 = [v20 initWithDeviceCollectionDiffDeviceDiffs:v21];

    v23 = [v3 applyDiff:v22];
  }

  return 0;
}

id sub_10003CB60(uint64_t a1)
{
  [*(*(a1 + 32) + 392) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 408) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 removeAssertionsForProxy:v3];
}

void sub_10003CE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003CEC4(id *a1)
{
  v2 = a1[4];
  [*(a1[5] + 49) removeObject:v2];
  v3 = *(a1[5] + 47);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003D084;
  v8[3] = &unk_100177068;
  objc_copyWeak(&v10, a1 + 6);
  v8[4] = a1[5];
  v4 = v2;
  v9 = v4;
  [v3 removeObject:v4 withCleanupBlock:v8];
  v5 = *(a1[5] + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003D1F8;
  v6[3] = &unk_100177090;
  objc_copyWeak(&v7, a1 + 6);
  v6[4] = a1[5];
  [v5 removeObject:v4 withCleanupBlock:v6];
  [*(a1[5] + 51) removeObject:v4];
  [a1[5] removeAssertionsForProxy:v4];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v10);
}

void sub_10003D05C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_10003D084(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v4 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
      v5 = [v4 getResumableForRunningOperationType:@"pair"];
      v6 = [v5 BOOLValue];
      v7 = nr_daemon_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        if (v8)
        {
          v9 = nr_daemon_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "XPC interruption on connection to pairing client, app monitoring disabled, doing nothing", buf, 2u);
          }
        }
      }

      else
      {
        if (v8)
        {
          v10 = nr_daemon_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "XPC interruption on connection to pairing client, possibly unpairing", v11, 2u);
          }
        }

        [WeakRetained handleDeadPairingClient:*(a1 + 40)];
      }
    }
  }
}

void sub_10003D1F8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "XPC interruption on connection to switching client, canceling associated switch", v10, 2u);
      }
    }

    v8 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
    v9 = nrGetPairingError();
    [v8 cancelWithOperationType:@"tinkerExternalSwitch" error:v9];
  }
}

uint64_t sub_10003D4AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 520);
  *(v2 + 520) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_10003D5C8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 520);
  if (v1)
  {
    dispatch_source_cancel(v1);
    v2 = nr_daemon_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = nr_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000FEDA4();
      }
    }
  }
}

void sub_10003DC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a34);
  objc_destroyWeak((v37 - 112));
  _Unwind_Resume(a1);
}

void sub_10003DCB0(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) updateShouldMonitorProxy:v4];
  }
}

void sub_10003DD14(id a1)
{
  v1 = +[NetworkRelayAgent sharedInstance];
  [v1 setHasPairingClients:1];
}

void sub_10003DD60(id a1)
{
  v1 = +[NetworkRelayAgent sharedInstance];
  [v1 setHasPairingClients:0];
  [v1 invalidatePairingManagerIfIdle];
}

void sub_10003DDB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startPushing];
}

void sub_10003DDF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopPushing];
}

void sub_10003DE34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained forceEndDiscovery];
}

void sub_10003DE74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained forceEndAdvertising];
}

void sub_10003E078(id a1)
{
  v1 = nr_daemon_log();
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    v3 = nr_daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking for standalone mode...", buf, 2u);
    }
  }

  v4 = CFPreferencesCopyAppValue(@"Magnet", @"com.apple.MobileBluetooth.debug");
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:@"DisableWatchConnection"];
  if (v6)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Standalone mode found, disabling.", v13, 2u);
      }
    }

    [v5 removeObjectForKey:@"DisableWatchConnection"];
    CFPreferencesSetAppValue(@"Magnet", v5, @"com.apple.MobileBluetooth.debug");
    CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");
    v10 = +[NRRepeatingAlertEngine sharedInstance];
    [v10 resetStateForAlertWithName:@"StandAloneMode"];

    v11 = +[NRRepeatingAlertEngine sharedInstance];
    [v11 setEnabled:1 withName:@"StandAloneMode"];

    v12 = +[NRRepeatingAlertEngine sharedInstance];
    [v12 presentAlertsIfNeeded];

    [NRUnixProcessSignaler signalProcessNamed:@"bluetoothd" withSignal:9];
  }
}

void sub_10003E468(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[NRQueue registryDaemonQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003E538;
  v9[3] = &unk_100177168;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 dispatchAsync:v9];
}

void sub_10003E778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 176), 8);
  _Block_object_dispose((v13 - 144), 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10003E7B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[NRPairingDaemon _xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:completion:]_block_invoke";
      v11 = 2114;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s %{public}@ returning %{public}@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10003E8D0(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    goto LABEL_7;
  }

  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[NRPairingDaemon _xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: If the pusher is running right now, use that one", buf, 0xCu);
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v5 = *(*(a1 + 32) + 320);
  if (!v5)
  {
LABEL_7:
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v5 = 0;
      if (![0 invalidated])
      {
        goto LABEL_17;
      }

LABEL_16:
      [*(a1 + 32) stopPushing];

      goto LABEL_17;
    }

    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = "[NRPairingDaemon _xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: If the pusher was not running, try checking the previous one", buf, 0xCu);
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v5 = *(*(a1 + 32) + 328);
  }

  if ([v5 invalidated])
  {
    goto LABEL_16;
  }

  if (v5)
  {
LABEL_28:
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003ECFC;
    v19[3] = &unk_100177230;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v21 = *(a1 + 72);
    v19[4] = v15;
    v17 = *(a1 + 48);
    v18 = *(a1 + 80);
    v20 = v17;
    v22 = v18;
    [v5 waitForWatchPairingExtendedMetadataForAdvertisedName:v16 completion:v19];

    goto LABEL_29;
  }

LABEL_17:
  if (!*(*(a1 + 32) + 320) && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v9 = nr_daemon_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = "[NRPairingDaemon _xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Okay- make a new pusher and wait for results from it", buf, 0xCu);
      }
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
    [*(a1 + 32) startPushing];
    v5 = *(*(a1 + 32) + 320);
    if (v5)
    {
      goto LABEL_28;
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(a1 + 32) stopPushing];
  }

  v12 = +[NRQueue registryDaemonQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003ECA4;
  v23[3] = &unk_1001771E0;
  v13 = *(a1 + 48);
  v14 = *(a1 + 80);
  v24 = v13;
  v25 = v14;
  [v12 dispatchAsync:v23];

  v5 = v24;
LABEL_29:
}

void sub_10003ECA4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_10003ECFC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v7 = objc_opt_new();
      v8 = sub_100101858(v6);
      [v7 setProductType:v8];

      [v7 setChipID:sub_10010186C(v6)];
      [v7 setPairingVersion:sub_10010189C(v6)];
      [v7 setIsCellularEnabled:sub_1001018B0(v6)];
      [v7 setEncodedSystemVersion:sub_1001018CC(v6)];
      if ((_NRIsAutomated() & 1) == 0)
      {
        [v7 setPostFailsafeObliteration:sub_100101880(v6)];
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = sub_100101734(v6);
    v10 = +[NRQueue registryDaemonQueue];
    v11 = v10;
    if (v9)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10003EF7C;
      v17[3] = &unk_100177208;
      v17[4] = *(a1 + 32);
      v14 = *(a1 + 40);
      v12 = v14;
      v19 = v14;
      v7 = v7;
      v13 = *(a1 + 56);
      v18 = v7;
      v20 = v13;
      [v11 dispatchAsync:v17];
    }

    else
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10003EFEC;
      v16[3] = &unk_100175880;
      v16[4] = *(a1 + 56);
      [v10 dispatchAsync:v16];
    }
  }

  else
  {
    v7 = +[NRQueue registryDaemonQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003F004;
    v15[3] = &unk_100175880;
    v15[4] = *(a1 + 56);
    [v7 dispatchAsync:v15];
  }
}

void sub_10003EF7C(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 32) stopPushing];
  }

  v2 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_10003F298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003F2C4(id *a1, int a2)
{
  v4 = nr_daemon_log();
  v5 = v4;
  if (a2)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[4];
        v9 = a1[5];
        *buf = 138543618;
        v39 = v8;
        v40 = 2114;
        v41 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "xpcCompanionOOBDiscoverAndPairWithName: advertisedName=%{public}@ options=%{public}@ Starting", buf, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained(a1 + 9);
    v11 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained resetPhoneStateForNewPairing];
      [v11 checkAndDisableStandAloneMode];
      [v11 logIfVersionsAreOverridden];
      v12 = +[NRDataCollector createSharedInstance];
      if ([v11 managedConfigurationWatchDisabled])
      {
        v13 = nrGetPairingError();
        v14 = nr_daemon_log();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

        if (v15)
        {
          v16 = nr_daemon_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000FEEB0();
          }
        }

        v17 = v11[47];
        v18 = a1[6];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10003F628;
        v35[3] = &unk_100177280;
        v19 = a1[8];
        v36 = v13;
        v37 = v19;
        v20 = v13;
        [v17 removeObject:v18 withCleanupBlock:v35];
      }

      else
      {
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10003F63C;
        v30[3] = &unk_1001772A8;
        v31 = v11;
        v24 = a1[6];
        v25 = a1[4];
        v26 = a1[7];
        v27 = a1[5];
        *&v28 = v26;
        *(&v28 + 1) = v27;
        *&v29 = v24;
        *(&v29 + 1) = v25;
        v32 = v29;
        v33 = v28;
        v34 = a1[8];
        [v31 getCanPairAnotherDeviceWithCompletion:v30];

        v20 = v31;
      }
    }
  }

  else
  {
    v21 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v22 = nr_daemon_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000FEE74();
      }
    }

    v23 = a1[8];
    v11 = nrGetPairingError();
    v23[2](v23, v11);
  }
}

void sub_10003F63C(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) removeAssertionsForProxy:*(a1 + 40)];
    v3 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
    if (*(a1 + 48))
    {
      v4 = *(a1 + 48);
    }

    else
    {
      v4 = @"none";
    }

    v5 = [@"OOBPairTo-" stringByAppendingString:v4];
    if (([v3 hasTransactionType:@"pair"] & 1) == 0)
    {
      [*(a1 + 32) clearMagicSwitchAdvertisingIdentifierSeedIfNeeded];
      if (_NRIsAutomated())
      {
        v6 = 0;
      }

      else
      {
        v14 = [*(a1 + 40) appPath];
        v15 = [v14 lowercaseString];
        v6 = [v15 containsString:@"bridge"];
      }

      v30 = [[EPOOBKey alloc] initWithData:*(a1 + 56)];
      v29 = [*(a1 + 64) objectForKeyedSubscript:NRPairOptionGizmoPairingVersion];
      v28 = [*(a1 + 64) objectForKeyedSubscript:NRPairOptionIsAltAccountGizmo];
      [*(*(a1 + 32) + 144) addService:v30];
      v16 = objc_opt_new();
      v26 = [EPRoutingSlipEntry alloc];
      v25 = objc_opt_class();
      v37[0] = @"extensiblePairingPairingType";
      v27 = [[EPSagaOperandString alloc] initWithString:@"extensiblePairingTypeDiscoverAndPairWithName"];
      v38[0] = v27;
      v37[1] = @"extensiblePairingAdvertisedName";
      v24 = [[EPSagaOperandString alloc] initWithString:*(a1 + 48)];
      v38[1] = v24;
      v37[2] = @"extensiblePairingShouldFilePairingReport";
      v17 = [EPSagaOperandNumber alloc];
      v18 = [NSNumber numberWithBool:v6];
      v19 = [(EPSagaOperandNumber *)v17 initWithNumber:v18];
      v38[2] = v19;
      v37[3] = @"extensiblePairingGizmoPairingVersion";
      v20 = [[EPSagaOperandNumber alloc] initWithNumber:v29];
      v38[3] = v20;
      v37[4] = @"isAltAccountGizmo";
      v21 = [[EPSagaOperandNumber alloc] initWithNumber:v28];
      v38[4] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:5];
      v23 = [(EPRoutingSlipEntry *)v26 initWithName:v5 transactionClass:v25 operands:v22];
      [v16 setEntry:v23];

      [v16 setRunningStatusCode:1];
      [v16 setUserInfo:*(a1 + 40)];
      [v16 setOperationType:@"pair"];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10003FB3C;
      v34[3] = &unk_100176A68;
      v35 = *(a1 + 32);
      v36 = *(a1 + 40);
      [v16 setDidEnd:v34];
      [v3 addTransaction:v16];
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = nrGetPairingError();
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000FEEEC();
      }
    }

    v11 = *(a1 + 40);
    v12 = *(*(a1 + 32) + 376);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10003FDC8;
    v31[3] = &unk_100177280;
    v13 = *(a1 + 72);
    v32 = v7;
    v33 = v13;
    v3 = v7;
    [v12 removeObject:v11 withCleanupBlock:v31];

    v5 = v33;
  }
}

void sub_10003FB3C(uint64_t a1, void *a2)
{
  v3 = [a2 getLastFirstError];

  if (!v3)
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Completed NewWatchPairing.", &v19, 2u);
      }
    }

    [*(a1 + 32) updatePairingSessionIdIfNeededForActiveDevice];
  }

  v7 = [*(a1 + 32) supportsEarlyPairedSync];
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CompanionOOB: Deferring pairing client proxy removal.", &v19, 2u);
      }
    }

    *(*(a1 + 32) + 47) = 1;
  }

  else
  {
    if (v9)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CompanionOOB: removing pairing client proxy.", &v19, 2u);
      }
    }

    [*(*(a1 + 32) + 376) removeObject:*(a1 + 40) withCleanupBlock:0];
  }

  v12 = nr_daemon_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = nr_daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) mirrorOfActiveDeviceID];
      v19 = 138477827;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending report for %{private}@", &v19, 0xCu);
    }
  }

  v16 = objc_opt_new();
  v17 = *(a1 + 32);
  v18 = [v17 mirrorOfActiveDeviceID];
  [v16 submitPairingReportWithRegistry:v17 deviceID:v18];
}

void sub_10003FF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003FFBC(id *a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000FEFD0(a1);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained resetPhoneStateForNewPairing];
    [v6 checkAndDisableStandAloneMode];
    [v6 logIfVersionsAreOverridden];
    v7 = +[NRDataCollector createSharedInstance];
    if ([v6 managedConfigurationWatchDisabled])
    {
      v8 = nrGetPairingError();
      v9 = nr_daemon_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v10)
      {
        v11 = nr_daemon_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000FEEB0();
        }
      }

      v12 = v6[47];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100040230;
      v25[3] = &unk_100177280;
      v13 = a1[6];
      v14 = a1[7];
      v26 = v8;
      v27 = v14;
      v15 = v8;
      [v12 removeObject:v13 withCleanupBlock:v25];
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100040244;
      v21[3] = &unk_100177348;
      v22 = v6;
      v16 = a1[4];
      v17 = a1[6];
      v18 = a1[7];
      *&v19 = a1[5];
      *(&v19 + 1) = v18;
      *&v20 = v16;
      *(&v20 + 1) = v17;
      v23 = v20;
      v24 = v19;
      [v22 getCanPairAnotherDeviceWithCompletion:v21];

      v15 = v22;
    }
  }
}

void sub_100040244(id *a1, int a2)
{
  if (a2)
  {
    [a1[4] clearMagicSwitchAdvertisingIdentifierSeedIfNeeded];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100040438;
    v21[3] = &unk_100177320;
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[4];
    v6 = a1[6];
    v24 = a1[8];
    v7 = a1[7];
    *&v8 = v6;
    *(&v8 + 1) = v7;
    *&v9 = v4;
    *(&v9 + 1) = v5;
    v22 = v9;
    v23 = v8;
    [v3 grabRegistryWithReadBlock:v21];

    v10 = v22;
  }

  else
  {
    v11 = nrGetPairingError();
    v12 = nr_daemon_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000FEEEC();
      }
    }

    v15 = *(a1[4] + 47);
    v16 = a1[6];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100040D38;
    v18[3] = &unk_100177280;
    v17 = a1[8];
    v19 = v11;
    v20 = v17;
    v10 = v11;
    [v15 removeObject:v16 withCleanupBlock:v18];
  }
}

void sub_100040438(id *a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:a1[4]];
  v4 = [v3 objectForKeyedSubscript:NRDevicePropertyAdvertisedName];
  v5 = [v4 value];

  v6 = +[NRQueue registryDaemonQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000405A0;
  v8[3] = &unk_1001772F8;
  v15 = v3 != 0;
  v9 = a1[5];
  v10 = a1[6];
  v14 = a1[8];
  v11 = v5;
  v12 = a1[7];
  v13 = a1[4];
  v7 = v5;
  [v6 dispatchAsync:v8];
}

void sub_1000405A0(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
    if (*(a1 + 48))
    {
      v3 = *(a1 + 48);
    }

    else
    {
      v3 = @"none";
    }

    v4 = [@"PasscodePairTo-" stringByAppendingString:v3];
    if (([v2 hasTransactionType:@"pair"] & 1) == 0)
    {
      if (_NRIsAutomated())
      {
        v5 = 0;
      }

      else
      {
        v13 = [*(a1 + 40) appPath];
        v14 = [v13 lowercaseString];
        v5 = [v14 containsString:@"bridge"];
      }

      v29 = [*(a1 + 56) objectForKeyedSubscript:NRPairOptionGizmoPairingVersion];
      v27 = [*(a1 + 56) objectForKeyedSubscript:NRPairOptionIsAltAccountGizmo];
      v15 = objc_opt_new();
      v16 = [EPRoutingSlipEntry alloc];
      v25 = objc_opt_class();
      v36[0] = @"extensiblePairingPairingType";
      v28 = [[EPSagaOperandString alloc] initWithString:@"extensiblePairingTypeDiscoverAndPairWithDeviceID"];
      v37[0] = v28;
      v36[1] = @"extensiblePairingAdvertisedName";
      v26 = [[EPSagaOperandString alloc] initWithString:*(a1 + 48)];
      v37[1] = v26;
      v36[2] = @"nrDeviceIdentifier";
      v24 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 64)];
      v37[2] = v24;
      v36[3] = @"extensiblePairingShouldFilePairingReport";
      v17 = [EPSagaOperandNumber alloc];
      v18 = [NSNumber numberWithBool:v5];
      v19 = [(EPSagaOperandNumber *)v17 initWithNumber:v18];
      v37[3] = v19;
      v36[4] = @"extensiblePairingGizmoPairingVersion";
      v20 = [[EPSagaOperandNumber alloc] initWithNumber:v29];
      v37[4] = v20;
      v36[5] = @"isAltAccountGizmo";
      v21 = [[EPSagaOperandNumber alloc] initWithNumber:v27];
      v37[5] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:6];
      v23 = [(EPRoutingSlipEntry *)v16 initWithName:v4 transactionClass:v25 operands:v22];
      [v15 setEntry:v23];

      [v15 setRunningStatusCode:1];
      [v15 setUserInfo:*(a1 + 40)];
      [v15 setOperationType:@"pair"];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100040AAC;
      v30[3] = &unk_100176A68;
      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      [v15 setDidEnd:v30];
      [v2 addTransaction:v15];
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = nrGetPairingError();
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000FF07C();
      }
    }

    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 376);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100040A98;
    v33[3] = &unk_100177280;
    v12 = *(a1 + 72);
    v34 = v6;
    v35 = v12;
    v2 = v6;
    [v11 removeObject:v10 withCleanupBlock:v33];

    v4 = v35;
  }
}

void sub_100040AAC(uint64_t a1, void *a2)
{
  v3 = [a2 getLastFirstError];

  if (!v3)
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Completed CompanionPasscode NewWatchPairing.", &v19, 2u);
      }
    }

    [*(a1 + 32) updatePairingSessionIdIfNeededForActiveDevice];
  }

  v7 = [*(a1 + 32) supportsEarlyPairedSync];
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CompanionPasscode: Deferring pairing client proxy removal.", &v19, 2u);
      }
    }

    *(*(a1 + 32) + 47) = 1;
  }

  else
  {
    if (v9)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CompanionPasscode: removing pairing client proxy.", &v19, 2u);
      }
    }

    [*(*(a1 + 32) + 376) removeObject:*(a1 + 40) withCleanupBlock:0];
  }

  v12 = nr_daemon_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = nr_daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) mirrorOfActiveDeviceID];
      v19 = 138477827;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending report for %{private}@", &v19, 0xCu);
    }
  }

  v16 = objc_opt_new();
  v17 = *(a1 + 32);
  v18 = [v17 mirrorOfActiveDeviceID];
  [v16 submitPairingReportWithRegistry:v17 deviceID:v18];
}

void sub_100040DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040E00(uint64_t a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v3 objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
        if ([v8 isPaired])
        {
          *(*(*(a1 + 32) + 8) + 24) = 0;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = +[NRQueue registryDaemonQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100040F94;
  v10[3] = &unk_100175880;
  v10[4] = *(a1 + 32);
  [v9 dispatchAsync:v10];
}

void *sub_100040F94(void *result)
{
  if (*(*(result[4] + 8) + 24) == 1)
  {
    return +[NRMagicSwitchHelper clearCompanionSeed];
  }

  return result;
}

void sub_100041144(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100041168(id *a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000FF128(a1);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained resetWatchStateForNewPairing];
    [v6 logIfVersionsAreOverridden];
    v7 = [v6[18] optionalServiceFromClass:objc_opt_class()];
    v8 = v7;
    if (v7)
    {
      [v7 setAdvertisedName:a1[4]];
      [v8 setPairingMode:3];
      (*(a1[6] + 2))();
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004130C;
      v9[3] = &unk_100176148;
      v10 = v6;
      v11 = a1[4];
      v12 = a1[5];
      v13 = a1[6];
      [v10 grabRegistryWithReadBlockAsync:v9];
    }
  }
}

void sub_10004130C(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[NRQueue registryDaemonQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004142C;
  v12[3] = &unk_100177398;
  v13 = v3;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v11 = v3;
  [v4 dispatchAsync:v12];
}

void sub_10004142C(uint64_t a1)
{
  if ([*(a1 + 32) paired])
  {
    v2 = *(a1 + 64);
    v16 = nrGetPairingError();
    (*(v2 + 16))(v2);
  }

  else
  {
    v3 = [*(*(a1 + 40) + 144) serviceFromClass:objc_opt_class()];
    if (*(a1 + 48))
    {
      v4 = *(a1 + 48);
    }

    else
    {
      v4 = @"none";
    }

    v5 = [@"OOBPairTo-" stringByAppendingString:v4];
    if (([v3 hasTransactionType:@"pair"] & 1) == 0)
    {
      v6 = objc_opt_new();
      v7 = [EPRoutingSlipEntry alloc];
      v8 = objc_opt_class();
      v23[0] = @"extensiblePairingPairingType";
      v9 = [[EPSagaOperandString alloc] initWithString:@"extensiblePairingTypeAdvertiseAndOOBPair"];
      v24[0] = v9;
      v23[1] = @"extensiblePairingAdvertisedName";
      v10 = [[EPSagaOperandString alloc] initWithString:*(a1 + 48)];
      v24[1] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
      v12 = [(EPRoutingSlipEntry *)v7 initWithName:v5 transactionClass:v8 operands:v11];
      [v6 setEntry:v12];

      [v6 setRunningStatusCode:1];
      [v6 setUserInfo:*(a1 + 56)];
      [v6 setOperationType:@"pair"];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000417CC;
      v20[3] = &unk_100176A68;
      v21 = *(a1 + 40);
      v22 = *(a1 + 56);
      [v6 setDidEnd:v20];
      v13 = +[NRQueue registryDaemonQueue];
      v14 = [v13 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000418E8;
      block[3] = &unk_100175598;
      v18 = v3;
      v19 = v6;
      v15 = v6;
      dispatch_async(v14, block);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_1000417CC(uint64_t a1)
{
  v2 = [*(a1 + 32) supportsEarlyPairedSync];
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GizmoOOB: Deferring pairing client proxy removal.", buf, 2u);
      }
    }

    *(*(a1 + 32) + 47) = 1;
  }

  else
  {
    if (v4)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GizmoOOB: Removing pairing client proxy.", v7, 2u);
      }
    }

    [*(*(a1 + 32) + 376) removeObject:*(a1 + 40) withCleanupBlock:0];
  }
}

void sub_1000419B4(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 objectForKeyedSubscript:NRDevicePropertyMigrationConsent];
  v5 = [v4 value];

  v6 = +[NRQueue registryDaemonQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100041ACC;
  v11[3] = &unk_100176730;
  v12 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v10 = v5;
  [v6 dispatchAsync:v11];
}

void sub_100041ACC(uint64_t a1)
{
  if ([*(a1 + 32) BOOLValue])
  {
    v2 = +[NRDataCollector createSharedInstance];
    v3 = [NSProgress progressWithTotalUnitCount:1];
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) UUIDString];
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "xpcBeginMigrationWithDeviceID:completion: Starting migration to %@", buf, 0xCu);
      }
    }

    v8 = [*(*(a1 + 48) + 144) serviceFromClass:objc_opt_class()];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100041D30;
    v12[3] = &unk_100175F50;
    v11 = *(a1 + 40);
    v9 = v11.i64[0];
    v13 = vextq_s8(v11, v11, 8uLL);
    v14 = *(a1 + 56);
    [v8 beginMigrationToDevice:v9 progress:v3 completion:v12];
  }

  else
  {
    v10 = *(a1 + 56);
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Consent not given for migration";
    v3 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.NanoRegistry" code:1100 userInfo:v3];
    (*(v10 + 16))(v10, v8);
  }
}

void sub_100041D30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 nr_safeDescription];
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "xpcBeginMigrationWithDeviceID:completion: Migration done- error %{public}@", buf, 0xCu);
    }
  }

  if ([v3 code] == 8)
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "xpcBeginMigrationWithDeviceID:completion: Migration done- watch returned fatal error, unpairing", buf, 2u);
      }
    }

    LOBYTE(v15) = 1;
    [*(a1 + 32) unpairDeviceWithPairingID:*(a1 + 40) obliterationString:0 shouldBrick:&__kCFBooleanFalse storeUnpair:&__kCFBooleanFalse migrationUnpair:&__kCFBooleanFalse shouldPreserveESim:&__kCFBooleanFalse pairingReport:0 remoteUnpairRequestUUID:0 shouldConnectionWithDevice:v15];
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 352);
  *(v11 + 352) = 0;

  (*(*(a1 + 48) + 16))();
  v13 = *(a1 + 32);
  v14 = *(v13 + 368);
  *(v13 + 368) = 0;
}

void sub_1000422E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100042308(id *a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000FF210(a1);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained resetWatchStateForNewPairing];
    [v6 logIfVersionsAreOverridden];
    v7 = [v6[18] optionalServiceFromClass:objc_opt_class()];
    v8 = v7;
    if (v7)
    {
      [v7 setAdvertisedName:a1[4]];
      [v8 setPairingMode:4];
      (*(a1[6] + 2))();
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000424AC;
      v9[3] = &unk_100176148;
      v10 = v6;
      v11 = a1[4];
      v12 = a1[5];
      v13 = a1[6];
      [v10 grabRegistryWithReadBlockAsync:v9];
    }
  }
}

void sub_1000424AC(uint64_t a1, void *a2)
{
  if ([a2 paired])
  {
    v3 = *(a1 + 56);
    v17 = nrGetPairingError();
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
    if (*(a1 + 40))
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = @"none";
    }

    v6 = [@"PasscodePairTo-" stringByAppendingString:v5];
    if (([v4 hasTransactionType:@"pair"] & 1) == 0)
    {
      v7 = objc_opt_new();
      v8 = [EPRoutingSlipEntry alloc];
      v9 = objc_opt_class();
      v24[0] = @"extensiblePairingPairingType";
      v10 = [[EPSagaOperandString alloc] initWithString:@"extensiblePairingTypeAdvertiseAndPasscodePair"];
      v25[0] = v10;
      v24[1] = @"extensiblePairingAdvertisedName";
      v11 = [[EPSagaOperandString alloc] initWithString:*(a1 + 40)];
      v25[1] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
      v13 = [(EPRoutingSlipEntry *)v8 initWithName:v6 transactionClass:v9 operands:v12];
      [v7 setEntry:v13];

      [v7 setRunningStatusCode:1];
      [v7 setUserInfo:*(a1 + 48)];
      [v7 setOperationType:@"pair"];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10004284C;
      v21[3] = &unk_100176A68;
      v22 = *(a1 + 32);
      v23 = *(a1 + 48);
      [v7 setDidEnd:v21];
      v14 = +[NRQueue registryDaemonQueue];
      v15 = [v14 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100042968;
      block[3] = &unk_100175598;
      v19 = v4;
      v20 = v7;
      v16 = v7;
      dispatch_async(v15, block);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10004284C(uint64_t a1)
{
  v2 = [*(a1 + 32) supportsEarlyPairedSync];
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GizmoPasscode: Deferring pairing client proxy removal.", buf, 2u);
      }
    }

    *(*(a1 + 32) + 47) = 1;
  }

  else
  {
    if (v4)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GizmoPasscode: removing pairing client proxy.", v7, 2u);
      }
    }

    [*(*(a1 + 32) + 376) removeObject:*(a1 + 40) withCleanupBlock:0];
  }
}

void sub_100042B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100042B74(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] collection];
    v4 = [v3 activeDevice];

    v5 = [*(a1[4] + 18) optionalServiceFromClass:objc_opt_class()];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v10 = v7;

    if (([v10 isErrorSet] & 1) == 0)
    {
      v11 = nrGetPairingError();
      [v10 setOriginalError:v11];
    }

    v12 = a1[4];
    v13 = [v4 pairingID];
    v14 = [a1[5] appPath];
    v15 = [@"unpair-" stringByAppendingString:v14];
    LOBYTE(v16) = 1;
    [v12 unpairDeviceWithPairingID:v13 obliterationString:v15 shouldBrick:&__kCFBooleanFalse storeUnpair:&__kCFBooleanFalse migrationUnpair:&__kCFBooleanFalse shouldPreserveESim:&__kCFBooleanTrue pairingReport:v10 remoteUnpairRequestUUID:0 shouldConnectionWithDevice:v16];

LABEL_11:
    goto LABEL_12;
  }

  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000FF288();
    }

    goto LABEL_11;
  }

LABEL_12:
}

void sub_100043050(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
  v2 = nrGetPairingError();
  [v4 cancelWithOperationType:@"pair" error:v2];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

void sub_1000431A0(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  v5 = [v4 value];

  v6 = +[NRQueue registryDaemonQueue];
  v7 = [v6 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000432B4;
  block[3] = &unk_1001758F8;
  v8 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(v7, block);
}

id sub_1000432B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) BOOLValue];
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  return [v2 enterCompatibilityState:v5 withDeviceID:v4 withCompletion:0];
}

void sub_100043640(uint64_t a1, char a2)
{
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (a2)
  {
    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_enterCompatibilityState: deferring cleanup of pairing clients", v10, 2u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_enterCompatibilityState: cleaning up pairing clients", buf, 2u);
      }
    }

    [*(*(a1 + 32) + 376) removeAllObjects];
  }

  v8 = [*(*(a1 + 32) + 144) optionalServiceFromClass:objc_opt_class()];
  [v8 filePairingReport];
  [*(*(a1 + 32) + 528) addObject:*(a1 + 40)];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"NRNotificationWaitForBridgeComplete" object:*(a1 + 32)];
}

void sub_1000437B0(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v3 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
  if ([v4 supportsCapability:v3])
  {
    [v4 isAltAccount];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100043E14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceCollection];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  v6 = [*(a1 + 40) _resolveIsSetupNumberForDevice:v5];
  if (v5)
  {
    v7 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
    if ([v5 supportsCapability:v7])
    {
      v8 = [v6 BOOLValue];

      if ((v8 & 1) == 0)
      {
        v9 = nr_daemon_log();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v11 = nr_daemon_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unpairing a device with unset isSetup flag.", &v21, 2u);
          }
        }

        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }

    else
    {
    }
  }

  v12 = [*(a1 + 48) appPath];
  v13 = [v12 lastPathComponent];
  v14 = [v13 isEqualToString:@"nanoregistryd"];

  if (v5 && !(v14 & 1 | (([v5 isArchived] & 1) == 0)))
  {
    v17 = [*(a1 + 40) _migrationReporter];
    [v17 fileEarlyMigrationFailure:5 withDeviceHistory:v3 forPairingID:*(a1 + 32)];
LABEL_20:

    goto LABEL_21;
  }

  if (v14)
  {
    if ([v5 isArchived])
    {
      v15 = nr_daemon_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v17 = nr_daemon_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*(a1 + 32) UUIDString];
          v19 = v18;
          v20 = @"(nil)";
          if (v18)
          {
            v20 = v18;
          }

          v21 = 138412290;
          v22 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "nanoregistryd called NanoRegistry to unpair this archived deviceID: %@", &v21, 0xCu);
        }

        goto LABEL_20;
      }
    }
  }

LABEL_21:
}

uint64_t sub_100044098(uint64_t a1)
{
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v1 = nr_daemon_log();
    v3 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v1 = nr_daemon_log();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Removing all objects from _pairingClients", buf, 2u);
      }
    }

    [*(*(a1 + 32) + 376) removeAllObjects];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 80);
  if (v6 == 1)
  {
    v1 = [*(a1 + 48) appPath];
    v7 = [@"unpair-" stringByAppendingString:v1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSNumber numberWithBool:*(a1 + 81)];
  v9 = [NSNumber numberWithBool:*(a1 + 82)];
  v10 = [NSNumber numberWithBool:*(a1 + 83)];
  LOBYTE(v12) = 1;
  [v4 unpairDeviceWithPairingID:v5 obliterationString:v7 shouldBrick:v8 storeUnpair:v9 migrationUnpair:&__kCFBooleanFalse shouldPreserveESim:v10 pairingReport:*(a1 + 56) remoteUnpairRequestUUID:0 shouldConnectionWithDevice:v12];

  if (v6)
  {
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100044410(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting client requested suspend flag", v5, 2u);
    }
  }

  *(*(a1 + 32) + 48) = 1;
}

void sub_100044660(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100044680(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained pairingClients];
    [v3 addObject:*(a1 + 32)];
  }
}

void sub_1000446E8(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting client requested flag", v5, 2u);
    }
  }

  *(*(a1 + 32) + 48) = 0;
}

void sub_10004489C(uint64_t a1, void *a2)
{
  v2 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v22;
    v8 = NRDevicePropertyMaxPairingCompatibilityVersion;
    v9 = NRDevicePropertyPairingCompatibilityVersion;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v11 = [v2 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * i)];
        if ([v11 isPaired])
        {
          v12 = [v11 objectForKeyedSubscript:v8];
          v13 = [v12 value];

          if (!v13)
          {
            v14 = [v11 objectForKeyedSubscript:v9];
            v13 = [v14 value];
          }

          if ([v13 integerValue] > v5)
          {
            v5 = [v13 integerValue];
          }

          v6 = 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v15 = +[NRQueue registryDaemonQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100044ADC;
  v17[3] = &unk_100177488;
  v20 = v6 & 1;
  v18 = *(a1 + 40);
  v19 = v5;
  v17[4] = *(a1 + 32);
  [v15 dispatchAsync:v17];
}

uint64_t sub_100044ADC(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(a1 + 48);
    v3 = +[NRPairingCompatibilityVersionInfo systemVersions];
    v4 = [*(a1 + 32) chipIDOfActiveDevice];
    [v3 minQuickSwitchPairingCompatibilityVersionForChipID:v4];
  }

  else
  {
    v6 = *(a1 + 40);
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_100044ECC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activeDeviceID];

  if (v4)
  {
    v5 = [v3 activeDevice];
    v6 = [v5 objectForKeyedSubscript:_NRDevicePropertyCompatibilityState];
    v7 = [v6 value];

    v8 = +[NRQueue registryDaemonQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100045008;
    v10[3] = &unk_100175598;
    v10[4] = *(a1 + 32);
    v11 = v7;
    v9 = v7;
    [v8 dispatchAsync:v10];
  }

  else
  {
    [*(*(a1 + 32) + 296) setConnected:0];
    [*(a1 + 32) startIDSConnectivityTimeout];
  }
}

uint64_t sub_100045014(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activeDevice];
  v5 = v4;
  if (v4 && [v4 isPaired])
  {
    v6 = *(a1 + 32);
    v7 = [v3 activeDeviceID];
    [v6 _updateCompatibilityStateForDeviceID:v7 withDeviceCollection:v3];
  }

  return 0;
}

void sub_100045304(uint64_t a1, void *a2)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = _NRDevicePropertyBluetoothIdentifier;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        if ([v10 isPaired])
        {
          v11 = [v10 objectForKeyedSubscript:v7];
          v12 = [v11 value];

          if ([v12 isEqual:*(a1 + 32)])
          {
            v13 = v9;

            goto LABEL_13;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  v14 = +[NRQueue registryDaemonQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100045510;
  v17[3] = &unk_100175688;
  v15 = *(a1 + 40);
  v18 = v13;
  v19 = v15;
  v16 = v13;
  [v14 dispatchAsync:v17];
}

void sub_1000456A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000456BC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1001B37D8;
  qword_1001B37D8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000456F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [v3 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        if ([v10 isPaired] && (objc_msgSend(v10, "isArchived") & 1) == 0)
        {
          v7 |= [v10 isActive];
          v6 = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v7) = 0;
  }

  [qword_1001B37D8 setLaunchEvent:@"com.apple.security.secureobjectsync.viewschanged" enable:v6 & 1];
  [qword_1001B37D8 setLaunchEvent:@"AppleLanguagePreferencesChangedNotification" enable:v7 & 1];
  [qword_1001B37D8 setLaunchEvent:MCSettingsChangedNotification enable:v7 & 1];
  [qword_1001B37D8 setLaunchEvent:MCRestrictionChangedNotification enable:v7 & 1];
  [qword_1001B37D8 setLaunchEvent:MCEffectiveSettingsChangedNotification enable:v7 & 1];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

uint64_t sub_1000459E8(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"12S"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"13S"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasPrefix:@"13V"];
  }

  return v3;
}

uint64_t sub_100045B14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = (a1 + 32);
  v7 = *(a1 + 32);
  if (v7)
  {
    v9 = *(a1 + 40);
    v10 = [v7 nsuuid];
    v11 = [v9 _deviceFromIDSBTUUID:v10];

    if (v11)
    {
      v12 = nr_daemon_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      v123 = v5;
      v120 = v6;
      if (v13)
      {
        v14 = nr_daemon_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [*v8 modelIdentifier];
          v16 = [*v8 productName];
          [*v8 productVersion];
          v17 = v124 = v11;
          v18 = [*v8 productBuildVersion];
          [*v8 name];
          v19 = v121 = a1;
          v20 = [*v8 deviceColor];
          v21 = [*v8 enclosureColor];
          v118 = [*v8 minCompatibilityVersion];
          v22 = [*v8 maxCompatibilityVersion];
          v23 = [*v8 pairingProtocolVersion];
          *buf = 138545666;
          v132 = v15;
          v133 = 2114;
          v134 = v16;
          v135 = 2114;
          v136 = v17;
          v137 = 2114;
          v138 = v18;
          v139 = 2112;
          v140 = v19;
          v141 = 2114;
          v142 = v20;
          v143 = 2114;
          v144 = v21;
          v145 = 2048;
          v146 = v118;
          v147 = 2048;
          v148 = v22;
          v149 = 2048;
          v150 = v23;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "IDSDevice properties: modelIdentifier=%{public}@ productName=%{public}@ productVersion=%{public}@ productBuildVersion=%{public}@ name=%@ deviceColor=%{public}@ enclosureColor=%{public}@ compatibilityVersion=%lld-%lld ppv=%lld", buf, 0x66u);

          a1 = v121;
          v11 = v124;
        }
      }

      v24 = +[NSMutableDictionary dictionary];
      v25 = [*v8 productName];

      if (v25)
      {
        v26 = [NRDevicePropertyDiffType alloc];
        v27 = [NRDevicePropertyDiff alloc];
        v28 = [*v8 productName];
        v29 = [v27 initWithValue:v28];
        v30 = [v26 initWithDiff:v29 andChangeType:1];
        [v24 setObject:v30 forKeyedSubscript:NRDevicePropertySystemName];
      }

      v31 = [*v8 productVersion];

      if (v31)
      {
        v32 = [NRDevicePropertyDiffType alloc];
        v33 = [NRDevicePropertyDiff alloc];
        v34 = [*v8 productVersion];
        v35 = [v33 initWithValue:v34];
        v36 = [v32 initWithDiff:v35 andChangeType:1];
        [v24 setObject:v36 forKeyedSubscript:NRDevicePropertySystemVersion];
      }

      v37 = NRDevicePropertySystemBuildVersion;
      v38 = [v11 objectForKeyedSubscript:NRDevicePropertySystemBuildVersion];
      v39 = [v38 value];

      v125 = [*v8 productBuildVersion];
      if (v125 && [*v8 isConnected])
      {
        v40 = [NRDevicePropertyDiffType alloc];
        v41 = [[NRDevicePropertyDiff alloc] initWithValue:v125];
        v42 = [v40 initWithDiff:v41 andChangeType:1];
        [v24 setObject:v42 forKeyedSubscript:v37];
      }

      v43 = [*v8 deviceColor];

      if (v43)
      {
        v44 = [NRDevicePropertyDiffType alloc];
        v45 = [NRDevicePropertyDiff alloc];
        v46 = [*v8 deviceColor];
        v47 = [v45 initWithValue:v46];
        v48 = [v44 initWithDiff:v47 andChangeType:1];
        [v24 setObject:v48 forKeyedSubscript:NRDevicePropertyColor];
      }

      v49 = [*v8 enclosureColor];

      if (v49)
      {
        v50 = [NRDevicePropertyDiffType alloc];
        v51 = [NRDevicePropertyDiff alloc];
        v52 = [*v8 enclosureColor];
        v53 = [v51 initWithValue:v52];
        v54 = [v50 initWithDiff:v53 andChangeType:1];
        [v24 setObject:v54 forKeyedSubscript:NRDevicePropertyEnclosureColor];
      }

      v55 = [*(*(a1 + 40) + 144) optionalServiceFromClass:objc_opt_class()];
      v56 = [*(a1 + 32) nsuuid];
      v119 = v55;
      v57 = [v55 idsDeviceIdentifierForBTUUID:v56];

      v122 = v39;
      if (v57)
      {
        v58 = [*(a1 + 40) secureProperties];

        if (v58)
        {
          v59 = _NRDevicePropertyMigrationIDSCloudIdentifier;
          v60 = [v11 objectForKeyedSubscript:_NRDevicePropertyMigrationIDSCloudIdentifier];
          v61 = [v60 value];

          v62 = [*(a1 + 40) secureProperties];
          v63 = [v62 objectForKeyedSubscript:v61];

          if (([v63 isEqual:v57] & 1) == 0)
          {
            v64 = [*(a1 + 40) secureProperties];
            v65 = [v64 storeSecureProperty:v57];

            v66 = [NRDevicePropertyDiffType alloc];
            v67 = [[NRDevicePropertyDiff alloc] initWithValue:v65];
            v68 = [v66 initWithDiff:v67 andChangeType:1];
            [v24 setObject:v68 forKeyedSubscript:v59];

            v61 = v65;
            v39 = v122;
          }
        }
      }

      v126[0] = _NSConcreteStackBlock;
      v126[1] = 3221225472;
      v126[2] = sub_100046858;
      v126[3] = &unk_1001774F8;
      v69 = v11;
      v127 = v69;
      v70 = v24;
      v128 = v70;
      v71 = objc_retainBlock(v126);
      if ([*v8 maxCompatibilityVersion] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*v8, "maxCompatibilityVersion") && objc_msgSend(*v8, "isConnected"))
      {
        v117 = v71;
        v72 = [NRDevicePropertyDiffType alloc];
        v73 = [NRDevicePropertyDiff alloc];
        v74 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*v8 maxCompatibilityVersion]);
        v75 = [v73 initWithValue:v74];
        v76 = [v72 initWithDiff:v75 andChangeType:1];
        [v70 setObject:v76 forKeyedSubscript:NRDevicePropertyPairingCompatibilityVersion];

        v77 = [NRDevicePropertyDiffType alloc];
        v78 = [NRDevicePropertyDiff alloc];
        v79 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*v8 maxCompatibilityVersion]);
        v80 = [v78 initWithValue:v79];
        v81 = [v77 initWithDiff:v80 andChangeType:1];
        [v70 setObject:v81 forKeyedSubscript:NRDevicePropertyMaxPairingCompatibilityVersion];

        v82 = [*v8 maxCompatibilityVersion];
      }

      else
      {
        if ([*v8 maxCompatibilityVersion] || objc_msgSend(*v8, "pairingProtocolVersion") == 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(*v8, "isConnected"))
        {
LABEL_36:
          if ([*v8 minCompatibilityVersion] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*v8, "minCompatibilityVersion") && objc_msgSend(*v8, "isConnected"))
          {
            v95 = v71;
            v96 = [NRDevicePropertyDiffType alloc];
            v97 = [NRDevicePropertyDiff alloc];
            v98 = [*v8 minCompatibilityVersion];
          }

          else
          {
            if ([*v8 minCompatibilityVersion] || objc_msgSend(*v8, "pairingProtocolVersion") == 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(*v8, "isConnected"))
            {
              goto LABEL_45;
            }

            v95 = v71;
            v96 = [NRDevicePropertyDiffType alloc];
            v97 = [NRDevicePropertyDiff alloc];
            v98 = [*v8 pairingProtocolVersion];
          }

          v99 = [NSNumber numberWithInteger:v98];
          v100 = [v97 initWithValue:v99];
          v101 = [v96 initWithDiff:v100 andChangeType:1];
          [v70 setObject:v101 forKeyedSubscript:NRDevicePropertyMinPairingCompatibilityVersion];

          v71 = v95;
LABEL_45:
          v102 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v70];
          v103 = [[NRDeviceDiffType alloc] initWithDiff:v102 andChangeType:1];
          v104 = [v69 objectForKeyedSubscript:NRDevicePropertyPairingID];
          v105 = [v104 value];

          if (v105)
          {
            v117 = v57;
            v106 = v71;
            v107 = [NRDeviceCollectionDiff alloc];
            v129 = v105;
            v130 = v103;
            v108 = [NSDictionary dictionaryWithObjects:&v130 forKeys:&v129 count:1];
            v109 = [v107 initWithDeviceCollectionDiffDeviceDiffs:v108];

            v39 = v122;
            v110 = [v123 applyDiff:v109];
            v111 = [v69 isPaired];
            if (v125 && v111 && v122 && ([v122 isEqualToString:v125] & 1) == 0)
            {
              [*(a1 + 40) presentWatchWasUpdatedAlertIfNeededForNewBuildVersion:v125 oldBuildVersion:v122];
              v112 = nr_daemon_log();
              v113 = os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT);

              if (v113)
              {
                v114 = nr_daemon_log();
                if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v132 = v122;
                  v133 = 2112;
                  v134 = v125;
                  _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Build version changed from %@ to %@, checking if we should mark is Setup", buf, 0x16u);
                }
              }

              [*(a1 + 40) _markDeviceIsSetupWhereApplicable:v69 bypassIsSetupNoCheck:{0, v117}];
              v39 = v122;
            }

            v71 = v106;
            v57 = v117;
          }

          v5 = v123;
          v6 = v120;
          goto LABEL_57;
        }

        v117 = v71;
        v85 = [NRDevicePropertyDiffType alloc];
        v86 = [NRDevicePropertyDiff alloc];
        v87 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*v8 pairingProtocolVersion]);
        v88 = [v86 initWithValue:v87];
        v89 = [v85 initWithDiff:v88 andChangeType:1];
        [v70 setObject:v89 forKeyedSubscript:NRDevicePropertyPairingCompatibilityVersion];

        v90 = [NRDevicePropertyDiffType alloc];
        v91 = [NRDevicePropertyDiff alloc];
        v92 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*v8 pairingProtocolVersion]);
        v93 = [v91 initWithValue:v92];
        v94 = [v90 initWithDiff:v93 andChangeType:1];
        [v70 setObject:v94 forKeyedSubscript:NRDevicePropertyMaxPairingCompatibilityVersion];

        v82 = [*v8 pairingProtocolVersion];
      }

      v71 = v117;
      (v117[2])(v117, v82);
      v39 = v122;
      goto LABEL_36;
    }
  }

  v83 = nr_daemon_log();
  v84 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);

  if (!v84)
  {
    v69 = 0;
    goto LABEL_59;
  }

  v70 = nr_daemon_log();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
  {
    sub_1000FF2D8((a1 + 32));
  }

  v69 = 0;
LABEL_57:

LABEL_59:
  v115 = +[NRQueue registryDaemonQueue];
  [v115 dispatchAsync:*(a1 + 48)];

  return 0;
}

void sub_100046858(uint64_t a1, id a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:NRDevicePropertyMaxPairingCompatibilityVersion];
  v8 = [v4 value];

  v5 = v8;
  if (v8)
  {
    v6 = [v8 integerValue] == a2;
    v5 = v8;
    if (!v6)
    {
      v7 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
      [*(a1 + 40) setObject:v7 forKeyedSubscript:NRDevicePropertyMarketingVersion];

      v5 = v8;
    }
  }
}

void sub_100046B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046BB0(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _deviceFromIDSBTUUID:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:NRDevicePropertyAdvertisedName];
    v6 = [v5 value];

    v7 = [v4 pairingID];
    v8 = [v4 isPaired];
    v9 = [v4 isSetup];
    v10 = +[NRQueue registryDaemonQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100046DB0;
    v17[3] = &unk_100177520;
    v18 = v6;
    v11 = *(a1 + 48);
    v26 = v8;
    v25 = *(a1 + 80);
    v27 = *(a1 + 88);
    v28 = v9;
    v12 = *(a1 + 32);
    v19 = v11;
    v20 = v12;
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    v23 = v7;
    v24 = *(a1 + 72);
    v13 = v7;
    v14 = v6;
    [v10 dispatchAsync:v17];

LABEL_6:
    goto LABEL_7;
  }

  v15 = nr_daemon_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

  if (v16)
  {
    v14 = nr_daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000FF380(v2);
    }

    goto LABEL_6;
  }

LABEL_7:
}

void sub_100046DB0(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:*(a1 + 40)])
  {
    if (*(a1 + 96) == 1)
    {
      *(*(*(a1 + 88) + 8) + 24) = 1;
    }

    v2 = nr_daemon_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = nr_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(*(a1 + 88) + 8) + 24);
        v6 = *(a1 + 97);
        v7 = *(a1 + 98);
        v8 = *(a1 + 32);
        v9 = *(a1 + 99);
        *buf = 67110146;
        v30 = v5;
        v31 = 1024;
        v32 = v6;
        v33 = 1024;
        v34 = v7;
        v35 = 2114;
        v36 = v8;
        v37 = 1024;
        v38 = v9;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remote unpair: shouldObliterate: %{BOOL}d, shouldBrick: %{BOOL}d, shouldPreserveESim: %{BOOL}d, advertised name: %{public}@, device isSetup: %{BOOL}d", buf, 0x24u);
      }
    }

    v10 = [*(*(a1 + 48) + 144) optionalServiceFromClass:objc_opt_class()];
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = [v11 unsignedIntegerValue];
      v13 = nr_daemon_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (v14)
      {
        v15 = nr_daemon_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000FF410(v12, a1);
        }
      }

      if (([v10 isErrorSet] & 1) == 0)
      {
        if (!v10)
        {
          v10 = objc_opt_new();
        }

        [v10 setPairingReportErrorForRemoteError:v12 withReason:*(a1 + 64)];
      }
    }

    if ((*(a1 + 99) & 1) == 0)
    {
      v16 = nr_daemon_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v18 = nr_daemon_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Remote unpair: removing all objects from _pairingClients", buf, 2u);
        }
      }

      [*(*(a1 + 48) + 376) removeAllObjects];
    }

    v19 = *(a1 + 48);
    v20 = *(a1 + 72);
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      v21 = @"remoteUnpair";
    }

    else
    {
      v21 = 0;
    }

    v22 = [NSNumber numberWithBool:*(a1 + 97)];
    v23 = [NSNumber numberWithBool:*(a1 + 98)];
    v24 = [NSUUID alloc];
    v25 = [*(a1 + 80) context];
    v26 = [v25 outgoingResponseIdentifier];
    v27 = [v24 initWithUUIDString:v26];
    LOBYTE(v28) = 1;
    [v19 unpairDeviceWithPairingID:v20 obliterationString:v21 shouldBrick:v22 storeUnpair:&__kCFBooleanFalse migrationUnpair:&__kCFBooleanFalse shouldPreserveESim:v23 pairingReport:v10 remoteUnpairRequestUUID:v27 shouldConnectionWithDevice:v28];
  }
}

void sub_100047474(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _deviceFromIDSBTUUID:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:NRDevicePropertyPairingID];
    v6 = [v5 value];

    if (v6)
    {
      v7 = +[NRQueue registryDaemonQueue];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000475E8;
      v11[3] = &unk_100175CE0;
      v11[4] = *(a1 + 32);
      v12 = v6;
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v8 = v6;
      [v7 dispatchAsync:v11];

LABEL_7:
      goto LABEL_8;
    }
  }

  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

  if (v10)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000FF4F4(v2);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_1000475E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 264))
  {
    v3 = [NROSTransaction transactionWithName:@"unsavedreceivedproperties"];
    v4 = *(a1 + 32);
    v5 = *(v4 + 264);
    *(v4 + 264) = v3;

    v2 = *(a1 + 32);
  }

  ++*(v2 + 272);
  v6 = +[NRQueue firstUnlockQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100047700;
  v8[3] = &unk_100175CE0;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v6 dispatchAsync:v8];
}

id sub_100047700(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100047780;
  v5[3] = &unk_100176198;
  v6 = *(a1 + 56);
  v5[4] = v2;
  return [v2 updateDeviceID:v1 withProperties:v3 withCompletion:v5];
}

void sub_100047780(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2 == 1)
  {
    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Full set of properties received from remote device", buf, 2u);
      }
    }

    kdebug_trace();
    v6 = [*(*(a1 + 32) + 144) optionalServiceFromClass:objc_opt_class()];
    [v6 propertiesReceived];
    v7 = *(a1 + 32);
    if (*(v7 + 32) == 1)
    {
      v8 = +[NRNetworkRelayPair sharedInstance];
      [v8 propertiesReceived];

      v7 = *(a1 + 32);
    }

    v9 = [*(v7 + 144) optionalServiceFromClass:objc_opt_class()];
    [v9 propertiesReceived];

LABEL_9:
    return;
  }

  if (v4)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Property update received from remote device (partial properties)", v10, 2u);
    }

    goto LABEL_9;
  }
}

void sub_100047EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100047EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = [v3 deviceCollection];
  v6 = [v5 activeDeviceID];
  v7 = [v4 isEqual:v6];

  v8 = +[NRQueue registryDaemonQueue];
  if (v7)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004805C;
    v14[3] = &unk_100175660;
    v9 = &v15;
    v15 = *(a1 + 32);
    [v8 dispatchAsync:v14];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000480E4;
    v10[3] = &unk_1001775E0;
    v9 = &v11;
    v11 = *(a1 + 32);
    v12 = v3;
    v13 = *(a1 + 40);
    [v8 dispatchAsync:v10];

    v8 = v12;
  }
}

void sub_10004805C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientBlock];
  if (v2)
  {
    v4 = v2;
    [*(a1 + 32) setClientBlock:0];
    v3 = [*(a1 + 32) assertionID];
    v4[2](v4, 0, v3);

    v2 = v4;
  }
}

void sub_1000480E4(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [EPRoutingSlipEntry alloc];
  v4 = [*(a1 + 32) assertionID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"none";
  }

  v7 = [@"switchTo-" stringByAppendingString:v6];
  v8 = objc_opt_class();
  v30 = @"switchToNRDeviceUUID";
  v9 = [EPSagaOperandUUID alloc];
  v10 = [*(a1 + 32) pairingID];
  v11 = [(EPSagaOperandUUID *)v9 initWithUUID:v10];
  v31 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v13 = [(EPRoutingSlipEntry *)v3 initWithName:v7 transactionClass:v8 operands:v12];
  [v2 setEntry:v13];

  [v2 setRunningStatusCode:3];
  v14 = [*(a1 + 32) clientProxy];
  [v2 setUserInfo:v14];

  v15 = [*(a1 + 32) pairingID];
  [v2 setTargetPairingID:v15];

  v16 = [*(a1 + 40) deviceCollection];
  v17 = [*(a1 + 32) pairingID];
  v18 = [v16 deviceForPairingID:v17];

  v19 = [v18 isAltAccount];
  v20 = &off_100175818;
  if (v19)
  {
    v20 = &off_100175830;
  }

  [v2 setOperationType:*v20];
  if ([v18 isAltAccount])
  {
    v21 = *(*(a1 + 48) + 384);
    v22 = [*(a1 + 32) clientProxy];
    [v21 addObject:v22 withAllocationBlock:&stru_100177590];
  }

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000484E8;
  v27 = &unk_1001775B8;
  v28 = *(a1 + 32);
  v29 = *(a1 + 48);
  [v2 setDidEnd:&v24];
  v23 = [*(*(a1 + 48) + 144) serviceFromClass:{objc_opt_class(), v24, v25, v26, v27}];
  [v23 addTransaction:v2];
}

void sub_100048404(id a1, BOOL a2)
{
  v2 = a2;
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Failed";
      if (v2)
      {
        v6 = @"Success";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Add to switching proxy (%@).", &v7, 0xCu);
    }
  }
}

void sub_1000484E8(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [*(a1 + 32) clientBlock];
  v4 = *(*(a1 + 40) + 384);
  v5 = [*(a1 + 32) clientProxy];
  [v4 removeObject:v5 withCleanupBlock:0];

  v6 = [v16 getLastFirstError];
  if (v6)
  {

    goto LABEL_8;
  }

  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = [*(a1 + 40) lastActivePairingIDThatFailed];
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_7;
  }

  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = [*(a1 + 40) lastActivePairingIDThatFailed];
  LODWORD(v10) = [v10 isEqual:v11];

  if (v10)
  {
LABEL_7:
    [*(a1 + 40) setLastActivePairingIDThatFailed:0];
    [*(a1 + 40) updatePairingSessionIdIfNeededForActiveDevice];
  }

LABEL_8:
  if (v3)
  {
    [*(a1 + 32) setClientBlock:0];
    v12 = [v16 getLastFirstError];
    v13 = [v16 getLastFirstError];
    if (v13)
    {
      (v3)[2](v3, v12, 0);
    }

    else
    {
      v14 = [*(a1 + 32) assertionID];
      (v3)[2](v3, v12, v14);
    }
  }

  v15 = [*(a1 + 40) history];
  [NRCoreAnalyticsReporter reportDeviceSwitchTelemetryWithCollectionHistory:v15];
}

void sub_100048BA4(int8x16_t *a1, void *a2)
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v30;
    v7 = NRDevicePropertyAdvertisedName;
    *&v4 = 138412290;
    v23 = v4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v2 objectForKeyedSubscript:{v9, v23}];
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = [v11 value];

        v13 = nr_daemon_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        if (v14)
        {
          v15 = nr_daemon_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v23;
            v34 = v12;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Testing for matching device: %@", buf, 0xCu);
          }
        }

        if ([v12 isEqual:a1[2].i64[0]])
        {
          v17 = nr_daemon_log();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

          if (v18)
          {
            v19 = nr_daemon_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v23;
              v34 = v12;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "receivedMigratedAwayWithAdvertisedName:%@ Device match found, unpairing (lite!)", buf, 0xCu);
            }
          }

          v16 = v9;

          goto LABEL_19;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_19:

  v20 = +[NRQueue registryDaemonQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100048EA4;
  v26[3] = &unk_1001758F8;
  v27 = v16;
  v25 = a1[2];
  v21 = v25.i64[0];
  v28 = vextq_s8(v25, v25, 8uLL);
  v22 = v16;
  [v20 dispatchAsync:v26];
}

void sub_100048EA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    LOBYTE(v7) = 1;
    [*(a1 + 40) unpairDeviceWithPairingID:v2 obliterationString:0 shouldBrick:&__kCFBooleanFalse storeUnpair:&__kCFBooleanFalse migrationUnpair:&__kCFBooleanTrue shouldPreserveESim:&__kCFBooleanFalse pairingReport:0 remoteUnpairRequestUUID:0 shouldConnectionWithDevice:v7];
  }

  else
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        *buf = 138412290;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "receivedMigratedAwayWithAdvertisedName: No match found to %@", buf, 0xCu);
      }
    }
  }
}

void sub_10004905C(uint64_t a1)
{
  v2 = [*(a1 + 32) _bluetoothIDOfActiveDevice];
  v3 = +[NRQueue registryDaemonQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100049140;
  v6[3] = &unk_100177630;
  v10 = *(a1 + 56);
  v4 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 dispatchAsync:v6];
}

void sub_100049140(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
  [v2 sendPingRequestType:0 withMessagePriority:*(a1 + 64) withMessageSize:*(a1 + 56) withTimeout:*(a1 + 40) toIDSBTUUID:*(a1 + 48) withResponseBlock:120.0];
}

void sub_100049648(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v3)
  {
    v4 = v3;
    if ([v3 isPaired]&& ([v4 isSetup]& 1) != 0)
    {
      goto LABEL_15;
    }

    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) UUIDString];
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device with identifier %{public}@ is not fully paired yet", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (!v10)
  {
    goto LABEL_12;
  }

  v4 = nr_daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) UUIDString];
    *buf = 138543362;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device with identifier %{public}@ not found", buf, 0xCu);
LABEL_10:
  }

LABEL_11:

LABEL_12:
  v4 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:45 userInfo:0];
  if (!v4)
  {
LABEL_15:
    v12 = +[NRQueue registryDaemonQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000498C8;
    v15[3] = &unk_1001768B0;
    v14 = *(a1 + 32);
    v13 = v14.i64[0];
    v16 = vextq_s8(v14, v14, 8uLL);
    v17 = *(a1 + 48);
    [v12 dispatchAsync:v15];

    v4 = 0;
    goto LABEL_16;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v4);
  }

LABEL_16:
}

void sub_1000498C8(void *a1)
{
  v2 = [*(a1[4] + 144) serviceFromClass:objc_opt_class()];
  [v2 stageDeviceToTransferForTransferWithType:2 device:a1[5] completion:a1[6]];
}

void sub_100049B0C(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v3)
  {
    v4 = v3;
    if ([v3 isPaired]&& ([v4 isSetup]& 1) != 0)
    {
      goto LABEL_15;
    }

    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) UUIDString];
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device with identifier %{public}@ is not fully paired yet", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (!v10)
  {
    goto LABEL_12;
  }

  v4 = nr_daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) UUIDString];
    *buf = 138543362;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device with identifier %{public}@ not found", buf, 0xCu);
LABEL_10:
  }

LABEL_11:

LABEL_12:
  v4 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:45 userInfo:0];
  if (!v4)
  {
LABEL_15:
    v12 = +[NRQueue registryDaemonQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100049D8C;
    v15[3] = &unk_1001768B0;
    v14 = *(a1 + 32);
    v13 = v14.i64[0];
    v16 = vextq_s8(v14, v14, 8uLL);
    v17 = *(a1 + 48);
    [v12 dispatchAsync:v15];

    v4 = 0;
    goto LABEL_16;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v4);
  }

LABEL_16:
}

void sub_100049D8C(void *a1)
{
  v2 = [*(a1[4] + 144) serviceFromClass:objc_opt_class()];
  [v2 stageDeviceToTransferForTransferWithType:1 device:a1[5] completion:a1[6]];
}

void sub_100049FCC(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
  v2 = [v3 retrieveWatchesStagedForTransfer];
  (*(*(a1 + 40) + 16))();
}

void sub_10004A484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A49C(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_10004A614(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 objectForKeyedSubscript:NRDevicePropertyIsArchived];
  v5 = [v4 value];

  v6 = +[NRQueue registryDaemonQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004A744;
  v10[3] = &unk_100176560;
  v11 = v5;
  v14 = *(a1 + 56);
  v9 = *(a1 + 32);
  v7 = v9.i64[0];
  v12 = vextq_s8(v9, v9, 8uLL);
  v13 = *(a1 + 48);
  v8 = v5;
  [v6 dispatchAsync:v10];
}

void sub_10004A744(uint64_t a1)
{
  if ([*(a1 + 32) BOOLValue])
  {
    v2 = [*(*(a1 + 40) + 144) serviceFromClass:objc_opt_class()];
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 64))
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v7 = [*(a1 + 48) UUIDString];
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "xpcSetMigrationConsented: Setting migration consent to %@ for device ID %@", buf, 0x16u);
      }
    }

    [v2 setMigrationConsent:*(a1 + 64) forDeviceID:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 48) UUIDString];
        *buf = 138543362;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "xpcSetMigrationConsented: Device with ID %{public}@ is not archived yet, adding observer for isArchived", buf, 0xCu);
      }
    }

    (*(*(a1 + 56) + 16))();
    objc_initWeak(&location, *(a1 + 40));
    v12 = +[NSDate date];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = sub_100023050;
    v25 = sub_100023060;
    v26 = 0;
    v13 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004AA88;
    v17[3] = &unk_1001776F8;
    objc_copyWeak(&v21, &location);
    v18 = *(a1 + 48);
    v14 = v12;
    v19 = v14;
    v20 = buf;
    v15 = [v13 addDiffObserverWithWriteBlock:v17];
    v16 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v15;

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v21);

    objc_destroyWeak(&location);
  }
}

void sub_10004AA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004AA88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = NRDevicePropertyIsArchived;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004ABA8;
    v11[3] = &unk_1001776D0;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = v6;
    v9 = WeakRetained;
    v10 = *(a1 + 48);
    v15 = v9;
    v16 = v10;
    [NRMutableDeviceCollection parseDiff:v5 forPropertyChange:v8 withBlock:v11];
  }
}

void sub_10004ABA8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 isEqual:*(a1 + 32)] && objc_msgSend(v7, "BOOLValue"))
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v22 = 138543618;
        v23 = v6;
        v24 = 2114;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device with ID %{public}@ is now archived, setting cached consent given at %{public}@", &v22, 0x16u);
      }
    }

    v12 = +[NSMutableDictionary dictionary];
    v13 = +[NSMutableDictionary dictionary];
    v14 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];
    v15 = [[NRDevicePropertyDiffType alloc] initWithDiff:v14 andChangeType:1];
    [v13 setObject:v15 forKeyedSubscript:NRDevicePropertyMigrationConsent];
    v16 = [[NRDevicePropertyDiff alloc] initWithValue:*(a1 + 40)];

    v17 = [[NRDevicePropertyDiffType alloc] initWithDiff:v16 andChangeType:1];
    [v13 setObject:v17 forKeyedSubscript:NRDevicePropertyMigrationConsentDate];

    v18 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v13];
    v19 = [[NRDeviceDiffType alloc] initWithDiff:v18 andChangeType:1];
    [v12 setObject:v19 forKeyedSubscript:v6];
    v20 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v12];
    v21 = [*(a1 + 48) applyDiff:v20];
    [*(a1 + 56) removeDiffObserver:*(*(*(a1 + 64) + 8) + 40)];
  }
}

id sub_10004B464(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];
  v6 = [NRDevicePropertyDiffType alloc];
  v23 = v5;
  if (*(a1 + 32))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (*(a1 + 32))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 initWithDiff:v7 andChangeType:v8];
  v10 = [NRDeviceDiff alloc];
  v29 = _NRDevicePropertyKeychainTurnedOff;
  v30 = v9;
  v11 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v12 = [v10 initWithDiffPropertyDiffs:v11];

  v13 = [[NRDeviceDiffType alloc] initWithDiff:v12 andChangeType:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v3;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [v14 objectForKeyedSubscript:v19];
        if ([v20 isPaired] && (objc_msgSend(v20, "isArchived") & 1) == 0)
        {
          [v4 setObject:v13 forKeyedSubscript:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  if ([v4 count])
  {
    v21 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v4];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_10004B90C(uint64_t a1, void *a2)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v7 = _NRDevicePropertyBluetoothIdentifier;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = [v11 value];

        v13 = *(a1 + 32);
        if (v13 == v12 || [v13 isEqual:v12])
        {
          v14 = v9;

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v14 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  v15 = +[NRQueue registryDaemonQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004BB1C;
  v18[3] = &unk_100175688;
  v16 = *(a1 + 40);
  v19 = v14;
  v20 = v16;
  v17 = v14;
  [v15 dispatchAsync:v18];
}

uint64_t sub_10004BBF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activeDeviceID];

  if (v4)
  {
    v5 = [NRDevicePropertyDiffType alloc];
    v6 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];
    v7 = [v5 initWithDiff:v6 andChangeType:0];

    v8 = [NRDeviceDiff alloc];
    v21 = _NRDevicePropertyRemoteUnpairingStarted;
    v22 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = [v8 initWithDiffPropertyDiffs:v9];

    v11 = [NRDeviceCollectionDiff alloc];
    v12 = [v3 activeDeviceID];
    v19 = v12;
    v13 = [[NRDeviceDiffType alloc] initWithDiff:v10 andChangeType:1];
    v20 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [v11 initWithDeviceCollectionDiffDeviceDiffs:v14];

    v16 = [v3 applyDiff:v15];
  }

  v17 = +[NRQueue registryDaemonQueue];
  [v17 dispatchAsync:*(a1 + 32)];

  return 0;
}

void sub_10004C024(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v7 = [v6 copyWithZone:0];

  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [NRMutableDevice diffFrom:v8 to:v7];
    v10 = [[NRDeviceDiffType alloc] initWithDiff:v9 andChangeType:0];
    v11 = [NRDeviceCollectionDiff alloc];
    v23 = *(a1 + 32);
    v24 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = [v11 initWithDeviceCollectionDiffDeviceDiffs:v12];

    v14 = [NRRegistry getReferencedSecureProperties:v5 fromDiff:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = +[NRQueue registryDaemonQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004C23C;
  v19[3] = &unk_100176A18;
  v16 = *(a1 + 40);
  v21 = v14;
  v22 = v16;
  v20 = v7;
  v17 = v14;
  v18 = v7;
  [v15 dispatchAsync:v19];
}

void sub_10004C310(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = _NRDevicePropertyBluetoothIdentifier;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = [v11 value];

        if ([*(a1 + 32) isEqual:v12])
        {
          v13 = +[NRQueue registryDaemonQueue];
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10004C4F0;
          v15[3] = &unk_100175688;
          v14 = *(a1 + 40);
          v15[4] = v9;
          v16 = v14;
          [v13 dispatchAsync:v15];

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_10004D3E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) setLastCaller:*(a1 + 40)];
    [*(a1 + 32) xpcInvalidateSwitchAssertionWithIdentifier:v5 block:&stru_100177738];
  }
}

void sub_10004DBCC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138413058;
      v11 = @"com.apple.PingMyWatchControlCenterUI";
      v12 = 1024;
      v13 = v9;
      v14 = 1024;
      v15 = a2;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ setVisibility completed: visibility=%{BOOL}d success=%{BOOL}d error=%@", &v10, 0x22u);
    }
  }
}

void sub_10004EB5C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_10004EB7C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Eu);
}

void sub_10004FB9C(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v2 nr_safeDescription];
        sub_1000FF6CC(v6, va, v5);
      }
    }

    objc_end_catch();
    JUMPOUT(0x10004FB58);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004FE68(uint64_t a1)
{
  if (!qword_1001B37F8)
  {
    v1 = [*(a1 + 32) _copyPhoneIdentity];
    if (v1)
    {
      v2 = v1;
      SecIdentityCopyCertificate(v1, &qword_1001B37F8);
      CFRelease(v2);
    }

    if (!qword_1001B37F8)
    {
      v3 = nr_daemon_log();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

      if (v4)
      {
        v5 = nr_daemon_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1000FF7B8();
        }
      }
    }
  }
}

void sub_100050494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000504AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000504C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  v8 = [[NRAlbertPairingReportData alloc] initWithDevice:v7 andSecurePropertyStore:v6];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 56) + 8) + 40) == 0;
  v12 = nr_daemon_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

  if (!v11)
  {
    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000FF958();
      }
    }

    v15 = [[NRAlbertPairingReportWrapper alloc] initWithAlbertPairingReportData:*(*(*(a1 + 56) + 8) + 40)];
    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      if (v17)
      {
        v18 = nr_daemon_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000FF98C();
        }
      }

      objc_storeStrong((*(a1 + 40) + 16), *(a1 + 48));
      objc_storeStrong((*(a1 + 40) + 24), *(a1 + 32));
      v19 = [(NRAlbertPairingReportWrapper *)v15 xmlDictionary];
      v20 = [NSPropertyListSerialization dataWithPropertyList:v19 format:100 options:0 error:0];

      if (v20)
      {
        v21 = nr_daemon_log();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

        if (v22)
        {
          v23 = nr_daemon_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending Albert pairing report", v26, 2u);
          }
        }

        [*(a1 + 40) _sendPairingActivityData:v20];
      }

      else
      {
        v24 = nr_daemon_log();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

        if (!v25)
        {
          goto LABEL_27;
        }

        v20 = nr_daemon_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000FF9C0();
        }
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_27;
      }

      v20 = nr_daemon_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000FF9F4();
      }
    }

LABEL_27:
    goto LABEL_28;
  }

  if (v13)
  {
    v15 = nr_daemon_log();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
    {
      sub_1000FFA28();
    }

    goto LABEL_27;
  }

LABEL_28:
}

void sub_1000508AC(id a1)
{
  v3 = CFPreferencesCopyAppValue(@"albertURL", @"com.apple.NanoRegistry");
  if ([v3 length])
  {
    v1 = v3;
  }

  else
  {
    v1 = @"https://albert.apple.com/deviceservices/activity/pairing";
  }

  v2 = qword_1001B3800;
  qword_1001B3800 = v1;
}

void sub_100050B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100050B30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000FFA70(v5, v8);
      }
    }

    [*(a1 + 32) invalidateAndCancel];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100050C48;
    v14[3] = &unk_100177830;
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v15 = v12;
    v16 = v13;
    [v11 grabRegistryWithReadBlock:v14];
    v10 = v15;
  }
}

void sub_100050C48(uint64_t a1)
{
  [*(a1 + 32) invalidateAndCancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

uint64_t sub_100051028(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000FFBF8(a1);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000510B4(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accepting server connection", v6, 2u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100051160(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(*(a1 + 32) + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005127C;
  v11[3] = &unk_100177880;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  if (SecTrustEvaluateAsyncWithError(v2, v3, v11))
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000FFC70();
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v6, v7, v8, v9);
  }
}

void sub_10005127C(uint64_t a1, SecTrustRef trust, int a3)
{
  if (a3)
  {
    v4 = SecTrustCopyResult(trust);
    v5 = nr_daemon_log();
    v6 = v5;
    if (!v4)
    {
      v19 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (v19)
      {
        v20 = nr_daemon_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000FFD8C();
        }
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_30;
    }

    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Trust result information: %@", &v22, 0xCu);
      }
    }

    v9 = [(__CFDictionary *)v4 objectForKeyedSubscript:kSecTrustExtendedValidation];
    v10 = [v9 BOOLValue];
    v11 = nr_daemon_log();
    v12 = v11;
    if (v10)
    {
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (!v13)
      {
        v15 = 32;
        goto LABEL_29;
      }

      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Extended Validation certificate confirmed", &v22, 2u);
      }

      v15 = 32;
    }

    else
    {
      v21 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v21)
      {
        v15 = 40;
        goto LABEL_29;
      }

      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000FFD58();
      }

      v15 = 40;
    }

LABEL_29:
    (*(*(a1 + v15) + 16))();

LABEL_30:
    return;
  }

  v16 = nr_daemon_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v18 = nr_daemon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000FFCE4();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100051560(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10005157C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_100051BF0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_100051CD0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

uint64_t sub_100052018(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v27) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v27 & 0x7F) << v15;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_35;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_35:
        *(a1 + 24) = v21;
      }

      else if (v13 == 3)
      {
        *(a1 + 28) |= 1u;
        v27 = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v27;
      }

      else if (v13 == 2)
      {
        if ((sub_1000FFED0(a1, &v26, a2, &v27) & 1) == 0)
        {
          return v27;
        }
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100052888(id a1)
{
  v1 = objc_alloc_init(NRFeatureFlags);
  v2 = qword_1001B3810;
  qword_1001B3810 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100052A5C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [NSString alloc];
  v8 = [v5 BOOLValue];

  v9 = "disabled";
  if (v8)
  {
    v9 = "enabled";
  }

  v10 = [v7 initWithFormat:@"%@:%s", v6, v9];

  [v4 addObject:v10];
}

unint64_t sub_100052C60(unint64_t result)
{
  if (result >= 5)
  {
    return 3;
  }

  return result;
}

const __CFString *sub_100052C70(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"NRPairingStrategyUnknown";
  }

  else
  {
    return off_100177910[a1 - 1];
  }
}

uint64_t sub_100052F4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v7 = v3;
    v5 = [v4[3] errors];
    [v5 addObject:v7];

    [*(*(a1 + 32) + 24) persist];
    v4 = [*(a1 + 32) rollback];
  }

  else
  {
    if (*(v4 + 49))
    {
      goto LABEL_6;
    }

    v7 = 0;
    v4 = [v4 transactionDidComplete];
  }

  v3 = v7;
LABEL_6:

  return _objc_release_x1(v4, v3);
}

void sub_100053098(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(*(a1 + 32) + 32) UUIDString];
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingSwitchActivePairedDevice %@", buf, 0xCu);
      }
    }

    v7 = *(*(a1 + 32) + 32);
    v13 = *(a1 + 40);
    v8 = [*(*(a1 + 32) + 24) queue];
    IDSLocalPairingSwitchActivePairedDevice();

    v9 = v13;
  }

  else
  {
    if (v4)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingDisconnectActivePairedDevice", buf, 2u);
      }
    }

    v12 = *(a1 + 40);
    v11 = [*(*(a1 + 32) + 24) queue];
    IDSLocalPairingDisconnectActivePairedDevice();

    v9 = v12;
  }
}

void sub_1000532D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000FFF84(a1, v3, v7);
      }
    }

    if (_NRIsInternalInstall())
    {
      if ([v3 code] == 4)
      {
        v8 = [v3 domain];
        v9 = [v8 isEqualToString:IDSLocalPairingErrorDomain];

        if (v9)
        {
          v10 = [*(*(a1 + 32) + 40) serviceFromClass:objc_opt_class()];
          v11 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:@"nrDeviceIdentifier"];
          LOBYTE(v22) = 0;
          [v10 unpairDeviceWithPairingID:v11 obliterationString:0 shouldBrick:&__kCFBooleanFalse storeUnpair:&__kCFBooleanFalse migrationUnpair:&__kCFBooleanFalse shouldPreserveESim:&__kCFBooleanFalse pairingReport:0 remoteUnpairRequestUUID:0 shouldConnectionWithDevice:v22];
          v12 = nr_daemon_log();
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

          if (v13)
          {
            v14 = nr_daemon_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10010003C(v14);
            }
          }

          v15 = [*(*(a1 + 32) + 40) serviceFromClass:objc_opt_class()];
          [v15 resetStateForAlertWithName:@"InternalIDSPairingLost"];
          [v15 setEnabled:1 withName:@"InternalIDSPairingLost"];
          [v15 presentAlertsIfNeeded];
        }
      }
    }

    if (*(a1 + 40))
    {
      v25 = NSLocalizedDescriptionKey;
      v16 = [v3 description];
      v26 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v18 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionSetActiveIDSDevice" code:0 userInfo:v17];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v19 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = nr_daemon_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(*(a1 + 32) + 32) UUIDString];
        *buf = 138412290;
        v24 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingSwitchActivePairedDevice %@ completed", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100053620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100100080(v3, v7);
      }
    }

    if (*(a1 + 32))
    {
      v14 = NSLocalizedDescriptionKey;
      v8 = [v3 description];
      v15 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionSetActiveIDSDevice" code:2 userInfo:v9];

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v11 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingDisconnectActivePairedDevice completed", v13, 2u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_100053DD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v7 = v3;
    v5 = [v4[3] errors];
    [v5 addObject:v7];

    v4 = *(a1 + 32);
  }

  else
  {
    if (*(v4 + 49))
    {
      goto LABEL_6;
    }

    v7 = 0;
  }

  v4 = [v4 transactionDidComplete];
  v3 = v7;
LABEL_6:

  return _objc_release_x1(v4, v3);
}

void sub_100054D20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100054D3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelDiscoveryCounter];
  WeakRetained[5] = 2;
  [WeakRetained update];
}

uint64_t sub_1000550B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_1000568B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) errors];
    [v4 addObject:v3];

    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = [*(a1 + 32) queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000569C0;
    v11[3] = &unk_100177960;
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v12 = v8;
    v13 = v9;
    [v6 unquarantineDataWithStoreUUID:v5 services:0 queue:v7 completion:v11];
  }

  else
  {
    v10 = [*(a1 + 56) delegate];
    [v10 transactionDidComplete:*(a1 + 56)];
  }
}

void sub_1000569C0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 errors];
    [v5 addObject:v4];
  }

  v6 = [*(a1 + 40) delegate];
  [v6 transactionDidComplete:*(a1 + 40)];
}

void sub_100056B6C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [*(a1 + 32) errors];
    [v3 addObject:v4];
  }

  else
  {
    v3 = [*(a1 + 40) delegate];
    [v3 transactionDidComplete:*(a1 + 40)];
  }
}

void sub_100056CBC(id a1)
{
  if (_NRIsDemoModeEnabled())
  {
    v1 = 1;
  }

  else
  {
    v1 = MGGetBoolAnswer();
  }

  byte_1001B3820 = v1;
}

void sub_100056D20(id a1)
{
  v1 = objc_alloc_init(NRVolatilePreferences);
  v2 = qword_1001B3838;
  qword_1001B3838 = v1;

  v3 = qword_1001B3838;

  [v3 setDomain:@"com.apple.NanoRegistry.NRRootCommander.volatile"];
}

void sub_100056E08(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([objc_opt_class() _supportsWatchCompanionCapability])
  {
    v2 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.nano.nanoregistry.nanoregistrylaunchd" options:4096];
    v3 = qword_1001B3840;
    qword_1001B3840 = v2;

    [qword_1001B3840 setInvalidationHandler:&stru_1001779C0];
    [qword_1001B3840 setInterruptionHandler:&stru_1001779E0];
    v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRLaunchDaemonXPCDaemonDelegate];
    [qword_1001B3840 setRemoteObjectInterface:v4];
    [qword_1001B3840 resume];
  }
}

void sub_100056EDC(id a1)
{
  v1 = qword_1001B3840;
  qword_1001B3840 = 0;

  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100100120();
    }
  }
}

void sub_100057040(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100100188(a1, v3);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_1000571C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100100224(a1, v3);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_1000576DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100057740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100057758(uint64_t a1)
{
  [qword_1001B3838 setObject:&off_100186CE8 forKeyedSubscript:@"daemonsEnabled"];
  [qword_1001B3838 synchronize];
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001002C0();
    }
  }

  v5 = nrGetPairingError();
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10005780C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = [v4 domain];
  if ([v6 isEqualToString:@"com.apple.nanoregistry.pairingerror"])
  {
    v7 = [v5 code];

    if (v7 == 5)
    {
LABEL_4:
      v8 = [NSNumber numberWithInt:(*(a1 + 56) + 1)];
      [qword_1001B3838 setObject:v8 forKeyedSubscript:@"daemonsEnabled"];

      [qword_1001B3838 synchronize];
      *(*(*(a1 + 32) + 8) + 24) = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  [qword_1001B3838 setObject:&off_100186CE8 forKeyedSubscript:@"daemonsEnabled"];
  [qword_1001B3838 synchronize];
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001002F4(v5);
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
LABEL_11:
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_100057E30(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001002C0();
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100057F40;
      block[3] = &unk_100175D58;
      v9 = v5;
      dispatch_async(v6, block);
      v7 = v9;
    }

    else
    {
      v7 = nrGetPairingError();
      (v5)[2](v5, v7);
    }
  }
}

void sub_100057F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError();
  (*(v1 + 16))(v1, v2);
}

void sub_100057FA0(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  if (v4)
  {
    v5 = a1[4];
    if (v5)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100058084;
      v8[3] = &unk_100175688;
      v10 = v4;
      v9 = v3;
      dispatch_async(v5, v8);
    }

    else
    {
      (v4)[2](v4, v3);
    }
  }

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100058664(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001002C0();
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100058774;
      block[3] = &unk_100175D58;
      v9 = v5;
      dispatch_async(v6, block);
      v7 = v9;
    }

    else
    {
      v7 = nrGetPairingError();
      (v5)[2](v5, v7);
    }
  }
}

void sub_100058774(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError();
  (*(v1 + 16))(v1, v2);
}

void sub_1000587D4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NSNumber numberWithUnsignedLongLong:a1[7] + 1];
  [qword_1001B3838 setObject:v4 forKeyedSubscript:@"cleanupIndex"];

  [qword_1001B3838 synchronize];
  if (v3)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100100380(v3);
      }
    }
  }

  v8 = a1[5];
  if (v8)
  {
    v9 = a1[4];
    if (v9)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100058948;
      v12[3] = &unk_100175688;
      v14 = v8;
      v13 = v3;
      dispatch_async(v9, v12);
    }

    else
    {
      (v8)[2](v8, v3);
    }
  }

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void sub_100058970(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError();
  (*(v1 + 16))(v1, v2);
}

void sub_100058C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100058C58(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001002C0();
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100058D3C;
    block[3] = &unk_100175D58;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void sub_100058D3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError();
  (*(v1 + 16))(v1, v2);
}

void sub_100058D9C(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10010040C(v3);
      }
    }
  }

  v7 = a1[5];
  if (v7)
  {
    v8 = a1[4];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100058EB8;
    v11[3] = &unk_100175688;
    v13 = v7;
    v12 = v3;
    dispatch_async(v8, v11);
  }

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_100058ECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError();
  (*(v1 + 16))(v1, v2);
}

void sub_10005919C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000591B4(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001002C0();
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100059298;
    block[3] = &unk_100175D58;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void sub_100059298(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError();
  (*(v1 + 16))(v1, v2);
}

void sub_1000592F8(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100100498(v3);
      }
    }
  }

  v7 = a1[5];
  if (v7)
  {
    v8 = a1[4];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100059414;
    v11[3] = &unk_100175688;
    v13 = v7;
    v12 = v3;
    dispatch_async(v8, v11);
  }

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_100059428(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = nrGetPairingError();
  (*(v1 + 16))(v1, v2);
}

void sub_1000596E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000596FC(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001002C0();
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000597E0;
    block[3] = &unk_100175D58;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void sub_1000597F0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100059898;
    block[3] = &unk_100175D58;
    v7 = v2;
    dispatch_async(v3, block);
  }

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100059C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100059C58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100100524(v3);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void sub_100059CE8(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001002C0();
      }
    }

    *(*(a1[4] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

void sub_10005AE30(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"MinimumRSSIValue", @"com.apple.Preferences");
  if (v1)
  {
    v2 = v1;
    qword_1001B2CA8 = [v1 integerValue];
    v1 = v2;
  }
}

void sub_10005AEC0(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"MinimumProxRSSIValue", @"com.apple.Preferences");
  if (v1)
  {
    v2 = v1;
    qword_1001B2CB0 = [v1 integerValue];
    v1 = v2;
  }
}

void sub_10005BEE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) delegate];
  if (v2)
  {
    v4 = objc_opt_respondsToSelector();

    if ((v4 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 40) delegate];
    [v6 devicePairingFailure:*(a1 + 40)];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 40) delegate];
    [v6 devicePairingSuccess:*(a1 + 40)];
  }
}

void sub_10005C0E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = [NSError errorWithDomain:@"com.apple.NanoRegistry.CoreBluetooth" code:123 userInfo:&off_100187DC0];
  [*(a1 + 32) cancelPairingWithError:v4];
}

id sub_10005C4E8(uint64_t a1)
{
  result = [*(a1 + 32) isPairing];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 updateAndEnterState:&off_100186D18];
  }

  return result;
}

void sub_10005D578(uint64_t a1)
{
  v2 = [*(a1 + 32) pairers];
  [v2 pairer:0 requestWithType:*(*(a1 + 32) + 128) passkey:*(*(a1 + 32) + 136)];
}

uint64_t sub_10005EDFC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10005F208()
{
  if (qword_1001B3868 != -1)
  {
    sub_10010096C();
  }

  v1 = qword_1001B3860;

  return v1;
}

void sub_10005F24C(id a1)
{
  v4[0] = NRDevicePropertyPairingID;
  v4[1] = NRDevicePropertyIsPaired;
  v4[2] = NRDevicePropertyIsActive;
  v4[3] = NRDevicePropertyIsSetup;
  v4[4] = NRDevicePropertyAdvertisedName;
  v4[5] = NRDevicePropertyName;
  v4[6] = NRDevicePropertyColor;
  v4[7] = NRDevicePropertySystemVersion;
  v4[8] = NRDevicePropertyProductType;
  v4[9] = NRDevicePropertyChipID;
  v4[10] = NRDevicePropertyHomeButtonType;
  v4[11] = NRDevicePropertySystemName;
  v4[12] = NRDevicePropertyMarketingProductName;
  v4[13] = NRDevicePropertySystemBuildVersion;
  v4[14] = NRDevicePropertyLocalPairingDataStorePath;
  v4[15] = NRDevicePropertyLocalizedModel;
  v4[16] = NRDevicePropertyRegionCode;
  v4[17] = NRDevicePropertyRegionInfo;
  v4[18] = NRDevicePropertyModelNumber;
  v4[19] = NRDevicePropertyHWModelString;
  v4[20] = NRDevicePropertyScreenSize;
  v4[21] = NRDevicePropertyClass;
  v4[22] = NRDevicePropertyEnclosureColor;
  v4[23] = NRDevicePropertyEnclosureMaterial;
  v4[24] = NRDevicePropertyBuildType;
  v4[25] = NRDevicePropertyDmin;
  v4[26] = NRDevicePropertyDeviceBrand;
  v4[27] = NRDevicePropertyDeviceSubBrand;
  v4[28] = NRDevicePropertyGreenTeaDevice;
  v4[29] = NRDevicePropertySigningFuse;
  v4[30] = NRDevicePropertyScreenScale;
  v4[31] = NRDevicePropertyPairingCompatibilityVersion;
  v4[32] = NRDevicePropertyMaxPairingCompatibilityVersion;
  v4[33] = NRDevicePropertyMinPairingCompatibilityVersion;
  v4[34] = _NRDevicePropertyBluetoothIdentifier;
  v4[35] = _NRDevicePropertyNetworkRelayIdentifier;
  v4[36] = NRDevicePropertyDeviceNameString;
  v4[37] = NRDevicePropertyCurrentUserLocale;
  v4[38] = NRDevicePropertyPreferredLanguages;
  v4[39] = NRDevicePropertyPairedDate;
  v4[40] = NRDevicePropertyMarketingVersion;
  v4[41] = NRDevicePropertyMainScreenWidth;
  v4[42] = NRDevicePropertyMainScreenHeight;
  v4[43] = _NRDevicePropertyCapabilities;
  v4[44] = NRDevicePropertyIsInternalInstall;
  v4[45] = _NRDevicePropertyStatusCode;
  v4[46] = _NRDevicePropertyCompatibilityState;
  v4[47] = _NRDevicePropertyLastPairingError;
  v4[48] = _NRDevicePropertyPairingStatusBluetoothPaired;
  v4[49] = _NRDevicePropertyRemoteUnpairingStarted;
  v4[50] = NRDevicePropertyTotalStorage;
  v4[51] = NRDevicePropertyLastActiveDate;
  v4[52] = NRDevicePropertyLastInactiveDate;
  v4[53] = NRDevicePropertyRegulatoryModelNumber;
  v4[54] = _NRDevicePropertyAdvertisingIdentifierSeed;
  v4[55] = _NRDevicePropertyRSSI;
  v4[56] = NRDevicePropertyPairedDeviceCount;
  v4[57] = NRDevicePropertyBasebandRegionSKURadioTechnology;
  v4[58] = NRDevicePropertyWifiAntennaSKUVersion;
  v4[59] = NRDevicePropertyHasSEP;
  v4[60] = NRDevicePropertyHasSecureElement;
  v4[61] = NRDevicePropertyDeviceCoverGlassColor;
  v4[62] = NRDevicePropertyDeviceHousingColor;
  v4[63] = NRDevicePropertyDeviceBackingColor;
  v4[64] = NRDevicePropertyAbsoluteDepthLimit;
  v4[65] = NRDevicePropertyIsArchived;
  v4[66] = NRDevicePropertyIsStagedForTransfer;
  v4[67] = NRDevicePropertyMigrationConsent;
  v4[68] = NRDevicePropertyMigrationConsentDate;
  v4[69] = NRDevicePropertyFractionCompleted;
  v4[70] = _NRDevicePropertyMigrationCount;
  v4[71] = _NRDevicePropertyMigrationKeyRevision;
  v4[72] = NRDevicePropertyCPUType;
  v4[73] = NRDevicePropertyRunnableArchNames;
  v4[74] = NRDevicePropertyCPUSubType;
  v4[75] = NRDevicePropertyMainScreenClass;
  v4[76] = _NRDevicePropertyLastRSSIUpdate;
  v4[77] = _NRDevicePropertyKeychainTurnedOff;
  v4[78] = NRDevicePropertyIsAltAccount;
  v4[79] = NRDevicePropertyDeviceInDemoMode;
  v4[80] = NRDevicePropertyCellularEnabled;
  v4[81] = NRDevicePropertyCompatibleDeviceFallback;
  v4[82] = NRDevicePropertyArtworkTraits;
  v4[83] = _NRDevicePropertyDiscoveryMechanism;
  v4[84] = _NRDevicePropertySupportedPairingStrategy;
  v4[85] = _NRDevicePropertyPairedWithStrategy;
  v4[86] = NRDevicePropertyWatchBuddyStage;
  v4[87] = NRDevicePropertyMDMManagementState;
  v4[88] = NRDevicePropertyMedicationScheduleCompatibilityVersion;
  v1 = [NSArray arrayWithObjects:v4 count:89];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1001B3860;
  qword_1001B3860 = v2;
}

id sub_10005F7FC(void *a1)
{
  v1 = a1;
  v2 = sub_10005F208();
  v3 = [v2 containsObject:v1];

  return v3;
}

id sub_10005FFB0(void *a1)
{
  v2 = *(a1[4] + 16);
  v3 = (*(a1[5] + 16))();
  v4 = [v3 objectForKeyedSubscript:@"NROSLogStateHistoryIndex"];
  v5 = [v4 unsignedLongLongValue];

  v6 = a1[4];
  if (*(v6 + 16) != v5)
  {
    v7 = [v3 objectForKeyedSubscript:@"NROSLogStateStateString"];
    v8 = a1[4];
    v9 = *(v8 + 8);
    *(v8 + 8) = v7;

    *(a1[4] + 16) = v5;
    v6 = a1[4];
  }

  v10 = 15872 * a1[6];
  if (v10 >= [*(v6 + 8) length])
  {
    v13 = 0;
  }

  else
  {
    v11 = [*(a1[4] + 8) length];
    if (v10 + 15872 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = (v10 + 15872);
    }

    v13 = [*(a1[4] + 8) substringWithRange:{v10, &v12[-v10]}];
  }

  if (a1[6] >= a1[7])
  {
    *(a1[4] + 16) = 0;
    v14 = a1[4];
    v15 = *(v14 + 8);
    *(v14 + 8) = 0;
  }

  return v13;
}

_DWORD *sub_1000601B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0];
    v5 = malloc_type_calloc(1uLL, [v4 length] + 200, 0x1000040BEF03554uLL);
    *v5 = 1;
    v5[1] = [v4 length];
    [*(a1 + 32) UTF8String];
    __strlcpy_chk();
    memcpy(v5 + 50, [v4 bytes], objc_msgSend(v4, "length"));
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1000608BC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v51 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      switch(v13)
      {
        case 4:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            v52 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v52 & 0x7F) << v29;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v31;
          }

LABEL_79:
          v49 = 16;
LABEL_88:
          *(a1 + v49) = v20;
          break;
        case 5:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 40) |= 0x10u;
          while (1)
          {
            v56 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v56 & 0x7F) << v42;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              LOBYTE(v48) = 0;
              goto LABEL_92;
            }
          }

          v48 = (v44 != 0) & ~[a2 hasError];
LABEL_92:
          *(a1 + 36) = v48;
          break;
        case 6:
          v21 = PBReaderReadString();
          v22 = *(a1 + 24);
          *(a1 + 24) = v21;

          break;
        default:
LABEL_52:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          break;
      }

      v50 = [a2 position];
      if (v50 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 40) |= 8u;
        while (1)
        {
          v55 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v55 & 0x7F) << v23;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v25;
        }

LABEL_75:
        v49 = 32;
        break;
      case 2:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          v54 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v54 & 0x7F) << v36;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v38;
        }

LABEL_87:
        v49 = 8;
        break;
      case 3:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v53 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v53 & 0x7F) << v14;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_83:
        v49 = 12;
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_88;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000616A4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100061BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100061BD4(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v3 = [[NSUUID alloc] initWithUUIDString:@"6F13FF03-6511-4180-BBF3-4C231C10D458"];
  if ([v6 supportsCapability:v3])
  {
    v4 = [v6 isAltAccount];

    if ((v4 & 1) == 0)
    {
      v5 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = 0;
LABEL_6:
  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void sub_100062258(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activeDeviceID];
  v5 = v4;
  if (v4 && [v4 isEqual:*(*(a1 + 32) + 48)])
  {
    v6 = [v3 activeDevice];
    v7 = [v6 objectForKeyedSubscript:NRDevicePropertyIsPaired];
    v8 = [v7 value];

    v9 = [v3 activeDevice];
    v10 = [v9 objectForKeyedSubscript:_NRDevicePropertyCompatibilityState];
    v11 = [v10 value];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v13 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062524;
    block[3] = &unk_1001756F8;
    v14 = *(a1 + 32);
    v24 = v11;
    v25 = v14;
    v26 = v8;
    v27 = v5;
    v15 = v8;
    v16 = v11;
    dispatch_async(v13, block);
  }

  else
  {
    v17 = nr_daemon_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = nr_daemon_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(*(a1 + 32) + 48);
        *buf = 138412546;
        v29 = v20;
        v30 = 2112;
        v31 = v5;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Pairing ID dont match. Transaction is for %@, but active device is %@. Not starting sync.", buf, 0x16u);
      }
    }

    v16 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v21 = [v16 queue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000628F0;
    v22[3] = &unk_100175660;
    v22[4] = *(a1 + 32);
    dispatch_async(v21, v22);
  }
}

id sub_100062524(id *a1)
{
  if ([a1[4] integerValue] == 2)
  {
    v2 = nr_daemon_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = nr_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Watch needs an update. Not starting a paired sync.", &v27, 2u);
      }
    }

    return [a1[5] forceSyncCompleteAndFinishTransaction];
  }

  if ([a1[4] integerValue] == 4)
  {
    v6 = [a1[6] BOOLValue];
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      if (v8)
      {
        v9 = nr_daemon_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device is paired. Starting paired sync.", &v27, 2u);
        }
      }

      objc_storeStrong(a1[5] + 6, a1[7]);
      IDSInitialLocalSyncStartedForServices();
      [a1[5] updatePairedSyncNotifyToken:1 shouldPost:1];
      v10 = a1[5];
      if (!v10[3])
      {
        v11 = [[PSYInitialSyncStateObserver alloc] initWithDelegate:a1[5]];
        v12 = a1[5];
        v13 = v12[3];
        v12[3] = v11;

        v10 = a1[5];
      }

      if (!v10[4])
      {
        v14 = objc_opt_new();
        v15 = a1[5];
        v16 = v15[4];
        v15[4] = v14;

        [*(a1[5] + 4) setDelegate:?];
        [*(a1[5] + 4) startObservingSyncSessionsWithCompletion:&stru_100177C30];
        v10 = a1[5];
      }

      return [v10 querySyncStateForActiveDevice];
    }

    if (v8)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Device is NOT paired. NOT Starting paired sync.", &v27, 2u);
      }
    }

    [a1[5] updatePairedSyncNotifyToken:0 shouldPost:0];
    WeakRetained = objc_loadWeakRetained(a1[5] + 1);
    v23 = [WeakRetained errors];
    v24 = [NSError errorWithDomain:@"pairedSyncErrorDomain" code:0 userInfo:0];
    [v23 addObject:v24];

    v20 = objc_loadWeakRetained(a1[5] + 1);
    [v20 persist];
    goto LABEL_27;
  }

  v17 = [a1[4] integerValue];
  v18 = nr_daemon_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v17 == 5)
  {
    if (!v19)
    {
      return [a1[5] doneWaitingForPairedSync];
    }

    v20 = nr_daemon_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Device is Tinker paired. NOT Starting paired sync.", &v27, 2u);
    }

LABEL_27:

    return [a1[5] doneWaitingForPairedSync];
  }

  if (v19)
  {
    v25 = nr_daemon_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a1[4];
      v27 = 138412290;
      v28 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Can't sync when updating or still pairing. Forcing fake sync completion. (Compatibility state %@)", &v27, 0xCu);
    }
  }

  [a1[5] updatePairedSyncNotifyToken:0 shouldPost:0];
  return [a1[5] forceSyncStartAndEndWithError];
}

id sub_1000628F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained errors];
  v4 = [NSError errorWithDomain:@"pairedSyncErrorDomain" code:0 userInfo:0];
  [v3 addObject:v4];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v5 persist];

  v6 = *(a1 + 32);

  return [v6 doneWaitingForPairedSync];
}

void sub_100062D54(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v7 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062E2C;
  block[3] = &unk_100177C58;
  v8 = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v13 = a2;
  v9 = v5;
  dispatch_async(v7, block);
}

void *sub_100062E2C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100100AB0(v2, v5);
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    v7 = [WeakRetained errors];
    [v7 addObject:*(a1 + 32)];

    v8 = objc_loadWeakRetained((*(a1 + 40) + 8));
    [v8 persist];

    return [*(a1 + 40) doneWaitingForPairedSync];
  }

  else
  {
    v10 = *(a1 + 48);
    result = *(a1 + 40);
    if (v10 == 1)
    {

      return [result doneWaitingForPairedSync];
    }

    else if (!result[10])
    {
      v11 = [NRPowerAssertionActivity activityWithName:@"syncActive"];
      v12 = *(a1 + 40);
      v13 = *(v12 + 80);
      *(v12 + 80) = v11;

      return _objc_release_x1(v11, v13);
    }
  }

  return result;
}

void sub_100063044(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Done forcing fake sync start.", buf, 2u);
    }
  }

  v5 = dispatch_time(0, 10000000000);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v7 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063170;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 32);
  dispatch_after(v5, v7, block);
}

id sub_100063170(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000631E0;
  v3[3] = &unk_100175A10;
  v3[4] = v1;
  return [v1 forceSyncComplete:v3];
}

void sub_1000631E0(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Done forcing fake sync completion. Set error and return.", buf, 2u);
    }
  }

  v5 = dispatch_time(0, 10000000000);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v7 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006330C;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 32);
  dispatch_after(v5, v7, block);
}

id sub_10006330C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained errors];
  v4 = [NSError errorWithDomain:@"pairedSyncErrorDomain" code:2 userInfo:0];
  [v3 addObject:v4];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v5 persist];

  v6 = *(a1 + 32);

  return [v6 doneWaitingForPairedSync];
}

id sub_1000635C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100063638;
  v3[3] = &unk_100175A10;
  v3[4] = v1;
  return [v1 forceSyncComplete:v3];
}

void sub_100063638(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "forceSyncCompleteAndFinishTransaction: %@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) doneWaitingForPairedSync];
}

id sub_1000637D8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) isEqual:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 doneWaitingForPairedSync];
  }

  return result;
}

id sub_1000638E8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) isEqual:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 doneWaitingForPairedSync];
  }

  return result;
}

void sub_100063BD4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) pairingIdentifier];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = [*(a1 + 40) activities];
    v8 = [v5 currentActivityLabel:v6];

    v7 = v8;
    if (v8)
    {
      [NRPowerAssertionActivity renameAssertionWithSuffix:v8];
      v7 = v8;
    }
  }
}

void sub_100063D64(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) updatedSession];
  v4 = [v3 pairingIdentifier];
  LODWORD(v2) = [v2 isEqual:v4];

  if (v2)
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = [*(a1 + 40) updatedSession];
    v8 = [v7 activities];
    v10 = [v6 currentActivityLabel:v8];

    v9 = v10;
    if (v10)
    {
      [NRPowerAssertionActivity renameAssertionWithSuffix:v10];
      v9 = v10;
    }
  }
}

void sub_100063F14(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) pairingIdentifier];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 32);

    [v4 doneWaitingForPairedSync];
  }
}

uint64_t sub_100064584(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006459C(uint64_t a1)
{
  v2 = [NSMutableString alloc];
  v3 = [*(*(a1 + 32) + 104) fullDescription];
  v8 = [v2 initWithFormat:@"Pairing Manager: %@", v3];

  v4 = [*(*(a1 + 32) + 56) fullDescription];
  [v8 appendFormat:@"\nPairing Manager (migration): %@", v4];

  v5 = [v8 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_100064740(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 160) != v2)
  {
    *(v1 + 160) = v2;
  }

  return result;
}

void sub_1000647D0(uint64_t a1)
{
  v2 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v3[112];
    v5 = v3[113];
    v6 = v3[160];
    LODWORD(v3) = v3[114];
    v10 = 136316162;
    v11 = "[NetworkRelayAgent invalidatePairingManagerIfIdle]_block_invoke";
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: scanning: %{BOOL}d, pushing: %{BOOL}d, pairingClients: %{BOOL}d, pairing: %{BOOL}d", &v10, 0x24u);
  }

  v7 = *(a1 + 32);
  if ((*(v7 + 112) & 1) == 0 && (*(v7 + 113) & 1) == 0 && (*(v7 + 114) & 1) == 0 && (*(v7 + 160) & 1) == 0)
  {
    [*(v7 + 104) invalidate];
    v8 = *(a1 + 32);
    v9 = *(v8 + 104);
    *(v8 + 104) = 0;

    [*(a1 + 32) reset];
  }
}

void sub_100064B48(uint64_t a1)
{
  v2 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:*(a1 + 32)];
  if (v2)
  {
    v3 = [[NRDeviceMonitor alloc] initWithDeviceIdentifier:v2 delegate:*(a1 + 40) queue:*(*(a1 + 40) + 8)];
    v4 = *(a1 + 40);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
    v6 = link_monitor_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v2;
      v8 = "Started monitoring device with bluetooth UUID %@, NetworkRelay ID %@";
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v13, v11);
    }
  }

  else
  {
    v6 = link_monitor_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138412290;
      v14 = v12;
      v8 = "Failed to create NRDeviceIdentifier for bluetooth UUID %@";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
      goto LABEL_6;
    }
  }
}

void sub_100064D1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  v6 = link_monitor_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopped monitoring device", v7, 2u);
  }
}

void sub_100064EA8(uint64_t a1)
{
  v2 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 114);
    v10 = 136315394;
    v11 = "[NetworkRelayAgent abortCurrentPairing]_block_invoke";
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s _pairingInProgress = %{BOOL}d", &v10, 0x12u);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 114) == 1)
  {
    [*(v4 + 104) cancelPairing];
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 128);
  *(v4 + 128) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 120);
  *(v6 + 120) = 0;

  *(*(a1 + 32) + 144) = 0;
  v8 = *(a1 + 32);
  v9 = *(v8 + 136);
  *(v8 + 136) = 0;
}