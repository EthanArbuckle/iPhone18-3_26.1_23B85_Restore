uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = wc_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting up", &v11, 2u);
  }

  v2 = MGCopyAnswer();
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = wc_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446210;
      v12 = "Wed Dec 31 16:00:00 1969";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daemon Build Time: %{public}s", &v11, 0xCu);
    }
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100048990);
  v5 = +[WCDSystemMonitor sharedSystemMonitor];
  v6 = +[WatchConnectivityDaemon sharedDaemon];
  v7 = +[WCDPushKitManager sharedPushKitManager];
  v8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v8, &stru_1000489D0);
  dispatch_resume(v8);
  os_state_add_handler();

  objc_autoreleasePoolPop(v0);
  v9 = +[NSRunLoop mainRunLoop];
  [v9 run];

  return 1;
}

void sub_1000018D4(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    v4 = wc_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "launched for event: %{public}s", &v5, 0xCu);
    }
  }
}

void sub_100001990(id a1)
{
  v1 = wc_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM received, shutting down.", v2, 2u);
  }

  exit(0);
}

void sub_100001C1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100001C38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlLocalFirstUnlockStateChanged];
}

id sub_1000026D8(uint64_t a1)
{
  result = [*(a1 + 32) receivedFirstUnlockState];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 sendFirstUnlockRequest];
  }

  return result;
}

void sub_100003074(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"canRunIndependentlyOfCompanionApp") ifEqualTo:{@"canRunIndependently", 1}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isRunningIndependently") ifEqualTo:{@"runningIndependently", 1}];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isStandaloneWatchApp") ifEqualTo:{@"standalone", 1}];
  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isCompanionAppInstalled"), @"companionAppInstalled"}];
  v6 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isWatchAppInstalled"), @"watchAppInstalled"}];
  v7 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"hasComplications") ifEqualTo:{@"hasComplications", 1}];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) uniqueInstallID];
  [v8 appendString:v9 withName:@"uniqueInstallID"];
}

void sub_100003BC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100003BE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained isCancelled];

  if (v8)
  {
    goto LABEL_9;
  }

  if (v5)
  {
    v9 = wc_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100029F34(v6, v5, v9);
    }

    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 retryCount];

    if (v11 != 4)
    {
      v15 = objc_loadWeakRetained((a1 + 32));
      [v15 setRetryCount:{objc_msgSend(v15, "retryCount") + 1}];

      v16 = objc_loadWeakRetained((a1 + 32));
      sleep([v16 retryCount]);

      v14 = objc_loadWeakRetained((a1 + 32));
      [v14 doWork];
      goto LABEL_10;
    }

    v12 = wc_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100029FF0(v6, v12);
    }

    v13 = objc_loadWeakRetained((a1 + 32));
    [v13 setFailed:1];

LABEL_9:
    v14 = objc_loadWeakRetained((a1 + 32));
    [v14 finish];
LABEL_10:
  }
}

void sub_1000044CC(id a1)
{
  v1 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v2 = [v1 firstObject];

  v3 = [v2 stringByAppendingPathComponent:@"WatchConnectivity"];
  v4 = [v3 stringByAppendingPathComponent:@"Clients"];
  v5 = +[NSFileManager defaultManager];
  v10 = 0;
  v6 = [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = [NSURL fileURLWithPath:v4 isDirectory:1];
    v9 = qword_100054C78;
    qword_100054C78 = v8;
  }

  else
  {
    v9 = wc_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002A07C();
    }
  }
}

void sub_100004F3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100004F6C(uint64_t a1)
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained loggingIdentifier];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: XPC connection interrupted", &v7, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 connection];
  [v6 invalidate];
}

void sub_10000505C(uint64_t a1)
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained loggingIdentifier];
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: XPC connection invalidated", buf, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 connection];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000051C4;
  v8[3] = &unk_100048BA0;
  v9 = v6;
  v7 = v6;
  objc_copyWeak(&v10, (a1 + 32));
  dispatch_async(&_dispatch_main_q, v8);
  objc_destroyWeak(&v10);
}

void sub_1000051C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained connection];
  LODWORD(v2) = [v2 isEqual:v4];

  if (v2)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 handleXPCInvalidation];
  }
}

void sub_100006FD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 identifier];
  [v3 removeOutstandingMessage:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 48) identifier];
  [v7 handleSentMessageWithIdentifier:v8 error:v5];
}

void sub_100007068(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 identifier];
  [v3 removeOutstandingMessage:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 48) identifier];
  [v7 handleSentMessageWithIdentifier:v8 error:v5];
}

void sub_10000804C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  [v3 copyProgressUpdatesForFileTransfer:v4 fromClonedFileURL:v5];
  (*(a1[7] + 16))();
}

void sub_100008298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_1000082D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"IDSSendResourceProgressIdentifier"];

  v6 = [*(a1 + 32) transferIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:v5];

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [[NSProgress alloc] initWithParent:0 userInfo:0];
      [v9 setTotalUnitCount:{objc_msgSend(v3, "totalUnitCount")}];
      [v9 setCompletedUnitCount:{objc_msgSend(v3, "completedUnitCount")}];
      v10 = [*(a1 + 32) file];
      v11 = [v10 fileURL];
      [v9 setFileURL:v11];

      v12 = [v3 byteTotalCount];
      [v9 setByteTotalCount:v12];

      v13 = [v3 byteCompletedCount];
      [v9 setByteCompletedCount:v13];

      v14 = [v3 kind];
      [v9 setKind:v14];

      [v9 setCancellable:{objc_msgSend(v3, "isCancellable")}];
      [v9 setPausable:{objc_msgSend(v3, "isPausable")}];
      [v9 setFileOperationKind:NSProgressFileOperationKindCopying];
      [v9 setUserInfoObject:v5 forKey:IDSSendResourceProgressIdentifier];
      [*(*(a1 + 40) + 80) setObject:v9 forKeyedSubscript:v5];
      [v9 publish];
      v15 = wc_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v9 fileURL];
        *buf = 138412802;
        v28 = v5;
        v29 = 2112;
        v30 = v16;
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Published progressCopy with transferID %@, to fileURL: %@, progress: %@", buf, 0x20u);
      }
    }

    if ([v3 isFinished])
    {
      [v9 unpublish];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained registerForUpdatesForProgress:v3];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100008654;
  v23[3] = &unk_100048C18;
  v26 = v7;
  v24 = v5;
  v22 = *(a1 + 32);
  v18 = v22.i64[0];
  v25 = vextq_s8(v22, v22, 8uLL);
  v19 = v5;
  v20 = objc_retainBlock(v23);

  return v20;
}

void sub_100008654(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = wc_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v5 = 136446466;
      v6 = "[WCDClient copyProgressUpdatesForFileTransfer:fromClonedFileURL:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s Progress unpublished for transfer %{public}@", &v5, 0x16u);
    }

    [*(a1 + 40) removeProgressForFileTransfer:*(a1 + 48)];
    v4 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:*(a1 + 32)];
    [v4 unpublish];
  }
}

void sub_100008EBC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002A23C();
  }
}

void sub_10000953C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002A2EC();
  }
}

Class sub_10000978C()
{
  if (qword_100054C90 != -1)
  {
    sub_10002A39C();
  }

  result = objc_getClass("_CDComplications");
  qword_100054C88 = result;
  off_1000546C8 = sub_1000097E0;
  return result;
}

uint64_t WCDProtoFirstUnlockRequestReadFrom(uint64_t a1, void *a2)
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
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
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

uint64_t WCDProtoDaemonStartedUpReadFrom(uint64_t a1, void *a2)
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
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
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

uint64_t WCDProtoApplicationContextReadFrom(uint64_t a1, void *a2)
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

void sub_10000B818(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained isCancelled];

  v4 = objc_loadWeakRetained((a1 + 64));
  if ((v3 & 1) == 0)
  {
    v6 = v4;
    v5 = [v4 delegate];
    [v5 onqueue_retrievedPairingStateIsPaired:objc_msgSend(*(a1 + 32) pairingID:"paired") pairedDeviceInformation:*(a1 + 40) pairedDevicesPairingIDs:{*(a1 + 48), *(a1 + 56)}];

    v4 = objc_loadWeakRetained((a1 + 64));
  }

  v7 = v4;
  [v4 finish];
}

void sub_10000BCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000BCFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  +[NSMutableDictionary dictionary];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000BEE0;
  v7 = v17[3] = &unk_100048CD8;
  v18 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v17];
  v8 = +[ACXDeviceConnection sharedDeviceConnection];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000BF78;
  v11[3] = &unk_100048D78;
  v9 = *(a1 + 32);
  v11[4] = *(a1 + 40);
  v15 = *(a1 + 56);
  v12 = *(a1 + 48);
  v10 = v7;
  v13 = v10;
  objc_copyWeak(&v16, (a1 + 64));
  v14 = *(a1 + 32);
  [v8 enumerateLocallyAvailableApplicationsForPairedDevice:v9 options:1 withBlock:v11];

  objc_destroyWeak(&v16);
}

void sub_10000BEE0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:ACXWatchKitVersion];
  v7 = [v6 integerValue];

  if (v7 >= 2)
  {
    [*(a1 + 32) setObject:v5 forKey:v8];
  }
}

uint64_t sub_10000BF78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    [*(a1 + 32) finish];
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if (v6)
  {
    (*(*(a1 + 64) + 16))();
    goto LABEL_5;
  }

  if (!v5)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000C208;
    v21[3] = &unk_100048D00;
    objc_copyWeak(&v23, (a1 + 72));
    v22 = *(a1 + 40);
    v12 = objc_retainBlock(v21);
    if ([*(a1 + 48) count])
    {
      v13 = +[ACXDeviceConnection sharedDeviceConnection];
      v14 = *(a1 + 56);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000C2A4;
      v15[3] = &unk_100048D50;
      objc_copyWeak(&v20, (a1 + 72));
      v18 = *(a1 + 64);
      v16 = *(a1 + 48);
      v17 = *(a1 + 40);
      v19 = v12;
      [v13 fetchInstalledComplicationsForPairedDevice:v14 completion:v15];

      objc_destroyWeak(&v20);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, v12);
    }

    objc_destroyWeak(&v23);
    goto LABEL_5;
  }

  v9 = [[WCDApplicationInfo alloc] initWithACXApplication:v5];
  if ([(WCDApplicationInfo *)v9 hasValidConfiguration])
  {
    [*(a1 + 40) addObject:v9];
  }

  v10 = *(a1 + 48);
  v11 = [v5 bundleIdentifier];
  [v10 removeObjectForKey:v11];

  v7 = 1;
LABEL_6:

  return v7;
}

void sub_10000C1E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_10000C208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isCancelled];

  v4 = objc_loadWeakRetained((a1 + 40));
  if ((v3 & 1) == 0)
  {
    v6 = v4;
    v5 = [v4 delegate];
    [v5 onqueue_retrievedInstalledAppsList:*(a1 + 32)];

    v4 = objc_loadWeakRetained((a1 + 40));
  }

  v7 = v4;
  [v4 finish];
}

void sub_10000C2A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [WeakRetained isCancelled];

  if (v8)
  {
    v9 = objc_loadWeakRetained((a1 + 64));
    [v9 finish];
  }

  else if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = wc_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A3F8(v5, v10);
    }

    v11 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000C404;
    v12[3] = &unk_100048D28;
    v13 = v5;
    v14 = *(a1 + 40);
    [v11 enumerateKeysAndObjectsUsingBlock:v12];
    dispatch_async(&_dispatch_main_q, *(a1 + 56));
  }
}

void sub_10000C404(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  if (!v7)
  {
    v7 = +[NSDictionary dictionary];
  }

  v8 = [[WCDApplicationInfo alloc] initWithAppConduitInstalledApplication:v6 complicationInfo:v7];

  v9 = wc_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(WCDApplicationInfo *)v8 debugDescription];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating legacy app info %@", &v11, 0xCu);
  }

  if ([(WCDApplicationInfo *)v8 hasValidConfiguration])
  {
    [*(a1 + 40) addObject:v8];
  }
}

uint64_t sub_10000CB80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000CB98(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 objectForKeyedSubscript:ACXContainerAppBundleIdKey];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = wc_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002A4A8(a1, v5, v9);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000CC3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isCancelled];

  v4 = objc_loadWeakRetained((a1 + 40));
  if ((v3 & 1) == 0)
  {
    v6 = v4;
    v5 = [v4 delegate];
    [v5 onqueue_retrievedIOSApplicationsContainingActiveComplications:*(a1 + 32)];

    v4 = objc_loadWeakRetained((a1 + 40));
  }

  v7 = v4;
  [v4 finish];
}

uint64_t WCDProtoPairedSyncComplicationsStartedAckReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_44;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 12) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
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

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000E828(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100054CA0 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10000F12C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10000F15C(uint64_t a1)
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained connection];
  [v4 invalidate];
}

void sub_10000F1EC(uint64_t a1)
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v5 clientXPCConnectionDidDisconnect:v6];
}

void sub_10000FAA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v16 = [[IDSProtobuf alloc] initWithProtobufData:v8 type:a2 isResponse:0];

  v9 = IDSDefaultPairedDevice;
  v10 = [[IDSMessageContext alloc] initWithDictionary:0 boostContext:0];
  [v10 setServiceIdentifier:*(a1 + 32)];
  [v10 setOutgoingResponseIdentifier:v7];

  v11 = +[WatchConnectivityDaemon sharedDaemon];
  v12 = [v11 idsService];
  v13 = [v11 idsService];
  v14 = [v13 accounts];
  v15 = [v14 anyObject];
  [v11 service:v12 account:v15 incomingUnhandledProtobuf:v16 fromID:v9 context:v10];
}

void sub_10000FBF8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v24 = a2;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = a3;
  v15 = [v13 connection];
  [v15 processIdentifier];

  v16 = WCCheckFileAndConsumeSandboxTokenForProcessID();
  if (v16 < 1)
  {
    if (a6)
    {
      *a6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:13 userInfo:0];
    }
  }

  else
  {
    v17 = IDSDefaultPairedDevice;
    v18 = [[IDSMessageContext alloc] initWithDictionary:0 boostContext:0];
    [v18 setServiceIdentifier:*(a1 + 40)];
    [v18 setOutgoingResponseIdentifier:v12];
    v19 = +[WatchConnectivityDaemon sharedDaemon];
    v20 = [v19 idsService];
    v21 = [v19 idsService];
    v22 = [v21 accounts];
    v23 = [v22 anyObject];
    [v19 service:v20 account:v23 incomingResourceAtURL:v24 metadata:v11 fromID:v17 context:v18];

    sandbox_extension_release();
  }
}

void sub_100010050(id a1, NSError *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002A72C(v2);
  }
}

void sub_100010144(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

uint64_t sub_100010204(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100054CB0 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100012CB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setObject:v3 forKeyedSubscript:IDSSendMessageOptionDuetIdentifiersOverrideKey];
    [v4 setObject:&off_10004AB58 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
    [v4 setObject:*(a1 + 32) forKeyedSubscript:IDSSendMessageOptionSubServiceKey];
    if (*(a1 + 72) == 1)
    {
      [v4 setObject:*(a1 + 40) forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
    }

    else
    {
      [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
      v8 = [*(a1 + 48) dataFromUUIDString:*(a1 + 40)];
      [v4 setObject:v8 forKeyedSubscript:IDSSendMessageOptionUUIDKey];
    }

    v9 = [IDSProtobuf alloc];
    v10 = [*(a1 + 56) data];
    if (*(a1 + 72))
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = [v9 initWithProtobufData:v10 type:v11 isResponse:0];

    v13 = [*(a1 + 48) idsService];
    v14 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v20 = 0;
    v21 = 0;
    [v13 sendProtobuf:v12 toDestinations:v14 priority:200 options:v4 identifier:&v21 error:&v20];
    v7 = v21;
    v15 = v20;

    v16 = wc_log();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10002A9BC();
      }

      v18 = *(a1 + 64);
      v19 = [*(a1 + 48) WCErrorForIDSError:v15];
      (*(v18 + 16))(v18, v19);
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      v19 = [*(a1 + 64) copy];
      [*(*(a1 + 48) + 56) setObject:v19 forKeyedSubscript:v7];
    }
  }

  else
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002ABF0();
    }

    v6 = *(a1 + 64);
    v7 = [NSError wcErrorWithCode:7001];
    (*(v6 + 16))(v6, v7);
  }
}

void sub_100013CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013D4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100013D64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setObject:*(a1 + 32) forKeyedSubscript:IDSSendMessageOptionSubServiceKey];
    v5 = [*(a1 + 40) dataFromUUIDString:*(a1 + 48)];
    [v4 setObject:v5 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

    v6 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v4 setObject:v6 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    [v4 setObject:v3 forKeyedSubscript:IDSSendMessageOptionDuetIdentifiersOverrideKey];
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionWantsProgress];
    if ([*(a1 + 56) hasIncreasedPriorityTraffic])
    {
      v7 = 200;
    }

    else
    {
      v7 = 100;
    }

    v8 = [*(a1 + 40) idsService];
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v12 = *(*(a1 + 96) + 8);
    obj = *(v12 + 40);
    v22 = 0;
    LODWORD(v9) = [v8 sendResourceAtURL:v9 metadata:v10 toDestinations:v11 priority:v7 options:v4 identifier:&v22 error:&obj];
    v13 = v22;
    objc_storeStrong((v12 + 40), obj);

    v14 = wc_log();
    v15 = v14;
    if (v9)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      (*(*(a1 + 88) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10002ACB4(a1 + 96);
      }

      v18 = *(a1 + 88);
      v19 = [*(a1 + 40) WCErrorForIDSError:*(*(*(a1 + 96) + 8) + 40)];
      (*(v18 + 16))(v18, v19);
    }
  }

  else
  {
    v16 = wc_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002ABF0();
    }

    v17 = *(a1 + 88);
    v13 = [NSError wcErrorWithCode:7001];
    (*(v17 + 16))(v17, v13);
  }

  [*(a1 + 80) closeFile];
  v20 = *(a1 + 64);
  WCDeleteItemAtURL();
}

void sub_1000156D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setObject:*(a1 + 32) forKeyedSubscript:IDSSendMessageOptionSubServiceKey];
    v5 = [*(a1 + 40) dataFromUUIDString:*(a1 + 48)];
    [v4 setObject:v5 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

    v6 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v4 setObject:v6 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    [v4 setObject:v3 forKeyedSubscript:IDSSendMessageOptionDuetIdentifiersOverrideKey];
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
    v7 = [*(a1 + 40) idsService];
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v20 = 0;
    v21 = 0;
    v11 = [v7 sendResourceAtURL:v8 metadata:v9 toDestinations:v10 priority:200 options:v4 identifier:&v21 error:&v20];
    v12 = v21;
    v13 = v20;

    v14 = wc_log();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      (*(*(a1 + 72) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10002B1FC();
      }

      v18 = *(a1 + 72);
      v19 = [*(a1 + 40) WCErrorForIDSError:v13];
      (*(v18 + 16))(v18, v19);
    }
  }

  else
  {
    v16 = wc_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002ABF0();
    }

    v17 = *(a1 + 72);
    v13 = [NSError wcErrorWithCode:7001];
    (*(v17 + 16))(v17, v13);
  }
}

void sub_10001685C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (a1 + 56);
  if ([*(a1 + 32) notifyIfFileTransferWithCommunicationID:*(a1 + 40) pairingID:*(a1 + 48) sendID:*(a1 + 56) success:*(a1 + 72) error:*(a1 + 64)])
  {
    v4 = wc_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *v3;
      v6 = *v2;
      v12 = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      v7 = "identifier: %{public}@, communicationID: %{public}@ was a file transfer";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v7, &v12, 0x16u);
    }
  }

  else
  {
    v8 = [*(a1 + 32) notifyIfUserInfoTransferWithCommunicationID:*(a1 + 40) pairingID:*(a1 + 48) sendID:*(a1 + 56) success:*(a1 + 72) error:*(a1 + 64)];
    v9 = wc_log();
    v4 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v3;
        v11 = *v2;
        v12 = 138543618;
        v13 = v10;
        v14 = 2114;
        v15 = v11;
        v7 = "identifier: %{public}@, communicationID: %{public}@ was a user info transfer";
        goto LABEL_7;
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002B450(v2 + 2, v2, v4);
    }
  }
}

void sub_100017208(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  [v2 handleResponse:a1[6]];
}

void sub_100017260(uint64_t a1)
{
  v2 = [WCDProtoApplicationContext alloc];
  v3 = [*(a1 + 32) data];
  v9 = [(WCDProtoApplicationContext *)v2 initWithData:v3];

  v4 = [*(a1 + 40) applicationInfoForCommunicationID:*(a1 + 48)];
  v5 = *(a1 + 40);
  v6 = [(WCDProtoApplicationContext *)v9 clientData];
  [v5 persistAppContext:v6 applicationInfo:v4 pairingID:*(a1 + 56)];

  v7 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:*(a1 + 48)];
  [v7 handleApplicationContextWithPairingID:*(a1 + 56)];
  v8 = [v7 connection];

  if (!v8)
  {
    [*(a1 + 40) notifyDuetOfPendingContentForCompanionAppID:*(a1 + 48) forComplication:0];
  }
}

void sub_10001735C(uint64_t a1)
{
  v2 = [WCDProtoUserInfoTransfer alloc];
  v3 = [*(a1 + 32) data];
  v8 = [v2 initWithData:v3];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = [*(a1 + 64) outgoingResponseIdentifier];
  [v4 handleIncomingUserInfoTransferProto:v8 communicationID:v5 pairingID:v6 sendID:v7];
}

void sub_100017C70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = wc_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10002B628(a1);
    }
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100013D4C;
    v15 = sub_100013D5C;
    v16 = 0;
    v4 = [BKSProcessAssertion alloc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100017DD0;
    v8[3] = &unk_100049088;
    v7 = *(a1 + 32);
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = &v11;
    v5 = [v4 initWithBundleIdentifier:v7.i64[0] flags:1 reason:10004 name:@"Reset timeout" withHandler:v8];
    v6 = v12[5];
    v12[5] = v5;

    _Block_object_dispose(&v11, 8);
  }
}

void sub_100017DD0(void *a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017E70;
    block[3] = &unk_100049060;
    v3 = a1[5];
    block[4] = a1[4];
    v4 = v3;
    v5 = a1[6];
    v7 = v4;
    v8 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_100017E70(uint64_t a1)
{
  [*(a1 + 32) cleanUpProcessAssertionForIdentifier:*(a1 + 40)];
  [*(a1 + 32) acquireBackgroundAssertionForIdentifier:*(a1 + 40)];
  v2 = *(*(*(a1 + 48) + 8) + 40);

  return [v2 invalidate];
}

void sub_100018084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100018464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018488(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeObjectForKey:*(a1 + 32)];
}

void sub_1000185D4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"process-assertion"];
    if (v4)
    {
      v5 = v4;
      v6 = wc_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = 138543362;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "companionAppIdentifier: %{public}@ invalidating process assertion", &v8, 0xCu);
      }

      [v5 invalidate];
    }

    [*(*(a1 + 32) + 88) removeObjectForKey:*(a1 + 40)];
  }
}

id sub_10001A744(void *a1)
{
  result = (*(a1[6] + 16))();
  if (a1[4])
  {
    v3 = a1[5];

    return [v3 sendAckForMessageWithContext:?];
  }

  return result;
}

void sub_10001AD0C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v5 = v2;
    v3 = [v2 objectForKeyedSubscript:@"inuse-assertion"];
    if (v3)
    {
      v4 = v3;
      [v3 invalidate];
    }

    [*(*(a1 + 32) + 80) removeObjectForKey:*(a1 + 40)];
    v2 = v5;
  }
}

void sub_10001AEF8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10001AF18(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0xCu);
}

void sub_10001AF98(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_10001B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = +[NSMutableDictionary dictionary];
    [v4 setObject:@"633486" forKeyedSubscript:@"ComponentID"];
    [v4 setObject:@"WatchConnectivity" forKeyedSubscript:@"ComponentName"];
    [v4 setObject:@"all" forKeyedSubscript:@"ComponentVersion"];
    [v4 setObject:@"phone forKeyedSubscript:{watch", @"AutoDiagnostics"}];
    [v4 setObject:@"Serious Bug" forKeyedSubscript:@"Classification"];
    [v4 setObject:@"I Didn't Try" forKeyedSubscript:@"Reproducibility"];
    v5 = [NSString stringWithFormat:@"User hit <rdar://problem/%@>", *(a1 + 32)];
    [v4 setObject:v5 forKeyedSubscript:@"Description"];

    v6 = [NSString stringWithFormat:@"WatchConnectivity detected problem %@", *(a1 + 32)];
    [v4 setObject:v6 forKeyedSubscript:@"Title"];

    v7 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
    v8 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v9 objectForKeyedSubscript:v14];
          v16 = [NSURLQueryItem queryItemWithName:v14 value:v15];
          [v8 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v7 setQueryItems:v8];
    v17 = +[LSApplicationWorkspace defaultWorkspace];
    v18 = [v7 URL];
    [v17 openURL:v18];
  }
}

Class sub_10001BC38()
{
  if (qword_100054CC8 != -1)
  {
    sub_10002C244();
  }

  result = objc_getClass("PSYSyncCoordinator");
  qword_100054CC0 = result;
  off_1000549D0 = sub_10001BC8C;
  return result;
}

void sub_10001C2BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10001C2EC(uint64_t a1)
{
  v2 = wc_pushkit_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained bundleID];
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: XPC connection interrupted", &v8, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 connection];
  [v6 invalidate];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setConnection:0];
}

void sub_10001C3F4(uint64_t a1)
{
  v2 = wc_pushkit_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained bundleID];
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: XPC connection invalidated", buf, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setConnection:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C540;
  block[3] = &unk_100048B78;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v7);
}

void sub_10001C540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 clientXPCConnectionDidDisconnect:v3];
}

void sub_10001CD18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wc_pushkit_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002C258(a1, v3, v4);
  }
}

uint64_t WCDProtoComplicationPingReadFrom(uint64_t a1, void *a2)
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
        v20 = PBReaderReadString();
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

uint64_t sub_10001D764(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100054CD8 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10001DCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10001DD14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained failed];

  if (v3)
  {
    v4 = wc_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10002C328();
    }

    v5 = v9;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v6 = sub_10001DE30;
  }

  else
  {
    v5 = v8;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v6 = sub_10001DE40;
  }

  v5[2] = v6;
  v5[3] = &unk_100048A48;
  v5[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v5);
  v7 = objc_loadWeakRetained((a1 + 48));
  [v7 releaseVoucher];
}

void sub_10001DE40(uint64_t a1)
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "complete", v5, 2u);
  }

  *(*(a1 + 32) + 16) = 1;
  *(*(a1 + 32) + 20) = 0;
  v3 = [*(a1 + 32) notifyObserversQueued:"systemObserverInitialSetUpComplete"];
  [v3 setQueuePriority:8];
  v4 = [*(a1 + 32) notifyOperationQueue];
  [v4 setSuspended:0];
}

void sub_10001E0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E0F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E1AC;
  v5[3] = &unk_100048D00;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10001E1AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleApplicationStateChange:*(a1 + 32)];
}

void sub_10001EDEC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 112), 8);
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 160));
  _Unwind_Resume(a1);
}

void sub_10001EE60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInstalledApplicationsChanged];
}

void sub_10001EEA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleActiveComplicationsChanged];
}

void sub_10001EEE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleActiveComplicationsChanged];
}

void sub_10001EF20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleRemainingComplicationUserInfoTransfersReset];
}

void sub_10001F1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 64));
  _Unwind_Resume(a1);
}

void sub_10001F1F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained paired];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    [v4 handleActiveComplicationsChanged];

    v7 = objc_loadWeakRetained((a1 + 48));
    [v7 handleInstalledApplicationsChanged];
  }

  else if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "unpaired from all watches", buf, 2u);
    }

    v6 = objc_loadWeakRetained((a1 + 48));
    [v6 setUpInitialState];
  }
}

void sub_10001F474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001F49C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained releaseVoucher];
}

void sub_10001F77C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRDevicePropertyPairingID];

  if (v3)
  {
    v4 = [v3 UUIDString];
    v5 = [*(a1 + 40) pairingID];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      v7 = wc_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting initial state for invactive (pairingID %@)", &v8, 0xCu);
      }

      [*(a1 + 40) resetInitialState];
    }
  }
}

void sub_100020228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100020254(uint64_t a1)
{
  *(*(a1 + 32) + 21) = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained releaseVoucher];
}

void sub_100021668(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_100021688(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021760;
    block[3] = &unk_100049320;
    objc_copyWeak(v7, (a1 + 48));
    v4 = *(a1 + 56);
    block[4] = *(a1 + 32);
    v7[1] = v4;
    dispatch_sync(&_dispatch_main_q, block);
    objc_destroyWeak(v7);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100021760(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    [v4 notifyObservers:v5];
  }
}

intptr_t sub_100021C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v9 = qword_100054CF8;
  v20 = qword_100054CF8;
  if (!qword_100054CF8)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100022308;
    v16[3] = &unk_100049370;
    v16[4] = &v17;
    sub_100022308(v16, a2, a3, a4, a5, a6, a7, a8, v15);
    v9 = v18[3];
  }

  v10 = v9;
  _Block_object_dispose(&v17, 8);
  v11 = [v9 initializeForAdmissionChecking:1];
  v12 = *(a1 + 32);
  v13 = *(v12 + 64);
  *(v12 + 64) = v11;

  return dispatch_semaphore_signal(*(*(a1 + 32) + 144));
}

void sub_100021D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100022144(uint64_t a1)
{
  v2 = sub_100022194();
  result = dlsym(v2, "kComplicationPushLimitsResetNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054CE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100022194()
{
  v3[0] = 0;
  if (!qword_100054CF0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100022294;
    v3[4] = &unk_100048E08;
    v3[5] = v3;
    v4 = off_100049390;
    v5 = 0;
    qword_100054CF0 = _sl_dlopen();
  }

  v0 = qword_100054CF0;
  v1 = v3[0];
  if (!qword_100054CF0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100022294(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100054CF0 = result;
  return result;
}

void sub_100022308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  sub_100022194();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_CDComplications");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100054CF8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = sub_10002C43C();
    sub_100022360(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void sub_100022360(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t WCDProtoMessageRequestReadFrom(uint64_t a1, void *a2)
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
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v49 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v49 & 0x7F) << v30;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_70;
            }
          }

          v20 = (v32 != 0) & ~[a2 hasError];
LABEL_70:
          v44 = 28;
          goto LABEL_75;
        }

        if (v13 == 5)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 32) |= 8u;
          while (1)
          {
            v48 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v48 & 0x7F) << v38;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_74;
            }
          }

          v20 = (v40 != 0) & ~[a2 hasError];
LABEL_74:
          v44 = 30;
LABEL_75:
          *(a1 + v44) = v20;
          goto LABEL_76;
        }

        if (v13 != 6)
        {
LABEL_52:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_76;
        }

        v21 = PBReaderReadData();
        v22 = 16;
      }

      else
      {
        if (v13 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v47 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v47 & 0x7F) << v23;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_68;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_68:
          *(a1 + 24) = v29;
          goto LABEL_76;
        }

        if (v13 != 2)
        {
          if (v13 != 3)
          {
            goto LABEL_52;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v50 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50 & 0x7F) << v14;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_72;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_72:
          v44 = 29;
          goto LABEL_75;
        }

        v21 = PBReaderReadData();
        v22 = 8;
      }

      v37 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_76:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WCDProtoMessageResponseReadFrom(uint64_t a1, void *a2)
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
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v40 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v40 & 0x7F) << v31;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_61;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v33;
          }

LABEL_61:
          v37 = 16;
          goto LABEL_62;
        }

        if (v13 != 4)
        {
LABEL_32:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_63;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v42 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v42 & 0x7F) << v16;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_53;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_53:
        *(a1 + 24) = v22;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v41 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v41 & 0x7F) << v24;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_57;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_57:
          v37 = 20;
LABEL_62:
          *(a1 + v37) = v30;
          goto LABEL_63;
        }

        if (v13 != 2)
        {
          goto LABEL_32;
        }

        v14 = PBReaderReadData();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

LABEL_63:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WCDProtoFirstUnlockStateReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_44;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 12) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
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

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WCDProtoDaemonClientsInformationReadFrom(uint64_t a1, void *a2)
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

uint64_t WCDProtoFirstUnlockAckReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_44;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 12) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
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

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WCDProtoInstalledAppsChangedReadFrom(uint64_t a1, void *a2)
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
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
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

uint64_t sub_100026964(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100054D00 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100027004(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 enabledTopics];
  v5 = [NSMutableSet setWithArray:v4];

  [v5 minusSet:*(a1 + 32)];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = wc_pushkit_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v18 = v3;
          v19 = 2114;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ downgrading Enabled topic %{public}@ to Ignored", buf, 0x16u);
        }

        [v3 moveTopic:v11 fromList:0 toList:2];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v8);
  }
}

void sub_1000271C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ignoredTopics];
  v5 = [NSMutableSet setWithArray:v4];

  [v5 intersectSet:*(a1 + 32)];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = wc_pushkit_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v18 = v3;
          v19 = 2114;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ upgrading Ignored topic %{public}@ to Enabled", buf, 0x16u);
        }

        [v3 moveTopic:v11 fromList:2 toList:0];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v8);
  }
}

void sub_100027644(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 enabledTopics];
  v5 = [NSMutableSet setWithArray:v4];

  v6 = [v3 ignoredTopics];
  v7 = [NSMutableSet setWithArray:v6];

  v8 = [v5 mutableCopy];
  v18 = v7;
  [v8 unionSet:v7];
  [v8 minusSet:*(a1 + 32)];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = wc_pushkit_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v24 = v3;
          v25 = 2114;
          v26 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidating token and removing topic %{public}@", buf, 0x16u);
        }

        [v3 invalidateTokenForTopic:v14 identifier:0];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  [v5 minusSet:v9];
  [v18 minusSet:v9];
  v16 = [v5 allObjects];
  v17 = [v18 allObjects];
  [v3 setEnabledTopics:v16 ignoredTopics:v17];
}

void sub_100028284(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() topicFromBundleId:v5];
  if ([v6 isProductionEnvironment] && objc_msgSend(*(a1 + 40), "isEqual:", APSEnvironmentProduction))
  {
    v9 = wc_pushkit_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v5;
      v10 = "requesting Product token for topic %{public}@ for bundle ID %{public}@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &v11, 0x16u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (([v6 isProductionEnvironment] & 1) == 0 && objc_msgSend(*(a1 + 40), "isEqual:", APSEnvironmentDevelopment))
  {
    v9 = wc_pushkit_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v5;
      v10 = "requesting Development token for topic %{public}@ for bundle ID %{public}@";
      goto LABEL_9;
    }

LABEL_10:

    [*(a1 + 48) requestTokenForTopic:v8 identifier:0];
  }
}

void sub_100028D7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = wc_pushkit_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10002C6D0(a1, v3, v4);
    }
  }

  else
  {
    v5 = wc_pushkit_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "meteringStartedOnComplication %{public}@", &v10, 0xCu);
    }

    v4 = +[WCDSystemMonitor sharedSystemMonitor];
    v7 = [v4 duetComplications];
    v8 = *(a1 + 32);
    v9 = objc_opt_new();
    [v7 meteringStartedOnComplication:v8 costDictionary:0 onDate:v9];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100028EDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = wc_pushkit_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002C78C(a1, v6, v7);
    }
  }

  v8 = wc_pushkit_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v15 = 138543362;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "meteringStoppedOnComplication %{public}@", &v15, 0xCu);
  }

  v10 = +[WCDSystemMonitor sharedSystemMonitor];
  v11 = [v10 duetComplications];
  v12 = *(a1 + 32);
  v13 = objc_opt_new();
  [v11 meteringStoppedOnComplication:v12 costDictionary:0 onDate:v13];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAssertion:0];
  [WeakRetained setAssertionInvalidationHandler:0];
}

void sub_100029548(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t WCDProtoPairedSyncComplicationsStartedReadFrom(uint64_t a1, void *a2)
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
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
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

os_state_data_s *__cdecl sub_100029B58(id a1, os_state_hints_s *a2)
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dumping state", buf, 2u);
  }

  NSAppendPrintF();
  v3 = 0;
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  v5 = [v4 state];

  if (v5)
  {
    v19 = v5;
    NSAppendPrintF();
    v6 = v3;

    v3 = v6;
  }

  v7 = +[WatchConnectivityDaemon sharedDaemon];
  v8 = [v7 state];

  if (v8)
  {
    v20 = v8;
    NSAppendPrintF();
    v9 = v3;

    v3 = v9;
  }

  v10 = +[WCDPushKitManager sharedPushKitManager];
  v11 = [v10 state];

  if (v11)
  {
    NSAppendPrintF();
    v12 = v3;

    v3 = v12;
  }

  NSAppendPrintF();
  v13 = v3;

  if (v13)
  {
    v14 = [NSPropertyListSerialization dataWithPropertyList:v13 format:200 options:0 error:0];
    v15 = [v14 length];
    v16 = malloc_type_calloc(1uLL, v15 + 200, 0x1000040BEF03554uLL);
    v17 = v16;
    if (v16)
    {
      v16->var0 = 1;
      v16->var1.var1 = v15;
      __strlcpy_chk();
      memcpy(v17->var4, [v14 bytes], v15);
    }
  }

  else
  {
    v17 = 0;
    v14 = 0;
  }

  return v17;
}

void sub_100029DC8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%@ is missing iOSAppBundleID", &v2, 0xCu);
}

void sub_100029E40(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%@ is missing watchAppBundleIdentifier", &v2, 0xCu);
}

void sub_100029EB8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error getting extension bundle ID for iOS app bundle ID %{public}@", &v3, 0xCu);
}

void sub_100029F34(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = NSPrintF();
  *buf = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@ due to %{public}@", buf, 0x16u);
}

void sub_100029FF0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error %{public}@. Already retried max times", &v2, 0xCu);
}

void sub_10002A07C()
{
  v5 = NSPrintF();
  sub_100009830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002A118()
{
  sub_100009840();
  [v1 loggingIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_10000984C();
  v2 = NSPrintF();
  sub_100009818();
  sub_100009830();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002A1C4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not get create directories. error: %@", &v2, 0xCu);
}

void sub_10002A23C()
{
  sub_100009840();
  [*(v1 + 32) loggingIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_10000984C();
  v2 = NSPrintF();
  sub_100009818();
  sub_100009830();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002A2EC()
{
  sub_100009840();
  [*(v1 + 32) loggingIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_10000984C();
  v2 = NSPrintF();
  sub_100009818();
  sub_100009830();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002A3B0(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "EXCEPTION: %s", buf, 0xCu);
}

void sub_10002A3F8(void *a1, NSObject *a2)
{
  v3 = [a1 keyEnumerator];
  v4 = [v3 allObjects];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Complications: %@", &v5, 0xCu);
}

void sub_10002A4A8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = *(a1 + 32);
  v5 = NSPrintF();
  *buf = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "error getting iOS app bundle ID for watch app bundle ID %{public}@ (%{public}@)", buf, 0x16u);
}

void sub_10002A564(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Missing bundleID for application: %@", &v2, 0xCu);
}

void sub_10002A620(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "unsupported fake protobuf type: %{public}@", &v2, 0xCu);
}

void sub_10002A698(uint64_t a1)
{
  v1 = NSPrintF();
  sub_100010144(&_mh_execute_header, v2, v3, "failed to persist wireData with error: %{public}@", v4, v5, v6, v7, a1, v9, 2u);
}

void sub_10002A72C(uint64_t a1)
{
  v1 = NSPrintF();
  sub_100010144(&_mh_execute_header, v2, v3, "%{public}@", v4, v5, v6, v7, a1, v9, 2u);
}

void sub_10002A7C0()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002A8CC()
{
  sub_10001AF74();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002A908(void *a1)
{
  v7 = [a1 wc_connectionBundleID];
  [a1 processIdentifier];
  sub_10001AF38();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10002A9BC()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002AA50()
{
  sub_10001AF74();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002AA8C()
{
  sub_10001AF74();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002AAC8()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002AB5C()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002ABF0()
{
  sub_10001AF74();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002AC2C()
{
  sub_10001AF74();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002AC68(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to open destination file for copying. Errno: %d", buf, 8u);
}

void sub_10002ACB4(uint64_t a1)
{
  v7 = *(*(*a1 + 8) + 40);
  v1 = NSPrintF();
  sub_10001AF44();
  sub_100009830();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10002AD58()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002ADEC()
{
  sub_10001AF8C();
  sub_10001AF80();
  v0 = NSPrintF();
  sub_10001AEE0();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002AEF0()
{
  sub_100009840();
  [v1 path];
  objc_claimAutoreleasedReturnValue();
  sub_10000984C();
  v2 = NSPrintF();
  sub_100009818();
  sub_100009830();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002AF9C()
{
  sub_10001AF8C();
  sub_10001AF80();
  v0 = NSPrintF();
  sub_10001AEE0();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002B038()
{
  sub_10001AF8C();
  sub_10001AF80();
  v0 = NSPrintF();
  sub_10001AEE0();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002B0D4()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002B168()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002B1FC()
{
  sub_10001AF68();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002B26C()
{
  sub_100009840();
  [v1 path];
  objc_claimAutoreleasedReturnValue();
  sub_10000984C();
  v2 = NSPrintF();
  sub_100009818();
  sub_100009830();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002B318()
{
  sub_10001AF8C();
  sub_10001AF80();
  v0 = NSPrintF();
  sub_10001AEE0();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002B3B4()
{
  sub_10001AF8C();
  sub_10001AF80();
  v0 = NSPrintF();
  sub_10001AEE0();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002B450(void *a1, void *a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *a1;
  *&v3[12] = 2114;
  *&v3[14] = *a2;
  sub_10001AEF8(&_mh_execute_header, a2, a3, "identifier: %{public}@, communicationID: %{public}@ failed to find transfer", *v3, *&v3[8], *&v3[16]);
}

void sub_10002B4D0(void *a1)
{
  [a1 type];
  sub_10001AF38();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10002B558(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  sub_10001AF68();
  sub_10001AF38();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10002B5EC()
{
  sub_10001AF74();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002B628(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10001AF5C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002B6A0()
{
  sub_10001AF74();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002B6DC()
{
  sub_10001AF68();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002B74C()
{
  sub_10001AF68();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002B830()
{
  sub_10001AF68();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002B8A0()
{
  sub_100009840();
  v1 = [v0 path];
  sub_10001AF68();
  sub_10001AF38();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10002B944()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_10001AF18(&_mh_execute_header, v1, v2, "error creating file folder %{public}@", v3, v4, v5, v6, v7, v8, v9);
}

void sub_10002B9D0()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_10001AF18(&_mh_execute_header, v1, v2, "error creating metadata folder %{public}@", v3, v4, v5, v6, v7, v8, v9);
}

void sub_10002BA5C()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_10001AF18(&_mh_execute_header, v1, v2, "error moving file into Inbox %{public}@", v3, v4, v5, v6, v7, v8, v9);
}

void sub_10002BAE8()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_10001AF18(&_mh_execute_header, v1, v2, "error deserializing user info data %{public}@", v3, v4, v5, v6, v7, v8, v9);
}

void sub_10002BB74()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_10001AF18(&_mh_execute_header, v1, v2, "error committing index of user info data %{public}@", v3, v4, v5, v6, v7, v8, v9);
}

void sub_10002BC00()
{
  sub_10001AF68();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002BC70()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002BD04()
{
  sub_10001AF74();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002BD40()
{
  v0 = NSPrintF();
  sub_10001AF44();
  sub_100009830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002BDE0()
{
  sub_10001AF74();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002BE50()
{
  sub_100009840();
  [v1 path];
  objc_claimAutoreleasedReturnValue();
  sub_10000984C();
  v2 = NSPrintF();
  sub_100009818();
  sub_100009830();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002BEFC()
{
  sub_100009840();
  [v1 path];
  objc_claimAutoreleasedReturnValue();
  sub_10000984C();
  v2 = NSPrintF();
  sub_100009818();
  sub_100009830();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002BFA8()
{
  sub_100009840();
  [v1 path];
  objc_claimAutoreleasedReturnValue();
  sub_10000984C();
  v2 = NSPrintF();
  sub_100009818();
  sub_100009830();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002C054()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_10001AF18(&_mh_execute_header, v1, v2, "error creating application context folder %{public}@", v3, v4, v5, v6, v7, v8, v9);
}

void sub_10002C0E0()
{
  sub_10001AF50(__stack_chk_guard);
  v0 = NSPrintF();
  sub_10001AF44();
  sub_10001AF18(&_mh_execute_header, v1, v2, "error writing application context data to file %{public}@", v3, v4, v5, v6, v7, v8, v9);
}

void sub_10002C1D4()
{
  sub_10001AF68();
  sub_10001AF5C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002C258(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = [*(a1 + 32) bundleID];
  v5 = NSPrintF();
  *buf = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
}

void sub_10002C390(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error: %{public}@", &v2, 0xCu);
}

void sub_10002C464(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error getting bundle record for %@: %@", &v3, 0x16u);
}

void sub_10002C6D0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = *(a1 + 32);
  v5 = NSPrintF();
  *buf = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "bundleID: %{public}@, failed with error %{public}@", buf, 0x16u);
}

void sub_10002C78C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "bundleID: %{public}@, failed to acquire process assertion wiht error %{public}@", &v4, 0x16u);
}