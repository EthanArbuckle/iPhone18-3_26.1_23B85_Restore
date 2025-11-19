int main(int argc, const char **argv, const char **envp)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PET daemon has launched", buf, 2u);
  }

  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  dispatch_source_set_event_handler(v3, &stru_10000C3A0);
  dispatch_resume(v3);
  _set_user_dir_suffix();
  v4 = NSTemporaryDirectory();
  v5 = objc_opt_new();
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to initialize PET service. Exiting...", buf, 2u);
    }

    exit(1);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001C40;
  handler[3] = &unk_10000C3C8;
  handler[4] = v5;
  xpc_activity_register("com.apple.proactiveeventtrackerd.sendDaily", XPC_ACTIVITY_CHECK_IN, handler);
  xpc_activity_register("com.apple.proactiveeventtrackerd.updateAssetMetadata", XPC_ACTIVITY_CHECK_IN, &stru_10000C408);
  dispatch_main();
}

void sub_100001C40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running sendDaily", buf, 2u);
    }

    sub_100001DB8(v3);
    [*(a1 + 32) upload];
    if (!xpc_activity_set_state(v3, 5) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error setting XPC activity state to DONE", v4, 2u);
    }
  }
}

void sub_100001D24(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_activity_get_state(v2) == 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running updateAssetMetadata", v3, 2u);
    }

    [PETService updateMobileAssetMetadataWithXPCActivity:v2];
    sub_100001DB8(v2);
  }
}

void sub_100001DB8(void *a1)
{
  v1 = a1;
  v2 = dispatch_time(0, 1000000000);
  v3 = dispatch_queue_create("com.apple.proactiveeventtrackerd.xpcMonitor", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E84;
  block[3] = &unk_10000C430;
  v6 = v1;
  v4 = v1;
  dispatch_after(v2, v3, block);
}

void sub_100001E84(uint64_t a1)
{
  state = xpc_activity_get_state(*(a1 + 32));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Checking defer for XPC activity", buf, 2u);
  }

  while (state == 4 || state == 2)
  {
    if (xpc_activity_should_defer(*(a1 + 32)))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting XPC activity state to DEFER", v5, 2u);
      }

      if (!xpc_activity_set_state(*(a1 + 32), 3) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error setting XPC activity state to DEFER", v4, 2u);
      }

      break;
    }

    [NSThread sleepForTimeInterval:0.100000001];
    state = xpc_activity_get_state(*(a1 + 32));
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finished checking defer for XPC activity", v3, 2u);
  }
}

void sub_100002020(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received SIGTERM. Exiting...", v1, 2u);
  }

  exit(0);
}

void sub_100002694(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%@ to report data to FBFv2. Error: %@", buf, 0x16u);
    }

    v12[0] = @"reason";
    v4 = [NSString stringWithFormat:@"PFA__%@", v3];
    v12[1] = @"group";
    v13[0] = v4;
    v13[1] = *(a1 + 32);
    v5 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) length];
      *buf = 138412546;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ has been sent to FBFv2. Size: %lu", buf, 0x16u);
    }

    v8 = *(a1 + 40);
    v11[0] = *(a1 + 32);
    v10[0] = @"message_group";
    v10[1] = @"compressed_size";
    v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 length]);
    v10[2] = @"upload_service";
    v11[1] = v4;
    v11[2] = @"PFA";
    v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  }

  AnalyticsSendEvent();
}

Class sub_10000327C(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100010A10)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_1000036C8;
    v6[4] = &unk_10000C530;
    v6[5] = v6;
    v7 = off_10000C518;
    v8 = 0;
    qword_100010A10 = _sl_dlopen();
  }

  if (!qword_100010A10)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *SearchFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PETService.m" lineNumber:37 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SFCustomFeedback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getSFCustomFeedbackClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PETService.m" lineNumber:39 description:{@"Unable to find class %s", "SFCustomFeedback"}];

LABEL_10:
    __break(1u);
  }

  qword_100010A08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100003468(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100010A20)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100003654;
    v6[4] = &unk_10000C530;
    v6[5] = v6;
    v7 = off_10000C550;
    v8 = 0;
    qword_100010A20 = _sl_dlopen();
  }

  if (!qword_100010A20)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoreParsecLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PETService.m" lineNumber:36 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PARSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getPARSessionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PETService.m" lineNumber:38 description:{@"Unable to find class %s", "PARSession"}];

LABEL_10:
    __break(1u);
  }

  qword_100010A18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003654(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100010A20 = result;
  return result;
}

uint64_t sub_1000036C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100010A10 = result;
  return result;
}

void sub_1000038BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v21[0] = @"reason";
    v4 = [NSString stringWithFormat:@"fbfv2__%@", v3];
    v22[0] = v4;
    v21[1] = @"group";
    v5 = [*(a1 + 32) metadata];
    v6 = [v5 messageGroup];
    v22[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    AnalyticsSendEvent();

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to report data to FBFv2. Error: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) metadata];
      v9 = [v8 messageGroup];
      v10 = [*(a1 + 40) length];
      *buf = 138412546;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Upload data has been sent to FBFv2. messageGroup: %@; size: %lu", buf, 0x16u);
    }

    v15[0] = @"message_group";
    v11 = [*(a1 + 32) metadata];
    v12 = [v11 messageGroup];
    v16[0] = v12;
    v15[1] = @"compressed_size";
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) length]);
    v15[2] = @"upload_service";
    v16[1] = v13;
    v16[2] = @"fbfv2";
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
    AnalyticsSendEvent();
  }
}

void sub_100003FC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 sortUsingSelector:"compare:"];
  v6 = [*(a1 + 32) _pas_componentsJoinedByString:@"\n"];
  v5 = [v6 dataUsingEncoding:4];
  [v4 writeData:v5];
}

void sub_100004060(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 _pas_componentsJoinedByString:@"\n"];
  v4 = [v5 dataUsingEncoding:4];
  [v3 writeData:v4];
}

uint64_t sub_100004220(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) assembleUnaggregatedUploadWithTracker:*(*(a1 + 40) + 8) messageGroup:a2];
  if (v3)
  {
    [*(a1 + 40) _uploadWithUploadPackage:v3];
  }

  return _objc_release_x1();
}

void sub_1000045B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MobileAsset metadata has been downloaded successfully.", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error downloading mobileasset metadata", v4, 2u);
    }

    AnalyticsSendEvent();
  }

  if (!xpc_activity_set_state(*(a1 + 32), 5) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error setting XPC activity state to DONE", v3, 2u);
  }
}

void sub_100004EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004ED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) compressedMessages];
  v5 = [v4 length];

  if (v5 <= 0x1F8000)
  {
    if (v3)
    {
      v6 = *(a1 + 40);
      if (v6[8] != 1)
      {
LABEL_9:
        [*(a1 + 32) addMessage:v3];
        [*(a1 + 56) addUnaggregatedMessages:v3];
        *(*(*(a1 + 64) + 8) + 24) = 1;
        goto LABEL_13;
      }

      if ([v6 _canLog:v3 messageGroup:*(a1 + 48) isInternal:*(a1 + 72)])
      {
        v7 = [*(a1 + 40) petConfig];
        v8 = [v3 name];
        v9 = [v7 isAggregatedForMessageName:v8];

        if ((v9 & 1) == 0)
        {
          v10 = *(a1 + 40);
          v11 = [v3 name];
          LODWORD(v10) = [v10 _checkMessageSampling:v11];

          if (v10)
          {
            v12 = [*(a1 + 40) petConfig];
            v13 = [v3 name];
            v14 = [v12 whitelistForMessageName:v13];

            if (v14)
            {
              v15 = [v3 rawBytes];
              v16 = [PETProtobufRawDecoder filterProtobufData:v15 withWhitelist:v14];
              [v3 setRawBytes:v16];

              goto LABEL_9;
            }
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 48);
        *buf = 138412290;
        v23 = v19;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected nil message when enumerating log store: %@", buf, 0xCu);
      }

      v20[0] = @"reason";
      v20[1] = @"msg_group";
      v17 = *(a1 + 48);
      v21[0] = @"nil_message";
      v21[1] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
      AnalyticsSendEvent();
    }
  }

LABEL_13:
}

void sub_1000055AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000055D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) compressedMessages];
  v5 = [v4 length];

  if (v5 <= 0x1F8000)
  {
    if (v3)
    {
      v6 = [v3 key];
      v7 = [v6 rawMessage];

      if (*(*(a1 + 40) + 8) == 1)
      {
        v8 = [v7 name];
        v9 = [v8 isEqualToString:@"PET1Key"];

        if (v9)
        {
          v10 = [PET1Key alloc];
          v11 = [v7 rawBytes];
          v12 = [v10 initWithData:v11];

          LOBYTE(v11) = [*(a1 + 40) _canLogPET1Key:v12];
          if ((v11 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (![*(a1 + 40) _canLog:v7 messageGroup:@"_aggregated" isInternal:*(a1 + 56)])
          {
            goto LABEL_14;
          }

          v13 = [*(a1 + 40) petConfig];
          v14 = [v7 name];
          v15 = [v13 whitelistForMessageName:v14];

          if (!v15)
          {
            goto LABEL_14;
          }

          v16 = [v7 rawBytes];
          v17 = [PETProtobufRawDecoder filterProtobufData:v16 withWhitelist:v15];
          [v7 setRawBytes:v17];
        }
      }

      [*(a1 + 32) addMessage:v3];
      *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_14:

      goto LABEL_15;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected nil message when enumerating aggregated state", v18, 2u);
    }

    AnalyticsSendEvent();
  }

LABEL_15:
}