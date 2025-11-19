void sub_100030ED0(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100030F14(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100030F58(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100030F9C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100030FE0(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100031458(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003149C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000314E0(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100031770(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100031ADC(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100031B20(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100031B64(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] dataStore];
  v8 = a1[5];
  v22 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100031CE4;
  v17[3] = &unk_100319038;
  v9 = v6;
  v18 = v9;
  v10 = a1[7];
  v11 = v5;
  v19 = v11;
  v12 = a1[6];
  v13 = a1[5];
  *&v14 = a1[4];
  *(&v14 + 1) = v10;
  *&v15 = v12;
  *(&v15 + 1) = v13;
  v20 = v15;
  v21 = v14;
  LOBYTE(v10) = [v7 performAndWaitForFetchId:v8 error:&v22 block:v17];
  v16 = v22;

  if ((v10 & 1) == 0)
  {
    (*(a1[7] + 2))();
  }
}

void sub_100031CE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 request];
  if (*(a1 + 32))
  {
    v5 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (qword_10038BC90 != -1)
    {
      sub_10024869C();
    }

    v6 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [v4 requestId];
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "handling fetched response for requestId %{public}@", buf, 0xCu);
    }

    v9 = [v3 requestData];
    v22 = 0;
    v10 = [(TransparencyGPBMessage *)QueryRequest parseFromData:v9 error:&v22];
    v11 = v22;

    if (!*(a1 + 48))
    {
      if (qword_10038BC90 != -1)
      {
        sub_1002486B0();
      }

      v12 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 56);
        *buf = 138543618;
        v24 = v13;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "parse saved queryRequest for fetchId %{public}@ failed after fetch: %@", buf, 0x16u);
      }
    }

    v14 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
  }

  v15 = [*(a1 + 64) dataStore];
  [v15 deleteObject:v3];

  v16 = [*(a1 + 64) dataStore];
  v21 = 0;
  v17 = [v16 persistAndRefaultObject:v3 error:&v21];
  v18 = v21;

  if ((v17 & 1) == 0)
  {
    if (qword_10038BC90 != -1)
    {
      sub_1002486D8();
    }

    v19 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "failed to delete fetch record after fetch: %@", buf, 0xCu);
    }

    v20 = [*(a1 + 64) dataStore];
    [v20 reportCoreDataPersistEventForLocation:@"fetchRecordDelete" underlyingError:v18];
  }
}

void sub_100031FD8(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003201C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100032060(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000322F8(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003272C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100032770(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000327B4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11 || !v10 || !v9 || v12)
  {
    if (!v11 || v12)
    {
      v19 = *(a1 + 32);
      v20 = [v9 uri];
      v21 = [v9 accountKey];
      v27 = 0;
      v22 = [v19 peerStaticKeyFallback:v20 accountKey:v21 transparentData:&v27];
      v17 = v27;

      if (v22)
      {
        v23 = *(*(a1 + 40) + 16);
LABEL_20:
        v23();
        goto LABEL_21;
      }
    }

    else
    {
      if (qword_10038BC90 != -1)
      {
        sub_1002487A0();
      }

      v18 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v32 = v11;
        v33 = 2112;
        v34 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "validatePeer static key: %@/%@", buf, 0x16u);
      }
    }

    v24 = [*(a1 + 32) applicationID];
    v17 = [KTContext validateEventName:0 application:v24];

    v25 = +[TransparencyAnalytics logger];
    [v25 logResultForEvent:v17 hardFailure:objc_msgSend(v9 result:{"isDeleted"), v13}];

    if (qword_10038BC90 != -1)
    {
      sub_1002487B4();
    }

    v26 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "validatePeer fetch error: %@", buf, 0xCu);
    }

    v23 = *(*(a1 + 40) + 16);
    goto LABEL_20;
  }

  v14 = *(a1 + 32);
  v29 = 0;
  v30 = 0;
  v28 = 0;
  [v14 validatePeerOrEnrollKTRequest:v9 queryRequest:v10 queryResponse:v11 transparentData:&v30 loggableDatas:&v29 error:&v28];
  v15 = v30;
  v16 = v29;
  v17 = v28;
  (*(*(a1 + 40) + 16))();

LABEL_21:
}

void sub_100032AD8(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100032B1C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100032B60(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100032EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100032EE8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
  v20 = v9;

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v10;
  v16 = v10;

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v11;
  v19 = v11;

  *(*(*(a1 + 64) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100032FC8(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100033494(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000334D8(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003351C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  if (a4 && a3 && a2 && !v9)
  {
    v11 = *(a1 + 32);
    v19 = 0;
    v12 = a2;
    [v11 validatePeerOrEnrollKTRequest:v12 queryRequest:a3 queryResponse:a4 transparentData:0 loggableDatas:0 error:&v19];
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = a2;
    v15 = [v13 applicationID];
    v12 = [KTContext validateEventName:2 application:v15];

    v16 = +[TransparencyAnalytics logger];
    v17 = [v14 isDeleted];

    [v16 logResultForEvent:v12 hardFailure:v17 result:v10];
    if (qword_10038BC90 != -1)
    {
      sub_10024887C();
    }

    v18 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "validateEnrollment fetch error: %@", buf, 0xCu);
    }
  }
}

void sub_1000336C0(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100033704(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100033748(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100033910(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 verificationResult];
  if ((*(a1 + 48) & 1) != 0 || (v5 = v4, v4 == 2))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 49);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100033A80;
    v16 = &unk_100319280;
    v17 = v3;
    v18 = *(a1 + 40);
    [v10 fetchAndValidatePeerKTRequest:v17 fetchNow:v11 completionHandler:&v13];
  }

  else
  {
    v6 = [KTVerifierResult alloc];
    v7 = [v3 uri];
    v8 = [v3 application];
    v9 = [v6 initWithUri:v7 application:v8 ktResult:v5];

    (*(*(a1 + 40) + 16))();
  }

  v12 = [*(a1 + 32) dataStore];
  [v12 refaultObject:v3];
}

void sub_100033A80(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [KTVerifierResult alloc];
  v13 = [*(a1 + 32) uri];
  v14 = [*(a1 + 32) application];
  v15 = [v12 initWithUri:v13 application:v14 ktResult:a2 transparentData:v11 loggableDatas:v10];

  (*(*(a1 + 40) + 16))();
}

void sub_100033DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 168), 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_100033E24(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  v5 = *(*(a1 + 64) + 8);
  v13 = *(v5 + 40);
  obj = v4;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 72) + 8);
  v12 = *(v8 + 40);
  v9 = a2;
  v10 = [v6 fetchAndValidateEnrollKTRequest:v9 transparentData:&obj loggableDatas:&v13 cloudOptIn:v7 error:&v12];
  objc_storeStrong((v3 + 40), obj);
  objc_storeStrong((v5 + 40), v13);
  objc_storeStrong((v8 + 40), v12);
  *(*(*(a1 + 48) + 8) + 24) = v10;
  v11 = [*(a1 + 32) dataStore];
  [v11 refaultObject:v9];
}

void sub_10003452C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100034570(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v32 = 0;
  v5 = [(TransparencyGPBMessage *)QueryRequest parseFromData:v4 error:&v32];
  v6 = v32;
  if (v5)
  {
    v7 = *(a1 + 56);
    v31 = v6;
    v8 = [(TransparencyGPBMessage *)QueryResponse parseFromData:v7 error:&v31];
    v9 = v31;

    v10 = [*(a1 + 64) kt_dateToString];
    [v8 setMetadataValue:v10 key:@"ResponseTime"];

    v11 = *(a1 + 48);
    v12 = *(a1 + 72);
    v13 = *(a1 + 80);
    v29 = 0;
    v30 = 0;
    LOBYTE(v28) = 1;
    v14 = [v11 validateSelfKTRequest:v3 queryRequest:v5 queryResponse:v8 selfVerificationInfo:v12 optInCheck:0 cloudDevices:0 pcsAccountKey:v13 kvsOptInHistory:0 isReplay:v28 transparentData:&v30 loggableDatas:0 error:&v29];
    v15 = v30;
    v16 = v29;
    v17 = [*(a1 + 72) diagnosticsJsonDictionary];
    [*(*(*(a1 + 104) + 8) + 40) setKtVerificationInfoDiagnosticsJson:v17];

    v18 = [v15 diagnosticsJsonDictionary];
    [*(*(*(a1 + 104) + 8) + 40) setTransparentDataDiagnosticsJson:v18];

    [*(*(*(a1 + 104) + 8) + 40) setRequestTime:*(a1 + 64)];
    if (v14 > 3)
    {
      v19 = @"Unknown";
    }

    else
    {
      v19 = *(&off_100319398 + v14);
    }

    [*(*(*(a1 + 104) + 8) + 40) setResult:v19];
    if (v16)
    {
      [*(*(*(a1 + 104) + 8) + 40) setError:v16];
    }

    [*(a1 + 88) setObject:*(*(*(a1 + 104) + 8) + 40) forKeyedSubscript:*(a1 + 96)];
    if (qword_10038BC90 != -1)
    {
      sub_1002488E0();
    }

    v23 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 40);
      v25 = *(a1 + 96);
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "ReplaySelfValidate: deleting requestId %{public}@ for %@", buf, 0x16u);
    }

    v26 = [*(a1 + 48) dataStore];
    [v26 deleteObject:v3];

    v27 = [*(a1 + 48) dataStore];
    [v27 persistWithError:0];

    v6 = v9;
  }

  else
  {
    if (qword_10038BC90 != -1)
    {
      sub_100248908();
    }

    v20 = qword_10038BC98;
    if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "ReplayValidateSelf: failed to parse cached queryRequest for requestId %{public}@: %@", buf, 0x16u);
    }

    [*(*(*(a1 + 104) + 8) + 40) setResult:@"Failed"];
    [*(*(*(a1 + 104) + 8) + 40) setError:v6];
    v22 = [*(a1 + 48) dataStore];
    [v22 deleteObject:v3];

    v8 = [*(a1 + 48) dataStore];
    [v8 persistWithError:0];
  }
}

void sub_100034938(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003497C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000349C0(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100034D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100034D58(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100034D9C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v44 = a3;
  v8 = a4;
  v49 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v54 = v7;
  v46 = v8;
  if (!v7 || v8)
  {
    if (qword_10038BCA0 != -1)
    {
      sub_100248944();
    }

    v41 = qword_10038BCA8;
    if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v72 = v46;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "ValidateSelf: failed to fetch self verification info: %@", buf, 0xCu);
    }

    [WeakRetained setError:{v46, v44}];
    group = [WeakRetained operationQueue];
    v50 = [WeakRetained finishedOp];
    [group addOperation:v50];
  }

  else
  {
    if (qword_10038BCA0 != -1)
    {
      sub_100248958();
    }

    v10 = qword_10038BCA8;
    if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEBUG))
    {
      v11 = v10;
      v12 = [v7 uriToServerLoggableDatas];
      v13 = [v12 allKeys];
      *buf = 138412290;
      v72 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ValidateSelf: got self verification info for %@", buf, 0xCu);
    }

    [WeakRetained setSelfInfo:{v7, v44}];
    v14 = [v7 uriToServerLoggableDatas];
    v15 = [v14 count] == 0;

    if (v15)
    {
      if (qword_10038BCA0 != -1)
      {
        sub_1002489BC();
      }

      v42 = qword_10038BCA8;
      if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "FetchKTSelf: no uriToServerLoggableDatas", buf, 2u);
      }

      v43 = [NSError errorWithDomain:kTransparencyErrorServer code:-336 userInfo:0];
      [WeakRetained setError:v43];

      group = [WeakRetained operationQueue];
      v50 = [WeakRetained finishedOp];
      [group addOperation:v50];
    }

    else
    {
      v48 = +[NSMutableSet set];
      group = dispatch_group_create();
      v16 = [WeakRetained deps];
      v17 = [v16 stateMonitor];
      [v17 setPendingChanges:1];

      v18 = [v54 syncedLoggableDatas];
      v50 = [TransparencyManagedDataStore serializeLoggableDatas:v18];

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = [v54 uriToServerLoggableDatas];
      v52 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v52)
      {
        v51 = *v67;
        do
        {
          v19 = 0;
          do
          {
            if (*v67 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v66 + 1) + 8 * v19);
            v21 = [v54 uriToServerLoggableDatas];
            v22 = [v21 objectForKeyedSubscript:v20];

            v23 = [KTURI alloc];
            v24 = [WeakRetained application];
            v25 = [v23 initWithIDSURL:v20 application:v24];

            v26 = [v22 accountKey];
            LODWORD(v24) = v26 == 0;

            if (v24)
            {
              v35 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-389 description:@"accountKey is nil for KTVerificationInfo"];
              v36 = [WeakRetained selfErrors];
              v37 = [v25 redactedDescription];
              [v36 setObject:v35 forKeyedSubscript:v37];
            }

            else
            {
              v27 = [v22 accountKey];
              [v48 addObject:v27];

              dispatch_group_enter(group);
              if (qword_10038BCA0 != -1)
              {
                sub_10024896C();
              }

              v28 = qword_10038BCA8;
              if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEBUG))
              {
                v29 = v28;
                v30 = [v25 redactedDescription];
                *buf = 138412290;
                v72 = v30;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "ValidateSelf: getting KT data for %@", buf, 0xCu);
              }

              v31 = [WeakRetained deps];
              v32 = [v31 smDataStore];
              v33 = [WeakRetained application];
              v34 = [v25 ktURI];
              v58[0] = _NSConcreteStackBlock;
              v58[1] = 3221225472;
              v58[2] = sub_1000356A0;
              v58[3] = &unk_1003195D0;
              v59 = v25;
              v60 = WeakRetained;
              v61 = group;
              objc_copyWeak(&v65, (v49 + 32));
              v62 = v22;
              v63 = v50;
              v64 = v54;
              [v32 fetchKTInfoForApplication:v33 uri:v34 complete:v58];

              objc_destroyWeak(&v65);
              v35 = v59;
            }

            v19 = v19 + 1;
          }

          while (v52 != v19);
          v52 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
        }

        while (v52);
      }

      if (qword_10038BCA0 != -1)
      {
        sub_100248994();
      }

      v38 = qword_10038BCA8;
      if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "ValidateSelf: waiting for uris to finish validating", buf, 2u);
      }

      v39 = [WeakRetained uriQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000367A0;
      block[3] = &unk_1003180E0;
      v56 = v48;
      v57 = WeakRetained;
      v40 = v48;
      dispatch_group_notify(group, v39, block);
    }
  }
}

void sub_100035590(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000355D4(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100035618(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003565C(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000356A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v46 = a5;
  v14 = a6;
  v15 = v14;
  v48 = v11;
  v49 = v12;
  v47 = v14;
  if (v11 && v12 && v13 && !v14)
  {
    v16 = [*(a1 + 40) cachedTimes];
    v17 = [*(a1 + 32) redactedDescription];
    [v16 setObject:v13 forKeyedSubscript:v17];

    WeakRetained = objc_loadWeakRetained((a1 + 80));
    if (qword_10038BCA0 != -1)
    {
      sub_1002489E4();
    }

    v18 = qword_10038BCA8;
    if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      *buf = 138412546;
      v64 = v19;
      v65 = 2114;
      v66 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "ValidateSelf: creating requestId for %@, cachedTime: %{public}@", buf, 0x16u);
    }

    v20 = [*(a1 + 56) serverLoggableDatas];
    v44 = [TransparencyManagedDataStore serializeLoggableDatas:v20];

    v21 = [WeakRetained deps];
    v22 = [v21 dataStore];
    v23 = [*(a1 + 32) ktURI];
    v24 = [WeakRetained application];
    v25 = [*(a1 + 56) accountKey];
    v26 = *(a1 + 64);
    v27 = [*(a1 + 56) idsResponseTime];
    v62 = 0;
    v45 = [v22 createRequestWithUri:v23 application:v24 accountKey:v25 serverData:v44 syncedData:v26 idsResponseTime:v27 queryRequest:v48 queryResponse:v49 responseDate:v13 type:1 clientId:0 error:&v62];
    v28 = v62;

    if (v45)
    {
      if (qword_10038BCA0 != -1)
      {
        sub_1002489F8();
      }

      v29 = qword_10038BCA8;
      if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        *buf = 138544130;
        v64 = v45;
        v65 = 2160;
        v66 = 1752392040;
        v67 = 2112;
        v68 = v30;
        v69 = 2114;
        v70 = v13;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "ValidateSelf: created requestId %{public}@ for %{mask.hash}@, cachedTime: %{public}@", buf, 0x2Au);
      }

      v31 = [WeakRetained deps];
      v32 = [v31 contextStore];
      v33 = [WeakRetained application];
      v34 = [WeakRetained deps];
      v35 = [v34 logClient];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100035E28;
      v51[3] = &unk_1003195A8;
      v52 = v45;
      v53 = WeakRetained;
      v54 = *(a1 + 32);
      v55 = *(a1 + 48);
      objc_copyWeak(&v61, (a1 + 80));
      v56 = v48;
      v57 = v49;
      v58 = v46;
      v59 = v13;
      v60 = *(a1 + 72);
      [v32 contextForApplication:v33 logClient:v35 fetchState:1 completionHandler:v51];

      objc_destroyWeak(&v61);
    }

    else
    {
      if (qword_10038BCA0 != -1)
      {
        sub_100248A20();
      }

      v40 = qword_10038BCA8;
      if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 32);
        *buf = 141558530;
        v64 = 1752392040;
        v65 = 2112;
        v66 = v41;
        v67 = 2112;
        v68 = v28;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "ValidateSelf: failed to save KTRequest for %{mask.hash}@: %@", buf, 0x20u);
      }

      v42 = [WeakRetained selfErrors];
      v43 = [*(a1 + 32) redactedDescription];
      [v42 setObject:v28 forKeyedSubscript:v43];

      dispatch_group_leave(*(a1 + 48));
    }
  }

  else
  {
    if (qword_10038BCA0 != -1)
    {
      sub_100248A48();
    }

    v36 = qword_10038BCA8;
    if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
    {
      v37 = *(a1 + 32);
      *buf = 141558530;
      v64 = 1752392040;
      v65 = 2112;
      v66 = v37;
      v67 = 2112;
      v68 = v15;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "ValidateSelf: failed to fetch KT data for %{mask.hash}@: %@", buf, 0x20u);
    }

    v38 = [*(a1 + 40) selfErrors];
    v39 = [*(a1 + 32) redactedDescription];
    [v38 setObject:v47 forKeyedSubscript:v39];

    dispatch_group_leave(*(a1 + 48));
  }
}

void sub_100035D18(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100035D5C(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100035DA0(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100035DE4(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100035E28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (qword_10038BCA0 != -1)
    {
      sub_100248A84();
    }

    v19 = qword_10038BCA8;
    if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 138543618;
      v38 = v20;
      v39 = 2112;
      v40 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "ValidateSelf: failed to get validation context for validating requestId %{public}@: %@", buf, 0x16u);
    }

    v21 = [*(a1 + 40) selfErrors];
    v22 = [*(a1 + 48) redactedDescription];
    [v21 setObject:v7 forKeyedSubscript:v22];

    dispatch_group_leave(*(a1 + 56));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 104));
    v9 = [WeakRetained deps];
    v10 = [v9 dataStore];
    v11 = *(a1 + 32);
    v36 = 0;
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100036198;
    v26 = &unk_100319560;
    v27 = *(a1 + 64);
    v28 = *(a1 + 32);
    v29 = WeakRetained;
    v30 = *(a1 + 48);
    v31 = *(a1 + 72);
    v32 = *(a1 + 80);
    v33 = *(a1 + 88);
    v34 = v5;
    v35 = *(a1 + 96);
    v12 = [v10 performAndWaitForRequestId:v11 error:&v36 block:&v23];
    v13 = v36;

    if ((v12 & 1) == 0)
    {
      if (qword_10038BCA0 != -1)
      {
        sub_100248A5C();
      }

      v14 = qword_10038BCA8;
      if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 48);
        v17 = v14;
        v18 = [v16 redactedDescription];
        *buf = 138543618;
        v38 = v15;
        v39 = 2112;
        v40 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "ValidateSelf: failed to find request for requestId %{public}@ for %@", buf, 0x16u);
      }
    }

    dispatch_group_leave(*(a1 + 56));
  }
}

void sub_100036154(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100036198(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v44 = 0;
  v5 = [(TransparencyGPBMessage *)QueryRequest parseFromData:v4 error:&v44];
  v6 = v44;
  if (v5)
  {
    v7 = *(a1 + 64);
    v43 = v6;
    v8 = [(TransparencyGPBMessage *)QueryResponse parseFromData:v7 error:&v43];
    v38 = v43;

    v9 = *(a1 + 72);
    if (v9)
    {
      [v8 setMetadataValue:v9 key:kTransparencyResponseMetadataKeyServerHint];
    }

    v10 = [*(a1 + 80) kt_dateToString];
    [v8 setMetadataValue:v10 key:@"ResponseTime"];

    v11 = [v8 uriWitness];
    v12 = [v11 output];
    [*(a1 + 56) setKtURIVRF:v12];

    v13 = [*(a1 + 48) deps];
    v14 = [v13 cloudRecords];

    if (v14)
    {
      v15 = [_TtC13transparencyd19KTCloudRecordsCache alloc];
      v16 = [*(a1 + 48) deps];
      v17 = [v16 cloudRecords];
      v14 = [(KTCloudRecordsCache *)v15 initWithRecords:v17];
    }

    v18 = [*(a1 + 48) isOptInSelfValidation];
    v19 = *(a1 + 88);
    v20 = *(a1 + 96);
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v21 = [v19 validateSelfKTRequest:v3 queryRequest:v5 queryResponse:v8 selfVerificationInfo:v20 optInCheck:v18 cloudDevices:v14 transparentData:&v42 loggableDatas:&v41 error:&v40];
    v39 = v42;
    v22 = v41;
    v23 = v40;
    if (v21 == 2)
    {
      if (qword_10038BCA0 != -1)
      {
        sub_100248A98();
      }

      v24 = qword_10038BCA8;
      if (!os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v46 = v23;
      v25 = "ValidateSelf: self verification pending: %@";
    }

    else
    {
      if (v21)
      {
        goto LABEL_22;
      }

      if (qword_10038BCA0 != -1)
      {
        sub_100248AC0();
      }

      v24 = qword_10038BCA8;
      if (!os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v46 = v23;
      v25 = "ValidateSelf: self verification failed: %@";
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);
LABEL_22:
    v28 = v5;
    v29 = v3;
    v30 = [*(a1 + 48) transparentDatas];
    v31 = [*(a1 + 56) ktURI];
    [v30 setObject:v39 forKeyedSubscript:v31];

    v32 = [NSNumber numberWithUnsignedInteger:v21];
    v33 = [*(a1 + 48) selfResults];
    v34 = [*(a1 + 56) ktURI];
    [v33 setObject:v32 forKeyedSubscript:v34];

    if (v23)
    {
      v35 = [*(a1 + 48) selfErrors];
      v36 = [*(a1 + 56) ktURI];
      [v35 setObject:v23 forKeyedSubscript:v36];
    }

    v37 = [*(a1 + 48) selfInfo];
    [v37 updateUri:*(a1 + 56) serverLoggableDatas:v22];

    v6 = v38;
    v3 = v29;
    v5 = v28;
    goto LABEL_25;
  }

  if (qword_10038BCA0 != -1)
  {
    sub_100248AE8();
  }

  v26 = qword_10038BCA8;
  if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
  {
    v27 = *(a1 + 40);
    *buf = 138543618;
    v46 = v27;
    v47 = 2112;
    v48 = v6;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "ValidateSelf: failed to parse cached queryRequest for requestId %{public}@: %@", buf, 0x16u);
  }

  v8 = [*(a1 + 48) selfErrors];
  v14 = [*(a1 + 56) redactedDescription];
  [v8 setObject:v6 forKeyedSubscript:v14];
LABEL_25:
}

void sub_10003664C(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100036690(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000366D4(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100036718(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003675C(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000367A0(uint64_t a1)
{
  if ([*(a1 + 32) count] != 1)
  {
    v44 = @"publicKeys";
    v2 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
    v45 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v4 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-379 underlyingError:0 userinfo:v3 description:@"public key count is not expected 1"];
    v5 = [*(a1 + 40) selfErrors];
    [v5 setObject:v4 forKeyedSubscript:@"publicKeys"];
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100036CA8;
  v39[3] = &unk_100319638;
  v39[4] = *(a1 + 40);
  v6 = sub_100036CA8(v39);
  v7 = [*(a1 + 40) deps];
  v8 = [v7 cloudRecords];
  if ([v8 disableKTSyncabledKVSStore] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isOptInSelfValidation"))
  {
    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_12;
  }

  v9 = [*(a1 + 40) deps];
  v10 = [v9 accountKeyService];
  v11 = [v10 accountKeyService:kKTApplicationIdentifierIDS];
  v38 = 0;
  v8 = [v11 publicPublicKey:&v38];
  v12 = v38;

  if (!v8)
  {
    v15 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-271 underlyingError:v12 userinfo:0 description:@"no opt-in state due to missing account key"];
    v7 = v12;
    goto LABEL_10;
  }

  v13 = *(a1 + 40);
  v37 = v12;
  v14 = [v13 validateOptInStatusWithAccountKey:v8 error:&v37];
  v7 = v37;

  if ((v14 & 1) == 0)
  {
    v15 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-364 underlyingError:v7 userinfo:0 description:@"optInMismatch"];
LABEL_10:
    v16 = [*(a1 + 40) selfErrors];
    [v16 setObject:v15 forKeyedSubscript:@"optIn"];
  }

LABEL_11:

LABEL_12:
  if (qword_10038BCA0 != -1)
  {
    sub_100248B10();
  }

  v17 = qword_10038BCA8;
  if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 40);
    v19 = v17;
    v20 = [v18 selfErrors];
    *buf = 138412290;
    v43 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ValidateSelf: finished: %@", buf, 0xCu);
  }

  v21 = [*(a1 + 40) selfErrors];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [NSMutableString stringWithFormat:@"uris failed: "];
    v24 = [*(a1 + 40) selfErrors];
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_100036EE4;
    v35 = &unk_100319680;
    v36 = v23;
    v25 = v23;
    [v24 enumerateKeysAndObjectsUsingBlock:&v32];

    v40[0] = NSMultipleUnderlyingErrorsKey;
    v26 = [*(a1 + 40) selfErrors];
    v27 = [v26 allValues];
    v40[1] = NSLocalizedDescriptionKey;
    v41[0] = v27;
    v41[1] = v25;
    v28 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];

    v29 = [NSError errorWithDomain:@"TransparencyErrorVerify" code:-320 userInfo:v28];
    [*(a1 + 40) setError:v29];
  }

  [*(a1 + 40) fillStatus];
  v30 = [*(a1 + 40) operationQueue];
  v31 = [*(a1 + 40) finishedOp];
  [v30 addOperation:v31];
}

uint64_t sub_100036CA8(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) transparentDatas];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(a1 + 32) transparentDatas];
        v9 = [v8 objectForKeyedSubscript:v7];

        if (!v9)
        {
          if (qword_10038BCA0 != -1)
          {
            sub_100248B38();
          }

          v11 = qword_10038BCA8;
          if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
          {
            *buf = 141558274;
            v18 = 1752392040;
            v19 = 2112;
            v20 = v7;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No transparentData for URI %{mask.hash}@, skipping opt-in checks", buf, 0x16u);
          }

          v10 = 1;
          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

void sub_100036E5C(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100036EA0(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_100036F14(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1002D46B8[a1];
  }
}

void sub_100037518(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003755C(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003779C(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000377E0(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100037908(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v8 = [v6 accountOptInHistory:*(a1 + 32)];
  v9 = v8;
  if (v8)
  {
    v18 = a1;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = v9;
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v13);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v15 timestampMs] / 1000.0);
          v17 = [[KTOptIOLogState alloc] initWithURI:v5 smtTimestamp:v16 optIn:{objc_msgSend(v15, "optIn")}];
          [v7 addObject:v17];
        }

        v9 = v13;
        v11 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [*(v18 + 40) setObject:v7 forKeyedSubscript:v5];
  }
}

void sub_100038218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100038244(id a1)
{
  qword_10038BCA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_100038288(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000382A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [v3 kt_hexString];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v10 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:v3 error:0];

    v7 = [v10 publicAccountIdentity];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void sub_100038968(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000389AC(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100038B84(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100038BC8(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100038F40(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100038F84(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100038FC8(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003900C(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100039050(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003927C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 serverLoggableDatas];
    v51 = 0;
    v8 = [TransparencyManagedDataStore deserializeLoggableDatas:v7 error:&v51];
    v9 = v51;

    [*(a1 + 32) setSelfDevices:v8];
    if (!v8)
    {
      if (qword_10038BCB0 != -1)
      {
        sub_100248D2C();
      }

      v10 = qword_10038BCB8;
      if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "FillStatus: no self loggable datas: %@", buf, 0xCu);
      }
    }

    v11 = [v5 verificationResult];
    if (v11)
    {
      if (v11 == 1)
      {
        if (qword_10038BCB0 != -1)
        {
          sub_100248DCC();
        }

        v12 = qword_10038BCB8;
        if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FillStatus: setting selfStatus to OK", buf, 2u);
        }

        v13 = 0;
      }

      else
      {
        if (qword_10038BCB0 != -1)
        {
          sub_100248DF4();
        }

        v21 = qword_10038BCB8;
        if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = 2;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "FillStatus: setting selfStatus to Unavailable", buf, 2u);
        }

        else
        {
          v13 = 2;
        }
      }
    }

    else
    {
      v41 = v9;
      v42 = a1;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v15 = v8;
      v16 = [v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v48;
        v13 = 3;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v47 + 1) + 8 * i);
            if (![v20 result])
            {
              if (qword_10038BCB0 != -1)
              {
                sub_100248D54();
              }

              v22 = qword_10038BCB8;
              if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_ERROR))
              {
                v23 = v22;
                v24 = [v20 deviceID];
                v25 = [v20 deviceIdHash];
                *buf = 138412546;
                v54 = v24;
                v55 = 2112;
                v56 = v25;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "FillStatus: failing device is: %@[%@]", buf, 0x16u);
              }

              v13 = 1;
              goto LABEL_39;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v13 = 3;
      }

LABEL_39:

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v26 = [v5 failures];
      v27 = [v26 allObjects];

      v28 = [v27 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v28)
      {
        v29 = v28;
        v39 = v8;
        v40 = v6;
        v30 = *v44;
        while (2)
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v44 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v43 + 1) + 8 * j);
            v33 = [v32 errorDomain];
            if ([v33 isEqual:@"com.apple.Transparency"])
            {
              if ([v32 errorCode] == 7)
              {

LABEL_54:
                if (qword_10038BCB0 != -1)
                {
                  sub_100248D7C();
                }

                v9 = v41;
                a1 = v42;
                v8 = v39;
                v35 = qword_10038BCB8;
                if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v54 = v32;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "FillStatus: opt-in failure %@", buf, 0xCu);
                }

                v13 = 4;
                v6 = v40;
                goto LABEL_59;
              }

              v34 = [v32 errorCode];

              if (v34 == 10)
              {
                goto LABEL_54;
              }
            }

            else
            {
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }

        v8 = v39;
        v6 = v40;
      }

      a1 = v42;
      v9 = v41;
LABEL_59:

      if (qword_10038BCB0 != -1)
      {
        sub_100248DA4();
      }

      v36 = qword_10038BCB8;
      if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = [NSNumber numberWithUnsignedInteger:v13];
        *buf = 138412290;
        v54 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "FillStatus: setting selfStatus to failure type %@", buf, 0xCu);
      }
    }

    [*(a1 + 32) setSelfStatus:v13];
  }

  else
  {
    if (qword_10038BCB0 != -1)
    {
      sub_100248E1C();
    }

    v14 = qword_10038BCB8;
    if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "FillStatus: no recent self validation: %@", buf, 0xCu);
    }

    [*(a1 + 32) setSelfStatus:2];
  }
}

void sub_100039894(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000398D8(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003991C(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100039960(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000399A4(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000399E8(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100039A2C(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100039A70(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100039C8C(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100039CD0(id a1)
{
  qword_10038BCB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003A2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003A2F4(id a1)
{
  qword_10038BCC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003A338(id a1)
{
  qword_10038BCC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003A37C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    if (qword_10038BCC0 != -1)
    {
      sub_100248E94();
    }

    v8 = qword_10038BCC8;
    if (os_log_type_enabled(qword_10038BCC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "FillStatus: failed to get context: %@", buf, 0xCu);
    }

    v9 = [WeakRetained operationQueue];
    v10 = [WeakRetained finishedOp];
    [v9 addOperation:v10];
  }

  else
  {
    if (qword_10038BCC0 != -1)
    {
      sub_100248EA8();
    }

    v11 = qword_10038BCC8;
    if (os_log_type_enabled(qword_10038BCC8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [WeakRetained reason];
      *buf = 141558530;
      v19 = 1752392040;
      v20 = 2112;
      v21 = v12;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "querying KT server for opt-in state of %{mask.hash}@ for reason %{public}@", buf, 0x20u);
    }

    v15 = [*(a1 + 32) prefixedURI];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003A670;
    v16[3] = &unk_100319B08;
    objc_copyWeak(&v17, (a1 + 40));
    [v5 optInStateForUri:v15 completionHandler:v16];

    objc_destroyWeak(&v17);
  }
}

void sub_10003A5E8(id a1)
{
  qword_10038BCC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003A62C(id a1)
{
  qword_10038BCC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003A670(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    if (qword_10038BCC0 != -1)
    {
      sub_100248EBC();
    }

    v7 = qword_10038BCC8;
    if (os_log_type_enabled(qword_10038BCC8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "FillStatus: failed to check server opt-in: %@", &v13, 0xCu);
    }

LABEL_11:
    [WeakRetained retry];
    goto LABEL_12;
  }

  if (qword_10038BCC0 != -1)
  {
    sub_100248ED0();
  }

  v8 = qword_10038BCC8;
  if (os_log_type_enabled(qword_10038BCC8, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "FillStatus: setting server opt-in state to %lu", &v13, 0xCu);
  }

  v9 = [WeakRetained deps];
  v10 = [v9 stateMonitor];
  [v10 setServerOptInState:a2];

  if (a2 == 2)
  {
    goto LABEL_11;
  }

LABEL_12:
  v11 = [WeakRetained operationQueue];
  v12 = [WeakRetained finishedOp];
  [v11 addOperation:v12];
}

void sub_10003A828(id a1)
{
  qword_10038BCC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003A86C(id a1)
{
  qword_10038BCC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003A9F4(id a1)
{
  qword_10038BCC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003AF04(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003AF48(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setResult:v3];
  if (qword_10038BCD0 != -1)
  {
    sub_100248F0C();
  }

  v4 = qword_10038BCD8;
  if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "opt-in result from IDS: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) operationQueue];
  v6 = [*(a1 + 32) finishedOp];
  [v5 addOperation:v6];
}

void sub_10003B054(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003B3FC(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003BA40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_10003BA68(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003BAB0(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003BAF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = [*(a1 + 32) error];
    [*(a1 + 40) setError:v3];

    v4 = [WeakRetained optInStates];
    [v4 completedCurrentTarget];

LABEL_5:
    v7 = [WeakRetained operationQueue];
    [v7 addOperation:*(a1 + 48)];
    goto LABEL_6;
  }

  if ([*(a1 + 40) targetState] == 2)
  {
    [WeakRetained clearOptInStateAndPushToCloud];
    v5 = [WeakRetained deps];
    v6 = [v5 stateMonitor];
    [v6 setOptInState:0 everOptIn:1];

    [*(a1 + 40) setTargetState:1];
    [WeakRetained setNextState:@"ValidateSelfOptIn"];
    goto LABEL_5;
  }

  v8 = [WeakRetained applicationId];
  v7 = [TransparencyAnalytics formatEventName:@"OptInServerSet" application:v8];

  v9 = [*(a1 + 32) result];
  [WeakRetained processResponse:v9 watcher:*(a1 + 40) finishOp:*(a1 + 48)];

  v10 = [WeakRetained deps];
  v11 = [v10 logger];
  v12 = [WeakRetained error];
  [v11 logResultForEvent:v7 hardFailure:1 result:v12];

  v13 = [WeakRetained error];
  [*(a1 + 40) setError:v13];

  v14 = [*(a1 + 40) error];

  if (!v14)
  {
    v15 = [WeakRetained deps];
    v16 = [v15 stateMonitor];
    v17 = [*(a1 + 40) targetState] == 1 || objc_msgSend(*(a1 + 40), "targetState") == 3;
    [v16 setOptInState:v17 everOptIn:1];
  }

  v18 = [WeakRetained optInStates];
  [v18 completedCurrentTarget];

  v19 = [WeakRetained operationQueue];
  [v19 addOperation:*(a1 + 48)];

LABEL_6:
}

void sub_10003CA9C(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003CAE0(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = [a2 prefixedURI];
  v6 = [a1[4] verifyResponse:v5 uri:v7 expectedState:{objc_msgSend(a1[5], "targetState") != 0}];

  [a1[6] setObject:v6 forKeyedSubscript:v7];
}

void sub_10003CB80(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003CBC4(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003CC08(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003CC4C(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003CC90(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003CCD4(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003CFA8(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003D2F4(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

intptr_t sub_10003D338(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 deps];
  v6 = [v5 logger];
  [v6 logResultForEvent:@"optInSync" hardFailure:1 result:v4];

  v7 = *(a1 + 40);

  return dispatch_semaphore_signal(v7);
}

void sub_10003D4E4(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003D628(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003DA4C(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003DA90(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003DAD4(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003E2F0(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003E334(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003E378(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003E3BC(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003E400(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003E444(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003E488(id a1)
{
  qword_10038BCD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003EDB0(id a1)
{
  qword_10038BCE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003EDF4(id a1)
{
  qword_10038BCE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003EE38(id a1)
{
  qword_10038BCE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003EE7C(id a1)
{
  qword_10038BCE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003EEC0(id a1)
{
  qword_10038BCE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003F074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003F0A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003F0BC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 40) + 8);
    obj = *(v8 + 40);
    v9 = [WeakRetained verifyMapHeadMMDs:v5 application:v7 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (v9)
    {
      v10 = [NSString stringWithFormat:@"%@-SmhMMD", *(a1 + 32)];
      v11 = [WeakRetained failedSMHs];
      [v11 setObject:v9 forKeyedSubscript:v10];

      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = [WeakRetained errors];
      [v13 setObject:v12 forKeyedSubscript:v10];
    }

    v14 = [WeakRetained deps];
    v15 = [v14 dataStore];
    v16 = *(*(a1 + 40) + 8);
    v22 = *(v16 + 40);
    v17 = [v15 persistAndRefaultObjects:v5 error:&v22];
    objc_storeStrong((v16 + 40), v22);

    if ((v17 & 1) == 0)
    {
      if (qword_10038BCE0 != -1)
      {
        sub_100249358();
      }

      v18 = qword_10038BCE8;
      if (os_log_type_enabled(qword_10038BCE8, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v25 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "VerifyMapHeadMMD: failed to save MMD verified SMHs: %@", buf, 0xCu);
      }

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        v20 = [WeakRetained deps];
        v21 = [v20 dataStore];
        [v21 reportCoreDataPersistEventForLocation:@"verifyMapHeadMMDs" underlyingError:*(*(*(a1 + 40) + 8) + 40)];
      }

      *a3 = 1;
    }
  }
}

void sub_10003F324(id a1)
{
  qword_10038BCE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003F810(id a1)
{
  qword_10038BCE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000401F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100040250(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100040294(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000402D8(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004031C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processDataOnQueue];
}

void sub_10004035C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) log];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v20 = 138412290;
    v21 = v6;
    v9 = "Failed to load Core Data stack: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v20 = 138412290;
    v21 = v5;
    v9 = "Load Core Data complete: %@";
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v9, &v20, 0xCu);
LABEL_7:

  v10 = *(a1 + 32);
  objc_sync_enter(v10);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 24);
  if (!v12)
  {
    __assert_rtn("[StaticKeyController initCloudDataStore:idsDelegate:configurationStore:notificationCenter:dew:complete:]_block_invoke", "StaticKeyController.m", 165, "storeCount >= 1");
  }

  *(v11 + 24) = v12 - 1;
  v13 = *(*(*(a1 + 48) + 8) + 24) == 0;
  objc_sync_exit(v10);

  if (v13)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = *(a1 + 32);
    v16 = [v15 cloudContainer];
    v17 = [v16 persistentStoreCoordinator];
    [v14 addObserver:v15 selector:"remoteUpdate:" name:NSPersistentStoreRemoteChangeNotification object:v17];

    v18 = [*(a1 + 32) queue];
    dispatch_resume(v18);

    (*(*(a1 + 40) + 16))(*(a1 + 40), v19);
  }
}

void sub_100040934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100040964(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processDataOnQueue];
}

void sub_1000409A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Failed to load Core Data stack: %@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100040AFC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) numberOfCoalescedNotifications];
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "processCoreDataHistory: coalesced %ld notifications.", &v5, 0xCu);
  }

  [*(a1 + 32) setNumberOfCoalescedNotifications:0];
  v3 = objc_autoreleasePoolPush();
  v4 = os_transaction_create();
  [*(a1 + 32) processCoreDataHistory];

  objc_autoreleasePoolPop(v3);
}

void sub_100040C98(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = [v2 userInfo];
    v5 = 138412546;
    v6 = v2;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "remoteUpdate: %@/%@", &v5, 0x16u);
  }

  [*(a1 + 40) setNumberOfCoalescedNotifications:{objc_msgSend(*(a1 + 40), "numberOfCoalescedNotifications") + 1}];
  v4 = [*(a1 + 40) remoteUpdateNFS];
  [v4 trigger];
}

void sub_1000410E0(uint64_t a1)
{
  v1 = a1;
  v2 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:*(a1 + 32)];
  [v2 setResultType:5];
  v3 = *(v1 + 40);
  v58 = 0;
  v4 = [v3 executeRequest:v2 error:&v58];
  v5 = v58;
  v6 = v5;
  if (v4)
  {
    v40 = v4;
    v41 = v2;
    v7 = [v4 result];
    v8 = [*(v1 + 48) fetchContactsSyncToken];

    if (!v8)
    {
      if (qword_10038BCF0 != -1)
      {
        sub_100249420();
      }

      v9 = qword_10038BCF8;
      if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "processCoreDataHistory no previously existing sync token", buf, 2u);
      }

      v10 = [*(v1 + 48) contactStore];
      v11 = [*(v1 + 48) configurationStore];
      [v10 fetchAndStoreContactsSyncTokenWithConfigStore:v11];
    }

    v39 = v6;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v7;
    v44 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    v12 = 0;
    if (v44)
    {
      v43 = *v55;
      v13 = NSNotification_ptr;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          v46 = v15;
          if (*v55 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v47 = v14;
          v16 = *(*(&v54 + 1) + 8 * v14);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v45 = v16;
          v17 = [v16 changes];
          v18 = [v17 countByEnumeratingWithState:&v50 objects:v63 count:16];
          if (v18)
          {
            v19 = v18;
            v48 = v17;
            v49 = *v51;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v51 != v49)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v50 + 1) + 8 * i);
                v22 = [v21 changedObjectID];
                v23 = [v22 entityName];
                v24 = [v23 isEqual:@"STStaticKeyHandle"];

                if (v24)
                {
                  v25 = [v21 changeType];
                  if (v25 >= 2)
                  {
                    if (v25 == 2)
                    {
                      v29 = [v21 tombstone];
                      v33 = [v29 objectForKeyedSubscript:@"idsID"];
                      goto LABEL_29;
                    }

                    v33 = 0;
                  }

                  else
                  {
                    v26 = v1;
                    v27 = *(v1 + 40);
                    v28 = [v21 changedObjectID];
                    v29 = [v27 existingObjectWithID:v28 error:0];

                    v30 = [v29 entity];
                    v31 = [v30 name];
                    v32 = [v31 isEqual:@"STStaticKeyHandle"];

                    if (v32)
                    {
                      v33 = [v29 valueForKey:@"idsID"];
                    }

                    else
                    {
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                      {
                        v34 = [v21 changedObjectID];
                        v35 = [v34 entityName];
                        *buf = 138412546;
                        v60 = @"STStaticKeyHandle";
                        v61 = 2112;
                        v62 = v35;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "not %@: %@", buf, 0x16u);
                      }

                      v33 = 0;
                    }

                    v1 = v26;
                    v13 = NSNotification_ptr;
                    v17 = v48;
LABEL_29:
                  }

                  v36 = v13[10];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [*(v1 + 56) addObject:v33];
                  }

                  continue;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v50 objects:v63 count:16];
            }

            while (v19);
          }

          v12 = [v45 token];

          v14 = v47 + 1;
          v15 = v12;
        }

        while ((v47 + 1) != v44);
        v44 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v44);
    }

    if ([obj count])
    {
      v37 = [*(v1 + 48) dataFromHistoryToken:v12];
      v38 = [*(v1 + 48) configurationStore];
      [v38 setSettingsData:@"CoreDataSyncToken" data:v37];
    }

    v4 = v40;
    v2 = v41;
    v6 = v39;
    goto LABEL_42;
  }

  if (v5)
  {
    obj = [*(v1 + 48) configurationStore];
    [obj setSettingsData:@"CoreDataSyncToken" data:0];
LABEL_42:
  }
}

void sub_100041618(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100041B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041B70(uint64_t a1)
{
  v2 = objc_alloc_init(NSCloudKitMirroringRequestOptions);
  v3 = [NSCloudKitMirroringImportRequest alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100041CC8;
  v13[3] = &unk_10031A170;
  v4 = *(a1 + 48);
  v13[4] = *(a1 + 32);
  v13[5] = v4;
  v5 = [v3 initWithOptions:v2 completionBlock:v13];
  v6 = *(a1 + 40);
  v12 = 0;
  v7 = [v6 executeRequest:v5 error:&v12];
  v8 = v12;

  v9 = [*(a1 + 32) log];
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "import request finished", v11, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100249448();
  }
}

void sub_100041CC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 success])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "import result: %@", &v5, 0xCu);
  }
}

void sub_100041EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041ED0(uint64_t a1)
{
  v2 = objc_alloc_init(NSCloudKitMirroringRequestOptions);
  v3 = [NSCloudKitMirroringExportRequest alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100042028;
  v13[3] = &unk_10031A170;
  v4 = *(a1 + 48);
  v13[4] = *(a1 + 32);
  v13[5] = v4;
  v5 = [v3 initWithOptions:v2 completionBlock:v13];
  v6 = *(a1 + 40);
  v12 = 0;
  v7 = [v6 executeRequest:v5 error:&v12];
  v8 = v12;

  v9 = [*(a1 + 32) log];
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "export request finished", v11, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1002494B8();
  }
}

void sub_100042028(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 success])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "export result: %@", &v5, 0xCu);
  }
}

id sub_1000421D4(uint64_t a1)
{
  [*(a1 + 32) importFromCloud];
  [*(a1 + 32) exportToCloud];
  v2 = *(a1 + 32);

  return [v2 consumeContactsChangeHistory];
}

void sub_100042490(uint64_t a1)
{
  v2 = objc_alloc_init(NSCloudKitMirroringRequestOptions);
  v3 = [NSCloudKitMirroringResetZoneRequest alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000425E4;
  v12[3] = &unk_10031A1C0;
  v12[4] = *(a1 + 32);
  v4 = [v3 initWithOptions:v2 completionBlock:v12];
  v5 = *(a1 + 40);
  v11 = 0;
  v6 = [v5 executeRequest:v4 error:&v11];
  v7 = v11;

  v8 = [*(a1 + 32) log];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "reset request finished", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1002495D4();
  }
}

void sub_1000425E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "reset zone: %@", &v5, 0xCu);
  }
}

void sub_100042D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_100042D48(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_100042D8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100042DA4(uint64_t a1)
{
  v2 = +[KTCoreDataSTStaticKey fetchRequest];
  if (*(a1 + 32))
  {
    [NSPredicate predicateWithFormat:@"contactExternalIdentifier == %@", *(a1 + 32)];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"contactIdentifier == %@", *(a1 + 40)];
  }
  v3 = ;
  [v2 setPredicate:v3];

  v4 = +[NSMutableSet set];
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 80) + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v74 = v7;
  if ([v7 count])
  {
    v8 = [v7 firstObject];
    v9 = [v8 publicIdentity];
    v10 = [v9 isEqual:*(a1 + 56)];

    if (v10)
    {
      v11 = v8;
      v12 = 0;
    }

    else
    {
      v12 = [v8 publicIdentity];
      v11 = v8;
      [v8 setPublicIdentity:*(a1 + 56)];
    }

    v19 = *(a1 + 56);
    v18 = *(a1 + 64);
    v20 = *(a1 + 48);
    v21 = *(*(a1 + 80) + 8);
    v101 = *(v21 + 40);
    v17 = [v18 fetchHandles:v19 moc:v20 error:&v101];
    objc_storeStrong((v21 + 40), v101);
    v22 = *(a1 + 64);
    v23 = *(a1 + 48);
    v24 = *(*(a1 + 80) + 8);
    v100 = *(v24 + 40);
    v77 = v12;
    v25 = [v22 fetchHandles:v12 moc:v23 error:&v100];
    objc_storeStrong((v24 + 40), v100);
    if (v17)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v26 = v17;
      v27 = [v26 countByEnumeratingWithState:&v96 objects:v109 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v97;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v97 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [v4 addObject:*(*(&v96 + 1) + 8 * i)];
          }

          v28 = [v26 countByEnumeratingWithState:&v96 objects:v109 count:16];
        }

        while (v28);
      }
    }

    if (v25)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v31 = v25;
      v32 = [v31 countByEnumeratingWithState:&v92 objects:v108 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v93;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v93 != v34)
            {
              objc_enumerationMutation(v31);
            }

            [v4 addObject:*(*(&v92 + 1) + 8 * j)];
          }

          v33 = [v31 countByEnumeratingWithState:&v92 objects:v108 count:16];
        }

        while (v33);
      }
    }

    v7 = v74;
  }

  else
  {
    v13 = [*(a1 + 64) log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412290;
      v107 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "storeStaticKey will create new record, failed to fetch: %@", buf, 0xCu);
    }

    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;

    v11 = [NSEntityDescription insertNewObjectForEntityForName:@"STStaticKey" inManagedObjectContext:*(a1 + 48)];
    [v11 setPublicIdentity:*(a1 + 56)];
    +[NSMutableSet set];
    v77 = 0;
    v4 = v17 = v4;
  }

  if (*(a1 + 40))
  {
    [v11 setContactIdentifier:?];
  }

  if (*(a1 + 32))
  {
    [v11 setContactExternalIdentifier:?];
  }

  if (*(a1 + 72))
  {
    v72 = v11;
    v73 = v2;
    v76 = a1;
    v36 = +[NSMutableDictionary dictionary];
    v37 = +[NSMutableSet set];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v75 = v4;
    v38 = [v4 allObjects];
    v39 = [v38 countByEnumeratingWithState:&v88 objects:v105 count:16];
    if (!v39)
    {
      goto LABEL_50;
    }

    v40 = v39;
    v41 = *v89;
    while (1)
    {
      for (k = 0; k != v40; k = k + 1)
      {
        if (*v89 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v88 + 1) + 8 * k);
        v44 = [v43 idsID];
        v45 = [v36 objectForKeyedSubscript:v44];
        if (v45)
        {

LABEL_42:
          [v37 addObject:v43];
          continue;
        }

        if (v77)
        {
          v46 = [v43 publicIdentity];
          v47 = [v46 isEqualToString:v77];

          if (v47)
          {
            goto LABEL_42;
          }
        }

        else
        {
        }

        v48 = [v43 idsID];
        [v36 setObject:v43 forKeyedSubscript:v48];
      }

      v40 = [v38 countByEnumeratingWithState:&v88 objects:v105 count:16];
      if (!v40)
      {
LABEL_50:

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v49 = *(v76 + 72);
        v50 = [v49 countByEnumeratingWithState:&v84 objects:v104 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v85;
          do
          {
            for (m = 0; m != v51; m = m + 1)
            {
              if (*v85 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v84 + 1) + 8 * m);
              v55 = [v36 objectForKeyedSubscript:v54];

              if (v55)
              {
                [v36 setObject:0 forKeyedSubscript:v54];
              }

              else
              {
                v56 = [NSEntityDescription insertNewObjectForEntityForName:@"STStaticKeyHandle" inManagedObjectContext:*(v76 + 48)];
                [v56 setIdsID:v54];
                [v56 setValidated:0];
                [v56 setPublicIdentity:*(v76 + 56)];
                [v75 addObject:v56];
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v84 objects:v104 count:16];
          }

          while (v51);
        }

        v57 = [v36 allValues];
        [v37 addObjectsFromArray:v57];

        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v58 = v37;
        v59 = [v58 countByEnumeratingWithState:&v80 objects:v103 count:16];
        v2 = v73;
        v4 = v75;
        a1 = v76;
        if (v59)
        {
          v60 = v59;
          v61 = *v81;
          do
          {
            for (n = 0; n != v60; n = n + 1)
            {
              if (*v81 != v61)
              {
                objc_enumerationMutation(v58);
              }

              [*(v76 + 48) deleteObject:*(*(&v80 + 1) + 8 * n)];
            }

            v60 = [v58 countByEnumeratingWithState:&v80 objects:v103 count:16];
          }

          while (v60);
        }

        v7 = v74;
        v11 = v72;
        break;
      }
    }
  }

  v63 = *(a1 + 48);
  v64 = *(*(a1 + 80) + 8);
  v79 = *(v64 + 40);
  v65 = [v63 save:&v79];
  objc_storeStrong((v64 + 40), v79);
  if (v65)
  {
    v66 = *(a1 + 64);
    v67 = *(a1 + 48);
    v68 = *(*(a1 + 80) + 8);
    v78 = *(v68 + 40);
    v69 = [v66 mapStaticKeyToStoreEntry:v11 handles:v4 moc:v67 error:&v78];
    objc_storeStrong((v68 + 40), v78);
    v70 = *(*(a1 + 88) + 8);
    v71 = *(v70 + 40);
    *(v70 + 40) = v69;
  }
}

void sub_100043C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100043CC0(void *a1)
{
  v2 = +[KTCoreDataSTStaticKey fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"publicIdentity == %@", a1[4]];
  [v2 setPredicate:v3];

  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = [v6 firstObject];
  if (v7)
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = *(a1[7] + 8);
    v20 = *(v11 + 40);
    v12 = [v10 fetchHandles:v8 moc:v9 error:&v20];
    objc_storeStrong((v11 + 40), v20);
    v14 = a1[5];
    v13 = a1[6];
    v15 = *(a1[7] + 8);
    v19 = *(v15 + 40);
    v16 = [v13 mapStaticKeyToStoreEntry:v7 handles:v12 moc:v14 error:&v19];
    objc_storeStrong((v15 + 40), v19);
    v17 = *(a1[8] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

void sub_100043FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100044020(void *a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"STStaticKeyHandle"];
  v3 = [NSPredicate predicateWithFormat:@"idsID == %@", a1[4]];
  [v2 setPredicate:v3];

  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = [v6 firstObject];
  if (v7)
  {
    v8 = +[KTCoreDataSTStaticKey fetchRequest];
    v9 = [v7 publicIdentity];
    v10 = [NSPredicate predicateWithFormat:@"publicIdentity == %@", v9];
    [v8 setPredicate:v10];

    v11 = a1[5];
    v12 = *(a1[7] + 8);
    v28 = *(v12 + 40);
    v13 = [v11 executeFetchRequest:v8 error:&v28];
    objc_storeStrong((v12 + 40), v28);
    if (v13)
    {
      v14 = [v13 firstObject];
      if (v14)
      {
        v15 = a1[6];
        v16 = [v7 publicIdentity];
        v17 = a1[5];
        v18 = *(a1[7] + 8);
        v27 = *(v18 + 40);
        v19 = [v15 fetchHandles:v16 moc:v17 error:&v27];
        objc_storeStrong((v18 + 40), v27);

        v21 = a1[5];
        v20 = a1[6];
        v22 = *(a1[7] + 8);
        v26 = *(v22 + 40);
        v23 = [v20 mapStaticKeyToStoreEntry:v14 handles:v19 moc:v21 error:&v26];
        objc_storeStrong((v22 + 40), v26);
        v24 = *(a1[8] + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = v23;
      }
    }
  }
}

void sub_10004450C(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100044550(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100044594(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000445D8(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004478C(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1000447D0(uint64_t a1)
{
  if (qword_10038BCF0 != -1)
  {
    sub_1002496D0();
  }

  v2 = qword_10038BCF8;
  if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Doing initial cloud sync", v4, 2u);
  }

  return [*(a1 + 32) importFromCloud];
}

void sub_100044858(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100044A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100044AA0(void *a1)
{
  v2 = +[KTCoreDataSTStaticKey fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"contactIdentifier == %@", a1[4]];
  [v2 setPredicate:v3];

  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = [v6 firstObject];
  v8 = v7;
  if (v7)
  {
    v9 = a1[6];
    v10 = [v7 publicIdentity];
    v11 = a1[5];
    v12 = *(a1[7] + 8);
    v21 = *(v12 + 40);
    v13 = [v9 fetchHandles:v10 moc:v11 error:&v21];
    objc_storeStrong((v12 + 40), v21);

    v15 = a1[5];
    v14 = a1[6];
    v16 = *(a1[7] + 8);
    v20 = *(v16 + 40);
    v17 = [v14 mapStaticKeyToStoreEntry:v8 handles:v13 moc:v15 error:&v20];
    objc_storeStrong((v16 + 40), v20);
    v18 = *(a1[8] + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

void sub_100044E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100044E28(void *a1)
{
  v2 = +[KTCoreDataSTStaticKey fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"contactExternalIdentifier == %@", a1[4]];
  [v2 setPredicate:v3];

  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = [v6 firstObject];
  v8 = v7;
  if (v7)
  {
    v9 = a1[6];
    v10 = [v7 publicIdentity];
    v11 = a1[5];
    v12 = *(a1[7] + 8);
    v21 = *(v12 + 40);
    v13 = [v9 fetchHandles:v10 moc:v11 error:&v21];
    objc_storeStrong((v12 + 40), v21);

    v15 = a1[5];
    v14 = a1[6];
    v16 = *(a1[7] + 8);
    v20 = *(v16 + 40);
    v17 = [v14 mapStaticKeyToStoreEntry:v8 handles:v13 moc:v15 error:&v20];
    objc_storeStrong((v16 + 40), v20);
    v18 = *(a1[8] + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

void sub_100045348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100045378(uint64_t a1)
{
  v2 = +[KTCoreDataSTStaticKey fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"publicIdentity == %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v28 = v2;
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 40) deleteObject:*(*(&v35 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v9);
  }

  v12 = +[KTCoreDataSTHandle fetchRequest];
  v13 = [NSPredicate predicateWithFormat:@"publicIdentity == %@", *(a1 + 32)];
  [v12 setPredicate:v13];

  v14 = *(a1 + 40);
  v15 = *(*(a1 + 56) + 8);
  v34 = *(v15 + 40);
  v16 = [v14 executeFetchRequest:v12 error:&v34];
  objc_storeStrong((v15 + 40), v34);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        v23 = *(a1 + 48);
        v24 = [v22 idsID];
        [v23 addObject:v24];

        [*(a1 + 40) deleteObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v19);
  }

  v25 = *(a1 + 40);
  v26 = *(*(a1 + 56) + 8);
  v29 = *(v26 + 40);
  v27 = [v25 save:&v29];
  objc_storeStrong((v26 + 40), v29);
  if (v27)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

void sub_1000458C4(uint64_t a1)
{
  v2 = +[KTCoreDataSTStaticKey fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"contactIdentifier == %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = +[NSMutableSet set];
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v32 = v2;
  v7 = [v5 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = [v13 publicIdentity];
        [v4 addObject:v14];

        [*(a1 + 40) deleteObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }

  v15 = +[KTCoreDataSTHandle fetchRequest];
  v16 = [NSPredicate predicateWithFormat:@"publicIdentity IN %@", v4];
  [v15 setPredicate:v16];

  v17 = *(a1 + 40);
  v18 = *(*(a1 + 56) + 8);
  v38 = *(v18 + 40);
  v31 = v15;
  v19 = [v17 executeFetchRequest:v15 error:&v38];
  objc_storeStrong((v18 + 40), v38);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v34 + 1) + 8 * j);
        v26 = *(a1 + 48);
        v27 = [v25 idsID];
        [v26 addObject:v27];

        [*(a1 + 40) deleteObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v22);
  }

  v28 = *(a1 + 40);
  v29 = *(*(a1 + 56) + 8);
  v33 = *(v29 + 40);
  v30 = [v28 save:&v33];
  objc_storeStrong((v29 + 40), v33);
  if (v30)
  {
    *(*(*(a1 + 64) + 8) + 24) = [v8 count] != 0;
  }
}

void sub_100045E64(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v3 = +[KTCoreDataSTStaticKey fetchRequest];
  v4 = [NSPredicate predicateWithFormat:@"contactExternalIdentifier == %@", *(a1 + 32)];
  [v3 setPredicate:v4];

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v32 = v3;
  v7 = [v5 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = [v13 publicIdentity];
        [v2 addObject:v14];

        [*(a1 + 40) deleteObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }

  v15 = +[KTCoreDataSTHandle fetchRequest];
  v16 = [NSPredicate predicateWithFormat:@"publicIdentity IN %@", v2];
  [v15 setPredicate:v16];

  v17 = *(a1 + 40);
  v18 = *(*(a1 + 56) + 8);
  v38 = *(v18 + 40);
  v31 = v15;
  v19 = [v17 executeFetchRequest:v15 error:&v38];
  objc_storeStrong((v18 + 40), v38);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v34 + 1) + 8 * j);
        v26 = *(a1 + 48);
        v27 = [v25 idsID];
        [v26 addObject:v27];

        [*(a1 + 40) deleteObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v22);
  }

  v28 = *(a1 + 40);
  v29 = *(*(a1 + 56) + 8);
  v33 = *(v29 + 40);
  v30 = [v28 save:&v33];
  objc_storeStrong((v29 + 40), v33);
  if (v30)
  {
    *(*(*(a1 + 64) + 8) + 24) = [v8 count] != 0;
  }
}

void sub_10004633C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046354(uint64_t a1)
{
  v2 = +[KTCoreDataSTStaticKey fetchRequest];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v15 = v2;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 publicIdentity];

          if (v12)
          {
            v13 = [v11 publicIdentity];
            v14 = [KTAccountPublicID ktAccountPublicIDWithStorageString:v13 error:0];

            if (v14)
            {
              [*(a1 + 40) addObject:v14];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    v2 = v15;
  }
}

void sub_1000466B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000466D8(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"STStaticKeyHandle"];
  v3 = [NSPredicate predicateWithFormat:@"idsID == %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100046830;
    v11[3] = &unk_10031A310;
    v12 = *(a1 + 64);
    [v6 enumerateObjectsUsingBlock:v11];
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 48) + 8);
    v10 = *(v8 + 40);
    v9 = [v7 save:&v10];
    objc_storeStrong((v8 + 40), v10);
    if (v9)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

void sub_100046DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046E00(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100046E44(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (qword_10038BCF0 != -1)
    {
      sub_100249748();
    }

    v6 = qword_10038BCF8;
    if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, " fetch handles return error with %@, continuing anyway", buf, 0xCu);
    }
  }

  v27 = v5;
  v7 = [*(a1 + 32) copy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v7;
  obj = [v7 handles];
  v8 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v11 = kKTApplicationIdentifierIDS;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        v14 = [TransparencyApplication addApplicationPrefixForIdentifier:v11 uri:v13];
        v15 = [v4 objectForKeyedSubscript:v14];
        if (v15)
        {
          v16 = [*(a1 + 32) handles];
          v17 = [v16 objectForKeyedSubscript:v13];

          if (v17)
          {
            if (qword_10038BCF0 != -1)
            {
              sub_10024975C();
            }

            v18 = qword_10038BCF8;
            if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              v20 = [v15 succeed];
              *buf = 141558530;
              v35 = 1752392040;
              v36 = 2112;
              v37 = v13;
              v38 = 1024;
              v39 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " updating handle %{mask.hash}@ with %d", buf, 0x1Cu);
            }

            [v17 setValid:{objc_msgSend(v15, "succeed") == 1}];
            v21 = +[NSDate date];
            [v17 setValidationDate:v21];
          }
        }

        else
        {
          if (qword_10038BCF0 != -1)
          {
            sub_100249784();
          }

          v22 = qword_10038BCF8;
          if (os_log_type_enabled(qword_10038BCF8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 141558274;
            v35 = 1752392040;
            v36 = 2112;
            v37 = v14;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " imHandle %{mask.hash}@ not found", buf, 0x16u);
          }
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v9);
  }

  v23 = *(*(a1 + 48) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v26;
  v25 = v26;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000471EC(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100047230(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100047274(id a1)
{
  qword_10038BCF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100047DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100047E0C(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void sub_100047E68(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000481DC(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000482F4(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000491E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, uint64_t a63)
{
  objc_destroyWeak((v75 + 32));
  objc_destroyWeak((v78 + 32));
  objc_destroyWeak((v77 + 32));
  objc_destroyWeak((v74 + 32));
  objc_destroyWeak((v73 + 32));
  objc_destroyWeak((v72 + 32));
  objc_destroyWeak((v76 + 32));
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a67);
  objc_destroyWeak(&a72);
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak((v79 - 216));
  objc_destroyWeak((v79 - 176));
  objc_destroyWeak((v79 - 136));
  objc_destroyWeak((v79 - 128));
  _Unwind_Resume(a1);
}

void sub_100049398(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (qword_10038BD00 != -1)
  {
    sub_1002499F8();
  }

  v4 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Octagon changed: %{BOOL}d", v6, 8u);
  }

  v5 = [WeakRetained stateMachine];
  [v5 handleFlag:@"OctagonTrustChanged"];
}

void sub_10004948C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000494D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (qword_10038BD00 != -1)
  {
    sub_100249A0C();
  }

  v5 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CKKS view changed: %{public}@", &v9, 0xCu);
  }

  if (!v3 || [v3 isEqual:@"Manatee"])
  {
    v6 = [WeakRetained stateMachine];
    [v6 handleFlag:@"ManateeViewChanged"];

    v7 = [WeakRetained deps];
    v8 = [v7 logger];
    [KTContext updateEligibilityThreshold:v8];
  }
}

void sub_100049628(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004966C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (qword_10038BD00 != -1)
  {
    sub_100249A20();
  }

  v5 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS status: %{public}@", &v7, 0xCu);
  }

  v6 = [WeakRetained stateMachine];
  [v6 handleFlag:@"IDSStatusChanged"];

  [WeakRetained newServerOptInFetch:@"idsStatusObserver"];
}

void sub_10004977C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000497C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerPublicKeyFetch];
}

void sub_100049800(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerEnsureIdentity];
}

void sub_100049840(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerGetPrimaryAccount];
}

void sub_100049880(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained zoneFetcher];
  [v1 maybeCreateNewCKFetch];
}

void sub_1000498D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerCheckKTAccountKey];
}

void sub_100049918(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerKTAccountKeySignature:0.0];
}

void sub_100049964(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained maybeCreateServerOptInFetch];
}

void sub_1000499A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained validatePendingURIsAndRequests];
}

void sub_1000499E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained signatureQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049AC8;
  block[3] = &unk_100316FE0;
  v7 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);

  v4 = [v3 deps];
  v5 = [v4 flagHandler];
  [v5 cancelPendingFlag:@"ValidateSelf"];
}

id sub_100049AC8(uint64_t a1)
{
  v2 = [*(a1 + 32) signaturesComplete];
  [v2 fulfill];

  result = [*(a1 + 32) shouldPokeIDSUponSigning];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 triggerRegistrationDataNeedsUpdate:@"updated"];
  }

  return result;
}

void sub_100049B34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained manateeViewChangedScheduler];
  [v1 trigger];
}

uint64_t sub_100049B8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained stateMachineQueue];
    dispatch_sync(v3, &stru_10031A568);
  }

  return 1;
}

void sub_100049D68(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004A010(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249A70();
    }

    v4 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "error closing eligibility db %@", &v5, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10004A0E8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004A12C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004A21C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[NSMutableDictionary dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = v2;
  obj = [v2 allKeys];
  v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v25)
  {
    v23 = *v27;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        v6 = [v24 objectForKeyedSubscript:v5];
        v7 = [v5 stringByAppendingString:@"errHist"];
        v8 = [v5 stringByAppendingString:@"results"];
        v9 = [v5 stringByAppendingString:@"aggregate"];
        v10 = [v6 errorHistogram];
        v11 = [NSJSONSerialization dataWithJSONObject:v10 options:2 error:0];

        v12 = [[NSString alloc] initWithData:v11 encoding:4];
        [v3 setObject:v12 forKeyedSubscript:v7];
        v13 = [v6 resultsArray];
        v14 = [v13 componentsJoinedByString:{@", "}];

        [v3 setObject:v14 forKeyedSubscript:v8];
        v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 aggregateResult]);
        [v3 setObject:v15 forKeyedSubscript:v9];
      }

      v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v25);
  }

  v16 = [*(a1 + 32) deps];
  v17 = [KTFillStatusOperation memoizedKTSelfStatusResult:v16];

  if (v17 && ([v17 pendingStatusChanges] & 1) == 0)
  {
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 optIn]);
    [v3 setObject:v18 forKeyedSubscript:@"optIn"];
  }

  v19 = [*(a1 + 32) deps];
  v20 = [v19 logger];
  [v20 logRockwellForEventNamed:@"ktEligibilityHealthCheckup" withAttributes:v3];
}

void sub_10004A6D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_10004A70C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = dispatch_semaphore_create(0);
    v4 = dispatch_group_create();
    v5 = [WeakRetained statusReporting];

    if (v5)
    {
      v24 = v3;
      dispatch_group_enter(v4);
      v6 = [WeakRetained statusReporting];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10004AB10;
      v38[3] = &unk_10031A668;
      v38[4] = WeakRetained;
      v25 = v2;
      v7 = v2;
      v39 = v7;
      v8 = v4;
      v40 = v8;
      [v6 hasOptedInByDefaultWithCompletionHandler:v38];

      dispatch_group_enter(v8);
      v9 = [WeakRetained statusReporting];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10004AB90;
      v35[3] = &unk_10031A690;
      v35[4] = WeakRetained;
      v10 = v7;
      v36 = v10;
      v11 = v8;
      v37 = v11;
      [v9 lastRecommendationWithCompletionHandler:v35];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v12 = [&off_10033D778 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v32;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(&off_10033D778);
            }

            v16 = *(*(&v31 + 1) + 8 * i);
            dispatch_group_enter(v11);
            v17 = [WeakRetained statusReporting];
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_10004AC10;
            v28[3] = &unk_10031A6B8;
            v28[4] = WeakRetained;
            v28[5] = v16;
            v29 = v10;
            v30 = v11;
            [v17 getContinuousDaysOfSuccessWithElement:v16 completionHandler:v28];
          }

          v13 = [&off_10033D778 countByEnumeratingWithState:&v31 objects:v41 count:16];
        }

        while (v13);
      }

      v18 = [WeakRetained metricsQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004ACA8;
      block[3] = &unk_100316FE0;
      v3 = v24;
      v19 = v24;
      v27 = v19;
      dispatch_group_notify(v11, v18, block);

      v20 = dispatch_time(0, 1000000000);
      v21 = 0;
      if (!dispatch_semaphore_wait(v19, v20))
      {
        v21 = v10;
      }

      v2 = v25;
      v4 = v23;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_10004AB10(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v4 = [NSNumber numberWithBool:a2];
  [*(a1 + 40) setObject:v4 forKeyedSubscript:@"optInDefault"];

  os_unfair_lock_unlock((*(a1 + 32) + 12));
  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void sub_10004AB90(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v4 = [NSNumber numberWithInteger:a2];
  [*(a1 + 40) setObject:v4 forKeyedSubscript:@"idsRec"];

  os_unfair_lock_unlock((*(a1 + 32) + 12));
  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void sub_10004AC10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 3);
  v5 = [*(a1 + 40) stringByAppendingString:@"elgDays"];
  [*(a1 + 48) setObject:v4 forKeyedSubscript:v5];

  os_unfair_lock_unlock((*(a1 + 32) + 12));
  dispatch_group_leave(*(a1 + 56));
}

id sub_10004ACB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[NSMutableDictionary dictionary];
  v3 = [WeakRetained deps];
  v4 = [v3 logger];
  v5 = [v4 ckManateeState];
  [v2 setObject:v5 forKeyedSubscript:@"ckManateeState"];

  v6 = [NSNumber numberWithLongLong:kTransparencyAnalyticsVersion];
  [v2 setObject:v6 forKeyedSubscript:kTransparencyAnalyticsVersionKey];

  v58 = WeakRetained;
  v7 = [WeakRetained deps];
  v8 = [v7 settings];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 getEnvironment]);
  v10 = v2;
  [v2 setObject:v9 forKeyedSubscript:kTransparencyAnalyticsEnvironmentKey];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = +[TransparencyAnalytics analyticsApplications];
  v56 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v56)
  {
    v55 = *v68;
    do
    {
      v11 = 0;
      do
      {
        if (*v68 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v11;
        v12 = *(*(&v67 + 1) + 8 * v11);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v13 = +[KTContext analyticsSuccessNames];
        v14 = [v13 countByEnumeratingWithState:&v63 objects:v72 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v64;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v64 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [KTContext successMetricsKey:v12 validationName:*(*(&v63 + 1) + 8 * i)];
              if (v18)
              {
                v19 = [v58 deps];
                v20 = [v19 logger];
                v21 = [v20 fuzzyTimeSinceLastSuccess:v18];
                [v10 setObject:v21 forKeyedSubscript:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v63 objects:v72 count:16];
          }

          while (v15);
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v22 = +[KTContext analyticsSelfFlagNames];
        v23 = [v22 countByEnumeratingWithState:&v59 objects:v71 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v60;
          do
          {
            for (j = 0; j != v24; j = j + 1)
            {
              if (*v60 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [KTContext selfStatusFlagMetricsKey:v12 name:*(*(&v59 + 1) + 8 * j)];
              if (v27)
              {
                v28 = [v58 deps];
                v29 = [v28 logger];
                v30 = [v29 numberPropertyForKey:v27];
                [v10 setObject:v30 forKeyedSubscript:v27];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v59 objects:v71 count:16];
          }

          while (v24);
        }

        v11 = v57 + 1;
      }

      while ((v57 + 1) != v56);
      v56 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v56);
  }

  v31 = [v58 smState];
  v32 = v10;
  [v10 setObject:v31 forKeyedSubscript:@"smState"];

  v33 = [v58 repair];

  if (v33)
  {
    [v10 setObject:&off_10033CEB8 forKeyedSubscript:@"repair"];
  }

  v34 = [v58 metricsRegistration_ktView];
  if ([v34 count])
  {
    [v10 addEntriesFromDictionary:v34];
  }

  v35 = [v58 metricsRegistration_idsView];
  if ([v35 count])
  {
    [v32 addEntriesFromDictionary:v35];
  }

  v36 = [v58 deps];
  v37 = [v36 logger];
  v38 = [v37 fuzzyTimeSinceDateKey:off_100381CF8];
  [v32 setObject:v38 forKeyedSubscript:@"idsRegPoke"];

  v39 = [v58 deps];
  v40 = [v39 logger];
  v41 = [v40 fuzzyTimeSinceDateKey:off_100381D00];
  [v32 setObject:v41 forKeyedSubscript:@"idsRegValid"];

  v42 = [v58 deps];
  v43 = [v42 idsAccountTracker];
  v44 = [v43 messagesStatus];

  if (v44)
  {
    v45 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v44 status] == 3);
    [v32 setObject:v45 forKeyedSubscript:@"messages"];
  }

  v46 = [v58 deps];
  v47 = [KTFillStatusOperation memoizedKTSelfStatusResult:v46];

  if (v47 && ([v47 pendingStatusChanges] & 1) == 0)
  {
    v48 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v47 optIn]);
    [v32 setObject:v48 forKeyedSubscript:@"optIn"];

    if ([v47 everOptIn])
    {
      v49 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v47 everOptIn]);
      [v32 setObject:v49 forKeyedSubscript:@"everOptIn"];
    }

    v50 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v47 accountStatus]);
    [v32 setObject:v50 forKeyedSubscript:@"accountStatus"];

    v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v47 selfStatus]);
    [v32 setObject:v51 forKeyedSubscript:@"selfStatus"];

    v52 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v47 systemStatus]);
    [v32 setObject:v52 forKeyedSubscript:@"systemStatus"];
  }

  return v32;
}

void sub_10004B4C0(uint64_t a1)
{
  [*(a1 + 32) setCloudKitAccountInfo:*(a1 + 40)];
  if (qword_10038BD00 != -1)
  {
    sub_100249A84();
  }

  v2 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CK account changed to: %@", &v10, 0xCu);
  }

  v4 = [*(a1 + 32) stateMachine];
  [v4 _onqueueHandleFlag:@"CKAccountChanged"];

  v5 = [*(a1 + 40) deviceToDeviceEncryptionAvailability];
  if ((v5 & 2) != 0)
  {
    v6 = [*(a1 + 32) deps];
    v7 = [v6 logger];
    v8 = v7;
    v9 = 2;
  }

  else
  {
    v6 = [*(a1 + 32) deps];
    v7 = [v6 logger];
    v8 = v7;
    if (v5)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }
  }

  [v7 setCKManateeState:v9];
}

void sub_10004B61C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004B794(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004BA34(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004BD1C(uint64_t a1)
{
  v3 = [[KTPendingFlag alloc] initWithFlag:@"CheckAccountSignatures" conditions:0 delayInSeconds:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 _onqueueHandlePendingFlagLater:v3];
}

void sub_10004BFD4(uint64_t a1, uint64_t a2)
{
  v3 = [KTStateTransitionWatcher stripUnexpectedPathError:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_10004C418(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004C45C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004C4A0(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004C5A8(uint64_t a1)
{
  [*(a1 + 32) setSelfValidationResult:*(a1 + 40)];
  v2 = [*(a1 + 32) queue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004C648;
  v3[3] = &unk_10031A740;
  v3[5] = *(a1 + 48);
  v3[4] = *(a1 + 32);
  dispatch_async(v2, v3);
}

void sub_10004C648(uint64_t a1)
{
  v3 = [[KTPendingFlag alloc] initWithFlag:@"RepairIDSFlag" conditions:2 delayInSeconds:*(a1 + 40)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 handlePendingFlag:v3];
}

uint64_t sub_10004C7B0(uint64_t a1)
{
  [*(a1 + 32) setRepair:*(a1 + 40)];
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C85C;
  block[3] = &unk_100316FE0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);

  return (*(*(a1 + 48) + 16))();
}

void sub_10004C85C(uint64_t a1)
{
  v3 = [[KTPendingFlag alloc] initWithFlag:@"PendingCKVRepair" conditions:2];
  v2 = [*(a1 + 32) stateMachine];
  [v2 handlePendingFlag:v3];
}

void sub_10004CA10(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004CC38(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004CF3C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004D090(uint64_t a1)
{
  v2 = [*(a1 + 32) deps];
  v3 = [KTEnrollmentSignatureSupport checkCloudRecordsWithDataStore:v2];

  if (v3)
  {
    v4 = [KTPendingFlag alloc];
    v5 = [*(a1 + 32) deps];
    v6 = [v5 cloudKitOutgoingNFS];
    v11 = [(KTPendingFlag *)v4 initWithFlag:@"CloudKitOutgoing" conditions:2 scheduler:v6];

    v7 = [*(a1 + 32) deps];
    v8 = [v7 flagHandler];
    [v8 handlePendingFlag:v11];

    v9 = [*(a1 + 32) deps];
    v10 = [v9 cloudKitOutgoingNFS];
    [v10 trigger];
  }
}

void sub_10004D3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004D3FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 dateByAddingTimeInterval:*(a1 + 48)];
  if (!a3 || (v7 = v5, v6 = [v5 compare:*(a1 + 32)] + 1 == 0, v5 = v7, v6))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10004D5D4(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004D7A8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004DA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004DA78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004DA90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v21 = 0;
  v3 = [v2 waitUntilReadyForRPCForOperation:@"background-validation" fast:0 error:&v21];
  v4 = v21;
  if (v3)
  {
    v5 = [KTBackgroundSystemValidationOperation alloc];
    v6 = [*(a1 + 32) deps];
    v7 = [(KTBackgroundSystemValidationOperation *)v5 initWithDependencies:v6];

    [*(a1 + 32) setLastDutyCycle:v7];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004DC84;
    v17[3] = &unk_10031A950;
    v8 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    v20 = *(a1 + 48);
    v9 = v7;
    v10 = [NSBlockOperation blockOperationWithBlock:v17];
    [v10 addNullableDependency:v9];
    v11 = [*(a1 + 32) deps];
    v12 = [v11 reachabilityTracker];
    v13 = [v12 reachabilityDependency];
    [(KTBackgroundSystemValidationOperation *)v9 addNullableDependency:v13];

    v14 = [*(a1 + 32) operationQueue];
    [v14 addOperation:v9];

    v15 = [*(a1 + 32) operationQueue];
    [v15 addOperation:v10];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v16 = *(*(a1 + 48) + 8);
    v9 = *(v16 + 40);
    *(v16 + 40) = 0;
  }
}

void sub_10004DC84(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004DD60;
  v7[3] = &unk_10031A928;
  v4 = *(a1 + 48);
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *v2;
  *&v6 = v4;
  *(&v6 + 1) = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  dispatch_async(v3, v7);
}

void sub_10004DD60(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 32) error];
    (*(v2 + 16))(v2, v3);
  }

  v4 = [*(a1 + 32) error];

  if (!v4)
  {
    v5 = [*(a1 + 40) deps];
    v6 = [v5 smDataStore];
    [v6 setSettingsNumber:off_100381AD8 number:&off_10033CED0];

    v7 = [*(a1 + 40) deps];
    v8 = [v7 smDataStore];
    [v8 setSettingsData:off_100381AF8 data:0];
  }

  [*(a1 + 40) triggerStatusUpdate:kKTApplicationIdentifierIDS];
  if (qword_10038BD00 != -1)
  {
    sub_100249B88();
  }

  v9 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 opUUID];
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "BackgroundSystemValidation: end %{public}@", &v15, 0xCu);
  }

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

void sub_10004DF28(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004E138(uint64_t a1)
{
  v3 = [[KTPendingFlag alloc] initWithFlag:@"StatusUpdate" delayInSeconds:0.0];
  v2 = [*(a1 + 32) stateMachine];
  [v2 handlePendingFlag:v3];
}

void sub_10004E354(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004E398(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004E4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004E4E8(uint64_t a1)
{
  v2 = [KTValidatePendingURIsOperation alloc];
  v3 = kKTApplicationIdentifierIDS;
  v4 = [*(a1 + 32) deps];
  v5 = [(KTValidatePendingURIsOperation *)v2 initWithApplication:v3 opId:0 dependencies:v4];

  v6 = [KTValidatePendingRequestsOperation alloc];
  v7 = [*(a1 + 32) deps];
  v8 = [(KTValidatePendingRequestsOperation *)v6 initWithApplication:v3 dependencies:v7 opId:0];

  v9 = [KTFillStatusOperation alloc];
  v10 = [*(a1 + 32) deps];
  v11 = [(KTFillStatusOperation *)v9 initWithApplication:v3 initialFill:1 dependencies:v10 intendedState:@"Ready" errorState:@"Ready"];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004E788;
  v23[3] = &unk_10031A9E0;
  v24 = *(a1 + 32);
  v12 = [NSBlockOperation blockOperationWithBlock:v23];
  [v12 addNullableDependency:v5];
  [v12 addNullableDependency:v8];
  [v12 addNullableDependency:v11];
  v13 = [*(a1 + 32) deps];
  v14 = [v13 reachabilityTracker];
  v15 = [v14 reachabilityDependency];
  [(KTValidatePendingURIsOperation *)v5 addNullableDependency:v15];

  v16 = [*(a1 + 32) deps];
  v17 = [v16 reachabilityTracker];
  v18 = [v17 reachabilityDependency];
  [(KTValidatePendingRequestsOperation *)v8 addNullableDependency:v18];

  [(KTFillStatusOperation *)v11 addNullableDependency:v8];
  v19 = [*(a1 + 32) operationQueue];
  [v19 addOperation:v5];

  v20 = [*(a1 + 32) operationQueue];
  [v20 addOperation:v8];

  v21 = [*(a1 + 32) operationQueue];
  [v21 addOperation:v11];

  v22 = [*(a1 + 32) operationQueue];
  [v22 addOperation:v12];
}

void sub_10004E788(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004E818;
  v3[3] = &unk_10031A9E0;
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);
}

void sub_10004E818(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingValidationsComplete];
  [v2 fulfill];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_10004EAD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained deps];
  v2 = [v1 logger];
  v3 = +[NSDate date];
  [v2 setDateProperty:v3 forKey:off_100381D00];

  v4 = [WeakRetained successfulIDSRegistrationCheck];
  [v4 fulfill];

  v5 = objc_alloc_init(KTCondition);
  [WeakRetained setSuccessfulIDSRegistrationCheck:v5];
}

void sub_10004EE84(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004F110(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    goto LABEL_2;
  }

  v6 = [*(a1 + 32) lastValidateSelf];

  if (!v6)
  {
    v3 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-319 description:@"no prior self validation operation"];
LABEL_2:
    v7 = [KTStateTransitionWatcher stripUnexpectedPathError:v3];

    v4 = *(a1 + 40);
    v5 = [SecXPCHelper cleanseErrorForXPC:v7];
    (*(v4 + 16))(v4, 0, 0, 0, v5);

    goto LABEL_5;
  }

  v7 = [*(a1 + 32) lastValidateSelf];
  [v7 handleOperationResults:*(a1 + 40)];
LABEL_5:
}

void sub_10004F2D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v12 = a3;
  v8 = a5;
  v9 = [NSNumber numberWithUnsignedInteger:a2];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"selfFetchResult"];

  if (v8)
  {
    v10 = [v8 description];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:@"selfFetchError"];
  }

  v11 = [v12 diagnosticsJsonDictionary];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"diagnostics"];
}

void sub_10004F4A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v22 = a3;
  v8 = a4;
  if (qword_10038BD00 != -1)
  {
    sub_100249BEC();
  }

  v9 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "fetchSelfVerificationInfoForApplication: %@", buf, 0xCu);
  }

  if (v8)
  {
    v30 = @"error";
    v10 = [v8 description];
    v31 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:@"fetchError"];
  }

  v12 = +[NSMutableDictionary dictionary];
  v13 = [v7 uriToServerLoggableDatas];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10004F7E4;
  v27[3] = &unk_10031AA98;
  v14 = v12;
  v28 = v14;
  [v13 enumerateKeysAndObjectsUsingBlock:v27];

  v15 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [v7 syncedLoggableDatas];
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v23 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v18);
  }

  if ([v14 count])
  {
    [*(a1 + 32) setObject:v14 forKeyedSubscript:@"serverLoggableDatas"];
  }

  if ([v15 count])
  {
    [*(a1 + 32) setObject:v15 forKeyedSubscript:@"syncedLoggableDatas"];
  }
}

void sub_10004F7A0(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10004F7E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 serverLoggableDatas];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) diagnosticsJsonDictionary];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [TransparencyAnalytics privacyURI:v5];
  if (v14)
  {
    v20 = @"loggableData";
    v21 = v7;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [*(a1 + 32) setObject:v15 forKeyedSubscript:v14];
  }
}

void sub_10005005C(uint64_t a1)
{
  v166 = +[NSMutableDictionary dictionary];
  v1 = +[NSMutableDictionary dictionary];
  v2 = dispatch_semaphore_create(0);
  v3 = [*(a1 + 32) deps];
  v4 = [v3 idsOperations];
  v186[0] = _NSConcreteStackBlock;
  v186[1] = 3221225472;
  v186[2] = sub_10005156C;
  v186[3] = &unk_10031AAE8;
  v5 = v1;
  v6 = *(a1 + 32);
  v161 = v5;
  v187 = v5;
  v188 = v6;
  dsema = v2;
  v189 = dsema;
  [v4 getCurrentRegistrationState:0 withCompletion:v186];

  v180 = 0;
  v181 = &v180;
  v182 = 0x3032000000;
  v183 = sub_10004DA78;
  v184 = sub_10004DA88;
  v185 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = *(a1 + 32);
  v177[0] = _NSConcreteStackBlock;
  v177[1] = 3221225472;
  v177[2] = sub_1000516C0;
  v177[3] = &unk_10031AB10;
  v179 = &v180;
  v164 = v7;
  v178 = v164;
  [v8 successInfoForElement:0 samples:60 complete:v177];
  v169 = +[NSMutableDictionary dictionary];
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v9 = [*(a1 + 32) deps];
  v10 = [v9 publicKeyStore];
  obj = [v10 applicationKeyStores];

  v11 = [obj countByEnumeratingWithState:&v173 objects:v190 count:16];
  if (v11)
  {
    v12 = *v174;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v174 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v173 + 1) + 8 * i);
        v15 = [*(a1 + 32) deps];
        v16 = [v15 publicKeyStore];
        v17 = [v16 applicationKeyStores];
        v18 = [v17 objectForKeyedSubscript:v14];

        v19 = +[NSMutableDictionary dictionary];
        v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 tltLogBeginningMs]);
        [v19 setObject:v20 forKeyedSubscript:@"tltLogBeginMs"];

        v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 patLogBeginningMs]);
        [v19 setObject:v21 forKeyedSubscript:@"patLogBeginMs"];

        v22 = [v18 vrfKey];
        v23 = [v22 vrfKey];
        v24 = [v23 kt_hexString];
        [v19 setObject:v24 forKeyedSubscript:@"vrfKey"];

        v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 inResetWindow]);
        [v19 setObject:v25 forKeyedSubscript:@"inResetWindow"];

        [v169 setObject:v19 forKeyedSubscript:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v173 objects:v190 count:16];
    }

    while (v11);
  }

  if ([v169 count])
  {
    [v166 setObject:v169 forKeyedSubscript:@"trees"];
  }

  v26 = [*(a1 + 32) pcsOperation];
  v163 = [v26 getCurrentKTPCSIdentity:off_10038B2A0 error:0];

  v27 = v163;
  if (v163)
  {
    [v163 identity];
    v27 = PCSIdentityGetPublicKey();
  }

  v160 = v27;
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = @"<no-key>";
  }

  [v166 setObject:v28 forKeyedSubscript:@"accountKey"];
  v29 = [*(a1 + 32) deps];
  v30 = [v29 accountKeyService];
  v31 = kKTApplicationIdentifierIDS;
  v162 = [v30 copyCachedPCSIdentityForApplication:kKTApplicationIdentifierIDS];

  v32 = v162;
  if (v162)
  {
    [v162 identity];
    v32 = PCSIdentityGetPublicKey();
  }

  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = @"<no-key>";
  }

  [v166 setObject:v33 forKeyedSubscript:{@"accountKeyCache", v32}];
  v34 = +[NSMutableDictionary dictionary];
  v35 = [*(a1 + 32) deps];
  v36 = [v35 smDataStore];
  v171[0] = _NSConcreteStackBlock;
  v171[1] = 3221225472;
  v171[2] = sub_100051710;
  v171[3] = &unk_10031AB38;
  v37 = v34;
  v172 = v37;
  [v36 fetchIDMSDeviceList:v171];

  if ([v37 count])
  {
    [v166 setObject:v37 forKeyedSubscript:@"devices"];
  }

  v38 = *(a1 + 32);
  v39 = [v38 lastValidateSelf];
  v40 = [v38 validateSelfDiagnostics:v39];

  v41 = *(a1 + 32);
  v42 = [v41 lastValidateSelfOptIn];
  obja = [v41 validateSelfDiagnostics:v42];

  if ([v40 count] || objc_msgSend(obja, "count"))
  {
    [v166 setObject:v40 forKeyedSubscript:@"lastValidateSelf"];
    [v166 setObject:obja forKeyedSubscript:@"lastValidateSelfOptIn"];
  }

  else
  {
    v158 = [*(a1 + 32) missingValidateSelfFallbackDiagnostics];
    [v166 setObject:v158 forKeyedSubscript:@"missingValidateSelfFallback"];
  }

  v43 = [*(a1 + 32) deps];
  v44 = [v43 lockStateTracker];
  v45 = [v44 description];
  [v166 setObject:v45 forKeyedSubscript:@"lockstate"];

  v46 = [*(a1 + 32) deps];
  v47 = [v46 logger];
  v48 = [v47 nfsReporting];
  [v166 setObject:v48 forKeyedSubscript:@"nfs"];

  v49 = [*(a1 + 32) deps];
  v50 = [v49 kvs];
  v51 = [KTOptInManagerServer getOptInHistoryDiagnostic:v31 store:v50];
  [v166 setObject:v51 forKeyedSubscript:@"IDSKVSOptInHistory"];

  v52 = [*(a1 + 32) deps];
  v53 = [v52 cloudRecords];
  v54 = [v53 sysdiagnose];
  [v166 setObject:v54 forKeyedSubscript:@"cloudRecords"];

  v55 = [*(a1 + 32) deps];
  v56 = [v55 networkTimeout];
  v57 = [v56 sysdiagnose];
  [v166 setObject:v57 forKeyedSubscript:@"networkTimeout"];

  v58 = [*(a1 + 32) launch];
  v59 = [v58 eventsByTime];
  [v166 setObject:v59 forKeyedSubscript:@"launch"];

  v60 = [*(a1 + 32) deps];
  v61 = [v60 stateMonitor];
  v62 = [v61 ktStatus];
  v63 = [v62 diagnosticsJsonDictionary];
  [v166 setObject:v63 forKeyedSubscript:@"status"];

  v64 = [*(a1 + 32) deps];
  v65 = [KTFillStatusOperation memoizedKTSelfStatusResult:v64];
  v66 = [v65 diagnosticsJsonDictionary];
  [v166 setObject:v66 forKeyedSubscript:@"memoizedStatus"];

  v67 = [*(a1 + 32) deps];
  v68 = [v67 idsAccountTracker];
  v69 = [v68 messagesStatus];

  if (v69)
  {
    v70 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v69 status] == 3);
    [v166 setObject:v70 forKeyedSubscript:@"messages"];
  }

  v71 = +[NSMutableDictionary dictionary];
  v72 = [*(a1 + 32) lastFetchIDMS];

  if (v72)
  {
    v73 = [*(a1 + 32) lastFetchIDMS];
    v74 = [v73 description];
    [v71 setObject:v74 forKeyedSubscript:@"fetchIDMS"];
  }

  v75 = [*(a1 + 32) lastValidateSelf];

  if (v75)
  {
    v76 = [*(a1 + 32) lastValidateSelf];
    v77 = [v76 description];
    [v71 setObject:v77 forKeyedSubscript:@"validateSelf"];
  }

  v78 = [*(a1 + 32) lastValidateSelfOptIn];

  if (v78)
  {
    v79 = [*(a1 + 32) lastValidateSelfOptIn];
    v80 = [v79 description];
    [v71 setObject:v80 forKeyedSubscript:@"validateSelfOptIn"];
  }

  v81 = [*(a1 + 32) lastSignalIDS];

  if (v81)
  {
    v82 = [*(a1 + 32) lastSignalIDS];
    v83 = [v82 description];
    [v71 setObject:v83 forKeyedSubscript:@"signalIDS"];
  }

  v84 = [*(a1 + 32) lastFetchIDSSelf];

  if (v84)
  {
    v85 = [*(a1 + 32) lastFetchIDSSelf];
    v86 = [v85 description];
    [v71 setObject:v86 forKeyedSubscript:@"fetchIDSSelf"];
  }

  v87 = [*(a1 + 32) lastFetchKTSelf];

  if (v87)
  {
    v88 = [*(a1 + 32) lastFetchKTSelf];
    v89 = [v88 description];
    [v71 setObject:v89 forKeyedSubscript:@"fetchKTSelf"];
  }

  v90 = [*(a1 + 32) lastRegistration];

  if (v90)
  {
    v91 = [*(a1 + 32) lastRegistration];
    v92 = [v91 description];
    [v71 setObject:v92 forKeyedSubscript:@"lastRegistration"];
  }

  v93 = [*(a1 + 32) lastForceSyncKVS];

  if (v93)
  {
    v94 = [*(a1 + 32) lastForceSyncKVS];
    v95 = [v94 description];
    [v71 setObject:v95 forKeyedSubscript:@"forceSyncKVS"];
  }

  v96 = [*(a1 + 32) lastCKFetch];

  if (v96)
  {
    v97 = [*(a1 + 32) lastCKFetch];
    v98 = [v97 description];
    [v71 setObject:v98 forKeyedSubscript:@"lastCKFetch"];
  }

  v99 = [*(a1 + 32) lastPublicKeyRefresh];

  if (v99)
  {
    v100 = [*(a1 + 32) lastPublicKeyRefresh];
    v101 = [v100 description];
    [v71 setObject:v101 forKeyedSubscript:@"publicKeyRefresh"];
  }

  v102 = [*(a1 + 32) lastCheckIDSRegistration];

  if (v102)
  {
    v103 = [*(a1 + 32) lastCheckIDSRegistration];
    v104 = [v103 description];
    [v71 setObject:v104 forKeyedSubscript:@"checkIDSRegistration"];
  }

  v105 = [*(a1 + 32) lastDutyCycle];

  if (v105)
  {
    v106 = [*(a1 + 32) lastDutyCycle];
    v107 = [v106 description];
    [v71 setObject:v107 forKeyedSubscript:@"lastDutyCycle"];
  }

  [v166 setObject:v71 forKeyedSubscript:@"ops"];
  v108 = +[NSMutableDictionary dictionary];
  v109 = [*(a1 + 32) deps];
  v110 = [_TtC13transparencyd28KTFetchCloudStorageOperation lastCKFetchWithDeps:v109];
  v111 = [v110 description];
  [v108 setObject:v111 forKeyedSubscript:@"ck-fetch"];

  v112 = [*(a1 + 32) lastPush];
  v113 = [v112 description];
  [v108 setObject:v113 forKeyedSubscript:@"push"];

  v114 = [*(a1 + 32) lastSelfValidate];
  v115 = [v114 description];
  [v108 setObject:v115 forKeyedSubscript:@"self-validate"];

  v116 = [*(a1 + 32) deps];
  v117 = [KTFetchIDSSelfOperation lastSelfIDSFetch:v116];
  v118 = [v117 description];
  [v108 setObject:v118 forKeyedSubscript:@"idsSelfFetch"];

  v119 = [*(a1 + 32) deps];
  v120 = [v119 logger];
  v121 = [v120 datePropertyForKey:off_100381CF8];
  v122 = [v121 description];
  [v108 setObject:v122 forKeyedSubscript:@"idsRegPoke"];

  v123 = [*(a1 + 32) deps];
  v124 = [v123 logger];
  v125 = [v124 datePropertyForKey:off_100381D00];
  v126 = [v125 description];
  [v108 setObject:v126 forKeyedSubscript:@"idsRegValid"];

  v127 = [*(a1 + 32) deps];
  v128 = [v127 logger];
  v129 = [v128 datePropertyForKey:off_100381D08];
  v130 = [v129 description];
  [v108 setObject:v130 forKeyedSubscript:@"idsRegEnroll"];

  v131 = [*(a1 + 32) deps];
  v132 = [KTBackgroundSystemValidationOperation lastDutyCycle:v131];
  v133 = [v132 description];
  [v108 setObject:v133 forKeyedSubscript:@"bkValidate"];

  v134 = [*(a1 + 32) deps];
  v135 = [KTBackgroundSystemValidationOperation lastDutyCycleSuccess:v134];
  v136 = [v135 description];
  [v108 setObject:v136 forKeyedSubscript:@"bkSuccess"];

  [v166 setObject:v108 forKeyedSubscript:@"lasts"];
  [v166 setObject:*(a1 + 40) forKeyedSubscript:@"pendingFlags"];
  v137 = [*(a1 + 32) stateMachine];
  v138 = [v137 currentState];
  [v166 setObject:v138 forKeyedSubscript:@"state"];

  v139 = [*(a1 + 32) accountFirstSeenDate];
  v140 = [v139 description];
  [v166 setObject:v140 forKeyedSubscript:@"accountFirstSeen"];

  v141 = +[TransparencySettings cfPrefsJson];
  [v166 setObject:v141 forKeyedSubscript:@"cfprefs"];

  v142 = [*(a1 + 32) deps];
  v143 = [KTBackgroundSystemValidationOperation sysdiagnoseInfo:v142];
  [v166 setObject:v143 forKeyedSubscript:@"backgroundOp"];

  v144 = [*(a1 + 32) deps];
  v145 = [v144 lockStateTracker];
  v146 = [v145 description];
  [v166 setObject:v146 forKeyedSubscript:@"lockstate"];

  v147 = [*(a1 + 32) deps];
  v148 = [v147 reachabilityTracker];
  if ([v148 currentReachability])
  {
    v149 = @"network";
  }

  else
  {
    v149 = @"no-network";
  }

  [v166 setObject:v149 forKeyedSubscript:@"reachability"];

  v150 = [*(a1 + 32) deps];
  v151 = [v150 cloudKitAccountTracker];
  v152 = [v151 description];
  [v166 setObject:v152 forKeyedSubscript:@"cloudkitaccounttracker"];

  v153 = [*(a1 + 32) ckFetchScheduler];
  v154 = [v153 description];
  [v166 setObject:v154 forKeyedSubscript:@"fetcher"];

  v155 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(dsema, v155))
  {
    [v166 setObject:@"timeout" forKeyedSubscript:@"ids-kt"];
  }

  else
  {
    [v166 setObject:v161 forKeyedSubscript:@"ids-kt"];
  }

  if (dispatch_semaphore_wait(v164, v155))
  {
    [v166 setObject:@"timeout" forKeyedSubscript:@"eligibility"];
  }

  else
  {
    [v166 setObject:v181[5] forKeyedSubscript:@"eligibility"];
  }

  v156 = *(a1 + 48);
  v157 = [TransparencySettings jsonDictFromPlistDict:v166];
  (*(v156 + 16))(v156, v157);

  _Block_object_dispose(&v180, 8);
}

void sub_10005156C(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [v3 objectForKeyedSubscript:v9];
        v12 = [v10 prettyFormatIDSKTStateArray:v11];
        [*(a1 + 32) setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

intptr_t sub_1000516C0(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_100051710(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v28 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v35 = @"error";
    v10 = [v8 description];
    v36 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:@"fetch_error"];
  }

  v27 = v9;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        v17 = +[NSMutableDictionary dictionary];
        if (+[TransparencyAnalytics hasInternalDiagnostics])
        {
          v18 = [v16 name];
          [v17 setObject:v18 forKeyedSubscript:@"name"];
        }

        v19 = [v16 deviceID];
        [v17 setObject:v19 forKeyedSubscript:@"deviceID"];

        v20 = [v16 pushToken];
        [v17 setObject:v20 forKeyedSubscript:@"pushToken"];

        v21 = [v16 osVersion];
        [v17 setObject:v21 forKeyedSubscript:@"osVersion"];

        v22 = [v16 model];
        [v17 setObject:v22 forKeyedSubscript:@"model"];

        v23 = [v16 build];
        [v17 setObject:v23 forKeyedSubscript:@"build"];

        v24 = [v16 serial];
        [v17 setObject:v24 forKeyedSubscript:@"serial"];

        v25 = *(a1 + 32);
        v26 = [v16 deviceID];
        [v25 setObject:v17 forKeyedSubscript:v26];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }
}

void sub_100051ACC(uint64_t a1)
{
  v2 = [*(a1 + 32) deps];
  v3 = [v2 stateMonitor];
  v4 = [v3 ktStatus];
  v5 = [v4 accountStatus];

  if (v5 == 2)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249C14();
    }

    v6 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 deps];
      v10 = [v9 stateMonitor];
      v11 = [v10 ktStatus];
      v12 = [v11 simpleStatus];
      *v27 = 138412290;
      *&v27[4] = v12;
      v13 = "Waiting for user trust, returning partial status immediately: %@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v13, v27, 0xCu);
    }
  }

  else
  {
    v14 = [*(a1 + 32) deps];
    v15 = [v14 stateMonitor];
    v16 = [v15 statusFilled];
    v17 = [*(a1 + 32) deps];
    v18 = [v17 settings];
    [v18 uiBlockingNetworkTimeout];
    v20 = [v16 wait:(v19 * 1000000000.0)];

    if (v20)
    {
      if (qword_10038BD00 != -1)
      {
        sub_100249C00();
      }

      v21 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 32);
        v8 = v21;
        v9 = [v22 deps];
        v10 = [v9 stateMonitor];
        v11 = [v10 ktStatus];
        v12 = [v11 simpleStatus];
        *v27 = 138412290;
        *&v27[4] = v12;
        v13 = "returning partially filled status: %@";
        goto LABEL_11;
      }
    }
  }

  v23 = *(a1 + 40);
  v24 = [*(a1 + 32) deps];
  v25 = [v24 stateMonitor];
  v26 = [v25 ktStatus];
  (*(v23 + 16))(v23, v26, 0);
}

void sub_100051D90(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100051DD4(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100052000(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100052044(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005216C(uint64_t a1, void *a2)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [a2 allValues];
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 metricsTimeToCreate];
        v9 = [SFAnalytics fuzzyNumber:v8];
        v10 = *(a1 + 32);
        v11 = [v7 application];
        v12 = [NSString stringWithFormat:@"KTReg%@", v11];
        [v10 setObject:v9 forKeyedSubscript:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_100052678(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100052A0C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100052A50(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000552B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_10005536C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000553B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    v5 = [[KTPendingFlag alloc] initWithFlag:@"PokeIDS" conditions:2 delayInSeconds:0.0];
    v6 = [*(a1 + 32) stateMachine];
    [v6 handlePendingFlag:v5];
  }

  v7 = [v3 intendedState];
  [v3 setNextState:v7];
}

void sub_100055478(uint64_t a1)
{
  v2 = [*(a1 + 32) checkAccountKeyChanged];
  if (v2 == 1)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249CC8();
    }

    v19 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "PCS KT identity no change, all is good", &v20, 2u);
    }
  }

  else
  {
    if (v2 == 2)
    {
      if (qword_10038BD00 != -1)
      {
        sub_100249CDC();
      }

      v12 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = v12;
        v15 = [v13 deps];
        v16 = [v15 stateMonitor];
        v17 = [v16 ktStatus];
        v18 = [v17 accountKey];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PCS KT Identity no longer exists, ensure identity: %@", &v20, 0xCu);
      }

      v10 = *(a1 + 40);
      v11 = off_10032D200;
    }

    else
    {
      if (v2 != 3)
      {
        return;
      }

      if (qword_10038BD00 != -1)
      {
        sub_100249CF0();
      }

      v3 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = v3;
        v6 = [v4 deps];
        v7 = [v6 stateMonitor];
        v8 = [v7 ktStatus];
        v9 = [v8 accountKey];
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PCS KT Identity changed, asking for new signatures: %@", &v20, 0xCu);
      }

      v10 = *(a1 + 40);
      v11 = off_10032D1D0;
    }

    [v10 setFlag:*v11];
  }
}

void sub_1000556EC(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100055730(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100055774(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000557B8(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained checkKTAccountKeyScheduler];
    if (a3 == 0.0)
    {
      if (!v5)
      {
        v12 = [v7 checkKTSignatureScheduler];
        [v12 trigger];

        goto LABEL_11;
      }

      [v7 inspectErrorForRetryAfter:v5 trigger:v8];
    }

    else
    {
      if (qword_10038BD00 != -1)
      {
        sub_100249D04();
      }

      v9 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v8 name];
        v13 = 138412802;
        v14 = v11;
        v15 = 2048;
        v16 = a3;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CKKS sync operation asked to retry later, scheduling %@ delay for %.1f seconds: %@", &v13, 0x20u);
      }

      [v8 waitUntil:1000000000 * a3];
    }

    [v8 trigger];
LABEL_11:
  }
}

void sub_100055950(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100055994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) deps];
  v5 = [v4 lockStateTracker];
  v6 = [*(a1 + 40) error];
  v7 = [v5 isLockedError:v6];

  if (v7)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249D68();
    }

    v8 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
    {
      LOWORD(v45) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device is locked, pending ensure identity on unlock", &v45, 2u);
    }

    v9 = [KTPendingFlag alloc];
    v10 = 3;
LABEL_13:
    v16 = [(KTPendingFlag *)v9 initWithFlag:@"EnsureIdentity" conditions:v10];
    v17 = [*(a1 + 32) deps];
    v18 = [v17 flagHandler];
    [v18 handlePendingFlag:v16];

    v19 = [*(a1 + 32) deps];
    v20 = [v19 stateMonitor];
    [v20 setAccountStatus:3];

    [v3 setNextState:@"RetryEnsureAccountIdentity"];
    goto LABEL_14;
  }

  v11 = [*(a1 + 32) deps];
  v12 = [v11 reachabilityTracker];
  v13 = objc_opt_class();
  v14 = [*(a1 + 40) error];
  LODWORD(v13) = [v13 isNetworkError:v14];

  if (v13)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249D54();
    }

    v15 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
    {
      LOWORD(v45) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Device have network issues, pending ensure identity on network", &v45, 2u);
    }

    v9 = [KTPendingFlag alloc];
    v10 = 2;
    goto LABEL_13;
  }

  v21 = [*(a1 + 40) error];

  if (v21)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249D18();
    }

    v22 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 40);
      v24 = v22;
      v25 = [v23 error];
      v45 = 138412290;
      v46 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Device have issues %@, triggering retry", &v45, 0xCu);
    }

    v26 = [*(a1 + 32) retryEnsureIdentity];
    [v26 trigger];

    v27 = [*(a1 + 32) deps];
    v28 = [v27 stateMonitor];
    [v28 setAccountStatus:3];

    [v3 setNextState:@"RetryEnsureAccountIdentity"];
    goto LABEL_14;
  }

  if ([*(a1 + 40) identityCreated])
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249D40();
    }

    v29 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 40);
      v31 = v29;
      v32 = [v30 identity];
      v45 = 138412290;
      v46 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Identity created, make sure we check signatures: %@", &v45, 0xCu);
    }

    v33 = [[KTPendingFlag alloc] initWithFlag:@"CheckAccountSignatures" conditions:0];
    v34 = [*(a1 + 32) deps];
    v35 = [v34 flagHandler];
    [v35 handlePendingFlag:v33];
  }

  else
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249D2C();
    }

    v36 = qword_10038BD08;
    if (!os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    v37 = *(a1 + 40);
    v33 = v36;
    v34 = [v37 identity];
    v45 = 138412290;
    v46 = v34;
    _os_log_impl(&_mh_execute_header, &v33->super, OS_LOG_TYPE_INFO, "Have identity, all good: %@", &v45, 0xCu);
  }

LABEL_32:
  v38 = [*(a1 + 40) identity];

  if (v38)
  {
    v39 = [*(a1 + 32) deps];
    v40 = [v39 stateMonitor];
    v41 = [*(a1 + 40) identity];
    [v40 setKTAccountKey:v41];
  }

  v42 = [*(a1 + 32) deps];
  v43 = [v42 stateMonitor];
  [v43 setAccountStatus:4];

  v44 = [v3 intendedState];
  [v3 setNextState:v44];

LABEL_14:
}

void sub_100055F10(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100055F54(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100055F98(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100055FDC(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100056020(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100056064(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [KTCheckIDSRegistrationOperation alloc];
  v5 = [*(a1 + 32) deps];
  v6 = kKTApplicationIdentifierIDS;
  v7 = [*(a1 + 32) pcsOperation];
  v8 = [(KTCheckIDSRegistrationOperation *)v4 initWithDependencies:v5 application:v6 waitLonger:0 pcs:v7 idsRegistrationInterface:*(a1 + 32)];

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000561F0;
  v16 = &unk_1003180E0;
  v17 = *(a1 + 32);
  v18 = v8;
  v9 = v8;
  v10 = [KTResultOperation named:@"ids-reg-finish" withBlock:&v13];
  [v10 addNullableDependency:{v9, v13, v14, v15, v16, v17}];
  [v3 dependOnBeforeGroupFinished:v10];

  [*(a1 + 32) setLastCheckIDSRegistration:v9];
  v11 = [*(a1 + 32) operationQueue];
  [v11 addOperation:v9];

  v12 = [*(a1 + 32) operationQueue];
  [v12 addOperation:v10];
}

void sub_1000561F0(uint64_t a1)
{
  v2 = [*(a1 + 32) deps];
  v3 = [v2 logger];
  v4 = [*(a1 + 40) error];
  [v3 logResultForEvent:@"CheckIDSRegistration" hardFailure:0 result:v4];

  v5 = [*(a1 + 40) error];

  if (v5)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249D7C();
    }

    v6 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 error];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CheckIDSRegistrationOperation failed, trying again: %{public}@", &v10, 0xCu);
    }
  }
}

void sub_10005633C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100056380(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSDate date];
  [v1 triggerIDMSFetchBackstop:v2];
}

void sub_1000563DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained deps];
  v6 = [v5 staticKeyStore];
  v7 = +[NSDate date];
  v8 = [WeakRetained deps];
  v9 = [v8 dew];
  [v9 coreDataInitialDelaySync];
  [v6 launchCloudSyncing:v7 initialDelay:?];

  v10 = [WeakRetained deps];
  v11 = [v10 ckdatabase];

  if (v11)
  {
    v12 = [WeakRetained deps];
    v13 = [v12 cloudRecords];
    v14 = [v13 cloudKitZones];

    v15 = [v14 count];
    if (v15)
    {
      v29 = [_TtC13transparencyd11KTZoneSetup alloc];
      v30 = [WeakRetained deps];
      v28 = [v30 ckdatabase];
      v16 = [WeakRetained deps];
      v17 = [v16 logger];
      [WeakRetained deps];
      v18 = v32 = v3;
      [v18 dataStore];
      v19 = v31 = a1;
      v20 = [v19 controller];
      v21 = [v20 backgroundContext];
      v22 = [(KTZoneSetup *)v29 initWithCkdatabase:v28 analytics:v17 context:v21 zoneCreate:v14];

      a1 = v31;
      v3 = v32;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v15 = 0;
    v22 = 0;
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100056714;
  v33[3] = &unk_10031AE90;
  objc_copyWeak(v36, (a1 + 32));
  v23 = v22;
  v34 = v23;
  v24 = v3;
  v35 = v24;
  v36[1] = v15;
  v25 = [NSBlockOperation blockOperationWithBlock:v33];
  [v24 dependOnBeforeGroupFinished:v25];
  [v25 addNullableDependency:v23];
  if (v23)
  {
    v26 = [WeakRetained operationQueue];
    [v26 addOperation:v23];
  }

  v27 = [WeakRetained operationQueue];
  [v27 addOperation:v25];

  objc_destroyWeak(v36);
}

void sub_100056714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([*(a1 + 32) initialFetch])
  {
    [*(a1 + 40) setNextState:@"CKProcessInitial"];
    v3 = [WeakRetained launch];
    [v3 setFirstLaunch:1];
  }

  else
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249D90();
    }

    v4 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56);
      v9[0] = 67109120;
      v9[1] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "already done initial fetch: %d", v9, 8u);
    }

    [*(a1 + 40) setNextState:@"InitialSignRegistrationData"];
  }

  v6 = [WeakRetained deps];
  v7 = [v6 cloudRecords];
  v8 = [v7 havePendingRecords];

  if (v8)
  {
    [WeakRetained setCloudKitOutgoingFlag];
  }
}

void sub_100056874(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000568B8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) error];
    v6 = [*(a1 + 40) ckFetchScheduler];
    [v4 inspectErrorForRetryAfter:v5 trigger:v6];
  }

  else
  {
    v5 = [v7 intendedState];
    [v7 setNextState:v5];
  }
}

void sub_100056974(uint64_t a1)
{
  v1 = [*(a1 + 32) newCKFetch:@"stateTransition"];
}

void sub_1000569A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v50 = kKTApplicationIdentifierIDS;
  v5 = [KTEnsureAccountIdentityOperation alloc];
  v6 = [WeakRetained deps];
  v7 = [WeakRetained pcsOperation];
  v8 = [(KTEnsureAccountIdentityOperation *)v5 initWithDependencies:v6 pcsOperation:v7];

  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100056FD8;
  v57[3] = &unk_10031AEE0;
  objc_copyWeak(v59, (a1 + 32));
  v9 = v8;
  v58 = v9;
  v10 = [NSBlockOperation blockOperationWithBlock:v57];
  [v10 addNullableDependency:v9];
  v11 = [KTEnrollmentRegistrationSignature alloc];
  v12 = [WeakRetained deps];
  v13 = [(KTEnrollmentRegistrationSignature *)v11 initWithDependencies:v12 forceUpdate:0 intendedState:@"Ready" errorState:@"Ready" idsRegistrationInterface:WeakRetained signatureTracker:WeakRetained];

  [(KTEnrollmentRegistrationSignature *)v13 addNullableDependency:v10];
  v14 = [NSSet setWithObject:off_100381DB0];
  v15 = [WeakRetained requestSuccessfulCKFetchForManyReasons:v14];

  v48 = v10;
  v49 = v9;
  v47 = v3;
  if (v15)
  {
    v16 = [WeakRetained deps];
    v17 = [v16 dew];
    [v17 selfValidateCloudKitTimeout];
    v19 = v18;

    v20 = [KTResultOperation operationWithBlock:&stru_10031AF00];
    v21 = [v20 timeout:(v19 * 1000000000.0)];
    [v20 addNullableDependency:v15];
  }

  else
  {
    v20 = 0;
  }

  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100057054;
  v54[3] = &unk_1003180E0;
  v22 = v20;
  v55 = v22;
  v46 = v15;
  v56 = v46;
  v23 = [NSBlockOperation blockOperationWithBlock:v54];
  v24 = v23;
  if (v23)
  {
    [v23 addNullableDependency:v22];
  }

  v25 = [KTFetchIDSSelfOperation alloc];
  v26 = [WeakRetained deps];
  v27 = [(KTFetchIDSSelfOperation *)v25 initWithApplication:v50 dependencies:v26 intendedState:@"Ready" errorState:@"Ready"];

  [(KTFetchIDSSelfOperation *)v27 addNullableDependency:v13];
  [(KTFetchIDSSelfOperation *)v27 addNullableDependency:v22];
  v28 = [KTFetchKTSelfOperation alloc];
  v29 = [WeakRetained deps];
  v30 = [(KTFetchKTSelfOperation *)v28 initWithApplication:v50 dependencies:v29 intendedState:@"Ready" errorState:@"Ready"];

  [(KTFetchKTSelfOperation *)v30 addNullableDependency:v13];
  [(KTFetchKTSelfOperation *)v30 addNullableDependency:v22];
  [(KTResultOperation *)v30 addSuccessDependency:v27];
  v31 = [KTValidateSelfOperation alloc];
  v32 = [WeakRetained deps];
  v33 = [(KTValidateSelfOperation *)v31 initWithApplication:v50 dependencies:v32 isOptInSelfValidation:0];

  [(KTValidateSelfOperation *)v33 addNullableDependency:v22];
  [(KTResultOperation *)v33 addSuccessDependency:v30];
  [(KTResultOperation *)v33 addSuccessDependency:v27];
  [WeakRetained setLastValidateSelf:v33];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000572E4;
  v51[3] = &unk_1003180E0;
  v34 = v47;
  v52 = v34;
  v35 = v33;
  v53 = v35;
  v36 = [NSBlockOperation named:@"validate-self-finish" withBlock:v51];
  [v36 addNullableDependency:v35];
  [v34 dependOnBeforeGroupFinished:v36];
  v37 = [WeakRetained operationQueue];
  [v37 addOperation:v22];

  v38 = [WeakRetained operationQueue];
  [v38 addOperation:v24];

  v39 = [WeakRetained operationQueue];
  [v39 addOperation:v49];

  v40 = [WeakRetained operationQueue];
  [v40 addOperation:v48];

  v41 = [WeakRetained operationQueue];
  [v41 addOperation:v13];

  v42 = [WeakRetained operationQueue];
  [v42 addOperation:v30];

  v43 = [WeakRetained operationQueue];
  [v43 addOperation:v27];

  v44 = [WeakRetained operationQueue];
  [v44 addOperation:v35];

  v45 = [WeakRetained operationQueue];
  [v45 addOperation:v36];

  objc_destroyWeak(v59);
}

void sub_100056FD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = [WeakRetained retryEnsureIdentity];
    [v3 trigger];
  }
}

void sub_100057054(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249DCC();
    }

    v2 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      v14 = 138543362;
      v15 = v3;
      v4 = "CloudKit fetch timed out: %{public}@";
      v5 = v2;
      v6 = OS_LOG_TYPE_ERROR;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v5, v6, v4, &v14, 0xCu);
    }
  }

  else
  {
    v7 = [*(a1 + 40) error];

    if (v7)
    {
      if (qword_10038BD00 != -1)
      {
        sub_100249DA4();
      }

      v8 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        v10 = v8;
        v11 = [v9 error];
        v14 = 138543362;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudKit fetch failed: %{public}@", &v14, 0xCu);
      }
    }

    else
    {
      if (qword_10038BD00 != -1)
      {
        sub_100249DB8();
      }

      v12 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v14 = 138543362;
        v15 = v13;
        v4 = "CloudKit fetch complete: %{public}@";
        v5 = v12;
        v6 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_15;
      }
    }
  }
}

void sub_100057218(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005725C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000572A0(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000572E4(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 32) intendedState];
  [*(a1 + 32) setNextState:v3];
}

void sub_10005735C(uint64_t a1, void *a2)
{
  v3 = a2;
  v41 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v43 = v3;
  objc_initWeak(&location, v3);
  v5 = [WeakRetained optInStates];
  v45 = [v5 currentTarget];

  v6 = [WeakRetained optInStates];
  v7 = [v6 targetOptInStates];
  v44 = [v7 objectForKeyedSubscript:v45];

  if (v44)
  {
    v8 = [WeakRetained deps];
    v9 = [v8 fetchCloudStorage];
    v10 = [WeakRetained deps];
    v11 = off_100381DA8;
    v12 = [WeakRetained zoneHandler];
    v13 = [WeakRetained deps];
    v14 = [v13 dataStore];
    v15 = [v14 controller];
    v16 = [v15 backgroundContext];
    v42 = [v9 cloudFetchOperationWithDeps:v10 initialFetch:0 userInteractive:1 reason:v11 zoneHandler:v12 context:v16];

    v17 = [KTCheckIDSRegistrationOperation alloc];
    v18 = [WeakRetained deps];
    v19 = [WeakRetained pcsOperation];
    v20 = kKTApplicationIdentifierIDS;
    v21 = [(KTCheckIDSRegistrationOperation *)v17 initWithDependencies:v18 application:kKTApplicationIdentifierIDS waitLonger:0 pcs:v19 idsRegistrationInterface:WeakRetained];

    v22 = [KTFetchIDSSelfOperation alloc];
    v23 = [WeakRetained deps];
    v24 = [(KTFetchIDSSelfOperation *)v22 initWithApplication:v20 dependencies:v23 intendedState:@"Ready" errorState:@"Ready"];

    v25 = [KTFetchKTSelfOperation alloc];
    v26 = [WeakRetained deps];
    v27 = [(KTFetchKTSelfOperation *)v25 initWithApplication:v20 dependencies:v26 intendedState:@"Ready" errorState:@"Ready"];

    v28 = [KTValidateSelfOperation alloc];
    v29 = [WeakRetained deps];
    v30 = [(KTValidateSelfOperation *)v28 initWithApplication:v20 dependencies:v29 isOptInSelfValidation:1];

    [(KTResultOperation *)v27 addSuccessDependency:v24];
    [(KTValidateSelfOperation *)v30 addNullableDependency:v42];
    [(KTResultOperation *)v30 addSuccessDependency:v27];
    [(KTResultOperation *)v30 addSuccessDependency:v24];
    [WeakRetained setLastValidateSelfOptIn:v30];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100057978;
    v46[3] = &unk_10031AFC8;
    objc_copyWeak(&v51, (v41 + 32));
    objc_copyWeak(&v52, &location);
    v31 = v30;
    v47 = v31;
    v48 = v44;
    v32 = v21;
    v49 = v32;
    v50 = v45;
    v33 = [KTResultOperation operationWithBlock:v46];
    [v33 addNullableDependency:v31];
    [v33 addNullableDependency:v32];
    [v43 dependOnBeforeGroupFinished:v33];
    v34 = [WeakRetained operationQueue];
    [v34 addOperation:v42];

    v35 = [WeakRetained operationQueue];
    [v35 addOperation:v32];

    v36 = [WeakRetained operationQueue];
    [v36 addOperation:v27];

    v37 = [WeakRetained operationQueue];
    [v37 addOperation:v24];

    v38 = [WeakRetained operationQueue];
    [v38 addOperation:v31];

    v39 = [WeakRetained operationQueue];
    [v39 addOperation:v33];

    objc_destroyWeak(&v52);
    objc_destroyWeak(&v51);
  }

  else
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249DE0();
    }

    v40 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v45;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Warning: no target application available: %@", buf, 0xCu);
    }

    v24 = [WeakRetained optInStates];
    [(KTFetchIDSSelfOperation *)v24 setCurrentTarget:0];
  }

  objc_destroyWeak(&location);
}

void sub_1000578E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 72));
  objc_destroyWeak((v24 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100057934(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100057978(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = objc_loadWeakRetained((a1 + 72));
  v4 = [*(a1 + 32) error];

  if (v4)
  {
    v5 = [*(a1 + 32) error];
    [*(a1 + 40) setError:v5];

    v6 = [*(a1 + 32) error];
    [v3 setError:v6];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100057BE4;
    v16[3] = &unk_10031AA50;
    v7 = *(a1 + 32);
    v17 = *(a1 + 40);
    [v7 handleOperationResults:v16];
    v8 = [WeakRetained optInStates];
    [v8 completedCurrentTarget];
  }

  else
  {
    if ([*(a1 + 48) checkIDSResult] == 1)
    {
      v9 = [v3 intendedState];
      [v3 setNextState:v9];
    }

    else
    {
      if (qword_10038BD00 != -1)
      {
        sub_100249E08();
      }

      v10 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = v10;
        *buf = 138412546;
        v19 = v12;
        v20 = 1024;
        v21 = [v11 checkIDSResult];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "IDS have not completed KT registration for appliction: %@ result: %d", buf, 0x12u);
      }

      v14 = [*(a1 + 48) error];
      [*(a1 + 40) setError:v14];

      v15 = [*(a1 + 48) error];
      [v3 setError:v15];

      v9 = [WeakRetained optInStates];
      [v9 completedCurrentTarget];
    }
  }
}

void sub_100057BF0(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100057C34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 error];

  if (!v5)
  {
    v6 = [[KTPendingFlag alloc] initWithFlag:@"PokeIDS" conditions:2 delayInSeconds:0.0];
    v7 = [*(a1 + 40) stateMachine];
    [v7 handlePendingFlag:v6];
  }

  v8 = [v4 intendedState];
  [v4 setNextState:v8];
}

void sub_100057D04(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained deps];
  v6 = [v5 publicKeyStore];
  [v6 clearForEnvironmentChange];

  v7 = [KTResultOperation named:@"reset-configure-client" withBlock:&stru_10031AFE8];
  v8 = [WeakRetained deps];
  v9 = [v8 dew];
  [v9 resetEnvLogClientNetworkTimeout];
  v11 = [v7 timeout:(v10 * 1000000000.0)];

  [v3 dependOnBeforeGroupFinished:v7];
  v12 = [WeakRetained deps];
  v13 = [v12 logClient];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100057EB4;
  v15[3] = &unk_10031B030;
  objc_copyWeak(&v17, (a1 + 32));
  v14 = v7;
  v16 = v14;
  [v13 configure:v15];

  objc_destroyWeak(&v17);
}

void sub_100057EB4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (qword_10038BD00 != -1)
  {
    sub_100249E1C();
  }

  v5 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "environment switch log client: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) setError:v3];
  v6 = [WeakRetained operationQueue];
  [v6 addOperation:*(a1 + 32)];
}

void sub_100057FB8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100057FFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 deps];
  [v3 resetLocalState:v5];

  v6 = [*(a1 + 32) zoneFetcher];
  [v6 cancelRequests];

  [*(a1 + 32) setZoneFetcher:0];
  [*(a1 + 32) resetLastAccountOperations];
  [*(a1 + 32) clearAccountMetrics];
  v7 = [*(a1 + 32) deps];
  v8 = [v7 stateMonitor];
  [v8 reset];

  [*(a1 + 32) setSpecificUser:0];
  [*(a1 + 32) setPcsOperation:0];
  [*(a1 + 32) setZoneHandler:0];
  [*(a1 + 32) setRepair:0];
  [*(a1 + 32) clearAllFollowups:@"reset-local-state"];
  v9 = [*(a1 + 32) statusReporting];
  [v9 clearDatabaseWithCompletionHandler:&stru_10031B070];

  v10 = [*(a1 + 32) deps];
  v11 = [v10 stateMonitor];
  [v11 setPendingChanges:1];

  v12 = [v4 intendedState];
  [v4 setNextState:v12];
}

void sub_100058178(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 deps];
  v6 = [v5 cloudRecords];
  [v6 clearLocalCloudState];

  v7 = [*(a1 + 32) deps];
  v8 = [v7 cloudRecords];
  [v8 clearDataStore:1];

  v9 = [v4 intendedState];
  [v4 setNextState:v9];
}

void sub_10005823C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [_TtC13transparencyd13KTZoneDestroy alloc];
  v5 = [WeakRetained deps];
  v6 = [WeakRetained zoneHandler];
  v7 = [WeakRetained deps];
  v8 = [v7 dataStore];
  v9 = [v8 controller];
  v10 = [v9 backgroundContext];
  v11 = [(KTZoneDestroy *)v4 initWithDeps:v5 zoneHandler:v6 context:v10];

  [v3 dependOnBeforeGroupFinished:v11];
  v12 = [WeakRetained operationQueue];
  [v12 addOperation:v11];

  v13 = [v3 intendedState];
  [v3 setNextState:v13];
}

void sub_100058388(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 pokeIDS];
  [v4 trigger];

  v5 = [v3 intendedState];
  [v3 setNextState:v5];
}

void sub_100058614(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000588DC(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005896C;
  block[3] = &unk_100316FE0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_100058BB0(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100058BF4(uint64_t a1)
{
  v2 = [*(a1 + 32) serverOptInFetchReasons];
  [v2 unionSet:*(a1 + 40)];

  if (*(a1 + 48) > 0.0)
  {
    v3 = [*(a1 + 32) serverOptInScheduler];
    [v3 waitUntil:(*(a1 + 48) * 1000000000.0)];
  }

  v4 = [*(a1 + 32) serverOptInScheduler];
  [v4 trigger];
}

void sub_100058D68(id a1, KTBAAKey *a2)
{
  v2 = a2;
  v3 = [(KTBAAKey *)v2 error];

  if (v3)
  {
    if (qword_10038BD00 != -1)
    {
      sub_100249E58();
    }

    v4 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [(KTBAAKey *)v2 error];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error fetching BAA cert from triggerBAACertFetcher: %@", &v7, 0xCu);
    }
  }
}

void sub_100058E64(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100058F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100058FB4(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100058FF8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005903C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100059080(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000590C4(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100059108(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005914C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100059190(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1000591D4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAltDSID:*(a1 + 32)];
  [v3 setHasBeenEnabled:*(a1 + 48)];
  [v3 setEnvironment:*(a1 + 40)];

  return v3;
}

void sub_100059230(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100059274(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1000592B8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEnvironment:*(a1 + 32)];

  return v3;
}

void sub_1000592FC(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_100059340(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHasBeenEnabled:*(a1 + 32)];

  return v3;
}

void sub_100059384(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1000593C8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEnvironment:*(a1 + 32)];

  return v3;
}

void sub_10005940C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100059454(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100059498(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000594DC(id a1, KTBAAKey *a2)
{
  v2 = a2;
  v3 = [(KTBAAKey *)v2 error];

  if (v3)
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A0EC();
    }

    v4 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [(KTBAAKey *)v2 error];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error fetching BAA cert from KTStateInitializing: %@", &v7, 0xCu);
    }
  }
}

void sub_1000595D8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005961C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100059750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005976C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained deps];
  v6 = [v5 accountOperations];
  v21 = 0;
  v7 = [v6 primaryAccount:&v21];
  v8 = v21;

  if (qword_10038BD00 != -1)
  {
    sub_10024A100();
  }

  v9 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v10 = @"yes";
    }

    else
    {
      v10 = @"no";
    }

    v11 = v9;
    v12 = [v7 aa_personID];
    v13 = [v7 aa_altDSID];
    *buf = 138544130;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TransparencyAccount Primary account found %{public}@ %@ %@: %@", buf, 0x2Au);
  }

  if (v7)
  {
    v14 = [WeakRetained deps];
    v15 = [v14 accountStateHolder];
    v16 = [v15 loadAccountMetadata];

    if (v16 && ([v16 altDSID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "aa_altDSID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqual:", v18), v18, v17, (v19 & 1) != 0))
    {
      v20 = [v3 intendedState];
      [v3 setNextState:v20];
    }

    else
    {
      [v3 setNextState:@"ResetLocalState"];
    }
  }

  else
  {
    [v3 setNextState:@"Initializing"];
  }
}

void sub_1000599D0(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

intptr_t sub_100059D8C(uint64_t a1)
{
  [*(a1 + 32) newServerOptInFetch:@"optOutWhenNotEligible"];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void sub_10005A5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005A5F4(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005A638(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005A67C(uint64_t a1)
{
  v2 = [*(a1 + 32) optInStates];
  v3 = [v2 targetOptInStates];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v5 = *(a1 + 48);
    v7 = [*(a1 + 32) optInStates];
    v6 = [v7 targetOptInStates];
    [v6 setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_10005A938(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005A97C(uint64_t a1)
{
  if (qword_10038BD00 != -1)
  {
    sub_10024A18C();
  }

  v2 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "IDS registration timeout hit", v7, 2u);
  }

  v3 = [*(a1 + 32) timer];
  dispatch_source_cancel(v3);

  v4 = [*(a1 + 32) checkIDSTimer];
  dispatch_source_cancel(v4);

  v5 = *(a1 + 40);
  v6 = [NSError errorWithDomain:kTransparencyErrorIDSRegistrationTimeout code:-391 userInfo:0];
  (*(v5 + 16))(v5, v6);
}

void sub_10005AA70(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005ABEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 timer];
  dispatch_source_cancel(v4);

  v5 = [*(a1 + 32) checkIDSTimer];
  dispatch_source_cancel(v5);

  (*(*(a1 + 40) + 16))();
}

void sub_10005ADF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005AE8C;
  v3[3] = &unk_10031B578;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v1 checkIDSHealth:v2 complete:v3];
}

void sub_10005AE8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"waitLonger"])
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A1B4();
    }

    v4 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 deps];
      v8 = [v7 idsOperations];
      [v8 sleepTimeBetweenIDSCheckups];
      v14 = 134217984;
      v15 = v9;
      v10 = "_waitForIDSRegistration, unregistered with IDS, asked to wait longer, will try again in %f seconds";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v10, &v14, 0xCu);
    }
  }

  else
  {
    if (![v3 isEqualToString:@"hsa2upsell"])
    {
      (*(*(a1 + 40) + 16))();
      goto LABEL_13;
    }

    if (qword_10038BD00 != -1)
    {
      sub_10024A1A0();
    }

    v11 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v6 = v11;
      v7 = [v12 deps];
      v8 = [v7 idsOperations];
      [v8 sleepTimeBetweenIDSCheckups];
      v14 = 134217984;
      v15 = v13;
      v10 = "_waitForIDSRegistration, unregistered with IDS, will try again in %f seconds";
      goto LABEL_11;
    }
  }

LABEL_13:
}

void sub_10005B04C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005B090(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005B304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005B32C(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [KTCheckIDSRegistrationOperation alloc];
    v5 = [WeakRetained deps];
    v6 = kKTApplicationIdentifierIDS;
    v7 = *(a1 + 48);
    v8 = [WeakRetained pcsOperation];
    v9 = [(KTCheckIDSRegistrationOperation *)v4 initWithDependencies:v5 application:v6 waitLonger:v7 pcs:v8 idsRegistrationInterface:*(a1 + 32)];

    [v10 runBeforeGroupFinished:v9];
  }
}

void sub_10005B414(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A1C8();
    }

    v4 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "failed to check self validation: %@", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = [NSString stringWithFormat:@"timeout: %@", v3];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) reason];
    (*(v7 + 16))(v7, v8);
  }
}

void sub_10005B54C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005B794(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005B7D8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005BD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005BD78(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005BDC8(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v9 = a5;
  v10 = a2;
  v11 = +[NSMutableDictionary dictionary];
  [*(a1 + 32) fillUploadedRdata:v11 withRegistrationData:v10];

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v11);
  if (a4)
  {
    v12 = [*(a1 + 32) deps];
    v13 = [v12 stateMonitor];
    [v13 setAccountStatus:3];
  }

  v14 = objc_alloc_init(TransparencyIDSRegistrationResponse);
  if (a3)
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A254();
    }

    v15 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = v15;
      v18 = [v16 traceUUID];
      *buf = 138543362;
      *v41 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "New keys inserted. Waiting while we try to make signatures: %{public}@", buf, 0xCu);
    }

    v19 = +[TransparencyAnalytics logger];
    v20 = [*(a1 + 32) smState];
    [v19 setNumberProperty:v20 forKey:@"stateAtSigFetchStart"];

    if ([*(a1 + 32) stateMachineRunning])
    {
      v21 = objc_alloc_init(KTCondition);
      [*(a1 + 32) setSignaturesComplete:v21];

      [*(a1 + 32) triggerKTAccountKeySignature:0.0];
      v22 = [*(a1 + 32) signaturesComplete];
      [v22 wait:5000000000];
    }

    v23 = [*(a1 + 32) signatureQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005C268;
    block[3] = &unk_10031B720;
    v24 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v34 = v24;
    v25 = v11;
    v26 = *(a1 + 56);
    v35 = v25;
    v39 = v26;
    v36 = v14;
    v38 = *(a1 + 48);
    v37 = v9;
    dispatch_async(v23, block);
  }

  else
  {
    [*(a1 + 32) triggerStatusUpdate:kKTApplicationIdentifierIDS];
    v27 = [*(a1 + 32) signatureQueue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10005C588;
    v32[3] = &unk_100316FE0;
    v32[4] = *(a1 + 32);
    dispatch_async(v27, v32);

    if (qword_10038BD00 != -1)
    {
      sub_10024A22C();
    }

    v28 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(*(*(a1 + 56) + 8) + 40);
      v30 = v28;
      LODWORD(v29) = [v29 count];
      v31 = [*(a1 + 40) traceUUID];
      *buf = 67109378;
      *v41 = v29;
      *&v41[4] = 2114;
      *&v41[6] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Returning existing signatures: %d. insertedKeys [0]: %{public}@", buf, 0x12u);
    }

    [v14 setRegistrationData:*(*(*(a1 + 56) + 8) + 40)];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10005C224(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005C268(uint64_t a1)
{
  [*(a1 + 32) setShouldPokeIDSUponSigning:1];
  if (qword_10038BD00 != -1)
  {
    sub_10024A268();
  }

  v2 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Trying to fetch signatures again.", buf, 2u);
  }

  v3 = [*(a1 + 40) requests];
  v4 = [v3 allKeys];

  v5 = [*(a1 + 32) deps];
  v6 = [v5 smDataStore];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10005C534;
  v18 = &unk_10031B6D8;
  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  [v6 fetchDeviceSignature:v4 complete:&v15];

  v7 = [TransparencyAnalytics logger:v15];
  v8 = [*(a1 + 32) smState];
  [v7 setNumberProperty:v8 forKey:@"stateAtSigFetchEnd"];

  if (qword_10038BD00 != -1)
  {
    sub_10024A27C();
  }

  v9 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(*(a1 + 80) + 8) + 40);
    v11 = v9;
    LODWORD(v10) = [v10 count];
    v12 = [*(a1 + 40) traceUUID];
    *buf = 67109378;
    v22 = v10;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Returning existing signatures: %d. insertedKeys [1]: %{public}@", buf, 0x12u);
  }

  [*(a1 + 56) setRegistrationData:*(*(*(a1 + 80) + 8) + 40)];
  v13 = *(a1 + 64);
  v14 = *(a1 + 56);
  (*(*(a1 + 72) + 16))();
}

void sub_10005C4F0(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005C544(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005C594(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005CCE8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005CD2C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005CD70(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005CDB4(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005CDF8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005CF04(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = objc_alloc_init(TransparencyIDSRegistrationResponse);
    [v3 setRegistrationData:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id sub_10005D0C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) transparencyDumpKTRegistrationData:*(a1 + 40)];
  }
}

void sub_10005D990(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005DD34(id a1, NSError *a2)
{
  v2 = a2;
  if (qword_10038BD00 != -1)
  {
    sub_10024A380();
  }

  v3 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "cloud-data-reset: %@", &v4, 0xCu);
  }
}

void sub_10005DDF4(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005DF20(id a1, NSError *a2)
{
  v2 = a2;
  if (qword_10038BD00 != -1)
  {
    sub_10024A394();
  }

  v3 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "cloud-store-reset: %@", &v4, 0xCu);
  }
}

void sub_10005DFE0(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005E108(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005E29C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005E41C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005E460(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_10005E558(uint64_t a1)
{
  v2 = [*(a1 + 32) deps];
  v3 = [v2 octagonOperations];
  v4 = [v3 ckksViewReady:@"Manatee" error:0];

  if (v4)
  {
    [*(a1 + 32) storeEligiblilitySuccess:@"ckks"];
  }

  v5 = [*(a1 + 32) deps];
  v6 = [v5 octagonOperations];
  v7 = [*(a1 + 32) deps];
  v8 = [v7 octagonOperations];
  [v8 octagonEligibilityTimeout];
  v9 = [v6 getCachedOctagonStatus:?];

  v10 = *(a1 + 32);
  if (v9)
  {
    [*(a1 + 32) storeEligiblilitySuccess:@"octagon"];
  }

  else
  {
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:-395 description:@"octagon status is pending or untrusted"];
    [v10 storeEligiblilityFailure:@"octagon" error:v11];
  }

  v12 = *(*(a1 + 40) + 16);

  return v12();
}

void sub_10005E7B0(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005E7F4(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 || !a2)
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A420();
    }

    v5 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Did not store eligiblity result, error %{public}@", &v6, 0xCu);
    }
  }
}

void sub_10005E8C0(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005EA20(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005EA64(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 || !a2)
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A448();
    }

    v5 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Did not store eligiblity result, error  %{public}@", &v6, 0xCu);
    }
  }
}

void sub_10005EB30(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005ED1C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005ED60(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timeBetweenReports];
  if (v4 >= 999)
  {
    v15 = *(a1 + 40);
    v16 = kTransparencyErrorEligibility;
    v17 = @"Server says don't report";
    v18 = 18;
  }

  else
  {
    [v3 timeBetweenReports];
    v6 = v5;
    v7 = [v3 lastReport];
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = v7;
    v9 = v6 * 86400.0;
    v10 = +[NSDate now];
    v11 = [v3 lastReport];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12;

    if (v13 >= v9)
    {
LABEL_11:
      v20 = [*(a1 + 32) statusReporting];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10005EFCC;
      v22[3] = &unk_10031BAF8;
      v21 = *(a1 + 40);
      v22[4] = *(a1 + 32);
      v23 = v21;
      [v20 iCloudAnalyticsEnabledWithCompletionHandler:v22];

      goto LABEL_12;
    }

    if (qword_10038BD00 != -1)
    {
      sub_10024A470();
    }

    v14 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Last eligibility report was too recent, skipping report", buf, 2u);
    }

    v15 = *(a1 + 40);
    v16 = kTransparencyErrorEligibility;
    v17 = @"Last eligibility report was too recent, skipping report";
    v18 = 10;
  }

  v19 = [TransparencyError errorWithDomain:v16 code:v18 description:v17];
  (*(v15 + 16))(v15, 0, v19);

LABEL_12:
}

void sub_10005EF88(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005EFCC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [*(a1 + 32) statusReporting];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005F1C0;
    v10[3] = &unk_10031BA90;
    v11 = *(a1 + 40);
    [v7 reportWithCompletionHandler:v10];
  }

  else
  {
    if (v5)
    {
      if (qword_10038BD00 != -1)
      {
        sub_10024A484();
      }

      v8 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "iCloudAnalytics error %@", buf, 0xCu);
      }
    }

    else
    {
      v6 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:8 description:@"iCloudAnalytics not enabled"];
    }

    if (qword_10038BD00 != -1)
    {
      sub_10024A498();
    }

    v9 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "iCloudAnalytics not enabled, not reporting eligibility", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10005F1C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (qword_10038BD00 != -1)
  {
    sub_10024A4C0();
  }

  v6 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2 == 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "KT Eligibility IDS recommendation %d", v7, 8u);
  }

  (*(*(a1 + 32) + 16))();
}