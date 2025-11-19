_BYTE *sub_100001EEC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[96] == 1)
  {
    return [result storeTaskInfoUpdates:1];
  }

  return result;
}

id sub_100002040(void *a1)
{
  if (a1)
  {
    v1 = [a1 UTF8String];
    v2 = strlen(v1);
    CC_SHA1(v1, v2, md);
    v3 = [NSMutableString stringWithCapacity:40];
    for (i = 0; i != 20; ++i)
    {
      [v3 appendFormat:@"%02x", md[i]];
    }

    v5 = [v3 uppercaseString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10000215C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64) == 1)
  {
    v3 = +[NDSpringBoard sharedSpringBoard];
    v4 = [v3 applicationIsForeground:*(*(a1 + 32) + 24)];

    if (!v4)
    {
      v9 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(*(a1 + 32) + 24);
        v11 = 138412290;
        v12 = v10;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Capturing boost activity from %@ unnecessary", &v11, 0xCu);
      }

      goto LABEL_10;
    }

    v2 = *(a1 + 32);
  }

  if (*(v2 + 40))
  {
LABEL_10:
    v8 = +[NSProcessInfo processInfo];
    [v8 endActivity:*(a1 + 40)];
    goto LABEL_11;
  }

  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v2 + 24);
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Capturing boost activity from %@", &v11, 0xCu);
    v2 = *(a1 + 32);
  }

  v7 = *(a1 + 40);
  v8 = *(v2 + 40);
  *(v2 + 40) = v7;
LABEL_11:
}

void sub_100002740(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, unsigned __int8 a11, char a12, char a13, void *a14)
{
  v21 = a2;
  v74 = a3;
  v71 = a4;
  v72 = a5;
  v22 = a6;
  v70 = a9;
  v73 = a14;
  if (!v21 || !v74 || !v22 || ([v22 uniqueIdentifier], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
  {
    v28 = qword_1000EB210;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [v22 _loggableDescription];
      v30 = [v22 uniqueIdentifier];
      *buf = 138544386;
      v76 = v29;
      v77 = 2112;
      v78 = v22;
      v79 = 2112;
      v80 = v74;
      v81 = 2112;
      v82 = v21;
      v83 = 2112;
      v84 = v30;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@ tried to log a bad event to powerlog -- taskInfo %@, sessionID %@, bundleID %@, taskInfo.uniqueIdentifier: %@", buf, 0x34u);
    }

    goto LABEL_33;
  }

  if (PLShouldLogRegisteredEvent())
  {
    v85[0] = @"state";
    v86[0] = [NSNumber numberWithUnsignedInteger:a1];
    v85[1] = @"taskUUID";
    v68 = v86[0];
    v24 = [v22 uniqueIdentifier];
    v25 = [v24 UUIDString];
    v86[1] = v25;
    v85[2] = @"taskKind";
    v26 = [v22 taskKind];
    if (v26 > 5)
    {
      v27 = 0;
    }

    else
    {
      v27 = qword_100099798[v26];
    }

    v31 = [NSNumber numberWithUnsignedInteger:v27];
    v86[2] = v31;
    v85[3] = @"bundleID";
    v32 = [NSString stringWithFormat:@"%@:[%@:%@]", v21, v71, v72];
    v86[3] = v32;
    v86[4] = v74;
    v85[4] = @"sessionID";
    v85[5] = @"taskID";
    v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 identifier]);
    v86[5] = v33;
    v69 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:6];

    v34 = [v69 mutableCopy];
    v35 = [NSMutableArray arrayWithObjects:@"state", @"taskUUID", @"taskKind", @"bundleID", @"sessionID", @"taskID", 0];
    if (!a12)
    {
      goto LABEL_32;
    }

    v36 = [NSNumber numberWithLongLong:a7];
    [v34 setObject:v36 forKeyedSubscript:@"bytesSent"];

    v37 = [NSNumber numberWithLongLong:a8];
    [v34 setObject:v37 forKeyedSubscript:@"bytesReceived"];

    if (a13)
    {
      [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"willRetry"];
      v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 retryCount]);
      [v34 setObject:v38 forKeyedSubscript:@"previousFailureCount"];
    }

    [v35 addObject:@"bytesSent"];
    [v35 addObject:@"bytesReceived"];
    if (a13)
    {
      [v35 addObject:@"willRetry"];
      [v35 addObject:@"previousFailureCount"];
    }

    if (v70)
    {
      [v34 setObject:v70 forKeyedSubscript:@"interfaceName"];
      [v35 addObject:@"interfaceName"];
    }

    v39 = [NSNumber numberWithBool:a10];
    [v34 setObject:v39 forKeyedSubscript:@"isDiscretionary"];

    [v35 addObject:@"isDiscretionary"];
    v40 = [NSNumber numberWithBool:a11];
    [v34 setObject:v40 forKeyedSubscript:@"isDataBudgetingEnabled"];

    [v35 addObject:@"isDataBudgetingEnabled"];
    if (!v73)
    {
      goto LABEL_32;
    }

    v41 = [v73 domain];
    if ([v41 isEqualToString:NSURLErrorDomain])
    {
      v42 = [v73 code] == -999;

      if (v42)
      {
        [v34 setObject:&off_1000D8A28 forKeyedSubscript:@"state"];
LABEL_32:
        PLLogRegisteredEvent();

        v28 = v69;
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
    }

    [v34 setObject:&off_1000D8A40 forKeyedSubscript:@"state"];
    v43 = +[NSMutableDictionary dictionary];
    v44 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v73 code]);
    [v43 setObject:v44 forKeyedSubscript:@"errorCode"];

    v45 = [v73 domain];
    [v43 setObject:v45 forKeyedSubscript:@"errorDomain"];

    v46 = [v73 userInfo];
    v47 = _kCFStreamErrorCodeKey;
    v48 = [v46 objectForKeyedSubscript:_kCFStreamErrorCodeKey];
    LOBYTE(v45) = v48 == 0;

    if ((v45 & 1) == 0)
    {
      v49 = [v73 userInfo];
      v50 = [v49 objectForKeyedSubscript:v47];
      [v43 setObject:v50 forKeyedSubscript:@"errorCFStreamErrorCode"];
    }

    v51 = [v73 userInfo];
    v52 = _kCFStreamErrorDomainKey;
    v53 = [v51 objectForKeyedSubscript:_kCFStreamErrorDomainKey];
    v54 = v53 == 0;

    if (!v54)
    {
      v55 = [v73 userInfo];
      v56 = [v55 objectForKeyedSubscript:v52];
      [v43 setObject:v56 forKeyedSubscript:@"errorCFStreamErrorDomain"];
    }

    v57 = [v73 userInfo];
    v58 = [v57 objectForKeyedSubscript:@"_NSURLErrorFailingURLSessionTaskErrorKey"];
    v59 = v58 == 0;

    if (!v59)
    {
      v60 = [v73 userInfo];
      v61 = [v60 objectForKeyedSubscript:@"_NSURLErrorFailingURLSessionTaskErrorKey"];
      [v43 setObject:v61 forKeyedSubscript:@"errorFailingURLSessionTask"];
    }

    v62 = [v73 userInfo];
    v63 = [v62 objectForKeyedSubscript:NSURLErrorFailingURLErrorKey];
    v64 = v63 == 0;

    if (!v64)
    {
      v65 = [v73 userInfo];
      v66 = [v65 objectForKeyedSubscript:NSURLErrorFailingURLErrorKey];
      [v43 setObject:v66 forKeyedSubscript:@"errorFailingURL"];
    }

    [v34 addEntriesFromDictionary:v43];
    v67 = [v43 allKeys];
    [v35 addObjectsFromArray:v67];

    goto LABEL_32;
  }

LABEL_34:
}

void sub_100003A38(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v60 = [v4 objectForKeyedSubscript:@"effectiveConfig"];
  if (v60)
  {
    v5 = qword_1000EB210;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v54 = [v3 _loggableDescription];
      *buf = 138543362;
      *&buf[4] = v54;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}@ Updating configuration on daemon", buf, 0xCu);
    }

    [v3 _onqueue_adoptEffectiveConfiguration:v60];
  }

  v61 = [v4 objectForKeyedSubscript:@"StatusCodes"];
  if (v61)
  {
    [v3 initializeHTTPAuthenticatorWithAppleIDContext:0 statusCodes:v61];
    [v3 set_authenticatorConfiguredViaTaskProperty:1];
    v6 = qword_1000EB210;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 _loggableDescription];
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v61;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized appleIDAuthenticator, status codes = %@", buf, 0x16u);
    }
  }

  v8 = [v4 objectForKeyedSubscript:@"PublishingURL"];
  [v3 set_backgroundPublishingURL:v8];

  v9 = [v4 objectForKeyedSubscript:@"EarliestBeginDate"];
  v58 = v9;
  if (v9)
  {
    [v3 setEarliestBeginDate:v9];
  }

  v59 = [v4 objectForKeyedSubscript:@"CountOfBytesClientExpectsToSend"];
  if (v59)
  {
    [v3 setCountOfBytesClientExpectsToSend:{objc_msgSend(v59, "longLongValue")}];
  }

  v10 = [v4 objectForKeyedSubscript:@"CountOfBytesClientExpectsToReceive"];
  v11 = v10;
  if (v10)
  {
    [v3 setCountOfBytesClientExpectsToReceive:{objc_msgSend(v10, "longLongValue")}];
  }

  v12 = [v4 objectForKeyedSubscript:@"pathToDownloadTaskFile"];
  if (v12)
  {
    [v3 set_pathToDownloadTaskFile:v12];
  }

  v13 = [v3 _DuetActivityProperties];
  v14 = v13 == 0;

  if (!v14)
  {
    v15 = [v3 countOfBytesClientExpectsToSend];
    v16 = [v3 countOfBytesClientExpectsToReceive];
    v17 = v16;
    if (v15 > NSURLSessionTransferSizeUnknown || v16 > NSURLSessionTransferSizeUnknown)
    {
      v18 = [v3 _DuetActivityProperties];
      v19 = [v18 mutableCopy];

      if (v15 > NSURLSessionTransferSizeUnknown)
      {
        v20 = [NSNumber numberWithLongLong:v15];
        [v19 setObject:v20 forKeyedSubscript:kConditionalConnectionRequirementUploadBytes];
      }

      if (v17 > NSURLSessionTransferSizeUnknown)
      {
        v21 = [NSNumber numberWithLongLong:v17];
        [v19 setObject:v21 forKeyedSubscript:kConditionalConnectionRequirementDownloadBytes];
      }

      [v3 set_DuetActivityProperties:v19];
    }
  }

  v22 = [v4 objectForKeyedSubscript:@"SerializedSZExtractor"];
  if (v22)
  {
    v23 = sub_100079978();
    v24 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v23 fromData:v22 error:0];

    if (v24)
    {
      v25 = [v3 _extractorPreparedForExtraction];
      v26 = qword_1000EB210;
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        if (v27)
        {
          v28 = [v3 _loggableDescription];
          *buf = 138543362;
          *&buf[4] = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ StreamingZip - already prepared for extraction while setting additional properties", buf, 0xCu);
        }
      }

      else
      {
        if (v27)
        {
          v29 = [v3 _loggableDescription];
          *buf = 138543362;
          *&buf[4] = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ StreamingZip - not yet prepared for extraction while setting additional properties", buf, 0xCu);
        }

        v26 = dispatch_semaphore_create(0);
        v30 = [v3 _extractor];
        v31 = v30 == 0;

        if (!v31)
        {
          v32 = qword_1000EB210;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v3 _loggableDescription];
            *buf = 138543362;
            *&buf[4] = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ StreamingZip - terminating lingering extractor from previous download attempt", buf, 0xCu);
          }

          v34 = [v3 _extractor];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v36 = [v3 _extractor];
            v37 = [NSError errorWithDomain:NSURLErrorDomain code:-999 userInfo:0];
            v63[0] = _NSConcreteStackBlock;
            v63[1] = 3221225472;
            v63[2] = sub_1000799F0;
            v63[3] = &unk_1000D6218;
            v38 = v26;
            v64 = v38;
            [v36 terminateStreamWithError:v37 completionBlock:v63];

            dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
          }

          [v3 set_extractor:0];
        }

        if ([v24 conformsToProtocol:&OBJC_PROTOCOL___STExtractor])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v3 set_extractor:v24];
          }
        }

        else
        {
          v39 = qword_1000EB210;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v55 = [v3 _loggableDescription];
            v56 = objc_opt_class();
            *buf = 138543618;
            *&buf[4] = v55;
            *&buf[12] = 2112;
            *&buf[14] = v56;
            v57 = v56;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}@ Object does not support STExtractor protocol.  Dropping this object. Class=%@", buf, 0x16u);
          }
        }
      }
    }
  }

  v40 = [v4 objectForKeyedSubscript:@"TimeoutIntervalForResource"];
  v41 = v40;
  if (v40)
  {
    [v40 doubleValue];
    [v3 set_timeoutIntervalForResource:?];
  }

  v42 = [v4 objectForKeyedSubscript:@"DisallowCellularDueToSystemPolicy"];
  v43 = [v42 BOOLValue];

  if (v43)
  {
    [v3 set_disallowCellular:1];
  }

  v44 = [v4 objectForKeyedSubscript:@"nw_activityUUID"];
  v45 = v44;
  if (v44)
  {
    *buf = 0;
    *&buf[8] = 0;
    [v44 getUUIDBytes:buf];
    v46 = nw_activity_create_from_token();
    [v3 set_nw_activity:v46];

    v47 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
    {
      *v62 = 0;
      _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "[Telemetry]: Assiging taskMetrics on the daemon side", v62, 2u);
    }
  }

  v48 = [v4 objectForKeyedSubscript:@"sourceApplicationBundleIdentifierForMobileAsset"];
  [v3 set_sourceApplicationBundleIdentifierForMobileAsset:v48];

  v49 = [v4 objectForKeyedSubscript:@"preconnect"];
  v50 = [v49 isEqual:&__kCFBooleanTrue];

  if (v50)
  {
    [v3 set_preconnect:1];
  }

  v51 = [v4 objectForKeyedSubscript:@"cookies"];
  if (v51)
  {
    v52 = [v3 currentRequest];
    v53 = [v52 mutableCopy];

    [v53 setValue:v51 forHTTPHeaderField:@"Cookie"];
    [v3 updateCurrentRequest:v53];
  }
}

void sub_10000472C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RBSProcessPredicate predicateMatchingBundleIdentifiers:*(*(a1 + 32) + 48)];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 setPredicates:v5];
}

void sub_1000047E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_100004818(void *a1)
{
  [*(a1[4] + 16) addEntriesFromDictionary:a1[5]];
  v2 = *(a1[4] + 24);
  v3 = a1[6];

  return [v2 addEntriesFromDictionary:v3];
}

void sub_100004918(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004818;
  block[3] = &unk_1000D6130;
  block[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t sub_1000049F0(void *a1)
{
  if (!a1)
  {
    goto LABEL_18;
  }

  v2 = [a1 domain];
  if ([v2 isEqualToString:NSURLErrorDomain])
  {

    goto LABEL_5;
  }

  v3 = [a1 domain];
  v4 = [v3 isEqualToString:kCFErrorDomainCFNetwork];

  if (v4)
  {
LABEL_5:
    v5 = [a1 code];
    if (v5 + 1019 <= 0x14)
    {
      if (((1 << (v5 - 5)) & 0xC501) != 0)
      {
LABEL_7:
        LOBYTE(v6) = 1;
        return v6 & 1;
      }

      if (v5 == -1001)
      {
        v17 = [a1 userInfo];
        v18 = [v17 objectForKeyedSubscript:_kCFStreamErrorCodeKey];
        v19 = [v18 integerValue];

        if (v19 + 2106 < 4)
        {
          v6 = 4u >> ((v19 + 58) & 0xF);
          return v6 & 1;
        }

        goto LABEL_7;
      }

      if (v5 == -999)
      {
        v10 = [a1 userInfo];
        v11 = [v10 objectForKeyedSubscript:NSURLErrorBackgroundTaskCancelledReasonKey];
        v12 = [v11 integerValue];

        LOBYTE(v6) = v12 == 2;
        return v6 & 1;
      }
    }

LABEL_18:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  v7 = [a1 domain];
  v8 = [v7 isEqualToString:@"_nsurlsessiondErrorDomain"];

  if (v8)
  {
    v9 = [a1 code];
    if (v9 < 0xB)
    {
      v6 = 0x7F9u >> v9;
      return v6 & 1;
    }

    goto LABEL_18;
  }

  v13 = [a1 domain];
  v14 = [v13 isEqualToString:AVFoundationErrorDomain];

  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = [a1 code];
  LOBYTE(v6) = 1;
  if ((v15 + 11829 > 0xA || ((1 << (v15 + 53)) & 0x483) == 0) && v15 != -11900)
  {
    goto LABEL_18;
  }

  return v6 & 1;
}

BOOL sub_100004F90(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = [result domain];
    v3 = [v2 isEqualToString:@"_nsurlsessiondErrorDomain"];

    if (v3)
    {
      return 1;
    }

    else
    {
      v4 = [v1 domain];
      v5 = [v4 isEqualToString:NSURLErrorDomain];

      return v5 && [v1 code] == -997;
    }
  }

  return result;
}

uint64_t sub_100005040(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _metrics];
  v2 = [v1 _daemon_currentTransactionMetrics];
  v3 = [v2 _daemon_connectionMetrics];

  if (v3)
  {
    [v3 _daemon_establishTime];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

_BYTE *sub_1000055C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 1)
  {
    return [result storeTaskInfoUpdates:1];
  }

  return result;
}

uint64_t sub_100005A04(void *a1)
{
  v1 = [a1 protectionSpace];
  v2 = [v1 authenticationMethod];
  if ([v2 isEqualToString:NSURLAuthenticationMethodNTLM] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", NSURLAuthenticationMethodNegotiate) & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", NSURLAuthenticationMethodClientCertificate))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:NSURLAuthenticationMethodServerTrust];
  }

  return v3;
}

BOOL sub_100008ADC(void *a1)
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:@"_nsurlsessiondErrorDomain"];

  return v3 && [a1 code] - 6 < 4;
}

id sub_100008B54(void *a1)
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"_nsurlsessiondErrorDomain"];

  return v2;
}

_UNKNOWN **sub_100008BA4(void *a1)
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:@"_nsurlsessiondErrorDomain"];

  if (v3 && (v4 = [a1 code], v4 < 6))
  {
    return off_1000D4FD0[v4];
  }

  else
  {
    return 0;
  }
}

void sub_100008C24(void *a1, id a2, void *a3)
{
  v12 = a3;
  if (a1)
  {
    v7 = a2 == 300 || a2 == 400 || a2 == 600;
    if (v12 && v7)
    {
      v8 = [v12 isForeground];
      if (a2 == 300)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      v10 = 350;
      if (v8)
      {
        v10 = a2;
      }

      v11 = 650;
      if (a2 != 600)
      {
        v11 = a2;
      }

      if (a2 == 400)
      {
        v11 = 450;
      }

      if (v9)
      {
        a2 = v10;
      }

      else
      {
        a2 = v11;
      }
    }

    if (a2 != [a1 _priorityValue])
    {
      [a1 set_priority:a2];
    }
  }
}

id sub_100008D00(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 valueForEntitlement:v3];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 BOOLValue];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100008D9C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (qword_1000EB0F0 != -1)
  {
    dispatch_once(&qword_1000EB0F0, &stru_1000D4FB0);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = [v2 stringByDeletingLastPathComponent];
    v6 = [v2 lastPathComponent];
    v7 = [v6 stringByAppendingString:@"_unsafe"];
    v8 = [v5 stringByAppendingPathComponent:v7];

    v9 = [v2 fileSystemRepresentation];
    v10 = [v8 fileSystemRepresentation];
    rename(v9, v10, v11);
    if (v12)
    {
      v13 = qword_1000EB210;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v27 = *__error();
        *buf = 67109634;
        *v32 = v27;
        *&v32[4] = 2112;
        *&v32[6] = v2;
        *&v32[14] = 2112;
        *&v32[16] = v8;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error %d renaming item at %@ to %@. Won't try to unarchive.", buf, 0x1Cu);
      }

      v14 = 0;
      v15 = 0;
      [NDFileUtilities removeItemAtPath:v2];
    }

    else
    {
      v17 = qword_1000EB0E8;
      v18 = [NSData dataWithContentsOfFile:v8];
      v30 = 0;
      v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v17 fromData:v18 error:&v30];
      v14 = v30;

      if (v15)
      {
        v19 = v8;
        v20 = [v8 fileSystemRepresentation];
        v21 = v2;
        v22 = [v2 fileSystemRepresentation];
        rename(v20, v22, v23);
        if (v24)
        {
          v25 = qword_1000EB210;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v28 = *__error();
            *buf = 67109634;
            *v32 = v28;
            *&v32[4] = 2112;
            *&v32[6] = v8;
            *&v32[14] = 2112;
            *&v32[16] = v2;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error %d renaming item at %@ to %@", buf, 0x1Cu);
          }
        }
      }

      else
      {
        v26 = qword_1000EB210;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v29 = [v14 code];
          *buf = 138412802;
          *v32 = v8;
          *&v32[8] = 2112;
          *&v32[10] = v14;
          *&v32[18] = 1024;
          *&v32[20] = v29;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failure trying to unarchive file at %@ error: %@ [%d]", buf, 0x1Cu);
        }

        v15 = 0;
        [NDFileUtilities removeItemAtPath:v8];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_1000091F4(id a1)
{
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSMutableSet setWithObjects:v14, v13, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];
  v12 = qword_1000EB0E8;
  qword_1000EB0E8 = v11;

  v15 = sub_100079978();
  [qword_1000EB0E8 unionSet:?];
  [qword_1000EB0E8 addObject:objc_opt_class()];
  [qword_1000EB0E8 addObject:objc_opt_class()];
}

void *sub_1000093C4(void *a1)
{
  v1 = 0;
  if (a1)
  {
    if (&_CHSIsWidgetExtensionPoint)
    {
      v3 = [a1 extensionPointRecord];
      v1 = [v3 identifier];

      if (v1)
      {
        v4 = [a1 extensionPointRecord];
        v5 = [v4 identifier];
        v1 = CHSIsWidgetExtensionPoint();
      }
    }
  }

  return v1;
}

void sub_100009454(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t start(int a1, uint64_t a2)
{
  v4 = os_log_create("com.apple.nsurlsessiond", "background");
  v5 = qword_1000EB210;
  qword_1000EB210 = v4;

  bzero(v30, 0x400uLL);
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v22 = qword_1000EB210;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      v28 = 67109120;
      v29 = v23;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to set directory suffix: %{darwin.errno}d", &v28, 8u);
    }

    exit(1);
  }

  if (!confstr(65537, v30, 0x400uLL))
  {
    v24 = qword_1000EB210;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *__error();
      v28 = 67109120;
      v29 = v25;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to initialize temporary directory: %{darwin.errno}d", &v28, 8u);
    }

    exit(1);
  }

  v6 = realpath_DARWIN_EXTSN(v30, 0);
  if (!v6)
  {
    v26 = qword_1000EB210;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *__error();
      v28 = 67109120;
      v29 = v27;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "failed to resolve temporary directory: %{darwin.errno}d", &v28, 8u);
    }

    exit(1);
  }

  free(v6);
  v7 = dispatch_get_global_queue(2, 0);
  v8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v7);

  dispatch_source_set_event_handler(v8, &stru_1000D5000);
  dispatch_resume(v8);
  v9 = objc_autoreleasePoolPush();
  v10 = +[Daemon sharedDaemon];
  if (a1 >= 2)
  {
    v11 = a1 - 1;
    v12 = (a2 + 8);
    do
    {
      v13 = *v12;
      if (!strcmp(*v12, "--privileged"))
      {
        [v10 setPrivileged:1];
      }

      else if (!strcmp(v13, "--postlogoutsync"))
      {
        [v10 setInSyncBubble:1];
      }

      ++v12;
      --v11;
    }

    while (v11);
  }

  v14 = os_log_create("com.apple.nsurlsessiond", "proxy");
  v15 = qword_1000EB1D8;
  qword_1000EB1D8 = v14;

  if (([v10 isInSyncBubble] & 1) == 0)
  {
    v16 = +[PDURLSessionProxyServerService sharedService];
    [v16 start];
  }

  [v10 start];
  v17 = dispatch_get_global_queue(9, 0);
  dispatch_async(v17, &stru_1000D5020);

  [v10 restoreState];
  [v10 setupArchiveTimer];
  v18 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nsurlsessiond"];
  [v18 setDelegate:v10];
  v19 = [v10 queue];
  [v18 _setQueue:v19];

  [v18 resume];
  if (([v10 isInSyncBubble] & 1) == 0 && qword_1000EB170 != -1)
  {
    dispatch_once(&qword_1000EB170, &stru_1000D5978);
  }

  objc_autoreleasePoolPop(v9);
  v20 = +[NSRunLoop currentRunLoop];
  [v20 run];

  return 1;
}

void sub_10000991C(id a1)
{
  context = objc_autoreleasePoolPush();
  v1 = NSTemporaryDirectory();
  v2 = [NSURL fileURLWithPath:v1 isDirectory:1];

  v3 = v2;
  if (v2)
  {
    sub_100020A74(v2);
  }

  v18 = +[NDFileUtilities defaultDownloadDirectoryContainer];
  if (v18)
  {
    v4 = +[NSFileManager defaultManager];
    v22[0] = NSURLIsDirectoryKey;
    v22[1] = NSURLIsSymbolicLinkKey;
    v22[2] = NSURLIsVolumeKey;
    v5 = [NSArray arrayWithObjects:v22 count:3];
    v6 = [v4 enumeratorAtURL:v18 includingPropertiesForKeys:v5 options:5 errorHandler:&stru_1000D5240];

    while (1)
    {

      v4 = [v6 nextObject];
      if (!v4)
      {

        goto LABEL_17;
      }

      v7 = objc_autoreleasePoolPush();
      v21 = 0;
      v8 = [v4 getResourceValue:&v21 forKey:NSURLIsDirectoryKey error:0];
      v9 = v21;
      v10 = v9;
      if (!v8 || ![v9 BOOLValue])
      {
        break;
      }

      v20 = 0;
      v11 = [v4 getResourceValue:&v20 forKey:NSURLIsVolumeKey error:0];
      v12 = v20;
      v13 = v12;
      if (!v11 || ([v12 BOOLValue] & 1) != 0)
      {
        goto LABEL_14;
      }

      v19 = 0;
      v14 = [v4 getResourceValue:&v19 forKey:NSURLIsSymbolicLinkKey error:0];
      v15 = v19;
      v16 = v15;
      if (v14)
      {
        if (([v15 BOOLValue] & 1) == 0)
        {
          sub_100020A74(v4);
        }
      }

LABEL_15:

      v2 = v3;
      objc_autoreleasePoolPop(v7);
    }

    v13 = 0;
LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

LABEL_17:

  objc_autoreleasePoolPop(context);
}

void sub_100009C30(id a1)
{
  v1 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "SIGTERM received, shutting down.", v2, 2u);
  }

  exit(0);
}

void sub_10000B430(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _onqueue_sourceApplicationForMessage:*(a1 + 40)];
  v5 = [*(a1 + 32) _onqueue_priorityForMessage:*(a1 + 40) ofType:*(a1 + 56) isReply:1];
  v6 = [*(a1 + 32) _onqueue_IDSTimoutForMessage:*(a1 + 40)];
  v7 = v5 == 300;
  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B570;
  v12[3] = &unk_1000D5098;
  v12[4] = v8;
  v13 = v3;
  v17 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = v4;
  v18 = v7;
  v16 = v6;
  v10 = v4;
  v11 = v3;
  dispatch_async(v9, v12);
}

void sub_10000B570(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = [*(a1 + 48) outgoingResponseIdentifier];
  v6 = *(a1 + 74);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = v5;
  [v2 _onqueue_sendMessage:v3 ofType:v4 responseIdentifier:0 forSourceApplication:? withUrgency:? withIDSMessageTimeout:? withReply:?];
}

void sub_10000B720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10000C530(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    v3 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 138543618;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Timed out waiting for reply for message, identifier = %{public}@, type = %u", &v7, 0x12u);
    }

    v4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:0];
    [*(a1 + 32) _onqueue_messageWithIdentifier:*(a1 + 40) didSendWithSuccess:0 error:v4];
  }
}

id sub_10000D380(uint64_t a1)
{
  [*(a1 + 32) _onqueue_sendStartupMessage];
  v2 = *(a1 + 32);

  return [v2 _onqueue_remoteDeviceStartedUp];
}

void sub_10000D430(uint64_t a1)
{
  v2 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.nsurlsessionproxy"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(*(a1 + 32) + 8) addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 80)];
  v5 = qword_1000EB1D8;
  if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDURLSessionProxyService setting preferInfraWiFi to NO", v7, 2u);
  }

  [*(*(a1 + 32) + 8) setPreferInfraWiFi:0];
  [*(a1 + 32) _onqueue_sendStartupMessage];
  [*(a1 + 32) _onqueue_updateDeviceState];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:"devicesDidUnpair:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];
}

void sub_10000DF08(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(a1 + 32);
  v5 = v2;
  v4 = [*(*(a1 + 40) + 96) objectForKeyedSubscript:?];

  if (v3 == v4)
  {
    [*(*(a1 + 40) + 96) removeObjectForKey:v5];
  }
}

void sub_10000EACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  v3 = v2 == 1;
  v4 = v2 < 1;
  v5 = v2 - 1;
  if (!v4)
  {
    *(v1 + 120) = v5;
    if (v3)
    {
      v7 = *(a1 + 32);
      v8 = v7[16];
      if (!v8)
      {
        v9 = [v7 queue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000EC2C;
        v14[3] = &unk_1000D63D0;
        v14[4] = *(a1 + 32);
        v10 = sub_100041974(v9, v14);
        v11 = *(a1 + 32);
        v12 = *(v11 + 128);
        *(v11 + 128) = v10;

        dispatch_resume(*(*(a1 + 32) + 128));
        v8 = *(*(a1 + 32) + 128);
      }

      if (qword_1000EB158 != -1)
      {
        dispatch_once(&qword_1000EB158, &stru_1000D55A8);
      }

      v13 = dispatch_time(0, (dword_1000EA598 * 1000000000.0));
      if (v8)
      {
        dispatch_source_set_timer(v8, v13, 0x1DCD64FFC4653600uLL, 0);
      }
    }
  }
}

void sub_10000EC2C(uint64_t a1)
{
  [*(*(a1 + 32) + 136) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;
}

void *sub_10000ECEC(void *result)
{
  v2 = result[4];
  v3 = *(v2 + 120);
  *(v2 + 120) = v3 + 1;
  if (!v3)
  {
    v4 = result;
    v5 = result[4];
    v6 = *(v5 + 128);
    if (v6)
    {
      dispatch_source_set_timer(v6, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD64FFC4653600uLL, 0);
      v5 = v4[4];
    }

    v7 = *(v5 + 136);
    if (!v7)
    {
      v8 = objc_opt_new();
      v9 = v4[4];
      v10 = *(v9 + 136);
      *(v9 + 136) = v8;

      v7 = *(v4[4] + 136);
    }

    return [v7 acquire];
  }

  return result;
}

void *sub_10000F004(void *result)
{
  v1 = result[4];
  if (*(v1 + 26) == 1)
  {
    v2 = result;
    *(v1 + 26) = 0;
    v3 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[4];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating...", &v5, 0xCu);
    }

    return [v2[4] _updateState];
  }

  return result;
}

void *sub_10000F138(void *result)
{
  v1 = result[4];
  if ((*(v1 + 26) & 1) == 0)
  {
    v2 = result;
    *(v1 + 26) = 1;
    v3 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[4];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Acquiring...", &v5, 0xCu);
    }

    return [v2[4] _updateState];
  }

  return result;
}

void sub_10000F36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PDBluetoothCompanionLinkAssertion;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10000F4B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  v3 = v2 == 1;
  v4 = v2 < 1;
  v5 = v2 - 1;
  if (!v4)
  {
    *(v1 + 104) = v5;
    if (v3)
    {
      v7 = *(a1 + 32);
      v8 = v7[14];
      if (v8)
      {
        v9 = dispatch_time(0, 60000000000);
      }

      else
      {
        v10 = [v7 queue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000F5EC;
        v14[3] = &unk_1000D63D0;
        v14[4] = *(a1 + 32);
        v11 = sub_100041974(v10, v14);
        v12 = *(a1 + 32);
        v13 = *(v12 + 112);
        *(v12 + 112) = v11;

        dispatch_resume(*(*(a1 + 32) + 112));
        v8 = *(*(a1 + 32) + 112);
        v9 = dispatch_time(0, 60000000000);
        if (!v8)
        {
          return;
        }
      }

      dispatch_source_set_timer(v8, v9, 0x1DCD64FFC4653600uLL, 0);
    }
  }
}

id sub_10000F5EC(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PDURLSessionProxyServerService;
  return objc_msgSendSuper2(&v2, "_onqueue_setPrefersInfraWiFi:", 0);
}

void *sub_10000F69C(void *result)
{
  v3 = result[4];
  v4 = *(v3 + 104);
  *(v3 + 104) = v4 + 1;
  if (!v4)
  {
    v9 = v1;
    v10 = v2;
    v5 = result;
    v6 = result[4];
    v7 = v6[14];
    if (v7)
    {
      dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD64FFC4653600uLL, 0);
      v6 = v5[4];
    }

    v8.receiver = v6;
    v8.super_class = PDURLSessionProxyServerService;
    return objc_msgSendSuper2(&v8, "_onqueue_setPrefersInfraWiFi:", 1);
  }

  return result;
}

id sub_10000F7B8(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PDURLSessionProxyServerService;
  return objc_msgSendSuper2(&v2, "start");
}

void sub_10000F954(id a1)
{
  v1 = objc_alloc_init(PDURLSessionProxyServerService);
  v2 = qword_1000EB0F8;
  qword_1000EB0F8 = v1;
}

void sub_1000100AC(void *a1)
{
  v4 = a1[4];
  if (*(v4 + 40) && (*(v4 + 24) & 1) != 0)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    [v4 _onqueue_updateOptionsForBundleID:v5 sessionID:v6 with:v7];
  }

  else
  {
    v10 = v1;
    v11 = v2;
    v8 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", v9, 2u);
    }
  }
}

void sub_10001080C(void *a1)
{
  v4 = a1[4];
  if (*(v4 + 40) && (*(v4 + 24) & 1) != 0)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    [v4 _onqueue_updateConfigurationForBundleID:v5 sessionID:v6 with:v7];
  }

  else
  {
    v10 = v1;
    v11 = v2;
    v8 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", v9, 2u);
    }
  }
}

uint64_t sub_1000114BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000114D4(uint64_t a1)
{
  v2 = [*(a1 + 32) _onqueue_getOptionsForBundleID:*(a1 + 40) sessionID:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000119E8(uint64_t a1)
{
  v2 = [*(a1 + 32) _onqueue_getConfigurationForBundleID:*(a1 + 40) sessionID:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100011D5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) && (*(v2 + 24) & 1) != 0)
  {
    v3 = [v2 _onqueue_getAllBundleIDsFromSessionTasks];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", v7, 2u);
    }
  }
}

id sub_100011F7C(uint64_t a1)
{
  [*(a1 + 32) _beginSqliteTransaction];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _onqueue_deleteEntryForTask:objc_msgSend(*(*(&v7 + 1) + 8 * v5) forSession:"unsignedIntValue" sessionUUID:{v7), *(a1 + 48), *(a1 + 56)}];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  return [*(a1 + 32) _commitSqliteTransaction];
}

id sub_100012224(uint64_t a1)
{
  [*(a1 + 32) _beginSqliteTransaction];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v2)
  {
    v14 = *v20;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v19 + 1) + 8 * i);
        v5 = [*(a1 + 40) objectForKey:v4];
        v6 = [*(a1 + 48) objectForKeyedSubscript:v4];
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v8)
        {
          v9 = *v16;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v16 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = [*(*(&v15 + 1) + 8 * j) unsignedIntValue];
              [*(a1 + 32) _updateDBEntryForTask:v6 updateType:v11 sessionUUID:*(a1 + 56)];
              if (v11 == 13)
              {
                [*(a1 + 48) removeObjectForKey:v4];
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v8);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v2);
  }

  return [*(a1 + 32) _commitSqliteTransaction];
}

void sub_100012864(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 40) && (*(v2 + 24) & 1) != 0)
  {
    v3 = [v2 _onqueue_getAllSessionIDsForBundle:a1[5]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", v7, 2u);
    }
  }
}

sqlite3 *sub_100012A18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    sqlite3_finalize(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 56);
  if (v4)
  {
    sqlite3_finalize(v4);
    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 64);
  if (v5)
  {
    sqlite3_finalize(v5);
    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 80);
  if (v6)
  {
    sqlite3_finalize(v6);
    v2 = *(a1 + 32);
  }

  v7 = *(v2 + 88);
  if (v7)
  {
    sqlite3_finalize(v7);
    v2 = *(a1 + 32);
  }

  v8 = *(v2 + 72);
  if (v8)
  {
    sqlite3_finalize(v8);
    v2 = *(a1 + 32);
  }

  v9 = *(v2 + 96);
  if (v9)
  {
    sqlite3_finalize(v9);
    v2 = *(a1 + 32);
  }

  v10 = *(v2 + 104);
  if (v10)
  {
    sqlite3_finalize(v10);
    v2 = *(a1 + 32);
  }

  v11 = *(v2 + 112);
  if (v11)
  {
    sqlite3_finalize(v11);
    v2 = *(a1 + 32);
  }

  v12 = *(v2 + 120);
  if (v12)
  {
    sqlite3_finalize(v12);
    v2 = *(a1 + 32);
  }

  v13 = *(v2 + 128);
  if (v13)
  {
    sqlite3_finalize(v13);
    v2 = *(a1 + 32);
  }

  v14 = *(v2 + 136);
  if (v14)
  {
    sqlite3_finalize(v14);
    v2 = *(a1 + 32);
  }

  v15 = *(v2 + 152);
  if (v15)
  {
    sqlite3_finalize(v15);
    v2 = *(a1 + 32);
  }

  v16 = *(v2 + 160);
  if (v16)
  {
    sqlite3_finalize(v16);
    v2 = *(a1 + 32);
  }

  v17 = *(v2 + 168);
  if (v17)
  {
    sqlite3_finalize(v17);
    v2 = *(a1 + 32);
  }

  v18 = *(v2 + 176);
  if (v18)
  {
    sqlite3_finalize(v18);
    v2 = *(a1 + 32);
  }

  v19 = *(v2 + 184);
  if (v19)
  {
    sqlite3_finalize(v19);
    v2 = *(a1 + 32);
  }

  v20 = *(v2 + 144);
  if (v20)
  {
    sqlite3_finalize(v20);
    v2 = *(a1 + 32);
  }

  v21 = *(v2 + 192);
  if (v21)
  {
    sqlite3_finalize(v21);
    v2 = *(a1 + 32);
  }

  v22 = *(v2 + 200);
  if (v22)
  {
    sqlite3_finalize(v22);
    v2 = *(a1 + 32);
  }

  v23 = *(v2 + 208);
  if (v23)
  {
    sqlite3_finalize(v23);
    v2 = *(a1 + 32);
  }

  v24 = *(v2 + 216);
  if (v24)
  {
    sqlite3_finalize(v24);
    v2 = *(a1 + 32);
  }

  v25 = *(v2 + 224);
  if (v25)
  {
    sqlite3_finalize(v25);
    v2 = *(a1 + 32);
  }

  v26 = *(v2 + 232);
  if (v26)
  {
    sqlite3_finalize(v26);
    v2 = *(a1 + 32);
  }

  v27 = *(v2 + 240);
  if (v27)
  {
    sqlite3_finalize(v27);
    v2 = *(a1 + 32);
  }

  v28 = *(v2 + 248);
  if (v28)
  {
    sqlite3_finalize(v28);
    v2 = *(a1 + 32);
  }

  v29 = *(v2 + 256);
  if (v29)
  {
    sqlite3_finalize(v29);
    v2 = *(a1 + 32);
  }

  result = *(v2 + 40);
  if (result)
  {
    result = sqlite3_close(result);
    *(*(a1 + 32) + 40) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 24) = 0;
  return result;
}

void sub_100012EF0(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v20 = 138543362;
    v21[0] = v17;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "_getAllTasksFromDBForSession: %{public}@", &v20, 0xCu);
  }

  v3 = *(a1 + 40);
  v4 = *(v3 + 40);
  if (!v4 || (*(v3 + 24) & 1) == 0)
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sqlite db not initialized", &v20, 2u);
    }

    return;
  }

  v7 = *(v3 + 56);
  v5 = (v3 + 56);
  v6 = v7;
  if (v7)
  {
    goto LABEL_6;
  }

  if (!sqlite3_prepare_v2(v4, "SELECT * from session_tasks WHERE session_id = ? LIMIT 512", -1, v5, 0))
  {
    v6 = *(*(a1 + 40) + 56);
LABEL_6:
    if (sqlite3_bind_text(v6, 1, [*(a1 + 48) UTF8String], -1, 0))
    {
      v8 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v20 = 138543362;
        v21[0] = v9;
        v10 = "Failed to bind sessionID (%{public}@) to the select statement";
LABEL_15:
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v10, &v20, 0xCu);
        return;
      }
    }

    else
    {
      v13 = *(*(a1 + 40) + 56);
      if (v13)
      {
        v14 = 0;
        while (sqlite3_step(v13) == 100)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = [*(a1 + 40) _onqueue_convertSqlRowToTaskInfoEntry:*(*(a1 + 40) + 56)];
          if (v16)
          {
            [*(a1 + 56) addObject:v16];
          }

          objc_autoreleasePoolPop(v15);
          v13 = *(*(a1 + 40) + 56);
          ++v14;
        }

        v18 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 32);
          v20 = 67109378;
          LODWORD(v21[0]) = v14;
          WORD2(v21[0]) = 2114;
          *(v21 + 6) = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_getAllTasksFromDB entries: %d for session: %{public}@", &v20, 0x12u);
        }

        sqlite3_reset(*(*(a1 + 40) + 56));
      }
    }

    return;
  }

  v8 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v20 = 138543362;
    v21[0] = v12;
    v10 = "Failed to init the _selectEntriesStmt statement for session_tasks for session: %{public}@";
    goto LABEL_15;
  }
}

id sub_100013720(uint64_t a1)
{
  result = [*(a1 + 32) _onqueue_initDB];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10001CAD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _onqueue_getAllSessionIDsForBundle:v3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001CBD0;
  v8[3] = &unk_1000D5188;
  v5 = v3;
  v9 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  [v4 enumerateObjectsUsingBlock:v8];
}

void sub_10001CBD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138543618;
    v26 = v3;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Migrating session with bundleID: %{public}@ sessionID: %@", buf, 0x16u);
  }

  v7 = +[NDTaskStorageDB nsurlsessiondPath];
  v8 = sub_10001CF70(*(a1 + 32));
  v9 = [v7 stringByAppendingPathComponent:v8];
  v10 = sub_10001CF70(v3);
  v11 = [v9 stringByAppendingPathComponent:v10];

  v12 = [v11 stringByAppendingPathComponent:@"configuration.plist"];
  v24 = 0;
  if ([*(a1 + 40) fileExistsAtPath:v12 isDirectory:&v24])
  {
    if ((v24 & 1) == 0)
    {
      v13 = *(a1 + 48);
      v14 = *(a1 + 32);
      v15 = [NSData dataWithContentsOfFile:v12];
      [v13 _onqueue_updateConfigurationForBundleID:v14 sessionID:v3 withData:v15];

      v16 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        *buf = 138543618;
        v26 = v17;
        v27 = 2112;
        v28 = v3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Stored configuration in DB for bundleID: %{public}@ sessionID: %@", buf, 0x16u);
      }
    }
  }

  [*(a1 + 40) removeItemAtPath:v12 error:0];
  v18 = [v11 stringByAppendingPathComponent:@"options.plist"];
  v24 = 0;
  if ([*(a1 + 40) fileExistsAtPath:v18 isDirectory:&v24])
  {
    if ((v24 & 1) == 0)
    {
      v19 = *(a1 + 48);
      v20 = *(a1 + 32);
      v21 = [NSData dataWithContentsOfFile:v18];
      [v19 _onqueue_updateOptionsForBundleID:v20 sessionID:v3 withData:v21];

      v22 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        *buf = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = v3;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Stored options in DB for bundleID: %{public}@ sessionID: %@", buf, 0x16u);
      }
    }
  }

  [*(a1 + 40) removeItemAtPath:v18 error:0];

  objc_autoreleasePoolPop(v4);
}

id sub_10001CF70(void *a1)
{
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  CC_SHA1(v1, v2, md);
  v3 = [NSMutableString stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  v5 = [v3 uppercaseString];

  return v5;
}

void sub_10001D3CC(id a1)
{
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSMutableSet setWithObjects:v18, v17, v16, v15, v14, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];
  v12 = qword_1000EB108;
  qword_1000EB108 = v11;

  v13 = qword_1000EB108;
  v19 = +[SZExtractor knownSZExtractorImplementations];
  [v13 unionSet:?];
}

void sub_10001EB08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained NDAVAssetDownloadSessionWrapper:*(a1 + 32) didReceiveMetricEvent:*(a1 + 40)];
}

void sub_10001EC08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained NDAVAssetDownloadSessionWrapper:*(a1 + 32) willDownloadVariants:*(a1 + 40)];
}

void sub_10001ECE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) countOfBytesWritten];
  [*(a1 + 32) setCountOfBytesWritten:*(a1 + 40)];
  [*(a1 + 32) setCountOfBytesExpectedToWrite:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained NDAVAssetDownloadSessionWrapper:*(a1 + 32) didUpdateProgressWithLastBytesWritten:v2 - v3 totalBytesWritten:objc_msgSend(*(a1 + 32) totalBytesExpectedToWrite:{"countOfBytesWritten"), objc_msgSend(*(a1 + 32), "countOfBytesExpectedToWrite")}];
}

void sub_10001EE40(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) propertyList];
    [WeakRetained NDAVAssetDownloadSessionWrapper:v2 didResolveMediaSelectionPropertyList:v3];
  }
}

void sub_10001EFCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) propertyList];
  [WeakRetained NDAVAssetDownloadSessionWrapper:v2 didFinishDownloadForMediaSelectionPropertyList:v3];
}

void sub_10001F14C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v10 = *(a1 + 56);
  v11 = v2;
  v12 = *(a1 + 88);
  v3 = [NSValue valueWithCMTimeRange:&v10];
  v4 = *(a1 + 120);
  v10 = *(a1 + 104);
  v11 = v4;
  v12 = *(a1 + 136);
  v5 = [NSValue valueWithCMTimeRange:&v10];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [*(a1 + 48) propertyList];
  [WeakRetained NDAVAssetDownloadSessionWrapper:v8 didLoadTimeRange:v3 totalTimeRangesLoaded:v7 timeRangeExpectedToLoad:v5 forMediaSelectionPropertyList:v9];
}

void sub_10001F228(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10001F33C(uint64_t a1)
{
  [*(a1 + 32) disavowSession];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained NDAVAssetDownloadSessionWrapper:*(a1 + 32) didCompleteWithError:*(a1 + 40)];
}

void sub_10001F468(uint64_t a1)
{
  [*(a1 + 32) disavowSession];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained NDAVAssetDownloadSessionWrapper:*(a1 + 32) didCompleteWithError:0];
}

void sub_10001F804(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10001FB7C(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_10001FBC4(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"PowerAssertion was held for more than %d seconds for client %@.\nURL <%@>\nDestinationURL <%@>\nOptions %@\nAsset %@", 7200, @"com.apple.news", *(*(a1 + 32) + 72), *(*(a1 + 32) + 80), *(*(a1 + 32) + 88), *(*(a1 + 32) + 8)];
  v2 = @"a PowerAssertion has been held for too long";
  v3 = @"PowerAssertion has been held for too long.";
  v29 = v1;
  v4 = @"CoreMedia Streaming (New Bugs)";
  v6 = sub_10006E5E0(v5);
  v7 = qword_1000EB210;
  if (v6)
  {
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v33 = @"PowerAssertion has been held for too long.";
      v34 = 2112;
      v35 = @"a PowerAssertion has been held for too long";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Creating Tap to radar draft with title: %@ and reason: %@", buf, 0x16u);
    }

    if ([@"CoreMedia Streaming (New Bugs)" isEqual:@"CoreMedia Streaming (New Bugs)"])
    {
      if (v29)
      {
        if ([@"PowerAssertion has been held for too long." length] < 0xCE)
        {
          sub_100088B44(v8);
          v16 = objc_alloc_init(*(v15 + 2352));
          v17 = [NSString stringWithFormat:@"[Automatic CFNetwork Diagnostics] %@", @"PowerAssertion has been held for too long."];
          [v16 setTitle:v17];

          [v16 setProblemDescription:v29];
          sub_100088B20(v18);
          v20 = [objc_alloc(*(v19 + 2344)) initWithName:@"CoreMedia Streaming (New Bugs)" version:@"All" identifier:1326216];
          [v16 setComponent:v20];
          [v16 setClassification:0];
          [v16 setReproducibility:0];
          [v16 setIsUserInitiated:0];
          v31 = @"com.apple.coremedia.CoreMediaDiagnostics.CoreMediaDiagnosticExtension";
          v21 = [NSArray arrayWithObjects:&v31 count:1];
          [v16 setDiagnosticExtensionIDs:v21];

          v23 = sub_100088B68(v22);
          v25 = [*(v24 + 2360) shared];
          v30 = 0;
          [v25 createDraft:v16 forProcessNamed:@"nsurlsessiond" withDisplayReason:@"a PowerAssertion has been held for too long" error:&v30];
          v26 = v30;

          if (v26)
          {
            v27 = qword_1000EB210;
            if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v33 = v26;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to create Tap to Radar draft, error %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v9 = qword_1000EB210;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v28 = [@"PowerAssertion has been held for too long." length];
            *buf = 134218240;
            v33 = v28;
            v34 = 1024;
            LODWORD(v35) = 206;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create Tap to Radar draft, title is too long (%lu vs %d).", buf, 0x12u);
          }
        }

        goto LABEL_21;
      }

      v14 = qword_1000EB210;
      if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v11 = "Failed to create Tap to Radar draft, missing description or title";
      v12 = v14;
      v13 = 2;
    }

    else
    {
      v10 = qword_1000EB210;
      if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v33 = @"CoreMedia Streaming (New Bugs)";
      v11 = "Failed to create Tap to Radar draft, unknown radar component name %@";
      v12 = v10;
      v13 = 12;
    }

    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Failed to create Tap to Radar draft, TTR is not allowed. Did you forget to call NDCanTriggerTapToRadar() first?", buf, 2u);
  }

LABEL_21:
}

void sub_100020A74(void *a1)
{
  v31 = a1;
  v1 = +[NSFileManager defaultManager];
  v43[0] = NSURLFileAllocatedSizeKey;
  v43[1] = NSURLIsDirectoryKey;
  v43[2] = NSURLIsRegularFileKey;
  v43[3] = NSURLAttributeModificationDateKey;
  v43[4] = NSURLNameKey;
  v2 = [NSArray arrayWithObjects:v43 count:5];
  v3 = [v1 enumeratorAtURL:v31 includingPropertiesForKeys:v2 options:5 errorHandler:&stru_1000D5260];

  v30 = 0x8400302uLL;
  while (1)
  {
    v4 = [v3 nextObject];
    if (!v4)
    {
      break;
    }

    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    *v39 = 0;
    v7 = [v6 getResourceValue:v39 forKey:NSURLIsRegularFileKey error:0];
    v8 = *v39;
    v9 = v8;
    if (v7 && ([v8 BOOLValue] & 1) != 0)
    {
      v10 = 1;
    }

    else
    {
      *buf = 0;
      v11 = [v6 getResourceValue:buf forKey:NSURLIsDirectoryKey error:0];
      v12 = *buf;

      if (!v11 || ![v12 BOOLValue])
      {

        goto LABEL_21;
      }

      v10 = 0;
      v9 = v12;
    }

    v33 = 0;
    v13 = [v6 getResourceValue:&v33 forKey:NSURLNameKey error:0];
    v14 = v33;
    v15 = v14;
    if (v13 && [v14 hasPrefix:@"CFNetworkDownload_"] && objc_msgSend(v15, "hasSuffix:", @".tmp") && ((v10 & 1) != 0 || (+[NDFileUtilities fetchStreamingZipModificationDate:](NDFileUtilities, "fetchStreamingZipModificationDate:", v6), v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, !v17)))
    {

      v32 = 0;
      [v6 getResourceValue:&v32 forKey:NSURLCreationDateKey error:0];
      v18 = v32;
      v19 = v18;
      if (v18)
      {
        [v18 timeIntervalSinceNow];
        if (v20 >= -2592000.0)
        {
          if ((byte_1000EB118 & 1) == 0)
          {
            [v19 timeIntervalSince1970];
            v23 = 1000000000 * v22 + 604800000000000;
            *v39 = xmmword_100099730;
            v40 = xmmword_100099740;
            v41 = v23;
            v42 = 0;
            v24 = v6;
            if (fsctl([v6 fileSystemRepresentation], 0xC0304A6FuLL, v39, 0))
            {
              v25 = __error();
              v26 = qword_1000EB210;
              if (*v25 == 45)
              {
                if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "CacheDelete: enhanced APFS not available, no longer marking files as purgeable.", buf, 2u);
                }

                byte_1000EB118 = 1;
              }

              else
              {
                v28 = qword_1000EB210;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  v29 = *__error();
                  *buf = v30;
                  *&buf[4] = v6;
                  v35 = 2048;
                  v36 = v23;
                  v37 = 1024;
                  v38 = v29;
                  _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "CacheDelete: file (%@) failed to be marked purgeable at %llu : %{errno}d.", buf, 0x1Cu);
                }
              }
            }

            else
            {
              v27 = qword_1000EB210;
              if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                *&buf[4] = v6;
                v35 = 2048;
                v36 = v23;
                _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "CacheDelete: file (%@) successfully marked purgeable at %llu.", buf, 0x16u);
              }
            }
          }
        }

        else
        {
          v21 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
          {
            *v39 = 138412290;
            *&v39[4] = v6;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "CacheDelete: file (%@) older than 30 days, deleting.", v39, 0xCu);
          }

          [NDFileUtilities removeItemAtURL:v6];
        }
      }
    }

    else
    {
    }

LABEL_21:
    objc_autoreleasePoolPop(v5);
  }
}

BOOL sub_100021020(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "NDCacheDeleteCentralizedVolume enumeration failed at %@ error=%@", &v8, 0x16u);
  }

  return 1;
}

BOOL sub_1000210F4(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "NDCacheDeleteCentralizedContainer enumeration failed at %@ error=%@", &v8, 0x16u);
  }

  return 1;
}

void sub_100021448(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) copy];
  [v1 enumerateKeysAndObjectsUsingBlock:&stru_1000D5328];
}

void sub_10002189C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) obliterationCompletion];

  if (v3)
  {
    v4 = [*(a1 + 32) obliterationCompletion];
    [*(a1 + 32) setObliterationCompletion:0];
    v4[2]();
  }
}

void sub_100021CB4(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1000237BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 40))
  {
    v3 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 24);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ending boost activity from %@", &v8, 0xCu);
    }

    v5 = +[NSProcessInfo processInfo];
    [v5 endActivity:*(*(a1 + 32) + 40)];

    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

id sub_100024790(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Triggering periodic update to powerlog for client %@", &v5, 0xCu);
  }

  return [*(*(a1 + 32) + 8) enumerateKeysAndObjectsUsingBlock:&stru_1000D52A0];
}

void sub_1000250DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [*(a1 + 40) _loggableDescription];
    v7 = *(*(a1 + 32) + 272);
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ client disconnected (error %@) when attempting to communicate with HTTP Authenticator for Client %{public}@", &v8, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100025240(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = qword_1000EB210;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) uuid];
    v11 = [*(a1 + 40) _loggableDescription];
    v12 = 138544386;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 1024;
    v17 = a2;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ received auth headers for response, continueLoad: %d authHeaders %@ newRequest %@", &v12, 0x30u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100025794(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    dup([v3 fileDescriptor]);
    [v4 closeFile];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100026534(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) taskKind] == 2)
  {
    [*(a1 + 32) setShouldCancelOnDisconnect:1];
    v7 = *(a1 + 40);
    v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
    [v7 queueUpdatesForTask:v8 updateType:10 highPriority:0];
  }

  v16 = v5;
  v9 = [*(a1 + 48) HTTPBodyStream];
  v10 = v9;
  if (v9 && ![v9 streamStatus])
  {
    [v10 open];
    [v10 close];
  }

  v11 = v16;
  if (v6)
  {
    v11 = [v16 mutableCopy];
    v12 = [*(a1 + 40) inputStreamWithFileHandle:v6 taskIdentifier:*(a1 + 72)];
    [v11 setHTTPBodyStream:v12];
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 40);
  v15 = [*(a1 + 48) URL];
  [v14 errorIfBlockedTracker:v13 url:v15];

  (*(*(a1 + 64) + 16))();
}

void sub_100027540(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [*(a1 + 40) _loggableDescription];
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ client disconnected (error %@) during didReciveData delegate", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100027C58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [*(a1 + 40) _loggableDescription];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client disconnected (error %@) with didReceiveResponse outstanding, responding with a cancel disposition", &v8, 0x20u);
  }

  v7 = [*(a1 + 40) error:NSURLErrorDomain code:-997];
  [*(a1 + 40) cancel_with_error:v7];
  (*(*(a1 + 48) + 16))();
}

uint64_t sub_100027DDC(uint64_t a1, int a2)
{
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [*(a1 + 40) _loggableDescription];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client responded to didReceiveResponse with disposition %d", &v8, 0x1Cu);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100028CF4(uint64_t *a1)
{
  if (![a1[4] taskKind])
  {
    v2 = a1[5];
    if (v2)
    {
      v3 = [v2 userInfo];
      v4 = [v3 objectForKey:NSURLSessionDownloadTaskResumeData];

      if (!v4)
      {
        v5 = a1[6];
        v6 = a1[4];

        [v5 removeDownloadFileForTaskInfo:v6];
      }
    }
  }
}

void sub_1000293A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [*(a1 + 40) _loggableDescription];
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ client disconnected (error %@) with new body stream request outstanding, providing no body", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000294F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = [*(a1 + 32) inputStreamWithFileHandle:v3 taskIdentifier:*(a1 + 48)];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10002A0D0(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) setCurrentRequest:?];
  v3 = *(a1 + 40);
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  [v3 queueUpdatesForTask:v4 updateType:8 highPriority:0];

  (*(*(a1 + 48) + 16))();
}

void sub_10002A190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) uuid];
    v7 = [*(a1 + 40) _loggableDescription];
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ client disconnected (error %@) with redirection outstanding, following redirect", &v8, 0x20u);
  }

  v5 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
}

void sub_10002A2D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v6 = [v3 URL];
  LODWORD(v4) = [v4 errorIfBlockedTracker:v5 url:v6];

  v7 = 56;
  if (v4)
  {
    v7 = 48;
  }

  (*(*(a1 + v7) + 16))();
}

void sub_10002ACA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002B724(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_10002D650(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10002D924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [*(a1 + 40) _loggableDescription];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ received resume data", &v7, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10002DA60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [*(a1 + 40) _loggableDescription];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ received resume data", &v7, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10002E38C(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = [v5 user];
  v7 = [v5 password];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v19 host];
    v10 = [NSString stringWithFormat:@"%@%@%@", @"__com.apple.CFNetwork.prefix__", v9, *(*(a1 + 32) + 272)];

    v11 = [NSURLProtectionSpace alloc];
    v12 = [v19 port];
    v13 = [v19 protocol];
    v14 = [v19 realm];
    v15 = [v19 authenticationMethod];
    v16 = [v11 initWithHost:v10 port:v12 protocol:v13 realm:v14 authenticationMethod:v15];

    v17 = [NSURLCredential credentialWithUser:v6 password:v8 persistence:2];
    v18 = +[NSURLCredentialStorage sharedCredentialStorage];
    [v18 setDefaultCredential:v17 forProtectionSpace:v16];
  }
}

void sub_10002EA8C(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = [v5 user];
  v7 = [v5 password];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v19 host];
    v10 = [NSString stringWithFormat:@"%@%@%@", @"__com.apple.CFNetwork.prefix__", v9, *(*(a1 + 32) + 272)];

    v11 = [NSURLProtectionSpace alloc];
    v12 = [v19 port];
    v13 = [v19 protocol];
    v14 = [v19 realm];
    v15 = [v19 authenticationMethod];
    v16 = [v11 initWithHost:v10 port:v12 protocol:v13 realm:v14 authenticationMethod:v15];

    v17 = [NSURLCredential credentialWithUser:v6 password:v8 persistence:2];
    v18 = +[NSURLCredentialStorage sharedCredentialStorage];
    [v18 setDefaultCredential:v17 forProtectionSpace:v16];
  }
}

void sub_100031A6C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v7 = [v2 objectForKeyedSubscript:v3];

  v4 = *(*(a1 + 32) + 216);
  v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v6 = [v4 objectForKeyedSubscript:v5];

  [*(a1 + 32) enqueueTaskWithIdentifier:*(a1 + 40)];
  if (![v6 state] && !objc_msgSend(v6, "suspendCount") && (*(a1 + 48) & 1) == 0)
  {
    [v7 startResourceTimer];
    [*(a1 + 32) taskShouldResume:*(a1 + 40)];
  }
}

void sub_1000322EC(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [*(a1 + 40) _loggableDescription];
    *buf = 138543618;
    v21 = v3;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ resuming", buf, 0x16u);
  }

  v5 = [*(a1 + 40) personaUniqueString];
  v6 = v5 == 0;

  if (!v6)
  {
    v7 = +[UMUserManager sharedManager];
    v8 = [v7 currentPersona];
    v9 = [*(a1 + 40) personaUniqueString];
    v10 = [v8 createPersonaContextForBackgroundProcessingWithPersonaUniqueString:v9];
  }

  v11 = [*(a1 + 48) _backgroundPublishingURL];
  v12 = v11 == 0;

  if (!v12)
  {
    [*(a1 + 48) progress];
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000325B8;
  v17[3] = &unk_1000D53E8;
  v17[4] = v13;
  v19 = v14;
  v18 = *(a1 + 40);
  [v13 handleEarliestBeginDateForTaskWithIdentifier:v14 completionHandler:v17];
  if (([*(a1 + 40) hasStarted] & 1) == 0 && (objc_msgSend(*(a1 + 40), "isDiscretionary") & 1) == 0)
  {
    [*(a1 + 40) setStartedUserInitiated:1];
  }

  [*(a1 + 40) setHasStarted:1];
  v15 = *(a1 + 32);
  v16 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  [v15 queueUpdatesForTask:v16 updateType:14 highPriority:1];
}

void sub_1000325B8(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003266C;
  v4[3] = &unk_1000D5668;
  v4[4] = v2;
  v6 = v3;
  v7 = a2;
  v5 = *(a1 + 40);
  [v2 handleWillBeginDelayedRequestForTaskWithIdentifier:v3 completionHandler:v4];
}

void sub_10003266C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (*(a1 + 56) == 1)
  {
    v5 = [*(a1 + 32) requestWithAdjustedWindowForTaskInfo:*(a1 + 40)];
    [v4 updateCurrentRequest:v5];
  }

  v6 = qword_1000EB210;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) uuid];
    v8 = [*(a1 + 40) _loggableDescription];
    *buf = 138543618;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ will begin", buf, 0x16u);
  }

  v9 = *(*(a1 + 32) + 64);
  v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = [*(a1 + 40) isDiscretionary];
    v13 = *(a1 + 32);
    if (*(v13 + 134))
    {
      v14 = v12 | 2;
    }

    else
    {
      v14 = v12;
    }

    if ((*(v13 + 138) & 1) != 0 || [*(v13 + 32) canBeSuspended])
    {
      v14 |= 4uLL;
    }

    v11 = -[NDTaskMonitor initWithDelegate:taskInfo:clientBundleIdentifier:secondaryIdentifier:monitoredApplication:priority:options:queue:]([NDTaskMonitor alloc], "initWithDelegate:taskInfo:clientBundleIdentifier:secondaryIdentifier:monitoredApplication:priority:options:queue:", *(a1 + 32), *(a1 + 40), *(*(a1 + 32) + 272), *(*(a1 + 32) + 288), *(*(a1 + 32) + 208), [*(a1 + 40) basePriority], v14, *(*(a1 + 32) + 192));
    v15 = *(*(a1 + 32) + 64);
    v16 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v15 setObject:v11 forKeyedSubscript:v16];
  }

  [(NDTaskMonitor *)v11 taskWillResume];
  sub_10006E370(0, *(*(a1 + 32) + 272), *(*(a1 + 32) + 264), *(*(a1 + 32) + 280), *(*(a1 + 32) + 288), v4, *(a1 + 40), 0);
  v17 = *(a1 + 32);
  v18 = [v4 currentRequest_URL];
  LOBYTE(v17) = [v17 errorIfBlockedTracker:v4 url:v18];

  if ((v17 & 1) == 0)
  {
    v19 = *(a1 + 32);
    v20 = [*(a1 + 40) currentRequest];
    LODWORD(v19) = [v19 currentDiscretionaryStatus:v20 withOptionalTaskInfo:*(a1 + 40)];

    if (v19 == [*(a1 + 40) isDiscretionary])
    {
      [v4 resume];
    }

    else
    {
      v21 = [v4 error:@"_nsurlsessiondErrorDomain" code:6];
      [v4 cancel_with_error:v21];
    }
  }
}

void sub_100033098(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 56);
  v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (a2 == 1 && v5)
  {
    v9 = qword_1000EB210;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) uuid];
      v11 = [v8 _loggableDescription];
      *buf = 138543618;
      v26 = v10;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ using new request from delayed request callback", buf, 0x16u);
    }

    [v8 updateCurrentRequest:v5];
    [*(a1 + 40) setCurrentRequest:v5];
    v12 = *(a1 + 32);
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) identifier]);
    [v12 queueUpdatesForTask:v13 updateType:8 highPriority:0];
  }

  else
  {
    v13 = qword_1000EB210;
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v14)
      {
        v15 = [*(a1 + 32) uuid];
        v16 = [v8 _loggableDescription];
        *buf = 138543618;
        v26 = v15;
        v27 = 2114;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ will be canceled due to delayed request callback", buf, 0x16u);
      }

      v13 = [v8 error:NSURLErrorDomain code:-999];
      [v8 cancel_with_error:v13];
    }

    else if (v14)
    {
      v17 = [*(a1 + 32) uuid];
      v18 = [v8 _loggableDescription];
      *buf = 138543618;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ continuing load from delayed request callback", buf, 0x16u);
    }
  }

  [*(a1 + 40) setRespondedToWillBeginDelayedRequestCallback:1];
  v19 = *(a1 + 32);
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) identifier]);
  [v19 queueUpdatesForTask:v20 updateType:9 highPriority:0];

  v21 = *(*(a1 + 32) + 192);
  LODWORD(v20) = [*(a1 + 40) qos];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000334B4;
  block[3] = &unk_1000D5F30;
  v24 = *(a1 + 48);
  v22 = dispatch_block_create_with_qos_class(0, v20, 0, block);
  dispatch_async(v21, v22);
}

void sub_10003393C(uint64_t a1)
{
  v2 = [*(a1 + 32) resumedAndWaitingForEarliestBeginDate];
  v3 = qword_1000EB210;
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 40) uuid];
      v6 = [*(a1 + 32) _loggableDescription];
      v17 = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ can now begin - earliest begin date satisfied", &v17, 0x16u);
    }

    [*(a1 + 32) setResumedAndWaitingForEarliestBeginDate:0];
    v7 = *(*(a1 + 40) + 56);
    v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v9 = [v7 objectForKeyedSubscript:v8];
    if (v9)
    {
      v10 = *(*(a1 + 40) + 216);
      v11 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
      v12 = [v10 objectForKeyedSubscript:v11];
      LOBYTE(v10) = v12 == 0;

      if ((v10 & 1) == 0)
      {
        (*(*(a1 + 48) + 16))();
        return;
      }
    }

    else
    {
    }

    v3 = qword_1000EB210;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 40) uuid];
      v16 = [*(a1 + 32) _loggableDescription];
      v17 = 138543618;
      v18 = v15;
      v19 = 2114;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ no longer has a valid task or taskInfo, no need to begin", &v17, 0x16u);
    }
  }

  else if (v4)
  {
    v13 = [*(a1 + 40) uuid];
    v14 = [*(a1 + 32) _loggableDescription];
    v17 = 138543618;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ ignoring stale delay begin timer", &v17, 0x16u);
  }
}

void sub_1000345A4(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = *(*(a1 + 32) + 264);
    v5 = *(*(a1 + 32) + 272);
    v21 = 138543874;
    v22 = v3;
    v23 = 2114;
    v24 = v5;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Received signal to deliver pending events for client session: <%{public}@>.<%@>", &v21, 0x20u);
  }

  v6 = *(a1 + 32);
  if (v6[18])
  {
    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) uuid];
      v9 = *(*(a1 + 32) + 264);
      v10 = *(*(a1 + 32) + 272);
      v21 = 138543874;
      v22 = v8;
      v23 = 2114;
      v24 = v10;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Delivering pending events for client session: <%{public}@>.<%@>", &v21, 0x20u);
    }

    v12 = *(a1 + 32);
    v11 = a1 + 32;
    v13 = objc_retainBlock(*(v12 + 144));
    v14 = *(*v11 + 144);
    *(*v11 + 144) = 0;

    v13[2](v13);
  }

  else
  {
    v15 = v6[4];
    v16 = v6[33];
    v17 = [v6 uuid];
    LODWORD(v15) = [v15 isHandlingBackgroundURLSessionWithIdentifier:v16 withSessionUUID:v17];

    if (v15)
    {
      *(*(a1 + 32) + 137) = 1;
    }

    else
    {
      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [*(a1 + 32) uuid];
        v20 = *(*(a1 + 32) + 272);
        v21 = 138543618;
        v22 = v19;
        v23 = 2114;
        v24 = v20;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Application %{public}@ is not handling a background URLSession but we still received a signal to deliver pending events", &v21, 0x16u);
      }
    }
  }
}

uint64_t sub_100034B2C(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Invoking client reconnection completion block", &v5, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 224), *(a1 + 40));
  [*(*(a1 + 32) + 200) performAllCallbacks];
  return (*(*(a1 + 48) + 16))();
}

void sub_100035BE0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 216);
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (*(a1 + 48) == 1)
  {
    [v4 setLowThroughputTimerRetryCount:0];
  }

  if (![v4 state] && !objc_msgSend(v4, "suspendCount"))
  {
    [*(a1 + 32) taskShouldResume:{objc_msgSend(v4, "identifier")}];
  }
}

void sub_100036218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100036250(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 downloadFileURL];

    if (v10)
    {
      v11 = [v9 downloadFileURL];
      v12 = +[Daemon sharedDaemon];
      if ([v12 isPrivileged])
      {
      }

      else
      {
        v13 = [v11 path];
        v14 = [*(*(a1 + 32) + 112) path];
        v15 = [v13 hasPrefix:v14];

        if ((v15 & 1) == 0)
        {
          v16 = qword_1000EB210;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [*(a1 + 32) uuid];
            v18 = *(a1 + 32);
            v19 = *(v18 + 272);
            v20 = [*(v18 + 112) path];
            v21 = [v11 path];
            *buf = 138544130;
            v52 = v17;
            v53 = 2114;
            v54 = v19;
            v55 = 2112;
            v56 = v20;
            v57 = 2112;
            v58 = v21;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Download directory for bundle %{public}@ has moved to %@, but saved download file path is %@. Need to fix download path", buf, 0x2Au);
          }

          v22 = *(*(a1 + 32) + 112);
          v23 = [v11 lastPathComponent];
          v24 = [v22 URLByAppendingPathComponent:v23];
          [v9 setDownloadFileURL:v24];

          v25 = qword_1000EB210;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [*(a1 + 32) uuid];
            v27 = [v9 downloadFileURL];
            v28 = [v27 path];
            *buf = 138543618;
            v52 = v26;
            v53 = 2112;
            v54 = v28;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> New download path: %@", buf, 0x16u);
          }
        }
      }
    }

    v50 = 0;
    if ([v9 shouldCancelOnDisconnect] && objc_msgSend(v9, "state") <= 2)
    {
      [v9 setState:3];
      v29 = [v9 currentRequest];
      v30 = [v29 URL];
      v31 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-997 URL:v30];
      [v9 setError:v31];

      v32 = qword_1000EB210;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v45 = [*(a1 + 32) uuid];
        v46 = [v9 _loggableDescription];
        v47 = [v9 error];
        v48 = [v9 error];
        v49 = [v48 code];
        *buf = 138544130;
        v52 = v45;
        v53 = 2114;
        v54 = v46;
        v55 = 2112;
        v56 = v47;
        v57 = 2048;
        v58 = v49;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ completed with error %@ [%ld] (was active before nsurlsessiond exit)", buf, 0x2Au);
      }
    }

    v33 = [*(a1 + 32) restoreTask:v9 isOutstanding:&v50];
    if (v33)
    {
      if (v50 == 1)
      {
        [*(a1 + 32) addOutstandingTaskWithIdentifier:{objc_msgSend(v9, "identifier")}];
        [*(a1 + 40) addObject:v9];
      }

      [*(*(a1 + 32) + 216) setObject:v9 forKeyedSubscript:v7];
      [*(*(a1 + 32) + 56) setObject:v33 forKeyedSubscript:v7];
      [*(*(a1 + 32) + 48) setObject:v7 forKeyedSubscript:v33];
    }

    else
    {
      v34 = qword_1000EB210;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v42 = [*(a1 + 32) uuid];
        v43 = *(*(a1 + 32) + 264);
        v44 = *(*(a1 + 32) + 272);
        *buf = 138544130;
        v52 = v42;
        v53 = 2114;
        v54 = v7;
        v55 = 2114;
        v56 = v44;
        v57 = 2112;
        v58 = v43;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't recreate existing task with identifier: %{public}@ in session: <%{public}@>.<%@>", buf, 0x2Au);
      }
    }
  }

  v35 = *(*(a1 + 56) + 8);
  v36 = *(v35 + 24) + 1;
  *(v35 + 24) = v36;
  if (v36 >= 0x201)
  {
    v37 = qword_1000EB210;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      v38 = *(a1 + 32);
      v39 = *(v38 + 264);
      v40 = *(v38 + 272);
      v41 = [*(a1 + 48) count];
      *buf = 138543874;
      v52 = v40;
      v53 = 2112;
      v54 = v39;
      v55 = 2048;
      v56 = v41;
      _os_log_fault_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Too many tasks for app session <%{public}@>.<%@> (%zu > 512)", buf, 0x20u);
    }

    *a4 = 1;
  }
}

void sub_100037240()
{
  objc_end_catch();

  JUMPOUT(0x1000373B4);
}

id sub_1000377CC(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = [*(a1 + 32) uuid];
    v5 = [*(a1 + 40) _loggableDescription];
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ restored but never started, terminating with timeout", &v6, 0x16u);
  }

  return [*(a1 + 48) cancel_with_error:*(a1 + 56)];
}

void sub_100039E00(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_10003A110(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 firstObject];
  v4 = [v3 isEqual:&off_1000D8980];

  if ((v4 & 1) == 0)
  {
    if ((*(a1 + 48) - 13) <= 1)
    {
      v5 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:*(a1 + 40)];
      [v5 removeAllObjects];
    }

    v6 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:*(a1 + 40)];

    if (!v6)
    {
      v7 = +[NSMutableArray array];
      [*(*(a1 + 32) + 176) setObject:v7 forKeyedSubscript:*(a1 + 40)];
    }

    v8 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:*(a1 + 40)];
    v9 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v8 addObject:v9];

    v10 = *(a1 + 32);
    v11 = *(a1 + 56);

    [v10 storeTaskInfoUpdates:v11];
  }
}

double *sub_10003A304(double *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(result + 4);
  if ((result[6] & 1) != 0 || v2 > *(v3 + 88) + 5.0)
  {
    *(v3 + 88) = v2;
    result = [*(*(result + 4) + 176) count];
    if (result)
    {
      v4 = *(v1 + 4);
      v5 = *(v4 + 232);
      if (v5)
      {
        v6 = *(v4 + 256);
        v7 = *(v4 + 216);
        v8 = [*(v4 + 176) copy];
        [v5 _updateDBEntriesForTasksInSession:v6 taskInfos:v7 updates:v8];

        v4 = *(v1 + 4);
      }

      v9 = *(v4 + 176);

      return [v9 removeAllObjects];
    }
  }

  else
  {
    *(v3 + 96) = 1;
  }

  return result;
}

void sub_10003ACBC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 272);
  v6 = [*(a1 + 40) bundleIdentifier];
  if (![v2 isEqualToString:?] || (objc_msgSend(*(a1 + 32), "clientIsActive") & 1) != 0 || (objc_msgSend(*(a1 + 32), "sessionHasOutstandingTasks") & 1) != 0 || (v3 = *(a1 + 32), *(v3 + 133) != 1))
  {
  }

  else
  {
    v4 = [*(v3 + 200) count];

    if (v4)
    {
      v5 = *(a1 + 32);

      [v5 wakeUpClient:1];
    }
  }
}

id sub_10003AE50(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [*(a1 + 40) bundleIdentifier];
    v5 = v4;
    v6 = *(a1 + 48);
    if (*(*(a1 + 32) + 160))
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    v9 = 138544130;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> notified associated application %{public}@(%d) was suspended, XPC(%c)", &v9, 0x22u);
  }

  result = [*(*(a1 + 32) + 160) processIdentifier];
  if (result == *(a1 + 48))
  {
    [*(*(a1 + 32) + 160) invalidate];
    return [*(a1 + 32) clientDidDisconnect];
  }

  return result;
}

void sub_1000403B0(void *a1)
{
  v2 = [[NDStatusMonitorClientHolder alloc] initWithClient:a1[4] identifier:a1[6]];
  if ([*(a1[5] + 16) containsObject:v2])
  {
    v3 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Simulating network change event", v5, 2u);
    }

    [*(a1[5] + 16) removeObject:v2];
    v4 = [(NDStatusMonitorClientHolder *)v2 client];
    [v4 statusMonitor:a1[5] callbackForIdentifier:-[NDStatusMonitorClientHolder identifier](v2 networkChanged:{"identifier"), 0}];
  }
}

void sub_100040560(void *a1)
{
  if (![*(a1[4] + 16) count])
  {
    symptom_create();
    symptom_set_qualifier();
    symptom_send();
  }

  v2 = [[NDStatusMonitorClientHolder alloc] initWithClient:a1[5] identifier:a1[6]];
  [*(a1[4] + 16) addObject:v2];
  v3 = dispatch_time(0x8000000000000000, 1000000000 * a1[7]);
  v4 = a1[4];
  v5 = *(v4 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040694;
  block[3] = &unk_1000D6448;
  block[4] = v4;
  v8 = v2;
  v9 = a1[7];
  v6 = v2;
  dispatch_after(v3, v5, block);
}

void sub_100040694(void *a1)
{
  if ([*(a1[4] + 16) containsObject:a1[5]])
  {
    v2 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[6];
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Simulating network change event since %lld seconds have passed", &v7, 0xCu);
    }

    v5 = a1[4];
    v4 = a1 + 4;
    [*(v5 + 16) removeObject:v4[1]];
    v6 = [v4[1] client];
    [v6 statusMonitor:*v4 callbackForIdentifier:objc_msgSend(v4[1] networkChanged:{"identifier"), 0}];
  }
}

void sub_100040868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NDStatusMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100040968(id a1)
{
  v1 = objc_alloc_init(NDStatusMonitor);
  v2 = qword_1000EB128;
  qword_1000EB128 = v1;
}

void sub_100040AD0(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v3 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
    [v3 removeObjectForKey:a1[6]];

    v4 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
    v5 = [v4 count];

    if (!v5)
    {
      v6 = a1[5];
      v7 = *(a1[4] + 40);

      [v7 removeObjectForKey:v6];
    }
  }
}

void sub_100040C84(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    v3 = objc_opt_new();
    [*(*(a1 + 32) + 40) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  v4 = objc_retainBlock(*(a1 + 56));
  v5 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 48)];

  v6 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will wake client %@ for session %@ if we receive a notification that it supports launch-on-demand", &v9, 0x16u);
  }
}

void sub_100040E9C(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to launch client %@ for session %@", &v8, 0x16u);
  }

  if (*(*(a1 + 48) + 16))
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "com.apple.nsurlsessiond-events.message-type", 1);
    xpc_dictionary_set_string(v5, kNSURLSessionLaunchOnDemandClientIdentifierKey, [*(a1 + 32) UTF8String]);
    xpc_dictionary_set_string(v5, kNSURLSessionLaunchOnDemandSessionIdentifierKey, [*(a1 + 40) UTF8String]);
    xpc_connection_send_message(*(*(a1 + 48) + 16), v5);
  }

  else
  {
    v6 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Couldn't launch application %@ because we don't have an xpc connection to UserEventAgent", &v8, 0xCu);
    }
  }
}

void sub_1000411C8(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xpc_get_type(xdict) == &_xpc_type_dictionary && xpc_dictionary_get_int64(xdict, "com.apple.nsurlsessiond-events.message-type") == 2)
  {
    v18 = xpc_dictionary_get_value(xdict, "com.apple.nsurlsessiond-events.registered-clients");
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v6 = qword_1000EB210;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(*(a1 + 32) + 32) allKeys];
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated Registered Launch-On-Demand Clients: %@", buf, 0xCu);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = *(*(a1 + 32) + 32);
    v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v11];
          if (v12)
          {
            [*(*(a1 + 32) + 40) removeObjectForKey:v11];
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v14)
            {
              v15 = *v22;
              do
              {
                for (j = 0; j != v14; j = j + 1)
                {
                  if (*v22 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = [v13 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * j)];
                  v17[2]();
                }

                v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
              }

              while (v14);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }
  }
}

void sub_100041630(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received xpc event", buf, 2u);
  }

  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    v5 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDUserEventAgentConnection received connection", v6, 2u);
    }

    [*(a1 + 32) handleNewConnection:v3];
  }
}

void sub_1000417EC(id a1)
{
  v1 = objc_alloc_init(NDUserEventAgentConnection);
  v2 = qword_1000EB130;
  qword_1000EB130 = v1;
}

void sub_100041828(id a1)
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableBluetoothLinkRequirements", @"com.apple.nsurlsessiond", 0);
  byte_1000EB148 = AppBooleanValue;
  if (AppBooleanValue)
  {
    v2 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "com.apple.nsurlsessiond enableBluetoothLinkRequirements is true - will assert bluetooth link requirements", v3, 2u);
    }
  }
}

void sub_1000418B0(id a1)
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"bluetoothLinkRequirementsOverrideTimerValue", @"com.apple.nsurlsessiond", 0);
  if (AppIntegerValue)
  {
    v2 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 67109120;
      v3[1] = AppIntegerValue;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "com.apple.nsurlsessiond bluetoothLinkRequirementsOverrideTimerValue is %d", v3, 8u);
    }

    dword_1000EA598 = AppIntegerValue;
  }
}

NSObject *sub_100041974(NSObject *a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a1);
  v5 = dispatch_time(0, 2147483647000000000);
  dispatch_source_set_timer(v4, v5, 0x1DCD64FFC4653600uLL, 0);
  dispatch_source_set_event_handler(v4, v3);

  return v4;
}

void sub_100041A14(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v5 conformsToProtocol:&OBJC_PROTOCOL___NSSecureCoding] & 1) == 0)
  {
    [*(a1 + 32) removeObjectForKey:v6];
  }
}

void sub_100041F68(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];
  v12 = qword_1000EB160;
  qword_1000EB160 = v11;
}

void sub_1000423AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000424DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100042C18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100042E48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100043918(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100044514(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 32) + 48);
    v8 = 138544130;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> client disconnected (error %@) when attempting to communicate with HTTP Authenticator for Client %{public}@", &v8, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100044658(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = qword_1000EB210;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) uuid];
    v11 = *(a1 + 48);
    v12 = 138544386;
    v13 = v10;
    v14 = 2048;
    v15 = v11;
    v16 = 1024;
    v17 = a2;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> received auth headers for response, continueLoad: %d authHeaders %@ newRequest %@", &v12, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100044B88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    dup([v3 fileDescriptor]);
    [v4 closeFile];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000455AC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100045678(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  if (*(*(*(a1 + 48) + 8) + 24) >= 31)
  {
    *a4 = 1;
  }

  [*(a1 + 32) addObject:v10];
  v8 = *(a1 + 40);
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 state]);
  [v8 addObject:v9];

  ++*(*(*(a1 + 48) + 8) + 24);
}

void sub_100045DEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = *(a1 + 48);
    v7 = 138543874;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> client disconnected (error %@) during didReceiveData delegate", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100046424(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = *(a1 + 56);
    v10 = 138543874;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client disconnected (error %@) with didReceiveResponse outstanding, responding with a cancel disposition", &v10, 0x20u);
  }

  v7 = [[NWURLError alloc] initWithErrorCode:-997];
  v8 = [*(a1 + 40) currentRequest];
  v9 = [v8 URL];
  [v7 setFailingURL:v9];

  [*(a1 + 32) _cancelTaskWithIdentifier:*(a1 + 56) error:v7];
  (*(*(a1 + 48) + 16))();
}

uint64_t sub_1000465D0(uint64_t a1, int a2)
{
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = *(a1 + 48);
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client responded to didReceiveResponse with disposition %d", &v8, 0x1Cu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100047104(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = *(a1 + 48);
    v7 = 138543874;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> client disconnected (error %@) with new body stream request outstanding, providing no body", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10004722C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = [*(a1 + 32) inputStreamWithFileHandle:v3 taskIdentifier:*(a1 + 48)];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100047830(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) setCurrentRequest:?];
  v3 = *(a1 + 40);
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  [v3 queueUpdatesForTask:v4 updateType:8 highPriority:0];

  (*(*(a1 + 48) + 16))();
}

void sub_1000478F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) uuid];
    v7 = *(a1 + 56);
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> client disconnected (error %@) with redirection outstanding, following redirect", &v8, 0x20u);
  }

  v5 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void sub_100047A14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v6 = [v3 URL];
  LODWORD(v4) = [v4 errorIfBlockedTracker:v5 url:v6];

  v7 = 56;
  if (v4)
  {
    v7 = 48;
  }

  (*(*(a1 + v7) + 16))();
}

void sub_100048308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004849C(void *a1)
{
  v1 = [a1 protectionSpace];
  v2 = [v1 authenticationMethod];

  if ([v2 isEqualToString:NSURLAuthenticationMethodServerTrust] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", NSURLAuthenticationMethodClientCertificate) & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", NSURLAuthenticationMethodNegotiate))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:NSURLAuthenticationMethodNTLM];
  }

  return v3;
}

void sub_100048B4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 1 && v5)
  {
    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) uuid];
      v9 = *(a1 + 56);
      v14 = 138543618;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> using new request from delayed request callback", &v14, 0x16u);
    }

    [*(a1 + 40) setCurrentRequest:v6];
    v10 = *(a1 + 32);
    v11 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    [v10 queueUpdatesForTask:v11 updateType:8 highPriority:0];
  }

  [*(a1 + 40) setRespondedToWillBeginDelayedRequestCallback:1];
  [*(a1 + 32) startMonitorForTask:*(a1 + 56)];
  v12 = *(a1 + 32);
  v13 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  [v12 queueUpdatesForTask:v13 updateType:9 highPriority:0];

  (*(*(a1 + 48) + 16))();
}

void sub_10004A9AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = *(a1 + 48);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> received download resume data", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10004AAC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = *(a1 + 48);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> received upload resume data", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10004B260(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = [v5 user];
  v7 = [v5 password];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v19 host];
    v10 = [NSString stringWithFormat:@"%@%@%@", @"__com.apple.CFNetwork.prefix__", v9, *(*(a1 + 32) + 48)];

    v11 = [NSURLProtectionSpace alloc];
    v12 = [v19 port];
    v13 = [v19 protocol];
    v14 = [v19 realm];
    v15 = [v19 authenticationMethod];
    v16 = [v11 initWithHost:v10 port:v12 protocol:v13 realm:v14 authenticationMethod:v15];

    v17 = [NSURLCredential credentialWithUser:v6 password:v8 persistence:2];
    v18 = +[NSURLCredentialStorage sharedCredentialStorage];
    [v18 setDefaultCredential:v17 forProtectionSpace:v16];
  }
}

void sub_10004B75C(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = [v5 user];
  v7 = [v5 password];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v19 host];
    v10 = [NSString stringWithFormat:@"%@%@%@", @"__com.apple.CFNetwork.prefix__", v9, *(*(a1 + 32) + 48)];

    v11 = [NSURLProtectionSpace alloc];
    v12 = [v19 port];
    v13 = [v19 protocol];
    v14 = [v19 realm];
    v15 = [v19 authenticationMethod];
    v16 = [v11 initWithHost:v10 port:v12 protocol:v13 realm:v14 authenticationMethod:v15];

    v17 = [NSURLCredential credentialWithUser:v6 password:v8 persistence:2];
    v18 = +[NSURLCredentialStorage sharedCredentialStorage];
    [v18 setDefaultCredential:v17 forProtectionSpace:v16];
  }
}

void sub_10004CEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10004DFF8(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = *(a1 + 56);
    v20 = 138543618;
    v21 = v3;
    v22 = 2048;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> resuming", &v20, 0x16u);
  }

  v5 = [*(a1 + 40) personaUniqueString];
  v6 = v5 == 0;

  if (!v6)
  {
    v7 = +[UMUserManager sharedManager];
    v8 = [v7 currentPersona];
    v9 = [*(a1 + 40) personaUniqueString];
    v10 = [v8 createPersonaContextForBackgroundProcessingWithPersonaUniqueString:v9];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [*(a1 + 40) setCreationTime:?];
  v11 = [*(a1 + 48) earliestBeginDate];
  v12 = v11 == 0;

  if (v12)
  {
    [*(a1 + 32) startMonitorForTask:*(a1 + 56)];
  }

  else
  {
    v13 = [*(a1 + 48) earliestBeginDate];
    [v13 timeIntervalSinceReferenceDate];
    v15 = v14;

    [*(a1 + 40) creationTime];
    if (v16 > v15)
    {
      [*(a1 + 40) creationTime];
      v15 = v17;
    }

    [*(a1 + 40) setCreationTime:v15];
  }

  [*(a1 + 48) resume];
  if (([*(a1 + 40) hasStarted] & 1) == 0 && (objc_msgSend(*(a1 + 40), "isDiscretionary") & 1) == 0)
  {
    [*(a1 + 40) setStartedUserInitiated:1];
  }

  [*(a1 + 40) setHasStarted:1];
  v18 = *(a1 + 32);
  v19 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  [v18 queueUpdatesForTask:v19 updateType:14 highPriority:1];
}

void sub_10004EC38(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) fillInByteCountsForTaskInfo:v5 withTaskID:v6];
  [*(a1 + 32) fillInPropertiesForTaskInfo:v5 withTaskID:v6];
}

void sub_10004ED3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(*(a1 + 32) + 240) objectForKeyedSubscript:a2];
  sub_10006E114(6, *(*(a1 + 32) + 48), *(*(a1 + 32) + 32), *(*(a1 + 32) + 72), *(*(a1 + 32) + 80), v6, v5);
}

void sub_10004EF2C(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    v6 = *(v4 + 32);
    v23 = 138543874;
    v24 = v3;
    v25 = 2114;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Received signal to deliver pending events for client session: <%{public}@>.<%@>", &v23, 0x20u);
  }

  v7 = *(a1 + 32);
  if (v7[23])
  {
    v8 = qword_1000EB210;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) uuid];
      v10 = *(a1 + 32);
      v11 = *(v10 + 48);
      v12 = *(v10 + 32);
      v23 = 138543874;
      v24 = v9;
      v25 = 2114;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Delivering pending events for client session: <%{public}@>.<%@>", &v23, 0x20u);
    }

    v14 = *(a1 + 32);
    v13 = a1 + 32;
    v15 = objc_retainBlock(*(v14 + 184));
    v16 = *(*v13 + 184);
    *(*v13 + 184) = 0;

    v15[2](v15);
  }

  else
  {
    v17 = v7[14];
    v18 = v7[4];
    v19 = [v7 uuid];
    LODWORD(v17) = [v17 isHandlingBackgroundURLSessionWithIdentifier:v18 withSessionUUID:v19];

    if (v17)
    {
      *(*(a1 + 32) + 18) = 1;
    }

    else
    {
      v20 = qword_1000EB210;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [*(a1 + 32) uuid];
        v22 = *(*(a1 + 32) + 48);
        v23 = 138543618;
        v24 = v21;
        v25 = 2114;
        v26 = v22;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Application %{public}@ is not handling a background URLSession but we still received a signal to deliver pending events", &v23, 0x16u);
      }
    }
  }
}

uint64_t sub_10004F4C4(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Invoking client reconnection completion block", &v5, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 248), *(a1 + 40));
  [*(*(a1 + 32) + 224) performAllCallbacks];
  return (*(*(a1 + 48) + 16))();
}

void sub_10004F878(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v5 shouldCancelOnDisconnect])
  {
    v6 = [[NWURLError alloc] initWithErrorCode:-997];
    v7 = [v5 currentRequest];
    v8 = [v7 URL];
    [v6 setFailingURL:v8];

    [*(a1 + 32) _cancelTaskWithIdentifier:objc_msgSend(v11 error:{"unsignedIntegerValue"), v6}];
  }

  else
  {
    if ([v5 hasStarted])
    {
      goto LABEL_6;
    }

    v6 = [[NWURLError alloc] initWithErrorCode:-1001];
    v9 = [v5 currentRequest];
    v10 = [v9 URL];
    [v6 setFailingURL:v10];

    [*(a1 + 32) _cancelTaskWithIdentifier:objc_msgSend(v11 error:{"unsignedIntegerValue"), v6}];
  }

LABEL_6:
}

void sub_10004FEE4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v3 = [v1 objectForKeyedSubscript:v2];

  [v3 retryImmediately];
}

void sub_1000513F0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (![a3 state])
  {
    v5 = [v11 unsignedIntValue];
    v6 = *(a1 + 32);
    v7 = (v6 + 32);
    v8 = 7;
    while (1)
    {
      v9 = *(v7 - 1);
      if (v9 <= v5)
      {
        break;
      }

      *v7-- = v9;
      if (--v8 == -1)
      {
        v10 = 0;
        goto LABEL_7;
      }
    }

    v10 = v8 + 1;
LABEL_7:
    *(v6 + 4 * v10) = v5;
  }
}

void sub_100051978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_100052A48(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 firstObject];
  v4 = [v3 isEqual:&off_1000D8998];

  if ((v4 & 1) == 0)
  {
    if ((*(a1 + 48) - 13) <= 1)
    {
      v5 = [*(*(a1 + 32) + 208) objectForKeyedSubscript:*(a1 + 40)];
      [v5 removeAllObjects];
    }

    v6 = [*(*(a1 + 32) + 208) objectForKeyedSubscript:*(a1 + 40)];

    if (!v6)
    {
      v7 = +[NSMutableArray array];
      [*(*(a1 + 32) + 208) setObject:v7 forKeyedSubscript:*(a1 + 40)];
    }

    v8 = [*(*(a1 + 32) + 208) objectForKeyedSubscript:*(a1 + 40)];
    v9 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v8 addObject:v9];

    v10 = *(a1 + 32);
    v11 = *(a1 + 56);

    [v10 storeTaskInfoUpdates:v11];
  }
}

double *sub_100052C3C(double *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(result + 4);
  if ((result[6] & 1) != 0 || v2 > *(v3 + 152) + 5.0)
  {
    *(v3 + 152) = v2;
    result = [*(*(result + 4) + 208) count];
    if (result)
    {
      v4 = *(v1 + 4);
      v5 = *(v4 + 256);
      if (v5)
      {
        v6 = *(v4 + 40);
        v7 = *(v4 + 240);
        v8 = [*(v4 + 208) copy];
        [v5 _updateDBEntriesForTasksInSession:v6 taskInfos:v7 updates:v8];

        v4 = *(v1 + 4);
      }

      v9 = *(v4 + 208);

      return [v9 removeAllObjects];
    }
  }

  else
  {
    *(v3 + 8) = 1;
  }

  return result;
}

void sub_1000537A0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = [*(a1 + 40) bundleIdentifier];
  if (![v2 isEqualToString:?] || (objc_msgSend(*(a1 + 32), "clientIsActive") & 1) != 0 || (objc_msgSend(*(a1 + 32), "sessionHasOutstandingTasks") & 1) != 0 || (v3 = *(a1 + 32), *(v3 + 14) != 1))
  {
  }

  else
  {
    v4 = [*(v3 + 224) count];

    if (v4)
    {
      v5 = *(a1 + 32);

      [v5 wakeUpClient:1];
    }
  }
}

id sub_100053934(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [*(a1 + 40) bundleIdentifier];
    v5 = v4;
    v6 = *(a1 + 48);
    if (*(*(a1 + 32) + 192))
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    v9 = 138544130;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> notified associated application %{public}@(%d) was suspended, XPC(%c)", &v9, 0x22u);
  }

  result = [*(*(a1 + 32) + 192) processIdentifier];
  if (result == *(a1 + 48))
  {
    [*(*(a1 + 32) + 192) invalidate];
    return [*(a1 + 32) clientDidDisconnect];
  }

  return result;
}

void sub_100055328(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100056118(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100056A6C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100056E24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100056ED4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_100057BC0(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000581D4()
{
  v9[1] = 1;
  [0 UTF8String];
  [@"systemgroup.com.apple.nsurlstoragedresources" UTF8String];
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = [NSURL fileURLWithFileSystemRepresentation:v0 isDirectory:1 relativeToURL:0];
    free(v0);
    if (v1)
    {
      v2 = [v1 URLByAppendingPathComponent:@"Library" isDirectory:1];
      v3 = +[NSFileManager defaultManager];
      v9[0] = 0;
      v4 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:v9];
      v5 = v9[0];

      if ((v4 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v8 = [v5 code];
        *buf = 138412802;
        v11 = v2;
        v12 = 2112;
        v13 = v5;
        v14 = 2048;
        v15 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't create directory at %@, error: %@ [%ld]", buf, 0x20u);
      }

      v6 = [(__CFString *)v2 URLByAppendingPathComponent:@"dafsaData.bin" isDirectory:0];

      goto LABEL_12;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = @"systemgroup.com.apple.nsurlstoragedresources";
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Error getting the system group container for Group ID %@ ", buf, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get the system container for nsurlstoraged", buf, 2u);
  }

  v6 = 0;
LABEL_12:

  return v6;
}

void sub_100058830(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      v7 = a2;
      v3 = "Asset download failed. Result  %ld";
LABEL_7:
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, v3, &v6, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) queryAndFindBestAsset:1];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 40);
      v6 = 134217984;
      v7 = v5;
      v3 = "Asset download completed. Asset Version downloaded is %lu";
      goto LABEL_7;
    }
  }
}

void sub_100058F28(uint64_t a1, uint64_t a2)
{
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v9 = 138412546;
      v10 = v5;
      v11 = 2048;
      v12 = a2;
      v6 = "Failed to purge the asset with version %@. Purge result = %ld";
      v7 = 22;
LABEL_7:
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, v6, &v9, v7);
    }
  }

  else if (v4)
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    v6 = "Asset version %@ purged";
    v7 = 12;
    goto LABEL_7;
  }
}

void sub_1000591C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Catalogue fetch failed with result %ld. Fall back to the currently installed asset", &v7, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Catalogue fetch succeeded", &v7, 2u);
    }

    v4 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.TopLevelDomainDafsa"];
    [v4 returnTypes:2];
    [v4 queryMetaDataSync];
    v5 = *(a1 + 32);
    v6 = [v4 results];
    [v5 findBestAssetFrom:v6 skipDownload:*(a1 + 40)];
  }
}

void sub_100059480(id a1)
{
  v1 = objc_alloc_init(TLDMobileAssetManager);
  v2 = qword_1000EB178;
  qword_1000EB178 = v1;

  v3 = dispatch_get_global_queue(17, 0);
  dispatch_async(v3, &stru_1000D5998);
}

void sub_1000596C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (objc_opt_respondsToSelector())
        {
          [v7 *(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

void sub_1000597F8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000598C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (objc_opt_respondsToSelector())
        {
          [v7 *(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

void sub_1000599F4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100059AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100059B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100059CD8(uint64_t a1)
{
  v2 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
  [v2 launchProcessWithIdentifier:*(a1 + 32) sessionIdentifier:*(a1 + 40)];
}

void sub_100059F20(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v3);
  _Unwind_Resume(a1);
}

void sub_10005A274(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_10005A328(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_10005A61C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10005A7AC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

id sub_10005A7D8(uint64_t a1)
{
  [*(a1 + 32) _onqueue_resetRequestDelay];
  v2 = *(*(a1 + 32) + 72);

  return [v2 _onqueue_resetRequestDelay];
}

id sub_10005AA84(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    *buf = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = 64800;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Application %@ has been in background for %lu seconds. Will reevaluate discretionary downloads", buf, 0x16u);
  }

  [*(a1 + 32) setIsInTransitionalDiscretionaryPeriod:0];
  v5.receiver = *(a1 + 32);
  v5.super_class = NDSpringBoardApplication;
  return objc_msgSendSuper2(&v5, "invokeSelectorForAllObservers:", "applicationEndedTransitionalDiscretionaryBackgroundPeriod:");
}

void sub_10005AC50(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_10005AE38(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

id sub_10005AE70(uint64_t a1)
{
  [*(a1 + 32) _onqueue_resetRequestDelay];
  v2 = *(*(a1 + 32) + 72);

  return [v2 _onqueue_resetRequestDelay];
}

void sub_10005B104(uint64_t a1)
{
  [*(a1 + 32) currentRequestDelay];
  v2 = *(a1 + 32);
  if (v3 == 0.0)
  {
    v4 = 60.0;
  }

  else
  {
    [v2 currentRequestDelay];
    v6 = v5 + v5;
    v4 = 3600.0;
    if (v6 <= 3600.0)
    {
      [*(a1 + 32) currentRequestDelay];
      v4 = v7 + v7;
    }

    v2 = *(a1 + 32);
  }

  [v2 setCurrentRequestDelay:v4];
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v9[1];
    [v9 currentRequestDelay];
    v18 = 138412546;
    v19 = v10;
    v20 = 2048;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set request delay for %@ to %f", &v18, 0x16u);
  }

  v13 = *(a1 + 32);
  v12 = a1 + 32;
  [v13 setupDelayTimer];
  v14 = *v12;
  v15 = *(*v12 + 40);
  [v14 currentRequestDelay];
  v17 = dispatch_time(0x8000000000000000, ((v16 + v16) * 1000000000.0));
  dispatch_source_set_timer(v15, v17, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

void sub_10005B468(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10005B4AC(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
  v2 = dispatch_queue_create("com.apple.nsurlsessiond.NDSpringBoardApplication.request-delay-queue", v1);
  v3 = qword_1000EB1A0;
  qword_1000EB1A0 = v2;
}

void sub_10005B688(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_10005B998(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_10005BA4C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_10005BD10(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_10005BE58(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_10005C040(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_10005C244(uint64_t a1)
{
  [*(a1 + 32) currentRequestDelay];
  v2 = *(a1 + 32);
  if (v3 == 0.0)
  {
    v4 = 60.0;
  }

  else
  {
    [v2 currentRequestDelay];
    v6 = v5 + v5;
    v4 = 3600.0;
    if (v6 <= 3600.0)
    {
      [*(a1 + 32) currentRequestDelay];
      v4 = v7 + v7;
    }

    v2 = *(a1 + 32);
  }

  [v2 setCurrentRequestDelay:v4];
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v9[1];
    [v9 currentRequestDelay];
    v18 = 138412546;
    v19 = v10;
    v20 = 2048;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set request delay for %@ to %f", &v18, 0x16u);
  }

  v13 = *(a1 + 32);
  v12 = a1 + 32;
  [v13 setupDelayTimer];
  v14 = *v12;
  v15 = *(*v12 + 40);
  [v14 currentRequestDelay];
  v17 = dispatch_time(0x8000000000000000, ((v16 + v16) * 1000000000.0));
  dispatch_source_set_timer(v15, v17, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

void sub_10005C5E4(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
  v2 = dispatch_queue_create("com.apple.nsurlsessiond.NDExtension.request-delay-queue", v1);
  v3 = qword_1000EB1B0;
  qword_1000EB1B0 = v2;
}

void sub_10005C7A4(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_10005C8A8(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_10005C908(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_1000EB180;
  qword_1000EB180 = v1;

  v3 = +[NSMutableDictionary dictionary];
  v4 = qword_1000EB188;
  qword_1000EB188 = v3;

  v5 = +[NSMutableDictionary dictionary];
  v6 = qword_1000EB190;
  qword_1000EB190 = v5;
}

uint64_t sub_10005DE74(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10005E698(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10005F938(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v7 = [v5 host];
  if ([v7 hasPrefix:@"__com.apple.CFNetwork.prefix__"])
  {
    *(v23 + 24) = 1;
    v8 = *(a1 + 32);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005FBAC;
    v19[3] = &unk_1000D5A80;
    v20 = v7;
    v21 = &v22;
    [v8 enumerateObjectsUsingBlock:v19];
  }

  if (*(v23 + 24) == 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v6 allValues];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          v14 = +[NSURLCredentialStorage sharedCredentialStorage];
          [v14 removeCredential:v13 forProtectionSpace:v5];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
      }

      while (v10);
    }
  }

  _Block_object_dispose(&v22, 8);
}

void sub_10005FB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10005FBAC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) hasSuffix:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void sub_100060094(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000EB1C8;
  qword_1000EB1C8 = v1;

  if (+[NDUserSyncStakeholder EDUMode])
  {
    v3 = +[UMUserManager sharedManager];
    [v3 registerUserSyncStakeholder:qword_1000EB1C8 withMachServiceName:@"com.apple.nsurlsessiond.usermanager.sync"];
  }
}

id sub_100061590(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(*(a1 + 32) + 24);

  return [v2 removeAllObjects];
}

void sub_10006171C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];

  if (!v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = *(a1 + 40);
    v13 = v3;
    [*(*(a1 + 32) + 16) setObject:? forKeyedSubscript:?];
  }

  v5 = *(a1 + 48);
  if (v5 && ([v5 user], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [*(a1 + 48) user];
    v8 = *(a1 + 40);
    v14 = v7;
    [*(*(a1 + 32) + 24) setObject:? forKeyedSubscript:?];

    v9 = *(a1 + 48);
    v15 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
    v10 = [*(a1 + 48) user];
    [v15 setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 32) + 24);

    [v12 removeObjectForKey:v11];
  }
}

void sub_100061CD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061FC8;
  block[3] = &unk_1000D6130;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_sync(v6, block);
}

void sub_100061D98(uint64_t a1)
{
  v2 = [*(a1 + 48) user];
  v3 = *(a1 + 40);
  v9 = v2;
  [*(*(a1 + 32) + 24) setObject:? forKeyedSubscript:?];

  v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];

  if (!v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = *(a1 + 40);
    v10 = v5;
    [*(*(a1 + 32) + 16) setObject:? forKeyedSubscript:?];
  }

  v7 = *(a1 + 48);
  v11 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v8 = [*(a1 + 48) user];
  [v11 setObject:v7 forKeyedSubscript:v8];
}

uint64_t sub_100061EC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100061EDC(void *a1)
{
  v6 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v3 = v6 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:v6];
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v5);
  if (v4)
  {
  }
}

void sub_100061FC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([v2 user], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 32) user];
    v5 = *(a1 + 48);
    v13 = v4;
    [*(*(a1 + 40) + 24) setObject:? forKeyedSubscript:?];

    v6 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 48)];

    if (!v6)
    {
      v7 = +[NSMutableDictionary dictionary];
      v8 = *(a1 + 48);
      v14 = v7;
      [*(*(a1 + 40) + 16) setObject:? forKeyedSubscript:?];
    }

    v9 = *(a1 + 32);
    v15 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 48)];
    v10 = [*(a1 + 32) user];
    [v15 setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 40) + 24);

    [v12 removeObjectForKey:v11];
  }
}

void sub_100062144(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "An XPC error occurred when obtaining the default credential: %@", &v4, 0xCu);
  }
}

void sub_100062328(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [*(a1 + 48) user];
  [v3 removeObjectForKey:v2];
}

void sub_1000624F8(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];

  if (!v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = a1[5];
    v7 = v3;
    [*(a1[4] + 16) setObject:? forKeyedSubscript:?];
  }

  v5 = a1[6];
  if (v5)
  {
    v8 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
    v6 = [a1[6] user];
    [v8 setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_1000627C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000628C8;
  v7[3] = &unk_1000D6420;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_sync(v5, v7);
}

void sub_100062868(uint64_t a1)
{
  v2 = [NSDictionary dictionaryWithDictionary:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1000628C8(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);

  return [v3 addEntriesFromDictionary:v2];
}

void sub_100062914(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "An XPC error occurred when obtaining all credentials %@", &v4, 0xCu);
  }
}

void sub_100062BCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062CE4;
  block[3] = &unk_1000D6130;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_sync(v6, block);
}

void sub_100062C8C(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100062CE4(void *a1)
{
  v2 = [NSMutableDictionary dictionaryWithDictionary:a1[6]];
  v3 = a1[5];
  v4 = v2;
  [*(a1[4] + 16) setObject:? forKeyedSubscript:?];
}

void sub_100062D64(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "An XPC error occurred when obtaining a credential: %@", &v4, 0xCu);
  }
}

void sub_1000642DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 continueLoad];
  v6 = [v7 _actualAuthHeaders];
  (*(v4 + 16))(v4, v5, v6, 0);
}

void sub_10006505C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) currentRequest];
    v8 = [v7 URL];
    v9 = [NSError _web_errorWithDomain:NSURLErrorDomain code:-997 URL:v8];

    [*(a1 + 32) _nsurlsessionproxy_cancelWithError:v9];
  }

  if ([*(*(a1 + 40) + 16) _requiresSustainedDataDelivery])
  {
    v10 = *(*(a1 + 40) + 72);
    v11 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = [v12 unsignedIntegerValue];

    v14 = [*(a1 + 48) length];
    v15 = v13 - v14;
    if (v13 == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = [NSNumber numberWithUnsignedInteger:v15];
    }

    v17 = *(*(a1 + 40) + 72);
    v18 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
    [v17 setObject:v16 forKeyedSubscript:v18];

    if (v13 != v14)
    {
    }

    v19 = qword_1000EB1D8;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 40) descriptionForTaskWithIdentifier:*(a1 + 64)];
      v28 = 138543618;
      v29 = v20;
      v30 = 2048;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ data acknowledged, now has %lu bytes pending acknowledgement", &v28, 0x16u);
    }

    if (!(v15 >> 19))
    {
      v21 = *(*(a1 + 40) + 80);
      v22 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
      v23 = [v21 objectForKeyedSubscript:v22];

      if (v23)
      {
        v24 = qword_1000EB1D8;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [*(a1 + 40) descriptionForTaskWithIdentifier:*(a1 + 64)];
          v28 = 138543362;
          v29 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ acknowledging pending data", &v28, 0xCu);
        }

        v26 = *(*(a1 + 40) + 80);
        v27 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
        [v26 setObject:0 forKeyedSubscript:v27];

        v23[2](v23);
      }
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100065774(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) currentRequest];
    v8 = [v7 URL];
    v9 = [NSError _web_errorWithDomain:NSURLErrorDomain code:-997 URL:v8];

    [*(a1 + 32) _nsurlsessionproxy_cancelWithError:v9];
  }

  v10 = v5;
  v11 = [v10 disposition];
  v12 = qword_1000EB1D8;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) descriptionForTaskWithIdentifier:*(a1 + 56)];
    v14 = 138543618;
    v15 = v13;
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ received response disposition: %d", &v14, 0x12u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100065C90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) currentRequest];
    v8 = [v7 URL];
    v9 = [NSError _web_errorWithDomain:NSURLErrorDomain code:-997 URL:v8];

    [*(a1 + 32) _nsurlsessionproxy_cancelWithError:v9];
    v10 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = v5;
    v12 = [v11 request];
    v13 = [v12 _actualRequest];

    v14 = qword_1000EB1D8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 48) descriptionForTaskWithIdentifier:*(a1 + 64)];
      v16 = 138543618;
      v17 = v15;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ client responded to redirect with request %@", &v16, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
    if (!v13)
    {
      [*(a1 + 32) cancel];
    }
  }
}

void sub_100066DD0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) _nsurlsessionproxy_clearError];
  v6 = v5;
  if (![v6 hasRequest])
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = [v6 request];
  v8 = [v7 _actualRequest];

  if (v8)
  {
    if ([*(a1 + 40) shouldRetainInfraWiFi])
    {
      [*(a1 + 40) retainInfraWiFiForTaskWithIdentifier:*(a1 + 56)];
    }

    if ([*(a1 + 40) shouldRetainBTLinkAssertion])
    {
      [*(a1 + 40) retainBTLinkAssertionWithIdentifier:*(a1 + 56)];
    }
  }

  if (a3)
  {
LABEL_10:
    v9 = [*(a1 + 32) currentRequest];
    v10 = [v9 URL];
    v11 = [NSError _web_errorWithDomain:NSURLErrorDomain code:-997 URL:v10];

    [*(a1 + 32) _nsurlsessionproxy_cancelWithError:v11];
  }

LABEL_11:
  if ([v6 hasBodyStream])
  {
    v24 = 0;
    v25 = 0;
    [NSStream getBoundStreamsWithBufferSize:0x20000 inputStream:&v25 outputStream:&v24];
    v12 = v25;
    v13 = v24;
    v14 = *(*(a1 + 40) + 48);
    v15 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    [v14 setObject:v13 forKeyedSubscript:v15];

    [v13 open];
    v16 = [v8 mutableCopy];
    [v16 setHTTPBodyStream:v12];

    v8 = v16;
  }

  else
  {
    v17 = *(*(a1 + 40) + 56);
    v18 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = [v8 mutableCopy];
      v21 = *(*(a1 + 40) + 56);
      v22 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
      v23 = [v21 objectForKeyedSubscript:v22];
      [v20 setHTTPBodyStream:v23];

      v8 = v20;
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000673D8(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if ([v10 hasDisposition])
  {
    [v10 disposition];
    if ([v10 hasCredential])
    {
      v5 = [v10 credential];
      v6 = [v5 _actualCredential];
    }

    else
    {
      v6 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (a3)
    {
      v7 = [*(a1 + 32) currentRequest];
      v8 = [v7 URL];
      v9 = [NSError _web_errorWithDomain:NSURLErrorDomain code:-997 URL:v8];

      [*(a1 + 32) _nsurlsessionproxy_cancelWithError:v9];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100067A80(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(a1 + 32) + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067B74;
  block[3] = &unk_1000D5D50;
  v14 = v7;
  v15 = v6;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v16 = v9;
  v17 = v10;
  v18 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  dispatch_async(v8, block);
}

void sub_100067B74(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = qword_1000EB1D8;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = [v3 code];
      v5 = *(a1 + 64);
      *buf = 138412802;
      v14 = v3;
      v15 = 2048;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received error %@ [%ld] reading from streamTask %@", buf, 0x20u);
    }

    v7 = *(a1 + 64);
    v6 = (a1 + 64);
    [v7 closeRead];
    [*v6 closeWrite];
    [*v6 cancel];
  }

  else if ([*(a1 + 40) length])
  {
    v8 = [*(a1 + 40) _createDispatchData];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    tcp_connection_write();
  }

  else
  {
    v9 = *(a1 + 48);

    _tcp_connection_write_eof(v9);
  }
}

id sub_100067D80(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7[0] = 67109376;
      v7[1] = a2;
      v8 = 2048;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received error %d writing to tcp_connection %p", v7, 0x12u);
    }
  }

  return [*(a1 + 40) performForwardingFromStreamTask:*(a1 + 48) toTCPConnection:*(a1 + 32)];
}

void sub_100067F3C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      *buf = 67109376;
      v19 = a3;
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received error %d reading from tcp_connection %p", buf, 0x12u);
    }

    goto LABEL_6;
  }

  if (!dispatch_data_get_size(v5))
  {
LABEL_6:
    [*(a1 + 32) closeRead];
    [*(a1 + 32) closeWrite];
    [*(a1 + 32) cancel];
    goto LABEL_7;
  }

  v9 = *(a1 + 32);
  v10 = [v9 _taskGroup];
  v11 = [v10 _groupConfiguration];
  [v11 timeoutIntervalForRequest];
  v13 = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100068140;
  v15[3] = &unk_1000D5CD8;
  v14 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v14;
  v17 = *(a1 + 32);
  [v9 writeData:v6 timeout:v15 completionHandler:v13];

LABEL_7:
}

void sub_100068140(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000681E8;
  block[3] = &unk_1000D6130;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t sub_10006856C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100068584(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = [*(a1 + 40) host];
    v7 = [v5 streamTaskWithHostName:v6 port:{objc_msgSend(*(a1 + 40), "port")}];

    [v7 resume];
    v8 = *(*(a1 + 32) + 144);
    v9 = tcp_connection_create_with_connected_fd();
    tcp_connection_allow_client_socket_access();
    v11 = v9;
    v12 = *(a1 + 32);
    v13 = v7;
    tcp_connection_set_event_handler();
    tcp_connection_start();
    [*(*(a1 + 32) + 88) setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:v13];
    [*(*(a1 + 32) + 96) setObject:v11 forKeyedSubscript:v13];
    v10 = objc_retainBlock(*(a1 + 48));
    [*(*(a1 + 32) + 104) setObject:v10 forKeyedSubscript:v13];
  }
}

void sub_100068768(uint64_t a1, unsigned int a2)
{
  v4 = qword_1000EB1D8;
  if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218240;
    v8 = v5;
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received tcp_connection (%p) event %lu", &v7, 0x16u);
  }

  if (a2 == 3)
  {
    [*(a1 + 48) closeRead];
    [*(a1 + 48) closeWrite];
    [*(a1 + 48) cancel];
    v6 = *(a1 + 32);
    tcp_connection_cancel();
  }

  else if (a2 == 1)
  {
    [*(a1 + 40) performForwardingFromTCPConnection:*(a1 + 32) toStreamTask:*(a1 + 48)];
    [*(a1 + 40) performForwardingFromStreamTask:*(a1 + 48) toTCPConnection:*(a1 + 32)];
  }
}

void sub_100068A5C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) bodyData];
  if ([v3 length])
  {
    v4 = [v3 bytes];
    v5 = [v3 length];
    if (v5)
    {
      v7 = 0;
      *&v6 = 138544130;
      v20 = v6;
      do
      {
        if ([*(a1 + 40) streamStatus] > 4)
        {
          break;
        }

        v8 = [*(a1 + 40) write:&v4[v7] maxLength:&v5[-v7]];
        v9 = v8;
        if (v8 < 1)
        {
          v10 = qword_1000EB1D8;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v21 = [*(a1 + 48) descriptionForTaskWithIdentifier:*(a1 + 80)];
            v16 = [*(a1 + 40) streamError];
            v17 = [*(a1 + 40) streamError];
            v18 = [v17 code];
            *buf = v20;
            v23 = v21;
            v24 = 1024;
            v25 = v9;
            v26 = 2112;
            v27 = v16;
            v28 = 2048;
            v29 = v18;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ writing to stream returned %d, error %@ [%ld]", buf, 0x26u);
          }

          [*(a1 + 40) close];
          v11 = [*(a1 + 40) streamError];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v14 = [*(a1 + 56) currentRequest];
            v15 = [v14 URL];
            v13 = [NSError _web_errorWithDomain:NSURLErrorDomain code:-1017 URL:v15];
          }

          [*(a1 + 56) _nsurlsessionproxy_cancelWithError:v13];
        }

        else
        {
          v7 += v8;
        }
      }

      while (v7 < v5);
    }
  }

  else
  {
    [*(a1 + 40) close];
  }

  v19 = *(a1 + 64);
  (*(*(a1 + 72) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10006A340(uint64_t a1)
{
  v2 = +[PDURLSessionProxyServerService sharedService];
  v3 = [v2 isConnected];

  if (v3 && [*(*(a1 + 32) + 136) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 136) removeObject:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 resendPendingMessage:v5];
  }
}

void sub_10006B0D8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [__NSCFURLSessionTaskInfo alloc];
  v7 = [v5 _uniqueIdentifier];
  v8 = [v6 initWithDataTask:v5 uniqueIdentifier:v7 bundleID:0 sessionID:*(a1 + 32)];

  [v8 setCountOfBytesSent:{objc_msgSend(v5, "countOfBytesSent")}];
  [v8 setCountOfBytesReceived:{objc_msgSend(v5, "countOfBytesReceived")}];
  [v8 setCountOfBytesExpectedToSend:{objc_msgSend(v5, "countOfBytesExpectedToSend")}];
  [v8 setCountOfBytesExpectedToReceive:{objc_msgSend(v5, "countOfBytesExpectedToReceive")}];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];
}

void sub_10006B640(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_10006B6CC(id a1)
{
  v2 = +[_DASScheduler sharedScheduler];
  v1 = [_DASActivityGroup groupWithName:@"com.apple.nsurlsessiond.NSURLSessionProxyPool" maxConcurrent:2];
  [v2 createActivityGroup:v1];
}

uint64_t sub_10006CE20(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
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

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PDURLSessionProxySessionMessage);
        objc_storeStrong((a1 + 16), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100077B9C(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10006D3C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 101) == 1)
  {
    if ([*(v1 + 8) startedUserInitiated])
    {
      v3 = *(a1 + 32);
      if ((v3[100] & 1) == 0)
      {
        v4 = [v3 delegate];
        [v4 taskMonitor:*(a1 + 32) updateTaskPriority:objc_msgSend(*(*(a1 + 32) + 8) reason:{"identifier"), 9}];
      }
    }
  }
}

void sub_10006D4F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[101] & 1) == 0 && v2[103] == 1)
  {
    [v2 startThroughputMonitoring];
    v2 = *(a1 + 32);
  }

  v3 = [v2 delegate];
  [v3 taskMonitor:*(a1 + 32) updateTaskPriority:objc_msgSend(*(*(a1 + 32) + 8) reason:{"identifier"), 0xFFFFFFFFLL}];
}

void sub_10006D600(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[101] & 1) == 0)
  {
    [v2 stopThroughputMonitoring];
    v2 = *(a1 + 32);
  }

  v6 = [v2 delegate];
  v3 = *(a1 + 32);
  if (*(v3 + 101) != 1 || (*(v3 + 102) & 1) != 0)
  {
    goto LABEL_7;
  }

  if (*(v3 + 100))
  {
    *(v3 + 112) = 300;
    *(*(a1 + 32) + 101) = 0;
    [*(a1 + 32) stopThroughputMonitoring];
    v3 = *(a1 + 32);
LABEL_7:
    v4 = [*(v3 + 8) identifier];
    v5 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  v4 = [*(v3 + 8) identifier];
  v5 = 6;
LABEL_8:
  [v6 taskMonitor:v3 updateTaskPriority:v4 reason:v5];
}

void sub_10006D774(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 101) == 1)
  {
    v3 = *(v1 + 16);
    v4 = [*(a1 + 40) bundleIdentifier];
    LODWORD(v3) = [v3 isEqualToString:?];

    if (v3)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 taskMonitor:*(a1 + 32) terminateTask:objc_msgSend(*(*(a1 + 32) + 8) reason:{"identifier"), 2}];
    }
  }
}

void sub_10006D8E0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) bundleIdentifier];
  LODWORD(v2) = [v2 isEqualToString:?];

  if (v2)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 taskMonitor:*(a1 + 32) terminateTask:objc_msgSend(*(*(a1 + 32) + 8) reason:{"identifier"), 1}];
  }
}

id sub_10006D9A8(uint64_t a1)
{
  v2 = IOPSDrawingUnlimitedPower();
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 stopThroughputMonitoring];
  }

  else
  {

    return [v3 startThroughputMonitoring];
  }
}

void sub_10006DBF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3 > 7)
  {
    dispatch_source_cancel(*(v2 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  else
  {
    *(v2 + 64) = v3 + 1;
    v4 = *(a1 + 32);

    [v4 setThroughputTimerForCurrentInterval];
  }
}

void sub_10006E114(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v31 = a2;
  v29 = a3;
  v13 = a4;
  v28 = a5;
  v14 = a6;
  v27 = a7;
  v30 = v13;
  v15 = [v14 _incompleteCurrentTaskTransactionMetrics];
  v16 = [v14 backgroundSchedulingPriority];
  v32 = objc_opt_respondsToSelector();
  if (v32)
  {
    v17 = [v14 _sourceApplicationBundleIdentifierForMobileAsset];
    v24 = v17;
    if (v17)
    {
      v13 = v17;
    }
  }

  v26 = a1;
  v25 = [v15 countOfRequestHeaderBytesSent];
  v18 = [v15 countOfRequestBodyBytesSent];
  v19 = [v15 countOfResponseHeaderBytesReceived];
  v20 = [v15 countOfResponseBodyBytesReceived];
  v21 = [v15 _interfaceName];
  v22 = [v14 state];
  v23 = [v14 error];
  sub_100002740(v26, v31, v29, v13, v28, v27, v25 + v18, v19 + v20, v21, (v16 & 0xFFFFFFFFFFFFFFFELL) == 2, 0, v22 == 3, 0, v23);

  if (v32)
  {
  }
}

void sub_10006E2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, id a19)
{
  if (*(v23 - 84))
  {
  }

  _Unwind_Resume(a1);
}

void sub_10006E370(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, char a8)
{
  v41 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v39 = v17;
  v40 = v15;
  v37 = v16;
  v38 = a7;
  v19 = [v18 _metrics];
  v36 = a8;
  v20 = [v19 _daemon_currentTransactionMetrics];

  v21 = [v20 _daemon_connectionMetrics];
  v22 = [v18 _sourceApplicationBundleIdentifierForMobileAsset];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v16;
  }

  v34 = v24;
  v35 = a1;
  v33 = [v20 _daemon_requestHeaderSize];
  v32 = [v20 _daemon_requestBodyTransferSize];
  v31 = [v20 _daemon_responseHeaderSize];
  v25 = [v20 _daemon_responseBodyTransferSize];
  v26 = [v21 _daemon_interfaceName];
  v27 = [v21 _daemon_isDiscretionary];
  v28 = [v21 _daemon_isDataBudgetingEnabled];
  v29 = [v18 state];
  v30 = [v18 error];
  sub_100002740(v35, v41, v40, v34, v39, v38, v33 + v32, v31 + v25, v26, v27, v28, v29 == 3, v36, v30);
}

uint64_t sub_10006E5E0(double a1)
{
  sub_100088B68(a1);
  v2 = *(v1 + 2360);
  result = objc_opt_class();
  if (result)
  {
    return os_variant_has_internal_diagnostics();
  }

  return result;
}

uint64_t sub_10006F354(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v35 & 0x7F) << v25;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_52:
          *(a1 + 8) = v31;
          goto LABEL_53;
        }

        if (v13 != 4)
        {
LABEL_25:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_53;
        }

        v14 = PBReaderReadData();
        v15 = 24;
      }

      else
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v34 & 0x7F) << v18;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_48:
          *(a1 + 32) = v24;
          goto LABEL_53;
        }

        if (v13 != 2)
        {
          goto LABEL_25;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_53:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10006FC64(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10006FF4C(uint64_t a1)
{
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v2 = *(a1 + 32);

    dispatch_semaphore_signal(v2);
  }

  else
  {
    v3 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device is locked - waiting", v4, 2u);
    }
  }
}

uint64_t sub_10006FFE4(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_10007000C(uint64_t a1)
{
  result = notify_cancel(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

void sub_1000700E0(uint64_t a1)
{
  [*(a1 + 32) bundleIDsForAppProxies:*(a1 + 40)];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = *v14;
    *&v4 = 138412290;
    v12 = v4;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{v7, v12, v13}];
        v9 = v8 == 0;

        if (!v9)
        {
          v10 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v12;
            v18 = v7;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bundle %@ uninstalled. Need to obliterate", buf, 0xCu);
          }

          v11 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
          [v11 obliterate];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v3);
  }
}

void sub_100070354(uint64_t a1)
{
  [*(a1 + 32) bundleIDsForAppProxies:*(a1 + 40)];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = *v14;
    *&v4 = 138412290;
    v12 = v4;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{v7, v12, v13}];
        v9 = v8 == 0;

        if (!v9)
        {
          v10 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v12;
            v18 = v7;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bundle %@ re-installed. Need to adjust download paths", buf, 0xCu);
          }

          v11 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
          [v11 clientApplicationWasReinstalled];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v3);
  }
}

uint64_t sub_100070888(void *a1)
{
  [*(a1[4] + 8) removeObjectForKey:a1[5]];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100070A1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100070A34(void *a1)
{
  v5 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v2 = [v5 getSessionWithIdentifier:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000712B8(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) userInfo];
  v5 = qword_1000EB210;
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      v7 = [v4 uuid];
      v8 = *(a1 + 40);
      v9 = [v4 identifier];
      v13 = 138543874;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@>.<%@>.<%@> Lost connection to app -- connection interrupted", &v13, 0x20u);
    }
  }

  else if (v6)
  {
    v10 = [v4 uuid];
    v11 = *(a1 + 40);
    v12 = [v4 identifier];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@>.<%@>.<%@> Lost connection to app -- connection invalidated", &v13, 0x20u);
  }

  [v4 clientDidDisconnect];
  [*(a1 + 32) setUserInfo:0];
}

int64_t sub_100071BBC(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  [v4 creationTime];
  v6 = [NSNumber numberWithDouble:?];
  [v5 creationTime];
  v7 = [NSNumber numberWithDouble:?];
  v8 = [v6 compare:v7];

  return v8;
}

void sub_100072244(id a1)
{
  v1 = objc_alloc_init(Daemon);
  v2 = qword_1000EB1E8;
  qword_1000EB1E8 = v1;
}

void sub_100072EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100072F78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100072F90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100073D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100073D58(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isValidAssertion:a3 withName:*(a1 + 40)];
  if (result)
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void sub_100073FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_100074008(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [RBSProcessPredicate predicateMatchingBundleIdentifier:a1[5]];
    v11 = [RBSProcessHandle handleForPredicate:v5 error:0];

    v6 = [v11 currentState];
    v7 = [v6 endowmentNamespaces];
    v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 containsObject:@"com.apple.frontboard.visibility"]);
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(a1[4] + 32) setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:a1[5]];
  }
}

void sub_100074214(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  [*(a1 + 32) monitoredBundleIDsUpdated];
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = [*(*(a1 + 32) + 48) count];
    v5 = *(*(a1 + 32) + 48);
    v6 = 138543874;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopped monitoring app %{public}@, now %lu total %{public}@", &v6, 0x20u);
  }
}

void sub_1000743CC(uint64_t a1)
{
  if (([*(*(a1 + 32) + 48) containsObject:*(a1 + 40)] & 1) == 0)
  {
    v2 = [*(a1 + 32) getBackgroundSettingsAppList];
    v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
    if (v3)
    {
      v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];
    }

    else
    {
      v4 = &__kCFBooleanTrue;
    }

    [*(*(a1 + 32) + 40) setObject:v4 forKeyedSubscript:*(a1 + 40)];
    if (v3)
    {
    }

    [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
    [*(a1 + 32) monitoredBundleIDsUpdated];
    v5 = qword_1000EB210;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [*(*(a1 + 32) + 48) count];
      v8 = *(*(a1 + 32) + 48);
      v9 = 138543874;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Started monitoring app %{public}@, now %lu total %{public}@", &v9, 0x20u);
    }
  }
}

void sub_100074630(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  [v2 removeObject:a1[6]];

  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v5 = [*(a1[4] + 24) objectForKeyedSubscript:v4];
    v6 = 138543618;
    v7 = v4;
    v8 = 2048;
    v9 = [v5 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removed observer for app %{public}@, now %lu observers", &v6, 0x16u);
  }
}

void sub_10007481C(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];

  if (!v2)
  {
    v3 = +[NSMutableArray array];
    [*(a1[4] + 24) setObject:v3 forKeyedSubscript:a1[5]];
  }

  v4 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  [v4 addObject:a1[6]];

  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[5];
    v7 = [*(a1[4] + 24) objectForKeyedSubscript:v6];
    v8 = 138543618;
    v9 = v6;
    v10 = 2048;
    v11 = [v7 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Added observer for app %{public}@, now %lu observers", &v8, 0x16u);
  }
}

void sub_100074A50(uint64_t a1)
{
  v2 = [*(a1 + 32) identity];
  v3 = [v2 embeddedApplicationIdentifier];

  if (v3 || ([*(a1 + 32) bundle], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "identifier"), v3 = objc_claimAutoreleasedReturnValue(), v4, v3))
  {
    v5 = [*(a1 + 40) previousState];
    v6 = [v5 endowmentNamespaces];
    v7 = [v6 containsObject:@"com.apple.frontboard.visibility"];

    v8 = [*(a1 + 40) state];
    v9 = [v8 endowmentNamespaces];
    v10 = [v9 containsObject:@"com.apple.frontboard.visibility"];

    if (!(v10 & 1 | ((v7 & 1) == 0)))
    {
      v11 = [*(*(a1 + 48) + 24) objectForKeyedSubscript:v3];

      v12 = qword_1000EB210;
      v13 = os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          *buf = 138543362;
          v72 = v3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Application %{public}@ no longer foreground", buf, 0xCu);
        }

        [*(*(a1 + 48) + 24) objectForKeyedSubscript:v3];
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v14 = v64 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v63 objects:v70 count:16];
        if (v15)
        {
          v16 = *v64;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v64 != v16)
              {
                objc_enumerationMutation(v14);
              }

              [*(*(&v63 + 1) + 8 * i) applicationNoLongerInForeground:v3];
            }

            v15 = [v14 countByEnumeratingWithState:&v63 objects:v70 count:16];
          }

          while (v15);
        }
      }

      else if (v13)
      {
        *buf = 138543362;
        v72 = v3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Application %{public}@ no longer foreground, and no observers", buf, 0xCu);
      }
    }

    if (v10)
    {
      v18 = [*(*(a1 + 48) + 24) objectForKeyedSubscript:v3];
      v19 = v18 == 0;

      v20 = qword_1000EB210;
      v21 = os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT);
      if (!v19)
      {
        if (v21)
        {
          *buf = 138543362;
          v72 = v3;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Application %{public}@ entered foreground", buf, 0xCu);
        }

        [*(*(a1 + 48) + 24) objectForKeyedSubscript:v3];
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v22 = v60 = 0u;
        v23 = [v22 countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v23)
        {
          v24 = *v60;
          do
          {
            for (j = 0; j != v23; j = j + 1)
            {
              if (*v60 != v24)
              {
                objc_enumerationMutation(v22);
              }

              [*(*(&v59 + 1) + 8 * j) applicationEnteredForeground:v3];
            }

            v23 = [v22 countByEnumeratingWithState:&v59 objects:v69 count:16];
          }

          while (v23);
        }

        goto LABEL_62;
      }

      if (v21)
      {
        *buf = 138543362;
        v72 = v3;
        v46 = "Application %{public}@ entered foreground, and no observers";
LABEL_61:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);
      }
    }

    else
    {
      v26 = [*(a1 + 40) state];
      v27 = [v26 taskState] == 3;

      if (v27)
      {
        v28 = [*(*(a1 + 48) + 24) objectForKeyedSubscript:v3];
        v29 = v28 == 0;

        v20 = qword_1000EB210;
        v30 = os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT);
        if (!v29)
        {
          if (v30)
          {
            *buf = 138543362;
            v72 = v3;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Application %{public}@ was suspended", buf, 0xCu);
          }

          [*(*(a1 + 48) + 24) objectForKeyedSubscript:v3];
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v31 = v56 = 0u;
          v32 = [v31 countByEnumeratingWithState:&v55 objects:v68 count:16];
          if (v32)
          {
            v33 = *v56;
            do
            {
              for (k = 0; k != v32; k = k + 1)
              {
                if (*v56 != v33)
                {
                  objc_enumerationMutation(v31);
                }

                [*(*(&v55 + 1) + 8 * k) applicationWasSuspended:v3 pid:{objc_msgSend(*(a1 + 32), "pid")}];
              }

              v32 = [v31 countByEnumeratingWithState:&v55 objects:v68 count:16];
            }

            while (v32);
          }

          goto LABEL_62;
        }

        if (v30)
        {
          *buf = 138543362;
          v72 = v3;
          v46 = "Application %{public}@ was suspended, and no observers";
          goto LABEL_61;
        }
      }

      else
      {
        v35 = [*(a1 + 40) exitEvent];
        v36 = [v35 context];
        v37 = [v36 status];
        v38 = [v37 code] == 3735943697;

        if (v38)
        {
          v39 = [*(*(a1 + 48) + 24) objectForKeyedSubscript:v3];
          v40 = v39 == 0;

          v20 = qword_1000EB210;
          v41 = os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT);
          if (!v40)
          {
            if (v41)
            {
              *buf = 138543362;
              v72 = v3;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Application %{public}@ was quit in the app switcher", buf, 0xCu);
            }

            [*(*(a1 + 48) + 24) objectForKeyedSubscript:v3];
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v42 = v52 = 0u;
            v43 = [v42 countByEnumeratingWithState:&v51 objects:v67 count:16];
            if (v43)
            {
              v44 = *v52;
              do
              {
                for (m = 0; m != v43; m = m + 1)
                {
                  if (*v52 != v44)
                  {
                    objc_enumerationMutation(v42);
                  }

                  [*(*(&v51 + 1) + 8 * m) applicationWasQuitFromAppSwitcher:{v3, v51}];
                }

                v43 = [v42 countByEnumeratingWithState:&v51 objects:v67 count:16];
              }

              while (v43);
            }

            goto LABEL_62;
          }

          if (v41)
          {
            *buf = 138543362;
            v72 = v3;
            v46 = "Application %{public}@ was quit in the app switcher, and no observers";
            goto LABEL_61;
          }
        }
      }
    }

LABEL_62:
    v50 = [NSNumber numberWithBool:v10, v51];
    [*(*(a1 + 48) + 32) setObject:v50 forKeyedSubscript:v3];

    return;
  }

  v47 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    v48 = *(a1 + 32);
    v49 = *(a1 + 40);
    *buf = 138543618;
    v72 = v48;
    v73 = 2112;
    v74 = v49;
    _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Cannot find bundle ID for process %{public}@ state update %@", buf, 0x16u);
  }
}

void sub_100075374(uint64_t a1)
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isAutomaticAppUpdatesAllowed];
  *(*(a1 + 32) + 68) = v3;

  v4 = qword_1000EB210;
  v5 = os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Background updates are on", buf, 2u);
    }

    v6 = [*(a1 + 32) getBackgroundSettingsAppList];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000754D0;
    v7[3] = &unk_1000D60C8;
    v7[4] = *(a1 + 32);
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Background updates were turned off", buf, 2u);
    }

    [*(*(a1 + 32) + 24) enumerateKeysAndObjectsUsingBlock:&stru_1000D6108];
  }
}

void sub_1000754D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v5];
  if (v7)
  {
    v8 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v5];
    v9 = [v8 isEqualToNumber:v6];

    if ((v9 & 1) == 0)
    {
      v10 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v33 = v5;
        v34 = 2112;
        v35 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Background update setting for %{public}@ was changed to %@", buf, 0x16u);
      }

      v11 = [v6 BOOLValue];
      v12 = [NSNumber numberWithBool:v11];
      [*(*(a1 + 32) + 40) setObject:v12 forKeyedSubscript:v5];

      v13 = qword_1000EB210;
      v14 = os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v14)
        {
          *buf = 138543362;
          v33 = v5;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notifying observers for %{public}@ that background update setting was turned on", buf, 0xCu);
        }

        [*(*(a1 + 32) + 24) objectForKeyedSubscript:v5];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v15 = v23 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v16)
        {
          v17 = *v23;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v23 != v17)
              {
                objc_enumerationMutation(v15);
              }

              [*(*(&v22 + 1) + 8 * i) applicationBackgroundUpdatesTurnedOn:{v5, v22}];
            }

            v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v16);
        }
      }

      else
      {
        if (v14)
        {
          *buf = 138543362;
          v33 = v5;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notifying observers for %{public}@ that background update setting was turned off", buf, 0xCu);
        }

        [*(*(a1 + 32) + 24) objectForKeyedSubscript:v5];
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v15 = v27 = 0u;
        v19 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v19)
        {
          v20 = *v27;
          do
          {
            for (j = 0; j != v19; j = j + 1)
            {
              if (*v27 != v20)
              {
                objc_enumerationMutation(v15);
              }

              [*(*(&v26 + 1) + 8 * j) applicationBackgroundUpdatesTurnedOff:v5];
            }

            v19 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
          }

          while (v19);
        }
      }
    }
  }
}

void sub_100075888(id a1, NSString *a2, NSArray *a3, BOOL *a4)
{
  v5 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = a3;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9) applicationBackgroundUpdatesTurnedOff:{v5, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void sub_100075A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NDSpringBoard;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100075C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&off_1000D8A98];
  [v3 setStateDescriptor:v4];
  [v3 setEvents:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001C00;
  v5[3] = &unk_1000D6078;
  v6 = *(a1 + 32);
  [v3 setUpdateHandler:v5];
}

void sub_100075D60(id a1)
{
  v1 = objc_alloc_init(NDSpringBoard);
  v2 = qword_1000EB1F8;
  qword_1000EB1F8 = v1;
}

id sub_100076600(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 32);

    return [v4 addObject:v3];
  }

  return result;
}

void sub_10007671C(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  [v2 removeObject:a1[6]];
}

void sub_100076850(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];

  if (!v2)
  {
    v3 = +[NSMutableArray array];
    v4 = a1[5];
    v5 = v3;
    [*(a1[4] + 24) setObject:? forKeyedSubscript:?];
  }

  v6 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  [v6 addObject:a1[6]];
}

void sub_100076A34(id a1)
{
  if (objc_opt_class())
  {
    v1 = objc_alloc_init(NDChronoKitLauncher);
    v2 = qword_1000EB200;
    qword_1000EB200 = v1;
  }
}

_BYTE *sub_100076B80(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[65] & 1) == 0 && result[67] == 1)
  {
    return [result startThroughputMonitoring];
  }

  return result;
}

void *sub_100076C14(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 65) & 1) != 0 || ([result stopThroughputMonitoring], result = *(a1 + 32), (*(result + 65)))
  {
    if ((*(result + 66) & 1) == 0 && *(result + 64) == 1)
    {
      result[10] = 300;
      *(*(a1 + 32) + 65) = 0;
      v3 = *(a1 + 32);

      return [v3 stopThroughputMonitoring];
    }
  }

  return result;
}

void sub_100076D44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3 > 7)
  {
    dispatch_source_cancel(*(v2 + 24));
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }

  else
  {
    *(v2 + 48) = v3 + 1;
    v4 = *(a1 + 32);

    [v4 setThroughputTimerForCurrentInterval];
  }
}

uint64_t sub_100077B9C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_45:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_56;
          }

          v14 = PBReaderReadString();
          v15 = 40;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v34 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v34 & 0x7F) << v16;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_50:
          v31 = 16;
          goto LABEL_55;
        }

        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v35 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v35 & 0x7F) << v23;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_54;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_54:
          v31 = 8;
LABEL_55:
          *(a1 + v31) = v22;
          goto LABEL_56;
        }

        if (v13 != 5)
        {
          goto LABEL_45;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      v29 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_56:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000794E4(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100079978()
{
  v0 = +[SZExtractor knownSZExtractorImplementations];
  v1 = [v0 setByAddingObject:objc_opt_class()];

  return v1;
}

void sub_10007BDA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 16));
  [WeakRetained errorOccurredDuringFinishedCallbackDelivery:v3];
}

id sub_10007BE1C(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) descriptionForTaskWithIdentifier:*(a1 + 56)];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ client acknowledged completion", &v5, 0xCu);
  }

  [*(*(a1 + 40) + 8) removeObject:*(a1 + 48)];
  return [*(a1 + 32) clientAcknowledgedTerminalCallbackForTask:*(a1 + 56)];
}

id sub_10007BF14(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) descriptionForTaskWithIdentifier:*(a1 + 56)];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ client acknowledged file download", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 8) removeObject:*(a1 + 48)];
}

void sub_10007C000(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) hasBeenCalled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    [WeakRetained errorOccurredDuringAuthCallbackDelivery:v4 completionHandler:*(a1 + 48)];

    [*(*(a1 + 40) + 8) removeObject:*(a1 + 32)];
  }
}

void sub_10007C09C(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v16 = 0;
    v9 = [SecKeyProxy createIdentityFromEndpoint:v8 error:&v16];
    v10 = v16;
    if (v9)
    {
      v11 = [v7 certificates];
      v12 = +[NSURLCredential credentialWithIdentity:certificates:persistence:](NSURLCredential, "credentialWithIdentity:certificates:persistence:", v9, v11, [v7 persistence]);

      v7 = v12;
      CFRelease(v9);
    }

    else
    {
      v13 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to establish client cert proxy: %@", buf, 0xCu);
      }
    }
  }

  if (([*(a1 + 32) hasBeenCalled] & 1) == 0)
  {
    v14 = qword_1000EB210;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 40) descriptionForTaskWithIdentifier:*(a1 + 64)];
      *buf = 138544130;
      v18 = v15;
      v19 = 1024;
      v20 = a2;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ client responded to task challenge with disp %d, cred %@, trustProxy %@", buf, 0x26u);
    }

    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) setHasBeenCalled:1];
    [*(*(a1 + 48) + 8) removeObject:*(a1 + 32)];
  }
}

id sub_10007C328(uint64_t a1)
{
  result = [*(a1 + 32) hasBeenCalled];
  if ((result & 1) == 0)
  {
    v3 = qword_1000EB210;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) descriptionForTaskWithIdentifier:*(a1 + 72)];
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to ask client for modified request, using original proposed request", &v6, 0xCu);
    }

    v5 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
    [*(a1 + 32) setHasBeenCalled:1];
    return [*(*(a1 + 56) + 8) removeObject:*(a1 + 32)];
  }

  return result;
}

void sub_10007C44C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) hasBeenCalled] & 1) == 0)
  {
    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) descriptionForTaskWithIdentifier:*(a1 + 64)];
      v9 = 138543874;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ client responded to will send request callback with request %@ handle %@", &v9, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) setHasBeenCalled:1];
    [*(*(a1 + 48) + 8) removeObject:*(a1 + 32)];
  }
}

void sub_10007C5B4(uint64_t a1)
{
  if (([*(a1 + 32) hasBeenCalled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    [WeakRetained wakeUpClient:1];
  }
}

void sub_10007C638(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) hasBeenCalled] & 1) == 0)
  {
    v4 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client responded to open file callback with handle %@", &v5, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) setHasBeenCalled:1];
    [*(*(a1 + 40) + 8) removeObject:*(a1 + 32)];
  }
}