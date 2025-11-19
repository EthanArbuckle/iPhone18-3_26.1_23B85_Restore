void sub_1001DB414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1001DB438(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSPredicate predicateWithFormat:@"verificationResult == %d && application = %@", 2, *(a1 + 40)];
    v6 = [NSFetchRequest fetchRequestWithEntityName:@"IDSKTVerification"];
    v23 = v5;
    [v6 setPredicate:v5];
    [v6 setPropertiesToFetch:&off_10033D838];
    [v6 setReturnsDistinctResults:1];
    [v6 setResultType:2];
    if (*(a1 + 64))
    {
      [v6 setFetchLimit:?];
    }

    v7 = [*(a1 + 32) context];
    v8 = *(*(a1 + 48) + 8);
    v29 = *(v8 + 40);
    v9 = [v7 executeFetchRequest:v6 error:&v29];
    objc_storeStrong((v8 + 40), v29);

    if (v9 && [v9 count])
    {
      v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [v9 reverseObjectEnumerator];
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(*(a1 + 56) + 8) + 40);
          v19 = [*(*(&v25 + 1) + 8 * v17) objectForKeyedSubscript:@"uri"];
          [v18 addObject:v19];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v15);
    }
  }

  v20 = *(a1 + 32);
  v21 = objc_opt_class();
  v22 = *(*(a1 + 48) + 8);
  v24 = *(v22 + 40);
  [v21 cleanseError:&v24];
  objc_storeStrong((v22 + 40), v24);
}

void sub_1001DB940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1001DB964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) accountKey];
  v8 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"application == %@ && type == %d && uri == %@ && creationTime > %@ && accountKey == %@ && allowCacheHit == YES && idsOptedIn == %d", v4, 0, v5, v6, v7, [*(a1 + 56) optedIn]);

  v9 = +[IDSKTVerification fetchRequest];
  [v9 setPredicate:v8];
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"creationTime" ascending:0];
  v36 = v10;
  v11 = [NSArray arrayWithObjects:&v36 count:1];
  [v9 setSortDescriptors:v11];

  v12 = *(*(a1 + 80) + 8);
  obj = *(v12 + 40);
  v28 = v3;
  v13 = [v3 executeFetchRequest:v9 error:&obj];
  objc_storeStrong((v12 + 40), obj);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        v20 = [v19 serverLoggableDatas];
        v21 = [v20 isInputsEqual:*(a1 + 64)];

        if (v21)
        {
          v22 = [v19 verificationId];
          v23 = *(*(a1 + 88) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;

          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v25 = *(a1 + 72);
  v26 = objc_opt_class();
  v27 = *(*(a1 + 80) + 8);
  v29 = *(v27 + 40);
  [v26 cleanseError:&v29];
  objc_storeStrong((v27 + 40), v29);
}

void sub_1001DBF64(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DBFA8(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DBFEC(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DC228(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DC3A0(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DC708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DC728(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DC76C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:@"IDSKTVerification"];
    v6 = [NSPredicate predicateWithFormat:@"uri IN %@ && application == %@", *(a1 + 40), *(a1 + 48)];
    [v5 setPredicate:v6];

    [v5 setPropertiesToUpdate:&off_10033D6B0];
    [v5 setResultType:1];
    v7 = [*(a1 + 32) context];
    v8 = *(*(a1 + 56) + 8);
    v19 = *(v8 + 40);
    v9 = [v7 executeRequest:v5 error:&v19];
    objc_storeStrong((v8 + 40), v19);

    v10 = *(a1 + 32);
    v11 = *(*(a1 + 56) + 8);
    v18 = *(v11 + 40);
    [v10 persistWithError:&v18];
    objc_storeStrong((v11 + 40), v18);
    if (!v9)
    {
      if (qword_10039C9E0 != -1)
      {
        sub_10025C85C();
      }

      v12 = qword_10039C9E8;
      if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_ERROR))
      {
        v13 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412290;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "disableCacheHitsForUris: %@", buf, 0xCu);
      }
    }
  }

  v14 = *(a1 + 32);
  v15 = objc_opt_class();
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  [v15 cleanseError:&v17];
  objc_storeStrong((v16 + 40), v17);
}

void sub_1001DC980(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DC9C4(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DCDD0(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DCE14(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DD140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001DD164(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001DD17C(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"KTDeviceRecord"];
  v3 = [NSPredicate predicateWithFormat:@"deviceId == %@ && (application == %@ || request.application == %@)", *(a1 + 32), *(a1 + 40), *(a1 + 40)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 48) context];
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (v6 && [v6 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 loggableData];
    v9 = *(*(a1 + 64) + 8);
    v27 = *(v9 + 40);
    v10 = [TransparencyManagedDataStore deserializeLoggableDatas:v8 error:&v27];
    objc_storeStrong((v9 + 40), v27);

    if (!*(*(*(a1 + 64) + 8) + 40) && v10 && [v10 count] == 1)
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      (*(*(a1 + 56) + 16))();
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    else
    {
      if (qword_10039C9F0 != -1)
      {
        sub_10025C8D4();
      }

      v19 = qword_10039C9F8;
      if (os_log_type_enabled(qword_10039C9F8, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "failed to decode loggable data for %@", buf, 0xCu);
      }

      v21 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-303 underlyingError:*(*(*(a1 + 64) + 8) + 40) description:@"failed to decode loggable data for %@", *(a1 + 32)];
      v22 = *(*(a1 + 64) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      v24 = *(*(a1 + 64) + 8);
      v26 = *(v24 + 40);
      [TransparencyManagedDataStore cleanseError:&v26];
      v25 = v26;
      v11 = *(v24 + 40);
      *(v24 + 40) = v25;
    }
  }

  else
  {
    if (qword_10039C9F0 != -1)
    {
      sub_10025C8FC();
    }

    v12 = qword_10039C9F8;
    if (os_log_type_enabled(qword_10039C9F8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v31 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to find device record for %@", buf, 0xCu);
    }

    v14 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-302 underlyingError:*(*(*(a1 + 64) + 8) + 40) description:@"failed to find device record for %@", *(a1 + 32)];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(*(a1 + 64) + 8);
    v28 = *(v17 + 40);
    [TransparencyManagedDataStore cleanseError:&v28];
    v18 = v28;
    v7 = *(v17 + 40);
    *(v17 + 40) = v18;
  }
}

void sub_1001DD538(id a1)
{
  qword_10039C9F8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DD57C(id a1)
{
  qword_10039C9F8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DDAE8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001DDB0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001DDB24(uint64_t a1)
{
  v2 = [*(a1 + 32) createRequest];
  v3 = v2;
  if (v2)
  {
    [v2 setUri:*(a1 + 40)];
    [v3 setApplication:*(a1 + 48)];
    [v3 setAccountKey:*(a1 + 56)];
    if (*(a1 + 64))
    {
      [v3 setRequestId:?];
    }

    else
    {
      v8 = objc_opt_new();
      [v3 setRequestId:v8];
    }

    [v3 setQueryRequest:*(a1 + 72)];
    [v3 setQueryResponse:*(a1 + 80)];
    if (*(a1 + 80))
    {
      if (*(a1 + 88))
      {
        [v3 setResponseTime:?];
      }

      else
      {
        v9 = +[NSDate date];
        [v3 setResponseTime:v9];
      }
    }

    [v3 setIdsResponseTime:*(a1 + 96)];
    [v3 setClientLoggableDatas:*(a1 + 104)];
    [v3 setServerLoggableDatas:*(a1 + 112)];
    v10 = [*(a1 + 32) controller];
    atomic_fetch_add([v10 sequenceId], 1uLL);
    [v3 setSequenceId:?];

    [v3 setUnsigned:"type" value:*(a1 + 136)];
    [v3 setRequestTime:CFAbsoluteTimeGetCurrent()];
    [v3 setServerHint:0];
    v11 = *(a1 + 32);
    v12 = [v3 requestId];
    [v11 createKTRequestID:v12 request:v3];

    v13 = *(a1 + 32);
    v14 = *(*(a1 + 120) + 8);
    obj = *(v14 + 40);
    LODWORD(v12) = [v13 persistWithError:&obj];
    objc_storeStrong((v14 + 40), obj);
    if (v12)
    {
      v15 = [v3 requestId];
      v16 = *(*(a1 + 128) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    v18 = *(*(a1 + 120) + 8);
    v19 = *(v18 + 40);
    [TransparencyManagedDataStore cleanseError:&v19];
    objc_storeStrong((v18 + 40), v19);
  }

  else
  {
    v4 = [TransparencyError errorWithDomain:kTransparencyErrorAlloc code:-56 description:@"failed to create KTRequest entity"];
    v5 = *(*(a1 + 120) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) reportCoreDataEventForEntity:@"KTRequest" write:1 code:-56 underlyingError:0];
    if (qword_10039CA00 != -1)
    {
      sub_10025C924();
    }

    v7 = qword_10039CA08;
    if (os_log_type_enabled(qword_10039CA08, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to create KTRequest entity", buf, 2u);
    }
  }
}

void sub_1001DDDEC(id a1)
{
  qword_10039CA08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DE27C(id a1)
{
  qword_10039CA08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DE2C0(id a1)
{
  qword_10039CA08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DE864(id a1)
{
  qword_10039CA08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DEA0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = *(a1 + 32);
        v13 = [v11 requestId];
        [v12 createKTRequestID:v13 request:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) persistAndRefaultObjects:v6 error:a4];
}

void sub_1001DEB40(uint64_t a1)
{
  if (qword_10039CA00 != -1)
  {
    sub_10025C988();
  }

  v2 = qword_10039CA08;
  if (os_log_type_enabled(qword_10039CA08, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to populate KTRequests to KTRequestID lookup table: %@", &v4, 0xCu);
  }
}

void sub_1001DEBFC(id a1)
{
  qword_10039CA08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DEE58(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v6 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        [v11 setQueryResponse:0];
        [v11 setQueryRequest:0];
        [v11 setResponseTime:0];
        v12 = *(a1 + 32);
        v13 = [v11 failures];
        v14 = [v13 allObjects];
        [v12 deleteObjectSet:v14];

        v15 = [v11 failureEvent];

        if (v15)
        {
          v16 = *(a1 + 32);
          v17 = [v11 failureEvent];
          [v16 deleteObject:v17];
        }

        [v11 setServerHint:0];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if (([*(a1 + 32) persistWithError:a4] & 1) == 0)
  {
    *a3 = 1;
  }
}

void sub_1001DF3E8(id a1)
{
  qword_10039CA08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DF42C(id a1)
{
  qword_10039CA08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DF600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1001DF624(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchRequestForUUID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [SecXPCHelper cleanseErrorForXPC:*(*(a1[7] + 8) + 40)];
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v5)
  {
    (*(a1[6] + 16))();
    *(*(a1[8] + 8) + 24) = 1;
  }
}

void sub_1001DF7C4(uint64_t a1)
{
  +[TransparencySettings defaultQueryCacheTimeout];
  v3 = [NSDate dateWithTimeIntervalSinceNow:-v2];
  v4 = +[KTRequest fetchRequest];
  v5 = [NSSortDescriptor sortDescriptorWithKey:@"responseTime" ascending:0];
  v16 = v5;
  v6 = [NSArray arrayWithObjects:&v16 count:1];
  [v4 setSortDescriptors:v6];

  v7 = [NSPredicate predicateWithFormat:@"application == %@ && type == %d && accountKey == %@ && responseTime > %@", *(a1 + 32), 1, *(a1 + 40), v3];
  [v4 setPredicate:v7];

  [v4 setFetchLimit:1];
  v8 = [*(a1 + 48) context];
  v15 = 0;
  v9 = [v8 executeFetchRequest:v4 error:&v15];
  v10 = v15;

  if (v9 && [v9 count])
  {
    v11 = *(a1 + 56);
    v12 = [v9 objectAtIndexedSubscript:0];
    (*(v11 + 16))(v11, v12, 0);
  }

  else
  {
    v14 = v10;
    [TransparencyManagedDataStore cleanseError:&v14];
    v13 = v14;

    (*(*(a1 + 56) + 16))();
    v10 = v13;
  }
}

void sub_1001E042C(id a1)
{
  qword_10039CA18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E0470(id a1)
{
  qword_10039CA18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E0678(id a1)
{
  qword_10039CA18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E06BC(id a1)
{
  qword_10039CA18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E0954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E0980(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E0998(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 64) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSPredicate predicateWithFormat:@"uri == %@ && signatureResult == %d && mergeResult == %d && application == %@", *(a1 + 40), 1, 2, *(a1 + 48)];
    v6 = +[KTMutation fetchRequest];
    [v6 setPredicate:v5];
    [v6 setFetchBatchSize:*(a1 + 80)];
    v7 = [NSSortDescriptor sortDescriptorWithKey:@"mutationMs" ascending:1];
    v18 = v7;
    v8 = [NSArray arrayWithObjects:&v18 count:1];
    [v6 setSortDescriptors:v8];

    v9 = [*(a1 + 32) context];
    v10 = *(*(a1 + 64) + 8);
    v16 = *(v10 + 40);
    v11 = [v9 executeFetchRequest:v6 error:&v16];
    objc_storeStrong((v10 + 40), v16);

    if ([v11 count])
    {
      (*(*(a1 + 56) + 16))();
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }
  }

  v12 = *(a1 + 32);
  v13 = objc_opt_class();
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  [v13 cleanseError:&v15];
  objc_storeStrong((v14 + 40), v15);
}

void sub_1001E0B88(id a1)
{
  qword_10039CA18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E0D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1001E0D7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSPredicate predicateWithFormat:@"signatureResult == %d && mergeResult == %d && application == %@", 1, 2, *(a1 + 40)];
    v6 = +[KTMutation fetchRequest];
    v23 = v5;
    [v6 setPredicate:v5];
    [v6 setPropertiesToFetch:&off_10033D880];
    [v6 setReturnsDistinctResults:1];
    [v6 setResultType:2];
    if (*(a1 + 64))
    {
      [v6 setFetchLimit:?];
    }

    v7 = [*(a1 + 32) context];
    v8 = *(*(a1 + 48) + 8);
    v29 = *(v8 + 40);
    v9 = [v7 executeFetchRequest:v6 error:&v29];
    objc_storeStrong((v8 + 40), v29);

    if (v9 && [v9 count])
    {
      v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [v9 reverseObjectEnumerator];
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(*(a1 + 56) + 8) + 40);
          v19 = [*(*(&v25 + 1) + 8 * v17) objectForKeyedSubscript:@"uri"];
          [v18 addObject:v19];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v15);
    }
  }

  v20 = *(a1 + 32);
  v21 = objc_opt_class();
  v22 = *(*(a1 + 48) + 8);
  v24 = *(v22 + 40);
  [v21 cleanseError:&v24];
  objc_storeStrong((v22 + 40), v24);
}

void sub_1001E1158(id a1)
{
  qword_10039CA18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E14C0(uint64_t a1)
{
  v2 = [*(a1 + 32) copyManagedObject:0];
  if (v2)
  {
    v3 = [*(a1 + 32) dataStore];
    [v3 onMocSetMapHead:v2 inclusionResult:*(a1 + 48) inclusionError:*(a1 + 40)];

    v4 = [*(a1 + 32) dataStore];
    v16 = 0;
    v5 = [v4 persistWithError:&v16];
    v6 = v16;

    if ((v5 & 1) == 0)
    {
      if (qword_10039CA20 != -1)
      {
        sub_10025CAB4();
      }

      v7 = qword_10039CA28;
      if (os_log_type_enabled(qword_10039CA28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to save inclusion state for map head: %@", buf, 0xCu);
      }

      v8 = [*(a1 + 32) dataStore];
      [v8 reportCoreDataPersistEventForLocation:@"mapHeadIncusionState" underlyingError:v6];
    }

    Current = CFAbsoluteTimeGetCurrent();
    [v2 receiptTime];
    v11 = Current - v10;
    v12 = [v2 application];
    v13 = [TransparencyAnalytics formatEventName:@"PatInclusionProofTime" application:v12];

    v14 = +[TransparencyAnalytics logger];
    v15 = [NSNumber numberWithDouble:v11];
    [v14 logMetric:v15 withName:v13];
  }
}

void sub_1001E16B4(id a1)
{
  qword_10039CA28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E1974(id a1)
{
  qword_10039CA28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1001E19B8(id *a1, void *a2, void *a3)
{
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [a1[4] metadata];
    v8 = kTransparencyResponseMetadataKeyServerHint;
    v9 = [v7 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    if (v9)
    {
      v10 = [a1[4] metadata];
      v11 = [v10 objectForKeyedSubscript:v8];
      [v6 setObject:v11 forKeyedSubscript:v8];
    }

    if ([v6 count])
    {
      v12 = v6;
      *a3 = v6;
    }
  }

  v13 = a1[4];
  v32 = 0;
  v14 = [v13 verifyWithError:&v32];
  v15 = v32;
  if (v14 == 1)
  {
    v16 = [a1[4] nodeBytes];
    v31 = v15;
    v17 = [(TransparencyGPBMessage *)PerApplicationTreeNode parseFromData:v16 error:&v31];
    v18 = v31;

    if (v17)
    {
      if (![v17 hasObjectMapHead])
      {
        goto LABEL_19;
      }

      v19 = [v17 objectMapHead];
      v20 = [v19 object];
      v21 = [a1[5] mapHead];
      v22 = [v20 isEqualToData:v21];

      if (v22)
      {
        v14 = 1;
        [a1[6] setInclusionResult:1 mapHead:a1[5] failure:0];
        v23 = v18;
      }

      else
      {
LABEL_19:
        v23 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-62 description:@"per-app tree entry does not contain the SMH in the map entry"];

        if (a2 && v23)
        {
          v26 = v23;
          *a2 = v23;
        }

        if (qword_10039CA20 != -1)
        {
          sub_10025CB40();
        }

        v27 = qword_10039CA28;
        if (os_log_type_enabled(qword_10039CA28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "per-app tree entry does not contain the SMH in the map entry", buf, 2u);
        }

        [a1[6] setInclusionResult:0 mapHead:a1[5] failure:v23];
        v14 = 0;
      }
    }

    else
    {
      v23 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-140 underlyingError:v18 description:@"failed to decode per-app tree node: %@", v18];

      if (qword_10039CA20 != -1)
      {
        sub_10025CB68();
      }

      v28 = qword_10039CA28;
      if (os_log_type_enabled(qword_10039CA28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v23;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to decode per-app tree node: %@", buf, 0xCu);
      }

      v14 = 0;
      if (a2 && v23)
      {
        v29 = v23;
        v14 = 0;
        *a2 = v23;
      }
    }
  }

  else
  {
    v23 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-13 underlyingError:v15 description:@"per-app tree verification failed"];

    if (a2 && v23)
    {
      v24 = v23;
      *a2 = v23;
    }

    if (qword_10039CA20 != -1)
    {
      sub_10025CB18();
    }

    v25 = qword_10039CA28;
    if (os_log_type_enabled(qword_10039CA28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "per-app tree verification failed", buf, 2u);
    }
  }

  return v14;
}

void sub_1001E1DE0(id a1)
{
  qword_10039CA28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E1E24(id a1)
{
  qword_10039CA28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E1E68(id a1)
{
  qword_10039CA28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E1EAC(id a1)
{
  qword_10039CA28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1001E21AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 32) verifyWithError:a2];
  if (!v5 && +[TransparencyAnalytics hasInternalDiagnostics])
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [*(a1 + 32) metadata];
    v8 = kTransparencyResponseMetadataKeyServerHint;
    v9 = [v7 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    if (v9)
    {
      v10 = [*(a1 + 32) metadata];
      v11 = [v10 objectForKeyedSubscript:v8];
      [v6 setObject:v11 forKeyedSubscript:v8];
    }

    if ([v6 count])
    {
      v12 = v6;
      *a3 = v6;
    }
  }

  return v5;
}

void sub_1001E22B0(id a1)
{
  qword_10039CA28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1001E2564(uint64_t a1, void *a2, void *a3)
{
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [*(a1 + 32) metadata];
    v8 = kTransparencyResponseMetadataKeyServerHint;
    v9 = [v7 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    if (v9)
    {
      v10 = [*(a1 + 32) metadata];
      v11 = [v10 objectForKeyedSubscript:v8];
      [v6 setObject:v11 forKeyedSubscript:v8];
    }

    if ([v6 count])
    {
      v12 = v6;
      *a3 = v6;
    }
  }

  v13 = [*(a1 + 32) verifyWithError:a2];
  if (v13 != 1)
  {
    if (a2)
    {
      *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-13 underlyingError:*a2 description:@"per-app tree verification failed"];
    }

    if (qword_10039CA30 != -1)
    {
      sub_10025CBB8();
    }

    v14 = qword_10039CA38;
    if (os_log_type_enabled(qword_10039CA38, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "per-app tree verification failed", v16, 2u);
    }
  }

  return v13;
}

void sub_1001E2708(id a1)
{
  qword_10039CA38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

int64_t sub_1001E3240(id a1, OptInOut *a2, OptInOut *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(OptInOut *)v4 timestampMs];
  if (v6 <= [(OptInOut *)v5 timestampMs])
  {
    v8 = [(OptInOut *)v4 timestampMs];
    if (v8 == [(OptInOut *)v5 timestampMs])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_1001E4080(id a1)
{
  qword_10039CA48 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E4B40(id a1)
{
  qword_10039CA58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E4B84(id a1)
{
  qword_10039CA58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E4BC8(id a1)
{
  qword_10039CA58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E4C0C(id a1)
{
  qword_10039CA58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E4C50(id a1)
{
  qword_10039CA58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E4C94(id a1)
{
  qword_10039CA58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E4CD8(id a1)
{
  qword_10039CA58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E4D1C(id a1)
{
  qword_10039CA58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E4D60(id a1)
{
  qword_10039CA58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E4DA4(id a1)
{
  qword_10039CA58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E503C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E5060(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained pokeAndUpdateIDSState:v3 withPublicKey:*(a1 + 32)];

  v4 = [WeakRetained operationQueue];
  v5 = [WeakRetained finishedOp];
  [v4 addOperation:v5];
}

void sub_1001E65B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E664C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E6664(id a1)
{
  qword_10039CA68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E66A8(id a1)
{
  qword_10039CA68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E66EC(id a1)
{
  qword_10039CA68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E6730(id a1)
{
  qword_10039CA68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1001E6774(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 mutableCopy];
  }

  else
  {
    v3 = +[NSMutableDictionary dictionary];
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_1001E67D4(id a1)
{
  qword_10039CA68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E6818(id a1)
{
  qword_10039CA68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E685C(id a1)
{
  qword_10039CA68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E68A0(id a1)
{
  qword_10039CA68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E68E4(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_1001E6BA4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v8 = [v4 pushToken];
  v5 = [v4 tbsKTIDSRegistrationData];
  v6 = [v4 application];

  v7 = [v3 addDevice:v8 registationData:v5 app:v6];
}

void sub_1001E6D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id *sub_1001E6D44(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = [result[6] updateCloudRecordsWithRegistrationData:a2 deps:result[4]];
    *(*(v2[5] + 1) + 24) = result;
  }

  return result;
}

void sub_1001E7044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1001E7068(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_20;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [a2 allValues];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v27;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v26 + 1) + 8 * i);
      v12 = [*(a1 + 32) accountKeyService];
      v13 = [v11 application];
      v14 = [v12 accountKeyService:v13];

      if (!v14)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_18:
        v6 = 0;
        goto LABEL_19;
      }

      v25 = 0;
      v15 = [v14 publicPublicKey:&v25];
      v16 = v25;
      if (!v15)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_17:

        goto LABEL_18;
      }

      v17 = [*(a1 + 32) accountKeyService];
      v18 = [v11 validateSignature:v17 withPublicKey:v15];

      if (v18)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        v19 = kTransparencyErrorInternal;
        v20 = [v11 application];
        v21 = [TransparencyError errorWithDomain:v19 code:-349 errorLevel:3 underlyingError:0 description:@"%@ failed with %@", v20, v18];
        v22 = *(*(a1 + 40) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        goto LABEL_17;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    v6 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_19:

LABEL_20:
}

void sub_1001E76D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E76EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueueRecheck];
}

void sub_1001E772C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueueRecheck];
}

void sub_1001E7984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E799C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1001E79B4(uint64_t a1)
{
  if ([*(a1 + 32) queueIsLocked])
  {
    v2 = [*(a1 + 32) lastUnlockedTime];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    return _objc_release_x1();
  }

  else
  {
    v5 = +[NSDate date];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 40) + 8) + 40);

    return [v8 setLastUnlockedTime:v9];
  }
}

id sub_1001E7E7C(uint64_t a1)
{
  result = [*(a1 + 32) queueIsLocked];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _onqueueRecheck];
  }

  return result;
}

void sub_1001E7F7C(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = [*(a1 + 32) queueIsLocked] ^ 1;
  v3 = dispatch_get_global_queue(21, 0);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E8044;
  v4[3] = &unk_1003285A8;
  v5 = *(a1 + 40);
  v6 = v2;
  dispatch_async(v3, v4);
}

void sub_1001E8098(id a1)
{
  v1 = [KTLockStateTracker alloc];
  v4 = objc_alloc_init(KTActualLockStateProvider);
  v2 = [(KTLockStateTracker *)v1 initWithProvider:v4];
  v3 = qword_10039CA78;
  qword_10039CA78 = v2;
}

void sub_1001E85A0(id a1)
{
  qword_10039CA90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E85E4(id a1)
{
  qword_10039CA90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E8BC8(id a1)
{
  qword_10039CA90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E9210(id a1)
{
  qword_10039CAA0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E9254(id a1)
{
  qword_10039CAA0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E98A0(id a1)
{
  qword_10039CAB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E98E4(id a1)
{
  qword_10039CAB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001E9928(id a1)
{
  qword_10039CAB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EA204(id a1)
{
  qword_10039CAB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EA34C(id a1)
{
  qword_10039CAB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EA578(id a1)
{
  qword_10039CAC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EB73C(id a1)
{
  qword_10039CAD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EBA6C(id a1)
{
  qword_10039CAD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EBAB0(id a1)
{
  qword_10039CAD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1001EBC9C(uint64_t a1, void *a2)
{
  if (![*(a1 + 32) hasSignature] || (objc_msgSend(*(a1 + 32), "signature"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v31 = -3;
    if (!a2)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v5 = [*(a1 + 32) mutation];
  if (!v5 || (v6 = v5, [*(a1 + 32) mutation], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, !v8))
  {
    v31 = -4;
    if (!a2)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v9 = [*(a1 + 32) signature];
  v10 = [v9 signature];
  if (!v10)
  {
    v31 = -6;
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [*(a1 + 32) signature];
  v13 = [v12 signature];
  v14 = [v13 length];

  if (!v14)
  {
    v31 = -6;
    if (!a2)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v9 = [*(a1 + 32) signature];
  v15 = [v9 signingKeySpkihash];
  if (!v15)
  {
    v31 = -5;
LABEL_26:

    if (!a2)
    {
      goto LABEL_28;
    }

LABEL_27:
    *a2 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v31 description:@"SMT missing data required for verification"];
    goto LABEL_28;
  }

  v16 = v15;
  v17 = [*(a1 + 32) signature];
  v18 = [v17 signingKeySpkihash];
  v19 = [v18 length];

  if (v19)
  {
    v20 = [*(a1 + 32) verifier];
    v21 = [*(a1 + 32) mutation];
    v22 = [*(a1 + 32) signature];
    v23 = [v22 signature];
    v24 = [*(a1 + 32) signature];
    v25 = [v24 signingKeySpkihash];
    v26 = [*(a1 + 32) signature];
    v34 = 0;
    v27 = [v20 verifyMessage:v21 signature:v23 spkiHash:v25 algorithm:+[TransparencySignatureVerifier secKeyAlgorithmForProtoAlgorithm:](TransparencySignatureVerifier error:{"secKeyAlgorithmForProtoAlgorithm:", objc_msgSend(v26, "algorithm")), &v34}];
    v28 = v34;

    v29 = v27;
    if ([TransparencyError hasUnknownSPKIHashError:v28])
    {
      v29 = 2;
    }

    if (a2 && v28)
    {
      v30 = v28;
      *a2 = v28;
    }

    if (a2 && v27 != 1)
    {
      *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-137 underlyingError:*a2 description:?];
    }

    return v29;
  }

  v31 = -5;
  if (a2)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (qword_10039CAC8 != -1)
  {
    sub_10025D040();
  }

  v32 = qword_10039CAD0;
  if (os_log_type_enabled(qword_10039CAD0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "SMT missing data required for verification", buf, 2u);
  }

  return 0;
}

void sub_1001EC010(id a1)
{
  qword_10039CAD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EC4E8(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EC52C(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EC570(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EC898(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EC8DC(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ECB90(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ECBD4(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ECE88(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ECECC(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ED18C(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ED1D0(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ED678(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ED950(id a1)
{
  qword_10039CAE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EDBB4(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_10039CAF0;
  qword_10039CAF0 = v1;

  [qword_10039CAF0 setObject:@"com.apple.KTAccountKey" forKeyedSubscript:kKTApplicationIdentifierIDS];
  [qword_10039CAF0 setObject:@"com.apple.KTAccountKey" forKeyedSubscript:kKTApplicationIdentifierIDSMultiplex];
  [qword_10039CAF0 setObject:@"com.apple.KTAccountKey" forKeyedSubscript:kKTApplicationIdentifierIDSFaceTime];
  [qword_10039CAF0 setObject:@"com.apple.KTAccountKey" forKeyedSubscript:kKTApplicationIdentifierCloudKit];
  v3 = qword_10039CAF0;
  v4 = kKTApplicationIdentifierTLT;

  [v3 setObject:@"com.apple.KTAccountKey" forKeyedSubscript:v4];
}

void sub_1001EDE28(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EDE6C(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1001EE130(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("KTAccountKeyServer", v2);
  v4 = qword_10039CB20;
  qword_10039CB20 = v3;

  v5 = +[NSMutableDictionary dictionary];
  v6 = qword_10039CB10;
  qword_10039CB10 = v5;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001EE220;
  handler[3] = &unk_100328A00;
  handler[4] = *(a1 + 32);
  return notify_register_dispatch("com.apple.security.view-change.Manatee", &unk_10039CB28, qword_10039CB20, handler);
}

id sub_1001EE220(uint64_t a1)
{
  if (qword_10039CAF8 != -1)
  {
    sub_10025D194();
  }

  v2 = qword_10039CB00;
  if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "got notice that view changed; clearing cached account key", v4, 2u);
  }

  return [*(a1 + 32) clearCachedPCSIdentities];
}

void sub_1001EE2A8(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EE404(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EE5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1001EE5F4(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [NSNumber numberWithInt:PCSReportManateeStatus()];
  [v2 setObject:v4 forKeyedSubscript:@"manateeStatus"];

  v5 = [WeakRetained numberPropertyForKey:@"KTAccountKeyRetry"];
  [v2 setObject:v5 forKeyedSubscript:@"KTAccountKeyRetry"];

  v6 = *(a1 + 32);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001EE77C;
  v16 = &unk_100328A48;
  v7 = v2;
  v17 = v7;
  v18 = WeakRetained;
  v8 = WeakRetained;
  [v6 enumerateObjectsUsingBlock:&v13];
  v9 = [KTKVSStore strictStore:v13];
  v10 = [v9 accountMetricID];

  [v8 setMetricsAccountID:v10];
  v11 = v7;

  return v7;
}

void sub_1001EE77C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"KTAccountKey-%@", v3];
  v5 = [KTAccountKeyServer sharedKeyServiceForApplication:v3];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 haveIdentity]);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [KTEnrollmentSignatureSupport enrollementLoggingKeys:v3];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [*(a1 + 40) numberPropertyForKey:v12];
        [*(a1 + 32) setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

void sub_1001EEB24(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EEB68(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EED44(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EEF60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [v2 pcsOptions:&v14];
  v4 = v14;
  v5 = [v3 mutableCopy];

  if (v5)
  {
    if (*(a1 + 56) == 1)
    {
      [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kPCSSetupRollIdentity];
    }

    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kPCSSetupSyncIdentity];
    v6 = [*(a1 + 32) creationGroup];
    objc_sync_enter(v6);
    v7 = [*(a1 + 32) creationGroup];
    dispatch_group_enter(v7);

    [*(a1 + 32) setOutstandingCreationSignal:1];
    objc_sync_exit(v6);

    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = [v8 service];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001EF118;
    v12[3] = &unk_100328B18;
    v11 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v11;
    [v8 wrapperPCSIdentitySetCreateManatee:v9 service:v10 options:v5 block:v12];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001EF118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    [v5 identity];
    v8 = PCSIdentityCopyPublicKeyInfo();
    if (qword_10039CAF8 != -1)
    {
      sub_10025D234();
    }

    v9 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v8 kt_hexString];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "created new account key identity: %@", &v14, 0xCu);
    }

    [*(a1 + 32) cachePCSIdentity:v5];
  }

  (*(*(a1 + 40) + 16))();
  v12 = [*(a1 + 32) creationGroup];
  objc_sync_enter(v12);
  v13 = [*(a1 + 32) creationGroup];
  dispatch_group_leave(v13);

  [*(a1 + 32) setOutstandingCreationSignal:0];
  objc_sync_exit(v12);

  objc_autoreleasePoolPop(v7);
}

void sub_1001EF2D4(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EF3CC(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 48);
    [*(a1 + 32) service];
    v7 = PCSIdentitySetCopyCurrentIdentityPointer();
    v8 = v7;
    if (v7 && [v7 identity] && CFEqual(a2, objc_msgSend(v8, "identity")))
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = +[TransparencyError errorWithDomain:code:errorLevel:underlyingError:description:](TransparencyError, "errorWithDomain:code:errorLevel:underlyingError:description:", kTransparencyErrorInternal, -352, 4, 0, @"Identity created %@ is not current %@", a2, [v8 identity]);
      (*(v9 + 16))(v9, 0, v10);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v8 = 0;
  }
}

void sub_1001EF994(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EF9D8(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EFA1C(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EFB7C(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EFD88(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EFF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001EFF88(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001EFFCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    CFRetain(v5);
    v7 = PCSIdentityCopyPublicKeyInfo();
    if (qword_10039CAF8 != -1)
    {
      sub_10025D324();
    }

    v8 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v7 kt_hexString];
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "rolled account key identity to %@", buf, 0xCu);
    }

    v11 = +[TransparencyAnalytics logger];
    [v11 logSuccessForEventNamed:@"KTAccountKeyRoll"];

    v18 = 0;
    v12 = [KTAccountKeyServer publicKeyInfoFromIdentity:v5 error:&v18];
    v13 = v18;

    (*(*(a1 + 32) + 16))();
    CFRelease(v5);
  }

  else
  {
    if (qword_10039CAF8 != -1)
    {
      sub_10025D338();
    }

    v14 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "account key roll failed: %@", buf, 0xCu);
    }

    v15 = +[TransparencyAnalytics logger];
    [v15 logResultForEvent:@"KTAccountKeyRoll" hardFailure:1 result:v6];

    v13 = v6;
    (*(*(a1 + 32) + 16))();
  }

  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 24);
  if (v17)
  {
    *(v16 + 24) = 0;
    CFRelease(v17);
  }
}

void sub_1001F0230(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F0274(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F04E4(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F05E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v26 = 0;
    v7 = +[KTAccountKeyServer publicKeyInfoFromIdentity:error:](KTAccountKeyServer, "publicKeyInfoFromIdentity:error:", [v5 identity], &v26);
    v8 = v26;
    if (!v7)
    {
      v19 = +[TransparencyAnalytics logger];
      [v19 logResultForEvent:@"KTAccountKeySign" hardFailure:1 result:v8];

      (*(*(a1 + 40) + 16))();
LABEL_23:

      goto LABEL_24;
    }

    if (*(a1 + 32))
    {
      [v5 identity];
      v9 = *(a1 + 32);
      Signature = PCSIdentityCreateSignature();
      if (!Signature)
      {
        if (qword_10039CAF8 != -1)
        {
          sub_10025D39C();
        }

        v23 = qword_10039CB00;
        if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to sign data with account key: %@", buf, 0xCu);
        }

        v24 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-266 description:@"failed to sign data with account key"];
        v25 = +[TransparencyAnalytics logger];
        [v25 logResultForEvent:@"KTAccountKeySign" hardFailure:1 result:v24];

        (*(*(a1 + 40) + 16))();
        v8 = v24;
        goto LABEL_22;
      }

      if (qword_10039CAF8 != -1)
      {
        sub_10025D374();
      }

      v11 = qword_10039CB00;
      if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = v11;
        v14 = [v12 length];
        v15 = [v7 kt_hexString];
        v16 = [v5 currentItemPointerModificationTime];
        *buf = 134218498;
        v28 = v14;
        v29 = 2114;
        v30 = v15;
        v31 = 2114;
        v32 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully signed %lu bytes with account key: %{public}@ CIPmTime: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      Signature = 0;
    }

    v20 = +[TransparencyAnalytics logger];
    [v20 logSuccessForEventNamed:@"KTAccountKeySign"];

    v21 = *(a1 + 40);
    v22 = [v5 currentItemPointerModificationTime];
    (*(v21 + 16))(v21, v7, Signature, v22, 0);

LABEL_22:
    goto LABEL_23;
  }

  v17 = +[TransparencyAnalytics logger];
  [v17 logResultForEvent:@"KTAccountKeySign" hardFailure:1 result:v6];

  if (qword_10039CAF8 != -1)
  {
    sub_10025D3C4();
  }

  v18 = qword_10039CB00;
  if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "failed to get PCS identity: %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_24:
}

void sub_1001F0A08(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F0A4C(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F0A90(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F0C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F0C44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F0C5C(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = v6;
  if (!a2 || v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    v8 = [a2 identity];
    v9 = *(*(a1 + 32) + 8);
    obj = *(v9 + 40);
    v10 = [KTAccountKeyServer publicKeyInfoFromIdentity:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_1001F0F8C(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F0FD0(id a1)
{
  qword_10039CB00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F188C(id a1)
{
  qword_10039CB38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F18D0(id a1)
{
  qword_10039CB38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1001F1914(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F192C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001F1CA0(id a1)
{
  qword_10039CB48 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F1CE4(id a1)
{
  qword_10039CB48 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F1F54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (qword_10039CB40 != -1)
  {
    sub_10025D4B4();
  }

  v7 = qword_10039CB48;
  if (os_log_type_enabled(qword_10039CB48, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 dsid];
    v11 = [*(a1 + 32) altDSID];
    v12 = 138413058;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PCSIdentitySetCreateManatee: %@[%@] %@: %@", &v12, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v6);
}

void sub_1001F20B0(id a1)
{
  qword_10039CB48 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1001F2870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F2888(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) applicationID];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v2 createManagedObject:v3 uri:v4 serverHint:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (v7)
  {
    [v7 setSignatureResult:1];
    v8 = [*(a1 + 40) dataStore];
    [v8 saveAndRefaultObject:v7];
  }

  v9 = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 64) + 8) + 40)];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1001F3494(id a1)
{
  qword_10039CB58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F34D8(id a1)
{
  qword_10039CB58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F3B7C(id a1)
{
  qword_10039CB58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F3BC0(id a1)
{
  qword_10039CB58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F4544(id a1)
{
  qword_10039CB58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F4E54(id a1)
{
  qword_10039CB58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F4E98(id a1)
{
  qword_10039CB58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F4EDC(id a1)
{
  qword_10039CB58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F4F20(id a1)
{
  qword_10039CB58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F4F64(id a1)
{
  qword_10039CB58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F55E8(id a1)
{
  qword_10039CB68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F5D18(id a1)
{
  qword_10039CB68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F5F0C(id a1)
{
  qword_10039CB68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F60E8(id a1)
{
  qword_10039CB68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F675C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001F6780(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    if (qword_10039CB70 != -1)
    {
      sub_10025D6BC();
    }

    v8 = qword_10039CB78;
    if (os_log_type_enabled(qword_10039CB78, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "fetchSelfVerificationInfo: error: %{public}@", buf, 0xCu);
    }

    [WeakRetained setError:v6];
    v9 = [WeakRetained operationQueue];
    v10 = [WeakRetained finishedOp];
    [v9 addOperation:v10];
  }

  else
  {
    if (qword_10039CB70 != -1)
    {
      sub_10025D6D0();
    }

    v11 = qword_10039CB78;
    if (os_log_type_enabled(qword_10039CB78, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v5 selfDeviceID];
      v14 = [v13 kt_hexString];
      *buf = 138543362;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "fetchSelfVerificationInfo: selfInfo: deviceID: %{public}@", buf, 0xCu);
    }

    v15 = [v5 uriToServerLoggableDatas];
    [v15 enumerateKeysAndObjectsUsingBlock:&stru_1003290F8];

    v16 = [WeakRetained deps];
    v17 = [v16 smDataStore];
    v18 = +[NSDate date];
    [v17 setSettingsDate:@"KTIDSLastSelfFetch" date:v18];

    v19 = [WeakRetained deps];
    v20 = [v19 smDataStore];
    v21 = [WeakRetained application];
    v25 = 0;
    v22 = [v20 storeSelfVerificationInfo:v5 application:v21 error:&v25];
    v9 = v25;

    if (v22)
    {
      v23 = [WeakRetained intendedState];
      [WeakRetained setNextState:v23];
    }

    else
    {
      [WeakRetained setError:v9];
    }

    v10 = [WeakRetained operationQueue];
    v24 = [WeakRetained finishedOp];
    [v10 addOperation:v24];
  }
}

void sub_1001F6A7C(id a1)
{
  qword_10039CB78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F6AC0(id a1)
{
  qword_10039CB78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F6B04(id a1, NSString *a2, KTVerificationInfo *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  if (qword_10039CB70 != -1)
  {
    sub_10025D6E4();
  }

  v7 = qword_10039CB78;
  if (os_log_type_enabled(qword_10039CB78, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(KTVerificationInfo *)v6 accountKey];
    v10 = [v9 kt_hexString];
    v11 = [(KTVerificationInfo *)v6 idsResponseTime];
    v12 = [(KTVerificationInfo *)v6 serverLoggableDatas];
    v13 = 141559042;
    v14 = 1752392040;
    v15 = 2112;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 1024;
    v22 = [v12 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "fetchSelfVerificationInfo: uri: %{mask.hash}@ public: %{public}@ idsResp: %@ devices: %d", &v13, 0x30u);
  }
}

void sub_1001F6C7C(id a1)
{
  qword_10039CB78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F7134(id a1)
{
  qword_10039CB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F71CC(id a1)
{
  v1 = [[KTKVSStore alloc] initWithStoreIdentifier:@"com.apple.Transparency.KT" type:1];
  v2 = qword_10039CB90;
  qword_10039CB90 = v1;

  if (([qword_10039CB90 synchronize] & 1) == 0)
  {
    if (qword_10039CB80 != -1)
    {
      sub_10025D720();
    }

    v3 = qword_10039CB88;
    if (os_log_type_enabled(qword_10039CB88, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "KTKVSStore failed to synchronize", v5, 2u);
    }
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:qword_10039CB90 selector:"handleKVSStoreChange:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:qword_10039CB90];
}

void sub_1001F72B8(id a1)
{
  qword_10039CB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F74A0(id a1)
{
  qword_10039CB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F74E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10039CB80 != -1)
  {
    sub_10025D748();
  }

  v4 = qword_10039CB88;
  if (os_log_type_enabled(qword_10039CB88, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "KTKVSStore calling synchronizeWithCompletionHandler", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1001F758C(id a1)
{
  qword_10039CB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F76A4(id a1)
{
  qword_10039CBA0 = [[KTKVSSoftStore alloc] initWithStore:0];

  _objc_release_x1();
}

void sub_1001F7918(id a1)
{
  qword_10039CB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F7E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001F7EEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained manateeChanged];
}

void sub_1001F7F2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkAllCKKSMonitoredViews];
}

void sub_1001F7F6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained nfs];
  [v1 trigger];
}

void sub_1001F823C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F825C(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F82A0(uint64_t a1)
{
  v2 = [*(a1 + 32) views];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void sub_1001F847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001F8494(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = [*(a1 + 32) octagonTrusted];
  if (v2 != result)
  {
    if (qword_10039CBB0 != -1)
    {
      sub_10025D798();
    }

    v4 = qword_10039CBB8;
    if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48) == 1;
      v9[0] = 67109120;
      v9[1] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Manatee status changed to: %{BOOL}d", v9, 8u);
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) views];
    v8 = v7;
    if (v6 == 1)
    {
      [v7 addObject:@"Manatee"];
    }

    else
    {
      [v7 removeAllObjects];
    }

    result = [*(a1 + 32) setOctagonTrusted:*(a1 + 48)];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_1001F85CC(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

intptr_t sub_1001F878C(uint64_t a1)
{
  [*(a1 + 32) manateeChanged];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void sub_1001F87C8(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F8984(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F8B38(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F8E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F8E88(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F8ECC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v20;
      *&v8 = 138412546;
      v18 = v8;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = [v12 objectForKeyedSubscript:{@"view", v18}];
          v14 = [v13 isEqualToString:@"global"];

          if ((v14 & 1) == 0)
          {
            v15 = [v12 objectForKeyedSubscript:@"keystate"];
            if ([v15 isEqualToString:@"ready"])
            {
              *(*(*(a1 + 48) + 8) + 24) = 1;
            }

            else
            {
              if (qword_10039CBB0 != -1)
              {
                sub_10025D89C();
              }

              v16 = qword_10039CBB8;
              if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
              {
                v17 = *(a1 + 40);
                *buf = v18;
                v24 = v15;
                v25 = 2112;
                v26 = v17;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "View state %@ for view: %@", buf, 0x16u);
              }
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v9);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001F90D0(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F9114(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F9158(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F9250(uint64_t a1)
{
  v2 = [*(a1 + 32) views];
  [v2 addObject:*(a1 + 40)];
}

void sub_1001F9424(uint64_t a1)
{
  v2 = [*(a1 + 32) views];
  [v2 addObject:*(a1 + 40)];
}

void sub_1001F9478(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F9700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F9730(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F9748(uint64_t a1)
{
  v5 = [*(a1 + 32) views];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001F97AC(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F9AB0(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F9AF4(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F9B38(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F9B7C(uint64_t a1)
{
  v2 = [*(a1 + 32) views];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1001F9CD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10039CBB0 != -1)
  {
    sub_10025D98C();
  }

  v4 = qword_10039CBB8;
  if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKKS sync completed: %@", &v6, 0xCu);
  }

  if (v3)
  {
    v5.n128_u64[0] = 0x4082C00000000000;
  }

  else
  {
    v5.n128_u64[0] = 0;
  }

  (*(*(a1 + 32) + 16))(v5);
}

void sub_1001F9DC8(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001F9FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1001F9FE8(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (qword_10039CBB0 != -1)
  {
    sub_10025D9C8();
  }

  v4 = qword_10039CBB8;
  if (os_log_type_enabled(qword_10039CBB8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Known ckks view state %lu for view: %@", &v7, 0x16u);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1001FA0D0(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FA114(id a1)
{
  qword_10039CBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FA830(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 configBag];
  [v4 doubleForKey:@"idms-fetch-time"];
  [*(a1 + 32) setOverrideIDMSFetchTime:?];

  v5 = [*(a1 + 32) configBag];
  [*(a1 + 32) setCurrentEnvironment:{objc_msgSend(v5, "currentEnvironment")}];

  (*(*(a1 + 40) + 16))();
}

void sub_1001FA9B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 configBag];
  [v4 doubleForKey:@"idms-fetch-time"];
  [*(a1 + 32) setOverrideIDMSFetchTime:?];

  (*(*(a1 + 40) + 16))();
}

void sub_1001FB228(id a1)
{
  qword_10039CBD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FB26C(id a1)
{
  qword_10039CBD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FB2B0(id a1)
{
  qword_10039CBD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FB3B8(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[6];
    v4 = *(a1[6] + 2);

    v4();
  }

  else
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1[4] application]);
    v6 = [TransparencyApplication applicationIdentifierForValue:v5];

    v7 = +[KTMachTime currentMachTime];
    v8 = [KTLogNetworkRequest alloc];
    v9 = [a1[5] publicKeysURI];
    v10 = [(KTLogNetworkRequest *)v8 initGETWithURL:v9 application:v6];

    [v10 setAuthenticated:0];
    [v10 setUseReversePush:0];
    v11 = a1[5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001FB560;
    v13[3] = &unk_1003295A8;
    v13[4] = v11;
    v14 = v6;
    v16 = v7;
    v15 = a1[6];
    v12 = v6;
    [v11 fetchRequest:v10 completionHandler:v13];
  }
}

void sub_1001FB560(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v36 = +[KTMachTime currentMachTime];
  v7 = @"Failed";
  if (!v6)
  {
    v7 = @"Success";
  }

  v35 = v7;
  v8 = v6;
  if (v6)
  {
    if (qword_10039CBC8 != -1)
    {
      sub_10025DA18();
    }

    v9 = qword_10039CBD0;
    if (os_log_type_enabled(qword_10039CBD0, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [v5 serverHint];
      *buf = 138543618;
      v39 = v11;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "public keys request failed with ServerHint %{public}@: %@", buf, 0x16u);
    }

    v12 = 0;
    v13 = v8;
  }

  else
  {
    if (qword_10039CBC8 != -1)
    {
      sub_10025DA2C();
    }

    v14 = qword_10039CBD0;
    if (os_log_type_enabled(qword_10039CBD0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v5 serverHint];
      *buf = 138543362;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "public keys request succeeded with ServerHint %{public}@", buf, 0xCu);
    }

    v17 = [*(a1 + 32) transparencyAnalytics];
    v18 = [objc_opt_class() logger];
    v19 = [v5 data];
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 length]);
    v21 = [*(a1 + 32) transparencyAnalytics];
    v22 = [objc_opt_class() formatEventName:@"NetworkPublicKeysSize" application:*(a1 + 40)];
    [v18 logMetric:v20 withName:v22];

    v23 = [v5 data];
    v37 = 0;
    v12 = [(TransparencyGPBMessage *)PublicKeysResponse parseFromData:v23 error:&v37];
    v13 = v37;

    v24 = [v5 serverHint];
    [v12 setMetadataValue:v24 key:kTransparencyResponseMetadataKeyServerHint];

    v25 = +[NSDate now];
    v26 = [v25 kt_dateToString];
    [v12 setMetadataValue:v26 key:@"ResponseTime"];
  }

  v27 = [*(a1 + 32) transparencyAnalytics];
  v28 = [objc_opt_class() logger];
  v29 = [*(a1 + 32) transparencyAnalytics];
  v30 = [objc_opt_class() formatEventName:@"NetworkPublicKeysEvent" application:*(a1 + 40)];
  [v28 logResultForEvent:v30 hardFailure:1 result:v13];

  v31 = [*(a1 + 32) transparencyAnalytics];
  v32 = [objc_opt_class() logger];
  [KTMachTime difference:*(a1 + 56) timeNow:v36];
  v33 = [NSNumber numberWithDouble:?];
  v34 = [KTLogClient formatEventName:@"NetworkPublicKeysTime" application:*(a1 + 40) state:v35];
  [v32 logMetric:v33 withName:v34];

  (*(*(a1 + 48) + 16))();
}

void sub_1001FB9B8(id a1)
{
  qword_10039CBD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FB9FC(id a1)
{
  qword_10039CBD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FBB50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = [KTLogNetworkRequest alloc];
    v6 = [*(a1 + 32) reportToAppleURI];
    v7 = [(KTLogNetworkRequest *)v5 initPOSTWithURL:v6 data:*(a1 + 40) uuid:*(a1 + 48) application:*(a1 + 56)];

    [v7 setAdditionalHeaders:&off_10033D6D8];
    [v7 setAllowEmptyData:1];
    [v7 setAuthenticated:1];
    [v7 setUseReversePush:{objc_msgSend(*(a1 + 32), "shouldUseReversePush:", 1)}];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001FBCA0;
    v9[3] = &unk_1003295F8;
    v10 = *(a1 + 64);
    [v8 fetchRequest:v7 completionHandler:v9];
  }
}

void sub_1001FBCA0(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = a2;
    v7 = [v5 userInfo];
    v8 = [v7 mutableCopy];

    v9 = [v6 serverHint];

    [v8 setObject:v9 forKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
    v10 = [v5 domain];
    v11 = [v5 code];

    v12 = [NSError errorWithDomain:v10 code:v11 userInfo:v8];
  }

  else
  {
    v12 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1001FBF90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[KTMachTime currentMachTime];
  v8 = [*(a1 + 32) transparencyAnalytics];
  v9 = objc_opt_class();
  if (*(a1 + 72))
  {
    v10 = @"ReversePushFetchEvent";
  }

  else
  {
    v10 = @"NetworkFetchEvent";
  }

  v11 = [v9 formatEventName:v10 application:*(a1 + 40)];

  v12 = [*(a1 + 32) transparencyAnalytics];
  v13 = objc_opt_class();
  v40 = 0;
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_1001FC23C;
  v34 = &unk_100329688;
  v14 = v5;
  v35 = v14;
  v15 = v6;
  v36 = v15;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v39 = *(a1 + 72);
  v30 = *(a1 + 32);
  v18 = v30.i64[1];
  v19.i64[0] = v16;
  v19.i64[1] = v17;
  v20 = vzip2q_s64(v30, v19);
  v19.i64[1] = v30.i64[0];
  v37 = v19;
  v38 = v20;
  [v13 doWithAnalyticsForEventName:v11 error:&v40 block:&v31];
  v21 = v40;

  v22 = @"Failed";
  if (!v15)
  {
    v23 = [v14 data];
    v24 = @"Success";
    if (!v23)
    {
      v24 = @"Failed";
    }

    v22 = v24;
  }

  v25 = [*(a1 + 32) transparencyAnalytics];
  v26 = [objc_opt_class() logger];
  [KTMachTime difference:*(a1 + 64) timeNow:v7];
  v27 = [NSNumber numberWithDouble:?];
  if (*(a1 + 72))
  {
    v28 = @"ReversePushFetchTime";
  }

  else
  {
    v28 = @"NetworkFetchTime";
  }

  v29 = [KTLogClient formatEventName:v28 application:*(a1 + 40) state:v22];
  [v26 logMetric:v27 withName:v29];
}

uint64_t sub_1001FC23C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  if (v6 && ([v6 data], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = *(a1 + 40), v7, !v8))
  {
    if (qword_10039CBC8 != -1)
    {
      sub_10025DA40();
    }

    v20 = qword_10039CBD0;
    if (os_log_type_enabled(qword_10039CBD0, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 48);
      v22 = *(a1 + 32);
      v23 = v20;
      v24 = [v22 request];
      if ([v24 useReversePush])
      {
        v25 = @" with reverse push";
      }

      else
      {
        v25 = &stru_10032E8E8;
      }

      v26 = [*(a1 + 32) serverHint];
      v36 = 138543874;
      v37 = v21;
      v38 = 2114;
      v39 = v25;
      v40 = 2114;
      v41 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "fetchId %{public}@%{public}@ succeeded with ServerHint %{public}@", &v36, 0x20u);
    }

    v27 = [*(a1 + 56) transparencyAnalytics];
    v28 = [objc_opt_class() logger];
    v29 = [*(a1 + 32) data];
    v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v29 length]);
    v31 = [*(a1 + 56) transparencyAnalytics];
    v32 = objc_opt_class();
    if (*(a1 + 80))
    {
      v33 = @"ReversePushFetchSize";
    }

    else
    {
      v33 = @"NetworkFetchSize";
    }

    v34 = [v32 formatEventName:v33 application:*(a1 + 64)];
    [v28 logMetric:v30 withName:v34];

    v35 = *(a1 + 32);
    (*(*(a1 + 72) + 16))();
    return 1;
  }

  else
  {
    if (a3)
    {
      v44 = @"requestUUID";
      v9 = [*(a1 + 48) UUIDString];
      v45 = v9;
      *a3 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    }

    if (qword_10039CBC8 != -1)
    {
      sub_10025DA54();
    }

    v10 = qword_10039CBD0;
    if (os_log_type_enabled(qword_10039CBD0, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 32);
      v13 = v10;
      v14 = [v12 request];
      if ([v14 useReversePush])
      {
        v15 = @" with reverse push";
      }

      else
      {
        v15 = &stru_10032E8E8;
      }

      v16 = [*(a1 + 32) serverHint];
      v17 = *(a1 + 40);
      v36 = 138544130;
      v37 = v11;
      v38 = 2114;
      v39 = v15;
      v40 = 2114;
      v41 = v16;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "fetchId %{public}@%{public}@ failed with ServerHint %{public}@: %@", &v36, 0x2Au);
    }

    if (a2)
    {
      *a2 = *(a1 + 40);
    }

    v18 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
    return 0;
  }
}

void sub_1001FC5D0(id a1)
{
  qword_10039CBD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FC614(id a1)
{
  qword_10039CBD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FC74C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) application]);
    v7 = [TransparencyApplication applicationIdentifierForValue:v6];

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = [v8 batchQueryURI];
    v11 = *(a1 + 64);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001FC8C4;
    v13[3] = &unk_1003296D8;
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v14 = *(a1 + 32);
    [v8 fetchMessage:v9 uri:v10 uuid:v12 application:v7 userInitiated:v11 completionHandler:v13];
  }
}

void sub_1001FC8C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 data], v7 = objc_claimAutoreleasedReturnValue(), v7, !v6) && v7)
  {
    v8 = [v5 data];
    v17 = 0;
    v9 = [(TransparencyGPBMessage *)BatchQueryResponse parseFromData:v8 error:&v17];
    v10 = v17;

    v11 = [v5 serverHint];
    [v9 setMetadataValue:v11 key:kTransparencyResponseMetadataKeyServerHint];
    v12 = +[NSDate now];
    v13 = [v12 kt_dateToString];
    [v9 setMetadataValue:v13 key:@"ResponseTime"];

    v14 = [v5 request];
    LODWORD(v13) = [v14 useReversePush];

    if (v13)
    {
      [v9 setMetadataValue:@"YES" key:@"APS"];
    }

    v15 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001FCDEC(id a1)
{
  qword_10039CBD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FCE30(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  dispatch_group_leave(v3);
}

void sub_1001FCF8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) application]);
    v6 = [TransparencyApplication applicationIdentifierForValue:v5];

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [v7 queryURI];
    v10 = *(a1 + 64);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001FD0EC;
    v12[3] = &unk_1003295F8;
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    [v7 fetchMessage:v8 uri:v9 uuid:v11 application:v6 userInitiated:v10 completionHandler:v12];
  }
}

void sub_1001FD0EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 data], v7 = objc_claimAutoreleasedReturnValue(), v7, !v6) && v7)
  {
    v8 = [v5 data];
    v15 = 0;
    v9 = [(TransparencyGPBMessage *)QueryResponse parseFromData:v8 error:&v15];
    v10 = v15;

    v11 = [v5 serverHint];
    [v9 setMetadataValue:v11 key:kTransparencyResponseMetadataKeyServerHint];
    v12 = +[NSDate now];
    v13 = [v12 kt_dateToString];
    [v9 setMetadataValue:v13 key:@"ResponseTime"];

    v14 = [v5 request];
    LODWORD(v13) = [v14 useReversePush];

    if (v13)
    {
      [v9 setMetadataValue:@"YES" key:@"APS"];
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001FD380(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [v5 consistencyProofURI];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001FD488;
    v9[3] = &unk_1003295F8;
    v8 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v5 fetchMessage:v6 uri:v7 uuid:v8 application:0 userInitiated:0 completionHandler:v9];
  }
}

void sub_1001FD488(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 data], v7 = objc_claimAutoreleasedReturnValue(), v7, !v6) && v7)
  {
    v8 = [v5 data];
    v15 = 0;
    v9 = [(TransparencyGPBMessage *)ConsistencyProofResponse parseFromData:v8 error:&v15];
    v10 = v15;

    v11 = [v5 serverHint];
    [v9 setMetadataValue:v11 key:kTransparencyResponseMetadataKeyServerHint];
    v12 = +[NSDate now];
    v13 = [v12 kt_dateToString];
    [v9 setMetadataValue:v13 key:@"ResponseTime"];

    v14 = [v5 request];
    LODWORD(v13) = [v14 useReversePush];

    if (v13)
    {
      [v9 setMetadataValue:@"YES" key:@"APS"];
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001FD710(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [v5 revisionLogProofURI];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001FD818;
    v9[3] = &unk_1003295F8;
    v8 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v5 fetchMessage:v6 uri:v7 uuid:v8 application:0 userInitiated:0 completionHandler:v9];
  }
}

void sub_1001FD818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 data], v7 = objc_claimAutoreleasedReturnValue(), v7, !v6) && v7)
  {
    v8 = [v5 data];
    v15 = 0;
    v9 = [(TransparencyGPBMessage *)RevisionLogInclusionProofResponse parseFromData:v8 error:&v15];
    v10 = v15;

    v11 = [v5 serverHint];
    [v9 setMetadataValue:v11 key:kTransparencyResponseMetadataKeyServerHint];
    v12 = +[NSDate now];
    v13 = [v12 kt_dateToString];
    [v9 setMetadataValue:v13 key:@"ResponseTime"];

    v14 = [v5 request];
    LODWORD(v13) = [v14 useReversePush];

    if (v13)
    {
      [v9 setMetadataValue:@"YES" key:@"APS"];
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001FDC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001FDDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001FDDC4(uint64_t a1)
{
  result = [*(a1 + 32) haveNetwork];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1001FE154(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1001FE184(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained haveNetwork];
  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Network available", buf, 2u);
    }
  }

  else
  {
    if (v3)
    {
      *buf = 134217984;
      v7 = 0x4028000000000000;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Network still not available, retrying after waiting %2.1f hours", buf, 0xCu);
    }

    v4 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001FE2D8;
    block[3] = &unk_100316FE0;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }
}

void sub_1001FE2E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained timer];

    WeakRetained = v3;
    if (v2)
    {
      [v3 _onQueueRunReachabilityDependency];
      WeakRetained = v3;
    }
  }
}

void sub_1001FF138(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001FF414(void *a1)
{
  v2 = a1[7];
  v3 = a1[4];
  v4 = a1[5];
  v13 = 0;
  v5 = [v2 getOptInHistory:v3 store:v4 error:&v13];
  v6 = v13;
  v7 = [v5 lastObject];

  if (!(v7 | v6))
  {
    v12 = *(a1[6] + 16);
LABEL_6:
    v12();
    goto LABEL_7;
  }

  if (!v7)
  {
    v12 = *(a1[6] + 16);
    goto LABEL_6;
  }

  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [v8 BOOLValue];

  v10 = a1[6];
  v11 = [v7 objectAtIndexedSubscript:0];
  (*(v10 + 16))(v10, v9, v11, 0);

LABEL_7:
}

int64_t sub_1001FFB34(id a1, NSArray *a2, NSArray *a3)
{
  v4 = a3;
  v5 = [(NSArray *)a2 objectAtIndexedSubscript:0];
  v6 = [(NSArray *)v4 objectAtIndexedSubscript:0];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100200154(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = +[TransparencyAnalytics logger];
    [v3 logResultForEvent:*(a1 + 32) hardFailure:1 result:v4];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) getOptInState:*(a1 + 48)];
  }
}

void sub_100200310(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];

  if (v2)
  {
    v3 = [*(a1 + 32) stateMachine];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) applicationId];
    v9 = 0;
    v10 = 0;
    [v3 changeOptInState:v4 application:v5 loggableData:&v10 error:&v9];
    v6 = v10;
    v7 = v9;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-120 description:@"this opt-in manager does not have a context and/or state machine, cannot change opt-in state"];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002009C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002009EC(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100200A30(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100200A74(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100200AB8(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100200AFC(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100200B40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v5 || v6)
  {
    if (qword_10039CBD8 != -1)
    {
      sub_10025DB94();
    }

    v17 = qword_10039CBE0;
    if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to check opt-in after CDP reset, network failure: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = [v5 metadata];
    v9 = [v8 objectForKeyedSubscript:@"ResponseTime"];
    v10 = [NSDate kt_dateFromString:v9];

    v11 = [WeakRetained context];
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v21 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100200DF0;
    v18[3] = &unk_100329988;
    v19 = *(a1 + 48);
    v20 = WeakRetained;
    v14 = [v11 handleQueryResponse:v5 queryRequest:v12 receiptDate:v10 fetchId:v13 error:&v21 transparentDataHandler:v18];
    v15 = v21;

    if (v14 != 1)
    {
      if (qword_10039CBD8 != -1)
      {
        sub_10025DB6C();
      }

      v16 = qword_10039CBE0;
      if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to check opt-in after CDP reset, KT server failure: %@", buf, 0xCu);
      }
    }
  }
}

void sub_100200DAC(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100200DF0(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 currentAccountOptInState] == 1)
  {
    if (qword_10039CBD8 != -1)
    {
      sub_10025DBA8();
    }

    v4 = qword_10039CBE0;
    if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = v4;
      v8 = [v5 applicationId];
      *buf = 141558530;
      v17 = 1752392040;
      v18 = 2112;
      v19 = v6;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{mask.hash}@ was opted in to %{public}@ before CDP Reset, sending change notification", buf, 0x20u);
    }

    v9 = +[NSDistributedNotificationCenter defaultCenter];
    v10 = [*(a1 + 40) notificationKey];
    [v9 postNotificationName:v10 object:0 userInfo:0 deliverImmediately:1];

    v11 = +[TransparencyFollowup instance];
    v15 = 0;
    v12 = [v11 clearAllFollowups:&v15];
    v13 = v15;

    if ((v12 & 1) == 0)
    {
      if (qword_10039CBD8 != -1)
      {
        sub_10025DBBC();
      }

      v14 = qword_10039CBE0;
      if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "failed to clear existing follow ups on CDP reset: %@", buf, 0xCu);
      }
    }
  }
}

void sub_100200FE8(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020102C(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100201070(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002012E0(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100201324(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100201368(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002014AC(id a1)
{
  qword_10039CBE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002016A4(id a1)
{
  bzero(&v3, 0x500uLL);
  uname(&v3);
  v1 = [NSString stringWithCString:v3.machine encoding:4];
  v2 = qword_10039CBE8;
  qword_10039CBE8 = v1;
}

void sub_100201D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100201D90(id a1)
{
  qword_10039CC10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100201DD4(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained intendedState];
  [WeakRetained setNextState:v3];

  if ((a2 & 1) == 0)
  {
    v4 = [WeakRetained stateMachine];
    v5 = [[KTPendingFlag alloc] initWithFlag:@"RepairIDSFlag" conditions:2 delayInSeconds:43200.0];
    [v4 handlePendingFlag:v5];
  }

  v6 = [WeakRetained operationQueue];
  v7 = [WeakRetained finishedOp];
  [v6 addOperation:v7];
}

void sub_1002024BC(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100202500(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100202544(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100202588(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002026F0(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100202944(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002031CC(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002034D8(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020351C(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100203560(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002035A4(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100203730(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100203C24(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100203C68(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100203CAC(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100203CF0(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100203D34(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100203F24(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100203F68(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100204154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10020416C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100204184(uint64_t a1)
{
  v2 = [TransparencyAnalytics formatEventName:@"LogBeginMs" application:*(*(*(a1 + 40) + 8) + 40)];
  v3 = [TransparencyAnalytics formatEventName:@"InResetWindow" application:*(*(*(a1 + 40) + 8) + 40)];
  v4 = [TransparencyAnalytics formatEventName:@"ktTLTLogBeginMs" application:*(*(*(a1 + 40) + 8) + 40)];
  v12[0] = v4;
  v5 = [*(a1 + 32) keyBag];
  v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 tltLogBeginningMs]);
  v13[0] = v6;
  v12[1] = v2;
  v7 = [*(a1 + 32) keyBag];
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 patLogBeginningMs]);
  v13[1] = v8;
  v12[2] = v3;
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) inResetWindow]);
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

void sub_100204518(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100204B24(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100204B68(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100204BAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 createManagedObjectWithError:&v13];
  v4 = v13;
  if (!v3)
  {
    v5 = *(a1 + 32);
    v12 = v4;
    v3 = [v5 copyManagedObject:&v12];
    v6 = v12;

    v4 = v6;
  }

  [v3 setUnsigned:"signatureVerified" value:1];
  [v3 setUnsigned:"inclusionVerified" value:1];
  v7 = *(a1 + 40);
  v11 = v4;
  v8 = [v7 persistWithError:&v11];
  v9 = v11;

  if ((v8 & 1) == 0)
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DFA4();
    }

    v10 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to save signature result for STH: %@", buf, 0xCu);
    }

    [*(a1 + 40) reportCoreDataPersistEventForLocation:@"verifySTHSignature" underlyingError:v9];
  }
}

void sub_100204D30(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100204D74(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100204DB8(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100204DFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 createManagedObjectWithError:&v11];
  v4 = v11;
  if (v3)
  {
    [*(a1 + 40) onMocSetMapHead:v3 signatureResult:1 signatureError:0];
    [*(a1 + 40) onMocSetMapHead:v3 inclusionResult:1 inclusionError:0];
    [*(a1 + 40) onMocSetMapHead:v3 mmdResult:1 mmdError:0];
    v5 = *(a1 + 40);
    v10 = v4;
    v6 = [v5 persistWithError:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      if (qword_10039CC18 != -1)
      {
        sub_10025DFCC();
      }

      v8 = qword_10039CC20;
      if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed persist SMH: %@", buf, 0xCu);
      }
    }

    v4 = v7;
  }

  else
  {
    if (qword_10039CC18 != -1)
    {
      sub_10025DFF4();
    }

    v9 = qword_10039CC20;
    if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to create SMH object: %@", buf, 0xCu);
    }
  }
}

void sub_100204FBC(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100205000(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100205230(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100205F4C(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100205F90(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100206794(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) applicationKeyStores];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];

    if (v7)
    {
      v8 = [v7 readyWithRefresh:0];
      v9 = [v7 contextStore];

      if (!v9)
      {
        if (qword_10039CC18 != -1)
        {
          sub_10025E06C();
        }

        v10 = qword_10039CC20;
        if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "fetchKeyStore: application key store present with no context", buf, 2u);
        }

        if (qword_10039CC18 != -1)
        {
          sub_10025E080();
        }

        v11 = qword_10039CC20;
        if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(a1 + 56);
          v13 = v11;
          v14 = [v12 followup];
          v15 = @"YES";
          if (!v14)
          {
            v15 = @"NO";
          }

          *buf = 138412290;
          v37 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "fetchKeyStore: followup controller exists? %@", buf, 0xCu);
        }

        [v7 setContextStore:*(a1 + 56)];
      }

      v16 = [*(a1 + 48) dataStore];
      v34 = 0;
      v17 = &v34;
      [v7 updateWithPublicKeyResponse:v5 dataStore:v16 error:&v34];
    }

    else
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v16 = [*(a1 + 48) dataStore];
      v20 = *(a1 + 56);
      v35 = 0;
      v17 = &v35;
      v7 = [v18 createApplicationKeyStore:v19 keyStoreResponse:v5 dataStore:v16 contextStore:v20 error:&v35];
      v8 = 1;
    }

    v21 = *v17;

    [*(a1 + 32) updateTLTKeyStoreWithApplicationKeyStore:v7];
    if (!v7 || v21)
    {
      if (qword_10039CC18 != -1)
      {
        sub_10025E0F8();
      }

      v28 = qword_10039CC20;
      if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 40);
        v30 = v28;
        v31 = [v5 data];
        v32 = [v31 kt_hexString];
        *buf = 138412802;
        v37 = v29;
        v38 = 2112;
        v39 = v32;
        v40 = 2112;
        v41 = v21;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "failed to configure application '%@' keystore with PublicKeysResponse: %@. Error: %@", buf, 0x20u);
      }
    }

    else
    {
      if (!(v8 & 1 | (([v7 readyWithRefresh:0] & 1) == 0)))
      {
        if (qword_10039CC18 != -1)
        {
          sub_10025E0A8();
        }

        v22 = qword_10039CC20;
        if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 40);
          *buf = 138412290;
          v37 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Retrying pending validations after refreshing old %@ key store", buf, 0xCu);
        }

        v24 = [v7 delegate];
        [v24 retryPendingValidations:*(a1 + 40)];
      }

      v25 = [v7 delegate];
      [v25 triggerStatusUpdate:*(a1 + 40)];

      [*(a1 + 32) setForceRefresh:0];
      v26 = *(a1 + 32);
      v33 = 0;
      LOBYTE(v25) = [v26 saveDiskApplicationKeyStore:v7 error:&v33];
      v21 = v33;
      if ((v25 & 1) == 0)
      {
        if (qword_10039CC18 != -1)
        {
          sub_10025E0D0();
        }

        v27 = qword_10039CC20;
        if (os_log_type_enabled(qword_10039CC20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = v21;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "failed to write keys to disk: %@", buf, 0xCu);
        }
      }
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_100206C28(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100206C6C(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100206CB0(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100206CF4(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100206D38(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100207154(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), a2);
  }

  v4 = [*(a1 + 40) configureGroup];
  dispatch_group_leave(v4);
}

uint64_t sub_1002071C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100207718(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020775C(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002077A0(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002077E4(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100207ACC(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100207B10(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100207CBC(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100207FE0(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100208024(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100208068(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100208614(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100208658(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020869C(id a1)
{
  qword_10039CC20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100208D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100208DA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10020970C(uint64_t a1, uint64_t a2)
{
  v4 = [KTStatusServer auditorReportForKTRequest:a2];
  if (v4)
  {
    v3 = [*(a1 + 32) UUIDString];
    [v4 setObject:v3 forKeyedSubscript:kTransparencyAuditorReportUUID];
  }

  [*(a1 + 40) addObject:v4];
}

void sub_10020979C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 request];

  if (v4)
  {
    v5 = [v3 request];
    v6 = [KTStatusServer auditorReportForKTRequest:v5];
  }

  else
  {
    v7 = [v3 mutation];

    if (v7)
    {
      v5 = [v3 mutation];
      v6 = [KTStatusServer auditorReportForKTSMT:v5];
    }

    else
    {
      v8 = [v3 sth];

      if (!v8)
      {
        v11 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-299 description:@"failure event with no associated entity"];
        v12 = *(*(a1 + 48) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        goto LABEL_10;
      }

      v5 = [v3 sth];
      v6 = [KTStatusServer auditorReportForSTH:v5];
    }
  }

  v9 = v6;

  if (v9)
  {
    v10 = [*(a1 + 32) UUIDString];
    [v9 setObject:v10 forKeyedSubscript:kTransparencyAuditorReportUUID];

    [*(a1 + 40) addObject:v9];
    goto LABEL_14;
  }

LABEL_10:
  if (qword_10039CC28 != -1)
  {
    sub_10025E2EC();
  }

  v14 = qword_10039CC30;
  if (os_log_type_enabled(qword_10039CC30, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v16 = 138412290;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "skipping eventId %@ due to unknown type", &v16, 0xCu);
  }

LABEL_14:
}

void sub_1002099B8(id a1)
{
  qword_10039CC30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100209B70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained transaction];

  if (v2)
  {
    if (qword_10039CC38 != -1)
    {
      sub_10025E300();
    }

    v3 = qword_10039CC40;
    if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "StaticKeyContactsSync: aborting transaction for syncing", v4, 2u);
    }

    [WeakRetained setTransaction:0];
  }
}

void sub_100209C1C(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100209DA0(uint64_t a1)
{
  if ([*(a1 + 32) started])
  {
    if (qword_10039CC38 != -1)
    {
      sub_10025E33C();
    }

    v2 = qword_10039CC40;
    if (os_log_type_enabled(qword_10039CC40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "StaticKeyContactsSync: resumed more then once", buf, 2u);
    }
  }

  else
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:*(a1 + 32) selector:"contactStoreDidChange:" name:CNContactStoreDidChangeNotification object:0];
    [*(a1 + 32) setStarted:1];
  }
}

void sub_100209E90(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100209ED4(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100209FEC(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020A208(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020A24C(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_10020A290(uint64_t a1)
{
  v2 = os_transaction_create();
  [*(a1 + 32) setTransaction:v2];

  [*(a1 + 32) onQueueMergeChangesFromContacts];
  v3 = *(a1 + 32);

  return [v3 setTransaction:0];
}

void sub_10020A3AC(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020ABB8(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020ABFC(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020AC40(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020AC84(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020ACC8(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020AD0C(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020AD50(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020AD94(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020ADD8(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020AE1C(id a1)
{
  qword_10039CC40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020B268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10020B2A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained allDependentsSuccessful])
    {
      [v2 groupStart];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [v2 error];
        v4 = 138412290;
        v5 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not running due to some failed dependent: %@", &v4, 0xCu);
      }

      [v2 cancel];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "received callback for released object", &v4, 2u);
  }
}

void sub_10020B3CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained completeOperation];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "received callback for released object", v3, 2u);
  }
}

void sub_10020BB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10020BC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10020C1E4(uint64_t a1)
{
  if ([*(a1 + 32) fillInError])
  {
    v2 = *(a1 + 32);
    v3 = [v2 internalSuccesses];
    [v2 allSuccessful:v3];
  }

  *(*(a1 + 32) + 72) = 0;
  *(*(a1 + 32) + 73) = 1;
}

void sub_10020C734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10020C754(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_10020CCE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "registerPushReceiver: %@", &v7, 0xCu);
    }

    v6 = [*(a1 + 40) receivers];
    [v6 addObject:*(a1 + 32)];
  }
}

void sub_10020CF5C(uint64_t a1)
{
  v2 = [*(a1 + 32) receivers];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) deliveryQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10020D04C;
  v8[3] = &unk_10031A148;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, v8);
}

void sub_10020D04C(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    *&v4 = 138412290;
    v11 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 40) log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = v11;
          v17 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "didReceiveIncomingMessage: recv %@", buf, 0xCu);
        }

        v10 = [*(a1 + 48) topic];
        [v8 notifyPushChange:v10 userInfo:*(a1 + 56)];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

void sub_10020D300(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = +[NSLocale ISOCountryCodes];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [NSString stringWithFormat:@"%ld", [NSLocale ITUCountryCodeForISOCountryCode:v7]];
        [v1 setValue:v7 forKey:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = qword_10039CC58;
  qword_10039CC58 = v1;
}

void sub_10020DC08(id a1)
{
  qword_10039CC70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020DC4C(id a1)
{
  qword_10039CC70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020DC90(id a1)
{
  qword_10039CC70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020DCD4(id a1)
{
  qword_10039CC70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020DD18(id a1)
{
  qword_10039CC70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020DD5C(id a1)
{
  qword_10039CC70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020DDA0(id a1)
{
  qword_10039CC70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10020EA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10020EA64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) transitionOperation];
    v4 = [v3 error];

    if (v4)
    {
      v5 = [v4 domain];
      if ([v5 isEqualToString:@"KTResultOperationError"])
      {
        v6 = [v4 code];

        if (v6 == 3)
        {
          v7 = [WeakRetained queue];
          v8[0] = _NSConcreteStackBlock;
          v8[1] = 3221225472;
          v8[2] = sub_10020EB94;
          v8[3] = &unk_1003180E0;
          v9 = WeakRetained;
          v10 = v4;
          dispatch_sync(v7, v8);
        }
      }

      else
      {
      }
    }
  }
}

void sub_10020EBA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020EC4C;
    block[3] = &unk_100316FE0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_10020EC4C(uint64_t a1)
{
  v2 = [NSError errorWithDomain:@"KTResultOperationError" code:4 description:@"SIGTERM happened"];
  [*(a1 + 32) _onqueuePerformTimeoutWithUnderlyingError:v2];
}

void sub_10020F110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10020F134(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueuePerformTimeoutWithUnderlyingError:0];
}

void sub_100210328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueuePerformTimeoutWithUnderlyingError];
}

id sub_1002104DC(uint64_t a1)
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

void sub_1002111B4(id a1)
{
  qword_10039CC80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002111F8(id a1)
{
  qword_10039CC80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021123C(id a1)
{
  qword_10039CC80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100211280(id a1)
{
  qword_10039CC80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002112C4(id a1)
{
  qword_10039CC80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100211308(id a1)
{
  qword_10039CC80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100211468(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_16;
  }

  v28 = 0;
  v16 = [[KTTransparentData alloc] initWithUriVRFOutput:v12 mapLeaf:v13 pendingSMTs:v14 error:&v28];
  v17 = v28;
  v18 = [*(a1 + 32) applicationKeyStore];
  v19 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v18 patLogBeginningMs] / 1000.0);
  [(KTTransparentData *)v16 setCurrentTreeEpochBeginDate:v19];

  if (!v16)
  {
    if (qword_10039CC78 != -1)
    {
      sub_10025E738();
    }

    v23 = qword_10039CC80;
    if (os_log_type_enabled(qword_10039CC80, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "QueryResponse for fetchId %{public}@ failed to build transparentData: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v20 = *(a1 + 48);
  v27 = v17;
  v21 = [(KTTransparentData *)v16 verifyServerInvariantsAt:v20 error:&v27];
  v22 = v27;

  if ((v21 & 1) == 0)
  {
    if (qword_10039CC78 != -1)
    {
      sub_10025E710();
    }

    v25 = qword_10039CC80;
    if (os_log_type_enabled(qword_10039CC80, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 40);
      *buf = 138543618;
      v30 = v26;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "QueryResponse for fetchId %{public}@ failed server invariant verification: %@", buf, 0x16u);
    }

    v17 = v22;
LABEL_15:
    (*(*(a1 + 56) + 16))();

    goto LABEL_16;
  }

  (*(*(a1 + 56) + 16))();

LABEL_16:
}

void sub_10021173C(id a1)
{
  qword_10039CC80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100211780(id a1)
{
  qword_10039CC80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100211D5C(id a1)
{
  qword_10039CC90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100211DA0(id a1)
{
  qword_10039CC90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100211DE4(id a1)
{
  qword_10039CC90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100211E28(id a1)
{
  qword_10039CC90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100211E6C(id a1)
{
  qword_10039CC90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100211EB0(id a1)
{
  qword_10039CC90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100212174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100212198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002121B0(uint64_t a1)
{
  +[TransparencySettings defaultQueryCacheTimeout];
  v3 = [NSDate dateWithTimeIntervalSinceNow:-v2];
  v4 = [*(a1 + 32) serverLoggableDatas];
  v5 = [TransparencyManagedDataStore serializeLoggableDatas:v4];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) uri];
  v8 = [*(a1 + 32) application];
  v9 = [*(a1 + 32) accountKey];
  v10 = *(*(a1 + 64) + 8);
  obj = *(v10 + 40);
  v11 = [v6 fetchRequestWithUri:v7 application:v8 accountKey:v9 loggableDatas:v5 youngerThan:v3 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(*(a1 + 56) + 8) + 40);
  if (v14)
  {
    v15 = *(*(a1 + 64) + 8);
    v47 = *(v15 + 40);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1002125C0;
    v44[3] = &unk_10032A7E0;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v42 = *(a1 + 56);
    v18 = *(a1 + 40);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    *&v20 = v42;
    *(&v20 + 1) = *(a1 + 64);
    v45 = v19;
    v46 = v20;
    [v16 performAndWaitForRequestId:v14 error:&v47 block:v44];
    objc_storeStrong((v15 + 40), v47);

    v21 = v45;
  }

  else
  {
    if (qword_10039CC98 != -1)
    {
      sub_10025E814();
    }

    v22 = qword_10039CCA0;
    if (os_log_type_enabled(qword_10039CCA0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 48);
      v24 = *(a1 + 32);
      v25 = v22;
      v26 = [v24 uri];
      v27 = [*(a1 + 32) type];
      *buf = 138544130;
      v50 = v23;
      v51 = 2160;
      v52 = 1752392040;
      v53 = 2112;
      v54 = v26;
      v55 = 2048;
      v56 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Creating requestId %{public}@ for %{mask.hash}@ of type %lu", buf, 0x2Au);
    }

    v21 = [*(a1 + 32) clientLoggableDatas];

    v41 = v3;
    if (v21)
    {
      v28 = [*(a1 + 32) clientLoggableDatas];
      v21 = [TransparencyManagedDataStore serializeLoggableDatas:v28];
    }

    v29 = *(a1 + 40);
    v30 = [*(a1 + 32) uri];
    v31 = [*(a1 + 32) application];
    v32 = [*(a1 + 32) accountKey];
    v33 = [*(a1 + 32) queryRequest];
    v34 = [*(a1 + 32) queryResponse];
    v35 = [*(a1 + 32) type];
    v36 = *(a1 + 48);
    v37 = *(*(a1 + 64) + 8);
    v43 = *(v37 + 40);
    v38 = [v29 createRequestWithUri:v30 application:v31 accountKey:v32 serverData:v5 syncedData:v21 queryRequest:v33 queryResponse:v34 type:v35 clientId:v36 error:&v43];
    objc_storeStrong((v37 + 40), v43);
    v39 = *(*(a1 + 56) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v38;

    v3 = v41;
  }
}

void sub_1002125C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10039CC98 != -1)
  {
    sub_10025E83C();
  }

  v4 = qword_10039CCA0;
  if (os_log_type_enabled(qword_10039CCA0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Mapping requestId %{public}@ to cached requestId %{public}@", buf, 0x16u);
  }

  [*(a1 + 40) createKTRequestID:*(a1 + 32) request:v3];
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v7 persistWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if ((v9 & 1) == 0)
  {
    if (qword_10039CC98 != -1)
    {
      sub_10025E850();
    }

    v10 = qword_10039CCA0;
    if (os_log_type_enabled(qword_10039CCA0, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to save RequestID for request: %@", buf, 0xCu);
    }

    [*(a1 + 40) reportCoreDataPersistEventForLocation:@"requestIdLink" underlyingError:*(*(*(a1 + 56) + 8) + 40)];
  }
}

void sub_100212770(id a1)
{
  qword_10039CCA0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002127B4(id a1)
{
  qword_10039CCA0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002127F8(id a1)
{
  qword_10039CCA0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100214A40(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100214C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100214C34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100214C4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = +[KTFailureEvent fetchRequest];
    v6 = [NSPredicate predicateWithFormat:@"application == %@", *(a1 + 40)];
    [v5 setPredicate:v6];

    [v5 setPropertiesToFetch:&off_10033D8C8];
    [v5 setReturnsDistinctResults:1];
    [v5 setResultType:2];
    [v5 setFetchLimit:*(a1 + 64)];
    v7 = [NSSortDescriptor sortDescriptorWithKey:@"failureTime" ascending:0];
    v36 = v7;
    v8 = [NSArray arrayWithObjects:&v36 count:1];
    [v5 setSortDescriptors:v8];

    v9 = [*(a1 + 32) context];
    v10 = *(*(a1 + 48) + 8);
    v32 = *(v10 + 40);
    v11 = [v9 executeFetchRequest:v5 error:&v32];
    objc_storeStrong((v10 + 40), v32);

    v12 = *(*(a1 + 48) + 8);
    v31 = *(v12 + 40);
    [TransparencyManagedDataStore cleanseError:&v31];
    objc_storeStrong((v12 + 40), v31);
    if (v11 && [v11 count])
    {
      v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [v11 reverseObjectEnumerator];
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(*(a1 + 56) + 8) + 40);
          v22 = [*(*(&v27 + 1) + 8 * i) objectForKeyedSubscript:@"eventId"];
          [v21 addObject:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }
  }

  else
  {
    if (qword_10039CCB8 != -1)
    {
      sub_10025E8A0();
    }

    v23 = qword_10039CCC0;
    if (os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
    {
      v24 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v38 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to get : %@", buf, 0xCu);
    }

    v25 = *(*(a1 + 48) + 8);
    v33 = *(v25 + 40);
    [TransparencyManagedDataStore cleanseError:&v33];
    v26 = v33;
    v5 = *(v25 + 40);
    *(v25 + 40) = v26;
  }
}

void sub_100214FE0(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002150E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v39 = 0;
  v3 = [v2 persistWithError:&v39];
  v4 = v39;
  if (v3)
  {
    v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTFailureEvent"];
    v6 = [NSPredicate predicateWithFormat:@"eventId IN %@", *(a1 + 40)];
    [v5 setPredicate:v6];

    v7 = [*(a1 + 32) context];
    v37 = v4;
    v8 = [v7 executeFetchRequest:v5 error:&v37];
    v9 = v37;

    if (v8 && [v8 count])
    {
      v29 = v5;
      v30 = a1;
      v10 = +[NSMutableArray array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v28 = v8;
      obj = v8;
      v11 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
        while (2)
        {
          v14 = 0;
          v15 = v9;
          do
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v33 + 1) + 8 * v14);
            v17 = [v16 encodedError];
            v32 = v15;
            v18 = [TransparencyManagedDataStore deserializeNSError:v17 error:&v32];
            v9 = v32;

            if (!v18)
            {
              if (qword_10039CCB8 != -1)
              {
                sub_10025E8F0();
              }

              v5 = v29;
              v8 = v28;
              v23 = qword_10039CCC0;
              if (os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
              {
                v24 = v23;
                v25 = [v16 eventId];
                *buf = 138543362;
                v42 = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to decode failure event error for %{public}@", buf, 0xCu);
              }

              v26 = kTransparencyErrorDecode;
              v27 = [v16 eventId];
              v19 = [TransparencyError errorWithDomain:v26 code:-300 underlyingError:v9 description:@"failed to decode stored error for event %@", v27];

              (*(*(v30 + 48) + 16))();
              goto LABEL_28;
            }

            [v10 addObject:v18];

            v14 = v14 + 1;
            v15 = v9;
          }

          while (v12 != v14);
          v12 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      (*(*(v30 + 48) + 16))();
      v19 = v9;
      v8 = v28;
      v5 = v29;
LABEL_28:
    }

    else
    {
      if (qword_10039CCB8 != -1)
      {
        sub_10025E918();
      }

      v21 = qword_10039CCC0;
      if (os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 40);
        *buf = 138543362;
        v42 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to find any failure event for %{public}@", buf, 0xCu);
      }

      v19 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-299 underlyingError:v9 description:@"failed to find any failure event for %@", *(a1 + 40)];

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (qword_10039CCB8 != -1)
    {
      sub_10025E8C8();
    }

    v20 = qword_10039CCC0;
    if (os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to get : %@", buf, 0xCu);
    }

    v38 = v4;
    [TransparencyManagedDataStore cleanseError:&v38];
    v19 = v38;

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1002155D8(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021561C(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100215660(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100215814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100215838(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"KTFailureEvent"];
  v3 = [NSPredicate predicateWithFormat:@"eventId = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 40) context];
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (v6 && [v6 count] == 1)
  {
    v7 = *(a1 + 48);
    v8 = [v6 objectAtIndexedSubscript:0];
    (*(v7 + 16))(v7, v8);

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    if (qword_10039CCB8 != -1)
    {
      sub_10025E940();
    }

    v9 = qword_10039CCC0;
    if (os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to find failure event for eventId %{public}@", buf, 0xCu);
    }

    v11 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-299 underlyingError:*(*(*(a1 + 56) + 8) + 40) description:@"failed to find failure event for %@", *(a1 + 32)];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    [TransparencyManagedDataStore cleanseError:&v15];
    objc_storeStrong((v14 + 40), v15);
  }
}

void sub_100215A74(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100215BD0(uint64_t a1)
{
  if (qword_10039CCB8 != -1)
  {
    sub_10025E968();
  }

  v2 = qword_10039CCC0;
  if (os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to clear all failure events: %@", &v4, 0xCu);
  }
}

void sub_100215C8C(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100215D94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v32 = 0;
  v3 = [v2 persistWithError:&v32];
  v4 = v32;
  if (v3)
  {
    v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTFailureEvent"];
    v6 = [NSPredicate predicateWithFormat:@"eventId IN %@", *(a1 + 40)];
    [v5 setPredicate:v6];

    v7 = [*(a1 + 32) context];
    v30 = v4;
    v8 = [v7 executeFetchRequest:v5 error:&v30];
    v9 = v30;

    if (v8)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v37 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v27;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v26 + 1) + 8 * i);
            v16 = [*(a1 + 32) context];
            [v16 deleteObject:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v26 objects:v37 count:16];
        }

        while (v12);
      }
    }

    v17 = *(a1 + 32);
    v25 = v9;
    v18 = [v17 persistAndRefaultObjects:v8 error:&v25];
    v19 = v25;

    if ((v18 & 1) == 0)
    {
      if (qword_10039CCB8 != -1)
      {
        sub_10025E9A4();
      }

      v20 = qword_10039CCC0;
      if (os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 40);
        *buf = 138543618;
        v34 = v21;
        v35 = 2112;
        v36 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to delete failed eventId %{public}@ : %@", buf, 0x16u);
      }

      v24 = v19;
      [TransparencyManagedDataStore cleanseError:&v24];
      v22 = v24;

      v19 = v22;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (qword_10039CCB8 != -1)
    {
      sub_10025E97C();
    }

    v23 = qword_10039CCC0;
    if (os_log_type_enabled(qword_10039CCC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v4;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to get : %@", buf, 0xCu);
    }

    v31 = v4;
    [TransparencyManagedDataStore cleanseError:&v31];
    v19 = v31;

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1002160E4(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100216128(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100216384(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002163C8(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021683C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_100216874(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1002168FC(id a1)
{
  qword_10039CCC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100216C10(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100216C54(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100216DA0(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100216DE4(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002170BC(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100217100(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100217144(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021733C(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100217C88(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100217CCC(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002180A0(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002180E4(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002184FC(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100218540(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100218584(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002185C8(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100218B18(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100218B5C(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100218BA0(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100218BE4(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100218DF4(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100218F44(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021923C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = 0;
    [v6 configureFromNetworkBagData:a2 error:&v7];
    v5 = v7;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10021957C(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002195C0(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100219604(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100219648(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100219874(id a1)
{
  qword_10039CCD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100219D7C(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021A66C(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021A6B0(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021A9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10021A9E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10021A9F8(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
  v3 = [NSPredicate predicateWithFormat:@"isMapHead == NO && application == %@ && logBeginTime == %llu && consistencyVerified == %d", *(a1 + 32), *(a1 + 64), 1];
  [v2 setPredicate:v3];

  [v2 setPropertiesToFetch:&off_10033D8F8];
  [v2 setReturnsDistinctResults:1];
  [v2 setResultType:2];
  [v2 setFetchLimit:1];
  v4 = [NSSortDescriptor sortDescriptorWithKey:@"revision" ascending:0];
  v41 = v4;
  v5 = [NSArray arrayWithObjects:&v41 count:1];
  [v2 setSortDescriptors:v5];

  v6 = [*(a1 + 40) context];
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [v6 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  v9 = *(*(a1 + 48) + 8);
  v34 = *(v9 + 40);
  [TransparencyManagedDataStore cleanseError:&v34];
  objc_storeStrong((v9 + 40), v34);
  if (v8 && [v8 count])
  {
    v10 = [v8 objectAtIndexedSubscript:0];
    v11 = [v10 objectForKeyedSubscript:@"revision"];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (qword_10039CCD8 != -1)
    {
      sub_10025ED3C();
    }

    v14 = qword_10039CCE0;
    if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_INFO))
    {
      v15 = *(*(*(a1 + 56) + 8) + 40);
      v16 = *(a1 + 32);
      *buf = 138412546;
      v38 = v15;
      v39 = 2112;
      v40 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "latest verified revision %@ for %@", buf, 0x16u);
    }

    v17 = v8;
  }

  else
  {
    v18 = *(a1 + 32);
    v19 = [NSPredicate predicateWithFormat:@"isMapHead == NO && application == %@ && logBeginTime == %llu && signatureVerified == %d && consistencyVerified == %d", v18, *(a1 + 64), 1, 2];
    [v2 setPredicate:v19];

    v20 = [NSSortDescriptor sortDescriptorWithKey:@"revision" ascending:1];
    v36 = v20;
    v21 = [NSArray arrayWithObjects:&v36 count:1];
    [v2 setSortDescriptors:v21];

    v22 = [*(a1 + 40) context];
    v23 = *(*(a1 + 48) + 8);
    v33 = *(v23 + 40);
    v17 = [v22 executeFetchRequest:v2 error:&v33];
    objc_storeStrong((v23 + 40), v33);

    if (v17 && [v17 count])
    {
      v24 = [v17 objectAtIndexedSubscript:0];
      v25 = [v24 objectForKeyedSubscript:@"revision"];
      v26 = *(*(a1 + 56) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      if (qword_10039CCD8 != -1)
      {
        sub_10025ED64();
      }

      v28 = qword_10039CCE0;
      if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_INFO))
      {
        v29 = *(*(*(a1 + 56) + 8) + 40);
        v30 = *(a1 + 32);
        *buf = 138412546;
        v38 = v29;
        v39 = 2112;
        v40 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "earliest pending revision %@ for %@", buf, 0x16u);
      }
    }

    v31 = *(*(a1 + 48) + 8);
    v32 = *(v31 + 40);
    [TransparencyManagedDataStore cleanseError:&v32];
    objc_storeStrong((v31 + 40), v32);
  }
}

void sub_10021AE64(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021AEA8(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021B07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10021B0A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
    v6 = *(a1 + 40);
    v7 = [NSPredicate predicateWithFormat:@"isMapHead == NO && application == %@ && logBeginTime == %llu && signatureVerified == %d && consistencyVerified == %d", v6, *(a1 + 64), 1, 1];
    [v5 setPredicate:v7];

    [v5 setPropertiesToFetch:&off_10033D910];
    [v5 setReturnsDistinctResults:1];
    [v5 setResultType:2];
    [v5 setFetchLimit:1];
    v8 = [NSSortDescriptor sortDescriptorWithKey:@"revision" ascending:0];
    v46 = v8;
    v9 = [NSArray arrayWithObjects:&v46 count:1];
    [v5 setSortDescriptors:v9];

    v10 = [*(a1 + 32) context];
    v11 = *(*(a1 + 48) + 8);
    v39 = *(v11 + 40);
    v12 = [v10 executeFetchRequest:v5 error:&v39];
    objc_storeStrong((v11 + 40), v39);

    v13 = *(*(a1 + 48) + 8);
    v38 = *(v13 + 40);
    [TransparencyManagedDataStore cleanseError:&v38];
    objc_storeStrong((v13 + 40), v38);
    if (v12 && [v12 count])
    {
      v14 = [v12 objectAtIndexedSubscript:0];
      v15 = [v14 objectForKeyedSubscript:@"sth"];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      if (qword_10039CCD8 != -1)
      {
        sub_10025EDB4();
      }

      v18 = qword_10039CCE0;
      if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_INFO))
      {
        v19 = *(*(*(a1 + 56) + 8) + 40);
        v20 = *(a1 + 40);
        *buf = 138412546;
        v43 = v19;
        v44 = 2112;
        v45 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "latest verified STH %@ for %@", buf, 0x16u);
      }

      v21 = v12;
    }

    else
    {
      v23 = *(a1 + 40);
      v24 = [NSPredicate predicateWithFormat:@"isMapHead == NO && application == %@ && logBeginTime == %llu && signatureVerified == %d && consistencyVerified == %d", v23, *(a1 + 64), 1, 2];
      [v5 setPredicate:v24];

      v25 = [NSSortDescriptor sortDescriptorWithKey:@"revision" ascending:1];
      v41 = v25;
      v26 = [NSArray arrayWithObjects:&v41 count:1];
      [v5 setSortDescriptors:v26];

      v27 = [*(a1 + 32) context];
      v21 = [v27 executeFetchRequest:v5 error:*(a1 + 72)];

      if (v21 && [v21 count])
      {
        v28 = [v21 objectAtIndexedSubscript:0];
        v29 = [v28 objectForKeyedSubscript:@"sth"];
        v30 = *(*(a1 + 56) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;

        if (qword_10039CCD8 != -1)
        {
          sub_10025EDDC();
        }

        v32 = qword_10039CCE0;
        if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_INFO))
        {
          v33 = *(*(*(a1 + 56) + 8) + 40);
          v34 = *(a1 + 40);
          *buf = 138412546;
          v43 = v33;
          v44 = 2112;
          v45 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "latest verified STH %@ for %@", buf, 0x16u);
        }
      }

      else
      {
        v35 = [TransparencyError errorWithDomain:kTransparencyErrorGossip code:-226 description:@"TLT STH doesn't exist in local database"];
        v36 = *(*(a1 + 48) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;
      }
    }
  }

  else
  {
    if (qword_10039CCD8 != -1)
    {
      sub_10025ED8C();
    }

    v22 = qword_10039CCE0;
    if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to get latest tree head STH", buf, 2u);
    }
  }
}

void sub_10021B58C(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021B5D0(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021B614(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021B7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10021B81C(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
  if (*(a1 + 72) == 1)
  {
    v3 = [NSNumber numberWithBool:*(a1 + 73)];
    v4 = [NSPredicate predicateWithFormat:@"isMapHead == %@ && application == %@ && logBeginTime == %llu && signatureVerified == %d && inclusionVerified == %d", v3, *(a1 + 32), *(a1 + 64), 1, 2];
    [v2 setPredicate:v4];
  }

  else
  {
    v5 = *(a1 + 32);
    v3 = [NSPredicate predicateWithFormat:@"isMapHead == NO && application == %@ && logBeginTime == %llu && signatureVerified == %d && consistencyVerified == %d", v5, *(a1 + 64), 1, 2];
    [v2 setPredicate:v3];
  }

  [v2 setPropertiesToFetch:&off_10033D928];
  [v2 setReturnsDistinctResults:1];
  [v2 setResultType:2];
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"revision" ascending:1];
  v29 = v6;
  v7 = [NSArray arrayWithObjects:&v29 count:1];
  [v2 setSortDescriptors:v7];

  v8 = [*(a1 + 40) context];
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v10 = [v8 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  v11 = *(*(a1 + 48) + 8);
  v26 = *(v11 + 40);
  [TransparencyManagedDataStore cleanseError:&v26];
  objc_storeStrong((v11 + 40), v26);
  if (v10 && [v10 count])
  {
    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(*(a1 + 56) + 8) + 40);
        v21 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:@"revision"];
        [v20 addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v17);
  }
}

void sub_10021BCB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a2;
  v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v22)
  {
    v21 = *v24;
    v19 = a1;
    v20 = a4;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [v7 sth];
        v9 = [(SignedObjectHolder *)SignedLogHead parseFromData:v8 error:a4];

        if (v9)
        {
          v10 = [v9 parsedLogHead];
          v11 = [v10 logHeadHash];

          v12 = *(a1 + 32);
          v13 = [v7 application];
          v14 = [v7 getUnsigned:"logBeginTime"];
          v15 = [v7 logType];
          v16 = [v7 getUnsigned:"revision"];
          LOBYTE(v17) = [v7 gossip] != 0;
          LODWORD(v16) = [v12 haveTreeHead:v11 isMapHead:0 application:v13 logBeginTime:v14 logType:v15 revision:v16 gossip:v17 error:a4];

          if (v16)
          {
            a1 = v19;
            [*(v19 + 32) deleteObject:v7];
          }

          else
          {
            [v7 setLogHeadHash:v11];
            a1 = v19;
          }

          a4 = v20;
        }

        else
        {
          [*(a1 + 32) deleteObject:v7];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v22);
  }

  [*(a1 + 32) persistAndRefaultObjects:obj error:a4];
}

void sub_10021BF04(uint64_t a1)
{
  if (qword_10039CCD8 != -1)
  {
    sub_10025EE04();
  }

  v2 = qword_10039CCE0;
  if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to populate log head hash in KTTreeHead: %@", &v4, 0xCu);
  }
}

void sub_10021BFC0(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021C74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021C764(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v34 = 0;
  v4 = [v2 countOutstandingSTHsForApplication:v3 error:&v34];
  v5 = v34;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_10039CCD8 != -1)
    {
      sub_10025EE18();
    }

    v6 = qword_10039CCE0;
    if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      *buf = 138412546;
      v36 = v7;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "failed to get outstanding STHs for %@: %@", buf, 0x16u);
    }

    if (*(a1 + 56) && v5)
    {
      v8 = v5;
      **(a1 + 56) = v5;
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v9 = [*(a1 + 32) logger];
  v10 = [NSNumber numberWithUnsignedInteger:v4];
  v11 = [TransparencyAnalytics formatEventName:@"OutstandingSTHs" application:*(a1 + 40)];
  [v9 logMetric:v10 withName:v11];

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v33 = v5;
  v14 = [v12 countOutstandingSMHsForApplication:v13 error:&v33];
  v15 = v33;

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_10039CCD8 != -1)
    {
      sub_10025EE40();
    }

    v16 = qword_10039CCE0;
    if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138412546;
      v36 = v17;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to get outstanding SMHs for %@: %@", buf, 0x16u);
    }

    if (*(a1 + 56) && v15)
    {
      v18 = v15;
      **(a1 + 56) = v15;
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v19 = [*(a1 + 32) logger];
  v20 = [NSNumber numberWithUnsignedInteger:v14];
  v21 = [TransparencyAnalytics formatEventName:@"OutstandingSMHs" application:*(a1 + 40)];
  [v19 logMetric:v20 withName:v21];

  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v32 = v15;
  v24 = [v22 countTotalSTHsForApplication:v23 error:&v32];
  v25 = v32;

  if (v24 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_10039CCD8 != -1)
    {
      sub_10025EE68();
    }

    v26 = qword_10039CCE0;
    if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 40);
      *buf = 138412546;
      v36 = v27;
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "failed to get total STHs for %@: %@", buf, 0x16u);
    }

    if (*(a1 + 56) && v25)
    {
      v28 = v25;
      **(a1 + 56) = v25;
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v29 = [*(a1 + 32) logger];
  v30 = [NSNumber numberWithUnsignedInteger:v24];
  v31 = [TransparencyAnalytics formatEventName:@"TotalSTHs" application:*(a1 + 40)];
  [v29 logMetric:v30 withName:v31];
}

void sub_10021CB48(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021CB8C(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021CBD0(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021CD2C(uint64_t a1)
{
  if (qword_10039CCD8 != -1)
  {
    sub_10025EE90();
  }

  v2 = qword_10039CCE0;
  if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to delete tree heads from prior epoch: %@", &v4, 0xCu);
  }
}

void sub_10021CDE8(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021D420(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021D464(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021D4A8(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021D4EC(uint64_t a1, void *a2, _BYTE *a3, void **a4)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a2;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    *&v7 = 138412290;
    v22 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = *(a1 + 56) - 1;
        if (v12 >= 3)
        {
          if (qword_10039CCD8 != -1)
          {
            sub_10025EEF4();
          }

          v18 = qword_10039CCE0;
          if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
          {
            v19 = *(a1 + 32);
            v20 = v18;
            v21 = [v19 downloadId];
            *buf = 138543362;
            v30 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "invalid download type for fail head downloadId %{public}@", buf, 0xCu);
          }

          [*(a1 + 40) refaultObject:{v11, v22}];
        }

        else
        {
          v13 = qword_1002DF750[v12];
          v14 = [*(a1 + 40) createSignedTreeHeadFailure];
          v15 = [*(a1 + 48) domain];
          [v14 setErrorDomain:v15];

          [v14 setErrorCode:{objc_msgSend(*(a1 + 48), "code")}];
          [v14 setUnsigned:"verificationType" value:v13];
          [v14 setSth:v11];
          if (([*(a1 + 40) persistAndRefaultObject:v11 error:a4] & 1) == 0)
          {
            if (qword_10039CCD8 != -1)
            {
              sub_10025EF1C();
            }

            v16 = qword_10039CCE0;
            if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
            {
              if (a4)
              {
                v17 = *a4;
              }

              else
              {
                v17 = 0;
              }

              *buf = v22;
              v30 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to persist failed head download: %@", buf, 0xCu);
            }

            if (a4 && *a4)
            {
              [*(a1 + 40) reportCoreDataPersistEventForLocation:@"failHeadDownloadRecord" underlyingError:?];
            }

            *a3 = 1;
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }
}

void sub_10021D7D4(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021D818(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021D9C8(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021DA0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11 = 0;
  [v3 failHeadDownloadRecord:a2 failure:v4 error:&v11];
  v5 = v11;
  v6 = *(a1 + 32);
  v10 = v5;
  v7 = [v6 persistWithError:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    if (qword_10039CCD8 != -1)
    {
      sub_10025EF58();
    }

    v9 = qword_10039CCE0;
    if (os_log_type_enabled(qword_10039CCE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to save inclusion proof failure: %@", buf, 0xCu);
    }

    [*(a1 + 32) reportCoreDataPersistEventForLocation:@"failSTHDownload" underlyingError:v8];
  }
}

void sub_10021DB30(id a1)
{
  qword_10039CCE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021DCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021DCC4(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
  v3 = [NSPredicate predicateWithFormat:@"application = %@ AND signatureVerified = %d AND revision IN %@", *(a1 + 32), 0, *(a1 + 40)];
  [v2 setPredicate:v3];

  [v2 setPropertiesToFetch:&off_10033D940];
  [v2 setReturnsDistinctResults:1];
  [v2 setResultType:2];
  v4 = [*(a1 + 48) context];
  v22 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v22];
  v6 = v22;

  if (v5 && [v5 count])
  {
    v17 = v6;
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * v12) objectForKeyedSubscript:@"sth"];
          [v7 addObject:v13];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    v14 = [NSArray arrayWithArray:v7];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v6 = v17;
  }
}

void sub_10021E5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10021E5D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10021E5F0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchDownloadRecordById:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 downloadId];
  v7 = [v6 isEqual:a1[5]];

  if (v7)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  [TransparencyManagedDataStore cleanseError:&v9];
  objc_storeStrong((v8 + 40), v9);
}

void sub_10021E820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10021E844(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"DownloadRecord"];
  v3 = [NSPredicate predicateWithFormat:@"downloadId = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 40) context];
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (v6 && [v6 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v20 + 1) + 8 * i) setResponse:*(a1 + 48)];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v9);
    }
  }

  else
  {
    if (qword_10039CCE8 != -1)
    {
      sub_10025EF80();
    }

    v12 = qword_10039CCF0;
    if (os_log_type_enabled(qword_10039CCF0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543362;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "received response for deleted downloadId %{public}@", buf, 0xCu);
    }
  }

  v14 = *(a1 + 40);
  v15 = *(*(a1 + 56) + 8);
  v19 = *(v15 + 40);
  v16 = [v14 persistWithError:&v19];
  objc_storeStrong((v15 + 40), v19);
  *(*(*(a1 + 64) + 8) + 24) = v16;
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  [TransparencyManagedDataStore cleanseError:&v18];
  objc_storeStrong((v17 + 40), v18);
}

void sub_10021EAB8(id a1)
{
  qword_10039CCF0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021ECDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10021ED00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchDownloadRecordById:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    [*(a1 + 32) deleteObject:v5];
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 8);
  v12 = *(v7 + 40);
  v8 = [v6 persistWithError:&v12];
  objc_storeStrong((v7 + 40), v12);
  *(*(*(a1 + 56) + 8) + 24) = v8;
  v9 = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 48) + 8) + 40)];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_10021EDDC(uint64_t a1)
{
  if (qword_10039CCE8 != -1)
  {
    sub_10025EFA8();
  }

  v2 = qword_10039CCF0;
  if (os_log_type_enabled(qword_10039CCF0, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to delete download record for UUID %@: %@", &v5, 0x16u);
  }
}

void sub_10021EEAC(id a1)
{
  qword_10039CCF0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021F0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10021F0E8(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"DownloadRecord"];
  v3 = [NSPredicate predicateWithFormat:@"application == %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 40) context];
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  [*(a1 + 40) deleteObjectSet:v6];
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 48) + 8);
  v11 = *(v8 + 40);
  LOBYTE(v5) = [v7 persistWithError:&v11];
  objc_storeStrong((v8 + 40), v11);
  *(*(*(a1 + 56) + 8) + 24) = v5;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  [TransparencyManagedDataStore cleanseError:&v10];
  objc_storeStrong((v9 + 40), v10);
}

void sub_10021F228(uint64_t a1)
{
  if (qword_10039CCE8 != -1)
  {
    sub_10025EFBC();
  }

  v2 = qword_10039CCF0;
  if (os_log_type_enabled(qword_10039CCF0, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to delete download record for %@: %@", &v5, 0x16u);
  }
}

void sub_10021F2F8(id a1)
{
  qword_10039CCF0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021F51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10021F540(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v3 fetchDownloadRecord:v2 application:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    [*(a1 + 32) deleteObject:v6];
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  v12 = *(v8 + 40);
  v9 = [v7 persistWithError:&v12];
  objc_storeStrong((v8 + 40), v12);
  *(*(*(a1 + 56) + 8) + 24) = v9;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  [TransparencyManagedDataStore cleanseError:&v11];
  objc_storeStrong((v10 + 40), v11);
}

void sub_10021F61C(uint64_t a1)
{
  if (qword_10039CCE8 != -1)
  {
    sub_10025EFD0();
  }

  v2 = qword_10039CCF0;
  if (os_log_type_enabled(qword_10039CCF0, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to delete download record for %@: %@", &v5, 0x16u);
  }
}

void sub_10021F6EC(id a1)
{
  qword_10039CCF0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10021F8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10021F8C8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchDownloadRecordById:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [SecXPCHelper cleanseErrorForXPC:*(*(a1[7] + 8) + 40)];
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v5)
  {
    v9 = [v5 downloadId];
    v10 = [v9 isEqual:a1[5]];

    if (v10)
    {
      (*(a1[6] + 16))();
      *(*(a1[8] + 8) + 24) = 1;
    }
  }
}

void sub_10021FD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10021FDAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10021FDC4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchFetchRecordById:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [SecXPCHelper cleanseErrorForXPC:*(*(a1[7] + 8) + 40)];
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v5)
  {
    v9 = [v5 fetchId];
    v10 = [v9 isEqual:a1[5]];

    if (v10)
    {
      (*(a1[6] + 16))();
      *(*(a1[8] + 8) + 24) = 1;
    }
  }

  else
  {
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-225 description:@"no fetch record found for %@", a1[5]];
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (qword_10039CCF8 != -1)
    {
      sub_10025EFE4();
    }

    v14 = qword_10039CD00;
    if (os_log_type_enabled(qword_10039CD00, OS_LOG_TYPE_INFO))
    {
      v15 = a1[5];
      *buf = 138543362;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "no fetch record found for fetchId %{public}@", buf, 0xCu);
    }
  }
}

void sub_10021FF84(id a1)
{
  qword_10039CD00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100220544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100220560(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100220578(uint64_t a1, void *a2)
{
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = a2;
  v48 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v48)
  {
    v3 = 0;
    v4 = 0;
    v47 = *v54;
    v5 = NSNotification_ptr;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v54 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v53 + 1) + 8 * v6);
        v8 = *(a1 + 56);
        if (v8 == 2)
        {
          v13 = [*(*(&v53 + 1) + 8 * v6) application];
          v11 = [TransparencyAnalytics formatEventName:@"VerifyConsistencyProofEvent" application:v13];

          [v7 setConsistencyVerified:0];
          v3 = -196;
        }

        else if (v8 == 1)
        {
          if ([*(*(&v53 + 1) + 8 * v6) isMapHead])
          {
            v12 = [v7 application];
            v11 = [TransparencyAnalytics formatEventName:@"VerifyPATInclusionProofEvent" application:v12];

            v4 = v12;
          }

          else
          {
            v11 = @"ktTLTVerifyInclusionProofEvent";
          }

          [v7 setInclusionVerified:0];
          v3 = -202;
        }

        else
        {
          if (v8)
          {
            goto LABEL_22;
          }

          if ([*(*(&v53 + 1) + 8 * v6) isMapHead])
          {
            v3 = -138;
          }

          else
          {
            v3 = -198;
          }

          if ([v7 isMapHead])
          {
            v9 = @"VerifySMHEvent";
          }

          else
          {
            v9 = @"VerifySTHEvent";
          }

          v10 = [v7 application];
          v11 = [TransparencyAnalytics formatEventName:v9 application:v10];

          [v7 setSignatureVerified:0];
        }

        v4 = v11;
LABEL_22:
        v14 = *(a1 + 32);
        v15 = [v7 failures];
        v16 = [v14 createChainOfErrorsFromSTHFailures:v15 type:*(a1 + 56)];

        v17 = [*(a1 + 32) dataStore];
        v18 = [v17 createSignedTreeHeadFailure];

        [v18 setSth:v7];
        [v18 setErrorCode:v3];
        [v18 setErrorDomain:@"TransparencyErrorVerify"];
        [v18 setUnsigned:"verificationType" value:*(a1 + 56)];
        if (qword_10039CD08 != -1)
        {
          sub_10025F00C();
        }

        v19 = qword_10039CD10;
        v50 = v16;
        if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
        {
          v20 = v19;
          v21 = [v7 revision];
          v22 = [v7 application];
          *buf = 134218754;
          v60 = v21;
          v16 = v50;
          v61 = 2114;
          v62 = v22;
          v63 = 2048;
          v64 = v3;
          v65 = 2112;
          v66 = v50;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "STH verification failure after maximum proof delay for revision %lld of %{public}@, %ld: %@", buf, 0x2Au);
        }

        v23 = *(a1 + 64);
        v51 = v3;
        if (v23)
        {
          v24 = *v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = [TransparencyError errorWithError:v24 underlyingError:v16];
        v26 = [v7 revision];
        v27 = [v7 application];
        v28 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:v51 underlyingError:v25 description:@"STH verification failure after maximum verification delay for revision %lld of %@", v26, v27];

        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v28);
        v29 = [*(a1 + 32) context];
        v30 = [v29 settings];
        LODWORD(v27) = [v30 allowsInternalSecurityPolicies];

        if (v27)
        {
          v57 = @"failedRevision";
          v31 = [v5[2] numberWithLongLong:{objc_msgSend(v7, "revision")}];
          v58 = v31;
          v32 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        }

        else
        {
          v32 = 0;
        }

        v33 = +[TransparencyAnalytics logger];
        v49 = v4;
        [v33 logResultForEvent:v4 hardFailure:1 result:v28 withAttributes:v32];

        v34 = *(a1 + 40);
        v35 = v5;
        v36 = [v5[2] numberWithLongLong:{objc_msgSend(v7, "revision")}];
        [v34 addObject:v36];

        v37 = [*(a1 + 32) dataStore];
        v52 = 0;
        v38 = [v37 persistAndRefaultObject:v7 error:&v52];
        v39 = v52;
        v40 = v52;

        if ((v38 & 1) == 0)
        {
          if (qword_10039CD08 != -1)
          {
            sub_10025F034();
          }

          v41 = qword_10039CD10;
          if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v60 = v40;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "failed to save expired STH: %@", buf, 0xCu);
          }

          v42 = [*(a1 + 32) dataStore];
          [v42 reportCoreDataPersistEventForLocation:@"failExpiredSTHs" underlyingError:v40];

          v43 = *(*(a1 + 48) + 8);
          v45 = *(v43 + 40);
          v44 = (v43 + 40);
          if (!v45)
          {
            objc_storeStrong(v44, v39);
          }
        }

        v6 = v6 + 1;
        v5 = v35;
        v4 = v49;
        v3 = v51;
      }

      while (v48 != v6);
      v48 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
      if (!v48)
      {
        goto LABEL_43;
      }
    }
  }

  v4 = 0;
LABEL_43:
}

void sub_100220BE0(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100220C24(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002214B0(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002214F4(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100221A2C(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100221F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_100221FC8(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022200C(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100222050(uint64_t a1)
{
  v2 = [*(a1 + 32) objectMapHead];
  v3 = [SignedMapHead signedTypeWithObject:v2];

  v4 = [*(a1 + 40) dataStore];
  [v3 setDataStore:v4];

  [v3 setOverrideBeginTimeFromLogEntry:*(a1 + 48)];
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v3 copyManagedObject:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = [*(a1 + 40) dataStore];
    [v7 onMocSetMapHead:v6 inclusionResult:*(a1 + 88) inclusionError:*(a1 + 56)];

    [v6 setUnsigned:"inclusionVerified" value:*(a1 + 88)];
    [v6 setConsistencyVerified:1];
    if (*(a1 + 96) && !*(a1 + 88))
    {
      v8 = [*(a1 + 40) dataStore];
      v9 = **(a1 + 96);
      v10 = [*(a1 + 40) applicationID];
      v11 = [*(a1 + 40) context];
      v12 = [v11 optInServer];
      v13 = [v8 createFailureEvent:v9 application:v10 optInServer:v12];

      [v6 setFailureEvent:v13];
      v14 = [*(a1 + 40) context];
      v15 = [v14 optInServer];
      v16 = [v15 getAggregateOptInState:0];

      if (qword_10039CD08 != -1)
      {
        sub_10025F0FC();
      }

      v17 = qword_10039CD10;
      if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v13 eventId];
        v20 = [*(a1 + 40) applicationID];
        *buf = 138543874;
        v37 = v19;
        v38 = 2112;
        v39 = v20;
        v40 = 2112;
        v41 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Created failure eventId %{public}@ for %{pubic}@ SMH inclusion validation: %@", buf, 0x20u);
      }

      v21 = [*(a1 + 40) context];
      v22 = [v21 followUp];
      v23 = [*(a1 + 40) applicationID];
      v24 = [v13 eventId];
      [v22 postFollowup:v23 type:2 eventId:v24 errorCode:objc_msgSend(**(a1 + 96) optInState:"code") infoLink:v16 additionalInfo:0 error:{0, 0}];
    }

    [v6 receiptTime];
    *(*(*(a1 + 72) + 8) + 24) = v25;
    v26 = [*(a1 + 40) dataStore];
    v27 = *(*(a1 + 64) + 8);
    v34 = *(v27 + 40);
    v28 = [v26 persistAndRefaultObject:v6 error:&v34];
    objc_storeStrong((v27 + 40), v34);

    if ((v28 & 1) == 0)
    {
      if (qword_10039CD08 != -1)
      {
        sub_10025F124();
      }

      v29 = qword_10039CD10;
      if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
      {
        v30 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412290;
        v37 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to update inclusion state for map head: %@", buf, 0xCu);
      }

      v31 = [*(a1 + 40) dataStore];
      [v31 reportCoreDataPersistEventForLocation:@"mapHeadRevisionLogProof" underlyingError:*(*(*(a1 + 64) + 8) + 40)];

      if (*(a1 + 96))
      {
        **(a1 + 96) = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 64) + 8) + 40)];
      }

      *(*(*(a1 + 80) + 8) + 24) = 0;
    }
  }

  else
  {
    if (qword_10039CD08 != -1)
    {
      sub_10025F14C();
    }

    v32 = qword_10039CD10;
    if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_INFO))
    {
      v33 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v37 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "No stored map head for revision log proof response: %@", buf, 0xCu);
    }
  }
}

void sub_100222530(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100222574(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002225B8(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100222A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100222AC0(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100222B04(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100222B48(uint64_t a1)
{
  v2 = [*(a1 + 32) patHead];
  v3 = [SignedLogHead signedTypeWithObject:v2];

  v4 = [*(a1 + 40) dataStore];
  [v3 setDataStore:v4];

  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v3 copyManagedObject:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    [v6 setUnsigned:"inclusionVerified" value:*(a1 + 72)];
    if (*(a1 + 80) && !*(a1 + 72))
    {
      v7 = [*(a1 + 40) dataStore];
      v8 = **(a1 + 80);
      v9 = [*(a1 + 40) applicationID];
      v10 = [*(a1 + 40) context];
      v11 = [v10 optInServer];
      v12 = [v7 createFailureEvent:v8 application:v9 optInServer:v11];

      [v6 setFailureEvent:v12];
      v13 = [*(a1 + 40) context];
      v14 = [v13 optInServer];
      v39 = 0;
      v15 = [v14 getAggregateOptInState:&v39];
      v37 = v39;

      if (qword_10039CD08 != -1)
      {
        sub_10025F1C4();
      }

      v16 = qword_10039CD10;
      if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [v12 eventId];
        v19 = [*(a1 + 40) applicationID];
        *buf = 138543874;
        v42 = v18;
        v43 = 2114;
        v44 = v19;
        v45 = 2112;
        v46 = v37;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Created failure eventId %{public}@ for %{public}@ STH inclusion validation %@", buf, 0x20u);
      }

      if (qword_10039CD08 != -1)
      {
        sub_10025F1EC();
      }

      v20 = qword_10039CD10;
      if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [v12 eventId];
        v23 = [*(a1 + 40) applicationID];
        *buf = 138543618;
        v42 = v22;
        v43 = 2114;
        v44 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Created failure eventId %{public}@ for %{public}@ STH inclusion validation", buf, 0x16u);
      }

      v24 = [*(a1 + 40) context];
      v25 = [v24 followUp];
      v26 = [*(a1 + 40) applicationID];
      v27 = [v12 eventId];
      [v25 postFollowup:v26 type:2 eventId:v27 errorCode:objc_msgSend(**(a1 + 80) optInState:"code") infoLink:v15 additionalInfo:0 error:{0, 0}];
    }

    [v6 receiptTime];
    *(*(*(a1 + 56) + 8) + 24) = v28;
    v29 = [*(a1 + 40) dataStore];
    v30 = *(*(a1 + 48) + 8);
    v38 = *(v30 + 40);
    v31 = [v29 persistAndRefaultObject:v6 error:&v38];
    objc_storeStrong((v30 + 40), v38);

    if ((v31 & 1) == 0)
    {
      if (qword_10039CD08 != -1)
      {
        sub_10025F214();
      }

      v32 = qword_10039CD10;
      if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
      {
        v33 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        v42 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "failed to update inclusion state for map head: %@", buf, 0xCu);
      }

      v34 = [*(a1 + 40) dataStore];
      [v34 reportCoreDataPersistEventForLocation:@"patHeadRevisionLogProof" underlyingError:*(*(*(a1 + 48) + 8) + 40)];

      if (*(a1 + 80))
      {
        **(a1 + 80) = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 48) + 8) + 40)];
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  else
  {
    if (qword_10039CD08 != -1)
    {
      sub_10025F23C();
    }

    v35 = qword_10039CD10;
    if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_INFO))
    {
      v36 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v42 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "No stored PAT head for revision log proof response: %@", buf, 0xCu);
    }
  }
}

void sub_1002230A8(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002230EC(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100223130(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100223174(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022363C(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100223680(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002236C4(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002239A4(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002239E8(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100223FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10022400C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dataStore];
  [v2 setDataStore:v3];

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 createManagedObjectWithError:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    [v6 setInclusionVerified:2];
    v7 = [*(a1 + 40) dataStore];
    v8 = *(*(a1 + 48) + 8);
    v16 = *(v8 + 40);
    v9 = [v7 persistAndRefaultObject:v6 error:&v16];
    objc_storeStrong((v8 + 40), v16);

    if ((v9 & 1) == 0)
    {
      if (qword_10039CD08 != -1)
      {
        sub_10025F318();
      }

      v10 = qword_10039CD10;
      if (os_log_type_enabled(qword_10039CD10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to save unverified PAT STH from revision log inclusion proof: %@", buf, 0xCu);
      }

      v12 = [*(a1 + 40) dataStore];
      [v12 reportCoreDataPersistEventForLocation:@"revisionMissingTLTProof" underlyingError:*(*(*(a1 + 48) + 8) + 40)];

      v13 = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 48) + 8) + 40)];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

void sub_1002241E4(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002244F8(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022453C(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100224998(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002249DC(id a1)
{
  qword_10039CD10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100224FE4(id a1)
{
  qword_10039CD20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100225028(id a1)
{
  qword_10039CD20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100225254(id a1)
{
  qword_10039CD20 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002259A8(id a1)
{
  qword_10039CD30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002259EC(id a1)
{
  qword_10039CD30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100225A30(id a1)
{
  qword_10039CD30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100225A74(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 deviceList];
  if (v5)
  {
    v6 = [*(a1 + 32) updateDevicesList:v5];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100226060(id a1)
{
  qword_10039CD40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002260A4(id a1)
{
  qword_10039CD40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100226280(id a1)
{
  qword_10039CD40 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100226AFC(id a1)
{
  qword_10039CD50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100226B40(id a1)
{
  qword_10039CD50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100226C5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 createManagedObjectWithError:&v13];
  v4 = v13;
  if (v3)
  {
    v5 = [*(a1 + 32) dataStore];
    [v5 onMocSetMapHead:v3 signatureResult:*(a1 + 48) signatureError:*(a1 + 40)];

    v6 = [*(a1 + 32) dataStore];
    v12 = v4;
    v7 = [v6 persistWithError:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      if (qword_10039CD48 != -1)
      {
        sub_10025F4BC();
      }

      v9 = qword_10039CD50;
      if (os_log_type_enabled(qword_10039CD50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed persist SMH signature failure: %@", buf, 0xCu);
      }

      v10 = [*(a1 + 32) dataStore];
      [v10 reportCoreDataPersistEventForLocation:@"mapHeadSignature" underlyingError:v8];
    }
  }

  else
  {
    if (qword_10039CD48 != -1)
    {
      sub_10025F4E4();
    }

    v11 = qword_10039CD50;
    if (os_log_type_enabled(qword_10039CD50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to create SMH object: %@", buf, 0xCu);
    }

    v8 = v4;
  }
}

void sub_100226E3C(id a1)
{
  qword_10039CD50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}