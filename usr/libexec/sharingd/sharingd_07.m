void sub_1001E805C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = [a4 wiFiManager];
  v7 = [a4 request];
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 identifier];
    v10 = 136315906;
    v11 = "awdlStopNetworkCallback";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s AWDL Stop network request: %@ identifier: %@ error: %d", &v10, 0x26u);
  }

  [v6 handleNetworkStoppedWithError:v7 error:a2];
}

void sub_1001E84B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E84EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAWDLTimerFired];
}

void sub_1001E9184(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[SDAutoUnlockWiFiManager rangingReportEventForWiFiInterfaceWithName:data:error:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Wi-Fi Ranging results %@", &v10, 0x16u);
  }

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wi-Fi Ranging error %@", &v10, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) currentRequest];
  [v7 setWifiRangingError:v6];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 48) currentRequest];
  [v9 setWifiRangingResults:v8];
}

void sub_1001E9B10(void *a1)
{
  v6 = [a1 identifier];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_1001E9BD8(void *a1)
{
  v6 = [a1 identifier];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1001E9CD0(void *a1)
{
  v6 = [a1 currentRequest];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1001E9D74(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[SDAutoUnlockWiFiManager _handleNetworkStarted:request:error:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s AWDL bring up failed (error: %ld)", &v2, 0x16u);
}

uint64_t SDUnlockClassALongTermKeyRequestReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 8);
        *(a1 + 8) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_44:
          v30 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_50;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
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

LABEL_48:
          v30 = 20;
        }

        *(a1 + v30) = v20;
      }

LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1001EA8AC()
{
  v0 = [NSDictionary dictionaryWithObject:kCFBooleanTrue forKey:@"LockDeviceNow"];
  MKBLockDevice();
}

SDContactFetchResult *sub_1001EA974(uint64_t a1, void *a2, void *a3)
{
  v21 = 0;
  v4 = [a2 enumeratorForChangeHistoryFetchRequest:a1 error:&v21];
  v5 = v21;
  if (v5)
  {
    v6 = airdrop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to get change history with error %@", buf, 0xCu);
    }

    if (a3)
    {
      v7 = v5;
      v8 = 0;
      *a3 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v4 value];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 addObject:*(*(&v17 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }

    v8 = objc_alloc_init(SDContactFetchResult);
    [(SDContactFetchResult *)v8 setEvents:v9];
    v15 = [v4 currentHistoryToken];
    [(SDContactFetchResult *)v8 setCurrentHistoryToken:v15];
  }

  return v8;
}

id sub_1001EAB78(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) identifier];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id sub_1001EACB0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || (v6 = v3, v4))
  {
    if (v3 || (v6 = v4) == 0)
    {
      [v3 horizontalAngle];
      v8 = v7;
      [v3 horizontalAngle];
      if (v8 >= 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = -v9;
      }

      [v5 horizontalAngle];
      v12 = v11;
      [v5 horizontalAngle];
      if (v12 < 0.0)
      {
        v13 = -v13;
      }

      v6 = v3;
      if (v10 >= v13)
      {
        [v3 horizontalAngle];
        v15 = v14;
        [v3 horizontalAngle];
        if (v15 >= 0.0)
        {
          v17 = v16;
        }

        else
        {
          v17 = -v16;
        }

        [v5 horizontalAngle];
        v19 = v18;
        [v5 horizontalAngle];
        if (v19 < 0.0)
        {
          v20 = -v20;
        }

        v6 = v5;
        if (v17 <= v20)
        {
          [v3 ptsScore];
          v22 = v21;
          [v5 ptsScore];
          v6 = v3;
          if (v22 <= v23)
          {
            [v3 ptsScore];
            v25 = v24;
            [v5 ptsScore];
            if (v25 >= v26)
            {
              v6 = v3;
            }

            else
            {
              v6 = v5;
            }
          }
        }
      }
    }
  }

  v27 = v6;

  return v27;
}

id sub_1001EAE00()
{
  v0 = SFNodeCopyRangingData();
  if ([v0 length])
  {
    v1 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v0 error:0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1001EAE7C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 mutableCopy];
  [v4 addEntriesFromDictionary:v3];

  v5 = [NSDictionary dictionaryWithDictionary:v4];

  return v5;
}

id sub_1001EAEEC(void *a1, void *a2)
{
  v9 = 0;
  v8 = 0;
  [a1 getResourceValue:&v9 forKey:NSURLVolumeAvailableCapacityKey error:&v8];
  v3 = v9;
  v4 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    goto LABEL_8;
  }

  if (v4)
  {
    if (a2)
    {
LABEL_5:
      v6 = v4;
      v5 = 0;
      *a2 = v4;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = [NSError errorWithDomain:@"SFErrorDomain" code:-1007 userInfo:0];
    if (a2)
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

void sub_1001EAFE0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  queue = a2;
  v28 = a3;
  v6 = dispatch_group_create();
  v7 = +[NSMutableSet set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    v29 = v44;
    v30 = v36;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = [v13 personHandle];
        v15 = [v14 value];

        if (v15)
        {
          v16 = [v13 aliases];
          v17 = [v16 count];

          if (v17)
          {
            dispatch_group_enter(v6);
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v36[0] = sub_1001EB358;
            v36[1] = &unk_1008D3B28;
            v37 = v7;
            v38 = v6;
            v18 = v13;
            v19 = queue;
            v20 = v35;
            v21 = [v18 personHandle];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v44[0] = sub_1001EB638;
            v44[1] = &unk_1008D3B78;
            v46 = v19;
            v47 = v20;
            v45 = v18;
            v22 = v18;
            v23 = v19;
            sub_1001EB42C(v21, v23, v43);

            v24 = v37;
          }

          else
          {
            v24 = [v13 personHandle];
            v25 = [v24 value];
            [v7 addObject:v25];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v10);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EB39C;
  block[3] = &unk_1008CF578;
  v33 = v7;
  v34 = v28;
  v26 = v7;
  v27 = v28;
  dispatch_group_notify(v6, queue, block);
}

void sub_1001EB358(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_1001EB39C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_1001EB42C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 value];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v5 type];

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [v5 type];
  if (v11 == 1)
  {
    v12 = [v5 value];
    v13 = _IDSCopyIDForEmailAddress();
  }

  else
  {
    if (v11 != 2)
    {
LABEL_11:
      v7[2](v7, 0);
      goto LABEL_12;
    }

    v12 = [v5 value];
    v13 = _IDSCopyIDForPhoneNumberWithOptions();
  }

  v14 = v13;

  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = share_sheet_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Querying IDS for destination %@", buf, 0xCu);
  }

  v16 = +[IDSIDQueryController sharedInstance];
  v17 = IDSServiceNameiMessage;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001EB9FC;
  v18[3] = &unk_1008D3BA0;
  v19 = v7;
  [v16 refreshIDStatusForDestination:v14 service:v17 listenerID:v17 queue:v6 completionBlock:v18];

LABEL_12:
}

void sub_1001EB638(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v15 = [*(a1 + 32) personHandle];
    v4 = [v15 value];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    v5 = dispatch_group_create();
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = sub_1001EB95C;
    v26[4] = sub_1001EB96C;
    v27 = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [*(a1 + 32) aliases];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v7)
    {
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [v10 value];
          v12 = v11 == 0;

          if (!v12)
          {
            dispatch_group_enter(v5);
            v13 = *(a1 + 40);
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_1001EB974;
            v19[3] = &unk_1008D3B50;
            v21 = v26;
            v19[4] = v10;
            v20 = v5;
            sub_1001EB42C(v10, v13, v19);
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v7);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001EB9E0;
    block[3] = &unk_1008D0BB8;
    v14 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = v26;
    dispatch_group_notify(v5, v14, block);

    _Block_object_dispose(v26, 8);
  }
}

uint64_t sub_1001EB95C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001EB974(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v3 = 1;
  }

  else
  {
    v3 = a2 == 0;
  }

  if (!v3)
  {
    v4 = [*(a1 + 32) value];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 40);

  dispatch_group_leave(v7);
}

uint64_t sub_1001EB9FC(uint64_t a1, uint64_t a2)
{
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Async query returned status %ld", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2 == 1);
}

void sub_1001ECBC4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001ECC68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001ECC80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v44 = 0;
  v43 = 0;
  [v7 getResourceValue:&v44 forKey:NSURLIsAliasFileKey error:&v43];
  v10 = v44;
  v11 = v43;
  if (v11)
  {
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001EFD10();
    }

LABEL_4:

    goto LABEL_5;
  }

  if ([v10 BOOLValue])
  {
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to send alias file, keeping original URL", buf, 2u);
    }

    goto LABEL_4;
  }

LABEL_5:
  if ([v10 BOOLValue])
  {
    v13 = v7;
  }

  else
  {
    v13 = [SDAirDropLegacyHelper realPathURL:v7];
  }

  v14 = v13;
  if (v13)
  {
    v36 = v10;
    v15 = objc_alloc_init(SDAirDropConvertMediaItemsResult);
    [(SDAirDropConvertMediaItemsResult *)v15 setUrl:v14];
    [(SDAirDropConvertMediaItemsResult *)v15 setConversionNeeded:v9];
    [(SDAirDropConvertMediaItemsResult *)v15 setConversionDestination:v8];
    pthread_mutex_lock(&stru_100972940);
    [*(a1 + 32) addObject:v15];
    [*(a1 + 40) addObject:v14];
    if (v8)
    {
      [*(a1 + 48) addObject:v8];
    }

    pthread_mutex_unlock(&stru_100972940);
    v41 = 0;
    [v14 getResourceValue:&v41 forKey:NSURLIsDirectoryKey error:0];
    v16 = v41;
    if ([v16 BOOLValue])
    {
      v32 = v11;
      v33 = v9;
      v34 = v8;
      v35 = v7;
      v17 = +[NSFileManager defaultManager];
      v46[0] = NSURLIsDirectoryKey;
      v46[1] = NSURLIsReadableKey;
      v18 = [NSArray arrayWithObjects:v46 count:2];
      v19 = [v17 enumeratorAtURL:v14 includingPropertiesForKeys:v18 options:7 errorHandler:0];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v38;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v38 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v37 + 1) + 8 * i);
            pthread_mutex_lock(&stru_100972940);
            if (([*(a1 + 40) containsObject:v25] & 1) == 0)
            {
              [*(a1 + 40) addObject:v25];
            }

            pthread_mutex_unlock(&stru_100972940);
          }

          v22 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v22);
      }

      v8 = v34;
      v7 = v35;
      v11 = v32;
      v9 = v33;
    }

    v10 = v36;
  }

  else
  {
    v26 = v11;
    v27 = sub_1001F1094(v7);
    if (v27)
    {
      v28 = v27;
      v29 = sub_100092BE0(-6, v27);
      CFRelease(v28);
    }

    else
    {
      v29 = sub_100092BE0(-5, 0);
    }

    v11 = v26;
    v30 = airdrop_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1001EFD80();
    }

    *(*(*(a1 + 64) + 8) + 24) = 10;
    v31 = *(*(a1 + 72) + 8);
    v15 = *(v31 + 40);
    *(v31 + 40) = v29;
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_1001ED0AC(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  dispatch_group_enter(v3);
  [SDAirDropLegacyHelper convertMediaItemFromURL:v4 forMediaCapabilities:a1[5] conversionManager:a1[6] progressHandler:a1[7] completionHandler:a1[8]];
}

void sub_1001ED114(void *a1, void *a2, id obj, void *a4, void *a5)
{
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v10 = obj;
  v11 = a5;
  v12 = a4;
  v14 = a2;
  if (!v14)
  {
    v13 = a1[4];
  }

  (*(a1[5] + 16))();
}

void sub_1001ED1D4(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  if (*(*(*(a1 + 80) + 8) + 24) == 10)
  {
    v2 = *(*(*(a1 + 88) + 8) + 40);
    v3 = *(a1 + 40);
    (*(*(a1 + 72) + 16))(*(a1 + 72));
  }

  else if (*(a1 + 104))
  {
    v4 = *(a1 + 64);
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(*(*(a1 + 96) + 8) + 40);
    v8 = *(a1 + 40);
    (*(*(a1 + 72) + 16))(*(a1 + 72));
  }

  else
  {
    v9 = *(a1 + 48);
    v16 = 0;
    v10 = [SDAirDropLegacyHelper convertWideGamutToClampedPhotoForURLs:v9 outTmpDirectory:&v16];
    v11 = v16;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001ED378;
    v13[3] = &unk_1008D3CE8;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    [v10 enumerateKeysAndObjectsUsingBlock:v13];
    v12 = *(a1 + 40);
    (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 56), *(a1 + 48), *(a1 + 64), *(*(*(a1 + 96) + 8) + 40));
  }
}

void sub_1001ED378(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) addObject:v6];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 url];
        v14 = [v13 isEqual:v5];

        if (v14)
        {
          [v12 setUrl:v6];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1001ED5C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001ED6C0;
  v15[3] = &unk_1008CE6B8;
  v16 = v7;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v18 = v9;
  v19 = v11;
  v17 = v8;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void sub_1001ED6C0(void *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    v3 = [[PFVideoComplement alloc] initWithBundleAtURL:*v2];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 imagePath];
      v6 = [NSURL fileURLWithPath:v5];
      v12 = 0;
      [v6 getResourceValue:&v12 forKey:NSURLTypeIdentifierKey error:0];
      v7 = v12;

      v8 = [NSNumber numberWithBool:[v7 isEqual:kUTTypeJPEG]];
    }

    else
    {
      v7 = airdrop_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001EFE04(v2);
      }

      v8 = 0;
    }

    v9 = *v2;
  }

  else
  {
    v8 = 0;
  }

  v10 = a1[6];
  v11 = a1[5];
  (*(a1[7] + 16))();
}

void sub_1001EDCA4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001EFE7C(v2, v4);
    }

    v5 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = [*v2 backwardsCompatibilityStatus];
    v7 = airdrop_log();
    v8 = v7;
    if (v6 == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 48);
        *buf = 138412290;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Conversion required for %@", buf, 0xCu);
      }

      v10 = *(a1 + 80);
      v11 = [*(a1 + 32) progress];
      (*(v10 + 16))(v10, v11);

      v12 = *(a1 + 56);
      v13 = *(a1 + 32);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1001EDFF8;
      v23[3] = &unk_1008D3D60;
      v24 = v13;
      v25 = *(a1 + 48);
      v28 = *(a1 + 72);
      v26 = *(a1 + 64);
      v27 = *(a1 + 40);
      [v12 enqueueConversionRequest:v24 completionHandler:v23];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 48);
        *buf = 138412290;
        v30 = v14;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No conversion needed for %@", buf, 0xCu);
      }

      v15 = [*(a1 + 64) fileURL];
      v16 = v15;
      if (!v15)
      {
        v16 = *(a1 + 40);
      }

      v17 = v16;

      if (*(a1 + 88) == 1)
      {
        v18 = [*v2 livePhotoConversionRequest];
        v19 = [v18 imageConversionRequest];
        v20 = [v19 source];
        v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 containsHEIFImage]);
      }

      else
      {
        if ([*(a1 + 64) containsVideoWithFormatEligibleForTranscoding])
        {
          v22 = 1;
        }

        else
        {
          v22 = [*(a1 + 64) containsHEIFImage];
        }

        v21 = [NSNumber numberWithInt:v22];
      }

      (*(*(a1 + 72) + 16))();
    }
  }
}

void sub_1001EDFF8(uint64_t a1)
{
  if ([*(a1 + 32) status] == 4)
  {
    v2 = airdrop_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) destination];
      v5 = [v4 fileURL];
      *buf = 138412546;
      v21 = v3;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Converted %@ to %@", buf, 0x16u);
    }

    v6 = *(a1 + 64);
    v7 = [*(a1 + 32) destination];
    v8 = [v7 fileURL];
    v9 = [*(a1 + 32) destination];
    (*(v6 + 16))(v6, v8, v9, 0);

    return;
  }

  v10 = [*(a1 + 32) error];
  v11 = [v10 domain];
  if ([v11 isEqual:PHMediaFormatConversionErrorDomain])
  {
    v12 = [*(a1 + 32) error];
    v13 = [v12 code];

    if (v13 == 2)
    {
      v14 = *(a1 + 64);
      v19 = [*(a1 + 48) fileURL];
      (*(v14 + 16))(v14);

      return;
    }
  }

  else
  {
  }

  v15 = airdrop_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) error];
    *buf = 138412546;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "failed to convert %@ with error %@", buf, 0x16u);
  }

  v18 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();
}

void sub_1001EF7C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1001EF7FC(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = airdrop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 41);
      v9[0] = 67109376;
      v9[1] = v4;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turning on AirDrop, turning on WLAN=%d, Bluetooth=%d", v9, 0xEu);
    }

    if (*(a1 + 40) == 1)
    {
      v6 = +[SDStatusMonitor sharedMonitor];
      [v6 setWirelessEnabled:1];
    }

    if (*(a1 + 41) == 1)
    {
      v7 = +[SDStatusMonitor sharedMonitor];
      [v7 setBluetoothEnabled:1];
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_1001EF92C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error presenting enable radios alert %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

id sub_1001EF9F8()
{
  if (qword_10098A200 != -1)
  {
    sub_1001F025C();
  }

  v1 = qword_10098A1F8;

  return v1;
}

void sub_1001EFA3C(id a1)
{
  if (qword_10098A208 != -1)
  {
    sub_1001F0270();
  }

  v1 = dlsym(qword_10098A210, "SFSharablePasswordURLSchemeForAirDrop");
  if (v1)
  {
    objc_storeStrong(&qword_10098A1F8, *v1);
  }

  off_100972980 = sub_1001EFAA4;
}

void sub_1001EFADC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001EFB4C(uint64_t a1, NSObject *a2)
{
  v4 = *__error();
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SDAirDropClient: realpath(%s) failed with error %d", &v5, 0x12u);
}

void sub_1001EFBEC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001EFC5C(uint64_t *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001EFCD4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001EFD10()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001EFD80()
{
  sub_10000883C();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "realPathURL returned NULL for file URL %@. Failing transfer with error %@", v2, 0x16u);
}

void sub_1001EFE04(uint64_t *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001EFE7C(id *a1, NSObject *a2)
{
  v3 = [*a1 error];
  sub_10000883C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Conversion preflight failed with error %@", v4, 0xCu);
}

void sub_1001EFF14()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001EFF84(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Sending credentials to non-contacts is not permitted", buf, 2u);
}

void sub_1001EFFC4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SDAirDropClient: internetLocationFile returned nil", buf, 2u);
}

void sub_1001F0004()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F0040()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F007C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F00B8(uint64_t *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001F0130()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F016C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F01A8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F01E4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F0220()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F0284(const void *a1)
{
  error = 0;
  if (sub_1001F0448(a1))
  {
    v2 = CFGetAllocator(a1);
    v3 = CFDateCreate(v2, -534528000.0);
    if (!CFURLSetResourcePropertyForKey(a1, kCFURLCreationDateKey, v3, &error))
    {
      v4 = airdrop_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1001F3448(&error);
      }

      CFRelease(error);
    }

    v5 = v3;
LABEL_17:
    CFRelease(v5);
    return;
  }

  theData = 0;
  v6 = _kCFURLFinderInfoKey;
  if (!CFURLCopyResourcePropertyForKey(a1, _kCFURLFinderInfoKey, &theData, &error))
  {
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001F33D8(&error);
    }

    v5 = error;
    goto LABEL_17;
  }

  if (theData)
  {
    v7 = CFGetAllocator(a1);
    MutableCopy = CFDataCreateMutableCopy(v7, 0, theData);
    *CFDataGetMutableBytePtr(MutableCopy) = 0x4D41435362726F6BLL;
    if (!CFURLSetResourcePropertyForKey(a1, v6, MutableCopy, &error))
    {
      v9 = airdrop_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001F332C(&error);
      }

      CFRelease(error);
    }

    CFRelease(MutableCopy);
    v5 = theData;
    goto LABEL_17;
  }

  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1001F339C();
  }
}

BOOL sub_1001F0448(const __CFURL *a1)
{
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(a1, kCFURLIsDirectoryKey, &propertyValueTypeRefPtr, 0))
  {
    v1 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v1 = 1;
  }

  return !v1 && CFBooleanGetValue(propertyValueTypeRefPtr) != 0;
}

id sub_1001F04A8(signed int a1)
{
  if (a1 < 1)
  {
    v1 = 0;
  }

  else
  {
    *v3 = 0;
    v4 = 0;
    if_indextoname(a1, v3);
    v1 = [NSString stringWithUTF8String:v3];
  }

  return v1;
}

NSObject *sub_1001F0548(int a1, NSObject *a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2147483647000000000;
  }

  v8 = dispatch_time(0, v7);
  dispatch_source_set_timer(v6, v8, 0x1DCD64FFC4653600uLL, 0);
  dispatch_source_set_event_handler(v6, v5);

  return v6;
}

void sub_1001F05F0(NSObject *a1, dispatch_time_t a2)
{
  if (a1)
  {
    dispatch_source_set_timer(a1, a2, 0x1DCD64FFC4653600uLL, 0);
  }
}

uint64_t sub_1001F061C()
{
  pthread_mutex_lock(&stru_100972988);
  --dword_1009A0618;

  return pthread_mutex_unlock(&stru_100972988);
}

void sub_1001F066C(__CFDictionary *a1, const void *a2, const void *a3)
{
  sub_100117364(a1, a2, a3);
  if (a3)
  {

    CFRelease(a3);
  }
}

CFNumberRef sub_1001F06B4(const __CFAllocator *a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  *buffer = 0u;
  v6 = 0u;
  if (!CFStringGetCString(theString, buffer, 32, 0x8000100u))
  {
    return 0;
  }

  valuePtr = strtoll(buffer, 0, 0);
  return CFNumberCreate(a1, kCFNumberSInt64Type, &valuePtr);
}

__CFArray *sub_1001F0760(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v2, 0, &kCFTypeArrayCallBacks);
  for (i = CFURLCopyAbsoluteURL(a1); ; i = CFURLCreateCopyDeletingLastPathComponent(v2, i))
  {
    CFArrayAppendValue(Mutable, i);
    CFRelease(i);
    v5 = CFURLCopyFileSystemPath(i, kCFURLPOSIXPathStyle);
    if (v5)
    {
      v6 = v5;
      v7 = CFEqual(v5, @"/");
      CFRelease(v6);
      if (v7)
      {
        break;
      }
    }
  }

  Count = CFArrayGetCount(Mutable);
  v9 = CFArrayCreateMutable(v2, Count, &kCFTypeArrayCallBacks);
  if (Count >= 1)
  {
    v10 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v10 - 2);
      CFArrayAppendValue(v9, ValueAtIndex);
      --v10;
    }

    while (v10 > 1);
  }

  CFRelease(Mutable);
  return v9;
}

CFTypeRef sub_1001F0874(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = CFGetAllocator(a1);
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(v4, ValueAtIndex);
  v7 = PathComponent;
  if (v3 != 1 && PathComponent)
  {
    for (i = 1; i != v3; ++i)
    {
      v9 = sub_1001F0760(v7);
      v10 = CFArrayGetValueAtIndex(a1, i);
      v11 = sub_1001F0760(v10);
      v12 = CFArrayGetCount(v9);
      v13 = CFArrayGetCount(v11);
      if (v12 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      if (v14 >= 1)
      {
        v15 = 0;
        while (1)
        {
          v16 = CFArrayGetValueAtIndex(v9, v15);
          v17 = CFArrayGetValueAtIndex(v11, v15);
          if (!CFEqual(v16, v17))
          {
            break;
          }

          if (v14 == ++v15)
          {
            v15 = v14;
            goto LABEL_14;
          }
        }

        if (!v15)
        {
          goto LABEL_15;
        }

LABEL_14:
        CFRelease(v7);
        v18 = CFArrayGetValueAtIndex(v11, v15 - 1);
        v7 = CFRetain(v18);
      }

LABEL_15:
      CFRelease(v9);
      CFRelease(v11);
    }
  }

  return v7;
}

void *sub_1001F09CC(const void *a1, const __CFURL *a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  v6 = CFArrayCreateMutable(v4, 0, &kCFTypeArrayCallBacks);
  v7 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
  v8 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  v9 = v8;
  if (v7 && v8)
  {
    v10 = CFRetain(v8);
    if (CFEqual(v10, v7))
    {
      v11 = v10;
LABEL_5:
      v12 = v11;
      goto LABEL_9;
    }

    while (1)
    {
      v22 = sub_1001F0BCC(v10);
      if (v22)
      {
        v23 = v22;
        CFArrayAppendValue(v6, v22);
        CFRelease(v23);
      }

      v24 = sub_1001F0C1C(v10);
      if (!v24)
      {
        break;
      }

      v11 = v24;
      if (CFEqual(v24, @"/"))
      {
        CFRelease(v11);
        break;
      }

      CFRelease(v10);
      v10 = v11;
      if (CFEqual(v11, v7))
      {
        goto LABEL_5;
      }
    }

LABEL_8:
    v12 = v10;
LABEL_9:
    CFRelease(v12);
    goto LABEL_10;
  }

  PathComponent = CFURLCopyLastPathComponent(a1);
  if (PathComponent)
  {
    v10 = PathComponent;
    CFArrayAppendValue(v6, PathComponent);
    goto LABEL_8;
  }

LABEL_10:
  CFArrayAppendValue(v6, @".");
  Count = CFArrayGetCount(v6);
  v15 = Count - 1;
  if (Count >= 1)
  {
    v16 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v15);
    CFStringAppend(Mutable, ValueAtIndex);
    if (v15)
    {
      v18 = v16 - 2;
      do
      {
        CFStringAppend(Mutable, @"/");
        v19 = CFArrayGetValueAtIndex(v6, v18);
        CFStringAppend(Mutable, v19);
        --v18;
      }

      while (v18 != -1);
    }
  }

  v20 = sub_1001F0CA8(Mutable);
  CFRelease(v6);
  CFRelease(Mutable);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v20;
}

const __CFURL *sub_1001F0BCC(const __CFString *a1)
{
  v2 = CFGetAllocator(a1);
  result = CFURLCreateWithFileSystemPath(v2, a1, kCFURLPOSIXPathStyle, 0);
  if (result)
  {
    v4 = result;
    PathComponent = CFURLCopyLastPathComponent(result);
    CFRelease(v4);
    return PathComponent;
  }

  return result;
}

CFStringRef sub_1001F0C1C(const __CFString *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFURLCreateWithFileSystemPath(v2, a1, kCFURLPOSIXPathStyle, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(v2, v3);
  if (PathComponent)
  {
    v6 = PathComponent;
    v7 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

void *sub_1001F0CA8(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    free(v4);
    return 0;
  }

  return v4;
}

id sub_1001F0D2C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 bytes];
    v3 = [v1 length];

    CC_SHA256(v2, v3, &v5);
    a1 = [NSData dataWithBytes:&v5 length:32];
  }

  return a1;
}

id sub_1001F0DEC(void *a1)
{
  if (a1)
  {
    v1 = [a1 dataUsingEncoding:4];
    v2 = v1;
    if (v1)
    {
      v3 = sub_1001F0D2C(v1);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001F0E58(void *a1)
{
  if (a1)
  {
    v1 = sub_1001F0D2C(a1);
    v2 = v1;
    if (v1)
    {
      v3 = [v1 base64EncodedStringWithOptions:0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1001F0EC4(const __CFString *a1)
{
  v2 = CFGetAllocator(a1);
  ExternalRepresentation = CFStringCreateExternalRepresentation(v2, a1, 0x8000100u, 0);
  if (!ExternalRepresentation)
  {
    return 0;
  }

  v4 = ExternalRepresentation;
  v5 = sub_1001F0E58(ExternalRepresentation);
  CFRelease(v4);
  return v5;
}

void *sub_1001F0F24(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyAbsoluteURL(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1001F0CA8(v3);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v2);
  return v5;
}

uint64_t sub_1001F0F94(const __CFURL *a1, __int128 *a2)
{
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(a1, kCFURLIsReadableKey, &propertyValueTypeRefPtr, 0))
  {
    v4 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  result = CFBooleanGetValue(propertyValueTypeRefPtr);
  if (result)
  {
    [(__CFURL *)a1 fileSystemRepresentation];
    v6 = *a2;
    v7 = a2[1];
    return sandbox_check_by_audit_token() == 0;
  }

  return result;
}

BOOL sub_1001F1034(const __CFURL *a1)
{
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(a1, kCFURLIsWritableKey, &propertyValueTypeRefPtr, 0))
  {
    v1 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v1 = 1;
  }

  return !v1 && CFBooleanGetValue(propertyValueTypeRefPtr) != 0;
}

uint64_t sub_1001F1094(const __CFURL *a1)
{
  v3 = 0;
  error = 0;
  if (!CFURLCopyResourcePropertyForKey(a1, kCFURLLocalizedNameKey, &v3, &error))
  {
    v1 = daemon_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1001F3528(&error);
    }

    CFRelease(error);
  }

  return v3;
}

id sub_1001F1110()
{
  v0 = SFNodeCopyProtocols();
  v1 = [v0 firstObject];

  return v1;
}

id sub_1001F1158(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 URLForDirectory:99 inDomain:1 appropriateForURL:v3 create:1 error:a2];

  v6 = daemon_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1001F3598();
  }

  if (v5)
  {
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];

    v9 = [v8 UTF8String];
    if (!v9 || ([NSURL fileURLWithFileSystemRepresentation:v9 isDirectory:1 relativeToURL:v5], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (a2)
      {
        [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
        *a2 = v17 = 0;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_27;
    }

    v11 = v10;
    v21 = NSFileProtectionKey;
    v22 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [v11 absoluteURL];
    v14 = +[NSFileManager defaultManager];
    v15 = [v14 createDirectoryAtURL:v13 withIntermediateDirectories:0 attributes:v12 error:a2];

    if (v15)
    {
      v16 = v13;
      v17 = v16;
      if (!a2 || v16)
      {
        goto LABEL_26;
      }

      v18 = daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1001F367C();
      }
    }

    else
    {
      if (!a2 || *a2)
      {
        v17 = 0;
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      v18 = daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1001F360C();
      }
    }

    [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    *a2 = v17 = 0;
    goto LABEL_26;
  }

  if (a2 && !*a2)
  {
    v19 = daemon_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1001F36EC();
    }

    [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    *a2 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_28:

  return v17;
}

id sub_1001F149C()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v0 firstObject];

  if (v1)
  {
    v2 = [v1 stringByAppendingPathComponent:@"Sharing"];
    v3 = +[NSFileManager defaultManager];
    v8 = 0;
    v4 = [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v8];
    v5 = v8;

    if (v4)
    {
      goto LABEL_9;
    }

    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001F375C();
    }
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001F3798();
    }

    v2 = 0;
    v5 = 0;
  }

LABEL_9:

  return v2;
}

void sub_1001F15C8(void *a1)
{
  v1 = a1;
  sub_1001F1630(v1, 0);
  v2 = [(__CFURL *)v1 URLByDeletingLastPathComponent];

  sub_1001F1630(v2, 0);
}

BOOL sub_1001F1630(const __CFURL *a1, void *a2)
{
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    if (!removefile(buffer, 0, 1u))
    {
      v4 = 0;
      return v4 == 0;
    }

    v4 = *__error();
    if (!a2)
    {
      return v4 == 0;
    }
  }

  else
  {
    v4 = 2;
    if (!a2)
    {
      return v4 == 0;
    }
  }

  if (v4)
  {
    *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v4 userInfo:0];
    v4 = 1;
  }

  return v4 == 0;
}

CFURLRef sub_1001F1724(const __CFAllocator *a1, int a2)
{
  bzero(__s, 0x400uLL);
  if (confstr(a2, __s, 0x400uLL))
  {
    v4 = strlen(__s);
    return CFURLCreateFromFileSystemRepresentation(a1, __s, v4, 1u);
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001F37D4();
    }

    return 0;
  }
}

id sub_1001F17F4()
{
  v0 = SFAirDropDownloadsURL();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  return v1;
}

BOOL sub_1001F183C(const __CFURL *a1, void *a2)
{
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    if (CFURLHasDirectoryPath(a1))
    {
      if (mkdir(buffer, 0x180u) < 0)
      {
LABEL_10:
        v4 = *__error();
        if (!a2)
        {
          return v4 == 0;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v5 = open(buffer, 2564, 384);
      if (v5 < 0)
      {
        goto LABEL_10;
      }

      close(v5);
    }

    sub_1001F0284(a1);
    v4 = 0;
    return v4 == 0;
  }

  v4 = 2;
  if (!a2)
  {
    return v4 == 0;
  }

LABEL_11:
  if (v4)
  {
    *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v4 userInfo:0];
    v4 = 1;
  }

  return v4 == 0;
}

BOOL sub_1001F1960(const __CFURL *a1, const __CFURL *a2, void *a3)
{
  bzero(buffer, 0x400uLL);
  bzero(v10, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024) && CFURLGetFileSystemRepresentation(a2, 1u, v10, 1024))
  {
    rename(buffer, v10, v6);
    if (!v7)
    {
      v8 = 0;
      return v8 == 0;
    }

    v8 = *__error();
    if (!a3)
    {
      return v8 == 0;
    }
  }

  else
  {
    v8 = 2;
    if (!a3)
    {
      return v8 == 0;
    }
  }

  if (v8)
  {
    *a3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v8 userInfo:0];
    v8 = 1;
  }

  return v8 == 0;
}

id sub_1001F1A78(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 copy];
  v4 = [v3 pathExtension];
  if (([(__CFString *)v4 isEqualToString:&stru_1008EFBD0]& 1) == 0)
  {
    while (1)
    {
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v4, 0);
      v6 = UTTypeCopyDeclaration(PreferredIdentifierForTag);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      [v2 addObject:v4];
      v8 = [v3 stringByDeletingPathExtension];

      CFRelease(v7);
      CFRelease(PreferredIdentifierForTag);

      v4 = [v8 pathExtension];
      v3 = v8;
      if ([(__CFString *)v4 isEqualToString:&stru_1008EFBD0])
      {
        goto LABEL_7;
      }
    }

    CFRelease(PreferredIdentifierForTag);
  }

  v8 = v3;
LABEL_7:

  v9 = [v8 mutableCopy];
  v10 = +[NSCharacterSet whitespaceCharacterSet];
  v11 = [v9 rangeOfCharacterFromSet:v10 options:4];
  v13 = v12;

  if (v13)
  {
    v14 = [v9 length];
    v15 = v14 - v11;
    v16 = [v9 substringWithRange:{v11, v14 - v11}];
    v17 = v16;
    if (v16 && (v18 = [v16 intValue], objc_msgSend(v17, "floatValue"), v18) && (v19 == v18 ? (v20 = v18 == -2147483647) : (v20 = 1), !v20 ? (v21 = v18 == 0x7FFFFFFF) : (v21 = 1), !v21))
    {
      [v9 deleteCharactersInRange:{v11, v15}];
      v29 = [NSString stringWithFormat:@" %ld", v18 + 1];
      [v9 appendString:v29];
    }

    else
    {
      [v9 appendString:@" 2"];
    }
  }

  else
  {
    [v9 appendString:@" 2"];
  }

  if ([v2 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = [v2 reverseObjectEnumerator];
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v30 + 1) + 8 * i);
          [v9 appendString:@"."];
          [v9 appendString:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v24);
    }
  }

  return v9;
}

id sub_1001F1DAC(void *a1, void *a2, _BYTE *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = daemon_log();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving files to %@", buf, 0xCu);
    }

    v46 = +[NSMutableArray array];
    v11 = +[NSFileManager defaultManager];
    v12 = [v8 path];
    v13 = [v11 fileExistsAtPath:v12];

    if ((v13 & 1) == 0)
    {
      v54 = 0;
      v14 = [v11 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v54];
      v15 = v54;
      v16 = v15;
      if ((v14 & 1) == 0)
      {
        v38 = daemon_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_1001F388C();
        }

        if (a4)
        {
          v39 = v16;
          v36 = 0;
          *a4 = v16;
        }

        else
        {
          v36 = 0;
        }

LABEL_46:

        if (a3)
        {
          *a3 = v36 & 1;
        }

        v37 = [v46 copy];

        goto LABEL_49;
      }
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v16 = v7;
    v48 = [v16 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v48)
    {
      v43 = a4;
      v41 = a3;
      v42 = v7;
      v47 = *v51;
      v44 = 1;
      obj = v16;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v51 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v50 + 1) + 8 * i);
          v19 = [v18 lastPathComponent];
          v20 = [v8 URLByAppendingPathComponent:v19];

          v49 = 0;
          v21 = [v11 moveItemAtURL:v18 toURL:v20 error:&v49];
          v22 = v49;
          if (v21)
          {
LABEL_13:
            v23 = daemon_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v34 = [v18 lastPathComponent];
              v35 = [v20 lastPathComponent];
              *buf = 138412546;
              v56 = v34;
              v57 = 2112;
              v58 = v35;
              _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "SDMoveFilesToFolder moved '%@' to folder as '%@'", buf, 0x16u);
            }

            [v46 addObject:v20];
          }

          else
          {
            while (1)
            {
              v24 = [v22 domain];
              if (![v24 isEqual:NSCocoaErrorDomain])
              {
                break;
              }

              v25 = [v22 code];

              if (v25 != 516)
              {
                goto LABEL_22;
              }

              v26 = [v20 lastPathComponent];
              v27 = sub_1001F1A78(v26);
              if ([v26 isEqual:v27])
              {
                v32 = daemon_log();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v56 = v22;
                  _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to move item to folder. Could not resolve name conflict. Error: %@", buf, 0xCu);
                }

                if (v43)
                {
                  v33 = v22;
                  *v43 = v22;
                }

                goto LABEL_31;
              }

              v28 = [v8 URLByAppendingPathComponent:v27];

              v49 = 0;
              v29 = [v11 moveItemAtURL:v18 toURL:v28 error:&v49];
              v22 = v49;
              v20 = v28;
              if (v29)
              {
                goto LABEL_13;
              }
            }

LABEL_22:
            v30 = daemon_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v56 = v22;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to move item to folder. Error: %@", buf, 0xCu);
            }

            if (v43)
            {
              v31 = v22;
              v44 = 0;
              *v43 = v22;
              goto LABEL_32;
            }

LABEL_31:
            v44 = 0;
          }

LABEL_32:
        }

        v16 = obj;
        v48 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v48);
      a3 = v41;
      v7 = v42;
      v36 = v44;
    }

    else
    {
      v36 = 1;
    }

    goto LABEL_46;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1001F3910();
  }

  if (a3)
  {
    *a3 = 0;
  }

  v37 = &__NSArray0__struct;
LABEL_49:

  return v37;
}

BOOL sub_1001F2338(const __CFURL *a1, const __CFURL *a2, id *a3)
{
  v4 = sub_1001F1960(a1, a2, a3);
  v5 = v4;
  if (a3)
  {
    if (!v4)
    {
      v6 = [*a3 domain];
      v7 = [v6 isEqual:NSPOSIXErrorDomain];

      if (v7)
      {
        [*a3 code];
      }
    }
  }

  return v5;
}

__CFString *sub_1001F23A8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = v1;
  if (v1 && (v3 = sub_1001F0F24(v1)) != 0)
  {
    v4 = v3;
    bzero(v8, 0x1010uLL);
    if (fsctl(v4, 0xD0107A0CuLL, v8, 0))
    {
      v5 = browser_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1001F394C();
      }

      v6 = 0;
    }

    else
    {
      v6 = CFStringCreateWithPascalString(0, v9, 0x8000100u);
    }

    free(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1001F24E4(void *a1)
{
  v7 = 0;
  v6 = 0;
  v1 = [a1 getResourceValue:&v7 forKey:NSURLVolumeNameKey error:&v6];
  v2 = v7;
  v3 = v6;
  if ((v1 & 1) == 0)
  {
    v4 = browser_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001F39E4();
    }
  }

  return v2;
}

BOOL sub_1001F2594()
{
  v0 = qword_10098A218;
  if (!qword_10098A218)
  {
    v1 = sub_10000C1F8(@"DisableAWDL", 0);
    v2 = &kCFBooleanTrue;
    if (!v1)
    {
      v2 = &kCFBooleanFalse;
    }

    v0 = *v2;
    qword_10098A218 = *v2;
  }

  return CFBooleanGetValue(v0) != 0;
}

id sub_1001F25F8(void *a1, int a2)
{
  v3 = [a1 lowercaseString];
  v4 = v3;
  if (a2 && (([v3 hasSuffix:@"@me.com"] & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @"@mac.com")))
  {
    v5 = [v4 componentsSeparatedByString:@"@"];
    if ([v5 count])
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [NSString stringWithFormat:@"%@@icloud.com", v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

id sub_1001F26EC(void *a1)
{
  v1 = a1;
  active = CPPhoneNumberCopyActiveCountryCode();
  v3 = PNCopyBestGuessNormalizedNumberForCountry();

  if (v3)
  {
    [NSString stringWithUTF8String:v3];
    v4 = CFPhoneNumberCreate();
    if (v4)
    {
      v5 = v4;
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v7 = String;
        v8 = [NSCharacterSet characterSetWithCharactersInString:@"+"];
        v9 = [v7 stringByTrimmingCharactersInSet:v8];
      }

      else
      {
        v9 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v9 = 0;
    }

    free(v3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1001F27F8(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  valuePtr = a2;
  v3 = sub_10000C2C4(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
        if ((valuePtr & 0x80000000) == 0)
        {
LABEL_10:
          CFRelease(v4);
          return valuePtr;
        }
      }

      else
      {
        valuePtr = v2;
        if ((v2 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v6 = CFGetTypeID(v4);
      TypeID = CFStringGetTypeID();
      IntValue = v2;
      if (v6 == TypeID)
      {
        IntValue = CFStringGetIntValue(v4);
        valuePtr = IntValue;
      }

      if ((IntValue & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    valuePtr = v2;
    goto LABEL_10;
  }

  return v2;
}

const __CFString *sub_1001F28C0()
{
  v0 = CFPreferencesCopyValue(@"StreamID", kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  if (!v0)
  {
    v1 = +[NSUUID UUID];
    v2 = [v1 UUIDString];
    v3 = [v2 substringWithRange:{24, 12}];
    v0 = [v3 lowercaseString];

    CFPreferencesSetValue(@"StreamID", v0, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    CFPreferencesSynchronize(kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    v4 = streams_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      CStringPtr = CFStringGetCStringPtr(v0, 0x600u);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Created new Stream ID (%s)", &v6, 0xCu);
    }
  }

  return v0;
}

uint64_t sub_1001F2A44()
{
  v9 = 0;
  if (getifaddrs(&v9))
  {
    v0 = airdrop_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_1001F3AF8();
    }

    return 0;
  }

  else
  {
    v2 = sub_1001F2594();
    if (v2)
    {
      v3 = "en0";
    }

    else
    {
      v3 = "awdl0";
    }

    if (v2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 5;
    }

    v5 = v9;
    if (v9)
    {
      v1 = 0;
      do
      {
        if (v5->ifa_addr->sa_family == 30)
        {
          ifa_name = v5->ifa_name;
          if (!strncasecmp(ifa_name, v3, v4))
          {
            v1 = if_nametoindex(ifa_name);
          }
        }

        v5 = v5->ifa_next;
      }

      while (v5);
      v7 = v9;
    }

    else
    {
      v7 = 0;
      v1 = 0;
    }

    freeifaddrs(v7);
  }

  return v1;
}

__CFString *sub_1001F2B40(const __CFString *a1)
{
  v2 = CFGetAllocator(a1);
  Length = CFStringGetLength(a1);
  MutableCopy = CFStringCreateMutableCopy(v2, Length, a1);
  CFStringTrim(MutableCopy, @".");
  return MutableCopy;
}

CFMutableStringRef sub_1001F2B94(const __CFAllocator *a1, CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  v4.length = CFStringGetLength(MutableCopy);
  v4.location = 0;
  CFStringFindAndReplace(MutableCopy, @"\, @"\\\, v4, 0);
  v5.length = CFStringGetLength(MutableCopy);
  v5.location = 0;
  CFStringFindAndReplace(MutableCopy, @".", @"\\.", v5, 0);
  return MutableCopy;
}

__CFString *sub_1001F2C18(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  v11 = 0;
  if (v7 && v8 && v9)
  {
    memset(buffer, 0, sizeof(buffer));
    if (!CFStringGetCString(v7, buffer, 64, 0x8000100u))
    {
      goto LABEL_8;
    }

    bzero(regtype, 0x3F1uLL);
    if (!CFStringGetCString(v8, regtype, 1009, 0x8000100u))
    {
      goto LABEL_8;
    }

    bzero(domain, 0x3F1uLL);
    if (!CFStringGetCString(v10, domain, 1009, 0x8000100u))
    {
      goto LABEL_8;
    }

    bzero(fullName, 0x3F1uLL);
    if (DNSServiceConstructFullName(fullName, buffer, regtype, domain))
    {
      goto LABEL_8;
    }

    if (a4)
    {
      v13 = sub_1001F2B94(0, v7);
      if (!v13)
      {
LABEL_8:
        v11 = 0;
        goto LABEL_9;
      }

      v14 = v13;
      v15 = sub_1001F2B40(v10);
      v11 = CFStringCreateWithFormat(0, 0, @"%@.%@%@", v14, v8, v15);
      CFRelease(v15);
      CFRelease(v14);
    }

    else
    {
      v11 = CFStringCreateWithCString(0, fullName, 0x8000100u);
    }
  }

LABEL_9:

  return v11;
}

__CFString *sub_1001F2DEC()
{
  v0 = _CFNetServiceCreateFromURL();
  if (v0)
  {
    v1 = v0;
    Domain = CFNetServiceGetDomain(v0);
    Length = CFStringGetLength(Domain);
    MutableCopy = CFStringCreateMutableCopy(0, Length, Domain);
    CFStringLowercase(MutableCopy, 0);
    CFStringTrim(MutableCopy, @".");
    CFRelease(v1);
  }

  else
  {
    MutableCopy = 0;
  }

  return MutableCopy;
}

id sub_1001F2E78()
{
  v0 = sub_1001F2DEC();
  v1 = [v0 isEqual:@"local"];

  return v1;
}

__CFDictionary *sub_1001F2EBC(unsigned int a1, const UInt8 *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a2)
  {
    v5 = CFStringCreateWithBytes(0, a2, a1, 0x8000100u, 0);
    if (v5)
    {
      v6 = v5;
      v7 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      Length = CFStringGetLength(v6);
      v9 = Length - 1;
      if (Length < 1)
      {
        v10 = Length - 1;
      }

      else
      {
        v10 = Length - 1;
        do
        {
          v11 = v9;
          CharacterAtIndex = CFStringGetCharacterAtIndex(v6, v9--);
          if (CharacterAtIndex == 44)
          {
            if (v11 < 1)
            {
              goto LABEL_12;
            }

            v13 = 0;
            v14 = v11;
            while (CFStringGetCharacterAtIndex(v6, --v14) == 92)
            {
              ++v13;
              if (v14 <= 0)
              {
                v13 = v11;
                break;
              }
            }

            if ((v13 & 1) == 0)
            {
LABEL_12:
              v33.length = v10 - v11;
              v33.location = v11 + 1;
              v15 = CFStringCreateWithSubstring(0, v6, v33);
              v10 = v9;
              if (v15)
              {
                v16 = v15;
                CFArrayAppendValue(v7, v15);
                CFRelease(v16);
                v10 = v9;
              }
            }
          }
        }

        while (v11 > 0);
        v9 = -1;
      }

      v34.length = v10 - v9;
      v34.location = v9 + 1;
      v17 = CFStringCreateWithSubstring(0, v6, v34);
      if (v17)
      {
        v18 = v17;
        CFArrayAppendValue(v7, v17);
        CFRelease(v18);
      }

      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v20 = Count;
        for (i = 0; i != v20; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
          v23 = CFStringFind(ValueAtIndex, @"=", 0);
          if (v23.length >= 1)
          {
            v35.location = 0;
            v35.length = v23.location;
            v24 = CFStringCreateWithSubstring(0, ValueAtIndex, v35);
            if (v24)
            {
              v25 = v24;
              v26 = CFStringGetLength(ValueAtIndex);
              v27 = CFStringGetLength(v25);
              v36.location = v23.location + 1;
              v36.length = v26 + ~v27;
              v28 = CFStringCreateWithSubstring(0, ValueAtIndex, v36);
              if (v28)
              {
                v29 = v28;
                MutableCopy = CFStringCreateMutableCopy(0, 0, v28);
                v37.length = CFStringGetLength(MutableCopy);
                v37.location = 0;
                CFStringFindAndReplace(MutableCopy, @"\\,", @",", v37, 0);
                v38.length = CFStringGetLength(MutableCopy);
                v38.location = 0;
                CFStringFindAndReplace(MutableCopy, @"\\\, @"\, v38, 0);
                CFDictionarySetValue(Mutable, v25, MutableCopy);
                CFRelease(MutableCopy);
                CFRelease(v29);
              }

              CFRelease(v25);
            }
          }
        }
      }

      CFRelease(v7);
      CFRelease(v6);
    }
  }

  return Mutable;
}

void sub_1001F31A0()
{
  if (SFDeviceSupportsAirDrop())
  {
    v0 = @"YES";
  }

  else
  {
    v0 = @"NO";
  }

  v1 = v0;
  if (SFDeviceSupportsAutoUnlock())
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v3 = v2;
  if (SFDeviceSupportsContinuity())
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = v4;
  if (SFDeviceSupportsRemoteDisc())
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  v8 = daemon_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138413314;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v1;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device Capabilities (Auto Unlock:%@, Handoff:%@, Instant Hotspot:%@, AirDrop:%@, Remote Disc:%@)", &v9, 0x34u);
  }
}

void sub_1001F332C(uint64_t *a1)
{
  sub_100021F10(a1, __stack_chk_guard);
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001F339C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F33D8(uint64_t *a1)
{
  sub_100021F10(a1, __stack_chk_guard);
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001F3448(uint64_t *a1)
{
  sub_100021F10(a1, __stack_chk_guard);
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001F34B8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001F3528(uint64_t *a1)
{
  sub_100021F10(a1, __stack_chk_guard);
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001F360C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001F367C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001F36EC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001F375C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F3798()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F37D4()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1001F388C()
{
  sub_10000883C();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to create folder %@ with error: %@", v2, 0x16u);
}

void sub_1001F3910()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F394C()
{
  v5 = *__error();
  sub_100008860();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1001F39E4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001F3A54(uint64_t a1, NSObject *a2)
{
  v3 = NSPrintF();
  *buf = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken returned NULL for %@", buf, 0xCu);
}

void sub_1001F3AF8()
{
  v5 = *__error();
  sub_100008860();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1001F4070(uint64_t a1, int a2)
{
  v4 = streams_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SDServiceManager: Accept Reply = %@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001F41A4;
  v6[3] = &unk_1008D3F40;
  v7 = *(a1 + 32);
  v8 = a2;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1001F5AB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[SDAItemSource alloc] initWithAttributedString:v3 previewImage:0 subject:0];

  [(SDAItemSource *)v5 setFakeBundleID:@"com.apple.mobilemail"];
  [(SDAItemSource *)v5 setFakeBytes:200];
  LODWORD(v4) = 0.5;
  [(SDAItemSource *)v5 setFakeDuration:v4];
  [*(a1 + 32) addObject:v5];
}

void sub_1001F5C2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[SDAItemSource alloc] initWithString:v3 previewImage:0 subject:@"some subject"];

  [(SDAItemSource *)v5 setFakeBundleID:@"com.apple.mobilemail"];
  [(SDAItemSource *)v5 setFakeBytes:200];
  LODWORD(v4) = 0.5;
  [(SDAItemSource *)v5 setFakeDuration:v4];
  [*(a1 + 32) addObject:v5];
}

void sub_1001F5DEC(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectForKeyedSubscript:@"kSDAItemSourcesURL"];
  v4 = [NSURL URLWithString:v3];

  v5 = [v9 objectForKeyedSubscript:@"kSDAItemSourcesPreviewImage"];

  if (v5)
  {
    v5 = [v9 objectForKeyedSubscript:@"kSDAItemSourcesPreviewImage"];
  }

  v6 = [v9 objectForKeyedSubscript:@"kSDAItemSourcesSubject"];

  if (v6)
  {
    v6 = [v9 objectForKeyedSubscript:@"kSDAItemSourcesSubject"];
  }

  v7 = [[SDAItemSource alloc] initWithURL:v4 previewImage:v5 subject:v6];
  [(SDAItemSource *)v7 setFakeBundleID:*(a1 + 32)];
  [(SDAItemSource *)v7 setFakeBytes:*(a1 + 48)];
  LODWORD(v8) = *(a1 + 56);
  [(SDAItemSource *)v7 setFakeDuration:v8];
  [*(a1 + 40) addObject:v7];
}

void sub_1001F608C(uint64_t a1, void *a2)
{
  v18 = [a2 componentsSeparatedByString:@"."];
  v3 = *(*(a1 + 32) + 8);
  v4 = [v18 objectAtIndexedSubscript:0];
  v5 = [v18 objectAtIndexedSubscript:1];
  v6 = [v3 URLForResource:v4 withExtension:v5];

  v7 = [v6 pathExtension];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v7, 0);

  if (UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeImage))
  {
    v9 = [v6 path];
    v10 = [UIImage imageWithContentsOfFile:v9];
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = v11;
    if (!v11)
    {
      v12 = [v18 objectAtIndexedSubscript:0];
    }

    v9 = [NSString stringWithFormat:@"%@-preview.png", v12];
    if (!v11)
    {
    }

    v10 = [UIImage imageNamed:v9 inBundle:*(*(a1 + 32) + 8)];
  }

  v13 = v10;

  v14 = [SDAItemSource alloc];
  v15 = [v18 objectAtIndexedSubscript:0];
  v16 = [(SDAItemSource *)v14 initWithURL:v6 previewImage:v13 subject:v15];

  [(SDAItemSource *)v16 setFakeBundleID:*(a1 + 48)];
  [(SDAItemSource *)v16 setFakeBytes:*(a1 + 64)];
  LODWORD(v17) = *(a1 + 72);
  [(SDAItemSource *)v16 setFakeDuration:v17];
  [*(a1 + 56) addObject:v16];
}

void sub_1001F6380(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 activityViewController:0 itemForActivityType:UIActivityTypeAirDrop];
  [v2 addObject:v3];
}

void sub_1001F71D8()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  [&off_1009102C8 objectAtIndexedSubscript:1];
  objc_claimAutoreleasedReturnValue();
  sub_100019D1C();
  [sub_100008A08() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1001F7258()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  [&off_1009102F8 objectAtIndexedSubscript:2];
  objc_claimAutoreleasedReturnValue();
  sub_100019D1C();
  [sub_100008A08() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1001F72D8()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  [&off_100910328 objectAtIndexedSubscript:3];
  objc_claimAutoreleasedReturnValue();
  sub_100019D1C();
  [sub_100008A08() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1001F7358()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  [&off_100910358 objectAtIndexedSubscript:4];
  objc_claimAutoreleasedReturnValue();
  sub_100019D1C();
  [sub_100008A08() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1001F73D8()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  [&off_100910388 objectAtIndexedSubscript:5];
  objc_claimAutoreleasedReturnValue();
  sub_100019D1C();
  [sub_100008A08() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1001F7458()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  [&off_1009103B8 objectAtIndexedSubscript:6];
  objc_claimAutoreleasedReturnValue();
  sub_100019D1C();
  [sub_100008A08() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1001F74D8()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  [&off_1009103E8 objectAtIndexedSubscript:7];
  objc_claimAutoreleasedReturnValue();
  sub_100019D1C();
  [sub_100008A08() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1001F7558()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  [&off_100910418 objectAtIndexedSubscript:8];
  objc_claimAutoreleasedReturnValue();
  sub_100019D1C();
  [sub_100008A08() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1001F75D8()
{
  sub_100008A18();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SDASharedItemsFactory.m" lineNumber:567 description:@"factory is nil."];
}

void sub_1001F7698(id a1)
{
  v1 = objc_alloc_init(SDDomainBrowser);
  v2 = qword_10098A230;
  qword_10098A230 = v1;
}

unsigned __int8 *sub_1001F7A94(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *result;
    if (!*result || v3 == 46)
    {
      break;
    }

    v4 = result + 1;
    if (v3 == 92)
    {
      v5 = *v4;
      if (*v4)
      {
        LOBYTE(v3) = *v4;
        v4 = result + 2;
        if ((v5 - 48) <= 9)
        {
          v6 = *v4;
          if ((v6 - 48) <= 9)
          {
            v7 = result[3];
            if ((v7 - 48) <= 9)
            {
              v8 = 10 * v6 + 100 * v5 + v7 - 5328;
              if (!v8)
              {
                v8 = 45;
              }

              if (v8 < 0x100)
              {
                LOBYTE(v3) = v8;
                v4 = result + 4;
              }
            }
          }
        }
      }

      else
      {
        LOBYTE(v3) = 92;
      }
    }

    *(a2 + v2++) = v3;
    result = v4;
    if (v2 == 64)
    {
      result = 0;
      *(a2 + 63) = 0;
      return result;
    }
  }

  *(a2 + v2) = 0;
  if (!v2)
  {
    return 0;
  }

  if (*result)
  {
    ++result;
  }

  return result;
}

CFComparisonResult sub_1001F7FC8(const __CFString *a1, const __CFString *a2)
{
  v4 = sub_1001F8414(a1);
  v5 = sub_1001F8414(a2);
  if (v4 == v5)
  {

    return CFStringCompare(a1, a2, 1uLL);
  }

  else if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

id sub_1001F82E8(uint64_t a1)
{
  [*(a1 + 32) restart];
  v2 = *(a1 + 32);

  return [v2 postNotification];
}

uint64_t sub_1001F8414(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  CFStringGetCString(a1, v3, Length + 1, 0x8000100u);
  v4 = 0;
  v3[Length - 1] = 0;
  v5 = v3;
  do
  {
    if (!*v5)
    {
      break;
    }

    ++v4;
    v5 = sub_1001F7A94(v5, v7);
  }

  while (v5);
  free(v3);
  return v4;
}

void sub_1001F84F4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SDDomainBrowser: didNotSearch %@", &v2, 0xCu);
}

void sub_1001F85B0(id a1)
{
  v1 = objc_alloc_init(SDSubCredentialAgent);
  v2 = qword_10098A240;
  qword_10098A240 = v1;
}

uint64_t sub_1001F9268(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 8))
  {
    if (dword_100972A88 <= 30)
    {
      if (dword_100972A88 != -1)
      {
        return sub_1001F991C();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_1001F991C();
      }
    }
  }

  else if (dword_100972A88 <= 60)
  {
    if (dword_100972A88 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 32);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_1001F93C0(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 8))
  {
    if (dword_100972A88 <= 30)
    {
      if (dword_100972A88 != -1)
      {
        return sub_1001F9938();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_1001F9938();
      }
    }
  }

  else if (dword_100972A88 <= 60)
  {
    if (dword_100972A88 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 32);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1001F9544(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (dword_100972A88 <= 30 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9998(a1);
    }

    v2 = *(a1 + 40);
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
  }

  else if (dword_100972A88 <= 30 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F9954(a1);
  }
}

BOOL sub_1001F9F0C(id a1, id a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isFileURL];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1001FA2C0(void *a1)
{
  if (a1)
  {
    a1 = _ShareSheetBundleIDFromAuditToken([a1 bytes]);
    v1 = vars8;
  }

  return a1;
}

void sub_1001FA2F8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001FA370;
  block[3] = &unk_1008CDEA0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001FA5BC(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 copy];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001FA6B4;
  block[3] = &unk_1008D40B8;
  v11 = [a3 copy];
  v15 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v8 = v5;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001FA6B4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 64);
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    v6[0] = LSFileProviderStringKey;
    v6[1] = LSRequireOpenInPlaceKey;
    v7[0] = v4;
    v7[1] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
    [*(a1 + 48) _performLaunchServicesOpenWithDocumentOpenURL:*(a1 + 56) launchServiceOptions:v5 completion:*(a1 + 64)];
  }
}

BOOL sub_1001FAAAC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 url];
    if ([v4 isEqual:*(a1 + 32)])
    {
      v5 = [v3 bookmarkExportDataEncodedAsString];
      v6 = [v5 length] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1001FAD1C(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v1 securityScopedResources];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) url];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id sub_1001FB61C(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (a3)
  {
    v6 = [a3 bytes];
  }

  else
  {
    v6 = 0;
  }

  v7 = [LSDocumentProxy documentProxyForURL:v5 isContentManaged:a2 sourceAuditToken:v6];

  return v7;
}

void sub_1001FB6A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  CanOpenInPlaceByReferenceOriginalFile = _UIApplicationCanOpenInPlaceByReferenceOriginalFile();
  v8 = *(a1 + 40);
  v9 = *(a1 + 72);
  if (CanOpenInPlaceByReferenceOriginalFile)
  {
    v10 = [v9 classForOpenInPlaceActivity];
  }

  else
  {
    v10 = [v9 classForOpenByCopyActivity];
  }

  v11 = [[v10 alloc] initWithApplicationProxy:v6 documentProxy:*(a1 + 48) isContentManaged:*(a1 + 80) sourceApplicationAuditTokenData:*(a1 + 56) appIsDocumentTypeOwner:a3 supportedTypeIdentifiers:*(a1 + 64)];

  [v8 addObject:v11];
}

void sub_1001FC020(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = qword_10098A248;
  v6 = a3;
  if (v5 != -1)
  {
    sub_1001FC354();
  }

  off_100972B58 = dlsym(qword_10098A250, "FPExtendBookmarkForDocumentURL");
  (off_100972B58)(a1, a2, v6);
}

void sub_1001FC0E4(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v5 securityScopedResources];
    [v3 addObjectsFromArray:v4];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1001FC1F4()
{
  sub_100008A18();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v0 object:v1 file:@"SUIOpenInAppActivity.m" lineNumber:89 description:{@"%@ is an abstract class, use one of the concrete implementation classes instead", objc_opt_class()}];
}

void sub_1001FC274()
{
  sub_100008A18();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SUIOpenInAppActivity.m" lineNumber:256 description:@"unexpected state for open using _FPExtendBookmarkForDocumentURL"];
}

void sub_1001FC2E4()
{
  sub_100008A18();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SUIOpenInAppActivity.m" lineNumber:285 description:{@"When a URL and app both support open-in-place, performLaunchServicesInPlaceOpenWithCompletion: should be used"}];
}

void sub_1001FC3AC(id a1)
{
  v1 = objc_alloc_init(SDManagedBrowser);
  v2 = qword_10098A260;
  qword_10098A260 = v1;
}

uint64_t SDAuthenticationConfirmationReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if (v13 == 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 32) |= 2u;
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
            v22 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v26;
        }

LABEL_59:
        v37 = 24;
LABEL_60:
        *(a1 + v37) = v22;
        goto LABEL_63;
      }

      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = PBReaderReadString();
      v15 = *(a1 + 16);
      *(a1 + 16) = v14;

LABEL_63:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        v42 = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v42 & 0x7F) << v30;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          LOBYTE(v36) = 0;
          goto LABEL_62;
        }
      }

      v36 = (v32 != 0) & ~[a2 hasError];
LABEL_62:
      *(a1 + 28) = v36;
      goto LABEL_63;
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
    *(a1 + 32) |= 1u;
    while (1)
    {
      v40 = 0;
      v19 = [a2 position] + 1;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v18 |= (v40 & 0x7F) << v16;
      if ((v40 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v11 = v17++ >= 9;
      if (v11)
      {
        v22 = 0;
        goto LABEL_55;
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

LABEL_55:
    v37 = 8;
    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

void sub_1001FE53C(NSObject *a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  dispatch_assert_queue_V2(v6[9]);
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v12 = sub_10002F024();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 6291714;
          v13 = "### BTSession failed: %#m\n";
          v14 = v12;
          v15 = OS_LOG_TYPE_ERROR;
          v16 = 4;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, v16);
        }

LABEL_13:

        goto LABEL_28;
      }

LABEL_10:
      v12 = sub_10002F024();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = a2;
        v23 = 96;
        v13 = "### BTSession unknown event %d, result %#m\n";
        v14 = v12;
        v15 = OS_LOG_TYPE_INFO;
        v16 = 10;
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    v18 = v6[2];
    v7 = sub_10002F024();
    v19 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!v18)
    {
      if (v19)
      {
        *buf = 0;
        v8 = "### BTSession terminated (bluetoothd crash) when stopping\n";
        v9 = buf;
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        v20 = 2;
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "### BTSession terminated (bluetoothd crash)...re-attaching\n", buf, 2u);
    }

    v6[2] = 0;
    *buf = sub_1001FE53C;
    if (off_100972B68("SDProximityPairingBufferedScanner", buf, v6, v6[9]))
    {
      v7 = sub_10002F024();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v21 = 6291714;
        v8 = "### BTSession re-attach failed: %#m\n";
        v9 = &v21;
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        goto LABEL_23;
      }

LABEL_27:

      CFRelease(v6);
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = sub_10002F024();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 6291714;
          v8 = "BTSession detached: %#m\n";
          v9 = buf;
          v10 = v7;
          v11 = OS_LOG_TYPE_DEFAULT;
LABEL_23:
          v20 = 4;
LABEL_26:
          _os_log_impl(&_mh_execute_header, v10, v11, v8, v9, v20);
          goto LABEL_27;
        }

        goto LABEL_27;
      }

      goto LABEL_10;
    }

    v17 = sub_10002F024();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 6291714;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BTSession attached: %#m\n", buf, 4u);
    }

    v6[2] = a1;
  }

LABEL_28:
}

void sub_1001FE8AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained foundBufferedPairingDevices:v3];
}

void sub_1001FE908(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained proxPairingLoggerAndInvalidationHandler:@"Invalidation Handler" withLogLevel:16 andError:0];
}

void sub_1001FE958(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained proxPairingLoggerAndInvalidationHandler:@"Interruption Handler" withLogLevel:16 andError:0];
}

void sub_1001FE9A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained proxPairingLoggerAndInvalidationHandler:@"Error Handler" withLogLevel:16 andError:v3];
}

uint64_t sub_1001FFBA8(uint64_t a1)
{
  if (a1 >> 1 == 4103)
  {
    return 1;
  }

  v2 = [[SFHeadphoneProduct alloc] initWithProductID:a1];
  v3 = [v2 supportsOptimizedBatteryCharging];

  return v3;
}

void sub_100200404(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 advertisementFields];
  v4 = CFDictionaryGetInt64Ranged() & 0x24;
  Int64 = CFDictionaryGetInt64();
  if (v4 | Int64)
  {
    if (Int64 && [v2 proxPairingTicks])
    {
      [v2 setProxPairingTicks:0];
      v6 = sub_10002F024();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = v2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing up ticks %@", &v7, 0xCu);
      }
    }
  }

  else if (![v2 proxPairingTicks])
  {
    [v2 setProxPairingTicks:mach_absolute_time()];
  }
}

void sub_1002005E8(id a1)
{
  v1 = os_log_create("com.apple.sharing", "ProximityPairingBufferedScanner");
  v2 = qword_10098A268;
  qword_10098A268 = v1;
}

uint64_t sub_10020062C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = qword_10098A278;
  v8 = a4;
  if (v7 != -1)
  {
    sub_100202B9C();
  }

  off_100972B68 = dlsym(qword_10098A280, "BTSessionAttachWithQueue");
  v9 = (off_100972B68)(a1, a2, a3, v8);

  return v9;
}

uint64_t sub_1002006F0(uint64_t a1)
{
  if (qword_10098A278 != -1)
  {
    sub_100202B9C();
  }

  v2 = dlsym(qword_10098A280, "BTSessionDetachWithQueue");
  off_100972B70 = v2;

  return (v2)(a1);
}

Class sub_10020075C()
{
  if (qword_10098A290 != -1)
  {
    sub_100202BB0();
  }

  result = objc_getClass("CBDiscovery");
  qword_10098A288 = result;
  off_100972B60 = sub_10002F2B8;
  return result;
}

uint64_t sub_1002007DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10098A278 != -1)
  {
    sub_100202B9C();
  }

  v6 = dlsym(qword_10098A280, "BTDeviceFromIdentifier");
  off_100972B78 = v6;

  return (v6)(a1, a2, a3);
}

uint64_t sub_100200860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10098A278 != -1)
  {
    sub_100202B9C();
  }

  v6 = dlsym(qword_10098A280, "BTDeviceGetName");
  off_100972B80 = v6;

  return (v6)(a1, a2, a3);
}

uint64_t sub_1002008E4(uint64_t a1, uint64_t a2)
{
  if (qword_10098A278 != -1)
  {
    sub_100202B9C();
  }

  v4 = dlsym(qword_10098A280, "BTDeviceGetPairingStatus");
  off_100972B88 = v4;

  return (v4)(a1, a2);
}

uint64_t sub_100200958(uint64_t a1, uint64_t a2)
{
  if (qword_10098A278 != -1)
  {
    sub_100202B9C();
  }

  v4 = dlsym(qword_10098A280, "BTDeviceIsTemporaryPaired");
  off_100972B90 = v4;

  return (v4)(a1, a2);
}

uint64_t sub_1002009CC(uint64_t a1, uint64_t a2)
{
  if (qword_10098A278 != -1)
  {
    sub_100202B9C();
  }

  v4 = dlsym(qword_10098A280, "BTDeviceGetConnectedServices");
  off_100972B98 = v4;

  return (v4)(a1, a2);
}

uint64_t sub_100200A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10098A278 != -1)
  {
    sub_100202B9C();
  }

  v6 = dlsym(qword_10098A280, "BTDeviceGetAddressString");
  off_100972BA0 = v6;

  return (v6)(a1, a2, a3);
}

uint64_t sub_100200AC4(uint64_t a1, uint64_t a2)
{
  if (qword_10098A278 != -1)
  {
    sub_100202B9C();
  }

  v4 = dlsym(qword_10098A280, "BTDeviceAddressFromString");
  off_100972BA8 = v4;

  return (v4)(a1, a2);
}

id sub_100200B44()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void sub_100202AF4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDProximityPairingBufferedScanner.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"dispatchQueue"}];
}

uint64_t sub_100202EBC(uint64_t a1, void *a2)
{
  if (a2 && *(a1 + 40))
  {
    [*(a1 + 32) setAttemptError:?];
    (*(*(a1 + 40) + 16))();
  }

  return _objc_release_x2();
}

void sub_1002032F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setErrorType:4];
    v4 = *(a1 + 32);
    v5 = SFAutoUnlockErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"AWDL info exchange failed";
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:v5 code:103 userInfo:v6];
    [v4 notifyDelegateWithError:v7];
  }

  else
  {
    v8 = [v3 delegate];
    [v8 sessionDidSendInitialData:*(a1 + 32)];
  }
}

void sub_100203434(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setAttemptError:a2];
    v3 = *(a1 + 32);
    v4 = SFAutoUnlockErrorDomain;
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Proxy message failed";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:v4 code:103 userInfo:v5];
    [v3 notifyDelegateWithError:v6];
  }
}

void sub_1002044FC(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Ranging key data: %{private}@", &v2, 0xCu);
}

uint64_t SDUnlockSetupSessionCreatedReadFrom(uint64_t a1, void *a2)
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
        v64 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v64 & 0x7F) << v5;
        if ((v64 & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        break;
      }

      if (v13 > 7)
      {
        if (v13 == 8)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            v71 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v71 & 0x7F) << v48;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_116;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v50;
          }

LABEL_116:
          v62 = 56;
          goto LABEL_125;
        }

        if (v13 == 9)
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v70 = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v70 & 0x7F) << v55;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_124;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v57;
          }

LABEL_124:
          v62 = 52;
LABEL_125:
          *(a1 + v62) = v20;
          goto LABEL_126;
        }

        if (v13 != 10)
        {
          goto LABEL_97;
        }

        v21 = PBReaderReadData();
        v22 = 24;
        goto LABEL_87;
      }

      if (v13 == 6)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 64) |= 2u;
        while (1)
        {
          v65 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v65 & 0x7F) << v42;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_112;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v44;
        }

LABEL_112:
        v62 = 12;
        goto LABEL_125;
      }

      if (v13 != 7)
      {
LABEL_97:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_126;
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 64) |= 0x40u;
      while (1)
      {
        v69 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v69 & 0x7F) << v29;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          LOBYTE(v35) = 0;
          goto LABEL_104;
        }
      }

      v35 = (v31 != 0) & ~[a2 hasError];
LABEL_104:
      *(a1 + 60) = v35;
LABEL_126:
      v63 = [a2 position];
      if (v63 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 64) |= 8u;
        while (1)
        {
          v68 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v68 & 0x7F) << v36;
          if ((v68 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_108;
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

LABEL_108:
        v62 = 48;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_97;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 64) |= 4u;
        while (1)
        {
          v67 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v67 & 0x7F) << v23;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_102;
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

LABEL_102:
        v62 = 32;
      }

      goto LABEL_125;
    }

    switch(v13)
    {
      case 3:
        v21 = PBReaderReadData();
        v22 = 40;
        break;
      case 4:
        v21 = PBReaderReadData();
        v22 = 16;
        break;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 64) |= 1u;
        while (1)
        {
          v66 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v66 & 0x7F) << v14;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_120;
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

LABEL_120:
        v62 = 8;
        goto LABEL_125;
      default:
        goto LABEL_97;
    }

LABEL_87:
    v54 = *(a1 + v22);
    *(a1 + v22) = v21;

    goto LABEL_126;
  }

  return [a2 hasError] ^ 1;
}

void sub_100206C50(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setSf_transferState:3];
  v3 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:kSFOperationTotalBytesKey];
  [v4 setTotalUnitCount:{objc_msgSend(v3, "longLongValue")}];

  [v4 setCompletedUnitCount:0];
}

void sub_100206CDC(uint64_t a1, void *a2)
{
  v6 = a2;
  if (![v6 totalUnitCount])
  {
    v3 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:kSFOperationTotalBytesKey];
    [v6 setTotalUnitCount:{objc_msgSend(v3, "longLongValue")}];
  }

  v4 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:kSFOperationBytesCopiedKey];
  [v6 setCompletedUnitCount:{objc_msgSend(v4, "longLongValue")}];

  v5 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:kSFOperationTimeRemainingKey];
  [v6 setUserInfoObject:v5 forKey:NSProgressEstimatedTimeRemainingKey];
}

void sub_100206DE4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = kSFOperationErrorKey;
  v4 = a2;
  v6 = [v2 objectForKeyedSubscript:v3];
  v5 = [v6 localizedDescription];
  [v4 sf_failedWithError:v5];
}

void sub_100206F90(id a1)
{
  v3[0] = kSFOperationConvertMediaFormatsKey;
  v4[0] = objc_opt_class();
  v3[1] = kSFOperationFileBomPathKey;
  v4[1] = objc_opt_class();
  v3[2] = kSFOperationFileIsDirectoryKey;
  v4[2] = objc_opt_class();
  v3[3] = kSFOperationFileNameKey;
  v4[3] = objc_opt_class();
  v3[4] = kSFOperationtFileSubTypeKey;
  v4[4] = objc_opt_class();
  v3[5] = kSFOperationFileTypeKey;
  v4[5] = objc_opt_class();
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_10098A2A8;
  qword_10098A2A8 = v1;
}

id sub_10020917C(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_10;
    }

    v3 = [NSURL URLWithString:v2 relativeToURL:0];
  }

  v4 = v3;
  v5 = [v3 scheme];
  if (v5)
  {
    v6 = [v4 scheme];
    IsSupported = SFAirDropUrlSchemeIsSupported();

    if (IsSupported)
    {
      v5 = v4;
      v4 = v5;
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_10:

  return v5;
}

void sub_10020A780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10020A7A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startPublishingProgressForPlaceholderFiles:v3];
}

const __CFURL *sub_10020AE08()
{
  result = _CFHTTPServerRequestCopyProperty();
  if (result)
  {
    v1 = result;
    v2 = CFURLCopyStrictPath(result, 0);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void sub_10020B2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10020B324(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10020B33C(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 136), 0xFFFFFFFFFFFFFFFFLL);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020B3D8;
  block[3] = &unk_1008D42F0;
  block[6] = *(a1 + 48);
  dispatch_async(*(*(a1 + 32) + 56), block);
}

void sub_10020B3D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 144))
    {

      goto LABEL_5;
    }

    v4 = *(v3 + 11);

    if (v4)
    {
LABEL_5:
      v5 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:kSFOperationFilesKey];
      v6 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:kSFOperationItemsKey];
      v7 = [v5 count];
      v8 = v7 == 0;
      if (v7)
      {
        v9 = v5;
      }

      else
      {
        v9 = v6;
      }

      if (v8)
      {
        v10 = @"%lu items";
      }

      else
      {
        v10 = @"%lu files";
      }

      v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v10, [v9 count]);
      v12 = airdrop_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received Upload request for %@", buf, 0xCu);
      }

      [*(a1 + 32) storeRequestValue:*(a1 + 48) forKey:@"Content-Type" convertToNumber:0];
      [*(a1 + 32) storeRequestValue:*(a1 + 48) forKey:kSFOperationTotalBytesKey convertToNumber:1];
      if ([*(a1 + 32) thereIsEnoughFreeSpace])
      {
        if ([*(a1 + 32) oneHundredContinue:*(a1 + 48)])
        {
          [*(a1 + 32) enqueueResponse:*(a1 + 48) code:100 body:0];
        }

        v13 = *(a1 + 48);
        v14 = *(a1 + 32);
        v15 = *(*(a1 + 40) + 8);
        obj = *(v15 + 40);
        v16 = [v14 startReceivingFile:v13 error:&obj];
        objc_storeStrong((v15 + 40), obj);
        if (v16)
        {
          goto LABEL_31;
        }

        [*(*(a1 + 32) + 120) setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:kSFOperationErrorKey];
        v17 = *(a1 + 32);
        v18 = 500;
      }

      else
      {
        v21 = airdrop_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10020DDC0();
        }

        v22 = sub_100092BE0(-2, 0);
        v23 = *(*(a1 + 40) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        [*(*(a1 + 32) + 120) setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:kSFOperationErrorKey];
        if ([*(a1 + 32) oneHundredContinue:*(a1 + 48)])
        {
          buf[0] = 0;
          v25 = CFDataCreate(0, buf, 1);
          v26 = [*(*(a1 + 32) + 80) enableBugs];
          v27 = *(a1 + 32);
          if (v26)
          {
            v28 = 0;
          }

          else
          {
            v28 = v25;
          }

          [*(a1 + 32) enqueueResponse:*(a1 + 48) code:417 body:v28];
          CFRelease(v25);
          goto LABEL_31;
        }

        v17 = *(a1 + 32);
        v18 = 507;
      }

      [v17 sendUploadResponse:v18];
LABEL_31:

      return;
    }
  }

  v19 = objc_loadWeakRetained((*(a1 + 32) + 208));

  if (v19)
  {
    v20 = airdrop_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10020DDFC();
    }

    [*(a1 + 32) enqueueResponse:*(a1 + 48) code:400 body:0];
  }
}

id sub_10020B868(void *a1)
{
  [*(a1[4] + 120) setObject:a1[5] forKeyedSubscript:kSFOperationBytesCopiedKey];
  [*(a1[4] + 120) setObject:a1[6] forKeyedSubscript:kSFOperationTimeRemainingKey];
  v2 = a1[4];

  return [v2 notifyClientForEvent:7];
}

void sub_10020B964(uint64_t a1)
{
  v2 = kSFOperationTotalBytesKey;
  v3 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:kSFOperationTotalBytesKey];
  v4 = [v3 longLongValue];

  if (!v4)
  {
    v4 = 128;
    v5 = [NSNumber numberWithLongLong:128];
    [*(*(a1 + 32) + 120) setObject:v5 forKeyedSubscript:v2];
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020BBD4;
  block[3] = &unk_1008CDEA0;
  block[4] = v6;
  dispatch_async(v7, block);
  v8 = *(a1 + 32);
  v9 = [NSNumber numberWithLongLong:v4 / 5];
  [v8 notifyClientOfBytesCopied:v9 timeRemaining:&off_10090BF28];

  v10 = *(a1 + 32);
  v11 = [NSNumber numberWithLongLong:2 * v4 / 5];
  [v10 notifyClientOfBytesCopied:v11 timeRemaining:&off_10090BF28];

  v12 = *(a1 + 32);
  v13 = [NSNumber numberWithLongLong:3 * v4 / 5];
  [v12 notifyClientOfBytesCopied:v13 timeRemaining:&off_10090BF28];

  v14 = *(a1 + 32);
  v15 = [NSNumber numberWithLongLong:4 * v4 / 5];
  [v14 notifyClientOfBytesCopied:v15 timeRemaining:&off_10090BF40];

  v16 = *(a1 + 32);
  v17 = [NSNumber numberWithLongLong:v4];
  [v16 notifyClientOfBytesCopied:v17 timeRemaining:&off_10090BF40];

  v18 = *(a1 + 32);
  v19 = *(v18 + 56);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10020BBE0;
  v20[3] = &unk_1008CDEA0;
  v20[4] = v18;
  dispatch_async(v19, v20);
}

void sub_10020C778(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    *(v2 + 11) = 1;
    [*(a1 + 32) sendAskResponse:200];
    v3 = *(a1 + 32);

    [v3 notifyClientForEvent:6];
  }

  else
  {
    v4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    [*(*(a1 + 32) + 120) setObject:v4 forKeyedSubscript:kSFOperationErrorKey];
    [*(a1 + 32) sendAskResponse:500];
  }
}

void sub_10020CBBC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020CC2C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020CC9C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020CCEC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  sub_10000883C();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "SDAirDropConnection: unexpected class %@ for file info key %@", v7, 0x16u);
}

void sub_10020CE10()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020CE4C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020CEBC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020CF2C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020CF68()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020CFA4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020CFE0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020D050()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020D0C0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020D130()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020D1A0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D1DC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D218(uint64_t *a1)
{
  sub_100021F10(a1, __stack_chk_guard);
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10020D288()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020D2F8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D334()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D370()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D3AC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D3E8(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 count];
  v6 = [a2 identifier];
  v7 = 134218755;
  v8 = v5;
  v9 = 2160;
  v10 = 1752392040;
  v11 = 2113;
  v12 = v6;
  v13 = 2113;
  v14 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Sender is blocked. [number of contacts:%lu] [contact Identifier: %{private, mask.hash}@] [contact:%{private}@]", &v7, 0x2Au);
}

void sub_10020D4C0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020D530()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D56C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020D5DC(int *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10020D654(int *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10020D6CC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D708()
{
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020D790()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D7CC(uint64_t *a1)
{
  sub_100021F10(a1, __stack_chk_guard);
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10020D83C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D878()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D8B4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D8F0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D92C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020D968()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020DA4C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DA88()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DAC4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DB00(uint64_t *a1)
{
  sub_100021F10(a1, __stack_chk_guard);
  sub_100021E68();
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10020DB70()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020DBE0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DC1C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DC58()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DC94()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DCD0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DD0C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DD48()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DD84()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DDC0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DDFC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DE38()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DE74()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DEB0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020DEEC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t SDAutoUnlockStartAdvertisingReadFrom(uint64_t a1, void *a2)
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

void sub_10020E8C4(id a1)
{
  v1 = +[SDStatusMonitor sharedMonitor];
  v2 = [v1 enableContinuity];

  if (v2)
  {
    v3 = objc_alloc_init(SDActivityScanner);
    v4 = qword_10098A2B0;
    qword_10098A2B0 = v3;
  }
}

uint64_t sub_10020EAFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10020EB14(uint64_t a1)
{
  [*(a1 + 32) lostAllDevices];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_10020EED8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 clientAdvertisement];
  [v3 receivedAdvertisement:v4];
}

void sub_10020F384(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (([*(a1 + 32) deviceTracked] & 1) == 0)
    {
      [*(a1 + 32) setDeviceTracked:1];
      [*(a1 + 40) postNotification:@"com.apple.sharingd.HandoffTrackedDevicesChanged"];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10020F618;
      v19[3] = &unk_1008D4408;
      v7 = *(a1 + 40);
      v20 = *(a1 + 32);
      [v7 _enumerateRemoteObjectProxiesUsingBlock:v19];
    }

    v8 = [v5 options];
    v9 = off_100972BB0();
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 BOOLValue];

    if (v11 && ![*(a1 + 48) isDefaultPairedDevice])
    {
      v16 = handoff_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100211198();
      }
    }

    else
    {
      v12 = handoff_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received a new advertisement %@", buf, 0xCu);
      }

      v13 = *(a1 + 40);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10020F68C;
      v17[3] = &unk_1008D4408;
      v14 = v5;
      v18 = v14;
      [v13 _enumerateRemoteObjectProxiesUsingBlock:v17];
      v15 = *(a1 + 72);
      if (v15)
      {
        (*(v15 + 16))(v15, v14);
      }

      v16 = v18;
    }
  }

  else
  {
    v16 = handoff_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1002111CC(a1, v6, v16);
    }
  }
}

void sub_10020F618(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 idsDevice];
  v4 = sub_100108EE8(v5);
  [v3 foundDeviceWithDevice:v4];
}

void sub_10020FB3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 clientAdvertisement];
  [v3 receivedAdvertisement:v4];
}

void sub_1002108BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 idsDevice];
  v4 = sub_100108EE8(v5);
  [v3 lostDeviceWithDevice:v4];
}

void sub_100210D98(void *a1)
{
  kdebug_trace();
  v2 = handoff_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = SFHexStringForData();
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting payload from %@ for %@", &v7, 0x16u);
  }

  v6 = +[SDActivityPayloadManager sharedPayloadManager];
  [v6 sendActivityPayloadRequestToDeviceIdentifier:a1[4] withAdvertisementPayload:a1[5] command:a1[6] timeout:a1[8] completionHandler:a1[7]];
}

id sub_100210FD8()
{
  if (qword_10098A2C8 != -1)
  {
    sub_10021153C();
  }

  v1 = qword_10098A2C0;

  return v1;
}

void sub_10021101C(id a1)
{
  if (qword_10098A2D0 != -1)
  {
    sub_100211550();
  }

  v1 = dlsym(qword_10098A2D8, "UAUserActivityIsForPairedDeviceOptionKey");
  if (v1)
  {
    objc_storeStrong(&qword_10098A2C0, *v1);
  }

  off_100972BB0 = sub_100211084;
}

void sub_1002110BC(void *a1, NSObject *a2)
{
  v3 = a1;
  v4 = [a1 count];
  if (v4)
  {
    v3 = [v3 valueForKeyPath:@"@unionOfObjects.uniqueIDOverride"];
    v5 = SFCompactStringFromCollection();
  }

  else
  {
    v5 = @"[]";
  }

  v6 = 138412290;
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "nearbyServiceDevicesChanged: %@", &v6, 0xCu);
  if (v4)
  {
  }
}

void sub_1002111CC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 56);
  v7 = SFHexStringForData();
  v8 = *(a1 + 64);
  v9 = 138412802;
  v10 = v7;
  v11 = 2112;
  v12 = v8;
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to update with raw advertisementData %@ from %@ (%@)", &v9, 0x20u);
}

void sub_1002112F8(unint64_t a1, NSObject *a2)
{
  if (a1 > 3)
  {
    v2 = "UnexpectedType";
  }

  else
  {
    v2 = off_1008D4450[a1];
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IDSContinuity didStartScanningForType: %s", &v3, 0xCu);
}

void sub_100211390(unint64_t a1, NSObject *a2)
{
  if (a1 > 3)
  {
    v2 = "UnexpectedType";
  }

  else
  {
    v2 = off_1008D4450[a1];
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IDSContinuity didStopScanningForType: %s", &v3, 0xCu);
}

void sub_100211428(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "IDSContinuity didFailToStartScanningForType: %s withError: (%@)", buf, 0x16u);
}

void sub_100211490(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Saw device %@ but cannot find mathing IDSDevice", &v2, 0xCu);
}

void sub_1002115B4(id a1)
{
  v1 = objc_alloc_init(SDConnectedBrowser);
  v2 = qword_10098A2E8;
  qword_10098A2E8 = v1;
}

void sub_1002123A0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"com.apple.sharingd.ConnectedChanged" object:*(a1 + 32) userInfo:0];
}

void sub_1002124E8(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.sharingd.ConnectedChanged" object:0 userInfo:0];
}

void sub_1002125E8(uint64_t a1)
{
  [*(a1 + 32) removeAirDropPersonInternal:*(a1 + 40)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_100212830(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SDConnectedBrowser: _CFURLGetVolumePropertyFlags returned %@", &v3, 0xCu);
}

void sub_1002128AC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SDConnectedBrowser: getResourceValue %@", &v2, 0xCu);
}

uint64_t SDAutoUnlockDeviceRegistrationRequestReadFrom(uint64_t a1, void *a2)
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

void sub_100213CAC()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100019E6C();
  [v0 handleFailureInMethod:@"[aDecoder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

void sub_100213D20()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100019E6C();
  [v0 handleFailureInMethod:@"[aCoder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

void sub_100213D94()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100019E6C();
  [v0 handleFailureInMethod:@"[aDecoder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

void sub_100213E08()
{
  sub_100008A18();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100019E6C();
  [v0 handleFailureInMethod:@"[aCoder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

uint64_t SDAuthenticationPreRequestReadFrom(uint64_t a1, void *a2)
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
          v21 = PBReaderReadString();
          v22 = 16;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v21 = PBReaderReadData();
          v22 = 8;
        }

        v30 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v35 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v35 & 0x7F) << v24;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v26;
          }

LABEL_52:
          v31 = 28;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
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

LABEL_48:
          v31 = 24;
        }

        *(a1 + v31) = v20;
      }

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100214C18(id a1)
{
  v1 = +[UIScreen mainScreen];
  v2 = [v1 traitCollection];
  v11[0] = v2;
  v3 = +[UIDevice currentDevice];
  v4 = +[UITraitCollection traitCollectionWithUserInterfaceIdiom:](UITraitCollection, "traitCollectionWithUserInterfaceIdiom:", [v3 userInterfaceIdiom]);
  v11[1] = v4;
  v5 = [NSArray arrayWithObjects:v11 count:2];
  v6 = [UITraitCollection traitCollectionWithTraitsFromCollections:v5];

  v7 = sub_10026BF6C();
  v8 = [UIImage imageNamed:@"UIActivityUserDefaults" inBundle:v7 compatibleWithTraitCollection:v6];
  v9 = [UIActivity _activityImageForActionRepresentationImage:v8];
  v10 = qword_10098A2F0;
  qword_10098A2F0 = v9;
}

void sub_100215470(uint64_t a1)
{
  v5 = *(a1 + 32);
  if ((*(v5 + 10) & 1) == 0)
  {
    v14 = v1;
    *(v5 + 10) = 1;
    v7 = *(a1 + 32);
    if (*(v7 + 9) == 1)
    {
      [v7 setSessionKeepAliveTransactionIdentifier:0];
      v7 = *(a1 + 32);
    }

    [*(v7 + 24) invalidate];
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;

    v10 = *(a1 + 32);
    v11 = *(v10 + 80);
    *(v10 + 80) = 0;

    v12 = *(a1 + 32);
    v13 = *(v12 + 88);
    *(v12 + 88) = 0;
  }
}

void sub_100215508(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1002156B8(id a1)
{
  v1 = daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10021AECC();
  }
}

void sub_100215B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100215B68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100215B80(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021AF0C();
  }
}

void sub_100215BD4(uint64_t a1, void *a2, char a3)
{
  v7 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = *(a1 + 40);
  if (v6)
  {
    *v6 = a3;
  }
}

void sub_100216298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002162F4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021AFD8();
  }
}

void sub_100216348(uint64_t a1, void *a2, char a3)
{
  v7 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = *(a1 + 40);
  if (v6)
  {
    *v6 = a3;
  }
}

id sub_100216700(uint64_t a1, void *a2)
{
  v3 = [a2 contactIDs];
  v4 = [v3 componentsJoinedByString:{@", "}];
  v5 = [*(a1 + 32) stringByAppendingFormat:@"%@, %li, %f, %i, %li", v4, *(a1 + 40), floor(*(a1 + 48)), *(a1 + 64), *(a1 + 56)];

  return v5;
}

SharingXPCHelperImageItem *__cdecl sub_1002167A4(id a1, SharingXPCHelperImageItem *a2, CGImage *a3)
{
  v4 = a2;
  v5 = [SharingXPCHelperGroupContactIcon alloc];
  v6 = [(SharingXPCHelperImageItem *)v4 contacts];
  v7 = [(SharingXPCHelperImageItem *)v4 iconIndex];
  v8 = [(SharingXPCHelperImageItem *)v4 cacheLookupKey];

  v9 = [(SharingXPCHelperGroupContactIcon *)v5 initWithContacts:v6 icon:a3 atIndex:v7 cacheLookupKey:v8];

  return v9;
}

id sub_100216858(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100215B68;
  v28 = sub_100215B78;
  v29 = 0;
  v4 = [*(*(a1 + 32) + 24) synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D4630];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100216AB4;
  v23[3] = &unk_1008D4658;
  v23[4] = &v24;
  [v4 groupMonogramImageDataForContactsSync:v3 style:v5 diameter:v7 backgroundStyle:v8 monogramsAsFlatImages:v23 replyHandler:v6];

  if (*(a1 + 65) == 1)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 32) queuedBlocks];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100216AC4;
    v17 = &unk_1008D4680;
    v18 = v3;
    v19 = v9;
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    v11 = objc_retainBlock(&v14);
    [v10 addObject:{v11, v14, v15, v16, v17}];
  }

  v12 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v12;
}

void sub_100216A60(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B0BC();
  }
}

id sub_100216AC4(uint64_t a1)
{
  v2 = sharingXPCHelperLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cache miss for %@ -> creating cache for opposite color too", &v5, 0xCu);
  }

  return [*(a1 + 40) groupMonogramImageDataForContacts:*(a1 + 32) style:*(a1 + 48) diameter:*(a1 + 64) monogramsAsFlatImages:0 processOppositeBackgroundStyle:*(a1 + 56)];
}

void sub_100216D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100216DB4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B130();
  }
}

id sub_100217090(uint64_t a1, void *a2)
{
  v3 = [a2 contactIDs];
  v10[1] = v3;
  v4 = [NSNumber numberWithInteger:*(a1 + 40)];
  v10[2] = v4;
  v5 = [NSNumber numberWithDouble:floor(*(a1 + 48))];
  v10[3] = v5;
  v6 = [NSNumber numberWithBool:*(a1 + 56)];
  v10[4] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:5];

  v8 = [v7 componentsJoinedByString:{@", "}];

  return v8;
}

SharingXPCHelperImageItem *__cdecl sub_1002171BC(id a1, SharingXPCHelperImageItem *a2, CGImage *a3)
{
  v4 = a2;
  v5 = [SharingXPCHelperContactIcon alloc];
  v6 = [(SharingXPCHelperImageItem *)v4 contact];
  v7 = [(SharingXPCHelperImageItem *)v4 iconIndex];
  v8 = [(SharingXPCHelperImageItem *)v4 cacheLookupKey];

  v9 = [(SharingXPCHelperContactIcon *)v5 initWithContact:v6 icon:a3 atIndex:v7 cacheLookupKey:v8];

  return v9;
}

id sub_100217270(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100215B68;
  v25 = sub_100215B78;
  v26 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 24) synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D4758];
        v27 = v7;
        v9 = [NSArray arrayWithObjects:&v27 count:1];
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10021753C;
        v16[3] = &unk_1008D4780;
        v16[4] = &v21;
        [v8 monogramImagesForMultipleContactsSync:v9 style:v10 diameter:v12 monogramAsFlatImages:v16 replyHandler:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v28 count:16];
    }

    while (v4);
  }

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

void sub_1002174C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002174E8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B1A4();
  }
}

void sub_10021753C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = sharingXPCHelperLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10021B218();
    }
  }

  [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:v3];
}

void sub_100217CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SharingXPCHelperImageItem alloc] initWithImageTitle:v3];

  [*(a1 + 32) addObject:v4];
}

id sub_100217D70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = a2;
  if (v3)
  {
    [v4 keyDerivedFromRelevantTraitCollectionProperties];
  }

  else
  {
    [v4 keyDerivedFromRelevantTraitCollectionPropertiesWithOppositeUserInterfaceStyle];
  }
  v6 = ;
  v7 = *(a1 + 40);
  v8 = [v5 imageTitle];

  v9 = [SDXPCHelperConnection identifierForColor:*(a1 + 48)];
  v10 = [v7 stringByAppendingFormat:@", %@, %@, %@, ", v8, v9, v6];

  return v10;
}

SharingXPCHelperImageItem *__cdecl sub_100217E48(id a1, SharingXPCHelperImageItem *a2, CGImage *a3)
{
  v4 = a2;
  v5 = [SharingXPCHelperImageItem alloc];
  v6 = [(SharingXPCHelperImageItem *)v4 imageTitle];
  v7 = [(SharingXPCHelperImageItem *)v4 cacheLookupKey];

  v8 = [(SharingXPCHelperImageItem *)v5 initWithImageTitle:v6 image:a3 cacheLookupKey:v7];

  return v8;
}

id sub_100217EEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100215B68;
  v23 = sub_100215B78;
  v24 = 0;
  v4 = [*(*(a1 + 32) + 24) synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D4810];
  v5 = *(a1 + 40);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10021813C;
  v18[3] = &unk_1008D4780;
  v18[4] = &v19;
  [v4 CGImgDataForUIActivityTitles:v3 foregroundColor:v5 replyHandler:v18];

  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 32) queuedBlocks];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10021814C;
    v14 = &unk_1008CE900;
    v15 = v6;
    v16 = *(a1 + 40);
    v17 = v3;
    v8 = objc_retainBlock(&v11);
    [v7 addObject:{v8, v11, v12, v13, v14, v15}];
  }

  v9 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v9;
}

void sub_1002180CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002180E8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B2DC();
  }
}

void sub_10021814C(uint64_t a1)
{
  v2 = [*(a1 + 32) getOppositeColor:*(a1 + 40)];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(a1 + 48);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002182A8;
    v8[3] = &unk_1008D4838;
    v5 = v3;
    v9 = v5;
    [v4 enumerateObjectsUsingBlock:v8];
    v6 = sharingXPCHelperLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cache miss for %@ -> creating cache for opposite color too", buf, 0xCu);
    }

    v7 = [*(a1 + 32) CGImgForUIActivityTitles:v5 foregroundColor:v2 processOppositeColor:0];
  }
}

void sub_1002182A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 imageTitle];
  [v2 addObject:v3];
}

void sub_100218300(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 image])
  {
    v7 = CFRetain([v3 image]);
  }

  else
  {
    v4 = [v3 imageData];
    v7 = SFCreateCGImageFromData();
  }

  v5 = *(a1 + 32);
  v6 = [v3 imageTitle];

  [v5 setObject:v7 forKeyedSubscript:v6];
}

void sub_100218768(uint64_t a1)
{
  v7 = [*(a1 + 32) MD5HashOfStrings:*(a1 + 40)];
  v2 = +[_TtC16DaemoniOSLibrary21SDXPCHelperImageCache cacheCount];
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;
  v5 = [*(*(a1 + 32) + 56) mutableCopy];
  [*(*(a1 + 32) + 56) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 64));
  if (*(a1 + 48))
  {
    [v5 addEntriesFromDictionary:?];
  }

  v6 = objc_alloc_init(SFShareSheetInvokedEvent);
  [v6 setAppBundleId:*(a1 + 56)];
  [v6 setNumberOfSuggestions:*(a1 + 64)];
  [v6 setSuggestionsHash:v7];
  [v6 setDaemonPID:getpid()];
  [v6 setDurationInMS:*(a1 + 72)];
  [v6 setIsDarkMode:*(a1 + 80)];
  [v6 setCacheFileCount:v2];
  [v6 setTotalCacheAccessCount:v4];
  [v6 setIsCollaborative:*(a1 + 81)];
  [v6 setCacheAccessInfo:v5];
  [v6 submitEvent];
}

void sub_100218D98(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B38C();
  }
}

void sub_100218DFC(uint64_t a1)
{
  v2 = [*(a1 + 32) getOppositeColor:*(a1 + 40)];
  if (v2)
  {
    v3 = sharingXPCHelperLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cache miss for text %@ -> creating cache for opposite color too", &v5, 0xCu);
    }

    [*(a1 + 32) CGImgForNameLabelWithString:*(a1 + 48) textColor:v2 maxNumberOfLines:*(a1 + 56) isAirDrop:*(a1 + 64) ignoreNameWrapping:*(a1 + 65) processOppositeColor:0];
  }
}

void sub_1002192A4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B400();
  }
}

void sub_100219308(uint64_t a1)
{
  v2 = [*(a1 + 32) getOppositeColor:*(a1 + 40)];
  if (v2)
  {
    v3 = sharingXPCHelperLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cache miss for label %@ -> creating cache for opposite color too", &v6, 0xCu);
    }

    v5 = [*(a1 + 32) CGImgDataForActivityMoreListEntryForActivityTitle:*(a1 + 48) labelColor:v2 processOppositeColor:0 activityCategory:*(a1 + 56)];
  }
}

void sub_1002196B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002196CC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B474();
  }
}

void sub_1002199B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002199CC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B4E8();
  }
}

void sub_10021A220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021A238(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B55C();
  }
}

void sub_10021A400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021A418(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B5D0();
  }
}

void sub_10021A5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021A5D0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B644();
  }
}

void sub_10021A780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021A798(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B6B8();
  }
}

void sub_10021A918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021A930(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B72C();
  }
}

void sub_10021AAF0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B7DC();
  }
}

void sub_10021ABDC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10021B850();
  }
}

Class sub_10021AD04()
{
  if (qword_10098A308 != -1)
  {
    sub_10021B8C4();
  }

  result = objc_getClass("INImageServiceConnection");
  qword_10098A300 = result;
  off_100972CD8 = sub_10021AD58;
  return result;
}

double sub_10021AD90()
{
  if (qword_10098A308 != -1)
  {
    sub_10021B8C4();
  }

  v0 = dlsym(qword_10098A310, "INImageDefaultScaledSize");
  if (v0)
  {
    xmmword_10098A318 = *v0;
  }

  off_100972CE0 = sub_10021ADFC;
  return *&xmmword_10098A318;
}

void sub_10021AE0C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SDXPCHelperConnection.m" lineNumber:198 description:@"SDXPCHelperConnection deallocated without -invalidate call"];

  if ((*a3 & 1) == 0)
  {
    v7 = daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "SDXPCHelperConnection deallocated without -invalidate call", v8, 2u);
    }
  }
}

void sub_10021AF80(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "copyConversationIdentityImageIconDataForImage: image does not exist at url (%@)", buf, 0xCu);
}

void sub_10021B04C()
{
  sub_10000883C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10021B258()
{
  sub_10000883C();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to fetch icon data from INImage %@ with error %@", v2, 0x16u);
}

void sub_10021B350()
{
  sub_100019C0C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10021B7A0()
{
  sub_100019C0C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

Class sub_10021BF38()
{
  if (qword_10098A330 != -1)
  {
    sub_10021C024();
  }

  result = objc_getClass("LPLinkMetadata");
  qword_10098A328 = result;
  off_100972CE8 = sub_10021BF8C;
  return result;
}

Class sub_10021BFC4()
{
  if (qword_10098A330 != -1)
  {
    sub_10021C024();
  }

  result = objc_getClass("LPImage");
  qword_10098A340 = result;
  off_100972CF0 = sub_10021C018;
  return result;
}

void sub_10021C7C4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = streams_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10021E544();
    }

    v7 = *(a1 + 32);
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Could not send request to other device";
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:55 userInfo:v8];
    [v7 notifyStreamRequestWithError:v9];

    [*(a1 + 32) stop];
  }
}

void sub_10021CAFC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) switchToStreaming];
  }

  else
  {
    v6 = streams_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10021E5B4();
    }

    [*(a1 + 32) stop];
  }
}

uint64_t sub_10021D0CC(uint64_t a1, uint64_t a2, void *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a3 stream:a1 handleEvent:a2];
  }

  return result;
}

void sub_10021E544()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10021E5B4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10021E624()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10021E694()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10021E6D0()
{
  v0 = __error();
  strerror(*v0);
  sub_10000883C();
  sub_10002FC78(&_mh_execute_header, v1, v2, "Could not create sock pair = %s", v3, v4, v5, v6, v7);
}

void sub_10021E750()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10021E78C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10021E7C8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10021E838()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10021E874()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10021E8B0(void *a1)
{
  v1 = [a1 streamError];
  sub_10000883C();
  sub_10002FC78(&_mh_execute_header, v2, v3, "Client stream received error = %@", v4, v5, v6, v7, v8);
}

void sub_10021E934()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10021E970()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10021E9E0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10021EA1C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t SDUnlockLongTermKeyResponseReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadData();
        v15 = 8;
LABEL_44:
        v31 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_51;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_51;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        v35 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v35 & 0x7F) << v16;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_46;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_46:
      *(a1 + 28) = v22;
LABEL_51:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        v34 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v34 & 0x7F) << v24;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v30 = 0;
          goto LABEL_50;
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

LABEL_50:
      *(a1 + 24) = v30;
      goto LABEL_51;
    }

    if (v13 != 2)
    {
      goto LABEL_32;
    }

    v14 = PBReaderReadString();
    v15 = 16;
    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

id sub_10021FF84(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retry setup device timer fired", v4, 2u);
  }

  [*(a1 + 32) setSetupRetryDeviceTimer:0];
  return [*(a1 + 32) setSetupRetryDeviceID:0];
}

int64_t sub_1002201B4(id a1, SFAutoUnlockDevice *a2, SFAutoUnlockDevice *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(SFAutoUnlockDevice *)v4 type];
  if (v6 >= [(SFAutoUnlockDevice *)v5 type])
  {
    v8 = [(SFAutoUnlockDevice *)v4 type];
    v7 = v8 > [(SFAutoUnlockDevice *)v5 type];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

id sub_1002204BC(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Suggested device timer fired", v4, 2u);
  }

  [*(a1 + 32) setDeviceTimer:0];
  return [*(a1 + 32) setSuggestedDeviceID:0];
}

id sub_1002207EC(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Suggestion service timer fired", v4, 2u);
  }

  return [*(a1 + 32) invalidateSuggestionService];
}

void sub_100220DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100220DEC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 copy];

  [WeakRetained handleFoundPeer:v4];
}

void sub_100220E5C(id a1)
{
  v1 = auto_unlock_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Scanner invalidated", v2, 2u);
  }
}

void sub_100220EC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = auto_unlock_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1002226D0(v3, v5);
    }

    [*(a1 + 32) invalidateScanner];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scanner started", v6, 2u);
    }
  }
}

id sub_10022149C(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Suggestion scan timer fired", v4, 2u);
  }

  [*(a1 + 32) postNotificationIfNeeded];
  return [*(a1 + 32) invalidateScanner];
}

void sub_1002216FC(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100222748(a1, v2);
  }
}

void sub_100221830(uint64_t a1)
{
  if (*(a1 + 56) == 401 && *(a1 + 32))
  {
    v2 = [[SDAutoUnlockStartAdvertising alloc] initWithData:*(a1 + 40)];
    v3 = +[SDStatusMonitor sharedMonitor];
    v4 = [v3 deviceRequiresNewRanging];

    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockMessageTypeStartAdvertising (new ranging required: %@, message: %@)", buf, 0x16u);
    }

    if (v4 && [(SDAutoUnlockStartAdvertising *)v2 version]!= 2)
    {
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping response advertisement because Mac OS version is too old", buf, 2u);
      }
    }

    else
    {
      v7 = +[SDAutoUnlockAKSManager sharedManager];
      v8 = [v7 ltkExistsForKeyDevice:*(a1 + 32)];

      if (v8)
      {
        v9 = *(a1 + 48);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100221A48;
        v11[3] = &unk_1008CDAA8;
        v11[4] = v9;
        [v9 watchAvailableForUnlockWithCompletionHandler:v11];
LABEL_15:

        return;
      }

      v10 = +[SDAutoUnlockAKSManager sharedManager];
      [v10 updateLTKs];
    }

    goto LABEL_15;
  }
}

id *sub_100221A48(id *result, int a2)
{
  if (a2)
  {
    return [result[4] updateSuggestionService];
  }

  return result;
}

void sub_1002226D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Scanner error: %@", &v2, 0xCu);
}

void sub_100222748(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error sending message to start advertising to %@", &v3, 0xCu);
}

void sub_100222CD0(id a1)
{
  v1 = objc_alloc_init(SDStatusMonitor);
  v2 = qword_10098A350;
  qword_10098A350 = v1;
}

void sub_100223004(id a1)
{
  v1 = daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Me device changed", v2, 2u);
  }
}

void sub_1002247DC(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a1[4];
    v7 = a1[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002248A8;
    v9[3] = &unk_1008CE090;
    v9[4] = a1[6];
    [v6 saveVerifiedAccount:v7 withCompletionHandler:v9];
  }

  else
  {
    v8 = tethering_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1002318A8();
    }
  }
}

void sub_1002248A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = tethering_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100231918();
  }

  [*(a1 + 32) postNotification:@"com.apple.sharingd.AltDSIDChanged"];
}

void sub_1002264F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10022651C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100226AC8(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset meCard called with reason: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 696);
  *(v4 + 696) = 0;

  return [*(a1 + 40) meCard];
}

void sub_100227274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1002272B4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"FamilyHotspotIdentifier"];
  v7 = [v5 objectForKeyedSubscript:@"FamilyHotspotDisplayName"];
  v8 = [v5 objectForKeyedSubscript:@"FamilyHotspotSharingMode"];

  if ([v8 integerValue] >= 3)
  {

    v8 = &off_10090BFD0;
  }

  if (*(a1 + 72) == 1)
  {
    v9 = *(a1 + 32);
    v10 = [v8 integerValue];
    if (v10 > 2)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_1008D5118[v10];
    }

    v16 = [NSString stringWithFormat:@"'%@' -> %s", v7, v11];
    [v9 appendString:v16];

    if ([*(a1 + 40) count] - 1 != a3)
    {
      [*(a1 + 32) appendString:{@", "}];
    }
  }

  else
  {
    v12 = [*(*(a1 + 48) + 416) objectForKeyedSubscript:v6];
    v13 = [v12 integerValue];

    if (v13 != [v8 integerValue])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v14 = daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (v13 > 2)
        {
          v15 = "?";
        }

        else
        {
          v15 = off_1008D5118[v13];
        }

        v17 = [v8 integerValue];
        if (v17 > 2)
        {
          v18 = "?";
        }

        else
        {
          v18 = off_1008D5118[v17];
        }

        *buf = 138412802;
        v20 = v7;
        v21 = 2080;
        v22 = v15;
        v23 = 2080;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Family hotspot state updated: '%@' : %s -> %s", buf, 0x20u);
      }
    }
  }

  if (![v8 integerValue])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  [*(*(a1 + 48) + 416) setObject:v8 forKeyedSubscript:v6];
}

id sub_100227784(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Added reason to prevent locale change exit (reason %@)", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 520) addReason:*(a1 + 32)];
}

id sub_100227914(void *a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pushed expiration date of reason to prevent locale change exit (reason %@)", &v5, 0xCu);
  }

  return [*(a1[5] + 520) pushPreventionDateForReason:a1[4] newDate:a1[6]];
}

id sub_100227A80(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removed reason to prevent locale change exit (reason %@)", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 520) removeReason:*(a1 + 32)];
}

void sub_100228080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002280A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothDidSetPowerStateWithError:v3];
}

void sub_100229D34(id a1)
{
  v2 = [(objc_class *)off_100972F98() sharedManager];
  if ([v2 isMultiUser])
  {
    v1 = [v2 currentUser];
    byte_10098A358 = [v1 userType] == 1;
  }

  else
  {
    byte_10098A358 = 0;
  }
}

id sub_10022A65C(uint64_t a1, void *a2)
{
  [a2 clearMyAppleIDInfo];
  [a2 updateDiscoverableMode];

  return [a2 postNotification:@"com.apple.sharingd.AppleIDChanged"];
}

void sub_10022B17C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "non-null";
    if (!a2)
    {
      v6 = "null";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SDStatusMonitor: wirelessDeviceCallBack(device %s)", &v8, 0xCu);
  }

  v7 = a3;
  [v7 forceAWDLDeviceRefresh:a2];
  [v7 updateWirelessDevice];
}

void sub_10022B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = daemon_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WiFiManagerClientRegisterVirtInterfaceChangeCallback called for WiFiDeviceClient device %@", &v9, 0xCu);
  }

  v8 = a5;
  [v8 forceAWDLDeviceRefresh:a2];
  [v8 updateWirelessDevice];
}

id sub_10022B32C(uint64_t a1, void *a2)
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SDStatusMonitor: wifiServerRestartCallBack", v5, 2u);
  }

  return [a2 postNotification:@"com.apple.sharingd.WiFiRestart"];
}

id sub_10022B3A8(uint64_t a1, void *a2)
{
  [a2 logWiFiPowerState];
  [a2 clearWirelessState];
  [a2 updateAWDLStateInfo];
  [a2 updateDiscoverableMode];

  return [a2 postNotification:@"com.apple.sharingd.WirelessPowerChanged"];
}

id sub_10022B404(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 handleAWDLState:a2];

  return [a3 postNotification:@"com.apple.sharingd.VirtualInterfacesChanged"];
}

void sub_10022B44C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"YES";
    if (!a2)
    {
      v6 = @"NO";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Host AP state changed (event data: %@)", buf, 0xCu);
  }

  v8 = @"HostAPEventData";
  v9 = a2;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [a3 postNotification:@"com.apple.sharingd.HotspotHostAPStateChanged" userInfo:v7];
}

id sub_10022B558(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "wirelessCriticalCallback inCriticalState=%@", &v8, 0xCu);
  }

  return [a3 updateWirelessCritical:a2];
}

void sub_10022B6CC(uint64_t a1)
{
  v2 = objc_alloc_init(CWFInterface);
  v3 = *(a1 + 32);
  v4 = *(v3 + 672);
  *(v3 + 672) = v2;

  objc_initWeak(&location, *(a1 + 32));
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10022B8E4;
  v18[3] = &unk_1008D4DD8;
  objc_copyWeak(&v19, &location);
  [*(*(a1 + 32) + 672) setEventHandler:v18];
  [*(*(a1 + 32) + 672) activate];
  v5 = *(*(a1 + 32) + 672);
  v17 = 0;
  [v5 startMonitoringEventType:3 error:&v17];
  v6 = v17;
  v7 = *(*(a1 + 32) + 672);
  v16 = v6;
  [v7 startMonitoringEventType:8 error:&v16];
  v8 = v16;

  v9 = *(*(a1 + 32) + 672);
  v15 = v8;
  [v9 startMonitoringEventType:1 error:&v15];
  v10 = v15;

  if (v10)
  {
    v11 = daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1002320A8();
    }

    [*(*(a1 + 32) + 672) invalidate];
    v12 = *(a1 + 32);
    v13 = *(v12 + 672);
    *(v12 + 672) = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10022BA2C;
  v14[3] = &unk_1008CDEA0;
  v14[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v14);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void sub_10022B8C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10022B8E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10022B99C;
  v5[3] = &unk_1008CDC30;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10022B99C(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Got BSSID event, checking channel and wifi state\n", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateWifiState:{objc_msgSend(*(a1 + 32), "type")}];
}

id sub_10022BDB4(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 80), &state64);
  v2 = [NSNumber numberWithInt:state64 != 0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return [*(a1 + 32) postNotification:@"com.apple.sharingd.BacklightChanged"];
}

void sub_10022BFB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10022BFCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained d2dEncryptionChanged];
}

void sub_10022C284(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_10022C2CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothStateChanged];
}

void sub_10022C30C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothMonitorInvalidated];
}

void sub_10022C34C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothActivatedWithError:v3];
}

void sub_10022C3A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothStateChanged];
}

void sub_10022C7DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained installBluetoothMonitor];
}

void sub_10022CE74(uint64_t a1)
{
  [*(a1 + 32) updateDiscoverableMode];
  [*(a1 + 32) postNotification:@"com.apple.sharingd.WirelessCarPlayChanged"];
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wireless CarPlay session state changed.", v3, 2u);
  }
}

uint64_t sub_10022D138(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Contact store did change notification received", v4, 2u);
  }

  [*(a1 + 32) postNotification:@"com.apple.sharingd.ContactsChanged"];
  return notify_post("com.apple.sharing.privacy-changed");
}

uint64_t sub_10022D234(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MeCard changed notification received", v4, 2u);
  }

  [*(a1 + 32) clearMyIconAndHash];
  [*(a1 + 32) postNotification:@"com.apple.sharingd.ContactsChanged"];
  return notify_post("com.apple.sharing.privacy-changed");
}

void sub_10022D4E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v3 fetchLTEShows4GWithContext:v4];
    [*(a1 + 32) fetchDataStatusWithContext:v4];
    [*(a1 + 32) fetchSIMStatusWithContext:v4];
    [*(a1 + 32) fetchSignalStrengthWithContext:v4];
  }
}

void sub_10022D600(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 32))
    {
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetched preferred data context %@", &v9, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1002321F8();
    }
  }
}

void sub_10022D7D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100232268();
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 isEqualToString:@"4G"];
    }

    else
    {
      v8 = 0;
    }

    [*(a1 + 32) updateLTEShows4G:v8];
  }
}

void sub_10022D904(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) updateSIMStatus:a2];
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002322D8();
    }
  }
}

void sub_10022D9F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) updateDataStatus:a2];
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100232348();
    }
  }
}

void sub_10022DADC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) updateSignalStrength:a2];
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002323B8();
    }
  }
}

void sub_10022E094(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v3 fetchLTEShows4GWithContext:v4];
    [*(a1 + 32) fetchDataStatusWithContext:v4];
    [*(a1 + 32) fetchSIMStatusWithContext:v4];
    [*(a1 + 32) fetchSignalStrengthWithContext:v4];
  }
}

id *sub_10022E180(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] fetchSIMStatusWithContext:a2];
  }

  return result;
}

id *sub_10022E200(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] fetchDataStatusWithContext:a2];
  }

  return result;
}

id *sub_10022E280(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] fetchSignalStrengthWithContext:a2];
  }

  return result;
}

void sub_10022E974(id a1, BOOL a2)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sharingd Exiting...", v3, 2u);
  }

  exit(0);
}

void sub_10022E9D4(uint64_t a1, void *a2)
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Current language changed", buf, 2u);
  }

  [_TtC16DaemoniOSLibrary21SDXPCHelperImageCache clearCacheWithSync:1];
  v4 = a2;
  v5 = objc_opt_self();
  objc_sync_enter(v5);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002317B8;
  block[3] = &unk_1008CDEA0;
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_sync_exit(v5);
}

void sub_10022FDF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4 != 0;
  v6 = daemon_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v4 != 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Mirroring active state changed: %d", v10, 8u);
  }

  pthread_mutex_lock(&stru_100972F48);
  v7 = *(a1 + 32);
  v8 = *(v7 + 688);
  *(v7 + 688) = v5;
  pthread_mutex_unlock(&stru_100972F48);
  if (v8 != v5)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"com.apple.sharingd.MirroringStateChanged" object:0];
  }
}

void sub_100230414(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WiFi Preferences changed callback, purging ssid cache", v7, 2u);
  }

  v5 = a3;
  pthread_mutex_lock(&stru_100972F48);
  [v5[60] removeAllObjects];
  v6 = v5[60];
  v5[60] = 0;

  pthread_mutex_unlock(&stru_100972F48);
  [v5 updateAutoHotspotState];
  [v5 updateFamilyHotspotState];
}

Class sub_1002311F0()
{
  if (qword_10098A390 != -1)
  {
    sub_100232890();
  }

  result = objc_getClass("TUPrivacyManager");
  qword_10098A388 = result;
  off_100972F88 = sub_100231244;
  return result;
}

Class sub_10023127C()
{
  if (qword_10098A390 != -1)
  {
    sub_100232890();
  }

  result = objc_getClass("TUPhoneNumber");
  qword_10098A3A0 = result;
  off_100972F90 = sub_1002312D0;
  return result;
}

uint64_t sub_1002312DC()
{
  if (qword_10098A390 != -1)
  {
    sub_100232890();
  }

  v0 = dlsym(qword_10098A398, "TUHomeCountryCode");
  off_1009731B0 = v0;

  return v0();
}