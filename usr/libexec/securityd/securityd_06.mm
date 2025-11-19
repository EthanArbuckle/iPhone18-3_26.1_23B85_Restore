OTAccountMetadataClassC *__cdecl sub_10010284C(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setCdpState:2];

  return v2;
}

void sub_100104428(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = qword_10039DE70;
  qword_10039DE70 = v2;

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.securityd.ckks"];
  v5 = qword_10039DE78;
  qword_10039DE78 = v4;

  [qword_10039DE78 setDelegate:qword_10039DE70];
  [qword_10039DE78 resume];

  objc_autoreleasePoolPop(v1);
}

uint64_t sub_100104AB8(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) deps];
  v5 = [v4 accountStateTracker];
  v6 = [*v2 deps];
  v7 = [v6 lockStateTracker];
  v46 = 0;
  v8 = [CKKSDeviceStateEntry intransactionCreateDeviceStateForView:v3 accountTracker:v5 lockStateTracker:v7 error:&v46];
  v9 = v46;

  if (v9 || !v8)
  {
    v21 = [*(a1 + 32) zoneID];
    v22 = [v21 zoneName];
    v23 = sub_100019104(@"ckksdevice", v22);

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v51 = v9;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Error creating device state entry; quitting: %@", buf, 0xCu);
    }

    [*(a1 + 40) setError:v9];
    goto LABEL_15;
  }

  if ([*(a1 + 40) rateLimit])
  {
    v10 = [v8 storedCKRecord];
    v11 = [v10 modificationDate];

    v41 = +[NSDate date];
    v12 = objc_alloc_init(NSDateComponents);
    if (SecIsInternalRelease())
    {
      v13 = -23;
    }

    else
    {
      v13 = -72;
    }

    [v12 setHour:v13];
    v14 = +[NSCalendar currentCalendar];
    v15 = [v14 dateByAddingComponents:v12 toDate:v41 options:0];

    if (v11 && [v11 compare:v15] != -1)
    {
      v16 = [*(a1 + 32) zoneID];
      v17 = [v16 zoneName];
      v18 = sub_100019104(@"ckksdevice", v17);

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Last update is within 3 days (%@); rate-limiting this operation", buf, 0xCu);
      }

      v48 = NSLocalizedDescriptionKey;
      v49 = @"Rate-limited the CKKSUpdateDeviceStateOperation";
      v19 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v20 = [NSError errorWithDomain:@"CKKSErrorDomain" code:60 userInfo:v19];
      [*(a1 + 40) setError:v20];

LABEL_15:
      v24 = 0;
      goto LABEL_22;
    }

    v25 = [*(a1 + 32) zoneID];
    v26 = [v25 zoneName];
    v27 = sub_100019104(@"ckksdevice", v26);

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v51 = v11;
      v52 = 2112;
      v53 = v15;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Not rate-limiting: last updated %@ vs %@", buf, 0x16u);
    }
  }

  v28 = [*(a1 + 32) zoneID];
  v29 = [v28 zoneName];
  v30 = sub_100019104(@"ckksdevice", v29);

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v8;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Saving new device state %@", buf, 0xCu);
  }

  v31 = [*(a1 + 32) zoneID];
  v32 = [v8 CKRecordWithZoneID:v31];
  v47 = v32;
  v33 = [NSArray arrayWithObjects:&v47 count:1];

  v34 = objc_alloc_init(NSBlockOperation);
  [v34 setName:@"updateDeviceState-modifyRecordsComplete"];
  [*(a1 + 40) dependOnBeforeGroupFinished:v34];
  v35 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v33 recordIDsToDelete:0];
  [v35 setAtomic:1];
  [v35 setQualityOfService:17];
  [v35 setSavePolicy:2];
  v36 = [*(a1 + 40) group];
  [v35 setGroup:v36];

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10010517C;
  v45[3] = &unk_100344548;
  v45[4] = *(a1 + 32);
  [v35 setPerRecordSaveBlock:v45];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100105304;
  v42[3] = &unk_100337098;
  objc_copyWeak(&v44, (a1 + 56));
  v42[4] = *(a1 + 32);
  v37 = v34;
  v43 = v37;
  [v35 setModifyRecordsCompletionBlock:v42];
  [v35 linearDependencies:*(a1 + 48)];
  [*(a1 + 40) dependOnBeforeGroupFinished:v35];
  v38 = [*(a1 + 40) deps];
  v39 = [v38 ckdatabase];
  [v39 addOperation:v35];

  objc_destroyWeak(&v44);
  v24 = 1;
LABEL_22:

  return v24;
}

void sub_10010517C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) zoneID];
  v11 = [v10 zoneName];
  v12 = sub_100019104(@"ckksdevice", v11);

  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "error on row: %@ %@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 recordName];
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device state record upload successful for %@: %@", &v14, 0x16u);
  }
}

void sub_100105304(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (v9)
  {
    v12 = [*(a1 + 32) zoneID];
    v13 = [v12 zoneName];
    v14 = sub_100019104(@"ckksdevice", v13);

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudKit returned an error: %@", &buf, 0xCu);
    }

    [v11 setError:v9];
    [v11 runBeforeGroupFinished:*(a1 + 40)];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x3032000000;
    v27 = sub_10010556C;
    v28 = sub_10010557C;
    v29 = 0;
    v15 = [WeakRetained deps];
    v16 = [v15 databaseProvider];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100105584;
    v20 = &unk_1003438A8;
    v21 = v7;
    v22 = v11;
    v23 = *(a1 + 32);
    p_buf = &buf;
    [v16 dispatchSyncWithSQLTransaction:&v17];

    [v11 setError:{*(*(&buf + 1) + 40), v17, v18, v19, v20}];
    [v11 runBeforeGroupFinished:*(a1 + 40)];

    _Block_object_dispose(&buf, 8);
  }
}

void sub_10010554C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10010556C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100105584(uint64_t a1)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v24;
    *&v4 = 138412546;
    v21 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 recordType];
        v10 = [v9 isEqualToString:@"devicestate"];

        if (v10)
        {
          v11 = [CKKSDeviceStateEntry alloc];
          v12 = [*(a1 + 40) deps];
          v13 = [v12 contextID];
          v14 = [(CKKSCKRecordHolder *)v11 initWithCKRecord:v8 contextID:v13];

          v15 = *(*(a1 + 56) + 8);
          obj = *(v15 + 40);
          [(CKKSSQLDatabaseObject *)v14 saveToDatabase:&obj];
          objc_storeStrong((v15 + 40), obj);
          if (*(*(*(a1 + 56) + 8) + 40))
          {
            v16 = [*(a1 + 48) zoneID];
            v17 = [v16 zoneName];
            v18 = sub_100019104(@"ckksdevice", v17);

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = *(*(*(a1 + 56) + 8) + 40);
              *buf = v21;
              v28 = v14;
              v29 = 2112;
              v30 = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Couldn't save new device state(%@) to database: %@", buf, 0x16u);
            }
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v5);
  }

  return 1;
}

void sub_1001061E8(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) timer];
    v5 = dispatch_source_testcancel(v4);

    if (!v5)
    {
      v6 = [*(a1 + 32) timer];
      dispatch_source_cancel(v6);
    }
  }
}

void sub_100106680(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueueTimerTick];
}

void sub_100106788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLiveRequest:1];
  v1 = [WeakRetained liveRequestReceived];
  [v1 fulfill];

  [WeakRetained _onqueueTrigger:0 maximumDelay:-1];
}

void sub_100106B9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLiveRequest:1];
  v2 = [WeakRetained liveRequestReceived];
  [v2 fulfill];

  if (*(a1 + 40) == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  [WeakRetained _onqueueTrigger:v3 maximumDelay:?];
}

id sub_100106F90(uint64_t a1)
{
  [*(a1 + 32) setInitialDelay:*(a1 + 40)];
  [*(a1 + 32) setCurrentDelay:{objc_msgSend(*(a1 + 32), "initialDelay")}];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48) / v2;
  }

  else
  {
    v3 = 1.0;
  }

  [*(a1 + 32) setBackoff:v3];
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);

  return [v5 setMaximumDelay:v4];
}

void sub_100107A70(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"pcsk"];
  v4 = [v3 asBase64DecodedData];

  if ([*(a1 + 32) containsObject:v4])
  {
    [*(a1 + 40) addObject:v4];
  }
}

void sub_100107D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100107D58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100107D70(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:@"count(rowid)"];
  v3 = [v6 asNSNumberInteger];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100107F88(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 objectForKeyedSubscript:@"count(rowid)"];
  v4 = [v8 asNSNumberInteger];
  v5 = *(a1 + 32);
  v6 = [v3 objectForKeyedSubscript:@"ckzone"];

  v7 = [v6 asString];
  [v5 setObject:v4 forKeyedSubscript:v7];
}

void sub_100108248(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 objectForKeyedSubscript:@"count(rowid)"];
  v4 = [v8 asNSNumberInteger];
  v5 = *(a1 + 32);
  v6 = [v3 objectForKeyedSubscript:@"parentKeyUUID"];

  v7 = [v6 asString];
  [v5 setObject:v4 forKeyedSubscript:v7];
}

void sub_100108D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100108D24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100108D3C(uint64_t a1)
{
  v2 = [*(a1 + 32) flags];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v7 = [*(a1 + 32) flagConditions];
    v4 = [v7 objectForKeyedSubscript:*(a1 + 40)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_10010950C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100109530(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = +[CKKSAnalytics logger];
  [v8 logResultForEvent:@"OctagonEventSetRecoveryKey" hardFailure:1 result:v6];

  if (v6)
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "octagon: Error setting recovery key: %@", &v17, 0xCu);
    }

    [WeakRetained setError:v6];
  }

  else
  {
    v10 = sub_100006274("octagon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "successfully set recovery key", &v17, 2u);
    }

    v11 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [WeakRetained deps];
      v13 = [v12 ckks];
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Providing setRecoveryKey() records to %@", &v17, 0xCu);
    }

    v14 = [WeakRetained deps];
    v15 = [v14 ckks];
    [v15 receiveTLKUploadRecords:v5];
  }

  v16 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v16];
}

void sub_100109A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100109A7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) viewKeySets];
  [WeakRetained proceedWithKeys:v2 salt:*(a1 + 40)];
}

void sub_100109EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100109EE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = +[CKKSAnalytics logger];
  [v11 logResultForEvent:@"OctagonEventCreateCustodianRecoveryKeyTPH" hardFailure:1 result:v9];

  if (v9)
  {
    v12 = sub_100006274("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "octagon: Error create custodian recovery key: %@", buf, 0xCu);
    }

    [WeakRetained setError:v9];
    v13 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v13];
    goto LABEL_19;
  }

  v14 = sub_100006274("octagon");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "successfully created custodian recovery key", buf, 2u);
  }

  v15 = [NSUUID alloc];
  v16 = [v8 uuid];
  v17 = [v15 initWithUUIDString:v16];

  if (!v17)
  {
    v28 = sub_100006274("SecError");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v8 uuid];
      *buf = 138412290;
      v35 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "octagon: failed to parse UUID from TPH: %@", buf, 0xCu);
    }

    v30 = [NSError errorWithDomain:@"com.apple.security.octagon" code:54 description:@"Failed to parse UUID from TPH"];
    [WeakRetained setError:v30];

    v13 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v13];
    goto LABEL_18;
  }

  v18 = [OTCustodianRecoveryKey alloc];
  v19 = *(a1 + 32);
  v33 = 0;
  v20 = [v18 initWithUUID:v17 recoveryString:v19 error:&v33];
  v13 = v33;
  [WeakRetained setCrk:v20];

  v21 = [WeakRetained crk];

  if (!v21)
  {
    v31 = sub_100006274("SecError");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "octagon: failed to create crk: %@", buf, 0xCu);
    }

    [WeakRetained setError:v13];
    v32 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v32];

LABEL_18:
    v13 = v17;
    goto LABEL_19;
  }

  v22 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [WeakRetained deps];
    v24 = [v23 ckks];
    *buf = 138412290;
    v35 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Providing createCustodianRecoveryKey() records to %@", buf, 0xCu);
  }

  v25 = [WeakRetained deps];
  v26 = [v25 ckks];
  [v26 receiveTLKUploadRecords:v7];

  v27 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v27];

LABEL_19:
}

void sub_10010A620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010A65C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) viewKeySets];
  [WeakRetained proceedWithKeys:v2 salt:*(a1 + 40)];
}

void sub_10010AB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010AB58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = +[CKKSAnalytics logger];
  [v9 logResultForEvent:@"OctagonEventCreateCustodianRecoveryKeyTPH" hardFailure:1 result:v7];

  if (v7)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon: Error create inheritance key: %@", &v18, 0xCu);
    }

    [WeakRetained setError:v7];
  }

  else
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "successfully created inheritance key", &v18, 2u);
    }

    v12 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained deps];
      v14 = [v13 ckks];
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Providing createCustodianRecoveryKey() records to %@", &v18, 0xCu);
    }

    v15 = [WeakRetained deps];
    v16 = [v15 ckks];
    [v16 receiveTLKUploadRecords:v6];
  }

  v17 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v17];
}

void sub_10010AF18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10010AF40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) viewKeySets];
  [WeakRetained proceedWithKeys:v2 salt:*(a1 + 40)];
}

void sub_10010B2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010B2DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = +[CKKSAnalytics logger];
  [v9 logResultForEvent:@"OctagonEventCreateCustodianRecoveryKeyTPH" hardFailure:1 result:v7];

  if (v7)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon: Error store inheritance key: %@", &v18, 0xCu);
    }

    [WeakRetained setError:v7];
  }

  else
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "successfully stored inheritance key", &v18, 2u);
    }

    v12 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained deps];
      v14 = [v13 ckks];
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Providing storeCustodianRecoveryKey() records to %@", &v18, 0xCu);
    }

    v15 = [WeakRetained deps];
    v16 = [v15 ckks];
    [v16 receiveTLKUploadRecords:v6];
  }

  v17 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v17];
}

void sub_10010B68C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10010B6B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) viewKeySets];
  [WeakRetained proceedWithKeys:v2];
}

void sub_10010BBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010BBD8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = +[CKKSAnalytics logger];
  [v9 logResultForEvent:@"OctagonEventCreateCustodianRecoveryKeyTPH" hardFailure:1 result:v7];

  if (v7)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon: Error recreatint inheritance key: %@", &v18, 0xCu);
    }

    [WeakRetained setError:v7];
  }

  else
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "successfully recreated inheritance key", &v18, 2u);
    }

    v12 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained deps];
      v14 = [v13 ckks];
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Providing createCustodianRecoveryKey() records to %@", &v18, 0xCu);
    }

    v15 = [WeakRetained deps];
    v16 = [v15 ckks];
    [v16 receiveTLKUploadRecords:v6];
  }

  v17 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v17];
}

void sub_10010BF98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10010BFC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) viewKeySets];
  [WeakRetained proceedWithKeys:v2 salt:*(a1 + 40)];
}

void sub_10010C578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010C5A8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = +[CKKSAnalytics logger];
  [v9 logResultForEvent:@"OctagonEventCreateCustodianRecoveryKeyTPH" hardFailure:1 result:v7];

  if (v7)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon: Error creating inheritance w/claimtoken+wrappingkey key: %@", &v18, 0xCu);
    }

    [WeakRetained setError:v7];
  }

  else
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "successfully created inheritance key w/claimtoken+wrappingkey", &v18, 2u);
    }

    v12 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained deps];
      v14 = [v13 ckks];
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Providing createCustodianRecoveryKey() records to %@", &v18, 0xCu);
    }

    v15 = [WeakRetained deps];
    v16 = [v15 ckks];
    [v16 receiveTLKUploadRecords:v6];
  }

  v17 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v17];
}

void sub_10010C968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10010C990(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) viewKeySets];
  [WeakRetained proceedWithKeys:v2 salt:*(a1 + 40)];
}

uint64_t sub_10010EF20(uint64_t a1, void *a2)
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
        LOBYTE(v40[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 200)
      {
        break;
      }

      if (v13 == 201)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v40[0] & 0x7F) << v17;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_59:
        v37 = 16;
        goto LABEL_64;
      }

      if (v13 == 202)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v40[0] & 0x7F) << v24;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_63:
        v37 = 8;
LABEL_64:
        *(a1 + v37) = v23;
        goto LABEL_69;
      }

      if (v13 != 301)
      {
        goto LABEL_54;
      }

      v14 = objc_alloc_init(SECC2MPGenericEventMetric);
      [a1 addMetric:v14];
      v40[0] = 0xAAAAAAAAAAAAAAAALL;
      v40[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !sub_1000E4BD4(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_69:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 44) |= 4u;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v40[0] & 0x7F) << v30;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v36 = 0;
          goto LABEL_68;
        }
      }

      if ([a2 hasError])
      {
        v36 = 0;
      }

      else
      {
        v36 = v32;
      }

LABEL_68:
      *(a1 + 40) = v36;
      goto LABEL_69;
    }

    if (v13 == 101)
    {
      v15 = PBReaderReadString();
      v16 = *(a1 + 32);
      *(a1 + 32) = v15;

      goto LABEL_69;
    }

LABEL_54:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_69;
  }

  return [a2 hasError] ^ 1;
}

id sub_10010FC60()
{
  if (qword_10039DE88 != -1)
  {
    dispatch_once(&qword_10039DE88, &stru_1003371C8);
  }

  v1 = qword_10039DE80;

  return v1;
}

void sub_10010FCB4(id a1)
{
  v3[0] = @"ready";
  v3[1] = @"error";
  v4[0] = &off_100364558;
  v4[1] = &off_100364570;
  v3[2] = @"initializing";
  v3[3] = @"initialized";
  v4[2] = &off_100364588;
  v4[3] = &off_1003645A0;
  v3[4] = @"fetchcomplete";
  v3[5] = @"waitfortlk";
  v4[4] = &off_1003645B8;
  v4[5] = &off_1003645D0;
  v3[6] = @"waitforunlock";
  v3[7] = @"unhealthy";
  v4[6] = &off_1003645E8;
  v4[7] = &off_100364600;
  v3[8] = @"badcurrentpointers";
  v3[9] = @"newtlksfailed";
  v4[8] = &off_100364618;
  v4[9] = &off_100364630;
  v3[10] = @"needrefetch";
  v3[11] = @"healtlkshares";
  v4[10] = &off_100364648;
  v4[11] = &off_100364660;
  v3[12] = @"healtlksharesfailed";
  v3[13] = @"readypendingunlock";
  v4[12] = &off_100364678;
  v4[13] = &off_100364690;
  v3[14] = @"fetching";
  v3[15] = @"resetzone";
  v4[14] = &off_1003646A8;
  v4[15] = &off_1003646C0;
  v3[16] = @"resetlocal";
  v3[17] = @"loggedout";
  v4[16] = &off_1003646D8;
  v4[17] = &off_1003646F0;
  v3[18] = @"zonecreationfailed";
  v3[19] = @"waitfortrust";
  v4[18] = &off_100364708;
  v4[19] = &off_100364720;
  v3[20] = @"waitfortlkupload";
  v3[21] = @"waitfortlkcreation";
  v4[20] = &off_100364738;
  v4[21] = &off_100364750;
  v3[22] = @"process_key_hierarchy";
  v3[23] = @"become_ready";
  v4[22] = &off_100364768;
  v4[23] = &off_100364780;
  v3[24] = @"lose_trust";
  v3[25] = @"tlkmissing";
  v4[24] = &off_100364798;
  v4[25] = &off_1003647B0;
  v3[26] = @"wait_for_ck_account_status";
  v3[27] = @"begin_fetch";
  v4[26] = &off_1003647C8;
  v4[27] = &off_1003647E0;
  v3[28] = @"fixup_fetch_cip";
  v3[29] = @"fixup_fetch_tlkshares";
  v4[28] = &off_1003647F8;
  v4[29] = &off_100364810;
  v3[30] = @"fixup_local_reload";
  v3[31] = @"fixup_resave_cdse";
  v4[30] = &off_100364828;
  v4[31] = &off_100364840;
  v3[32] = @"fixup_delete_tombstones";
  v3[33] = @"check_tlk_shares";
  v4[32] = &off_100364858;
  v4[33] = &off_100364870;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:34];
  v2 = qword_10039DE80;
  qword_10039DE80 = v1;
}

void sub_10010FFE0(id a1)
{
  v5 = sub_10010FC60();
  v1 = [v5 allKeys];
  v2 = [v5 allValues];
  v3 = [NSDictionary dictionaryWithObjects:v1 forKeys:v2];
  v4 = qword_10039DE90;
  qword_10039DE90 = v3;
}

__CFString *sub_10011007C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if (qword_10039DE98 != -1)
    {
      dispatch_once(&qword_10039DE98, &stru_1003371E8);
    }

    v2 = qword_10039DE90;
    v3 = [v2 objectForKeyedSubscript:v1];

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = @"error";
      v6 = @"error";
    }
  }

  else
  {
    v4 = @"error";
    v5 = @"error";
  }

  return v4;
}

void sub_100110140(id a1)
{
  v4[0] = @"loggedout";
  v4[1] = @"resetzone";
  v4[2] = @"resetlocal";
  v4[3] = @"initializing";
  v4[4] = @"initialized";
  v4[5] = @"zonecreationfailed";
  v4[6] = @"ready";
  v4[7] = @"fetching";
  v4[8] = @"process_key_hierarchy";
  v4[9] = @"needrefetch";
  v4[10] = @"tlkmissing";
  v4[11] = @"waitfortlk";
  v4[12] = @"waitfortlkcreation";
  v4[13] = @"waitforunlock";
  v4[14] = @"waitfortrust";
  v4[15] = @"unhealthy";
  v4[16] = @"newtlksfailed";
  v4[17] = @"error";
  v1 = [NSArray arrayWithObjects:v4 count:18];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039DEA0;
  qword_10039DEA0 = v2;
}

id sub_10011028C()
{
  if (qword_10039DEB8 != -1)
  {
    dispatch_once(&qword_10039DEB8, &stru_100337228);
  }

  v1 = qword_10039DEB0;

  return v1;
}

void sub_1001102E0(id a1)
{
  v4[0] = @"ready";
  v4[1] = @"waitfortrust";
  v4[2] = @"waitfortlk";
  v4[3] = @"waitfortlkcreation";
  v4[4] = @"waitforunlock";
  v4[5] = @"error";
  v4[6] = @"loggedout";
  v4[7] = @"halted";
  v1 = [NSArray arrayWithObjects:v4 count:8];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039DEB0;
  qword_10039DEB0 = v2;
}

void sub_1001103C8(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.security.ckks"];
  v8 = @"reduce-rate-limiting";
  v2 = &__kCFBooleanFalse;
  if (byte_10039DED0)
  {
    v2 = &__kCFBooleanTrue;
  }

  v9 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v1 registerDefaults:v3];

  byte_10039DED0 = [v1 BOOLForKey:@"reduce-rate-limiting"];
  v4 = sub_100019104(@"ratelimit", 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10039DED0)
    {
      v5 = @"on";
    }

    else
    {
      v5 = @"off";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "reduce-rate-limiting is %@", &v6, 0xCu);
  }
}

void sub_100110528(id a1)
{
  v1 = [OctagonAPSReceiver receiverForNamedDelegatePort:@"com.apple.securityd.aps" apsConnectionClass:objc_opt_class()];
  [v1 registerForEnvironment:APSEnvironmentProduction];
}

void sub_1001105B8(uint64_t a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011067C;
  v6[3] = &unk_100337BD8;
  v7 = a2;
  v3 = v7;
  v4 = objc_retainBlock(v6);
  v5 = +[CKKSViewManager manager];
  [v5 registerSyncStatusCallback:a1 callback:v4];
}

void sub_10011068C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100019104(@"reset", 0);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "Local keychain reset resync finished with an error: %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "Local keychain reset resync finished successfully";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

void sub_100110FAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 rpcProcessIncomingQueue:0 errorOnClassAFailure:0];
  [v3 dependOnBeforeGroupFinished:v4];
}

void sub_100111018(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if ([a1[5] recordsFound])
    {
      if ([WeakRetained restartCount] < 3)
      {
        [WeakRetained setRestartCount:{objc_msgSend(WeakRetained, "restartCount") + 1}];
        v9 = [a1[4] zoneName];
        v10 = sub_100019104(@"ckksresync", v9);

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "restarting synchronization operation due to new local items", v11, 2u);
        }

        [WeakRetained groupStart];
      }

      else
      {
        v3 = [a1[4] zoneName];
        v4 = sub_100019104(@"ckksresync", v3);

        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "restarted synchronization too often; Failing", v11, 2u);
        }

        v12 = NSLocalizedDescriptionKey;
        v13 = @"resynchronization restarted too many times; churn in database?";
        v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        v6 = [NSError errorWithDomain:@"securityd" code:2 userInfo:v5];
        [WeakRetained setError:v6];
      }
    }
  }

  else
  {
    v7 = [a1[4] zoneName];
    v8 = sub_100019104(@"ckksresync", v7);

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "received callback for released object", v11, 2u);
    }
  }
}

id sub_1001114E0(uint64_t a1, uint64_t a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011157C;
  v6[3] = &unk_100337388;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = [v3 dispatchSyncWithConnection:a2 readWriteTxion:0 block:v6];

  return v4;
}

BOOL sub_100111898(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  off_10039D598();
  v3 = v2;
  *v2 = 1;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001119B4;
  v7[3] = &unk_100337310;
  v9 = &v10;
  v8 = *(a1 + 40);
  dispatch_sync(v4, v7);

  *v3 = 0;
  v5 = *(v11 + 24) == 1;

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_10011199C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001119B4(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100111BF8(uint64_t a1)
{
  v2 = [*(a1 + 32) keysets];

  if (!v2)
  {
    [*(a1 + 32) setKeysets:*(a1 + 40)];
    v3 = [*(a1 + 32) startDependency];

    if (v3)
    {
      v5 = objc_alloc_init(NSOperationQueue);
      v4 = [*(a1 + 32) startDependency];
      [v5 addOperation:v4];

      [*(a1 + 32) setStartDependency:0];
    }
  }
}

uint64_t sub_100112654(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_100112688(uint64_t a1)
{
  v2 = sub_100017B30();

  return sub_1001126C4(a1, v2);
}

CFStringRef sub_1001126C4(uint64_t a1, const __CFDictionary *a2)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"NonConcrete";
  }

  Count = CFArrayGetCount(v4);
  v8 = CFArrayGetCount(*(a1 + 32));
  return CFStringCreateWithFormat(kCFAllocatorDefault, a2, @"<ChangeTracker %@ children %ld/%ld>", v6, Count, v8);
}

void sub_10011274C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    CFRelease(v4);
  }
}

void sub_100112F30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_100112F54(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained checkFatalError:v5])
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) uuid];
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "escrowrequest: fatal error for record: %@, dropping: %@", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v22 = 0;
    [v9 deleteFromKeychain:&v22];
    v10 = v22;
    if (*(a1 + 40))
    {
      v11 = sub_100006274("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "escrowrequest: unable to delete last escrow time: %@", buf, 0xCu);
      }
    }

    [WeakRetained setError:v5];
LABEL_20:
    v18 = [WeakRetained operationQueue];
    [v18 addOperation:*(a1 + 48)];

    goto LABEL_24;
  }

  if (!v5 && (a2 & 1) != 0)
  {
    [WeakRetained setNumberOfRecordsUploaded:1];
    v12 = sub_100006274("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) uuid];
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "escrowrequest: prerecord %@ upload succeeded", buf, 0xCu);
    }

    [*(a1 + 32) setUploadCompleted:1];
    v14 = *(a1 + 32);
    v21 = 0;
    [v14 saveToKeychain:&v21];
    v10 = v21;
    if (v10)
    {
      v15 = sub_100006274("SecError");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "escrowrequest: unable to save last escrow time: %@", buf, 0xCu);
      }

      v16 = sub_100006274("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) uuid];
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "escrowrequest: unable to save completion of prerecord %@ in keychain", buf, 0xCu);
      }
    }

    [WeakRetained setNextState:@"nothing_to_do"];
    goto LABEL_20;
  }

  v19 = sub_100006274("SecError");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [*(a1 + 32) uuid];
    *buf = 138412546;
    v24 = v20;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "escrowrequest: prerecord %@ upload failed: %@", buf, 0x16u);
  }

  [WeakRetained setError:v5];
  v10 = [WeakRetained operationQueue];
  [v10 addOperation:*(a1 + 48)];
LABEL_24:
}

void sub_10011496C(uint64_t a1)
{
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = sub_10011565C;
  v74 = sub_10011566C;
  v75 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deps];
  v4 = [v3 contextID];
  v5 = *(a1 + 48);
  v69 = 0;
  v6 = [(CKKSSQLDatabaseObject *)CKKSMirrorEntry allUUIDsWithContextID:v4 inZones:v5 error:&v69];
  v57 = v69;
  [v2 unionSet:v6];

  if (v57)
  {
    v7 = sub_100019104(@"ckksscan", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v57;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to load CKMirrorEntries: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v89 = 0x3032000000;
  v90 = sub_10011565C;
  v91 = sub_10011566C;
  v92 = objc_alloc_init(CKKSMemoryKeyCache);
  v8 = [AAFAnalyticsEventSecurity alloc];
  v9 = [*(a1 + 40) deps];
  v10 = [v9 activeAccount];
  v11 = [v10 altDSID];
  v12 = [*(a1 + 40) deps];
  v13 = [v12 sendMetric];
  v58 = [v8 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v11 eventName:kSecurityRTCEventNameQuerySyncableItems testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:v13];

  v14 = &off_10033C738;
  v15 = kSecAttrTombstone;
  v16 = off_10033E8C8;
  do
  {
    if (*(v14 + 8) == 1)
    {
      v17 = *v14;
      v86[0] = kSecClass;
      v86[1] = kSecReturnRef;
      v87[0] = v17;
      v87[1] = &__kCFBooleanTrue;
      v87[2] = &__kCFBooleanTrue;
      v86[2] = kSecAttrSynchronizable;
      v86[3] = v15;
      v87[3] = &__kCFBooleanFalse;
      v18 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:4];
      v19 = [v18 mutableCopy];

      v20 = *(a1 + 40);
      v21 = [v20 deps];
      v22 = [v21 views];
      v23 = [v20 queryPredicatesForViewMapping:v22];

      [v19 addEntriesFromDictionary:v23];
      v24 = sub_100019104(@"ckksscan", 0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [*(a1 + 40) name];
        *v80 = 138412802;
        v81 = v17;
        v82 = 2112;
        v83 = v25;
        v84 = 2112;
        v85 = v19;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Scanning all synchronizable %@ items(%@) for: %@", v80, 0x20u);
      }

      v26 = *(a1 + 40);
      v27 = (v71 + 5);
      obj = v71[5];
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_100115674;
      v61[3] = &unk_100337588;
      v61[4] = v26;
      v28 = v17;
      v62 = v28;
      v66 = &v70;
      v63 = *(a1 + 56);
      v64 = *(a1 + 32);
      p_buf = &buf;
      v65 = *(a1 + 64);
      [v26 executeQuery:v19 readWrite:0 error:&obj block:v61];
      objc_storeStrong(v27, obj);
    }

    v29 = *v16++;
    v14 = v29;
  }

  while (v29);
  if (![*(a1 + 32) count])
  {
    goto LABEL_22;
  }

  v30 = sub_100019104(@"ckksscan", 0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [*(a1 + 32) count];
    *v80 = 134217984;
    v81 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "keychain missing %lu items from mirror, proceeding with queue scanning", v80, 0xCu);
  }

  v32 = *(a1 + 32);
  v33 = [*(a1 + 40) deps];
  v34 = [v33 contextID];
  v35 = *(a1 + 48);
  v36 = (v71 + 5);
  v60 = v71[5];
  v37 = [(CKKSSQLDatabaseObject *)CKKSIncomingQueueEntry allUUIDsWithContextID:v34 inZones:v35 error:&v60];
  objc_storeStrong(v36, v60);
  [v32 minusSet:v37];

  if (v71[5])
  {
    v38 = sub_100019104(@"ckksscan", 0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = v71[5];
      *v80 = 138412290;
      v81 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "unable to inspect incoming queue: %@", v80, 0xCu);
    }

    [*(a1 + 40) setError:v71[5]];
    v40 = [*(a1 + 40) error];
    [v58 sendMetricWithResult:0 error:v40];
    goto LABEL_23;
  }

  v41 = *(a1 + 32);
  v42 = [*(a1 + 40) deps];
  v43 = [v42 contextID];
  v44 = *(a1 + 48);
  v45 = (v71 + 5);
  v59 = v71[5];
  v46 = [(CKKSSQLDatabaseObject *)CKKSOutgoingQueueEntry allUUIDsWithContextID:v43 inZones:v44 error:&v59];
  objc_storeStrong(v45, v59);
  [v41 minusSet:v46];

  if (!v71[5])
  {
LABEL_22:
    v49 = *(a1 + 72);
    v78[0] = kSecurityRTCFieldItemsScanned;
    v50 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) processedItems]);
    v79[0] = v50;
    v51 = kSecurityRTCFieldNewItemsScanned;
    v78[1] = kSecurityRTCFieldNewItemsScanned;
    v52 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [*(a1 + 40) recordsFound]);
    v79[1] = v52;
    v53 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2];
    [v49 addMetrics:v53];

    v76 = v51;
    v54 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [*(a1 + 40) recordsFound]);
    v77 = v54;
    v55 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    [v58 addMetrics:v55];

    v40 = [*(a1 + 40) error];
    v56 = [*(a1 + 40) error];
    [v58 sendMetricWithResult:v40 != 0 error:v56];

    goto LABEL_23;
  }

  v47 = sub_100019104(@"ckksscan", 0);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v48 = v71[5];
    *v80 = 138412290;
    v81 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "unable to inspect outgoing queue: %@", v80, 0xCu);
  }

  [*(a1 + 40) setError:v71[5]];
  v40 = [*(a1 + 40) error];
  [v58 sendMetricWithResult:0 error:v40];
LABEL_23:

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v70, 8);
}

void sub_100115268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001152B4(uint64_t a1)
{
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v1 = [*(a1 + 32) deps];
  v2 = [v1 activeManagedViews];

  obj = v2;
  v3 = [v2 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v41;
    v7 = @"ready";
    v8 = @"ckksscan";
    *&v4 = 138412290;
    v35 = v4;
    v36 = *v41;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = [v10 viewKeyHierarchyState];
        v12 = [v11 isEqualToString:v7];

        if (v12)
        {
          v13 = v7;
          v14 = [v10 launch];
          [v14 addEvent:@"scan-local-items"];

          v15 = [*(a1 + 32) deps];
          v16 = [v15 contextID];
          [v10 zoneID];
          v18 = v17 = v8;
          v19 = [v18 zoneName];
          v20 = [CKKSZoneStateEntry contextID:v16 zoneName:v19];

          v8 = v17;
          v21 = +[NSDate now];
          [v20 setLastLocalKeychainScanTime:v21];

          v39 = 0;
          [v20 saveToDatabase:&v39];
          v22 = v39;
          v23 = [v10 zoneID];
          v24 = [v23 zoneName];
          v25 = sub_100019104(v17, v24);

          if (v22)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              v45 = v22;
              v26 = v25;
              v27 = OS_LOG_TYPE_ERROR;
              v28 = "Unable to save 'scanned' bit: %@";
              v29 = 12;
              goto LABEL_14;
            }
          }

          else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v26 = v25;
            v27 = OS_LOG_TYPE_DEFAULT;
            v28 = "Saved scanned status.";
            v29 = 2;
LABEL_14:
            _os_log_impl(&_mh_execute_header, v26, v27, v28, buf, v29);
          }

          v7 = v13;
          v6 = v36;
          goto LABEL_16;
        }

        v30 = [v10 zoneID];
        v31 = [v30 zoneName];
        v20 = sub_100019104(v8, v31);

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "View wasn't ready for scan", buf, 2u);
        }

LABEL_16:
      }

      v5 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v5);
  }

  v32 = [*(a1 + 32) deps];
  v33 = [v32 overallLaunch];
  [v33 addEvent:@"scan-local-items"];

  return 1;
}

uint64_t sub_10011565C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100115674(uint64_t a1, __CFString *a2)
{
  v4 = sub_100019104(@"ckksscan", 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v81 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "scanning item: %{private}@", buf, 0xCu);
  }

  [*(a1 + 32) setProcessedItems:{objc_msgSend(*(a1 + 32), "processedItems") + 1}];
  if (sub_10001A700(a2))
  {
    v5 = sub_100019104(@"ckksscan", 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v81 = a2;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Skipping tombstone %{private}@", buf, 0xCu);
    }

    goto LABEL_69;
  }

  v5 = sub_100015B5C(a2, kSecAttrAccessible);
  if (([v5 isEqualToString:kSecAttrAccessibleWhenUnlocked]& 1) == 0 && ([v5 isEqualToString:kSecAttrAccessibleAfterFirstUnlock]& 1) == 0 && ([v5 isEqualToString:kSecAttrAccessibleAlwaysPrivate]& 1) == 0)
  {
    v7 = sub_100019104(@"ckksscan", 0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_68;
    }

    *buf = 138412290;
    v81 = v5;
    v19 = "skipping sync of device-bound(%@) item";
    goto LABEL_40;
  }

  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if ((byte_10039E100 & 1) == 0 && !sub_1001636C4(a2))
  {
    v7 = sub_100019104(@"ckksscan", 0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_68;
    }

    *buf = 138477827;
    v81 = a2;
    v19 = "Ignoring syncable keychain item for non-primary account: %{private}@";
LABEL_40:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    goto LABEL_68;
  }

  v6 = [CKKSKey isItemKeyForKeychainView:a2];

  if (v6)
  {
    v7 = sub_100019104(@"ckksscan", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Scanned item is a CKKS internal key, skipping", buf, 2u);
    }

    goto LABEL_68;
  }

  v72 = v5;
  v8 = [*(a1 + 32) deps];
  v7 = [v8 viewNameForItem:a2];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v71 = a1;
  v9 = [*(a1 + 32) deps];
  v10 = [v9 activeManagedViews];

  v11 = [v10 countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = v11;
  v13 = *v77;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v77 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v76 + 1) + 8 * i);
      v16 = [v15 zoneID];
      v17 = [v16 zoneName];
      v18 = [v17 isEqualToString:v7];

      if (v18)
      {
        v20 = v15;

        if (!v20)
        {
          goto LABEL_36;
        }

        v75 = 0;
        v21 = sub_100015BFC(a2, &off_100343C98, &v75);
        v22 = CFRetain(v21);
        v5 = v72;
        if (!v22 || (+[NSNull null], v23 = objc_claimAutoreleasedReturnValue(), v24 = [(__CFString *)v22 isEqual:v23], v23, v24))
        {
          v25 = [v20 zoneID];
          v26 = [v25 zoneName];
          v27 = sub_100019104(@"ckksscan", v26);

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v81 = a2;
            v82 = 2112;
            v83 = v75;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "making new UUID for item %{private}@: %@", buf, 0x16u);
          }

          v28 = sub_10001B350(a2, 1, 0, &v75);
          v29 = [(__CFDictionary *)v28 mutableCopy];

          [v29 setObject:*(v71 + 40) forKeyedSubscript:kSecClass];
          if (SecErrorGetOSStatus())
          {
            v30 = [v20 zoneID];
            v31 = [v30 zoneName];
            v32 = sub_100019104(@"ckksscan", v31);

            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v81 = v75;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "couldn't copy UUID-less item's primary key: %@", buf, 0xCu);
            }

            v33 = *(*(v71 + 72) + 8);
            v34 = *(v33 + 40);
            *(v33 + 40) = v75;

            [*(v71 + 32) setError:*(*(*(v71 + 72) + 8) + 40)];
          }

          else
          {
            v52 = [*(v71 + 48) objectForKeyedSubscript:v20];
            if (!v52)
            {
              v52 = +[NSMutableSet set];
              [*(v71 + 48) setObject:v52 forKeyedSubscript:v20];
            }

            [v52 addObject:v29];
          }

          goto LABEL_66;
        }

        v35 = v71;
        v36 = [*(v71 + 32) deps];
        v37 = [v36 contextID];
        v38 = [v20 zoneID];
        v39 = v22;
        v40 = v38;
        v41 = *(*(v71 + 72) + 8);
        obj = *(v41 + 40);
        v42 = v39;
        v43 = [CKKSMirrorEntry tryFromDatabase:"tryFromDatabase:contextID:zoneID:error:" contextID:? zoneID:? error:?];
        v44 = (v41 + 40);
        v45 = v43;
        objc_storeStrong(v44, obj);

        if (v45)
        {
          v46 = v45;
          v22 = v42;
          [*(v71 + 56) removeObject:v42];
          v47 = [v20 zoneID];
          v48 = [v47 zoneName];
          v49 = sub_100019104(@"ckksscan", v48);

          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v81 = v42;
            _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Existing mirror entry with UUID %@", buf, 0xCu);
          }

          v50 = *(v71 + 32);
          v51 = [v46 item];
          LOBYTE(v50) = [v50 areEquivalent:a2 ckksItem:v51 keyCache:*(*(*(v71 + 80) + 8) + 40)];

          if (v50)
          {
            v29 = v46;
LABEL_66:

            goto LABEL_67;
          }

          v35 = v71;
          v53 = [v20 zoneID];
          v54 = [v53 zoneName];
          v55 = sub_100019104(@"ckksscan", v54);

          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v81 = v42;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Existing mirror entry with UUID %@ does not match local item", buf, 0xCu);
          }

          v45 = v46;
        }

        v56 = [*(v35 + 32) deps];
        [v56 contextID];
        v58 = v57 = v35;
        v59 = [v20 zoneID];
        v60 = *(*(v57 + 72) + 8);
        v73 = *(v60 + 40);
        v61 = [CKKSOutgoingQueueEntry tryFromDatabase:v42 contextID:v58 zoneID:v59 error:&v73];
        objc_storeStrong((v60 + 40), v73);

        v62 = [v20 zoneID];
        v63 = [v62 zoneName];
        v64 = sub_100019104(@"ckksscan", v63);

        v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
        v22 = v42;
        if (v61)
        {
          if (v65)
          {
            *buf = 138412290;
            v81 = v42;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Existing outgoing queue entry with UUID %@", buf, 0xCu);
          }

          v66 = [v61 state];
          v67 = [v66 isEqualToString:@"new"];

          v29 = v70;
          if (!v67)
          {
            goto LABEL_65;
          }

          v68 = [*(v71 + 32) viewsWithNewCKKSEntries];
          [v68 addObject:v20];
        }

        else
        {
          if (v65)
          {
            *buf = 138412290;
            v81 = v42;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Item(%@) is new; will attempt to add to CKKS", buf, 0xCu);
          }

          [*(v71 + 32) setRecordsFound:{objc_msgSend(*(v71 + 32), "recordsFound") + 1}];
          v68 = [*(v71 + 64) objectForKeyedSubscript:v20];
          if (!v68)
          {
            v68 = +[NSMutableDictionary dictionary];
            [*(v71 + 64) setObject:v68 forKeyedSubscript:v20];
          }

          v69 = [v68 objectForKeyedSubscript:*(v71 + 40)];
          if (!v69)
          {
            v69 = +[NSMutableSet set];
            [v68 setObject:v69 forKeyedSubscript:*(v71 + 40)];
          }

          [v69 addObject:v42];

          v29 = v70;
        }

LABEL_65:
        goto LABEL_66;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v76 objects:v84 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_24:

LABEL_36:
  v20 = sub_100019104(@"ckksscan", 0);
  v5 = v72;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v81 = v7;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Scanned item is for view %@, skipping", buf, 0xCu);
  }

LABEL_67:

LABEL_68:
LABEL_69:
}

uint64_t sub_10011628C(uint64_t a1)
{
  v2 = sub_100019104(@"ckksscan", 0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 32);
    *buf = 134218242;
    v46 = v3;
    v47 = 2112;
    v48 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "BUG: keychain missing %lu items from mirror and/or queues: %@", buf, 0x16u);
  }

  [*(a1 + 40) setMissingLocalItemsFound:{objc_msgSend(*(a1 + 32), "count")}];
  v5 = +[CKKSAnalytics logger];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
  [v5 logMetric:v6 withName:@"CKKSEventMissingLocalItemsFound"];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v33 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  v8 = 0;
  if (v33)
  {
    v9 = *v40;
    p_info = &OBJC_METACLASS___CKKSMemoryKeyCache.info;
    *&v7 = 138412546;
    v29 = v7;
    v30 = *v40;
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * v11);
        v14 = [*(a1 + 40) deps];
        v15 = [v14 contextID];
        v38 = v12;
        v16 = [p_info + 296 allWithUUID:v13 contextID:v15 error:&v38];
        v8 = v38;

        if (v16)
        {
          v17 = v8 == 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v32 = v8;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v19 = v16;
          v20 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v35;
            do
            {
              v23 = 0;
              do
              {
                if (*v35 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v34 + 1) + 8 * v23);
                v25 = [*(a1 + 40) deps];
                v26 = [v24 item];
                v27 = [v26 storedCKRecord];
                [v25 intransactionCKRecordChanged:v27 resync:1];

                v23 = v23 + 1;
              }

              while (v21 != v23);
              v21 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v21);
          }

          v9 = v30;
          p_info = (&OBJC_METACLASS___CKKSMemoryKeyCache + 32);
          v8 = v32;
        }

        else
        {
          v18 = sub_100019104(@"ckksscan", 0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v29;
            v46 = v13;
            v47 = 2112;
            v48 = v8;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "BUG: error fetching previously-extant CKME (uuid: %@) from database: %@", buf, 0x16u);
          }

          [*(a1 + 40) setError:v8];
        }

        v11 = v11 + 1;
        v12 = v8;
      }

      while (v11 != v33);
      v33 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v33);
  }

  return 1;
}

uint64_t sub_1001167F4(id *a1)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10011565C;
  v37 = sub_10011566C;
  v38 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_10011565C;
  v31[4] = sub_10011566C;
  v32 = objc_alloc_init(CKKSMemoryKeyCache);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v27 objects:v44 count:16];
  if (v2)
  {
    v3 = *v28;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v28 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = [a1[5] zoneID];
        v7 = [v6 zoneName];
        v8 = sub_100019104(@"ckksscan", v7);

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found item with no uuid: %@", &buf, 0xCu);
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v42 = 0x2020000000;
        v43 = 0;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100116C24;
        v21[3] = &unk_100337560;
        v21[4] = v5;
        p_buf = &buf;
        v9 = a1[5];
        v10 = a1[6];
        v22 = v9;
        v23 = v10;
        v25 = &v33;
        v26 = v31;
        v11 = sub_100008A70(1, 1, 0, &v43, v21);
        if (v11)
        {
          v12 = *(*(&buf + 1) + 24);
          if (v12)
          {
            *(*(&buf + 1) + 24) = 0;
            CFRelease(v12);
          }
        }

        else
        {
          v13 = [a1[5] zoneID];
          v14 = [v13 zoneName];
          v15 = sub_100019104(@"ckksscan", v14);

          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(*(&buf + 1) + 24);
            *v39 = 138412290;
            v40 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "couldn't execute query: %@", v39, 0xCu);
          }

          v17 = v34[5];
          v34[5] = *(*(&buf + 1) + 24);

          [a1[6] setError:v34[5]];
        }

        _Block_object_dispose(&buf, 8);
        if (!v11)
        {
          v18 = 0;
          goto LABEL_19;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v27 objects:v44 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_19:

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

void sub_100116BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100116C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006454(*(a1 + 32), 0, -1, 0, (*(*(a1 + 56) + 8) + 24));
  if (v4 && (v5 = *(*(a1 + 56) + 8), v7 = *(v5 + 24), v6 = (v5 + 24), !v7))
  {
    v14 = v4;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x2020000000;
    v28 = 1;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100116E5C;
    v19[3] = &unk_100337538;
    v20 = *(a1 + 40);
    v15 = *(a1 + 64);
    v21 = *(a1 + 48);
    v24 = a2;
    v25 = v14;
    v22 = v15;
    p_buf = &buf;
    v16 = sub_10001DC5C(v14, 0, a2, v6, v19);
    v17 = *(*(&buf + 1) + 24);
    *(*(&buf + 1) + 24) = v16 & v17;
    v18 = sub_100019700(v14, v16 & v17, (*(*(a1 + 56) + 8) + 24));
    *(*(&buf + 1) + 24) &= v18;

    _Block_object_dispose(&buf, 8);
    return 1;
  }

  else
  {
    v8 = [*(a1 + 40) zoneID];
    v9 = [v8 zoneName];
    v10 = sub_100019104(@"ckksscan", v9);

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(*(a1 + 56) + 8) + 24);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "couldn't create query: %@", &buf, 0xCu);
    }

    v12 = *(*(a1 + 56) + 8);
    result = *(v12 + 24);
    if (result)
    {
      *(v12 + 24) = 0;
      CFRelease(result);
      return 0;
    }
  }

  return result;
}

void sub_100116E5C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];

  v38 = kSecAttrUUID;
  v39 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v7 = [*(a1 + 32) zoneID];
  v8 = [v7 zoneName];
  v9 = sub_100019104(@"ckksscan", v8);

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412547;
    v35 = v5;
    v36 = 2113;
    v37 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Assigning new UUID %@ for item %{private}@", buf, 0x16u);
  }

  v10 = sub_1001632F8(a2, v6, (*(*(a1 + 48) + 8) + 24));
  if (v10)
  {
    v11 = v10;
    v12 = *(a1 + 48);
    v13 = *(v12 + 8);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001171F4;
    v32[3] = &unk_100337510;
    v32[5] = a2;
    v32[6] = v10;
    v33 = *(a1 + 80);
    v32[4] = v12;
    v14 = sub_1000141DC(v33, 5, (v13 + 24), v32);
    v15 = v14;
    if (v14)
    {
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18 = *(*(*(a1 + 64) + 8) + 40);
      v19 = *(*(a1 + 56) + 8);
      v31 = *(v19 + 40);
      [v16 onboardItemToCKKS:v11 viewState:v17 keyCache:v18 error:&v31];
      v20 = v31;
      v21 = *(v19 + 40);
      *(v19 + 40) = v20;
    }

    else
    {
      v28 = [*(a1 + 32) zoneID];
      v29 = [v28 zoneName];
      v21 = sub_100019104(@"ckksscan", v29);

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 138412290;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Unable to update item with new UUID: %@", buf, 0xCu);
      }
    }

    *(*(*(a1 + 72) + 8) + 24) &= v15;
  }

  else
  {
    v22 = [*(a1 + 32) zoneID];
    v23 = [v22 zoneName];
    v24 = sub_100019104(@"ckksscan", v23);

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 138412290;
      v35 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unable to copy item with new UUID: %@", buf, 0xCu);
    }

    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = *(*(*(a1 + 48) + 8) + 24);

    [*(a1 + 40) setError:*(*(*(a1 + 56) + 8) + 40)];
  }
}

uint64_t sub_100117470(uint64_t a1)
{
  v2 = objc_alloc_init(CKKSMemoryKeyCache);
  v32[0] = kSecClass;
  v32[1] = kSecReturnRef;
  v3 = *(a1 + 40);
  v33[0] = *(a1 + 32);
  v33[1] = &__kCFBooleanTrue;
  v32[2] = kSecAttrSynchronizable;
  v32[3] = kSecAttrTombstone;
  v33[2] = &__kCFBooleanTrue;
  v33[3] = &__kCFBooleanFalse;
  v32[4] = kSecAttrUUID;
  v33[4] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:5];
  v5 = [*(a1 + 48) zoneID];
  v6 = [v5 zoneName];
  v7 = sub_100019104(@"ckksscan", v6);

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Onboarding %@ %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = sub_10011565C;
  v30 = sub_10011566C;
  v31 = 0;
  v10 = *(a1 + 56);
  obj = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001177E8;
  v19[3] = &unk_1003374E8;
  v19[4] = v10;
  v20 = *(a1 + 48);
  v11 = v2;
  v21 = v11;
  v22 = buf;
  [v10 executeQuery:v4 readWrite:1 error:&obj block:v19];
  objc_storeStrong(&v31, obj);
  if (*(*&buf[8] + 40))
  {
    v12 = [*(a1 + 48) zoneID];
    v13 = [v12 zoneName];
    v14 = sub_100019104(@"ckksscan", v13);

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      v16 = *(*&buf[8] + 40);
      *v24 = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Need to upload %@, but can't save to database: %@", v24, 0x16u);
    }

    [*(a1 + 56) setError:*(*&buf[8] + 40)];
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  _Block_object_dispose(buf, 8);
  return v17;
}

void sub_1001177C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001177E8(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  [v3 onboardItemToCKKS:a2 viewState:v2 keyCache:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
}

void sub_100117E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100117E28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100117ED8;
  v7[3] = &unk_100337498;
  v8 = *(a1 + 32);
  v5 = sub_10001DC5C(v3, 0, a2, (v4 + 24), v7);

  return v5;
}

void sub_100118CF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_100118D24(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = WeakRetained;
  if (v12)
  {
    v15 = sub_100006274("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "octagon: Error joining with voucher: %@", buf, 0xCu);
    }

    v16 = +[CKKSAnalytics logger];
    [v16 logRecoverableError:v12 forEvent:@"OctagonEventJoinWithVoucher" withAttributes:0];

    if ([v12 isCuttlefishError:1033])
    {
      v17 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v14 ckksConflictState];
        *buf = 138412290;
        v42 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "A CKKS key hierarchy is out of date; going to state '%@'", buf, 0xCu);
      }

      v19 = [v14 ckksConflictState];
      [v14 setNextState:v19];
    }

    else
    {
      if ([v12 isCuttlefishError:1007])
      {
        v29 = sub_100006274("octagon");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "requesting cuttlefish health check", buf, 2u);
        }

        [v14 setNextState:@"CuttlefishTrustCheck"];
      }

      [v14 setError:v12];
    }

    v30 = *(a1 + 32);
    v26 = [v14 error];
    [v30 sendMetricWithResult:0 error:v26];
  }

  else
  {
    [WeakRetained setPeerID:v9];
    v20 = +[CKKSAnalytics logger];
    [v20 logSuccessForEventNamed:@"OctagonEventJoinWithVoucher"];

    v21 = [v14 deps];
    v22 = [v21 ckks];
    [v22 setCurrentSyncingPolicy:v11];

    v23 = [v14 deps];
    v24 = [v23 stateHolder];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100119218;
    v38[3] = &unk_100338E48;
    v39 = v9;
    v40 = v11;
    v37 = 0;
    v25 = [v24 persistAccountChanges:v38 error:&v37];
    v26 = v37;

    if (!v25 || v26)
    {
      v31 = sub_100006274("octagon");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v26;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Couldn't persist results: %@", buf, 0xCu);
      }

      [v14 setError:v26];
      v32 = *(a1 + 32);
      v33 = [v14 error];
      [v32 sendMetricWithResult:0 error:v33];
    }

    else
    {
      v27 = sub_100006274("SecError");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "octagon: join successful", buf, 2u);
      }

      v28 = [v14 intendedState];
      [v14 setNextState:v28];

      [*(a1 + 32) sendMetricWithResult:1 error:0];
    }

    v34 = [v14 deps];
    v35 = [v34 ckks];
    [v35 receiveTLKUploadRecords:v10];
  }

  v36 = [v14 finishedOp];
  [v14 runBeforeGroupFinished:v36];
}

id sub_100119218(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTrustState:2];
  [v3 setPeerID:*(a1 + 32)];
  [v3 setVoucher:0];
  [v3 setVoucherSignature:0];
  v4 = [v3 tlkSharesForVouchedIdentitys];
  [v4 removeAllObjects];

  [v3 setTPSyncingPolicy:*(a1 + 40)];

  return v3;
}

void sub_10011AEEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 zoneID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    v9 = [*(a1 + 32) zoneName];
    v10 = sub_100019104(@"ckksfetch", v9);

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Sorting record modification %@: %@", &v11, 0x16u);
    }

    [*(a1 + 40) addObject:v6];
  }
}

void sub_10011B020(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 zoneID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    v9 = [*(a1 + 32) zoneName];
    v10 = sub_100019104(@"ckksfetch", v9);

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Sorting record deletion %@: %@", &v11, 0x16u);
    }

    [*(a1 + 40) addObject:v6];
  }
}

void sub_10011BD3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_100019104(@"ckksfetch", 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v3 recordType];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "CloudKit notification: record changed(%@): %@", &v11, 0x16u);
  }

  v6 = [WeakRetained modifications];
  v7 = [v3 recordID];
  [v6 setObject:v3 forKeyedSubscript:v7];

  v8 = [WeakRetained deletions];
  v9 = [v3 recordID];
  [v8 removeObjectForKey:v9];

  [WeakRetained setFetchedItems:{objc_msgSend(WeakRetained, "fetchedItems") + 1}];
}

void sub_10011BEB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = sub_100019104(@"ckksfetch", 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "CloudKit notification: deleted record(%@): %@", &v12, 0x16u);
  }

  v9 = [WeakRetained modifications];
  [v9 removeObjectForKey:v5];

  v10 = [[CKKSCloudKitDeletion alloc] initWithRecordID:v5 recordType:v6];
  v11 = [WeakRetained deletions];
  [v11 setObject:v10 forKeyedSubscript:v5];

  [WeakRetained setFetchedItems:{objc_msgSend(WeakRetained, "fetchedItems") + 1}];
}

void sub_10011C020(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = sub_100019104(@"ckksfetch", 0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Received a new server change token (via block) for %@: %@ %@", &v13, 0x20u);
  }

  v12 = [WeakRetained changeTokens];
  [v12 setObject:v8 forKeyedSubscript:v7];
}

void sub_10011C154(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = sub_100019104(@"ckksfetch", 0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v33 = 138412802;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38[0] = v13;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Received a new server change token for %@: %@ %@", &v33, 0x20u);
  }

  v17 = [WeakRetained changeTokens];
  [v17 setObject:v12 forKeyedSubscript:v11];

  v18 = [WeakRetained allClientOptions];
  v19 = [v18 objectForKeyedSubscript:v11];
  [v19 setPreviousServerChangeToken:v12];

  [WeakRetained setMoreComing:{objc_msgSend(WeakRetained, "moreComing") | a5}];
  if ((a5 & 1) == 0)
  {
    v20 = [WeakRetained allClientOptions];
    v21 = [v20 objectForKeyedSubscript:v11];
    v22 = [v21 fetchNewestChangesFirst];

    if (v22)
    {
      v23 = [WeakRetained allClientOptions];
      v24 = [v23 objectForKeyedSubscript:v11];
      [v24 setFetchNewestChangesFirst:0];
    }
  }

  v25 = *(a1 + 32);
  v39 = kSecurityRTCFieldFullFetch;
  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [WeakRetained moreComing]);
  v40 = v26;
  v27 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  [v25 addMetrics:v27];

  if (a5)
  {
    v28 = sub_100019104(@"ckksfetch", 0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [WeakRetained changeTokens];
      v30 = [v29 objectForKeyedSubscript:v11];
      v33 = 138412546;
      v34 = v11;
      v35 = 2112;
      v36 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "more changes pending for %@, will start a new fetch at change token %@", &v33, 0x16u);
    }
  }

  v31 = [v11 zoneName];
  v32 = sub_100019104(@"ckksfetch", v31);

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v33 = 138413058;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    v37 = 1024;
    LODWORD(v38[0]) = a5;
    WORD2(v38[0]) = 2112;
    *(v38 + 6) = v14;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Record zone fetch complete: changeToken=%@ clientChangeTokenData=%@ moreComing=%{BOOL}d error=%@", &v33, 0x26u);
  }

  [WeakRetained sendChangesToClient:v11 moreComing:a5];
}

void sub_10011C504(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = [WeakRetained modifications];
    [WeakRetained setTotalModifications:{objc_msgSend(v6, "count") + objc_msgSend(WeakRetained, "totalModifications")}];

    v7 = [WeakRetained deletions];
    [WeakRetained setTotalDeletions:{objc_msgSend(v7, "count") + objc_msgSend(WeakRetained, "totalDeletions")}];

    v8 = [WeakRetained modifications];
    [v8 removeAllObjects];

    v9 = [WeakRetained deletions];
    [v9 removeAllObjects];

    if ([WeakRetained moreComing])
    {
      if (!v3 || [CKKSReachabilityTracker isNetworkFailureError:v3])
      {
        v10 = sub_100019104(@"ckksfetch", 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v129 = v3;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Must issue another fetch (with potential error %@)", buf, 0xCu);
        }

        [WeakRetained setMoreComing:0];
        [*(a1 + 32) sendMetricWithResult:0 error:v3];
        [WeakRetained performFetch];
        goto LABEL_61;
      }
    }

    else if (!v3)
    {
      v11 = &off_1003648A0;
      goto LABEL_13;
    }

    [WeakRetained setError:v3];
    v11 = &off_100364888;
LABEL_13:
    v90 = v11;
    v88 = a1;
    v12 = sub_100019104(@"ckksfetcher", 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v129 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Record zone changes fetch complete: error=%@", buf, 0xCu);
    }

    +[CKKSPowerCollection CKKSPowerEvent:count:](CKKSPowerCollection, "CKKSPowerEvent:count:", @"fetchAllChanges", [WeakRetained fetchedItems]);
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v13 = [WeakRetained modifications];
    v14 = [v13 countByEnumeratingWithState:&v117 objects:v127 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v118;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v118 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v117 + 1) + 8 * i);
          v19 = [v18 zoneID];
          v20 = [v5 objectForKeyedSubscript:v19];

          if (v20)
          {
            v21 = [v20 unsignedLongValue] + 1;
          }

          else
          {
            v21 = 1;
          }

          v22 = [NSNumber numberWithUnsignedLong:v21];
          v23 = [v18 zoneID];
          [v5 setObject:v22 forKeyedSubscript:v23];
        }

        v15 = [v13 countByEnumeratingWithState:&v117 objects:v127 count:16];
      }

      while (v15);
    }

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v24 = [WeakRetained deletions];
    v25 = [v24 countByEnumeratingWithState:&v113 objects:v126 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v114;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v114 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v113 + 1) + 8 * j);
          v30 = [v29 zoneID];
          v31 = [v5 objectForKeyedSubscript:v30];

          if (v31)
          {
            v32 = [v31 unsignedLongValue] + 1;
          }

          else
          {
            v32 = 1;
          }

          v33 = [NSNumber numberWithUnsignedLong:v32];
          v34 = [v29 zoneID];
          [v5 setObject:v33 forKeyedSubscript:v34];
        }

        v26 = [v24 countByEnumeratingWithState:&v113 objects:v126 count:16];
      }

      while (v26);
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = [WeakRetained apnsPushes];
    v35 = [obj countByEnumeratingWithState:&v109 objects:v125 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v110;
      v94 = v5;
      v95 = v3;
      v89 = *v110;
      do
      {
        v38 = 0;
        v91 = v36;
        do
        {
          if (*v110 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v109 + 1) + 8 * v38);
          if ([v39 ckksPushTracingEnabled])
          {
            v40 = sub_100019104(@"ckksfetch", 0);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v129 = v39;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Submitting post-fetch CKEventMetric due to notification %@", buf, 0xCu);
            }

            v41 = [[CKEventMetric alloc] initWithEventName:@"APNSPushMetrics"];
            [v41 setIsPushTriggerFired:1];
            v42 = [v39 ckksPushTracingUUID];
            [v41 setObject:v42 forKeyedSubscript:@"push_token_uuid"];

            v43 = [v39 ckksPushReceivedDate];
            [v41 setObject:v43 forKeyedSubscript:@"push_received_date"];

            [v41 setObject:@"CKKS Push" forKeyedSubscript:@"push_event_name"];
            [v41 setObject:v90 forKeyedSubscript:@"fetch_error"];
            v44 = [v3 domain];
            [v41 setObject:v44 forKeyedSubscript:@"fetch_error_domain"];

            v45 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v3 code]);
            [v41 setObject:v45 forKeyedSubscript:@"fetch_error_code"];

            v46 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [WeakRetained totalModifications]);
            [v41 setObject:v46 forKeyedSubscript:@"total_modifications"];

            v47 = WeakRetained;
            v48 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [WeakRetained totalDeletions]);
            [v41 setObject:v48 forKeyedSubscript:@"total_deletions"];

            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v49 = v94;
            v50 = [v49 countByEnumeratingWithState:&v105 objects:v124 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v106;
              do
              {
                for (k = 0; k != v51; k = k + 1)
                {
                  if (*v106 != v52)
                  {
                    objc_enumerationMutation(v49);
                  }

                  v54 = *(*(&v105 + 1) + 8 * k);
                  v55 = [v49 objectForKeyedSubscript:v54];
                  v56 = [v54 zoneName];
                  [v41 setObject:v55 forKeyedSubscript:v56];
                }

                v51 = [v49 countByEnumeratingWithState:&v105 objects:v124 count:16];
              }

              while (v51);
            }

            v57 = [[SecEventMetric alloc] initWithEventName:@"APNSPushMetrics"];
            v58 = [v39 ckksPushTracingUUID];
            [(SecEventMetric *)v57 setObject:v58 forKeyedSubscript:@"push_token_uuid"];

            v59 = [v39 ckksPushReceivedDate];
            [(SecEventMetric *)v57 setObject:v59 forKeyedSubscript:@"push_received_date"];

            [(SecEventMetric *)v57 setObject:@"CKKS Push-webtunnel" forKeyedSubscript:@"push_event_name"];
            [(SecEventMetric *)v57 setObject:v95 forKeyedSubscript:@"fetch_error"];
            v60 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v47 totalModifications]);
            [(SecEventMetric *)v57 setObject:v60 forKeyedSubscript:@"total_modifications"];

            v61 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v47 totalDeletions]);
            [(SecEventMetric *)v57 setObject:v61 forKeyedSubscript:@"total_deletions"];

            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v62 = v49;
            v63 = [v62 countByEnumeratingWithState:&v101 objects:v123 count:16];
            if (v63)
            {
              v64 = v63;
              v65 = *v102;
              do
              {
                for (m = 0; m != v64; m = m + 1)
                {
                  if (*v102 != v65)
                  {
                    objc_enumerationMutation(v62);
                  }

                  v67 = *(*(&v101 + 1) + 8 * m);
                  v68 = [v62 objectForKeyedSubscript:v67];
                  v69 = [v67 zoneName];
                  [(SecEventMetric *)v57 setObject:v68 forKeyedSubscript:v69];
                }

                v64 = [v62 countByEnumeratingWithState:&v101 objects:v123 count:16];
              }

              while (v64);
            }

            WeakRetained = v47;
            v70 = [v47 container];
            v71 = [v47 fetchRecordZoneChangesOperation];
            v96[0] = _NSConcreteStackBlock;
            v96[1] = 3221225472;
            v96[2] = sub_10011D1FC;
            v96[3] = &unk_100344B18;
            v97 = v41;
            v98 = v71;
            v99 = v70;
            v100 = v57;
            v72 = v57;
            v73 = v70;
            v74 = v71;
            v75 = v41;
            v76 = [CKKSResultOperation named:@"submit-metric" withBlock:v96];
            v77 = [v47 fetchCompletedOperation];
            [v76 addSuccessDependency:v77];

            v78 = [v47 operationQueue];
            [v78 addOperation:v76];

            v5 = v94;
            v3 = v95;
            v36 = v91;
            v37 = v89;
          }

          v38 = v38 + 1;
        }

        while (v38 != v36);
        v36 = [obj countByEnumeratingWithState:&v109 objects:v125 count:16];
      }

      while (v36);
    }

    v79 = [WeakRetained fetchCompletedOperation];
    [WeakRetained runBeforeGroupFinished:v79];

    [WeakRetained setClientMap:&__NSDictionary0__struct];
    obja = *(v88 + 32);
    v121[0] = kSecurityRTCFieldNumModificationsFetched;
    v80 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [WeakRetained totalModifications]);
    v122[0] = v80;
    v121[1] = kSecurityRTCFieldNumDeletionsFetched;
    v81 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [WeakRetained totalDeletions]);
    v122[1] = v81;
    v121[2] = kSecurityRTCFieldTotalCKRecords;
    v82 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [WeakRetained totalDeletions] + objc_msgSend(WeakRetained, "totalModifications"));
    v122[2] = v82;
    v121[3] = kSecurityRTCFieldNumZonesReverseSyncing;
    v83 = [WeakRetained reverseSyncingZones];
    v84 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v83 count]);
    v122[3] = v84;
    v85 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:4];
    [obja addMetrics:v85];

    v86 = *(v88 + 32);
    v87 = [WeakRetained error];
    [v86 sendMetricWithResult:1 error:v87];

    goto LABEL_61;
  }

  v5 = sub_100019104(@"ckksfetch", 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "received callback for released object", buf, 2u);
  }

LABEL_61:
}

void sub_10011D1FC(uint64_t a1)
{
  if (([*(a1 + 32) associateWithCompletedOperation:*(a1 + 40)] & 1) == 0)
  {
    v2 = sub_100019104(@"ckksfetch", 0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Couldn't associate metric with operation: %@ %@", &v8, 0x16u);
    }
  }

  [*(a1 + 48) submitEventMetric:*(a1 + 32)];
  v5 = +[SecMetrics managerObject];
  [v5 submitEvent:*(a1 + 56)];

  v6 = sub_100019104(@"ckksfetch", 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Metric submitted: %@", &v8, 0xCu);
  }
}

id sub_10011F1A0(uint64_t a1)
{
  result = [*(a1 + 32) completed];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 onqueueStartFinishOperation:v4];
  }

  return result;
}

void sub_10011FAE8(uint64_t a1)
{
  v2 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Successfully reset %@", &v4, 0xCu);
  }
}

void sub_10011FB98(id a1, NSError *a2)
{
  v2 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CKKS view reset complete", v3, 2u);
  }
}

void sub_100120320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012036C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained error];
    v5 = v4;
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finishing resetting CKKS missing TLKs operation with %@", &v10, 0xCu);
  }

  v7 = [WeakRetained error];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [WeakRetained error];
    [v8 sendMetricWithResult:0 error:v9];
  }

  else
  {
    [v8 sendMetricWithResult:1 error:0];
  }
}

void sub_1001204A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) viewKeySets];
  v3 = [*(a1 + 32) incompleteKeySets];
  [WeakRetained proceedWithKeys:v2 incompleteKeySets:v3];
}

void sub_10012080C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100120830(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[CKKSAnalytics logger];
  [v5 logResultForEvent:@"OctagonEventRemoveCustodianRecoveryKeyTPH" hardFailure:1 result:v3];

  if (v3)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon: Error removing custodian recovery key: %@", &v9, 0xCu);
    }

    [WeakRetained setError:v3];
  }

  else
  {
    v7 = sub_100006274("octagon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "successfully removed custodian recovery key", &v9, 2u);
    }
  }

  v8 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v8];
}

void sub_100120C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100120CC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = +[CKKSAnalytics logger];
  [v8 logResultForEvent:@"OctagonEventCheckCustodianRecoveryKeyTPH" hardFailure:1 result:v6];

  if (v6)
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "octagon: Error finding custodian recovery key: %@", &v13, 0xCu);
    }

    [WeakRetained setError:v6];
    v10 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v10];
  }

  else
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "successfully found custodian recovery key", &v13, 2u);
    }

    v12 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v12];

    [WeakRetained setCrk:v5];
  }
}

void sub_100121534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&a35);
  objc_destroyWeak((v36 - 136));
  _Unwind_Resume(a1);
}

void sub_100121578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained error];

  if (v2)
  {
    v3 = [WeakRetained retryFlag];

    if (!v3)
    {
      v8 = sub_100006274("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon: Received an error updating TPH, but no retry flag present.", &v21, 2u);
      }

      goto LABEL_16;
    }

    v4 = [WeakRetained deps];
    v5 = [v4 lockStateTracker];
    v6 = [WeakRetained error];
    v7 = [v5 isLockedError:v6];

    v8 = sub_100006274("octagon");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [WeakRetained error];
        v21 = 138412290;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating trust state failed because locked, retry once unlocked: %@", &v21, 0xCu);
      }

      [WeakRetained setNextState:@"WaitForUnlock"];
      v11 = [OctagonPendingFlag alloc];
      v12 = [WeakRetained retryFlag];
      v8 = [(OctagonPendingFlag *)v11 initWithFlag:v12 conditions:1];

      if (!v8)
      {
        v13 = [WeakRetained error];
        [v13 retryInterval];
        v15 = v14;

        v16 = [OctagonPendingFlag alloc];
        v17 = [WeakRetained retryFlag];
        v8 = [(OctagonPendingFlag *)v16 initWithFlag:v17 delayInSeconds:v15];
      }

      v18 = sub_100006274("octagon");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating trust state not fatal: requesting retry: %@", &v21, 0xCu);
      }

      v19 = [WeakRetained deps];
      v20 = [v19 flagHandler];
      [v20 handlePendingFlag:v8];
    }

    else
    {
      if (!v9)
      {
LABEL_16:

        goto LABEL_17;
      }

      v19 = [WeakRetained error];
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error is currently unknown, aborting: %@", &v21, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:
}

void sub_100121890(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v7 && !v9)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v65 = v7;
      v66 = 2112;
      v67 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "update complete: %@, %@", buf, 0x16u);
    }

    v12 = [WeakRetained deps];
    v13 = [v12 stateHolder];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100122250;
    v62[3] = &unk_100344BD8;
    v14 = v8;
    v63 = v14;
    v61 = 0;
    v15 = [v13 persistAccountChanges:v62 error:&v61];
    v16 = v61;

    if (!v15 || v16)
    {
      v20 = sub_100006274("SecError");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "octagon: Unable to save new syncing state: %@", buf, 0xCu);
      }
    }

    else
    {
      v17 = [WeakRetained deps];
      v18 = [v17 ckks];
      v19 = [v18 setCurrentSyncingPolicy:v14 policyIsFresh:1];

      if (!v19)
      {
        goto LABEL_20;
      }

      v20 = [WeakRetained deps];
      v21 = [v20 flagHandler];
      [v21 handleFlag:@"ckks_views_changed"];
    }

LABEL_20:
    if ([v7 identityIsPreapproved])
    {
      v27 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Self peer is now preapproved!", buf, 2u);
      }

      v28 = [WeakRetained deps];
      v29 = [v28 flagHandler];
      [v29 handleFlag:@"preapproved"];
    }

    if ([v7 memberChanges])
    {
      v30 = sub_100006274("octagon");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Member list changed", buf, 2u);
      }

      v31 = [WeakRetained deps];
      v32 = [v31 octagonAdapter];
      [v32 sendTrustedPeerSetChangedUpdate];
    }

    if ([v7 unknownMachineIDsPresent])
    {
      v33 = sub_100006274("octagon-authkit");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Unknown machine IDs are present; requesting fetch", buf, 2u);
      }

      v34 = [WeakRetained deps];
      v35 = [v34 flagHandler];
      [v35 handleFlag:@"attempt_machine_id_list"];
    }

    if (([v7 peerStatus] & 4) != 0)
    {
      v37 = sub_100006274("octagon");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v7 peerID];
        *buf = 138412290;
        v65 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Self peer (%@) is excluded; moving to untrusted", buf, 0xCu);
      }

      v39 = [WeakRetained deps];
      v40 = [v39 stateHolder];
      v60 = 0;
      v41 = [v40 loadOrCreateAccountMetadata:&v60];
      v42 = v60;

      if (v42 || !v41)
      {
        v43 = sub_100006274("SecError");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v42;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "octagon: failed to get account metadata: %@", buf, 0xCu);
        }
      }

      else if ([v41 trustState] == 2 && objc_msgSend(WeakRetained, "isOurMachineIDAllowed"))
      {
        [WeakRetained sendPeerDistrustWhileStillTDLAllowedMetric];
      }

      [WeakRetained setNextState:@"BecomeUntrusted"];

      goto LABEL_69;
    }

    if (([v7 peerStatus] & 0x20) == 0)
    {
      v36 = [WeakRetained intendedState];
LABEL_59:
      v52 = v36;
      [WeakRetained setNextState:v36];

LABEL_69:
      v59 = [WeakRetained finishedOp];
      [WeakRetained runBeforeGroupFinished:v59];

      goto LABEL_70;
    }

    if ([v7 identityIsPreapproved])
    {
      v44 = sub_100006274("octagon");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v7 peerID];
        *buf = 138412290;
        v65 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Self peer (%@) is excluded but is preapproved, moving to sosuprade", buf, 0xCu);
      }

      v46 = @"AttemptSOSUpgrade";
    }

    else
    {
      v48 = [WeakRetained determineCDPState];

      if (v48)
      {
        v49 = sub_100006274("octagon");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = [v7 peerID];
          v51 = [WeakRetained determineCDPState];
          *buf = 138412546;
          v65 = v50;
          v66 = 2112;
          v67 = v51;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Self peer (%@) is unknown, but still figuring out cdp state; moving to '%@''", buf, 0x16u);
        }

        v36 = [WeakRetained determineCDPState];
        goto LABEL_59;
      }

      if (*(a1 + 40) == 1)
      {
        v53 = [WeakRetained peerUnknownState];

        if (v53)
        {
          v54 = sub_100006274("octagon");
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = [v7 peerID];
            v56 = [WeakRetained peerUnknownState];
            *buf = 138412546;
            v65 = v55;
            v66 = 2112;
            v67 = v56;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Self peer (%@) is unknown and has attempted a join; moving to '%@''", buf, 0x16u);
          }

          [WeakRetained sendResetRecipientMetric];
          v36 = [WeakRetained peerUnknownState];
          goto LABEL_59;
        }
      }

      v57 = sub_100006274("octagon");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [v7 peerID];
        *buf = 138412546;
        v65 = v58;
        v66 = 2112;
        v67 = @"BecomeUntrusted";
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Self peer (%@) is unknown and never attempted a join; moving to '%@''", buf, 0x16u);
      }

      v46 = @"BecomeUntrusted";
    }

    [WeakRetained setNextState:v46];
    goto LABEL_69;
  }

  v22 = sub_100006274("SecError");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v9;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "octagon: update errored: %@", buf, 0xCu);
  }

  [WeakRetained setError:v9];
  if ([v9 isCuttlefishError:1037])
  {
    v23 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Cuttlefish reports we no longer exist.", buf, 2u);
    }

    v24 = [WeakRetained determineCDPState];

    if (v24)
    {
      v25 = [WeakRetained determineCDPState];
    }

    else
    {
      if (*(a1 + 40) != 1 || ([WeakRetained peerUnknownState], v47 = objc_claimAutoreleasedReturnValue(), v47, !v47))
      {
        [WeakRetained setNextState:@"BecomeUntrusted"];
        goto LABEL_54;
      }

      [WeakRetained sendResetRecipientMetric];
      v25 = [WeakRetained peerUnknownState];
    }

    v26 = v25;
    [WeakRetained setNextState:v25];
  }

LABEL_54:
  v16 = [WeakRetained finishedOp];
  [WeakRetained runBeforeGroupFinished:v16];
LABEL_70:
}

id sub_100122250(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTPSyncingPolicy:*(a1 + 32)];

  return v3;
}

void sub_10012240C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100122424(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a2;
  if (a10)
  {
    v12 = sub_100006274("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "octagon: failed to fetch current trusted device list", buf, 2u);
    }
  }

  else
  {
    v13 = [*(a1 + 32) deviceInfo];
    v14 = [v13 machineID];
    v15 = [v11 containsObject:v14];

    v16 = sub_100006274("octagon");
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Our machineID is still allowed", v19, 2u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      if (v17)
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Our machineID is NOT allowed", v18, 2u);
      }
    }
  }
}

void sub_100122E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100122E8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained error];

  if (v2)
  {
    v3 = [WeakRetained error];
    v4 = [v3 isRetryable];

    if (v4)
    {
      v5 = [WeakRetained error];
      [v5 retryInterval];
      v7 = v6;

      v8 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [WeakRetained error];
        v13 = 134218242;
        v14 = v7;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SOS update preapproval error is not fatal: requesting retry in %0.2fs: %@", &v13, 0x16u);
      }

      v10 = [WeakRetained deps];
      v11 = [v10 flagHandler];
      v12 = [[OctagonPendingFlag alloc] initWithFlag:@"attempt_sos_update_preapprovals" delayInSeconds:v7];
      [v11 handlePendingFlag:v12];
    }

    else
    {
      v10 = sub_100006274("octagon-sos");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        goto LABEL_10;
      }

      v11 = [WeakRetained error];
      v13 = 138412290;
      v14 = *&v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SOS update preapproval error is: %@, not retrying", &v13, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
}

void sub_100123080(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon-sos: unable to update preapproved keys: %@", &v15, 0xCu);
    }

    [WeakRetained setError:v6];
  }

  else
  {
    v9 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated SOS preapproved keys", &v15, 2u);
    }

    if ([v5 memberChanges])
    {
      v10 = sub_100006274("octagon");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Member list changed", &v15, 2u);
      }

      v11 = [WeakRetained deps];
      v12 = [v11 octagonAdapter];
      [v12 sendTrustedPeerSetChangedUpdate];
    }

    v13 = [WeakRetained intendedState];
    [WeakRetained setNextState:v13];
  }

  v14 = [WeakRetained finishedOp];
  [WeakRetained runBeforeGroupFinished:v14];
}

uint64_t sub_100123388(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001233A0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("ckks-logger", v3);
  v2 = qword_10039DEF0;
  qword_10039DEF0 = v1;
}

void sub_100123720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100123744(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = +[CKKSAnalytics logger];
  [v17 logResultForEvent:@"OctagonEventVoucherWithRecoveryKey" hardFailure:1 result:v15];

  if (v15)
  {
    v18 = sub_100006274("SecError");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon: Error preparing voucher using recovery key: %@", buf, 0xCu);
    }

    [WeakRetained setError:v15];
LABEL_16:
    v23 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v23];
    goto LABEL_17;
  }

  v19 = +[CKKSAnalytics logger];
  [v19 recordRecoveredTLKMetrics:*(a1 + 32) tlkRecoveryResults:v14 uniqueTLKsRecoveredEvent:@"OARKUniqueTLKsRecoveredCount" totalSharesRecoveredEvent:@"OARKTotalTLKSharesRecoveredCount" totalRecoverableTLKSharesEvent:@"OARKTotalTLKSharesCount" totalRecoverableTLKsEvent:@"OARKUniqueTLKsWithSharesCount" totalViewsWithSharesEvent:@"OARKTLKUniqueViewCount"];

  [WeakRetained setVoucher:v11];
  [WeakRetained setVoucherSig:v12];
  if (![WeakRetained saveVoucher])
  {
LABEL_13:
    v26 = sub_100006274("octagon");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Successfully vouched with a recovery key: %@, %@", buf, 0x16u);
    }

    v27 = [WeakRetained intendedState];
    [WeakRetained setNextState:v27];

    goto LABEL_16;
  }

  v20 = sub_100006274("octagon");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Saving voucher for later use...", buf, 2u);
  }

  v21 = [WeakRetained deps];
  v22 = [v21 stateHolder];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100123B5C;
  v29[3] = &unk_100337F70;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v28 = 0;
  [v22 persistAccountChanges:v29 error:&v28];
  v23 = v28;

  if (!v23)
  {

    goto LABEL_13;
  }

  v24 = sub_100006274("octagon");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "unable to save voucher: %@", buf, 0xCu);
  }

  v25 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v25];

LABEL_17:
}

id sub_100123B5C(void *a1, void *a2)
{
  v3 = a2;
  [v3 setVoucher:a1[4]];
  [v3 setVoucherSignature:a1[5]];
  [v3 setTLKSharesPairedWithVoucher:a1[6]];

  return v3;
}

void sub_100123DA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100123DCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "octagon: Error fetching TLKShares to recover: %@", buf, 0xCu);
    }

    [v8 setError:v6];
    v10 = [v8 finishOp];
    [v8 runBeforeGroupFinished:v10];
  }

  else
  {
    v25 = WeakRetained;
    v10 = +[NSMutableArray array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v5;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [v16 recordType];
          v18 = [v17 isEqual:@"tlkshare"];

          if (v18)
          {
            v19 = [CKKSTLKShareRecord alloc];
            v20 = [v25 deps];
            v21 = [v20 contextID];
            v22 = [(CKKSCKRecordHolder *)v19 initWithCKRecord:v16 contextID:v21];

            v23 = [(CKKSTLKShareRecord *)v22 share];
            [v10 addObject:v23];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v8 = v25;
    [v25 proceedWithFilteredTLKShares:v10];
    v6 = 0;
    v5 = v24;
  }
}

void sub_100124350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012437C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = +[CKKSAnalytics logger];
  [v11 logResultForEvent:@"OctagonEventPreflightVouchWithRecoveryKey" hardFailure:1 result:v9];

  if (!v7 || v9)
  {
    v15 = sub_100006274("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "octagon: Error preflighting voucher using recovery key: %@", &v17, 0xCu);
    }

    [WeakRetained setError:v9];
    v16 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v16];
  }

  else
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Recovery key ID %@ looks good to go", &v17, 0xCu);
    }

    v13 = [WeakRetained deps];
    v14 = [v13 ckks];
    [v14 setCurrentSyncingPolicy:v8];

    [WeakRetained proceedWithRecoveryKeyID:v7];
  }
}

void sub_1001249AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001249D0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = +[CKKSAnalytics logger];
  [v17 logResultForEvent:@"OctagonEventVoucherWithReroll" hardFailure:1 result:v15];

  if (v15)
  {
    v18 = sub_100006274("SecError");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon: Error preparing voucher using reroll: %@", buf, 0xCu);
    }

    [WeakRetained setError:v15];
LABEL_16:
    v23 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v23];
    goto LABEL_17;
  }

  v19 = +[CKKSAnalytics logger];
  [v19 recordRecoveredTLKMetrics:*(a1 + 32) tlkRecoveryResults:v14 uniqueTLKsRecoveredEvent:@"OARKUniqueTLKsRecoveredCount" totalSharesRecoveredEvent:@"OARKTotalTLKSharesRecoveredCount" totalRecoverableTLKSharesEvent:@"OARKTotalTLKSharesCount" totalRecoverableTLKsEvent:@"OARKUniqueTLKsWithSharesCount" totalViewsWithSharesEvent:@"OARKTLKUniqueViewCount"];

  [WeakRetained setVoucher:v11];
  [WeakRetained setVoucherSig:v12];
  if (![WeakRetained saveVoucher])
  {
LABEL_13:
    v26 = sub_100006274("octagon");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v11;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Successfully vouched with a reroll: %@, %@", buf, 0x16u);
    }

    v27 = [WeakRetained deps];
    v28 = [v27 escrowChecker];
    [v28 checkEscrowCheck:1 reply:&stru_100337870];

    v29 = [WeakRetained intendedState];
    [WeakRetained setNextState:v29];

    goto LABEL_16;
  }

  v20 = sub_100006274("octagon");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Saving voucher for later use...", buf, 2u);
  }

  v21 = [WeakRetained deps];
  v22 = [v21 stateHolder];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100124E1C;
  v31[3] = &unk_100337F70;
  v32 = v11;
  v33 = v12;
  v34 = v13;
  v30 = 0;
  [v22 persistAccountChanges:v31 error:&v30];
  v23 = v30;

  if (!v23)
  {

    goto LABEL_13;
  }

  v24 = sub_100006274("octagon");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "unable to save voucher: %@", buf, 0xCu);
  }

  v25 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v25];

LABEL_17:
}

id sub_100124E1C(void *a1, void *a2)
{
  v3 = a2;
  [v3 setVoucher:a1[4]];
  [v3 setVoucherSignature:a1[5]];
  [v3 setTLKSharesPairedWithVoucher:a1[6]];

  return v3;
}

void sub_100125260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012528C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Error fetching TLKShares to recover: %@", buf, 0xCu);
    }
  }

  v8 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 recordType];
        v16 = [v15 isEqual:@"tlkshare"];

        if (v16)
        {
          v17 = [CKKSTLKShareRecord alloc];
          v18 = [WeakRetained deps];
          v19 = [v18 contextID];
          v20 = [(CKKSCKRecordHolder *)v17 initWithCKRecord:v14 contextID:v19];

          v21 = [(CKKSTLKShareRecord *)v20 share];
          [v8 addObject:v21];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  [WeakRetained proceedWithFilteredTLKShares:v8];
}

void sub_1001262F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon: failed to reset cdp account contents: %@", &v5, 0xCu);
    }
  }

  else
  {
    v4 = sub_100006274("octagon");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "successfully reset cdp account contents", &v5, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100126678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001266A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001266BC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = sub_100006274("octagon-metrics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to fetch trust status: %@", &v10, 0xCu);
    }

    v9 = 32;
  }

  else
  {
    v9 = 40;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v9) + 8) + 40), a3);
}

void sub_100126938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10012695C(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = sub_100006274("octagon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to get honorIDMSListChanges: %@", &v8, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else if ([a2 isEqualToString:@"YES"])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_100126CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100126CCC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100006274("octagon-metrics");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to fetch allowed machineIDs: %@", &v12, 0xCu);
    }

    v7 = *(a1[5] + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    if ([a2 containsObject:a1[4]])
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    v9 = sub_100006274("octagon-metrics");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v11 = *(*(a1[6] + 8) + 24);
      v12 = 138412546;
      v13 = v10;
      v14 = 1024;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MID (%@) on list: %{BOOL}d", &v12, 0x12u);
    }
  }
}

void sub_1001275B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100006274("octagon-escrow-check");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "results=%@ error=%@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100127D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100127D54(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(WeakRetained + 57) = 0;
  WeakRetained[59] = 0;
  *(WeakRetained + 61) = 0;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(WeakRetained + 8);
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "results=%@", &v9, 0xCu);
    }

    v6 = *(WeakRetained + 8);
    (*(*(a1 + 32) + 16))();
    v7 = *(WeakRetained + 8);
    *(WeakRetained + 8) = 0;
  }
}

OTAccountMetadataClassC *__cdecl sub_100128820(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setLastEscrowRepairTriggered:0];
  [(OTAccountMetadataClassC *)v2 setLastEscrowRepairAttempted:0];

  return v2;
}

void sub_100129020(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon-tlk-recoverability: failed assessing tlk recoverability using the octagon identity, error: %@", buf, 0xCu);
    }

LABEL_4:

    (*(*(a1 + 32) + 16))();
    goto LABEL_13;
  }

  if (v5 && [v5 count])
  {
    v7 = sub_100006274("octagon-tlk-recoverability");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "found views using octagon peer matching record! views: %@", buf, 0xCu);
    }

    goto LABEL_4;
  }

  v8 = sub_100006274("SecError");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon-tlk-recoverability: failed to find views", buf, 2u);
  }

  v9 = *(a1 + 32);
  v12 = NSLocalizedDescriptionKey;
  v13 = @"Record cannot recover any views";
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v11 = [NSError errorWithDomain:@"com.apple.security.octagon" code:58 userInfo:v10];
  (*(v9 + 16))(v9, 0, v11);

LABEL_13:
}

void sub_100129334(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon-tlk-recoverability: fetching bottles failed: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = [[OTEscrowRecord alloc] initWithData:*(a1 + 32)];
    v12 = [v11 escrowInformationMetadata];
    v13 = [v12 bottleId];

    if ([v7 containsObject:v13] & 1) != 0 || (objc_msgSend(v8, "containsObject:", v13))
    {
      v14 = *(a1 + 40);
      v15 = [v11 escrowInformationMetadata];
      v16 = [v15 bottleId];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10012961C;
      v22[3] = &unk_100337DB0;
      v23 = v11;
      v17 = *(a1 + 48);
      v24 = *(a1 + 40);
      v25 = v17;
      [v14 octagonPeerIDGivenBottleID:v16 reply:v22];

      v18 = v23;
    }

    else
    {
      v19 = sub_100006274("octagon-tlk-recoverability");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "record's bottleID is not valid in cuttlefish", buf, 2u);
      }

      v20 = *(a1 + 48);
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Record's bottleID is not valid in cuttlefish";
      v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v21 = [NSError errorWithDomain:@"com.apple.security.octagon" code:58 userInfo:v18];
      (*(v20 + 16))(v20, 0, v21);
    }
  }
}

void sub_10012961C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) ckks];
    v13 = 0;
    v8 = [v7 viewsForPeerID:v5 error:&v13];
    v9 = v13;

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = sub_100006274("octagon-tlk-recoverability");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Octagon peerID not trusted for record %@: %@", buf, 0x16u);
    }

    v12 = *(a1 + 48);
    v8 = [NSError errorWithDomain:@"com.apple.security.octagon" code:58 description:@"Octagon peerID not trusted for record" underlying:v6];
    (*(v12 + 16))(v12, 0, v8);
  }
}

void sub_10012994C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to find bottleID: %@", &v7, 0xCu);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_100129D40(id *a1)
{
  v2 = [a1[4] error];

  if (!v2)
  {
    v5 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Done waiting for CKKS Priority view download", buf, 2u);
    }

    goto LABEL_16;
  }

  v3 = sub_100006274("SecError");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[4] error];
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "octagon-ckks: Done waiting for CKKS Priority view download with error: %@", buf, 0xCu);
  }

  v5 = [a1[4] error];
  v6 = [v5 domain];
  if (([v6 isEqualToString:@"CKKSErrorDomain"] & 1) == 0)
  {

LABEL_16:
    goto LABEL_17;
  }

  v7 = [a1[4] error];
  v8 = [v7 code];

  if (v8 != 52)
  {
LABEL_17:
    v19 = a1[6];
    v12 = [a1[4] error];
    v19[2](v19, v12);
    goto LABEL_18;
  }

  v9 = sub_100006274("SecError");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "octagon-ckks: Retrying wait for CKKS Priority view download", buf, 2u);
  }

  v10 = a1[5];
  v27 = 0;
  v11 = [v10 recheckCKKSTrustStatus:&v27];
  v12 = v27;
  if ((v11 & 1) == 0)
  {
    v13 = sub_100006274("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "octagon-ckks: Unable to retry CKKS Priority view download: %@", buf, 0xCu);
    }
  }

  v14 = [a1[5] ckks];
  v15 = [v14 rpcWaitForPriorityViewProcessing];

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10012A0BC;
  v23 = &unk_100343D18;
  v24 = v15;
  v25 = a1[4];
  v26 = a1[6];
  v16 = v15;
  v17 = [CKKSResultOperation named:@"wait-for-sync-reply" withBlock:&v20];
  [v17 addDependency:{v16, v20, v21, v22, v23}];
  v18 = [a1[5] operationQueue];
  [v18 addOperation:v17];

LABEL_18:
}

void sub_10012A0BC(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = sub_100006274("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) error];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "octagon-ckks: Done waiting for CKKS Priority view download retry with error: %@", &v7, 0xCu);
    }
  }

  else
  {
    v3 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Done waiting for CKKS Priority view download retry", &v7, 2u);
    }
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) error];
  (*(v5 + 16))(v5, v6);
}

void sub_10012A4B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon-settings: Failed fetching account settings: %@", &v8, 0xCu);
    }
  }

  else
  {
    v7 = sub_100006274("octagon-settings");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Succeeded fetching account settings: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10012A8A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100006274("SecError");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon-settings: Failed fetching account settings: %@", &v9, 0xCu);
    }
  }

  else if (v8)
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon-settings: Succeeded fetching account settings: %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10012ACAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012ACD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (v8)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 containerName];
      v13 = [v10 contextID];
      *buf = 138412802;
      v49 = v12;
      v50 = 2112;
      v51 = v13;
      v52 = 2112;
      v53 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to fetch trusted peers for (%@,%@): %@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v40 = WeakRetained;
    v14 = objc_alloc_init(OTCurrentSecureElementIdentities);
    v15 = +[NSMutableArray array];
    [v14 setTrustedPeerSecureElementIdentities:v15];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = v7;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v44;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          v22 = [v21 secureElementIdentity];

          if (v22)
          {
            v23 = objc_alloc_init(OTSecureElementPeerIdentity);
            v24 = [v21 secureElementIdentity];
            v25 = [v24 peerIdentifier];
            [v23 setPeerIdentifier:v25];

            v26 = [v21 secureElementIdentity];
            v27 = [v26 peerData];
            [v23 setPeerData:v27];

            v28 = [v21 peerID];
            v29 = [v42 peerID];
            v30 = [v28 isEqualToString:v29];

            if (v30)
            {
              [v14 setLocalPeerIdentity:v23];
            }

            else
            {
              v31 = [v14 trustedPeerSecureElementIdentities];
              [v31 addObject:v23];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v18);
    }

    v8 = 0;
    v10 = v40;
    if (*(a1 + 32))
    {
      v32 = objc_alloc_init(OTSecureElementPeerIdentity);
      v33 = [*(a1 + 32) peerIdentifier];
      [v32 setPeerIdentifier:v33];

      v34 = [*(a1 + 32) peerData];
      [v32 setPeerData:v34];

      v35 = [v14 localPeerIdentity];
      v36 = [v35 isEqual:v32];

      if ((v36 & 1) == 0)
      {
        v37 = sub_100006274("octagon");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v40 containerName];
          v39 = [v40 contextID];
          *buf = 138412802;
          v49 = v38;
          v50 = 2112;
          v51 = v39;
          v52 = 2112;
          v53 = v32;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Returning pending identity for (%@,%@): %@", buf, 0x20u);
        }

        [v14 setPendingLocalPeerIdentity:v32];
      }
    }

    (*(*(a1 + 40) + 16))();

    v7 = v41;
  }
}

OTAccountMetadataClassC *__cdecl sub_10012B2B4(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setSecureElementIdentity:0];

  return v2;
}

id sub_10012B4E4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setOctagonSecureElementIdentity:*(a1 + 32)];

  return v3;
}

void sub_10012BD98(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"disabled";
      if (*(a1 + 48))
      {
        v5 = @"enabled";
      }

      v19 = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to set sync policy to '%@': %@", &v19, 0x16u);
    }

    v6 = *(*(a1 + 40) + 16);
LABEL_13:
    v6();
    goto LABEL_14;
  }

  v7 = [*(a1 + 32) ckks];
  v8 = [v7 operationDependencies];
  v9 = [v8 syncingPolicy];

  if (v9)
  {
    v10 = [*(a1 + 32) ckks];
    v11 = [v10 operationDependencies];
    v12 = [v11 syncingPolicy];
    v13 = [v12 syncUserControllableViewsAsBoolean];

    v14 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"disabled";
      if (v13)
      {
        v15 = @"enabled";
      }

      v19 = 138412290;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "User-controllable sync status is set as '%@'", &v19, 0xCu);
    }

    v6 = *(*(a1 + 40) + 16);
    goto LABEL_13;
  }

  v16 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Policy missing even after a refetch?", &v19, 2u);
  }

  v17 = *(a1 + 40);
  v18 = [NSError errorWithDomain:@"com.apple.security.octagon" code:49 description:@"Sync policy is missing even after refetching"];
  (*(v17 + 16))(v17, 0, v18);

LABEL_14:
}

void sub_10012C450(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to fetch policy: %@", buf, 0xCu);
    }

    v5 = *(*(a1 + 40) + 16);
LABEL_18:
    v5();
    goto LABEL_19;
  }

  v6 = [*(a1 + 32) ckks];
  v7 = [v6 syncingPolicy];

  if (v7)
  {
    v8 = [*(a1 + 32) ckks];
    v9 = [v8 syncingPolicy];
    v10 = [v9 syncUserControllableViewsAsBoolean];

    v11 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        v12 = @"enabled";
      }

      else
      {
        v12 = @"disabled";
      }

      v13 = [*(a1 + 32) ckks];
      v14 = [v13 syncingPolicy];
      v15 = [v14 syncUserControllableViews];
      if (v15 >= 4)
      {
        v16 = [NSString stringWithFormat:@"(unknown: %i)", v15];
      }

      else
      {
        v16 = off_100337F20[v15];
      }

      *buf = 138412546;
      v21 = v12;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Returning user-controllable status as %@ (%@)", buf, 0x16u);
    }

    v5 = *(*(a1 + 40) + 16);
    goto LABEL_18;
  }

  v17 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Policy missing even after a refetch?", buf, 2u);
  }

  v18 = *(a1 + 40);
  v19 = [NSError errorWithDomain:@"com.apple.security.octagon" code:49 description:@"Sync policy is missing even after refetching"];
  (*(v18 + 16))(v18, 0, v19);

LABEL_19:
}

void sub_10012CA44(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = sub_100006274("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "octagon: error fetching escrow contents: %@", &v14, 0xCu);
    }
  }

  else
  {
    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "fetched escrow contents for bottle: %@", &v14, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10012CD58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon: failed to remove escrow cache: %@", &v5, 0xCu);
    }
  }

  else
  {
    v4 = sub_100006274("octagon");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "successfully removed escrow cache", &v5, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10012D020(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: error fetching all viable escrow records: %@", &v8, 0xCu);
    }
  }

  else
  {
    v7 = sub_100006274("octagon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fetched escrow records: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10012D364(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon: error fetching all viable bottles: %@", &v12, 0xCu);
    }
  }

  else
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fetched viable bottles: %@", &v12, 0xCu);
    }

    v10 = sub_100006274("octagon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "fetched partially viable bottles: %@", &v12, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10012DB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 144), 8);
  _Block_object_dispose((v34 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_10012DBB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 egoStatus];
  v8 = [v5 egoPeerID];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(*(a1 + 56) + 8) + 24) = [v5 isExcluded];
  v11 = [v5 viablePeerCountsByModelID];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  *(*(*(a1 + 72) + 8) + 24) = [v5 isLocked];
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), a3);
  v14 = sub_100006274("octagon");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v15)
    {
      v16 = TPPeerStatusToString();
      *buf = 138412290;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "trust status: %@", buf, 0xCu);
    }

    [*(a1 + 32) popTooManyPeersDialogWithEgoPeerStatus:v5 accountMeta:*(a1 + 40)];
    if ((v7 & 4) != 0)
    {
      goto LABEL_15;
    }

    if ((v7 & 0x5B) != 0)
    {
      v17 = 0;
      goto LABEL_16;
    }

    if ((v7 & 0x80) != 0)
    {
LABEL_15:
      v17 = 1;
    }

    else
    {
      if ((v7 & 0x20) == 0)
      {
        v18 = sub_100006274("octagon");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "TPPeerStatus is empty", buf, 2u);
        }
      }

      v17 = 3;
    }

LABEL_16:
    *(*(*(a1 + 88) + 8) + 24) = v17;
    v19 = *(*(*(a1 + 88) + 8) + 24);
    if (v19)
    {
      v20 = v19 == 1;
    }

    else
    {
      v20 = 2;
    }

    v21 = [*(a1 + 32) accountMetadataStore];
    v26 = 0;
    v22 = [v21 persistNewTrustState:v20 error:&v26];
    v14 = v26;

    if (!v22 || v14)
    {
      v23 = sub_100006274("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v14;
        v25 = "octagon: unable to persist clique trust state: %@";
        goto LABEL_25;
      }
    }

    else
    {
      v23 = sub_100006274("octagon");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = off_100337F08[v20];
        *buf = 138412290;
        v28 = v24;
        v25 = "updated account trust state: %@";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
      }
    }

    goto LABEL_27;
  }

  if (v15)
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "error fetching trust status: %@", buf, 0xCu);
  }

LABEL_27:
}

void sub_10012E2B8(uint64_t a1)
{
  v2 = sub_100006274("otrpc");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) error];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning an inheritance key call: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) ik];
  v6 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10012E5F8(uint64_t a1)
{
  v2 = sub_100006274("otrpc");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) error];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning an inheritance key call: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) ik];
  v6 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10012E864(uint64_t a1)
{
  v3 = sub_100006274("otrpc");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) crk];
    v1 = [*(a1 + 32) error];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Returning a check inheritance key call: %@, %@", &v9, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) crk];
  if (v6)
  {
    v1 = [*(a1 + 32) crk];
    v7 = [v1 kind] == 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) error];
  (*(v5 + 16))(v5, v7, v8);

  if (v6)
  {
  }
}

void sub_10012EB28(uint64_t a1)
{
  v2 = sub_100006274("otrpc");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) error];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning remove inheritance key call: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5);
}

void sub_10012ED7C(uint64_t a1)
{
  v2 = sub_100006274("otrpc");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) error];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning an inheritance key call: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5);
}

void sub_10012F120(uint64_t a1)
{
  v2 = sub_100006274("otrpc");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) error];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning an inheritance key call: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) ik];
  v6 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10012F38C(uint64_t a1)
{
  v3 = sub_100006274("otrpc");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) crk];
    v1 = [*(a1 + 32) error];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Returning a check custodian recovery key call: %@, %@", &v9, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) crk];
  if (v6)
  {
    v1 = [*(a1 + 32) crk];
    v7 = [v1 kind] == 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) error];
  (*(v5 + 16))(v5, v7, v8);

  if (v6)
  {
  }
}

void sub_10012F650(uint64_t a1)
{
  v2 = sub_100006274("otrpc");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) error];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning a remove custodian recovery key call: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5);
}

void sub_10012F8A4(uint64_t a1)
{
  v2 = sub_100006274("otrpc");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) error];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning a create custodian recovery key call: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) crk];
  v6 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10012FFF8(uint64_t a1)
{
  v2 = sub_100006274("otrpc");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) error];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning a set recovery key call: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v5);
}

void sub_10013026C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to fetch names by peerID: %@", &v7, 0xCu);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_100130D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100130DD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100006274("octagon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished dump for status RPC", v6, 2u);
  }

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5, v3);
}

id sub_100131748(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setVoucher:*(a1 + 32)];
  [v3 setVoucherSignature:*(a1 + 40)];

  return v3;
}

void sub_100131798(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon failed to join: %@", &v6, 0xCu);
    }
  }

  else
  {
    v4 = [*(a1 + 32) ckks];
    v5 = [v4 rpcFetchBecause:@"octagon-pairing-complete"];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100131F5C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon-preflight-rk: error checking recovery key correctness: %@", &v10, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = sub_100006274("octagon-preflight-rk");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"incorrect";
      if (a2)
      {
        v9 = @"correct";
      }

      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "recovery key is %@", &v10, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_10013306C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    v3 = [*(a1 + 32) notifierClass];
    [v3 post:OTJoinedViaBottle];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100133518(uint64_t a1)
{
  v2 = sub_100006274("otrpc");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) peerID];
    v4 = [*(a1 + 32) error];
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning a prepare call: %@  %@", &v12, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) peerID];
  v7 = [*(a1 + 32) permanentInfo];
  v8 = [*(a1 + 32) permanentInfoSig];
  v9 = [*(a1 + 32) stableInfo];
  v10 = [*(a1 + 32) stableInfoSig];
  v11 = [*(a1 + 32) error];
  (*(v5 + 16))(v5, v6, v7, v8, v9, v10, v11);
}

void sub_100133CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 128));
  _Unwind_Resume(a1);
}

void sub_100133CE0(uint64_t a1)
{
  v2 = sub_100006274("otrpc");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) voucher];
    v4 = [*(a1 + 32) voucherSig];
    v5 = [*(a1 + 32) error];
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning a voucher call: %@, %@, %@", &v10, 0x20u);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) voucher];
  v8 = [*(a1 + 32) voucherSig];
  v9 = [*(a1 + 32) error];
  (*(v6 + 16))(v6, v7, v8, v9);
}

void sub_100133E44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = sub_100006274("otrpc");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) error];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Returning a updateTDL: %@", &v9, 0xCu);
  }

  v5 = [*(a1 + 32) error];

  if (v5)
  {
    v6 = *(a1 + 56);
    v7 = [*(a1 + 32) error];
    (*(v6 + 16))(v6, 0, 0, v7);
  }

  else
  {
    v8 = [WeakRetained operationQueue];
    [v8 addOperation:*(a1 + 40)];

    v7 = [WeakRetained stateMachine];
    [v7 handleExternalRequest:*(a1 + 48) startTimeout:500000000000];
  }
}

void sub_100134190(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      v7 = "rpc-epoch: failed to fetch epoch! error: %@";
      v8 = v6;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else
  {
    v6 = sub_100006274("rpc-epoch");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v7 = "fetched epoch";
      v8 = v6;
      v9 = 2;
      goto LABEL_6;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
}

void sub_100134750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_100134784(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudKitAccountInfo];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;

  v3 = [*(a1 + 32) cloudKitAccountInfo];
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) cloudKitAccountInfo];
    *(*(*(a1 + 48) + 8) + 24) = [v4 accountStatus] == 1;

    v3 = v5;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_100134834(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudKitAccountInfo];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;

  v3 = [*(a1 + 32) cloudKitAccountInfo];
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) cloudKitAccountInfo];
    *(*(*(a1 + 48) + 8) + 24) = [v4 accountStatus] == 1;

    v3 = v5;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_100134B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100134B9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 handleFlag:@"attempt_sos_consistency"];
}

OTAccountMetadataClassC *__cdecl sub_1001353A8(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setWarnedTooManyPeers:1];

  return v2;
}

void sub_100135994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1001359E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100006274("octagon-count-trusted-peers");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "totalTrustedPeers errored: %@", &v14, 0xCu);
    }

    v9 = 32;
    v10 = v6;
  }

  else
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "totalTrustedPeers succeeded, total count: %@", &v14, 0xCu);
    }

    v9 = 40;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;
}

void sub_100135B24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100006274("octagon-push-ratelimited");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained contextID];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notifying container of change for context: %@", &v6, 0xCu);
    }

    v4 = [[OctagonPendingFlag alloc] initWithFlag:@"recd_push" conditions:1];
    v5 = [WeakRetained stateMachine];
    [v5 handlePendingFlag:v4];
  }
}

void sub_100136178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100136194(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained sessionMetrics];
  v61 = [v5 flowID];

  v6 = [WeakRetained sessionMetrics];
  v7 = [v6 deviceSessionID];

  v8 = [AAFAnalyticsEventSecurity alloc];
  v9 = [WeakRetained activeAccount];
  v10 = [v9 altDSID];
  v11 = kSecurityRTCEventNameOTBecomeReadyOperation;
  LOBYTE(v59) = [WeakRetained shouldSendMetricsForOctagon] != 0;
  v12 = [v8 initWithKeychainCircleMetrics:0 altDSID:v10 flowID:v61 deviceSessionID:v7 eventName:v11 testsAreEnabled:0 canSendMetrics:v59 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v13 = [WeakRetained contextID];
  LODWORD(v9) = [v13 isEqualToString:@"defaultContext"];

  if (v9)
  {
    v14 = [WeakRetained accountStateTracker];
    [v14 triggerOctagonStatusFetch];
  }

  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_1001266A4;
  v77 = sub_1001266B4;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_1001266A4;
  v71 = sub_1001266B4;
  v72 = 0;
  v15 = [WeakRetained accountMetadataStore];
  v65 = 0;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_100136C40;
  v66[3] = &unk_100337B18;
  v66[4] = &v73;
  v66[5] = &v67;
  [v15 persistAccountChanges:v66 error:&v65];
  v16 = v65;

  if (!v74[5] || v16)
  {
    v23 = sub_100006274("SecError");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "octagon-ckks: No peer ID to pass to CKKS. Syncing will be disabled.", buf, 2u);
    }

LABEL_42:

    v55 = [v3 intendedState];
    [v3 setNextState:v55];

    [WeakRetained setShouldSendMetricsForOctagon:2];
    v62 = 0;
    LOBYTE(v55) = [WeakRetained fetchSendingMetricsPermitted:&v62];
    v56 = v62;
    v23 = v56;
    if (((v56 == 0) & v55) == 1)
    {
      v57 = sub_100006274("octagon-metrics");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "triggered metrics check", buf, 2u);
      }

      v58 = [WeakRetained checkMetricsTrigger];
      [v58 trigger];
    }

    else
    {
      if (!v56)
      {
LABEL_50:
        [v12 sendMetricWithResult:1 error:0];
        goto LABEL_51;
      }

      v58 = sub_100006274("SecError");
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v82 = v23;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "octagon-metrics, failed to fetch metrics setting: %@", buf, 0xCu);
      }
    }

    goto LABEL_50;
  }

  v17 = v68[5];
  if (!v17)
  {
    v24 = sub_100006274("SecError");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "octagon-ckks: No memoized CKKS policy, re-fetching", buf, 2u);
    }

    [v3 setNextState:@"RefetchCKKSPolicy"];
    v23 = [NSError errorWithDomain:@"com.apple.security.octagon" code:86 description:@"No memoized CKKS policy, re-fetching"];
    [v12 sendMetricWithResult:0 error:v23];
    goto LABEL_51;
  }

  if (![v17 syncUserControllableViews])
  {
    v25 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Memoized CKKS policy has no opinion of user-controllable view status", buf, 2u);
    }

    v21 = [WeakRetained upgradeUserControllableViewsRateLimiter];
    [v21 trigger];
    goto LABEL_20;
  }

  v18 = [WeakRetained sosAdapter];
  v19 = [v18 sosEnabled];

  if (v19)
  {
    v20 = [WeakRetained sosAdapter];
    v64 = 0;
    [v20 updateCKKS4AllStatus:1 error:&v64];
    v21 = v64;

    if (v21)
    {
      v22 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v82 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unable to enable the CKKS4All status in SOS: %@", buf, 0xCu);
      }
    }

LABEL_20:
  }

  v26 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v68[5];
    v28 = [v27 viewList];
    *buf = 138412546;
    v82 = v27;
    v83 = 2112;
    v84 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Initializing CKKS views with policy %@: %@", buf, 0x16u);
  }

  v29 = [WeakRetained ckks];
  [v29 setCurrentSyncingPolicy:v68[5]];

  v30 = [OctagonCKKSPeerAdapter alloc];
  v31 = v74[5];
  v32 = [WeakRetained activeAccount];
  v33 = [WeakRetained personaAdapter];
  v34 = [WeakRetained cuttlefishXPCWrapper];
  v23 = [(OctagonCKKSPeerAdapter *)v30 initWithPeerID:v31 specificUser:v32 personaAdapter:v33 cuttlefishXPC:v34];

  v63 = 0;
  v60 = [v23 fetchSelfPeers:&v63];
  v35 = v63;
  v36 = v35;
  if (v60 && !v35)
  {
    [WeakRetained setOctagonAdapter:v23];
    v37 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [WeakRetained ckks];
      v39 = v74[5];
      *buf = 138412546;
      v82 = v38;
      v83 = 2112;
      v84 = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Informing CKKS %@ of trusted operation with self peer %@", buf, 0x16u);
    }

    v40 = [WeakRetained sosAdapter];
    v41 = [v40 sosEnabled];

    v42 = [WeakRetained octagonAdapter];
    if (v41)
    {
      v80[0] = v42;
      v43 = [WeakRetained sosAdapter];
      v80[1] = v43;
      v44 = [NSArray arrayWithObjects:v80 count:2];
    }

    else
    {
      v79 = v42;
      v44 = [NSArray arrayWithObjects:&v79 count:1];
    }

    v52 = [WeakRetained ckks];
    v53 = [WeakRetained suggestTLKUploadNotifier];
    v54 = [WeakRetained requestPolicyCheckNotifier];
    [v52 beginTrustedOperation:v44 suggestTLKUpload:v53 requestPolicyCheck:v54];

    goto LABEL_42;
  }

  v45 = sub_100006274("SecError");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v82 = v23;
    v83 = 2112;
    v84 = v36;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "octagon-ckks: Unable to fetch self peers for %@: %@", buf, 0x16u);
  }

  v46 = [WeakRetained lockStateTracker];
  v47 = [v46 isLockedError:v36];

  v48 = sub_100006274("octagon-ckks");
  v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
  if (v47)
  {
    if (v49)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Waiting for device unlock to proceed", buf, 2u);
    }

    v50 = &off_1003437C8;
  }

  else
  {
    if (v49)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Error is scary; becoming untrusted", buf, 2u);
    }

    v50 = &off_100343A20;
  }

  [v3 setNextState:*v50];
  if (v36)
  {
    v51 = 0;
  }

  else
  {
    v51 = [NSError errorWithDomain:@"com.apple.security.octagon" code:85 description:@"Unable to fetch self peers"];
  }

  [v12 sendMetricWithResult:0 error:v51];

LABEL_51:
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
}

void sub_100136BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

id sub_100136C40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 peerID];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 hasSyncingPolicy];
  if (v7)
  {
    v8 = [v3 getTPSyncingPolicy];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
  if (v7)
  {
  }

  if ([v3 attemptedJoin] == 2)
  {
    v9 = 0;
  }

  else
  {
    [v3 setAttemptedJoin:2];
    v9 = v3;
  }

  return v9;
}

void sub_100136DEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100136E08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_1001266A4;
  v52 = sub_1001266B4;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1001266A4;
  v46 = sub_1001266B4;
  v47 = 0;
  v5 = [WeakRetained accountMetadataStore];
  v40 = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1001374F4;
  v41[3] = &unk_100337B18;
  v41[4] = &v48;
  v41[5] = &v42;
  [v5 persistAccountChanges:v41 error:&v40];
  v6 = v40;

  if (!v49[5] || v6)
  {
    v16 = sub_100006274("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "octagon-ckks: No peer ID to pass to CKKS. Syncing will be disabled.", buf, 2u);
    }

    goto LABEL_29;
  }

  if (v43[5])
  {
    v7 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v43[5];
      v9 = [v8 viewList];
      *buf = 138412546;
      v57 = v8;
      v58 = 2112;
      v59 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Initializing CKKS views with policy %@: %@", buf, 0x16u);
    }

    v10 = [WeakRetained ckks];
    [v10 setCurrentSyncingPolicy:v43[5]];

    v11 = [OctagonCKKSPeerAdapter alloc];
    v12 = v49[5];
    v13 = [WeakRetained activeAccount];
    v14 = [WeakRetained personaAdapter];
    v15 = [WeakRetained cuttlefishXPCWrapper];
    v16 = [(OctagonCKKSPeerAdapter *)v11 initWithPeerID:v12 specificUser:v13 personaAdapter:v14 cuttlefishXPC:v15];

    v39 = 0;
    v17 = [v16 fetchSelfPeers:&v39];
    v18 = v39;
    v19 = v18;
    if (v17 && !v18)
    {
      [WeakRetained setOctagonAdapter:v16];
      v20 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [WeakRetained ckks];
        v22 = v49[5];
        *buf = 138412546;
        v57 = v21;
        v58 = 2112;
        v59 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Informing CKKS %@ of trusted operation with self peer %@", buf, 0x16u);
      }

      v23 = [WeakRetained sosAdapter];
      v24 = [v23 sosEnabled];

      [WeakRetained octagonAdapter];
      if (v24)
        v25 = {;
        v55[0] = v25;
        v26 = [WeakRetained sosAdapter];
        v55[1] = v26;
        v27 = [NSArray arrayWithObjects:v55 count:2];
      }

      else
        v25 = {;
        v54 = v25;
        v27 = [NSArray arrayWithObjects:&v54 count:1];
      }

      [WeakRetained setSuggestTLKUploadNotifier:0];
      [WeakRetained setRequestPolicyCheckNotifier:0];
      v35 = [WeakRetained ckks];
      v36 = [WeakRetained suggestTLKUploadNotifier];
      v37 = [WeakRetained requestPolicyCheckNotifier];
      [v35 beginTrustedOperation:v27 suggestTLKUpload:v36 requestPolicyCheck:v37];

LABEL_29:
      [WeakRetained notifyTrustChanged:2];
      v38 = [v3 intendedState];
      [v3 setNextState:v38];

      [WeakRetained setShouldSendMetricsForOctagon:2];
      goto LABEL_30;
    }

    v29 = sub_100006274("SecError");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v57 = v16;
      v58 = 2112;
      v59 = v19;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "octagon-ckks: Unable to fetch self peers for %@: %@", buf, 0x16u);
    }

    v30 = [WeakRetained lockStateTracker];
    v31 = [v30 isLockedError:v19];

    v32 = sub_100006274("octagon-ckks");
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (v33)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Waiting for device unlock to proceed", buf, 2u);
      }

      v34 = &off_1003437C8;
    }

    else
    {
      if (v33)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Error is scary; becoming untrusted", buf, 2u);
      }

      v34 = &off_100343A20;
    }

    [v3 setNextState:*v34];
  }

  else
  {
    v28 = sub_100006274("SecError");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "octagon-ckks: No memoized CKKS policy, re-fetching", buf, 2u);
    }

    [v3 setNextState:@"RefetchCKKSPolicy"];
  }

LABEL_30:
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
}

void sub_1001374B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_1001374F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 peerID];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 hasSyncingPolicy];
  if (v7)
  {
    v8 = [v3 getTPSyncingPolicy];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
  if (v7)
  {
  }

  return v3;
}

void sub_100137684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001376A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained contextID];
  v6 = [v5 isEqualToString:@"defaultContext"];

  if (v6)
  {
    v7 = [WeakRetained accountStateTracker];
    [v7 triggerOctagonStatusFetch];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100137AA4;
  v23[3] = &unk_100337A38;
  v23[4] = &v24;
  [WeakRetained checkTrustStatusAndPostRepairCFUIfNecessary:v23];
  if (*(v25 + 24) == 1)
  {
    v8 = sub_100006274("octagon");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "device is locked, state moving to wait for unlock", buf, 2u);
    }

    [v3 setNextState:@"WaitForUnlock"];
    v9 = 0;
  }

  else
  {
    v10 = [WeakRetained accountMetadataStore];
    v22 = 0;
    [v10 persistAccountChanges:&stru_100337AF0 error:&v22];
    v9 = v22;

    [WeakRetained setMetricsStateToActive];
    if (v9)
    {
      v11 = sub_100006274("octagon");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to set trust state: %@", buf, 0xCu);
      }

      [v3 setNextState:@"Error"];
    }

    else
    {
      v12 = [v3 intendedState];
      [v3 setNextState:v12];
    }

    v13 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [WeakRetained ckks];
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Informing %@ of new untrusted status", buf, 0xCu);
    }

    v15 = [WeakRetained ckks];
    [v15 endTrustedOperation];

    v16 = [WeakRetained sosAdapter];
    v17 = [v16 sosEnabled];

    if (v17)
    {
      v18 = [WeakRetained sosAdapter];
      v21 = 0;
      [v18 updateCKKS4AllStatus:0 error:&v21];
      v19 = v21;

      if (v19)
      {
        v20 = sub_100006274("octagon-ckks");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unable to disable the CKKS4All status in SOS: %@", buf, 0xCu);
        }
      }
    }

    if (([WeakRetained initialBecomeUntrustedPosted] & 1) == 0)
    {
      [WeakRetained notifyTrustChanged:1];
      [WeakRetained setInitialBecomeUntrustedPosted:1];
    }

    [WeakRetained setOctagonAdapter:0];
  }

  _Block_object_dispose(&v24, 8);
}

void sub_100137A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100137AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, void *a6)
{
  v9 = a6;
  v10 = +[CKKSAnalytics logger];
  [v10 logResultForEvent:@"OctagonEventCheckTrustForCFU" hardFailure:0 result:v9];

  if (!v9)
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if ([v9 code] != -25308)
  {
    v11 = sub_100006274("SecError");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v16 = 138412290;
    v17 = v9;
    v13 = "octagon: hit an error checking trust state or posting a cfu: %@";
    v14 = v11;
    v15 = 12;
    goto LABEL_12;
  }

  if ((a5 & 1) != 0 || [v9 code] == -25308)
  {
LABEL_8:
    *(*(*(a1 + 32) + 8) + 24) = a5;
    v11 = sub_100006274("SecError");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    LOWORD(v16) = 0;
    v13 = "octagon: device is locked, not posting cfu";
    v14 = v11;
    v15 = 2;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v16, v15);
    goto LABEL_13;
  }

LABEL_5:
  v11 = sub_100006274("octagon");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = OTCliqueStatusToString();
    v16 = 138412546;
    v17 = v12;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "clique status: %@, posted cfu: %d", &v16, 0x12u);
  }

LABEL_13:
}

OTAccountMetadataClassC *__cdecl sub_100137CA4(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setTrustState:1];
  [(OTAccountMetadataClassC *)v2 setSendingMetricsPermitted:1];

  return v2;
}

void sub_100137DD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100137DF4(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, int a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = sub_100006274("octagon");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = OTCliqueStatusToString();
    *buf = 138413314;
    v50 = v18;
    v51 = 2112;
    v52 = v13;
    v53 = 2112;
    v54 = v14;
    v55 = 1024;
    v56 = a5;
    v57 = 2112;
    v58 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "clique status: %@, egoPeerID: %@, peerCountByModelID: %@, isExcluded: %d error: %@", buf, 0x30u);
  }

  if (a2 == -1 && [v15 code] == -25300)
  {
    v19 = sub_100006274("SecError");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "octagon: Lost our identity keys!", buf, 2u);
    }

    v20 = sub_100006274("SecError");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "octagon: Posting CFU", buf, 2u);
    }

    v48 = 0;
    [WeakRetained postRepairCFU:&v48];
    v21 = v48;
    v22 = *(*(a1 + 32) + 16);
    goto LABEL_49;
  }

  if (v15 && [v15 code] != -25308)
  {
    v24 = *(*(a1 + 32) + 16);
    goto LABEL_47;
  }

  if (a6)
  {
    v23 = sub_100006274("octagon");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "device is locked; not posting CFU", buf, 2u);
    }

    v24 = *(*(a1 + 32) + 16);
    goto LABEL_47;
  }

  v25 = [WeakRetained sosAdapter];
  v26 = [v25 sosEnabled];

  if (v26)
  {
    v27 = [WeakRetained accountMetadataStore];
    v47 = 0;
    v28 = [v27 loadOrCreateAccountMetadata:&v47];
    v29 = v47;

    v30 = v28;
    if (!v28 || v29)
    {
      v33 = sub_100006274("SecError");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v29;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "octagon: failed to retrieve joining attempt information: %@", buf, 0xCu);
      }

      goto LABEL_42;
    }

    if ([v28 attemptedJoin] == 2)
    {
LABEL_43:

      goto LABEL_44;
    }

    v44 = v28;
    v31 = sub_100006274("octagon");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SOS is enabled and we haven't attempted to join; checking with SOS", buf, 2u);
    }

    v32 = [WeakRetained sosAdapter];
    v46 = 0;
    v40 = [v32 circleStatus:&v46];
    v33 = v46;

    if (v33)
    {
      v34 = [v33 domain];
      if ([v34 isEqualToString:kSOSErrorDomain])
      {
        loga = [v33 code];

        if (loga == 4)
        {
          v35 = sub_100006274("octagon");
          v36 = v44;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SOS is not ready, not posting CFU until it becomes so", buf, 2u);
          }

          goto LABEL_52;
        }
      }

      else
      {
      }

      log = sub_100006274("octagon");
      v30 = v44;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v33;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "SOS is in an unknown error state, posting CFU: %@", buf, 0xCu);
      }
    }

    else
    {
      log = sub_100006274("octagon");
      v37 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (!v40)
      {
        if (v37)
        {
          *buf = 0;
          v35 = log;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "SOS is InCircle, not posting CFU", buf, 2u);
        }

        else
        {
          v35 = log;
        }

        v36 = v44;
LABEL_52:

        (*(*(a1 + 32) + 16))();
        goto LABEL_50;
      }

      if (v37)
      {
        v38 = SOSCCGetStatusDescription();
        *buf = 138412290;
        v50 = v38;
        v41 = v38;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "SOS is %@, posting CFU", buf, 0xCu);

        v39 = log;
        v30 = v44;
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v30 = v44;
    }

    v39 = log;
    goto LABEL_41;
  }

LABEL_44:
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) == 1 || a5)
  {
    v45 = 0;
    [WeakRetained postRepairCFU:&v45];
    v21 = v45;
    v22 = *(*(a1 + 32) + 16);
LABEL_49:
    v22();

    goto LABEL_50;
  }

  v24 = *(*(a1 + 32) + 16);
LABEL_47:
  v24();
LABEL_50:
}

void sub_100138834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013884C(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, int a6, void *a7)
{
  v12 = a3;
  v13 = a7;
  v14 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v32 = a2;
    v33 = 2112;
    v34 = v12;
    v35 = 1024;
    v36 = a5;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "repairAccountIfTrustedByTPHWithIntendedState status: %ld, peerID: %@, isExcluded: %d error: %@", buf, 0x26u);
  }

  if (v13)
  {
    v15 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "got an error from tph, returning to become_ready state: %@", buf, 0xCu);
    }

    v16 = *(*(a1 + 48) + 8);
    v17 = @"BecomeReady";
LABEL_11:
    v19 = v17;
    v20 = *(v16 + 40);
    *(v16 + 40) = v17;
LABEL_12:

    goto LABEL_13;
  }

  if (a6)
  {
    v18 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "device is locked", buf, 2u);
    }

    v16 = *(*(a1 + 48) + 8);
    v17 = @"WaitForUnlock";
    goto LABEL_11;
  }

  if (!a2 && v12)
  {
    v21 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "TPH believes we're trusted, accepting ego peerID as %@", buf, 0xCu);
    }

    v22 = [*(a1 + 32) accountMetadataStore];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100138C60;
    v29[3] = &unk_100344BD8;
    v30 = v12;
    v28 = 0;
    v23 = [v22 persistAccountChanges:v29 error:&v28];
    v20 = v28;

    if (!v23 || v20)
    {
      v27 = sub_100006274("SecError");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "octagon-health: couldn't persist results: %@", buf, 0xCu);
      }

      v25 = &off_1003439D8;
    }

    else
    {
      v24 = sub_100006274("octagon-health");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "added trusted identity to account metadata", buf, 2u);
      }

      v25 = (a1 + 40);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *v25);

    goto LABEL_12;
  }

  if (a2 && v12)
  {
    v26 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "TPH believes we're not trusted, requesting CFU post", buf, 2u);
    }

    v16 = *(*(a1 + 48) + 8);
    v17 = @"PostRepairCFU";
    goto LABEL_11;
  }

LABEL_13:
}

id sub_100138C60(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTrustState:2];
  [v3 setPeerID:*(a1 + 32)];

  return v3;
}

void sub_100138D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100138DB8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accountMetadataStore];
  v36 = 0;
  v6 = [v5 loadOrCreateAccountMetadata:&v36];
  v7 = v36;

  if (v7)
  {
    v8 = [WeakRetained lockStateTracker];
    v9 = [v8 isLockedError:v7];

    if (v9)
    {
      v10 = sub_100006274("octagon");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device is locked! pending initialization on unlock", buf, 2u);
      }

      [v3 setNextState:@"WaitForClassCUnlock"];
      goto LABEL_30;
    }
  }

  else if (v6)
  {
    goto LABEL_10;
  }

  v11 = sub_100006274("octagon");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error loading account data: %@", buf, 0xCu);
  }

  [v3 setNextState:@"NoAccount"];
LABEL_10:
  if ([v6 isInheritedAccount])
  {
    [v3 setNextState:@"BecomeInherited"];
    goto LABEL_30;
  }

  if ([v6 warmedEscrowCache])
  {
    goto LABEL_27;
  }

  v12 = [v6 peerID];
  v13 = v12 == 0;

  v14 = sub_100006274("octagon-warm-escrowcache");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Beginning fetching escrow records to warm up the escrow cache in TPH", buf, 2u);
    }

    v16 = objc_alloc_init(CKKSCondition);
    [WeakRetained setPendingEscrowCacheWarmup:v16];

    v17 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001392CC;
    block[3] = &unk_1003452E8;
    objc_copyWeak(&v35, (a1 + 32));
    dispatch_async(v17, block);

    objc_destroyWeak(&v35);
  }

  else
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Already have a peerID; no need to warm escrow cache", buf, 2u);
    }
  }

  v18 = [WeakRetained accountMetadataStore];
  v33 = 0;
  [v18 persistAccountChanges:&stru_100337A58 error:&v33];
  v19 = v33;

  if (v19)
  {
    v20 = sub_100006274("SecError");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v19;
      v21 = "octagon-warm-escrowcache: Failed to write down escrow cache attempt: %@";
      v22 = v20;
      v23 = 12;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }
  }

  else
  {
    v20 = sub_100006274("octagon-warm-escrowcache");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "Successfully persisted warmed-escrow-cache attempt state";
      v22 = v20;
      v23 = 2;
      goto LABEL_25;
    }
  }

LABEL_27:
  v24 = sub_100006274("octagon");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "iCloud sign in occurred. Attempting to register with APS...", buf, 2u);
  }

  v25 = [WeakRetained containerName];
  v26 = [CKContainer containerWithIdentifier:v25];

  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_100139388;
  v31 = &unk_100337A80;
  objc_copyWeak(&v32, (a1 + 32));
  [v26 serverPreferredPushEnvironmentWithCompletionHandler:&v28];
  v27 = [v3 intendedState];
  [v3 setNextState:v27];

  objc_destroyWeak(&v32);
LABEL_30:
}

void sub_1001392CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013957C;
  v3[3] = &unk_100343480;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained rpcFetchAllViableEscrowRecordsFromSource:0 reply:v3];
  objc_destroyWeak(&v4);
}

void sub_100139388(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v9 = sub_100006274("SecError");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    LOWORD(v13) = 0;
    v10 = "octagonpush: received callback for released object";
    v11 = v9;
    v12 = 2;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v13, v12);
    goto LABEL_12;
  }

  if (!v5 || v6)
  {
    v9 = sub_100006274("SecError");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v10 = "octagonpush: Received error fetching preferred push environment (%@): %@";
    v11 = v9;
    v12 = 22;
    goto LABEL_11;
  }

  v8 = sub_100006274("octagonpush");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registering for environment '%@'", &v13, 0xCu);
  }

  v9 = [WeakRetained apsReceiver];
  [v9 registerForEnvironment:v5];
LABEL_12:
}

OTAccountMetadataClassC *__cdecl sub_10013953C(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setWarmedEscrowCache:1];

  return v2;
}

void sub_10013957C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      v7 = "octagon-warm-escrowcache: failed to fetch escrow records, %@";
      v8 = v6;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else
  {
    v6 = sub_100006274("octagon-warm-escrowcache");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v7 = "Successfully fetched escrow records";
      v8 = v6;
      v9 = 2;
      goto LABEL_6;
    }
  }

  v10 = [WeakRetained pendingEscrowCacheWarmup];
  [v10 fulfill];
}

void sub_100139754(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100139840;
  v6[3] = &unk_100337A38;
  v6[4] = &v7;
  [v4 checkTrustStatusAndPostRepairCFUIfNecessary:v6];
  if (*(v8 + 24))
  {
    v5 = @"WaitForUnlock";
  }

  else
  {
    v5 = @"Untrusted";
  }

  [v3 setNextState:v5];
  _Block_object_dispose(&v7, 8);
}

void sub_100139828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100139840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v8 = a6;
  if (!v8)
  {
    if (a5)
    {
      *(*(*(a1 + 32) + 8) + 24) = a5;
      v9 = sub_100006274("octagon-health");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      LOWORD(v13) = 0;
      v10 = "device is locked, not posting cfu";
    }

    else
    {
      v9 = sub_100006274("octagon-health");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      LOWORD(v13) = 0;
      v10 = "posted repair cfu via state machine";
    }

    v11 = v9;
    v12 = 2;
    goto LABEL_10;
  }

  v9 = sub_100006274("SecError");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v8;
    v10 = "ocagon-health: failed to post repair cfu via state machine: %@";
    v11 = v9;
    v12 = 12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v13, v12);
  }

LABEL_11:
}

void sub_100139B1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100139B3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [*(a1 + 32) results];
    v34 = [v36 postRepairCFU];
    v35 = [*(a1 + 32) results];
    v3 = [v35 postEscrowCFU];
    v4 = [*(a1 + 32) results];
    v5 = [v4 resetOctagon];
    v6 = [*(a1 + 32) results];
    v7 = [v6 leaveTrust];
    v8 = [*(a1 + 32) results];
    v9 = [v8 reroll];
    v10 = [*(a1 + 32) results];
    *buf = 67110402;
    *v45 = v34;
    *&v45[4] = 1024;
    *&v45[6] = v3;
    v46 = 1024;
    v47 = v5;
    v48 = 1024;
    v49 = v7;
    v50 = 1024;
    v51 = v9;
    v52 = 2112;
    v53 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning from cuttlefish trust check call: postRepairCFU(%d), postEscrowCFU(%d), resetOctagon(%d), leaveTrust(%d), reroll(%d), results=%@", buf, 0x2Au);
  }

  v11 = [*(a1 + 32) results];
  v12 = WeakRetained[8];
  WeakRetained[8] = v11;

  v13 = [*(a1 + 32) results];
  v14 = [v13 postRepairCFU];

  if (v14)
  {
    v15 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Posting Repair CFU", buf, 2u);
    }

    v43 = 0;
    [WeakRetained postRepairCFU:&v43];
    v16 = v43;
    if (v16)
    {
      [*(a1 + 32) setError:v16];
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v17 = [*(a1 + 32) results];
    v18 = [v17 postEscrowCFU];

    if (v18)
    {
      v42 = 0;
      v19 = [WeakRetained shouldPostConfirmPasscodeCFU:&v42];
      v20 = v42;
      if (v20)
      {
        v21 = sub_100006274("SecError");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v45 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "octagon-health, hit an error evaluating prerecord status: %@", buf, 0xCu);
        }

        [*(a1 + 32) setError:v20];
      }

      v22 = sub_100006274("octagon-health");
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v23)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Posting Escrow CFU", buf, 2u);
        }

        v41 = 0;
        v24 = [WeakRetained postConfirmPasscodeCFU:&v41];
        v22 = v41;
        if ((v24 & 1) == 0)
        {
          [*(a1 + 32) setError:v22];
        }
      }

      else if (v23)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Not posting confirm passcode CFU, already pending a prerecord upload", buf, 2u);
      }
    }
  }

  v25 = [*(a1 + 32) results];
  v26 = [v25 leaveTrust];

  if (v26)
  {
    v27 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Leaving Octagon and SOS trust", buf, 2u);
    }

    v40 = 0;
    v28 = [WeakRetained leaveTrust:&v40];
    v29 = v40;
    if ((v28 & 1) == 0)
    {
      [*(a1 + 32) setError:v29];
    }
  }

  v30 = [*(a1 + 32) results];
  v31 = [v30 reroll];

  if (v31)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10013A0C0;
    v38[3] = &unk_100337A10;
    objc_copyWeak(&v39, (a1 + 40));
    v32 = [CKKSResultOperation named:@"reroll" withBlockTakingSelf:v38];
    [*(a1 + 32) addDependency:v32];
    v33 = [WeakRetained operationQueue];
    [v33 addOperation:v32];

    objc_destroyWeak(&v39);
  }
}

void sub_10013A0C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Rerolling Octagon PeerID", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013A1BC;
  v7[3] = &unk_1003378B8;
  v8 = v3;
  v6 = v3;
  [WeakRetained rerollWithReply:v7];
}

void sub_10013A1BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon-health: reroll failed: %@", &v5, 0xCu);
    }

    [*(a1 + 32) setError:v3];
  }
}

void sub_10013A32C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10013A3C4;
  v6[3] = &unk_1003379E8;
  v7 = v3;
  v5 = v3;
  [v4 checkTrustStatusAndPostRepairCFUIfNecessary:v6];
}

void sub_10013A3C4(uint64_t a1, uint64_t a2, int a3, char a4, int a5, void *a6)
{
  v11 = a6;
  v12 = +[CKKSAnalytics logger];
  [v12 logResultForEvent:@"OctagonEventTPHHealthCheckStatus" hardFailure:0 result:v11];

  if (v11)
  {
    v13 = sub_100006274("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "octagon-health: hit an error asking TPH for trust status: %@", &v19, 0xCu);
    }

    [*(a1 + 32) setError:v11];
    v14 = *(a1 + 32);
    v15 = @"Error";
LABEL_5:
    [v14 setNextState:v15];
    goto LABEL_6;
  }

  if (!a5)
  {
    if (a4)
    {
      v17 = sub_100006274("octagon-health");
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (a2)
      {
        if (v18)
        {
          v19 = 67109120;
          LODWORD(v20) = a3;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "TPH says we have an identity but we are not in Octagon, posted CFU: %d", &v19, 8u);
        }

        v14 = *(a1 + 32);
        v15 = @"PostRepairCFU";
      }

      else
      {
        if (v18)
        {
          LOWORD(v19) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "TPH says we're trusted and in", &v19, 2u);
        }

        v14 = *(a1 + 32);
        v15 = @"CuttlefishTrustCheck";
      }
    }

    else
    {
      v14 = *(a1 + 32);
      v15 = @"Untrusted";
    }

    goto LABEL_5;
  }

  [*(a1 + 32) setNextState:@"WaitForUnlock"];
  v16 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "TPH says device is locked!", &v19, 2u);
  }

LABEL_6:
}

void sub_10013A6B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accountMetadataStore];
  v15 = 0;
  v5 = [v4 loadOrCreateAccountMetadata:&v15];
  v6 = v15;

  v7 = [v5 peerID];
  if (v7 && (v8 = v7, v9 = [v5 trustState], v8, v9 == 2))
  {
    v10 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 peerID];
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "peer is trusted: %@", buf, 0xCu);
    }

    [v3 setNextState:@"TPHTrustCheck"];
  }

  else
  {
    v12 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 trustStateAsString:{objc_msgSend(v5, "trustState")}];
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "trust state (%@). checking in with TPH", buf, 0xCu);
    }

    v14 = [*(a1 + 32) repairAccountIfTrustedByTPHWithIntendedState:@"TPHTrustCheck"];
    [v3 setNextState:v14];
  }
}

void sub_10013A9B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10013A9CC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained accountMetadataStore];
  v13 = 0;
  v6 = [v5 loadOrCreateAccountMetadata:&v13];
  v7 = v13;

  if (v7)
  {
    v8 = [WeakRetained lockStateTracker];
    v9 = [v8 isLockedError:v7];

    if (v9)
    {
      v10 = sub_100006274("octagon");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device is locked! pending initialization on unlock", buf, 2u);
      }

      v11 = &off_100343A08;
      goto LABEL_11;
    }
  }

  else if (v6)
  {
    v11 = (a1 + 32);
    goto LABEL_11;
  }

  v12 = sub_100006274("octagon");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error loading account data: %@", buf, 0xCu);
  }

  v11 = &off_1003437C0;
LABEL_11:
  [v3 setNextState:*v11];
}

void sub_10013AC1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100006274("octagon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Account now unavailable: %@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) accountMetadataStore];
  v13 = 0;
  [v6 persistAccountChanges:&stru_100337998 error:&v13];
  v7 = v13;

  if (v7)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon: unable to persist new account availability: %@", buf, 0xCu);
    }
  }

  v9 = [*(a1 + 32) accountStateTracker];
  [v9 setCDPCapableiCloudAccountStatus:3];

  v10 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) ckks];
    *buf = 138412290;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Informing %@ of new untrusted status (due to account disappearance)", buf, 0xCu);
  }

  v12 = [*(a1 + 32) ckks];
  [v12 endTrustedOperation];

  [v3 setError:v7];
}

OTAccountMetadataClassC *__cdecl sub_10013AE28(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setIcloudAccountState:1];
  [(OTAccountMetadataClassC *)v2 setAltDSID:0];
  [(OTAccountMetadataClassC *)v2 setTrustState:0];
  [(OTAccountMetadataClassC *)v2 setCdpState:0];
  [(OTAccountMetadataClassC *)v2 setSecureElementIdentity:0];
  [(OTAccountMetadataClassC *)v2 setLastEscrowRepairTriggered:0];
  [(OTAccountMetadataClassC *)v2 setLastEscrowRepairAttempted:0];

  return v2;
}

void sub_10013AF88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10013AFA4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accountMetadataStore];
  v53 = 0;
  v6 = [v5 loadOrCreateAccountMetadata:&v53];
  v7 = v53;

  if (v7)
  {
    v8 = [WeakRetained lockStateTracker];
    v9 = [v8 isLockedError:v7];

    if (v9)
    {
      v10 = sub_100006274("octagon");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device is locked! pending initialization on unlock", buf, 2u);
      }

      v11 = @"WaitForClassCUnlock";
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (!v6)
  {
LABEL_16:
    v26 = sub_100006274("octagon");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v7;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Error loading account data: %@", buf, 0xCu);
    }

    [WeakRetained setMetricsStateToActive];
LABEL_19:
    v11 = @"NoAccount";
    goto LABEL_20;
  }

  if ([v6 icloudAccountState] != 2)
  {
    if ([v6 icloudAccountState] == 1 && (objc_msgSend(v6, "altDSID"), v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
    {
      v28 = sub_100006274("octagon");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "An iCloud account exists, but doesn't appear to be CDP Capable. Let's check!", buf, 2u);
      }
    }

    else
    {
      if ([v6 icloudAccountState] == 1)
      {
        v29 = [WeakRetained accountStateTracker];
        [v29 setCDPCapableiCloudAccountStatus:3];

        v30 = sub_100006274("octagon");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "No iCloud account available.", buf, 2u);
        }

        [WeakRetained setMetricsToState:{objc_msgSend(v6, "sendingMetricsPermitted")}];
        goto LABEL_19;
      }

      v28 = sub_100006274("octagon");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v6 icloudAccountStateAsString:{objc_msgSend(v6, "icloudAccountState")}];
        *buf = 138412290;
        v55 = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Unknown account state (%@). Determining...", buf, 0xCu);
      }
    }

    [WeakRetained setMetricsToState:{objc_msgSend(v6, "sendingMetricsPermitted")}];
    v11 = @"DetermineiCloudAccountState";
    goto LABEL_20;
  }

  v12 = sub_100006274("octagon");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "An CDP Capable iCloud account exists; waiting for CloudKit to confirm", buf, 2u);
  }

  [WeakRetained setMetricsToState:{objc_msgSend(v6, "sendingMetricsPermitted")}];
  v13 = [WeakRetained activeAccount];

  if (!v13)
  {
    v14 = [WeakRetained accountsAdapter];
    v15 = [WeakRetained personaAdapter];
    v16 = [WeakRetained containerName];
    v17 = [WeakRetained contextID];
    v52 = 0;
    v18 = [v14 findAccountForCurrentThread:v15 optionalAltDSID:0 cloudkitContainerName:v16 octagonContextID:v17 error:&v52];
    v19 = v52;
    [WeakRetained setActiveAccount:v18];

    v20 = [WeakRetained activeAccount];

    if (!v20 || v19)
    {
      v24 = sub_100006274("SecError");
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v25 = [WeakRetained contextID];
      *buf = 138412546;
      v55 = v25;
      v56 = 2112;
      v57 = v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "octagon-account: unable to determine active account for context(%@). Issues ahead: %@", buf, 0x16u);
    }

    else
    {
      v21 = sub_100006274("octagon-account");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [WeakRetained contextID];
        v23 = [WeakRetained activeAccount];
        *buf = 138412546;
        v55 = v22;
        v56 = 2112;
        v57 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found a new account (%@): %@", buf, 0x16u);
      }

      v24 = [WeakRetained accountMetadataStore];
      v25 = [WeakRetained activeAccount];
      [v24 changeActiveAccount:v25];
    }

LABEL_35:
    v50 = v19;

    v32 = [WeakRetained activeAccount];
    v33 = [v32 altDSID];
    if (v33)
    {
      v34 = v33;
      v35 = [WeakRetained activeAccount];
      v36 = [v35 altDSID];
      v37 = [v6 altDSID];
      v38 = [v36 isEqualToString:v37];

      if (v38)
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
    }

    v39 = sub_100006274("SecError");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [WeakRetained activeAccount];
      v41 = [v40 altDSID];
      v42 = [v6 altDSID];
      *buf = 138412546;
      v55 = v41;
      v56 = 2112;
      v57 = v42;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "octagon-account: discovered altDSID (%@) does not match persisted altDSID (%@)", buf, 0x16u);
    }

    goto LABEL_42;
  }

LABEL_43:
  v43 = [WeakRetained accountStateTracker];
  [v43 setCDPCapableiCloudAccountStatus:1];

  v44 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Initializing CKKS views", buf, 2u);
  }

  v45 = [WeakRetained cuttlefishXPCWrapper];
  v46 = [WeakRetained activeAccount];
  v47 = [WeakRetained deviceAdapter];
  v48 = [v47 modelID];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10013B7CC;
  v51[3] = &unk_100337978;
  v51[4] = WeakRetained;
  [v45 fetchCurrentPolicyWithSpecificUser:v46 modelIDOverride:v48 isInheritedAccount:objc_msgSend(v6 reply:{"isInheritedAccount"), v51}];

  v49 = [WeakRetained ckks];
  [v49 beginCloudKitOperation];

  v11 = @"WaitingForCloudKitAccount";
LABEL_20:
  [v3 setNextState:v11];
}

void sub_10013B7CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (!v6 || v7)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon-ckks: Unable to fetch initial syncing policy. THIS MIGHT CAUSE SYNCING FAILURES LATER: %@", &v11, 0xCu);
    }
  }

  else
  {
    v9 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetched initial syncing policy: %@", &v11, 0xCu);
    }

    v10 = [*(a1 + 32) ckks];
    [v10 setCurrentSyncingPolicy:v6];
  }
}

void sub_10013EF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}