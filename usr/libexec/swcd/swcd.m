__CFString *sub_1000010F0(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = @".wk";
    }

    else
    {
      v2 = [NSNumber numberWithUnsignedChar:a1];
      v1 = [v2 description];
    }
  }

  else
  {
    v1 = @"cdn";
  }

  return v1;
}

void sub_100001824(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000018C0;
  v2[3] = &unk_1000347E8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _enumerateTaskStatesUsingBlock:v2];
}

void sub_1000018C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 domain];
  [v3 downloadRoute];
  [v3 isDiscretionary];
  v6 = [v3 task];

  v7 = [v3 dateScheduled];

  v4 = [v3 buffer];
  [v4 length];

  (*(*(a1 + 32) + 16))();
}

void sub_1000019AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_100005DB0(&a9);

  _Unwind_Resume(a1);
}

void sub_100002240(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_100003094(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_100003E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100003EB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003ECC(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 domain];
  v7 = *(a1 + 48);
  if (v7 == [v8 downloadRoute] && objc_msgSend(*(a1 + 32), "isEqual:", v6))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_100004160(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) underlyingQueue];
  dispatch_assert_queue_V2(v2);

  if (([*(a1 + 40) isValid] & 1) == 0)
  {
    if (qword_10003AC48 != -1)
    {
      dispatch_once(&qword_10003AC48, &stru_100034918);
    }

    v8 = qword_10003AC40;
    if (os_log_type_enabled(qword_10003AC40, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138412290;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Domain %@ is invalid. Will not attempt a download.", buf, 0xCu);
    }

    v10 = [NSError alloc];
    v42[0] = &off_100036798;
    v41[0] = @"Line";
    v41[1] = @"Function";
    v11 = [NSString stringWithUTF8String:"[SWCDownloader(Private) _downloadAASAFileForDomain:applicationIdentifier:downloadRoute:discretionary:completionHandlers:]_block_invoke"];
    v42[1] = v11;
    v41[2] = @"Domain";
    v42[2] = *(a1 + 40);
    v12 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
    v3 = [v10 initWithDomain:_SWCErrorDomain code:8 userInfo:v12];

    v7 = [*(a1 + 32) delegate];
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v7 downloader:*(a1 + 32) failedToDownloadAASAFileFromDomain:*(a1 + 40) error:v3];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = *(a1 + 48);
    v14 = [(SWCDownloadTaskState *)v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v14)
    {
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(a1 + 80);
          (*(*(*(&v32 + 1) + 8 * i) + 16))(*(*(&v32 + 1) + 8 * i));
        }

        v14 = [(SWCDownloadTaskState *)v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v14);
    }

    goto LABEL_51;
  }

  v3 = [*(a1 + 32) _taskStateForDomain:*(a1 + 40) downloadRoute:*(a1 + 80)];
  if (!v3)
  {
    if (*(a1 + 56) && !*(a1 + 80))
    {
      v18 = +[_SWCDomain appleDomain];
      if ([v18 encompassesDomain:*(a1 + 40)])
      {
        v19 = +[_SWCPrefs sharedPrefs];
        v20 = [v19 isAppleInternal];

        if (v20 && !arc4random_uniform(0x64u))
        {
          if (qword_10003AC48 != -1)
          {
            dispatch_once(&qword_10003AC48, &stru_100034918);
          }

          v21 = qword_10003AC40;
          if (os_log_type_enabled(qword_10003AC40, OS_LOG_TYPE_FAULT))
          {
            v22 = *(a1 + 56);
            v23 = *(a1 + 40);
            *buf = 138412546;
            v37 = v22;
            v38 = 2112;
            v39 = v23;
            _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Application %@ is attempting to download AASA data from %@ over the public Internet (via an Apple-controlled CDN.) Doing so may leak information about unannounced apps or features. This application must be updated. Please file a bug report against this application.", buf, 0x16u);
          }
        }
      }

      else
      {
      }
    }

    v7 = [*(a1 + 32) delegate];
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v7 downloader:*(a1 + 32) willDownloadAASAFileFromDomain:*(a1 + 40)];
    }

    v13 = [[SWCDownloadTaskState alloc] initWithDownloader:*(a1 + 32) domain:*(a1 + 40) downloadRoute:*(a1 + 80)];
    if (!v13)
    {
      v31 = +[NSAssertionHandler currentHandler];
      [v31 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"SWCDownloader.mm" lineNumber:571 description:@"Failed to create download state object"];
    }

    if (*(a1 + 48))
    {
      v24 = [(SWCDownloadTaskState *)v13 completionHandlers];
      [v24 addObjectsFromArray:*(a1 + 48)];
    }

    if (*(a1 + 81) == 1)
    {
      if (qword_10003AC48 != -1)
      {
        dispatch_once(&qword_10003AC48, &stru_100034918);
      }

      v25 = qword_10003AC40;
      if (os_log_type_enabled(qword_10003AC40, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 40);
        *buf = 138412290;
        v37 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Downloading discretionary data for domain %@", buf, 0xCu);
      }

      v27 = *(a1 + 81);
    }

    else
    {
      v27 = 0;
    }

    [(SWCDownloadTaskState *)v13 setDiscretionary:v27 & 1];
    v28 = *(*(a1 + 32) + 48);
    v29 = [(SWCDownloadTaskState *)v13 taskDescription];
    [v28 setObject:v13 forKey:v29];

    [*(a1 + 32) _resumePendingTasks];
    v30 = +[SWCAnalyticsLogger sharedLogger];
    [v30 logAASAFileDownloadEventWithDomain:*(a1 + 40) route:*(a1 + 80)];

    v3 = 0;
LABEL_51:

    goto LABEL_52;
  }

  if (qword_10003AC48 != -1)
  {
    dispatch_once(&qword_10003AC48, &stru_100034918);
  }

  v4 = qword_10003AC40;
  if (os_log_type_enabled(qword_10003AC40, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = @"non-discretionary";
    if (*(a1 + 81))
    {
      v6 = @"discretionary";
    }

    *buf = 138412546;
    v37 = v5;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already downloading data for domain %@, so skipping a second download (%@)", buf, 0x16u);
  }

  if (*(a1 + 48))
  {
    v7 = [v3 completionHandlers];
    [v7 addObjectsFromArray:*(a1 + 48)];
LABEL_52:
  }
}

void sub_100005048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  sub_100005E30(v33 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_1000050A8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void sub_100005120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 task];

  if (v4)
  {
    v7 = [*(a1 + 32) _sessionIDForTaskState:v3];
    v5 = *(*(a1 + 40) + 8);
    v8 = &v7;
    v6 = sub_100005E7C((v5 + 48), v7);
    v6[3] = (v6[3] + 1);
  }
}

void sub_1000051C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 task];

  if (!v4)
  {
    v8 = [*(a1 + 32) _sessionIDForTaskState:v3];
    v5 = *(*(a1 + 48) + 8);
    v9 = &v8;
    v6 = sub_100005E7C((v5 + 48), v8);
    v7 = v6[3];
    if (v7 < [*(a1 + 32) _maximumActiveTaskCountForSessionID:v8])
    {
      v6[3] = (v6[3] + 1);
      [*(a1 + 40) addObject:v3];
    }
  }
}

void sub_100005DEC(id a1)
{
  qword_10003AC40 = os_log_create(&_SWCLogSubsystem, "dl");

  _objc_release_x1();
}

uint64_t sub_100005E30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_100005E7C(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_10000746C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 isEqual:NSUnderlyingErrorKey])
  {
    v6 = [v5 description];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"UnderlyingError"];
  }

  else
  {
    if ([NSJSONSerialization isValidJSONObject:v5])
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
      goto LABEL_7;
    }

    v6 = [v5 description];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

LABEL_7:
}

void sub_100008CA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [SWCEntry alloc];
        v12 = [(SWCEntry *)v11 initWithApplicationIdentifier:*(a1 + 32) service:v5 domain:v10, v13];
        [*(a1 + 40) addObject:v12];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void sub_100008E98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100009068(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (_NSIsNSString() && _NSIsNSDictionary())
  {
    v6 = [_SWCSubstitutionVariableList substitutionVariableListWithDictionary:v5];
    v7 = [v5 objectForKeyedSubscript:@"defaults"];
    if ((_NSIsNSDictionary() & 1) == 0)
    {

      v7 = &__NSDictionary0__struct;
    }

    v8 = [v5 objectForKeyedSubscript:@"details"];
    if (v8 && (v9 = _SWCServiceTypeMaximumDetailsCount()) != 0)
    {
      if (_NSIsNSArray())
      {
        [*(a1 + 48) _addEntriesToOrderedSet:*(a1 + 32) forUniversalLinksFromDetailsArray:v8 domain:*(a1 + 40) substitutionVariables:v6 defaults:v7 maximum:v9];
      }

      else if (_NSIsNSDictionary())
      {
        [*(a1 + 48) _addEntriesToOrderedSet:*(a1 + 32) forUniversalLinksFromDetailsDictionary:v8 domain:*(a1 + 40) substitutionVariables:v6 defaults:v7 maximum:v9];
      }
    }

    else
    {
      v10 = [v5 objectForKeyedSubscript:@"apps"];
      if (v10 && _NSIsNSArray())
      {
        [*(a1 + 48) _addEntriesToOrderedSet:*(a1 + 32) forService:v11 fromAppsArray:v10 domain:*(a1 + 40)];
      }
    }
  }
}

void sub_10000A500(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_10000A660(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v15 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v15;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 domainRequiringModeOfOperation:0];
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = v10;
        if (v10)
        {
          +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 unsignedLongLongValue] | objc_msgSend(v8, "modeOfOperation"));
        }

        else
        {
          +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v8 modeOfOperation]);
        }
        v12 = ;
        [v4 setObject:v12 forKeyedSubscript:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000A990;
  v19[3] = &unk_1000349B8;
  v13 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
  v20 = v13;
  [v4 enumerateKeysAndObjectsUsingBlock:v19];
  v14 = [v13 copy];
  [*(a1 + 32) setObject:v14 forKeyedSubscript:v17];
}

void sub_10000A990(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v7 domainRequiringModeOfOperation:{objc_msgSend(v5, "unsignedLongLongValue")}];
  [*(a1 + 32) addObject:v6];
}

void sub_10000AEA8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 allObjects];
  v6 = [v5 sortedArrayWithOptions:16 usingComparator:&stru_100034A20];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

int64_t sub_10000AF64(id a1, _SWCDomain *a2, _SWCDomain *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(_SWCDomain *)v4 isWildcard];
  v7 = [(_SWCDomain *)v5 isWildcard];
  if (((v6 | v7 ^ 1) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (((v6 ^ 1 | v7) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (((v6 ^ 1 | v7 ^ 1) & 1) == 0)
  {
    v9 = [(_SWCDomain *)v4 host];
    v10 = [v9 length];

    v11 = [(_SWCDomain *)v5 host];
    v12 = [v11 length];

    if (v10 > v12)
    {
LABEL_6:
      v8 = -1;
      goto LABEL_9;
    }

    if (v10 >= v12)
    {
      goto LABEL_4;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

LABEL_4:
  v8 = 0;
LABEL_9:

  return v8;
}

void sub_10000B768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B7C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v17 = 0;
  v8 = [[NSData alloc] initWithContentsOfURL:v6 options:1 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = +[SWCSecurityGuard sharedSecurityGuard];
    v16 = v9;
    v11 = [v10 JSONObjectWithSignedJSONData:v8 error:&v16];
    v12 = v16;

    if (!v11)
    {
      if (qword_10003AC58 != -1)
      {
        dispatch_once(&qword_10003AC58, &stru_100034AE0);
      }

      v13 = qword_10003AC50;
      if (os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = v6;
        v20 = 2112;
        v21 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to decode JSON object from file %@: %@", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    if (qword_10003AC58 != -1)
    {
      dispatch_once(&qword_10003AC58, &stru_100034AE0);
    }

    v14 = qword_10003AC50;
    if (os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to read JSON file %@: %@", buf, 0x16u);
    }

    v11 = 0;
    v12 = v9;
  }

  objc_autoreleasePoolPop(v7);
  if (v11)
  {
    v15 = *(*(*(a1 + 40) + 8) + 24);
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000BC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000BCDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000BCF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v21 = [*(a1 + 48) entriesForJSONObject:a3 domain:a2];
  if (v21)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v6 = objc_alloc_init(NSMutableOrderedSet);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v21;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = *v23;
      v12 = (a4 & 7) << 10;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 applicationIdentifier];
          v16 = [v15 isEqual:*(a1 + 32)];

          if (v16)
          {
            v17 = v14;
            v18 = [v14 fields];
            *v18 = *v18 & 0xE3FF | v12;
            v19 = [*(*(*(a1 + 40) + 8) + 40) indexOfObject:v14];
            v20 = *(*(*(a1 + 40) + 8) + 40);
            if (v19 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v20 addObject:v14];
            }

            else
            {
              [v20 replaceObjectAtIndex:v19 withObject:v14];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }
}

uint64_t sub_10000C3D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = v3;
    if (_NSIsNSString())
    {
      v4 = [[_SWCApplicationIdentifier alloc] initWithString:v13];
      v5 = [SWCEntry alloc];
      v6 = [(SWCEntry *)v5 initWithApplicationIdentifier:v4 service:_SWCServiceTypeAppLinks domain:*(a1 + 32)];
      [(SWCEntry *)v6 setPatterns:*(a1 + 40)];
      [(SWCEntry *)v6 setSubstitutionVariables:*(a1 + 48)];
      v7 = *(a1 + 72);
      v8 = [(SWCEntry *)v6 fields];
      *v8 = *v8 & 0xFF3F | ((v7 & 3) << 6);
      if (*(a1 + 56) && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v9 = [*(a1 + 56) intValue];
        v10 = [(SWCEntry *)v6 fields];
        if (v9 >= 100)
        {
          v11 = 100;
        }

        else
        {
          v11 = v9;
        }

        if (v11 <= -100)
        {
          LOBYTE(v11) = -100;
        }

        v10->relativeOrder = v11;
      }

      [*(a1 + 64) addObject:v6];
    }
  }

  return _objc_release_x1();
}

void sub_10000C850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C898(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  if (_NSIsNSString() && _NSIsNSDictionary())
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:v9 forKeyedSubscript:@"appID"];
    [*(a1 + 72) _addEntryToOrderedSet:*(a1 + 32) forUniversalLinksFromSingleDetailsDictionary:v8 domain:*(a1 + 40) substitutionVariables:*(a1 + 48) defaults:*(a1 + 56)];
    if (++*(*(*(a1 + 64) + 8) + 24) >= *(a1 + 80))
    {
      *a4 = 1;
    }
  }
}

void sub_10000CB7C(id a1)
{
  qword_10003AC50 = os_log_create(&_SWCLogSubsystem, "entry");

  _objc_release_x1();
}

void sub_10000D768(id a1)
{
  if (dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 1))
  {
    qword_10003AC70 = NSClassFromString(@"MCProfileConnection");
    if (qword_10003AC70)
    {
      return;
    }

    v1 = [NSError alloc];
    v14[0] = &off_1000367F8;
    v13[0] = @"Line";
    v13[1] = @"Function";
    v2 = [NSString stringWithUTF8String:"[SWCEnterpriseContext(CPMCInterop) _loadEnterpriseData]_block_invoke"];
    v14[1] = v2;
    v13[2] = NSDebugDescriptionErrorKey;
    v14[2] = @"MCProfileConnection not found.";
    v3 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    v4 = [v1 initWithDomain:_SWCErrorDomain code:4 userInfo:v3];
    v5 = qword_10003AC60;
    qword_10003AC60 = v4;
  }

  else
  {
    v6 = dlerror();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = "ManagedConfiguration.framework not loaded.";
    }

    v2 = [NSString stringWithUTF8String:v7];
    v8 = [NSError alloc];
    v12[0] = &off_100036810;
    v11[0] = @"Line";
    v11[1] = @"Function";
    v3 = [NSString stringWithUTF8String:"[SWCEnterpriseContext(CPMCInterop) _loadEnterpriseData]_block_invoke"];
    v11[2] = NSDebugDescriptionErrorKey;
    v12[1] = v3;
    v12[2] = v2;
    v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
    v9 = [v8 initWithDomain:_SWCErrorDomain code:4 userInfo:v5];
    v10 = qword_10003AC60;
    qword_10003AC60 = v9;
  }
}

void sub_10000D9C8(id a1)
{
  qword_10003AC78 = os_log_create(&_SWCLogSubsystem, "1701");

  _objc_release_x1();
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  [NSError _setFileNameLocalizationEnabled:0];
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v1 = *__error();
    if (qword_10003ACA0 != -1)
    {
      dispatch_once(&qword_10003ACA0, &stru_100034BC0);
    }

    v2 = qword_10003AC98;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109378;
      v9[1] = v1;
      v10 = 2082;
      v11 = strerror(v1);
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "### _set_user_dir_suffix() failed: %i %{public}s", v9, 0x12u);
    }
  }

  signal(13, 1);
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("SWC notification queue", v3);
  v5 = qword_10003AC88;
  qword_10003AC88 = v4;

  xpc_set_event_stream_handler("com.apple.distnoted.matching", qword_10003AC88, &stru_100034B60);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", qword_10003AC88, &stru_100034B80);
  v6 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, qword_10003AC88);
  v7 = qword_10003AC90;
  qword_10003AC90 = v6;

  dispatch_source_set_event_handler(qword_10003AC90, &stru_100034BA0);
  dispatch_resume(qword_10003AC90);
  v8 = sub_10000E1FC();
  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

void sub_10000DBE0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (qword_10003ACA0 != -1)
  {
    dispatch_once(&qword_10003ACA0, &stru_100034BC0);
  }

  v3 = qword_10003AC98;
  if (os_log_type_enabled(qword_10003AC98, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "XPC stream event (distnoted): %@", &v4, 0xCu);
  }

  sub_10000DCD4(v2);
}

void sub_10000DCD4(void *a1)
{
  v1 = a1;
  if (xpc_get_type(v1) == &_xpc_type_error)
  {
    v3 = xpc_copy_description(v1);
    if (qword_10003ACA0 != -1)
    {
      dispatch_once(&qword_10003ACA0, &stru_100034BC0);
    }

    v4 = qword_10003AC98;
    if (!os_log_type_enabled(qword_10003AC98, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *v10 = 136446210;
    *&v10[4] = v3;
    v8 = "XPC error on event handler: %{public}s";
    goto LABEL_24;
  }

  if (xpc_get_type(v1) != &_xpc_type_dictionary)
  {
    if (qword_10003ACA0 != -1)
    {
      dispatch_once(&qword_10003ACA0, &stru_100034BC0);
    }

    v2 = qword_10003AC98;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      type = xpc_get_type(v1);
      *v10 = 136446210;
      *&v10[4] = xpc_type_get_name(type);
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Unexpected XPC type on event handler: %{public}s", v10, 0xCu);
    }

    goto LABEL_18;
  }

  string = xpc_dictionary_get_string(v1, _xpc_event_key_name);
  if (!string)
  {
    v3 = xpc_copy_description(v1);
    if (qword_10003ACA0 != -1)
    {
      dispatch_once(&qword_10003ACA0, &stru_100034BC0);
    }

    v4 = qword_10003AC98;
    if (!os_log_type_enabled(qword_10003AC98, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *v10 = 136380675;
    *&v10[4] = v3;
    v8 = "XPC message is missing a notification name: %{private}s";
LABEL_24:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v8, v10, 0xCu);
LABEL_11:
    free(v3);
    goto LABEL_18;
  }

  v6 = xpc_copy_description(v1);
  if (qword_10003ACA0 != -1)
  {
    dispatch_once(&qword_10003ACA0, &stru_100034BC0);
  }

  v7 = qword_10003AC98;
  if (os_log_type_enabled(qword_10003AC98, OS_LOG_TYPE_INFO))
  {
    *v10 = 136446467;
    *&v10[4] = string;
    *&v10[12] = 2081;
    *&v10[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Received notification %{public}s, updating entry list: %{private}s", v10, 0x16u);
  }

  free(v6);
  *&v10[8] = 0;
  v11 = 0u;
  *v10 = 0x3FD0000000000000;
  *&v10[16] = 0x3FD0000000000000;
  *&v11 = qword_10003AC88;
  *(&v11 + 1) = os_transaction_create();
  sub_10001E848(&qword_10003ACA8, v10, &stru_100034BE0);

LABEL_18:
}

void sub_10000E054(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (qword_10003ACA0 != -1)
  {
    dispatch_once(&qword_10003ACA0, &stru_100034BC0);
  }

  v3 = qword_10003AC98;
  if (os_log_type_enabled(qword_10003AC98, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "XPC stream event (libnotify): %@", &v4, 0xCu);
  }

  sub_10000DCD4(v2);
}

void sub_10000E148(id a1)
{
  if (qword_10003ACA0 != -1)
  {
    dispatch_once(&qword_10003ACA0, &stru_100034BC0);
  }

  v1 = qword_10003AC98;
  if (os_log_type_enabled(qword_10003AC98, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received signal SIGTERM. Will terminate when clean.", v3, 2u);
  }

  v2 = sub_10000E1FC();
  [v2 receiveSIGTERMSignal];

  xpc_transaction_exit_clean();
}

id sub_10000E1FC()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_10003ACB8 != -1)
  {
    dispatch_once(&qword_10003ACB8, &stru_100034C28);
  }

  objc_autoreleasePoolPop(v0);
  v1 = qword_10003ACB0;

  return v1;
}

void sub_10000E268(id a1)
{
  qword_10003AC98 = os_log_create(&_SWCLogSubsystem, "daemon");

  _objc_release_x1();
}

void sub_10000E2AC(id a1)
{
  v1 = sub_10000E1FC();
  v2 = +[SWCDatabase queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E36C;
  block[3] = &unk_100034C08;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void sub_10000E378(id a1)
{
  v1 = +[SWCManager beginListening];
  v2 = qword_10003ACB0;
  qword_10003ACB0 = v1;

  if (qword_10003ACA0 != -1)
  {
    dispatch_once(&qword_10003ACA0, &stru_100034BC0);
  }

  v3 = qword_10003AC98;
  if (os_log_type_enabled(qword_10003AC98, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "swcd started", v4, 2u);
  }
}

void sub_10000E4A8(id a1)
{
  qword_10003ACC0 = [[SWCDatabase alloc] _initShared];

  _objc_release_x1();
}

void sub_10000E7A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[3])
  {
    [v2 saveReturningError:0];
    v3 = (*(a1 + 32) + 24);

    sub_10001EAF8(v3);
  }
}

void sub_10000E89C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("SWC database queue", v3);
  v2 = qword_10003ACD0;
  qword_10003ACD0 = v1;
}

void sub_10000EF9C(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v5 = [a2 domain];
    if ([*(a1 + 32) isEqual:?])
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void sub_10000F224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000F244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F25C(uint64_t a1, id obj, _BYTE *a3)
{
  v5 = *(*(a1 + 40) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
LABEL_6:

    objc_storeStrong(v6, obj);
    return;
  }

  if (([*(a1 + 32) isWildcard] & 1) == 0)
  {
    *a3 = 1;
    return;
  }

  v16 = [obj domain];
  v9 = [v16 host];
  v10 = [v9 length];
  v11 = [*(*(*(a1 + 40) + 8) + 40) domain];
  v12 = [v11 host];
  if (v10 > [v12 length])
  {
    v13 = [obj domain];
    v14 = [*(*(*(a1 + 40) + 8) + 40) domain];
    v15 = [v13 encompassesDomain:v14];

    if (!v15)
    {
      return;
    }

    v6 = (*(*(a1 + 40) + 8) + 40);
    goto LABEL_6;
  }
}

void sub_10000F950(uint64_t a1, void *a2)
{
  [a2 setLastCheckedDate:*(a1 + 32)];
  [a2 setLastError:0];
  [a2 setRetryCount:0];
  v4 = [*(a1 + 40) indexOfObject:a2];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([a2 isDownloadable])
    {
      v5 = [a2 fields];
      *v5 = *v5 & 0xFFF3 | 8;
    }
  }

  else
  {
    v9 = [*(a1 + 40) objectAtIndexedSubscript:v4];
    v6 = [a2 fields];
    *v6 = *v6 & 0xFFF3 | 4;
    v7 = [v9 patterns];
    [a2 setPatterns:v7];
    v8 = [v9 substitutionVariables];
    [a2 setSubstitutionVariables:v8];
  }
}

void sub_10000FDF8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 serviceType];
  LODWORD(v4) = [v4 isEqual:v5];

  if (v4)
  {
    v6 = *(a1 + 40);

    [v6 addObject:a2];
  }
}

void sub_10001014C(uint64_t a1, void *a2)
{
  v4 = [a2 applicationIdentifier];
  if (v4)
  {
  }

  else
  {
    v5 = [a2 domain];

    if (!v5)
    {
      return;
    }
  }

  v6 = [*(a1 + 32) entryMatchingServiceSpecifier:a2];

  if (!v6)
  {
    if (qword_10003ACE8 != -1)
    {
      dispatch_once(&qword_10003ACE8, &stru_100034D78);
    }

    v7 = qword_10003ACE0;
    if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Will remove settings for service specifier %@ because there are no more service entries matching it", &v8, 0xCu);
    }

    [*(a1 + 40) addObject:a2];
  }
}

uint64_t sub_100010D78(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0 || (result = [NSPropertyListSerialization propertyList:a3 isValidForFormat:200], (result & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

void sub_1000117B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000117F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v6 = 0;
    v3 = [WeakRetained saveReturningError:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      if (qword_10003ACE8 != -1)
      {
        dispatch_once(&qword_10003ACE8, &stru_100034D78);
      }

      v5 = qword_10003ACE0;
      if (os_log_type_enabled(qword_10003ACE0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v8 = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error saving SWC database: %@", buf, 0xCu);
      }
    }
  }
}

void sub_100011E18(id a1)
{
  qword_10003ACE0 = os_log_create(&_SWCLogSubsystem, "db");

  _objc_release_x1();
}

void sub_1000121B4(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 32) _performUpdateWithActivity:v4];
  objc_autoreleasePoolPop(v3);
}

BOOL sub_100012538(uint64_t a1)
{
  [*(a1 + 32) _performUpdatesWithTransaction:*(a1 + 40)];
  v2 = *(a1 + 48);

  return xpc_activity_set_state(v2, 5);
}

void sub_1000126A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isDownloadable])
  {
    v4 = [v3 nextCheckDate];
    v5 = [*(a1 + 32) earlierDate:v4];
    v6 = [v5 isEqual:v4];

    if (v6)
    {
      if (qword_10003ACF8 != -1)
      {
        dispatch_once(&qword_10003ACF8, &stru_100034DE8);
      }

      v7 = qword_10003ACF0;
      if (os_log_type_enabled(qword_10003ACF0, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138412546;
        v10 = v3;
        v11 = 2114;
        v12 = v4;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Entry %@ needed to be rechecked at %{public}@", &v9, 0x16u);
      }

      [*(a1 + 40) addObject:v3];
    }

    else
    {
      if (qword_10003ACF8 != -1)
      {
        dispatch_once(&qword_10003ACF8, &stru_100034DE8);
      }

      v8 = qword_10003ACF0;
      if (os_log_type_enabled(qword_10003ACF0, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138412546;
        v10 = v3;
        v11 = 2114;
        v12 = v4;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Entry %@ will need to be rechecked at %{public}@", &v9, 0x16u);
      }
    }
  }
}

void sub_100012B68(id a1)
{
  qword_10003ACF0 = os_log_create(&_SWCLogSubsystem, "dlsched");

  _objc_release_x1();
}

void sub_100013398(id a1)
{
  qword_10003AD08 = objc_alloc_init(SWCAnalyticsLogger);

  _objc_release_x1();
}

id sub_100013448(uint64_t a1)
{
  v4 = @"route";
  v1 = [NSNumber numberWithUnsignedChar:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100013650(id a1)
{
  v1 = os_transaction_create();
  v2 = +[SWCDatabase queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013714;
  block[3] = &unk_100034C08;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

id sub_100013714()
{
  v0 = [SWCManager alloc];
  v1 = +[SWCDatabase sharedDatabase];
  v2 = [(SWCManager *)v0 initWithDatabase:v1];
  v3 = qword_10003AD10;
  qword_10003AD10 = v2;

  v4 = [NSXPCListener alloc];
  v5 = [v4 initWithMachServiceName:_SWCXPCServiceName];
  v6 = *(qword_10003AD10 + 8);
  *(qword_10003AD10 + 8) = v5;

  [*(qword_10003AD10 + 8) setDelegate:?];
  v7 = *(qword_10003AD10 + 8);
  v8 = +[SWCDatabase queue];
  [v7 _setQueue:v8];

  [*(qword_10003AD10 + 8) resume];
  [qword_10003AD10 updateEntriesForAllBundlesIgnoringCurrentState:0];
  v9 = *(qword_10003AD10 + 40);

  return [v9 update];
}

id sub_100013EF8()
{
  if (qword_10003AD28 != -1)
  {
    dispatch_once(&qword_10003AD28, &stru_1000351C0);
  }

  v1 = qword_10003AD20;

  return v1;
}

void sub_100013F4C(id a1, NSError *a2)
{
  v2 = a2;
  if (qword_10003AD28 != -1)
  {
    dispatch_once(&qword_10003AD28, &stru_1000351C0);
  }

  v3 = qword_10003AD20;
  if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error during LS enumeration. App list may be incomplete: %@", &v4, 0xCu);
  }
}

void sub_100014350(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (qword_10003AD28 != -1)
  {
    dispatch_once(&qword_10003AD28, &stru_1000351C0);
  }

  v2 = qword_10003AD20;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = [WeakRetained processIdentifier];
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Connection interrupted: %llu", &v3, 0xCu);
  }
}

void sub_100014460(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (qword_10003AD28 != -1)
  {
    dispatch_once(&qword_10003AD28, &stru_1000351C0);
  }

  v2 = qword_10003AD20;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = [WeakRetained processIdentifier];
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Connection invalidated: %llu", &v3, 0xCu);
  }
}

void sub_100014770(void *a1)
{
  [*(a1[4] + 24) enumerateEntriesMatchingService:0 exactDomain:a1[5] appID:0 block:&stru_100034EE8];
  v2 = [SWCEntry entriesForJSONObject:a1[6] domain:a1[5]];
  [*(a1[4] + 24) updateEntriesForDomain:a1[5] canonicalEntries:?];
}

void sub_100014920(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 24);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100014A20;
  v9 = &unk_100034CE0;
  v5 = v2;
  v10 = v5;
  v11 = *(a1 + 48);
  [v4 enumerateEntriesMatchingService:0 exactDomain:v3 appID:0 block:&v6];
  [*(*(a1 + 32) + 24) scheduleNextSave];
}

void sub_100014A20(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 fields];
  *v3 &= ~0x10u;
  [v9 setLastCheckedDate:*(a1 + 32)];
  [v9 setLastError:*(a1 + 40)];
  v4 = [v9 retryCount];
  v5 = v4;
  v6 = &off_100036888;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 unsignedLongLongValue] + 1);
  [v9 setRetryCount:v8];
}

void sub_100014AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_100014BE4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 40);
  if (v9)
  {
    v8 = [*(a1 + 32) _serviceDetailsWithEntry:?];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    (*(v7 + 16))(v7, 0, v5);
  }
}

void sub_100016218(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

_WORD *sub_100016298(uint64_t a1, id a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v3 = *(a1 + 40);
  v4 = a2;
  result = [a2 fields];
  *result = *result & 0xFFFC | v3 & 3;
  return result;
}

void sub_100016EEC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v3 = *(a1 + 40);
    _SWCLogSeparator();
  }

  [v4 logToFile:*(a1 + 40) verbosity:*(a1 + 48)];
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void sub_100016F80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = [NSString alloc];
  v6 = [*a2 description];
  v7 = *(a2 + 8);
  if (v4)
  {
    v8 = sub_1000010F0(v7);
    v9 = *(a2 + 9);
    [*(a2 + 24) timeIntervalSinceNow];
    v11 = &stru_100035ED8;
    if (v9)
    {
      v11 = @" discretionary";
    }

    v12 = [v5 initWithFormat:@"%@ (%@%@ running for %.0fs)", v6, v8, v11, floor(fabs(v10))];
  }

  else
  {
    v13 = sub_1000010F0(v7);
    v8 = v13;
    if (*(a2 + 9))
    {
      v14 = @" discretionary";
    }

    else
    {
      v14 = &stru_100035ED8;
    }

    v12 = [v5 initWithFormat:@"%@ (%@%@ in future)", v6, v13, v14];
  }

  v17 = v12;

  v15 = [*(a1 + 32) stringFromByteCount:*(a2 + 32)];
  v16 = *(a1 + 40);
  _SWCLogValueForKey();
}

void sub_10001710C(uint64_t a1, uint64_t a2)
{
  v4 = [*a2 description];
  v5 = v4;
  if (*(a2 + 24) && *(a1 + 40))
  {
    v12 = v4;
    v6 = [NSString alloc];
    v7 = sub_1000010F0(*(a2 + 8));
    v8 = *(a2 + 9);
    [*(a2 + 24) timeIntervalSinceNow];
    v10 = &stru_100035ED8;
    if (v8)
    {
      v10 = @" discretionary";
    }

    v11 = [v6 initWithFormat:@"%@ (%@%@ %.0fs)", v12, v7, v10, floor(fabs(v9))];

    v5 = v11;
  }

  v13 = v5;
  [*(a1 + 32) addObject:v5];
}

void sub_100017240(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v6 = *(a1 + 40);
    _SWCLogSeparator();
  }

  v7 = *(a1 + 40);
  v8 = [v9 description];
  _SWCLogValueForKey();

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void sub_10001731C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 applicationIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [[NSHashTable alloc] initWithOptions:512 capacity:0];
    v7 = *(a1 + 32);
    v8 = [v11 applicationIdentifier];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  v9 = [v11 patterns];
  if (v9)
  {
    [v6 addObject:v9];
  }

  v10 = [v11 substitutionVariables];
  if (v10)
  {
    [v6 addObject:v10];
  }
}

__n128 sub_100017480(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1000174D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = a3;
  v7 = 0;
  v8 = 0;
  v9 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v9)
  {
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = objc_opt_class();
        InstanceSize = class_getInstanceSize(v13);
        v15 = malloc_size(v12);
        if (v15 > InstanceSize)
        {
          v7 = v15 - InstanceSize + v8;
          v8 = v7;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  v16 = *(*(a1 + 32) + 8);
  v18 = v16[7];
  v17 = v16[8];
  if (v18 >= v17)
  {
    v20 = v16[6];
    v21 = (v18 - v20) >> 4;
    if ((v21 + 1) >> 60)
    {
      sub_10000628C();
    }

    v22 = v17 - v20;
    v23 = v22 >> 3;
    if (v22 >> 3 <= (v21 + 1))
    {
      v23 = v21 + 1;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF0)
    {
      v24 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v23;
    }

    if (v24)
    {
      if (!(v24 >> 60))
      {
        operator new();
      }

      sub_10000628C();
    }

    v25 = (16 * v21);
    *v25 = v5;
    v25[1] = v7;
    v26 = v16[6];
    v27 = v16[7];
    v28 = v25 + v26 - v27;
    if (v26 != v27)
    {
      v29 = v16[6];
      v30 = (v25 + v26 - v27);
      do
      {
        v31 = *v29;
        v32 = *(v29 + 1);
        *v29 = 0;
        v29 += 16;
        *v30 = v31;
        v30[1] = v32;
        v30 += 2;
      }

      while (v29 != v27);
      do
      {

        v26 += 2;
      }

      while (v26 != v27);
      v26 = v16[6];
    }

    v19 = v25 + 2;
    v16[6] = v28;
    v16[7] = v19;
    v16[8] = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v18 = v5;
    v18[1] = v8;
    v19 = v18 + 2;
  }

  v16[7] = v19;
}

void sub_10001791C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_100018B48(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[SWCDatabase queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100018C38;
    v8[3] = &unk_100034810;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    dispatch_async(v6, v8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100018C38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 _setDeveloperModeEnabled:1 error:&v4];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

void sub_100019DE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*[v3 fields] & 0x1C00) != 0x800 && (objc_msgSend(*(a1 + 32), "containsObject:", v3) & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_10001A0A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10003AD28 != -1)
  {
    dispatch_once(&qword_10003AD28, &stru_1000351C0);
  }

  v4 = qword_10003AD20;
  if (os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    *buf = 138412546;
    v22 = v3;
    v23 = 2112;
    v24 = v18;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Found entry %@ matching inputs %@", buf, 0x16u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v20 = 0;
    v6 = [v3 evaluateWithURLComponents:v5 auditToken:a1 + 56 matchingPattern:&v20];
    v7 = v20;
    v8 = v7;
    if (v6)
    {
      if (v6 != 100)
      {
        if (v6 == 200)
        {
          if (v7)
          {
            if (qword_10003AD28 != -1)
            {
              dispatch_once(&qword_10003AD28, &stru_1000351C0);
            }

            v9 = qword_10003AD20;
            if (!os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_27;
            }

            *buf = 138412546;
            v22 = v8;
            v23 = 2112;
            v24 = v3;
            v10 = "Inputs matched pattern %@ on entry %@";
            v11 = v9;
            v12 = 22;
          }

          else
          {
            if (qword_10003AD28 != -1)
            {
              dispatch_once(&qword_10003AD28, &stru_1000351C0);
            }

            v19 = qword_10003AD20;
            if (!os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_27;
            }

            *buf = 138412290;
            v22 = v3;
            v10 = "Entry %@ did not have any patterns to match against";
            v11 = v19;
            v12 = 12;
          }

          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
LABEL_27:
          [*(a1 + 48) addObject:v3];
        }

LABEL_28:

        goto LABEL_29;
      }

      if (qword_10003AD28 != -1)
      {
        dispatch_once(&qword_10003AD28, &stru_1000351C0);
      }

      v13 = qword_10003AD20;
      if (!os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      *buf = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = v3;
      v14 = "Inputs blocked by pattern %@ on entry %@";
      v15 = v13;
      v16 = 22;
    }

    else
    {
      if (qword_10003AD28 != -1)
      {
        dispatch_once(&qword_10003AD28, &stru_1000351C0);
      }

      v17 = qword_10003AD20;
      if (!os_log_type_enabled(qword_10003AD20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v22 = v3;
      v14 = "Inputs did not match entry %@";
      v15 = v17;
      v16 = 12;
    }

    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, v14, buf, v16);
    goto LABEL_28;
  }

  [*(a1 + 48) addObject:v3];
LABEL_29:
}

uint64_t sub_10001A3F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 fields];
  v8 = *v7;
  v9 = v7[2];
  v10 = [v6 fields];
  v11 = *v10;
  v12 = v10[2];
  v14 = (v8 & 3) == 1 || (v8 & 0xC) == 4;
  v15 = v11 & 3;
  v16 = v11 & 0xC;
  v18 = v15 != 1 && v16 != 4;
  if (v14 && v18)
  {
    goto LABEL_15;
  }

  if (!v14 && !v18)
  {
LABEL_19:
    v19 = 1;
    goto LABEL_20;
  }

  if (v9 >= v12)
  {
    if (v9 > v12)
    {
      goto LABEL_19;
    }

    if (!*(a1 + 32))
    {
LABEL_26:
      v23 = [v5 domain];
      v24 = [v6 domain];
      if (([v23 isEqual:v24] & 1) == 0)
      {
        if ([v23 isWildcard] && (objc_msgSend(v23, "encompassesDomain:", v24) & 1) != 0)
        {
          v19 = 1;
LABEL_34:

          goto LABEL_20;
        }

        if ([v24 isWildcard] && (objc_msgSend(v24, "encompassesDomain:", v23) & 1) != 0)
        {
          v19 = -1;
          goto LABEL_34;
        }
      }

      v19 = 0;
      goto LABEL_34;
    }

    v21 = [v5 patterns];

    v22 = [v6 patterns];

    if (!v21 || v22)
    {
      if (!v21 && v22)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

LABEL_15:
  v19 = -1;
LABEL_20:

  return v19;
}

void sub_10001AD80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = +[SWCDatabase queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001AE80;
    v8[3] = &unk_100035150;
    v10 = *(a1 + 40);
    v9 = *(a1 + 32);
    dispatch_async(v7, v8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10001B9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10001BA00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001BA18(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (_NSIsNSData())
  {
    v9 = *(a1 + 56);
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 isValid])
    {
      v10 = [v7 rawValue];
      v11 = [v10 stringByAppendingPathExtension:@"json"];

      if (v11)
      {
        v12 = [*(a1 + 32) URLByAppendingPathComponent:v11];
        v13 = *(*(a1 + 40) + 8);
        obj = *(v13 + 40);
        v14 = [v8 writeToURL:v12 options:1 error:&obj];
        objc_storeStrong((v13 + 40), obj);
        if (v14)
        {
          ++*(*(*(a1 + 48) + 8) + 24);
        }

        else
        {
          *a4 = 1;
        }
      }
    }
  }
}

void sub_10001BE3C(id a1)
{
  qword_10003AD20 = os_log_create(&_SWCLogSubsystem, "manager");

  _objc_release_x1();
}

void sub_10001BE80(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10001BF00(void **a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = v10;
  while (1)
  {
    v12 = &a2[-v11] >> 4;
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if ((*(*a3 + 16))())
        {
          sub_10001CE80(v10, a2 - 2);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v60 = (a2 - 16);
      v61 = (*(*a3 + 16))();
      v62 = (*(*a3 + 16))();
      if (v61)
      {
        if (v62)
        {
          v63 = (v11 + 32);
          goto LABEL_166;
        }

        sub_10001CE80(v11, (v11 + 16));
        if ((*(*a3 + 16))())
        {
          v119 = (v11 + 16);
          v63 = (v11 + 32);
          goto LABEL_181;
        }
      }

      else if (v62)
      {
        sub_10001CE80((v11 + 16), (v11 + 32));
        if ((*(*a3 + 16))())
        {
          v63 = (v11 + 16);
LABEL_166:
          v119 = v11;
LABEL_181:
          sub_10001CE80(v119, v63);
        }
      }

      if ((*(*a3 + 16))())
      {
        sub_10001CE80((v11 + 32), v60);
        if ((*(*a3 + 16))())
        {
          sub_10001CE80((v11 + 16), (v11 + 32));
          if ((*(*a3 + 16))())
          {
            sub_10001CE80(v11, (v11 + 16));
          }
        }
      }

      return;
    }

    if (v12 == 5)
    {

      sub_10001CEE4(v11, (v11 + 16), (v11 + 32), (v11 + 48), a2 - 2, a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v69 = (v11 + 16);
          if ((v11 + 16) != a2)
          {
            v70 = 0;
            v71 = v11;
            do
            {
              v72 = v69;
              if ((*(*a3 + 16))())
              {
                v73 = a2;
                v74 = *v72;
                *v72 = 0;
                v134 = v74;
                v140 = v71[3];
                v75 = v70;
                while (1)
                {
                  v76 = (v11 + v75);
                  v77 = *(v11 + v75);
                  *v76 = 0;
                  v78 = *(v11 + v75 + 16);
                  v76[2] = v77;

                  v76[3] = v76[1];
                  if (!v75)
                  {
                    break;
                  }

                  v75 -= 16;
                  if (((*(*a3 + 16))() & 1) == 0)
                  {
                    v79 = v11 + v75 + 16;
                    goto LABEL_126;
                  }
                }

                v79 = v11;
LABEL_126:
                v80 = *v79;
                *v79 = v134;

                *(v79 + 8) = v140;
                a2 = v73;
              }

              v69 = v72 + 2;
              v70 += 16;
              v71 = v72;
            }

            while (v72 + 2 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v121 = (v11 + 16);
        if ((v11 + 16) != a2)
        {
          v122 = (v11 - 16);
          do
          {
            v123 = v121;
            if ((*(*a3 + 16))())
            {
              v124 = *v123;
              *v123 = 0;
              v137 = v124;
              v143 = *(v11 + 24);
              v125 = v122;
              do
              {
                v126 = v125[2];
                v125[2] = 0;
                v127 = v125[4];
                v125[4] = v126;

                v125[5] = v125[3];
                v125 -= 2;
              }

              while (((*(*a3 + 16))() & 1) != 0);
              v128 = v125[4];
              v125[4] = v137;

              v125[5] = v143;
            }

            v121 = v123 + 2;
            v122 += 2;
            v11 = v123;
          }

          while (v123 + 2 != a2);
        }
      }

      return;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v130 = a2;
        v81 = v13 >> 1;
        v82 = v13 >> 1;
        do
        {
          v83 = v82;
          if (v81 >= v82)
          {
            v84 = (2 * v82) | 1;
            v85 = (v11 + 16 * v84);
            if (2 * v82 + 2 < v12 && (*(*a3 + 16))())
            {
              v85 += 2;
              v84 = 2 * v83 + 2;
            }

            v86 = (v11 + 16 * v83);
            if (((*(*a3 + 16))() & 1) == 0)
            {
              v87 = *v86;
              *v86 = 0;
              v135 = v87;
              v141 = v86[1];
              do
              {
                v88 = v85;
                v89 = *v85;
                *v85 = 0;
                v90 = *v86;
                *v86 = v89;

                v86[1] = v85[1];
                if (v81 < v84)
                {
                  break;
                }

                v91 = (2 * v84) | 1;
                v85 = (v11 + 16 * v91);
                v84 = 2 * v84 + 2;
                if (v84 >= v12)
                {
                  v84 = v91;
                }

                else if ((*(*a3 + 16))())
                {
                  v85 += 2;
                }

                else
                {
                  v84 = v91;
                }

                v86 = v88;
              }

              while (!(*(*a3 + 16))());
              v92 = *v88;
              *v88 = v135;

              v88[1] = v141;
            }
          }

          v82 = v83 - 1;
        }

        while (v83);
        v93 = v130;
        do
        {
          if (v12 >= 2)
          {
            v94 = v93;
            v95 = 0;
            v129 = *(v11 + 8);
            v131 = *v11;
            v96 = v11;
            *v11 = 0;
            do
            {
              v97 = &v96[2 * v95];
              v98 = v97 + 2;
              v99 = (2 * v95) | 1;
              v100 = 2 * v95 + 2;
              if (v100 < v12)
              {
                v101 = v97 + 4;
                if ((*(*a3 + 16))())
                {
                  v98 = v101;
                  v99 = v100;
                }
              }

              v102 = *v98;
              *v98 = 0;
              v103 = *v96;
              *v96 = v102;

              v96[1] = v98[1];
              v96 = v98;
              v95 = v99;
            }

            while (v99 <= ((v12 - 2) >> 1));
            v93 = v94;
            if (v98 == (v94 - 16))
            {
              v118 = *v98;
              *v98 = v131;

              v98[1] = v129;
            }

            else
            {
              v104 = *(v94 - 2);
              *(v94 - 2) = 0;
              v105 = *v98;
              *v98 = v104;

              v98[1] = *(v94 - 1);
              v106 = *(v94 - 2);
              *(v94 - 2) = v131;

              *(v94 - 1) = v129;
              v107 = (v98 - v11 + 16) >> 4;
              v108 = v107 < 2;
              v109 = v107 - 2;
              if (!v108)
              {
                v110 = v109 >> 1;
                v111 = (v11 + 16 * (v109 >> 1));
                if ((*(*a3 + 16))())
                {
                  v112 = *v98;
                  v113 = v98[1];
                  *v98 = 0;
                  v136 = v112;
                  v142 = v113;
                  do
                  {
                    v114 = v111;
                    v115 = *v111;
                    *v111 = 0;
                    v116 = *v98;
                    *v98 = v115;

                    v98[1] = v111[1];
                    if (!v110)
                    {
                      break;
                    }

                    v110 = (v110 - 1) >> 1;
                    v111 = (v11 + 16 * v110);
                    v98 = v114;
                  }

                  while (((*(*a3 + 16))() & 1) != 0);
                  v117 = *v114;
                  *v114 = v136;

                  v114[1] = v142;
                }
              }
            }
          }

          v93 -= 16;
          v108 = v12-- > 2;
        }

        while (v108);
      }

      return;
    }

    v14 = v11 + 16 * (v12 >> 1);
    v15 = *(*a3 + 16);
    if (v12 >= 0x81)
    {
      v16 = v15();
      v17 = (*(*a3 + 16))();
      if (v16)
      {
        if (v17)
        {
          v18 = v11;
          goto LABEL_27;
        }

        sub_10001CE80(v11, (v11 + 16 * (v12 >> 1)));
        if ((*(*a3 + 16))())
        {
          v18 = (v11 + 16 * (v12 >> 1));
LABEL_27:
          v22 = (a2 - 16);
LABEL_28:
          sub_10001CE80(v18, v22);
        }
      }

      else if (v17)
      {
        sub_10001CE80((v11 + 16 * (v12 >> 1)), a2 - 2);
        if ((*(*a3 + 16))())
        {
          v18 = v11;
          v22 = (v11 + 16 * (v12 >> 1));
          goto LABEL_28;
        }
      }

      v24 = (*(*a3 + 16))();
      v25 = (*(*a3 + 16))();
      if (v24)
      {
        if (v25)
        {
          v26 = (v11 + 16);
          goto LABEL_41;
        }

        sub_10001CE80((v11 + 16), (v14 - 16));
        if ((*(*a3 + 16))())
        {
          v26 = (v14 - 16);
LABEL_41:
          v27 = (a2 - 32);
LABEL_42:
          sub_10001CE80(v26, v27);
        }
      }

      else if (v25)
      {
        sub_10001CE80((v14 - 16), a2 - 4);
        if ((*(*a3 + 16))())
        {
          v26 = (v11 + 16);
          v27 = (v14 - 16);
          goto LABEL_42;
        }
      }

      v28 = (*(*a3 + 16))();
      v29 = (*(*a3 + 16))();
      if (v28)
      {
        if (v29)
        {
          v30 = (v11 + 32);
          goto LABEL_51;
        }

        sub_10001CE80((v11 + 32), (v14 + 16));
        if ((*(*a3 + 16))())
        {
          v30 = (v14 + 16);
LABEL_51:
          v31 = (a2 - 48);
LABEL_52:
          sub_10001CE80(v30, v31);
        }
      }

      else if (v29)
      {
        sub_10001CE80((v14 + 16), a2 - 6);
        if ((*(*a3 + 16))())
        {
          v30 = (v11 + 32);
          v31 = (v14 + 16);
          goto LABEL_52;
        }
      }

      v32 = (*(*a3 + 16))();
      v33 = (*(*a3 + 16))();
      if (v32)
      {
        v34 = a2;
        if (v33)
        {
          sub_10001CE80((v14 - 16), (v14 + 16));
LABEL_62:
          v37 = *v11;
          *v11 = 0;
          v38 = *v14;
          *v14 = 0;
          v39 = *v11;
          *v11 = v38;

          v40 = *v14;
          *v14 = v37;

          v41 = *(v11 + 8);
          *(v11 + 8) = *(v14 + 8);
          *(v14 + 8) = v41;
          v11 = v10;
          a2 = v34;
          goto LABEL_63;
        }

        sub_10001CE80((v14 - 16), v14);
        if (!(*(*a3 + 16))())
        {
          goto LABEL_62;
        }

        v36 = (v14 + 16);
        v35 = v14;
      }

      else
      {
        v34 = a2;
        if (!v33)
        {
          goto LABEL_62;
        }

        sub_10001CE80(v14, (v14 + 16));
        if (!(*(*a3 + 16))())
        {
          goto LABEL_62;
        }

        v35 = (v14 - 16);
        v36 = v14;
      }

      sub_10001CE80(v35, v36);
      goto LABEL_62;
    }

    v19 = v15();
    v20 = (*(*a3 + 16))();
    if (v19)
    {
      if (v20)
      {
        v21 = v14;
LABEL_37:
        v23 = (a2 - 16);
        goto LABEL_38;
      }

      sub_10001CE80(v14, v11);
      if ((*(*a3 + 16))())
      {
        v21 = v11;
        goto LABEL_37;
      }
    }

    else if (v20)
    {
      sub_10001CE80(v11, a2 - 2);
      if ((*(*a3 + 16))())
      {
        v21 = v14;
        v23 = v11;
LABEL_38:
        sub_10001CE80(v21, v23);
      }
    }

LABEL_63:
    --a4;
    if ((a5 & 1) == 0 && ((*(*a3 + 16))() & 1) == 0)
    {
      v52 = *v11;
      v53 = *(v11 + 8);
      *v11 = 0;
      v133 = v52;
      v139 = v53;
      if ((*(*a3 + 16))())
      {
        a1 = v11;
        do
        {
          a1 += 2;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        v54 = (v11 + 16);
        do
        {
          a1 = v54;
          if (v54 >= a2)
          {
            break;
          }

          v55 = (*(*a3 + 16))();
          v54 = a1 + 2;
        }

        while (!v55);
      }

      v56 = a2;
      if (a1 < a2)
      {
        v56 = a2;
        do
        {
          v56 -= 2;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      while (a1 < v56)
      {
        sub_10001CE80(a1, v56);
        do
        {
          a1 += 2;
        }

        while (!(*(*a3 + 16))());
        do
        {
          v56 -= 2;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      if (a1 - 2 != v11)
      {
        v57 = *(a1 - 2);
        *(a1 - 2) = 0;
        v58 = *v11;
        *v11 = v57;

        *(v11 + 8) = *(a1 - 1);
      }

      v59 = *(a1 - 2);
      *(a1 - 2) = v133;

      *(a1 - 1) = v139;
      a5 = 0;
      goto LABEL_1;
    }

    v42 = 0;
    v43 = *v11;
    v44 = *(v11 + 8);
    *v11 = 0;
    v132 = v43;
    v138 = v44;
    do
    {
      v42 += 16;
    }

    while (((*(*a3 + 16))() & 1) != 0);
    v45 = v11 + v42;
    v46 = a2;
    if (v42 == 16)
    {
      v46 = a2;
      do
      {
        if (v45 >= v46)
        {
          break;
        }

        v46 -= 16;
      }

      while (((*(*a3 + 16))() & 1) == 0);
    }

    else
    {
      do
      {
        v46 -= 16;
      }

      while (!(*(*a3 + 16))());
    }

    a1 = (v11 + v42);
    if (v45 < v46)
    {
      v47 = v46;
      do
      {
        sub_10001CE80(a1, v47);
        do
        {
          a1 += 2;
        }

        while (((*(*a3 + 16))() & 1) != 0);
        do
        {
          v47 -= 2;
        }

        while (!(*(*a3 + 16))());
      }

      while (a1 < v47);
    }

    if (a1 - 2 != v11)
    {
      v48 = *(a1 - 2);
      *(a1 - 2) = 0;
      v49 = *v11;
      *v11 = v48;

      *(v11 + 8) = *(a1 - 1);
    }

    v50 = *(a1 - 2);
    *(a1 - 2) = v132;

    *(a1 - 1) = v138;
    if (v45 < v46)
    {
      goto LABEL_86;
    }

    v51 = sub_10001D118(v11, a1 - 16, a3);
    if (!sub_10001D118(a1, a2, a3))
    {
      v10 = a1;
      if (v51)
      {
        goto LABEL_2;
      }

LABEL_86:
      sub_10001BF00(v11, a1 - 2, a3, a4, a5 & 1);
      a5 = 0;
      goto LABEL_1;
    }

    a2 = (a1 - 2);
    if (v51)
    {
      return;
    }
  }

  v65 = (a2 - 16);
  v66 = (*(*a3 + 16))();
  v67 = (*(*a3 + 16))();
  if (v66)
  {
    if (v67)
    {
      v68 = v11;
    }

    else
    {
      sub_10001CE80(v11, (v11 + 16));
      if (!(*(*a3 + 16))())
      {
        return;
      }

      v68 = (v11 + 16);
    }

    v120 = v65;
  }

  else
  {
    if (!v67)
    {
      return;
    }

    sub_10001CE80((v11 + 16), v65);
    if (!(*(*a3 + 16))())
    {
      return;
    }

    v120 = (v11 + 16);
    v68 = v11;
  }

  sub_10001CE80(v68, v120);
}

void sub_10001CE80(void **a1, void **a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;

  v7 = *a2;
  *a2 = v4;

  v8 = a1[1];
  a1[1] = a2[1];
  a2[1] = v8;
}

void sub_10001CEE4(void **a1, void **a2, void **a3, void **a4, void **a5, uint64_t a6)
{
  v12 = (*(*a6 + 16))();
  v13 = (*(*a6 + 16))();
  if (v12)
  {
    if (v13)
    {
      v14 = a1;
LABEL_9:
      v15 = a3;
      goto LABEL_10;
    }

    sub_10001CE80(a1, a2);
    if ((*(*a6 + 16))())
    {
      v14 = a2;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    sub_10001CE80(a2, a3);
    if ((*(*a6 + 16))())
    {
      v14 = a1;
      v15 = a2;
LABEL_10:
      sub_10001CE80(v14, v15);
    }
  }

  if ((*(*a6 + 16))())
  {
    sub_10001CE80(a3, a4);
    if ((*(*a6 + 16))())
    {
      sub_10001CE80(a2, a3);
      if ((*(*a6 + 16))())
      {
        sub_10001CE80(a1, a2);
      }
    }
  }

  if ((*(*a6 + 16))())
  {
    sub_10001CE80(a4, a5);
    if ((*(*a6 + 16))())
    {
      sub_10001CE80(a3, a4);
      if ((*(*a6 + 16))())
      {
        sub_10001CE80(a2, a3);
        if ((*(*a6 + 16))())
        {

          sub_10001CE80(a1, a2);
        }
      }
    }
  }
}

uint64_t sub_10001D118(void **a1, char *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if ((*(*a3 + 16))())
      {
        v7 = a1;
        v8 = (a2 - 16);
LABEL_55:
        sub_10001CE80(v7, v8);
        return 1;
      }

      return 1;
    }

LABEL_13:
    v12 = (*(*a3 + 16))();
    v13 = (*(*a3 + 16))();
    if (v12)
    {
      if (v13)
      {
        v14 = a1;
      }

      else
      {
        sub_10001CE80(a1, a1 + 2);
        if (!(*(*a3 + 16))())
        {
          goto LABEL_35;
        }

        v14 = a1 + 2;
      }

      v21 = a1 + 4;
    }

    else
    {
      if (!v13 || (sub_10001CE80(a1 + 2, a1 + 4), !(*(*a3 + 16))()))
      {
LABEL_35:
        v23 = (a1 + 6);
        if (a1 + 6 != a2)
        {
          v24 = 0;
          v25 = 0;
          while (1)
          {
            if ((*(*a3 + 16))())
            {
              v26 = *v23;
              v27 = *(v23 + 1);
              *v23 = 0;
              v36 = v26;
              v37 = v27;
              v28 = v24;
              while (1)
              {
                v29 = (a1 + v28);
                v30 = *(a1 + v28 + 32);
                v29[4] = 0;
                v31 = *(a1 + v28 + 48);
                v29[6] = v30;

                v29[7] = v29[5];
                if (v28 == -32)
                {
                  break;
                }

                v28 -= 16;
                if (((*(*a3 + 16))() & 1) == 0)
                {
                  v32 = a1 + v28 + 48;
                  goto LABEL_43;
                }
              }

              v32 = a1;
LABEL_43:
              v33 = *v32;
              *v32 = v36;

              *(v32 + 8) = v37;
              if (++v25 == 8)
              {
                v34 = v23 + 16 == a2;

                return v34;
              }
            }

            v24 += 16;
            v23 += 16;
            if (v23 == a2)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v21 = a1 + 2;
      v14 = a1;
    }

    sub_10001CE80(v14, v21);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 != 4)
    {
      if (v6 == 5)
      {
        sub_10001CEE4(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v15 = (a2 - 16);
    v16 = (*(*a3 + 16))();
    v17 = (*(*a3 + 16))();
    if (v16)
    {
      if (!v17)
      {
        sub_10001CE80(a1, a1 + 2);
        if (!(*(*a3 + 16))())
        {
          goto LABEL_50;
        }

        v22 = a1 + 2;
        v18 = a1 + 4;
LABEL_49:
        sub_10001CE80(v22, v18);
LABEL_50:
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        sub_10001CE80(a1 + 4, v15);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v19 = a1 + 2;
        v20 = a1 + 4;
LABEL_53:
        sub_10001CE80(v19, v20);
        if ((*(*a3 + 16))())
        {
          v8 = a1 + 2;
          v7 = a1;
          goto LABEL_55;
        }

        return 1;
      }

      v18 = a1 + 4;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_50;
      }

      sub_10001CE80(a1 + 2, a1 + 4);
      if (!(*(*a3 + 16))())
      {
        goto LABEL_50;
      }

      v18 = a1 + 2;
    }

    v22 = a1;
    goto LABEL_49;
  }

  v9 = (a2 - 16);
  v10 = (*(*a3 + 16))();
  v11 = (*(*a3 + 16))();
  if (v10)
  {
    if (v11)
    {
      v7 = a1;
    }

    else
    {
      sub_10001CE80(a1, a1 + 2);
      if (!(*(*a3 + 16))())
      {
        return 1;
      }

      v7 = a1 + 2;
    }

    v8 = v9;
    goto LABEL_55;
  }

  if (v11)
  {
    v19 = a1 + 2;
    v20 = v9;
    goto LABEL_53;
  }

  return 1;
}

void sub_10001D5B8(id a1)
{
  qword_10003AD30 = [[SWCSecurityGuard alloc] _init];

  _objc_release_x1();
}

void sub_10001E804(id a1)
{
  qword_10003AD40 = os_log_create(&_SWCLogSubsystem, "security");

  _objc_release_x1();
}

void sub_10001E848(dispatch_object_t *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  os_unfair_lock_lock(&stru_10003AD50);
  v6 = v5;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = dispatch_time(0, (v7 * 1000000000.0));
  if (*a1)
  {
    dispatch_suspend(*a1);
  }

  else
  {
    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v10);
    v14 = *a1;
    *a1 = v13;

    if (!*a1)
    {
      v23 = +[NSAssertionHandler currentHandler];
      v24 = [NSString stringWithUTF8String:"void scheduleTimerNoLock(SWCTimer &, const SWCTimerSettings *, void (^__strong)())"];
      [v23 handleFailureInFunction:v24 file:@"SWCTimer.mm" lineNumber:51 description:@"Unexpected failure to allocate a libdispatch timer source"];
    }
  }

  v15 = (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v16 = ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v8 >= 0.0)
  {
    v16 = 0;
    v15 = 0;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v15 = 1;
  }

  v17 = (*&v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v15;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v17 = 1;
  }

  if (v17 | v16)
  {
    v18 = -1;
  }

  else
  {
    v18 = (v8 * 1000000000.0);
  }

  dispatch_source_set_timer(*a1, v12, v18, (v9 * 1000000000.0));
  v19 = *a1;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3321888768;
  v25[2] = sub_10001EB54;
  v25[3] = &unk_100035228;
  v26 = v6;
  v27 = v18;
  v28 = a1;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v20 = v6;
  v21 = v10;
  v22 = v11;
  dispatch_source_set_event_handler(v19, v25);
  dispatch_resume(*a1);

  os_unfair_lock_unlock(&stru_10003AD50);
}

void sub_10001EAF8(dispatch_source_t *a1)
{
  os_unfair_lock_lock(&stru_10003AD50);
  if (*a1)
  {
    dispatch_source_cancel(*a1);
    v2 = *a1;
    *a1 = 0;
  }

  os_unfair_lock_unlock(&stru_10003AD50);
}

void sub_10001EB54(void *a1)
{
  (*(a1[4] + 16))();
  if (a1[5] == -1)
  {
    v2 = a1[6];

    sub_10001EAF8(v2);
  }
}

id sub_10001EBB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v4;
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  return result;
}

void sub_10001EBFC(uint64_t a1)
{
  v2 = *(a1 + 80);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}