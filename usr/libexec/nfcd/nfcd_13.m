void sub_100182E00(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100182EB4;
    v5[3] = &unk_100315FA8;
    v5[4] = a1;
    v6 = v3;
    os_unfair_lock_lock(a1 + 13);
    sub_100182EB4(v5);
    os_unfair_lock_unlock(a1 + 13);
  }
}

void sub_100182EB4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  sub_100182128(*(a1 + 32));
  v3 = [*(*(a1 + 32) + 16) count];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v5);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v5);
        Name = sel_getName("_unregisterCameraNotifications");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 166);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = object_getClass(v5);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67109890;
        v22 = v14;
        v23 = 2082;
        v24 = object_getClassName(v5);
        v25 = 2082;
        v26 = sel_getName("_unregisterCameraNotifications");
        v27 = 1024;
        v28 = 166;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      v16 = *(v5 + 40);
      if (v16)
      {
        IONotificationPortDestroy(v16);
        *(v5 + 40) = 0;
      }

      v17 = *(v5 + 48);
      if (v17)
      {
        IOObjectRelease(v17);
        *(v5 + 48) = 0;
      }

      sub_10027E700(v15);
      if (objc_opt_class())
      {
        v18 = [*"ion" server];
        [v18 removeActionHandler:*(v5 + 24)];
      }

      v19 = *(v5 + 24);
      *(v5 + 24) = 0;

      *(v5 + 60) = 0;
    }
  }
}

void sub_1001830D8(uint64_t a1)
{
  v2 = sub_100183130(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);

    sub_10000257C(v4, v3, -536870608);
  }
}

uint64_t sub_100183130(uint64_t result)
{
  if (result)
  {
    v1 = 0;
    do
    {
      v2 = IOServiceMatching((&off_10031A980)[v1]);
      result = IOServiceGetMatchingService(kIOMainPortDefault, v2);
      if (v1 > 1)
      {
        break;
      }

      ++v1;
    }

    while (!result);
  }

  return result;
}

void sub_100183198(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 3, a2);
  }
}

uint64_t sub_100183200(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001832E8;
    v6[3] = &unk_10031A960;
    v8 = &v9;
    v6[4] = a1;
    v7 = v3;
    os_unfair_lock_lock(a1 + 13);
    sub_1001832E8(v6);
    os_unfair_lock_unlock(a1 + 13);
    LOBYTE(a1) = *(v10 + 24);

    _Block_object_dispose(&v9, 8);
  }

  return a1 & 1;
}

void sub_1001832E8(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;
}

void sub_10018333C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = sub_100003478(WeakRetained);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName(*(a1 + 40));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i state changed: status= %u, visualAlert=%d", v11, ClassName, Name, 395, v4, v3[60]);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(v3);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(v3);
      v16 = sel_getName(*(a1 + 40));
      v17 = v3[60];
      *buf = 67110402;
      *&buf[4] = v14;
      *v49 = 2082;
      *&v49[2] = v15;
      v50 = 2082;
      v51 = v16;
      v52 = 1024;
      v53 = 395;
      v54 = 1024;
      v55 = v4;
      v56 = 1024;
      v57 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i state changed: status= %u, visualAlert=%d", buf, 0x2Eu);
    }

    if (v4)
    {
      v18 = "com.apple.nfcd.camera.debounceTimer.on";
    }

    else
    {
      v18 = "com.apple.nfcd.camera.debounceTimer.off";
    }

    v19 = _os_activity_create(&_mh_execute_header, v18, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *v49 = 0;
    os_activity_scope_enter(v19, buf);
    os_activity_scope_leave(buf);

    v20 = v3;
    objc_sync_enter(v20);
    v21 = *(v20 + 16);
    v22 = *(v20 + 14);
    *(v20 + 16) = -1;
    objc_sync_exit(v20);

    if ((v20[60] & 1) == 0)
    {
      if (v21 == v22)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFLogGetLogger();
        if (v23)
        {
          v24 = v23;
          v25 = object_getClass(v20);
          v26 = class_isMetaClass(v25);
          v27 = object_getClassName(v20);
          v41 = sel_getName(*(a1 + 40));
          v28 = 45;
          if (v26)
          {
            v28 = 43;
          }

          v24(5, "%c[%{public}s %{public}s]:%i No state change after debounce", v28, v27, v41, 406);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v29 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = object_getClass(v20);
          if (class_isMetaClass(v30))
          {
            v31 = 43;
          }

          else
          {
            v31 = 45;
          }

          v32 = object_getClassName(v20);
          v33 = sel_getName(*(a1 + 40));
          *buf = 67109890;
          *&buf[4] = v31;
          *v49 = 2082;
          *&v49[2] = v32;
          v50 = 2082;
          v51 = v33;
          v52 = 1024;
          v53 = 406;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No state change after debounce", buf, 0x22u);
        }
      }

      else
      {
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_1001837B0;
        v46[3] = &unk_100316FC8;
        v46[4] = v20;
        os_unfair_lock_lock(v20 + 13);
        v34 = sub_1001837B0(v46);
        os_unfair_lock_unlock(v20 + 13);
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v35 = v34;
        v36 = [v35 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v43;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v43 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = [v35 objectForKey:*(*(&v42 + 1) + 8 * i)];
              [v40 didCameraStateChange:v4];
            }

            v37 = [v35 countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v37);
        }
      }
    }
  }
}

id sub_1001837B0(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) copy];

  return v1;
}

id *sub_10018383C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = NFAssertSuppressPresentmentIntentToDefaultApp;
    a1 = objc_msgSendSuper2(&v11, "initWithRemoteAssertion:xpcConnection:", v7, v9);
    if (a1)
    {
      *(a1 + 32) = [v7 assertionType] == 6;
      objc_storeStrong(a1 + 5, a3);
    }
  }

  return a1;
}

void sub_100184A58(id a1)
{
  v1 = objc_alloc_init(NFLPCDRandomGenerator);
  v2 = qword_10035DA50;
  qword_10035DA50 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100184B20(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 length] <= 0xC && objc_msgSend(v4, "length") > 5)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100184D7C;
      v16[3] = &unk_100315FA8;
      v16[4] = a1;
      v17 = v4;
      os_unfair_lock_lock(a1 + 3);
      sub_100184D7C(v16);
      os_unfair_lock_unlock(a1 + 3);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("setOverride:");
        v15 = [v4 length];
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i Invalid data size: %ld", v11, ClassName, Name, 57, v15);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = object_getClass(a1);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67110146;
        v19 = v14;
        v20 = 2082;
        v21 = object_getClassName(a1);
        v22 = 2082;
        v23 = sel_getName("setOverride:");
        v24 = 1024;
        v25 = 57;
        v26 = 2048;
        v27 = [v4 length];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid data size: %ld", buf, 0x2Cu);
      }
    }
  }
}

void sub_100184D7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 8) = 1;
  }

  v3 = [[NSMutableData alloc] initWithData:*(a1 + 40)];
  sub_100184DEC(*(a1 + 32), v3);
}

void sub_100184DEC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

os_unfair_lock_s *sub_100184DFC(os_unfair_lock_s *a1)
{
  v1 = a1;
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100184EC8;
    v3[3] = &unk_10031A9C0;
    v3[5] = &v4;
    v3[6] = "value";
    v3[4] = a1;
    os_unfair_lock_lock(a1 + 3);
    sub_100184EC8(v3);
    os_unfair_lock_unlock(v1 + 3);
    v1 = v5[3];
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

void sub_100184EC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 16;
    if (v2[8])
    {
      v3 = 24;
    }

    v2 = *&v2[v3];
  }

  v4 = v2;
  v5 = [v4 bytes];
  if ([v4 length] >= 9)
  {
    [v4 setLength:8];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(4, "%c[%{public}s %{public}s]:%i Dropping %zu MSBs", v11, ClassName, Name, 88, 8);
    }

    v5 += 8;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v20 = v14;
      v21 = 2082;
      v22 = v15;
      v23 = 2082;
      v24 = v16;
      v25 = 1024;
      v26 = 88;
      v27 = 2048;
      v28 = 8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Dropping %zu MSBs", buf, 0x2Cu);
    }
  }

  if ([v4 length])
  {
    v17 = 0;
    do
    {
      *(*(*(a1 + 40) + 8) + 24) <<= 8;
      *(*(*(a1 + 40) + 8) + 24) |= *v5;
      ++v17;
    }

    while ([v4 length] > v17);
  }
}

os_unfair_lock_s *sub_10018510C(os_unfair_lock_s *a1)
{
  v1 = a1;
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = sub_100006ACC;
    v8 = sub_100185210;
    v9 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100185218;
    v3[3] = &unk_1003161D8;
    v3[4] = a1;
    v3[5] = &v4;
    os_unfair_lock_lock(a1 + 3);
    sub_100185218(v3);
    os_unfair_lock_unlock(v1 + 3);
    v1 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

void sub_100185218(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 16;
    if (*(v2 + 8))
    {
      v3 = 24;
    }

    v4 = *(v2 + v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
}

void sub_100185298(os_unfair_lock_s *a1)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10018532C;
    v2[3] = &unk_100315F30;
    v2[4] = a1;
    os_unfair_lock_lock(a1 + 3);
    sub_10018532C(v2);
    os_unfair_lock_unlock(a1 + 3);
  }
}

void sub_10018532C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 8))
    {
      return;
    }

    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 mutableBytes];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 length];

  arc4random_buf(v4, v7);
}

void sub_1001862FC(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!v7 || v8)
  {
    v44 = 144;
    v10 = [[NSData alloc] initWithBytes:&v44 length:2];
    if (([v7 isEqualToData:v10] & 1) == 0)
    {
      v11 = *(a1 + 32);

      v7 = v11;
    }
  }

  [*(a1 + 40) sendAPDU:v7];
  if (a4)
  {
    v12 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    if ([v12 integerForKey:@"DelayAfterStepUpOperation"])
    {
      v13 = 1000 * [v12 integerForKey:@"DelayAfterStepUpOperation"];
    }

    else
    {
      v13 = 50000;
    }

    usleep(v13);
    if (v7)
    {
      v15 = v9 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = &__kCFBooleanFalse;
    }

    else
    {
      v16 = &__kCFBooleanTrue;
    }

    [*(*(*(a1 + 64) + 8) + 40) setObject:v16 forKeyedSubscript:@"didError"];
    v17 = [[NFContactlessPaymentEndEvent alloc] initWithDictionary:*(*(*(a1 + 64) + 8) + 40)];
    v18 = *(*(a1 + 72) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = objc_opt_new();
    v21 = [*(*(a1 + 48) + 48) identifier];
    if (v21)
    {
      v22 = [[NSData alloc] initWithBytes:&unk_100297808 length:9];
      v23 = [v22 NF_asHexString];

      if (![v21 compare:v23 options:1 range:{0, objc_msgSend(v23, "length")}])
      {
        v36 = [[NSData alloc] initWithBytes:&unk_100297811 length:2];
        [*(*(a1 + 48) + 48) identifier];
        v24 = v37 = v12;
        v25 = [*(*(a1 + 48) + 48) packageIdentifier];
        v26 = [*(*(a1 + 48) + 48) moduleIdentifier];
        v43 = v9;
        v27 = [AppletTranslator parseHCIEvent:v36 withApplet:v24 withPackage:v25 withModule:v26 withTransceiver:0 withError:&v43];
        v35 = v43;

        v12 = v37;
        [v20 addEntriesFromDictionary:v27];

        v9 = v35;
      }
    }

    v28 = *(*(*(a1 + 72) + 8) + 40);
    v29 = *(*(a1 + 48) + 32);
    (*(*(a1 + 56) + 16))();
    v30 = *(a1 + 48);
    if (v30[4])
    {
      v31 = [v30 extractKeyTypeFromExpressPass];
      [v20 addEntriesFromDictionary:v31];

      sub_1000A3C44(NFUnifiedAccessTransactionCALogger, v20, *(*(a1 + 48) + 40), [v9 code]);
      v32 = NFSharedSignpostLog();
      if (os_signpost_enabled(v32))
      {
        LOWORD(location[0]) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AtlEvent", "AtlStepUpEventComplete", location, 2u);
      }

      v33 = *(a1 + 48);
      v34 = *(v33 + 32);
      *(v33 + 32) = 0;
    }
  }

  else
  {
    objc_initWeak(location, *(a1 + 48));
    v14 = *(*(a1 + 48) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018675C;
    block[3] = &unk_10031A9E8;
    objc_copyWeak(&v41, location);
    v40 = *(a1 + 56);
    v39 = *(a1 + 40);
    dispatch_async(v14, block);

    objc_destroyWeak(&v41);
    objc_destroyWeak(location);
  }
}

void sub_10018675C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained hceReadWithHandle:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id sub_10018683C()
{
  objc_opt_self();
  if (qword_10035DA68 != -1)
  {
    dispatch_once(&qword_10035DA68, &stru_10031AA30);
  }

  v0 = qword_10035DA60;

  return v0;
}

void sub_100186894(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFHardwareManagerAccessoryInterface];
  v2 = qword_10035DA60;
  qword_10035DA60 = v1;

  v3 = qword_10035DA60;
  v4 = sub_10017A618();
  [v3 setInterface:v4 forSelector:"queueReaderSession:callback:" argumentIndex:0 ofReply:0];

  v5 = qword_10035DA60;
  v6 = sub_10017A5E0();
  [v5 setInterface:v6 forSelector:"queueReaderSession:callback:" argumentIndex:0 ofReply:1];

  v7 = [NSSet alloc];
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  [qword_10035DA60 setClasses:v9 forSelector:"getLastDetectedTags:" argumentIndex:0 ofReply:1];
  [qword_10035DA60 setClasses:v9 forSelector:"getMultiTagState:" argumentIndex:0 ofReply:1];
}

id sub_1001869E4()
{
  objc_opt_self();
  if (qword_10035DA78 != -1)
  {
    dispatch_once(&qword_10035DA78, &stru_10031AA50);
  }

  v0 = qword_10035DA70;

  return v0;
}

void sub_100186A3C(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFHardwareManagerAccessoryCallbacks];
  v2 = qword_10035DA70;
  qword_10035DA70 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100186A84(id *a1, void *a2, int a3, void *a4)
{
  v5 = a2;
  if (!a1)
  {
    v36 = 0;
    goto LABEL_462;
  }

  v6 = objc_opt_new();
  v7 = [v5 objectForKeyedSubscript:@"version"];
  v625 = v7;
  if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 unsignedIntValue];
  }

  else
  {
    v9 = 2;
  }

  v10 = [a1 serialNumber];

  v626 = v6;
  if (!v10)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v28 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v576 = ClassName;
      v6 = v626;
      v28(3, "%c[%{public}s %{public}s]:%i Failed to get serial number failing remote admin state", v32, v576, Name, 103);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = object_getClass(a1);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v35;
      *v694 = 2082;
      *&v694[2] = object_getClassName(a1);
      *&v694[10] = 2082;
      *&v694[12] = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
      *&v694[20] = 1024;
      *&v694[22] = 103;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get serial number failing remote admin state", buf, 0x22u);
    }

    v36 = 13;
    goto LABEL_461;
  }

  [v6 setObject:@"JCOP" forKey:@"secureElementType"];
  v11 = [a1 serialNumber];
  [v6 setObject:v11 forKey:@"SEID"];

  v12 = [a1 rsaCertificate];
  if (v12)
  {
    v13 = v12;
    v14 = [a1 eccCertificate];

    if (v14)
    {
      v15 = objc_opt_new();
      v16 = [a1 rsaCertificate];
      [v15 setObject:v16 forKey:@"RSA"];

      v17 = [a1 eccCertificate];
      [v15 setObject:v17 forKey:@"ECDSA"];

      if (v9 <= 3)
      {
        v18 = [a1 eccCertificate];
        [v15 setObject:v18 forKey:@"ECC"];

        v19 = [a1 eckaCertificate];

        if (v19)
        {
          v20 = [a1 eckaCertificate];
          [v15 setObject:v20 forKey:@"ECKA"];
        }
      }

      [v6 setObject:v15 forKey:@"casdCertificate"];
    }
  }

  v21 = objc_opt_new();
  v22 = [[NSData alloc] initWithBytes:&unk_100297814 length:8];
  v23 = sub_1001595DC(a1, v22, 0);

  v623 = v5;
  v652 = a1;
  v619 = v9;
  if (v23)
  {
    v24 = sub_100158AB4(a1, 193);
    v25 = v24;
    if (v24)
    {
      v26 = [v24 NF_asHexString];
      [v21 setObject:v26 forKey:@"isdSequenceCounter"];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(a1);
        v48 = class_isMetaClass(v47);
        v49 = object_getClassName(a1);
        v591 = sel_getName("_getISDInfo");
        v50 = 45;
        if (v48)
        {
          v50 = 43;
        }

        v46(3, "%c[%{public}s %{public}s]:%i Failed to get sequence counter", v50, v49, v591, 300);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v51 = object_getClass(a1);
        if (class_isMetaClass(v51))
        {
          v52 = 43;
        }

        else
        {
          v52 = 45;
        }

        *buf = 67109890;
        *&buf[4] = v52;
        *v694 = 2082;
        *&v694[2] = object_getClassName(a1);
        *&v694[10] = 2082;
        *&v694[12] = sel_getName("_getISDInfo");
        *&v694[20] = 1024;
        *&v694[22] = 300;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get sequence counter", buf, 0x22u);
      }
    }

    v53 = sub_100158F70(a1, 254, 0xDF20u);
    if (v53)
    {
      v54 = [[NSString alloc] initWithData:v53 encoding:4];
      if (v54)
      {
        v55 = v54;
        [v21 setObject:v54 forKey:@"kPlatformId"];
        goto LABEL_68;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(a1);
        v59 = class_isMetaClass(v58);
        v60 = object_getClassName(a1);
        v592 = sel_getName("_getISDInfo");
        v61 = 45;
        if (v59)
        {
          v61 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i Fail to encode platform ID into string", v61, v60, v592, 310);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = object_getClass(a1);
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(a1);
        v66 = sel_getName("_getISDInfo");
        *buf = 67109890;
        *&buf[4] = v64;
        *v694 = 2082;
        *&v694[2] = v65;
        *&v694[10] = 2082;
        *&v694[12] = v66;
        *&v694[20] = 1024;
        *&v694[22] = 310;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to encode platform ID into string", buf, 0x22u);
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v67 = NFLogGetLogger();
    if (v67)
    {
      v68 = v67;
      v69 = object_getClass(a1);
      v70 = class_isMetaClass(v69);
      v71 = object_getClassName(a1);
      v593 = sel_getName("_getISDInfo");
      v72 = 45;
      if (v70)
      {
        v72 = 43;
      }

      v68(3, "%c[%{public}s %{public}s]:%i Failed to get platform ID", v72, v71, v593, 318);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v73 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = object_getClass(a1);
      if (class_isMetaClass(v74))
      {
        v75 = 43;
      }

      else
      {
        v75 = 45;
      }

      v76 = object_getClassName(a1);
      v77 = sel_getName("_getISDInfo");
      *buf = 67109890;
      *&buf[4] = v75;
      *v694 = 2082;
      *&v694[2] = v76;
      *&v694[10] = 2082;
      *&v694[12] = v77;
      *&v694[20] = 1024;
      *&v694[22] = 318;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get platform ID", buf, 0x22u);
    }

    v55 = 0;
LABEL_68:
    v78 = sub_100158F70(a1, 254, 0xDF31u);
    v79 = v78;
    if (v78 && [v78 length] > 1)
    {
      v91 = [v79 subdataWithRange:{0, 2}];
      v92 = v55;
      v93 = *[v91 bytes];
      if ([v92 isEqualToString:@"N5E0000000990000"] && bswap32(v93) >> 16 >= 0xB4)
      {
        v94 = [NSData NF_dataWithHexString:@"00B3"];
      }

      else
      {
        v94 = v91;
      }

      v86 = v94;

      v95 = [v86 NF_asHexString];
      [v21 setObject:v95 forKey:@"jsblSequenceCounter"];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFLogGetLogger();
      if (v80)
      {
        v81 = v80;
        v82 = object_getClass(a1);
        v83 = class_isMetaClass(v82);
        v84 = object_getClassName(a1);
        v594 = sel_getName("_getISDInfo");
        v85 = 45;
        if (v83)
        {
          v85 = 43;
        }

        v81(3, "%c[%{public}s %{public}s]:%i Failed to get update info", v85, v84, v594, 324);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v86 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_86;
      }

      v87 = object_getClass(a1);
      if (class_isMetaClass(v87))
      {
        v88 = 43;
      }

      else
      {
        v88 = 45;
      }

      v89 = object_getClassName(a1);
      v90 = sel_getName("_getISDInfo");
      *buf = 67109890;
      *&buf[4] = v88;
      *v694 = 2082;
      *&v694[2] = v89;
      *&v694[10] = 2082;
      *&v694[12] = v90;
      *&v694[20] = 1024;
      *&v694[22] = 324;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get update info", buf, 0x22u);
    }

    v6 = v626;
LABEL_86:

    v96 = v21;
    v33 = v96;
    v5 = v623;
    goto LABEL_87;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v37 = NFLogGetLogger();
  if (v37)
  {
    v38 = v37;
    v39 = object_getClass(a1);
    v40 = class_isMetaClass(v39);
    v41 = object_getClassName(a1);
    v590 = sel_getName("_getISDInfo");
    v42 = 45;
    if (v40)
    {
      v42 = 43;
    }

    v38(3, "%c[%{public}s %{public}s]:%i Failed to select ISD", v42, v41, v590, 290);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v43 = object_getClass(a1);
    if (class_isMetaClass(v43))
    {
      v44 = 43;
    }

    else
    {
      v44 = 45;
    }

    *buf = 67109890;
    *&buf[4] = v44;
    *v694 = 2082;
    *&v694[2] = object_getClassName(a1);
    *&v694[10] = 2082;
    *&v694[12] = sel_getName("_getISDInfo");
    *&v694[20] = 1024;
    *&v694[22] = 290;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select ISD", buf, 0x22u);
  }

  v33 = 0;
LABEL_87:

  if (v33)
  {
    [v6 addEntriesFromDictionary:v33];
  }

  v97 = objc_opt_new();
  v98 = [[NSData alloc] initWithBytes:&unk_10029781C length:12];
  v99 = sub_100158A6C(a1, v98, 0);

  v622 = v33;
  if ([v99 status] == 26277)
  {
    [v97 setObject:&__kCFBooleanTrue forKey:@"restrictedMode"];
LABEL_114:
    v121 = v97;
    goto LABEL_115;
  }

  if ([v99 status] == 36864)
  {
    LODWORD(v690) = 0;
    memset(v689, 0, sizeof(v689));
    if (sub_100092D68(a1, v689))
    {
      *&v670 = @"persistentMemory";
      v100 = [NSNumber numberWithUnsignedInt:*v689];
      *buf = v100;
      *(&v670 + 1) = @"clearOnResetMemory";
      v659 = [NSNumber numberWithUnsignedInt:*&v689[4]];
      *v694 = v659;
      *&v671 = @"clearOnDeselectMemory";
      v654 = [NSNumber numberWithUnsignedInt:*&v689[8]];
      *&v694[8] = v654;
      *(&v671 + 1) = @"availableIndicies";
      v645 = [NSNumber numberWithUnsignedInt:*&v689[12]];
      *&v694[16] = v645;
      *&v672 = @"totalNumberOfIndicies";
      v641 = [NSNumber numberWithUnsignedInt:*&v689[16]];
      *&v694[24] = v641;
      *(&v672 + 1) = @"availablePersistent";
      v636 = [NSNumber numberWithUnsignedInt:*&v689[20]];
      v695 = v636;
      *&v673 = @"availableTransienteUICC";
      v633 = [NSNumber numberWithUnsignedInt:*&v689[24]];
      v696 = v633;
      *(&v673 + 1) = @"reservedClearOnDelect";
      v101 = [NSNumber numberWithUnsignedInt:*&v689[28]];
      v697 = v101;
      v674 = @"maximumMappedClearOnDeselect";
      v102 = [NSNumber numberWithUnsignedInt:*&v689[32]];
      v698 = v102;
      v675 = @"reservedTransientOSUpdate";
      v103 = [NSNumber numberWithUnsignedInt:*&v689[36]];
      v699 = v103;
      v676 = @"reservedPersistentOSUpdate";
      v104 = [NSNumber numberWithUnsignedInt:*&v689[40]];
      v700 = v104;
      v677 = @"transientCommonPool";
      v105 = [NSNumber numberWithUnsignedInt:*&v689[44]];
      v701 = v105;
      v678 = @"persistentCommonPool";
      v106 = [NSNumber numberWithUnsignedInt:v690];
      v702 = v106;
      v107 = [NSDictionary dictionaryWithObjects:buf forKeys:&v670 count:13];
      [v97 setObject:v107 forKey:@"availableMemory"];

      a1 = v652;
      v33 = v622;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v122 = NFLogGetLogger();
      if (v122)
      {
        v123 = v122;
        v124 = object_getClass(a1);
        v125 = class_isMetaClass(v124);
        v126 = object_getClassName(a1);
        v596 = sel_getName("_getCASDInfo");
        v127 = 45;
        if (v125)
        {
          v127 = 43;
        }

        v578 = v126;
        v33 = v622;
        v123(4, "%c[%{public}s %{public}s]:%i Failed to get memory info", v127, v578, v596, 415);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v100 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        v128 = object_getClass(a1);
        if (class_isMetaClass(v128))
        {
          v129 = 43;
        }

        else
        {
          v129 = 45;
        }

        v130 = object_getClassName(a1);
        v131 = sel_getName("_getCASDInfo");
        *buf = 67109890;
        *&buf[4] = v129;
        v33 = v622;
        *v694 = 2082;
        *&v694[2] = v130;
        *&v694[10] = 2082;
        *&v694[12] = v131;
        *&v694[20] = 1024;
        *&v694[22] = 415;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get memory info", buf, 0x22u);
      }
    }

    v5 = v623;

    goto LABEL_114;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v108 = NFLogGetLogger();
  if (v108)
  {
    v109 = v108;
    v110 = object_getClass(a1);
    v111 = class_isMetaClass(v110);
    v112 = object_getClassName(a1);
    v113 = sel_getName("_getCASDInfo");
    v612 = [v99 status];
    v577 = v112;
    v595 = v113;
    v33 = v622;
    v5 = v623;
    v114 = 45;
    if (v111)
    {
      v114 = 43;
    }

    v109(3, "%c[%{public}s %{public}s]:%i Failed to select CASD: 0x%04x", v114, v577, v595, 408, v612);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v115 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
  {
    v116 = object_getClass(a1);
    if (class_isMetaClass(v116))
    {
      v117 = 43;
    }

    else
    {
      v117 = 45;
    }

    v118 = object_getClassName(a1);
    v119 = sel_getName("_getCASDInfo");
    v120 = [v99 status];
    *buf = 67110146;
    *&buf[4] = v117;
    v33 = v622;
    *v694 = 2082;
    *&v694[2] = v118;
    *&v694[10] = 2082;
    *&v694[12] = v119;
    *&v694[20] = 1024;
    *&v694[22] = 408;
    *&v694[26] = 1024;
    *&v694[28] = v120;
    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CASD: 0x%04x", buf, 0x28u);
  }

  v121 = 0;
LABEL_115:

  if (v121)
  {
    [v626 addEntriesFromDictionary:v121];
  }

  v624 = [v626 valueForKey:@"restrictedMode"];

  v132 = [a1 handle];
  v133 = [v132 info];
  v134 = [v133 deviceType];

  v620 = v121;
  if (v134 > 99)
  {
    if (v134 > 199)
    {
      v6 = v626;
      if (v134 == 210)
      {
        v135 = 8;
      }

      else
      {
        if (v134 != 200)
        {
          goto LABEL_178;
        }

        v135 = 7;
      }
    }

    else
    {
      v6 = v626;
      if (v134 == 100)
      {
        v135 = 6;
      }

      else
      {
        if (v134 != 145)
        {
          goto LABEL_178;
        }

        v135 = 15;
      }
    }
  }

  else if (v134 > 54)
  {
    v6 = v626;
    if (v134 == 55)
    {
      v135 = 10;
    }

    else
    {
      if (v134 != 56)
      {
        goto LABEL_178;
      }

      v135 = 13;
    }
  }

  else
  {
    v6 = v626;
    if (v134 != 44)
    {
      if (v134 == 54)
      {
        v135 = 11;
        goto LABEL_136;
      }

LABEL_178:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v197 = NFLogGetLogger();
      if (v197)
      {
        v198 = v197;
        v199 = object_getClass(a1);
        v200 = class_isMetaClass(v199);
        v201 = object_getClassName(a1);
        v600 = sel_getName("_getTSMHardwareType");
        v403 = !v200;
        v6 = v626;
        v202 = 45;
        if (!v403)
        {
          v202 = 43;
        }

        v582 = v201;
        v121 = v620;
        v198(3, "%c[%{public}s %{public}s]:%i Critical error : unsupported hardware!", v202, v582, v600, 83);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v203 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
      {
        v204 = object_getClass(a1);
        if (class_isMetaClass(v204))
        {
          v205 = 43;
        }

        else
        {
          v205 = 45;
        }

        v206 = object_getClassName(a1);
        v207 = sel_getName("_getTSMHardwareType");
        *buf = 67109890;
        *&buf[4] = v205;
        v121 = v620;
        *v694 = 2082;
        *&v694[2] = v206;
        v6 = v626;
        *&v694[10] = 2082;
        *&v694[12] = v207;
        *&v694[20] = 1024;
        *&v694[22] = 83;
        _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Critical error : unsupported hardware!", buf, 0x22u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v208 = NFLogGetLogger();
      if (v208)
      {
        v209 = v208;
        v210 = object_getClass(a1);
        v211 = class_isMetaClass(v210);
        v212 = object_getClassName(a1);
        v601 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
        v213 = 45;
        if (v211)
        {
          v213 = 43;
        }

        v583 = v212;
        v6 = v626;
        v209(3, "%c[%{public}s %{public}s]:%i Unknown hardware platform", v213, v583, v601, 143);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v214 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
      {
        v215 = object_getClass(a1);
        if (class_isMetaClass(v215))
        {
          v216 = 43;
        }

        else
        {
          v216 = 45;
        }

        v217 = object_getClassName(a1);
        v218 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
        *buf = 67109890;
        *&buf[4] = v216;
        v6 = v626;
        *v694 = 2082;
        *&v694[2] = v217;
        *&v694[10] = 2082;
        *&v694[12] = v218;
        *&v694[20] = 1024;
        *&v694[22] = 143;
        _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown hardware platform", buf, 0x22u);
      }

      v140 = 0;
      goto LABEL_408;
    }

    v135 = 9;
  }

LABEL_136:
  v136 = [NSNumber numberWithUnsignedInteger:v135];
  [v6 setObject:v136 forKey:@"hardwareType"];

  if (!v624)
  {
    if (sub_10018AF80(a1))
    {
      v646 = sub_10018B0A0(a1, a3);
      v141 = [[NSData alloc] initWithBytes:&unk_100297922 length:8];
      *&v670 = v141;
      v142 = [[NSData alloc] initWithBytes:&unk_10029792A length:9];
      *(&v670 + 1) = v142;
      v143 = [[NSData alloc] initWithBytes:&unk_100297933 length:12];
      *&v671 = v143;
      v144 = [[NSData alloc] initWithBytes:&unk_10029793F length:14];
      *(&v671 + 1) = v144;
      v145 = [[NSData alloc] initWithBytes:&unk_10029794D length:8];
      *&v672 = v145;
      v146 = [[NSData alloc] initWithBytes:&unk_100297955 length:10];
      *(&v672 + 1) = v146;
      v147 = [[NSData alloc] initWithBytes:&unk_10029795F length:12];
      *&v673 = v147;
      v148 = [NSArray arrayWithObjects:&v670 count:7];
      v149 = [NSMutableArray arrayWithArray:v148];

      if (NFIsInternalBuild())
      {
        v150 = [[NSUserDefaults alloc] initWithSuiteName:@"nfcd"];
        v151 = [v150 BOOLForKey:@"UnhideFTA"];

        if (v151)
        {
          v152 = [[NSData alloc] initWithBytes:&unk_10029793F length:14];
          [v149 removeObject:v152];
        }
      }

      v153 = [[NSData alloc] initWithBytes:&unk_10029796B length:13];
      *v681 = v153;
      v154 = [[NSData alloc] initWithBytes:&unk_100297978 length:12];
      *v682 = v154;
      v155 = [[NSData alloc] initWithBytes:&unk_100297984 length:15];
      *&v682[8] = v155;
      v156 = [NSArray arrayWithObjects:v681 count:3];

      *v689 = 0;
      *&v689[8] = v689;
      *&v689[16] = 0x3032000000;
      *&v689[24] = sub_100006AEC;
      *&v689[32] = sub_10018E310;
      *&v689[40] = objc_opt_new();
      *buf = _NSConcreteStackBlock;
      *v694 = 3221225472;
      *&v694[8] = sub_10018FB14;
      *&v694[16] = &unk_10031AAF0;
      a1 = v652;
      *&v694[24] = v652;
      v698 = "getStatusProprietaryPackagesWithFiltering:";
      LOBYTE(v699) = a3;
      v157 = v156;
      v695 = v157;
      v158 = v149;
      v696 = v158;
      v697 = v689;
      v159 = sub_10018EE10(v652, 16, &unk_10029791E, 4uLL, buf);
      v5 = v623;
      if (v159)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v160 = NFLogGetLogger();
        v140 = v646;
        if (v160)
        {
          v161 = v160;
          v162 = object_getClass(v652);
          v163 = class_isMetaClass(v162);
          v579 = object_getClassName(v652);
          v597 = sel_getName("getStatusProprietaryPackagesWithFiltering:");
          v164 = 45;
          if (v163)
          {
            v164 = 43;
          }

          v5 = v623;
          v161(3, "%c[%{public}s %{public}s]:%i Failed to call proprietary get status %{public}@", v164, v579, v597, 1084, v159);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v165 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
        {
          v166 = object_getClass(v652);
          if (class_isMetaClass(v166))
          {
            v167 = 43;
          }

          else
          {
            v167 = 45;
          }

          v168 = object_getClassName(v652);
          v169 = sel_getName("getStatusProprietaryPackagesWithFiltering:");
          *md = 67110146;
          *&md[4] = v167;
          *&md[8] = 2082;
          *&md[10] = v168;
          *&md[18] = 2082;
          *&md[20] = v169;
          *&md[28] = 1024;
          *&md[30] = 1084;
          *&md[34] = 2114;
          *&md[36] = v159;
          _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to call proprietary get status %{public}@", md, 0x2Cu);
        }

        v170 = 0;
      }

      else
      {
        v692[0] = @"packages";
        *md = *(*&v689[8] + 40);
        v170 = [NSDictionary dictionaryWithObjects:md forKeys:v692 count:1];
        v140 = v646;
      }

      _Block_object_dispose(v689, 8);
      v219 = [v140 objectForKeyedSubscript:@"orphanedSSDs"];
      v663[0] = _NSConcreteStackBlock;
      v663[1] = 3221225472;
      v663[2] = sub_10018BA74;
      v663[3] = &unk_10031AA78;
      v220 = v170;
      v664 = v220;
      v221 = [NSPredicate predicateWithBlock:v663];
      [v219 filterUsingPredicate:v221];

      v222 = v626;
      if (v140)
      {
        [v626 addEntriesFromDictionary:v140];
      }

      v33 = v622;
      if (v220)
      {
        [v626 addEntriesFromDictionary:v220];
      }

      goto LABEL_297;
    }

    v665 = 0;
    v182 = sub_1001599F4(a1, &v665);
    v183 = v665;
    v184 = RBSProcessMonitor_ptr;
    if (v183)
    {
      v185 = v183;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v186 = NFLogGetLogger();
      if (v186)
      {
        v187 = v186;
        v188 = object_getClass(a1);
        v189 = class_isMetaClass(v188);
        v581 = object_getClassName(a1);
        v599 = sel_getName("_getCRSInfoWithFiltering:");
        v403 = !v189;
        v6 = v626;
        v190 = 45;
        if (!v403)
        {
          v190 = 43;
        }

        v187(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v190, v581, v599, 443, v185);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v191 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
      {
        v192 = object_getClass(a1);
        if (class_isMetaClass(v192))
        {
          v193 = 43;
        }

        else
        {
          v193 = 45;
        }

        v194 = object_getClassName(a1);
        v195 = sel_getName("_getCRSInfoWithFiltering:");
        *v681 = 67110146;
        *&v681[4] = v193;
        *v682 = 2082;
        *&v682[2] = v194;
        v6 = v626;
        *&v682[10] = 2082;
        *&v682[12] = v195;
        v683 = 1024;
        v684 = 443;
        v685 = 2114;
        v686 = v185;
        _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v681, 0x2Cu);
      }

      v196 = [v185 code];
      v184 = RBSProcessMonitor_ptr;
      if (v196 != 24)
      {
        v140 = 0;
LABEL_287:
        v333 = v184[61];
        v334 = objc_opt_new();
        v335 = [[NSData alloc] initWithBytes:&unk_10029788E length:12];
        v336 = sub_100158A6C(a1, v335, 0);

        if ([v336 status] == 36864)
        {
          v337 = [[NSData alloc] initWithBytes:&unk_10029788E length:12];
          v338 = [v337 NF_asHexString];
          [v334 addObject:v338];
        }

        v339 = [[NSData alloc] initWithBytes:&unk_10029789A length:12];
        v340 = sub_100158A6C(a1, v339, 0);

        if ([v340 status] == 36864)
        {
          v341 = [[NSData alloc] initWithBytes:&unk_10029789A length:12];
          v342 = [v341 NF_asHexString];
          [v334 addObject:v342];
        }

        if ([v334 count])
        {
          *&v670 = @"VASDs";
          *buf = v334;
          v343 = [NSDictionary dictionaryWithObjects:buf forKeys:&v670 count:1];
        }

        else
        {
          v343 = 0;
        }

        if (v343)
        {
          [v626 addEntriesFromDictionary:v343];
        }

        v222 = v626;
LABEL_297:
        if (v619 >= 4)
        {
          v344 = [v5 objectForKeyedSubscript:@"whitelistedInstances"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v344 count])
          {
            v345 = [v344 objectAtIndexedSubscript:0];
            if (v345)
            {
              v346 = [v344 objectAtIndexedSubscript:0];
            }

            else
            {
              v346 = 0;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v357 = sub_10018BBC4(a1, v140, v346);
              if (v357)
              {
                [v626 setObject:v357 forKeyedSubscript:@"protocolV4Containers"];
              }

              v222 = v626;
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v358 = NFLogGetLogger();
              if (v358)
              {
                v359 = v358;
                v360 = object_getClass(a1);
                v361 = class_isMetaClass(v360);
                v362 = object_getClassName(a1);
                v604 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
                v363 = 45;
                if (v361)
                {
                  v363 = 43;
                }

                v359(3, "%c[%{public}s %{public}s]:%i Unexpected type for allow listed AID.", v363, v362, v604, 203);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v364 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v364, OS_LOG_TYPE_ERROR))
              {
                v365 = object_getClass(a1);
                if (class_isMetaClass(v365))
                {
                  v366 = 43;
                }

                else
                {
                  v366 = 45;
                }

                v367 = object_getClassName(a1);
                v368 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
                *buf = 67109890;
                *&buf[4] = v366;
                *v694 = 2082;
                *&v694[2] = v367;
                *&v694[10] = 2082;
                *&v694[12] = v368;
                *&v694[20] = 1024;
                *&v694[22] = 203;
                _os_log_impl(&_mh_execute_header, v364, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected type for allow listed AID.", buf, 0x22u);
              }

              v222 = v626;
              v33 = v622;
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v347 = NFLogGetLogger();
            if (v347)
            {
              v348 = v347;
              v349 = object_getClass(a1);
              v350 = class_isMetaClass(v349);
              v351 = object_getClassName(a1);
              v603 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
              v403 = !v350;
              v222 = v626;
              v352 = 45;
              if (!v403)
              {
                v352 = 43;
              }

              v348(4, "%c[%{public}s %{public}s]:%i No whitelisted AID found. Will not populate the V4 container!", v352, v351, v603, 207);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v346 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v346, OS_LOG_TYPE_ERROR))
            {
              v353 = object_getClass(a1);
              if (class_isMetaClass(v353))
              {
                v354 = 43;
              }

              else
              {
                v354 = 45;
              }

              v355 = object_getClassName(a1);
              v356 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
              *buf = 67109890;
              *&buf[4] = v354;
              *v694 = 2082;
              *&v694[2] = v355;
              v222 = v626;
              *&v694[10] = 2082;
              *&v694[12] = v356;
              *&v694[20] = 1024;
              *&v694[22] = 207;
              _os_log_impl(&_mh_execute_header, v346, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No whitelisted AID found. Will not populate the V4 container!", buf, 0x22u);
            }
          }
        }

        v369 = [[NSData alloc] initWithBytes:&unk_100297814 length:8];
        v370 = sub_1001595DC(a1, v369, 0);

        if (v370)
        {
          v371 = sub_10018D288(a1, 1);
          if (v371)
          {
            [v222 addEntriesFromDictionary:v371];
          }

          v638 = v371;
          v372 = v222;
          v373 = objc_autoreleasePoolPush();
          v374 = [v372 objectForKey:@"casdCertificate"];
          v375 = [v374 objectForKey:@"RSA"];
          v376 = [v374 objectForKey:@"ECDSA"];
          v635 = v372;
          v377 = [v372 objectForKey:@"isdSequenceCounter"];
          v378 = objc_opt_new();
          if (v376 && v375)
          {
            v379 = [NSData NF_dataWithHexString:v376];
            [v378 appendData:v379];

            v380 = [NSData NF_dataWithHexString:v375];
            [v378 appendData:v380];
          }

          v381 = [NSData NF_dataWithHexString:v377];
          [v378 appendData:v381];

          CC_SHA256([v378 bytes], objc_msgSend(v378, "length"), md);
          objc_autoreleasePoolPop(v373);
          v632 = [[NSData alloc] initWithBytes:md length:32];
          v382 = [NFTLV TLVWithTag:40759 value:?];
          *v681 = 836706527;
          v383 = [[NSData alloc] initWithBytes:v681 length:4];
          v384 = [NFTLV TLVWithTag:92 value:v383];

          v385 = objc_opt_new();
          obja = v382;
          v386 = [v382 asData];
          [v385 appendData:v386];

          v387 = [v384 asData];
          [v385 appendData:v387];

          v629 = v385;
          v388 = sub_100158A28(a1, 128, 257, v385, 0);
          v643 = v388;
          if ([v388 status] == 36864)
          {
            v627 = v384;
            v389 = objc_opt_new();
            v390 = [v388 response];
            v391 = [v390 NF_asHexString];
            [v389 setObject:v391 forKey:@"SignedResponse"];

            v392 = [v388 response];
            v393 = [NFTLV TLVsWithData:v392];

            v673 = 0u;
            v671 = 0u;
            v672 = 0u;
            v670 = 0u;
            v394 = v393;
            v395 = v389;
            v396 = v394;
            v397 = [v394 countByEnumeratingWithState:&v670 objects:buf count:16];
            if (!v397)
            {
              goto LABEL_361;
            }

            v398 = v397;
            v399 = *v671;
            v657 = v395;
            while (1)
            {
              for (i = 0; i != v398; i = i + 1)
              {
                if (*v671 != v399)
                {
                  objc_enumerationMutation(v396);
                }

                v401 = *(*(&v670 + 1) + 8 * i);
                v402 = [v401 tag];
                if (v402 > 57119)
                {
                  if (v402 == 57137)
                  {
                    v419 = [v401 value];
                    v406 = [v419 NF_asHexString];

                    v420 = [v406 substringWithRange:0, 4];
                    [v395 setObject:v420 forKey:@"jsblSequenceCounter"];
                  }

                  else if (v402 == 57120)
                  {
                    v404 = [NSString alloc];
                    v405 = [v401 value];
                    v406 = [v404 initWithData:v405 encoding:4];

                    [v395 setObject:v406 forKey:@"kPlatformId"];
                  }

                  else
                  {
LABEL_348:
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v407 = NFLogGetLogger();
                    if (v407)
                    {
                      v408 = v407;
                      v409 = object_getClass(a1);
                      v410 = class_isMetaClass(v409);
                      v411 = object_getClassName(a1);
                      v412 = sel_getName("_generateCASDSignatureComet:");
                      v613 = [v401 tag];
                      v584 = v411;
                      v605 = v412;
                      a1 = v652;
                      v395 = v657;
                      v413 = 45;
                      if (v410)
                      {
                        v413 = 43;
                      }

                      v408(3, "%c[%{public}s %{public}s]:%i Unexpected tag found, %d", v413, v584, v605, 673, v613);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v406 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v406, OS_LOG_TYPE_ERROR))
                    {
                      v414 = object_getClass(a1);
                      if (class_isMetaClass(v414))
                      {
                        v415 = 43;
                      }

                      else
                      {
                        v415 = 45;
                      }

                      v416 = object_getClassName(v652);
                      v417 = sel_getName("_generateCASDSignatureComet:");
                      v418 = [v401 tag];
                      *v689 = 67110146;
                      *&v689[4] = v415;
                      *&v689[8] = 2082;
                      *&v689[10] = v416;
                      a1 = v652;
                      v395 = v657;
                      *&v689[18] = 2082;
                      *&v689[20] = v417;
                      *&v689[28] = 1024;
                      *&v689[30] = 673;
                      *&v689[34] = 1024;
                      *&v689[36] = v418;
                      _os_log_impl(&_mh_execute_header, v406, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag found, %d", v689, 0x28u);
                    }
                  }

                  continue;
                }

                v403 = v402 == 133 || v402 == 24375;
                if (!v403)
                {
                  goto LABEL_348;
                }
              }

              v398 = [v396 countByEnumeratingWithState:&v670 objects:buf count:16];
              if (!v398)
              {
LABEL_361:

                v33 = v622;
                v5 = v623;
                v421 = v395;
                v422 = v632;
                v423 = v635;
                v424 = obja;
                v384 = v627;
                goto LABEL_381;
              }
            }
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v436 = NFLogGetLogger();
          v5 = v623;
          if (v436)
          {
            v437 = v436;
            v438 = object_getClass(a1);
            v439 = class_isMetaClass(v438);
            v440 = object_getClassName(a1);
            v441 = sel_getName("_generateCASDSignatureComet:");
            v614 = [v388 status];
            v442 = 45;
            if (v439)
            {
              v442 = 43;
            }

            v437(3, "%c[%{public}s %{public}s]:%i Unable to obtain Authenticated GET DATA 0x%x", v442, v440, v441, 641, v614);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v396 = NFSharedLogGetLogger();
          v33 = v622;
          if (os_log_type_enabled(v396, OS_LOG_TYPE_ERROR))
          {
            v443 = object_getClass(a1);
            if (class_isMetaClass(v443))
            {
              v444 = 43;
            }

            else
            {
              v444 = 45;
            }

            v445 = object_getClassName(a1);
            v446 = sel_getName("_generateCASDSignatureComet:");
            v447 = [v643 status];
            *buf = 67110146;
            *&buf[4] = v444;
            *v694 = 2082;
            *&v694[2] = v445;
            *&v694[10] = 2082;
            *&v694[12] = v446;
            *&v694[20] = 1024;
            *&v694[22] = 641;
            *&v694[26] = 1024;
            *&v694[28] = v447;
            _os_log_impl(&_mh_execute_header, v396, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to obtain Authenticated GET DATA 0x%x", buf, 0x28u);
          }

          v421 = 0;
          v422 = v632;
          v423 = v635;
          v424 = obja;
LABEL_381:

          if (v421)
          {
            v666 = @"CASDSignedInfo";
            v667 = v421;
            v448 = [NSDictionary dictionaryWithObjects:&v667 forKeys:&v666 count:1];
            [v423 addEntriesFromDictionary:v448];
          }

          v431 = v638;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v425 = NFLogGetLogger();
          if (v425)
          {
            v426 = v425;
            v427 = object_getClass(a1);
            v428 = class_isMetaClass(v427);
            v429 = object_getClassName(a1);
            v606 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
            v430 = 45;
            if (v428)
            {
              v430 = 43;
            }

            v426(3, "%c[%{public}s %{public}s]:%i Failed to select ISD", v430, v429, v606, 213);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v431 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v431, OS_LOG_TYPE_ERROR))
          {
            v432 = object_getClass(a1);
            if (class_isMetaClass(v432))
            {
              v433 = 43;
            }

            else
            {
              v433 = 45;
            }

            v434 = object_getClassName(a1);
            v435 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
            *buf = 67109890;
            *&buf[4] = v433;
            *v694 = 2082;
            *&v694[2] = v434;
            *&v694[10] = 2082;
            *&v694[12] = v435;
            *&v694[20] = 1024;
            *&v694[22] = 213;
            _os_log_impl(&_mh_execute_header, v431, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select ISD", buf, 0x22u);
          }
        }

        v449 = [a1 handle];
        v450 = [v449 info];
        v451 = [v450 migrationState];

        if ((v451 - 1) > 5)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v453 = NFLogGetLogger();
          if (v453)
          {
            v454 = v453;
            v455 = object_getClass(a1);
            v456 = class_isMetaClass(v455);
            v457 = object_getClassName(a1);
            v607 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
            v458 = 45;
            if (v456)
            {
              v458 = 43;
            }

            v454(3, "%c[%{public}s %{public}s]:%i Unexpected AM status", v458, v457, v607, 244);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v459 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v459, OS_LOG_TYPE_ERROR))
          {
            v460 = object_getClass(a1);
            if (class_isMetaClass(v460))
            {
              v461 = 43;
            }

            else
            {
              v461 = 45;
            }

            v462 = object_getClassName(a1);
            v463 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
            *buf = 67109890;
            *&buf[4] = v461;
            *v694 = 2082;
            *&v694[2] = v462;
            *&v694[10] = 2082;
            *&v694[12] = v463;
            *&v694[20] = 1024;
            *&v694[22] = 244;
            _os_log_impl(&_mh_execute_header, v459, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected AM status", buf, 0x22u);
          }

          v6 = v626;
        }

        else
        {
          v452 = [NSNumber numberWithInt:dword_1002979B0[(v451 - 1)]];
          v6 = v626;
          [v626 setObject:v452 forKey:@"amStatus"];
        }

        goto LABEL_396;
      }

      v140 = &off_100339A58;
    }

    else
    {
      v223 = objc_opt_new();
      v224 = [NFTLV TLVWithTag:79 value:0];
      v225 = [v224 asData];
      [v223 appendData:v225];

      v226 = [[NSData alloc] initWithBytes:&unk_100297828 length:12];
      v227 = [NFTLV TLVWithTag:92 value:v226];
      v228 = [v227 asData];
      [v223 appendData:v228];

      v618 = v223;
      v229 = sub_1000B3EA0(a1, v223, 0);
      if (v229)
      {
        v230 = objc_opt_new();
        v231 = [[NSData alloc] initWithBytes:&unk_100297834 length:12];
        v692[0] = v231;
        v232 = v229;
        v233 = [[NSData alloc] initWithBytes:&unk_100297840 length:9];
        v692[1] = v233;
        v234 = [[NSData alloc] initWithBytes:&unk_100297849 length:8];
        v692[2] = v234;
        v235 = [[NSData alloc] initWithBytes:&unk_100297851 length:14];
        v692[3] = v235;
        v236 = [[NSData alloc] initWithBytes:&unk_10029785F length:9];
        v692[4] = v236;
        v628 = [NSArray arrayWithObjects:v692 count:5];

        v237 = [[NSData alloc] initWithBytes:&unk_100297868 length:14];
        v691[0] = v237;
        v238 = [[NSData alloc] initWithBytes:&unk_100297876 length:12];
        v691[1] = v238;
        v239 = [[NSData alloc] initWithBytes:&unk_100297882 length:12];
        v691[2] = v239;
        v637 = [NSArray arrayWithObjects:v691 count:3];

        v690 = 0u;
        memset(v689, 0, sizeof(v689));
        v617 = v232;
        obj = v232;
        v240 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
        v647 = [obj countByEnumeratingWithState:v689 objects:buf count:16];
        if (v647)
        {
          v642 = **&v689[16];
          v634 = v230;
          do
          {
            v241 = 0;
            do
            {
              if (**&v689[16] != v642)
              {
                objc_enumerationMutation(obj);
              }

              v660 = v241;
              v242 = *(*&v689[8] + 8 * v241);
              if (!a3 || ([*(*&v689[8] + 8 * v241) identifierAsData], v243 = objc_claimAutoreleasedReturnValue(), v244 = objc_msgSend(v628, "containsObject:", v243), v243, (v244 & 1) == 0))
              {
                v245 = objc_opt_new();
                [v230 addObject:v245];
                v246 = [v242 identifier];
                [v245 setObject:v246 forKey:@"appletAid"];

                v247 = [v240[470] numberWithUnsignedInteger:{objc_msgSend(v242, "rawGPState")}];
                [v245 setObject:v247 forKey:@"lifeCycleState"];

                v248 = [v242 identifierAsData];
                v249 = [v637 containsObject:v248];

                if ((v249 & 1) == 0 && ([v242 isContainer] & 1) == 0 && (objc_msgSend(v242, "isProxy") & 1) == 0)
                {
                  v250 = [v242 discretionaryData];
                  v251 = [NFTLV TLVWithTag:204 fromData:v250];
                  v252 = [v251 value];

                  if (v252)
                  {
                    v253 = [v252 NF_asHexString];
                    [v245 setObject:v253 forKey:@"ssdAid"];

                    sub_10018DB1C(a1, v252, v245);
                  }

                  else
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v254 = NFLogGetLogger();
                    if (v254)
                    {
                      v255 = v254;
                      v256 = object_getClass(a1);
                      v655 = class_isMetaClass(v256);
                      v257 = object_getClassName(a1);
                      v258 = sel_getName("_getCRSInfoWithFiltering:");
                      v259 = [v242 identifier];
                      v260 = [v242 discretionaryData];
                      v261 = 45;
                      if (v655)
                      {
                        v261 = 43;
                      }

                      v255(4, "%c[%{public}s %{public}s]:%i Failed to get SSD ID %{public}@: %{public}@", v261, v257, v258, 516, v259, v260);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v262 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
                    {
                      v263 = object_getClass(a1);
                      if (class_isMetaClass(v263))
                      {
                        v264 = 43;
                      }

                      else
                      {
                        v264 = 45;
                      }

                      v265 = object_getClassName(v652);
                      v266 = sel_getName("_getCRSInfoWithFiltering:");
                      v267 = [v242 identifier];
                      v268 = [v242 discretionaryData];
                      *v681 = 67110402;
                      *&v681[4] = v264;
                      a1 = v652;
                      *v682 = 2082;
                      *&v682[2] = v265;
                      *&v682[10] = 2082;
                      *&v682[12] = v266;
                      v683 = 1024;
                      v684 = 516;
                      v685 = 2114;
                      v686 = v267;
                      v687 = 2114;
                      v688 = v268;
                      _os_log_impl(&_mh_execute_header, v262, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get SSD ID %{public}@: %{public}@", v681, 0x36u);
                    }
                  }

                  v240 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                }

                v269 = [v242 discretionaryData];
                v270 = [NFTLV TLVWithTag:254 fromData:v269];

                v656 = v270;
                if (v270)
                {
                  v680 = 0u;
                  memset(md, 0, sizeof(md));
                  v271 = [v270 children];
                  v272 = [v271 countByEnumeratingWithState:md objects:&v670 count:16];
                  if (v272)
                  {
                    v273 = v272;
                    v274 = **&md[16];
                    while (2)
                    {
                      for (j = 0; j != v273; j = j + 1)
                      {
                        if (**&md[16] != v274)
                        {
                          objc_enumerationMutation(v271);
                        }

                        v276 = *(*&md[8] + 8 * j);
                        if ([v276 tag] == 57152)
                        {
                          v277 = [v276 value];
                          v278 = [v277 length];

                          if (v278 == 2)
                          {
                            v292 = [v276 value];
                            v293 = [v292 NF_asHexString];
                            [v245 setObject:v293 forKey:@"extendedFunction"];

                            goto LABEL_248;
                          }
                        }
                      }

                      v273 = [v271 countByEnumeratingWithState:md objects:&v670 count:16];
                      if (v273)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_248:
                    a1 = v652;
                    v240 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                  }
                }

                else
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v279 = NFLogGetLogger();
                  if (v279)
                  {
                    v280 = v279;
                    v281 = object_getClass(a1);
                    v282 = class_isMetaClass(v281);
                    v283 = object_getClassName(a1);
                    v284 = sel_getName("_getCRSInfoWithFiltering:");
                    v285 = [v242 identifier];
                    v286 = 45;
                    if (v282)
                    {
                      v286 = 43;
                    }

                    v280(3, "%c[%{public}s %{public}s]:%i Failed to get extended function information for %{public}@", v286, v283, v284, 531, v285);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v271 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
                  {
                    v287 = object_getClass(a1);
                    if (class_isMetaClass(v287))
                    {
                      v288 = 43;
                    }

                    else
                    {
                      v288 = 45;
                    }

                    v289 = object_getClassName(a1);
                    v290 = sel_getName("_getCRSInfoWithFiltering:");
                    v291 = [v242 identifier];
                    *v681 = 67110146;
                    *&v681[4] = v288;
                    v240 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                    *v682 = 2082;
                    *&v682[2] = v289;
                    *&v682[10] = 2082;
                    *&v682[12] = v290;
                    v683 = 1024;
                    v684 = 531;
                    v685 = 2114;
                    v686 = v291;
                    _os_log_impl(&_mh_execute_header, v271, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get extended function information for %{public}@", v681, 0x2Cu);
                  }
                }

                v294 = [v242 discretionaryData];

                if (v294)
                {
                  v295 = [v242 discretionaryData];
                  v296 = [v295 NF_asHexString];
                  [v245 setObject:v296 forKey:@"discretionaryData"];
                }

                else
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v297 = NFLogGetLogger();
                  if (v297)
                  {
                    v298 = v297;
                    v299 = object_getClass(a1);
                    v300 = class_isMetaClass(v299);
                    v301 = object_getClassName(a1);
                    v302 = sel_getName("_getCRSInfoWithFiltering:");
                    v303 = [v242 identifier];
                    v304 = 45;
                    if (v300)
                    {
                      v304 = 43;
                    }

                    v298(3, "%c[%{public}s %{public}s]:%i nil discretionary data for %{public}@", v304, v301, v302, 538, v303);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v295 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v295, OS_LOG_TYPE_ERROR))
                  {
                    v305 = object_getClass(a1);
                    if (class_isMetaClass(v305))
                    {
                      v306 = 43;
                    }

                    else
                    {
                      v306 = 45;
                    }

                    v307 = object_getClassName(a1);
                    v308 = sel_getName("_getCRSInfoWithFiltering:");
                    v309 = [v242 identifier];
                    *v681 = 67110146;
                    *&v681[4] = v306;
                    v240 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                    *v682 = 2082;
                    *&v682[2] = v307;
                    *&v682[10] = 2082;
                    *&v682[12] = v308;
                    v683 = 1024;
                    v684 = 538;
                    v685 = 2114;
                    v686 = v309;
                    _os_log_impl(&_mh_execute_header, v295, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i nil discretionary data for %{public}@", v681, 0x2Cu);
                  }
                }

                v310 = [v242 groupHeadID];
                if (v310)
                {
                  [v245 setObject:v310 forKey:@"primaryContainer"];
                }

                v311 = [v242 groupMemberIDs];
                if (v311)
                {
                  [v245 setObject:v311 forKey:@"auxilaryContainers"];
                }

                v312 = [v240[470] numberWithBool:{objc_msgSend(v242, "isContainer")}];
                [v245 setObject:v312 forKey:@"containerInstance"];

                v313 = [v240[470] numberWithBool:{objc_msgSend(v242, "isProxy")}];
                [v245 setObject:v313 forKey:@"proxyInstance"];

                v314 = [v242 packageIdentifier];

                if (v314)
                {
                  v315 = [v242 packageIdentifier];
                  [v245 setObject:v315 forKey:@"packageAid"];
                }

                v316 = [v242 moduleIdentifier];

                if (v316)
                {
                  v317 = [v242 moduleIdentifier];
                  [v245 setObject:v317 forKey:@"moduleAid"];
                }

                v318 = [v242 multiSEGroupMemberIDs];
                v319 = [v318 count];

                if (v319)
                {
                  v320 = [v242 multiSEGroupMemberIDs];
                  [v245 setObject:v320 forKey:@"multiSEApplicationGroup"];
                }

                v230 = v634;
              }

              v241 = v660 + 1;
            }

            while (v660 + 1 != v647);
            v647 = [obj countByEnumeratingWithState:v689 objects:buf count:16];
          }

          while (v647);
        }

        v668 = @"containers";
        v669 = v230;
        v140 = [NSDictionary dictionaryWithObjects:&v669 forKeys:&v668 count:1];

        v33 = v622;
        v5 = v623;
        v6 = v626;
        v184 = RBSProcessMonitor_ptr;
        v229 = v617;
        v321 = v618;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v322 = NFLogGetLogger();
        if (v322)
        {
          v323 = v322;
          v324 = object_getClass(a1);
          v325 = class_isMetaClass(v324);
          v326 = object_getClassName(a1);
          v602 = sel_getName("_getCRSInfoWithFiltering:");
          v403 = !v325;
          v229 = 0;
          v327 = 45;
          if (!v403)
          {
            v327 = 43;
          }

          v323(3, "%c[%{public}s %{public}s]:%i Failed to get applications", v327, v326, v602, 472);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v230 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
        {
          v328 = object_getClass(a1);
          v329 = v229;
          if (class_isMetaClass(v328))
          {
            v330 = 43;
          }

          else
          {
            v330 = 45;
          }

          v331 = object_getClassName(a1);
          v332 = sel_getName("_getCRSInfoWithFiltering:");
          *v681 = 67109890;
          *&v681[4] = v330;
          v229 = v329;
          *v682 = 2082;
          *&v682[2] = v331;
          *&v682[10] = 2082;
          *&v682[12] = v332;
          v683 = 1024;
          v684 = 472;
          _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get applications", v681, 0x22u);
        }

        v140 = &off_100339A80;
        v6 = v626;
        v321 = v223;
      }

      if (!v140)
      {
        goto LABEL_287;
      }
    }

    [v6 addEntriesFromDictionary:v140];
    goto LABEL_287;
  }

  v137 = [[NSData alloc] initWithBytes:&unk_100297814 length:8];
  v138 = sub_1001595DC(a1, v137, 0);

  if ((v138 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v171 = NFLogGetLogger();
    if (v171)
    {
      v172 = v171;
      v173 = object_getClass(a1);
      v174 = class_isMetaClass(v173);
      v175 = object_getClassName(a1);
      v598 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
      v176 = 45;
      if (v174)
      {
        v176 = 43;
      }

      v580 = v175;
      v6 = v626;
      v172(3, "%c[%{public}s %{public}s]:%i Failed to select ISD", v176, v580, v598, 250);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v177 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
    {
      v178 = object_getClass(a1);
      if (class_isMetaClass(v178))
      {
        v179 = 43;
      }

      else
      {
        v179 = 45;
      }

      v180 = object_getClassName(a1);
      v181 = sel_getName("remoteAdminState:appletFiltering:stateInfo:");
      *buf = 67109890;
      *&buf[4] = v179;
      v6 = v626;
      *v694 = 2082;
      *&v694[2] = v180;
      *&v694[10] = 2082;
      *&v694[12] = v181;
      *&v694[20] = 1024;
      *&v694[22] = 250;
      _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select ISD", buf, 0x22u);
    }

    v140 = 0;
LABEL_396:
    v121 = v620;
    goto LABEL_397;
  }

  v139 = sub_10018D288(a1, 1);
  if (v139)
  {
    [v6 addEntriesFromDictionary:v139];
  }

  v140 = 0;
LABEL_397:
  if ([v6 count])
  {
    if (!v624)
    {
      v36 = 6;
      if (!v33 || !v121 || !v140)
      {
        goto LABEL_460;
      }

      goto LABEL_459;
    }

    v648 = v140;
    v662 = 0;
    v464 = sub_10009D0D0(a1, &v662);
    v465 = v662;
    v466 = objc_opt_new();
    v467 = v466;
    if (v464)
    {
      [v466 setObject:v464 forKey:@"attackLogDictionary"];
    }

    v468 = objc_opt_new();
    v469 = [a1 handle];
    v470 = [v469 driver];
    v471 = sub_100018244(v470);

    if (!v471)
    {
      v494 = v468;
LABEL_456:

      v6 = v626;
      if (v468)
      {
        [v467 addEntriesFromDictionary:v468];
      }

      [v626 setObject:v467 forKey:@"restrictedMode"];

      v140 = v648;
LABEL_459:
      v562 = v6;
      v36 = 0;
      *a4 = v6;
      goto LABEL_460;
    }

    v472 = [[NSData alloc] initWithBytes:*v471 length:v471[1]];
    NFDataRelease();
    v473 = [NFTLV TLVWithData:v472];
    v658 = v472;
    if ([v473 tag] != 48)
    {
      v651 = v464;
      v495 = v469;
      v496 = v473;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v497 = NFLogGetLogger();
      if (v497)
      {
        v498 = v497;
        v499 = object_getClass(v652);
        v500 = v465;
        v501 = class_isMetaClass(v499);
        v502 = object_getClassName(v652);
        v503 = sel_getName("_getUnlockRequestInfoFrom:");
        v615 = [v496 tag];
        v585 = v502;
        v403 = !v501;
        v465 = v500;
        v504 = 45;
        if (!v403)
        {
          v504 = 43;
        }

        v5 = v623;
        v498(3, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", v504, v585, v503, 703, v615);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v505 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v505, OS_LOG_TYPE_ERROR))
      {
        v506 = object_getClass(v652);
        if (class_isMetaClass(v506))
        {
          v507 = 43;
        }

        else
        {
          v507 = 45;
        }

        v508 = object_getClassName(v652);
        v509 = v465;
        v510 = sel_getName("_getUnlockRequestInfoFrom:");
        v511 = [v496 tag];
        *buf = 67110146;
        *&buf[4] = v507;
        *v694 = 2082;
        *&v694[2] = v508;
        *&v694[10] = 2082;
        *&v694[12] = v510;
        v465 = v509;
        *&v694[20] = 1024;
        *&v694[22] = 703;
        *&v694[26] = 1024;
        *&v694[28] = v511;
        _os_log_impl(&_mh_execute_header, v505, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", buf, 0x28u);
      }

      v512 = v468;
      v33 = v622;
      v121 = v620;
      v473 = v496;
      v469 = v495;
      v464 = v651;
      goto LABEL_455;
    }

    v650 = v467;
    v474 = [v473 children];
    v644 = v474;
    if ([v474 count] == 5)
    {
      v475 = [v474 objectAtIndexedSubscript:0];
      v476 = [v475 tag];

      if (v476 == 2)
      {
        v477 = [v474 objectAtIndexedSubscript:0];
        v478 = [v477 valueAsUnsignedLong];

        if (v478 == 2)
        {
          v639 = v465;
          v479 = [v474 objectAtIndexedSubscript:4];
          v480 = [v479 value];
          v481 = [v480 length];

          if (v481 == 24)
          {
            v482 = [v474 objectAtIndexedSubscript:1];
            v483 = [v482 value];
            v661 = [v483 NF_asHexString];

            v484 = [v474 objectAtIndexedSubscript:2];
            v485 = [v484 value];
            v653 = [v485 NF_asHexString];

            v486 = [v474 objectAtIndexedSubscript:3];
            v487 = [v486 value];
            v488 = [v487 NF_asHexString];

            v489 = [v474 objectAtIndexedSubscript:4];
            v490 = [v489 value];
            v491 = [v490 NF_asHexString];

            v5 = v623;
            v492 = [NSNumber numberWithUnsignedInt:2];
            [v468 setObject:v492 forKey:@"version"];

            [v468 setObject:v661 forKey:@"nonce"];
            [v468 setObject:v653 forKey:@"unlockKeyID"];
            [v468 setObject:v488 forKey:@"kPlatformId"];
            [v468 setObject:v491 forKey:@"SEID"];
            v493 = v468;
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v564 = NFLogGetLogger();
            if (v564)
            {
              v565 = v564;
              v566 = object_getClass(v652);
              v567 = class_isMetaClass(v566);
              v568 = object_getClassName(v652);
              v611 = sel_getName("_getUnlockRequestInfoFrom:");
              v569 = 45;
              if (v567)
              {
                v569 = 43;
              }

              v565(3, "%c[%{public}s %{public}s]:%i Unexpected data structure", v569, v568, v611, 745);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v570 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v570, OS_LOG_TYPE_ERROR))
            {
              v571 = object_getClass(v652);
              if (class_isMetaClass(v571))
              {
                v572 = 43;
              }

              else
              {
                v572 = 45;
              }

              v573 = object_getClassName(v652);
              v574 = sel_getName("_getUnlockRequestInfoFrom:");
              *buf = 67109890;
              *&buf[4] = v572;
              *v694 = 2082;
              *&v694[2] = v573;
              *&v694[10] = 2082;
              *&v694[12] = v574;
              *&v694[20] = 1024;
              *&v694[22] = 745;
              _os_log_impl(&_mh_execute_header, v570, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected data structure", buf, 0x22u);
            }

            v575 = v468;
          }

          v33 = v622;
          v465 = v639;
          goto LABEL_454;
        }

        v640 = v478;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v550 = NFLogGetLogger();
        if (v550)
        {
          v551 = v550;
          v552 = object_getClass(v652);
          v553 = class_isMetaClass(v552);
          v588 = object_getClassName(v652);
          v610 = sel_getName("_getUnlockRequestInfoFrom:");
          v554 = 45;
          if (v553)
          {
            v554 = 43;
          }

          v551(3, "%c[%{public}s %{public}s]:%i Unsupported version: 0x%x", v554, v588, v610, 721, v640);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v523 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v523, OS_LOG_TYPE_ERROR))
        {
LABEL_453:

          v561 = v468;
          v33 = v622;
LABEL_454:

          v121 = v620;
          v467 = v650;
LABEL_455:

          goto LABEL_456;
        }

        v555 = object_getClass(v652);
        v556 = v473;
        v557 = v465;
        if (class_isMetaClass(v555))
        {
          v558 = 43;
        }

        else
        {
          v558 = 45;
        }

        v559 = object_getClassName(v652);
        v560 = sel_getName("_getUnlockRequestInfoFrom:");
        *buf = 67110146;
        *&buf[4] = v558;
        v465 = v557;
        v473 = v556;
        *v694 = 2082;
        *&v694[2] = v559;
        *&v694[10] = 2082;
        *&v694[12] = v560;
        *&v694[20] = 1024;
        *&v694[22] = 721;
        *&v694[26] = 1024;
        *&v694[28] = v640;
        v530 = "%c[%{public}s %{public}s]:%i Unsupported version: 0x%x";
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v533 = NFLogGetLogger();
        if (v533)
        {
          v534 = v533;
          v535 = v465;
          v536 = object_getClass(v652);
          v537 = class_isMetaClass(v536);
          v538 = object_getClassName(v652);
          v539 = sel_getName("_getUnlockRequestInfoFrom:");
          v616 = [v473 tag];
          v587 = v538;
          v609 = v539;
          v5 = v623;
          v540 = 45;
          if (v537)
          {
            v540 = 43;
          }

          v465 = v535;
          v534(3, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", v540, v587, v609, 715, v616);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v523 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v523, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_453;
        }

        v541 = object_getClass(v652);
        if (class_isMetaClass(v541))
        {
          v542 = 43;
        }

        else
        {
          v542 = 45;
        }

        v543 = object_getClassName(v652);
        v544 = v464;
        v545 = v469;
        v546 = v473;
        v547 = v465;
        v548 = sel_getName("_getUnlockRequestInfoFrom:");
        v549 = [v546 tag];
        *buf = 67110146;
        *&buf[4] = v542;
        *v694 = 2082;
        *&v694[2] = v543;
        *&v694[10] = 2082;
        *&v694[12] = v548;
        v465 = v547;
        v473 = v546;
        v469 = v545;
        v464 = v544;
        *&v694[20] = 1024;
        *&v694[22] = 715;
        *&v694[26] = 1024;
        *&v694[28] = v549;
        v530 = "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x";
      }

      v531 = v523;
      v532 = 40;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v513 = NFLogGetLogger();
      if (v513)
      {
        v514 = v513;
        v515 = v464;
        v516 = v469;
        v517 = v473;
        v518 = v465;
        v519 = object_getClass(v652);
        v520 = class_isMetaClass(v519);
        v521 = object_getClassName(v652);
        v608 = sel_getName("_getUnlockRequestInfoFrom:");
        v522 = 45;
        if (v520)
        {
          v522 = 43;
        }

        v586 = v521;
        v465 = v518;
        v473 = v517;
        v469 = v516;
        v464 = v515;
        v514(3, "%c[%{public}s %{public}s]:%i Invalid number of subtags", v522, v586, v608, 710);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v523 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v523, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_453;
      }

      v524 = object_getClass(v652);
      v525 = v473;
      v526 = v465;
      if (class_isMetaClass(v524))
      {
        v527 = 43;
      }

      else
      {
        v527 = 45;
      }

      v528 = object_getClassName(v652);
      v529 = sel_getName("_getUnlockRequestInfoFrom:");
      *buf = 67109890;
      *&buf[4] = v527;
      v465 = v526;
      v473 = v525;
      *v694 = 2082;
      *&v694[2] = v528;
      *&v694[10] = 2082;
      *&v694[12] = v529;
      *&v694[20] = 1024;
      *&v694[22] = 710;
      v530 = "%c[%{public}s %{public}s]:%i Invalid number of subtags";
      v531 = v523;
      v532 = 34;
    }

    _os_log_impl(&_mh_execute_header, v531, OS_LOG_TYPE_ERROR, v530, buf, v532);
    goto LABEL_453;
  }

LABEL_408:
  v36 = 6;
LABEL_460:

LABEL_461:
LABEL_462:

  return v36;
}

BOOL sub_10018AF80(_BOOL8 a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[_NFHardwareManager sharedHardwareManager];
    v3 = [v2 controllerInfo];

    v4 = [v1 handle];
    v5 = [v4 info];
    v6 = [v5 seType];

    if (v6 <= 7)
    {
      if (((1 << v6) & 0xB1) != 0)
      {
        v1 = 0;
LABEL_5:

        return v1;
      }

      if (v6 == 2)
      {
        v8 = [v3 siliconName];
        v9 = [v1 handle];
        v10 = [v9 info];
        v11 = [v10 sequenceCounter];
        v12 = [v11 unsignedIntValue];

        if (v8 >= 7)
        {
          v1 = v12 > 0x630;
        }

        else
        {
          v1 = v12 > 0x505;
        }

        goto LABEL_5;
      }
    }

    v1 = 1;
    goto LABEL_5;
  }

  return v1;
}

id sub_10018B0A0(void *a1, char a2)
{
  if (!a1)
  {
    v38 = 0;
    goto LABEL_43;
  }

  v4 = [a1 handle];
  v5 = [v4 info];
  v6 = [v5 deviceType];

  v72 = a1;
  v70 = a2;
  if (v6 > 99)
  {
    if (v6 != 100 && v6 != 210 && v6 != 200)
    {
      goto LABEL_12;
    }

    v7 = [a1 handle];
    v8 = [v7 info];
    v9 = [v8 sequenceCounter];
    v10 = [v9 unsignedIntValue] > 0xF1D;
LABEL_14:
    v11 = v10;
    v69 = v11;

    goto LABEL_18;
  }

  if (v6 == 44)
  {
    v7 = [a1 handle];
    v8 = [v7 info];
    v9 = [v8 sequenceCounter];
    v10 = [v9 unsignedIntValue] > 0x326;
    goto LABEL_14;
  }

  if (v6 == 54)
  {
    v7 = [a1 handle];
    v8 = [v7 info];
    v9 = [v8 sequenceCounter];
    v10 = [v9 unsignedIntValue] > 0x123;
    goto LABEL_14;
  }

  if (v6 != 55)
  {
LABEL_12:
    v69 = 1;
    goto LABEL_18;
  }

  v69 = 0;
LABEL_18:
  v12 = RBSProcessMonitor_ptr;
  v73 = [[NSData alloc] initWithBytes:&unk_100297834 length:12];
  v114[0] = v73;
  v68 = [[NSData alloc] initWithBytes:&unk_100297840 length:9];
  v114[1] = v68;
  v67 = [[NSData alloc] initWithBytes:&unk_100297849 length:8];
  v114[2] = v67;
  v65 = [[NSData alloc] initWithBytes:&unk_100297851 length:14];
  v114[3] = v65;
  v64 = [[NSData alloc] initWithBytes:&unk_1002978B1 length:10];
  v114[4] = v64;
  v13 = [[NSData alloc] initWithBytes:&unk_1002978BB length:14];
  v114[5] = v13;
  v14 = [[NSData alloc] initWithBytes:&unk_1002978C9 length:12];
  v114[6] = v14;
  v15 = [[NSData alloc] initWithBytes:&unk_1002978D5 length:16];
  v114[7] = v15;
  v16 = [[NSData alloc] initWithBytes:&unk_1002978E5 length:13];
  v114[8] = v16;
  v17 = [[NSData alloc] initWithBytes:&unk_1002978F2 length:12];
  v114[9] = v17;
  v18 = [[NSData alloc] initWithBytes:&unk_1002978FE length:12];
  v114[10] = v18;
  v19 = [[NSData alloc] initWithBytes:&unk_10029790A length:10];
  v114[11] = v19;
  v20 = [[NSData alloc] initWithBytes:&unk_100297914 length:10];
  v114[12] = v20;
  v21 = [[NSData alloc] initWithBytes:&unk_10029785F length:9];
  v114[13] = v21;
  v66 = [NSArray arrayWithObjects:v114 count:14];

  v22 = [[NSData alloc] initWithBytes:&unk_100297868 length:14];
  v113[0] = v22;
  v23 = [[NSData alloc] initWithBytes:&unk_100297876 length:12];
  v113[1] = v23;
  v24 = [[NSData alloc] initWithBytes:&unk_100297882 length:12];
  v113[2] = v24;
  v74 = [NSArray arrayWithObjects:v113 count:3];

  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = sub_100006AEC;
  v99 = sub_10018E310;
  v100 = objc_opt_new();
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = sub_100006AEC;
  v93 = sub_10018E310;
  v94 = objc_opt_new();
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_100006AEC;
  v87 = sub_10018E310;
  v88 = [[NSMutableArray alloc] initWithCapacity:2];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10018E318;
  v76[3] = &unk_10031AAA0;
  if (v69)
  {
    v25 = 11;
  }

  else
  {
    v25 = 10;
  }

  v76[4] = v72;
  v81 = "getStatusProprietaryApplicationsWithFiltering:";
  v82 = v70;
  v26 = v66;
  v77 = v26;
  v78 = &v83;
  v79 = &v89;
  v80 = &v95;
  v27 = sub_10018EE10(v72, 64, &unk_1002978A6, v25, v76);
  if (v27)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v29 = Logger;
      Class = object_getClass(v72);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v72);
      Name = sel_getName("getStatusProprietaryApplicationsWithFiltering:");
      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v29(3, "%c[%{public}s %{public}s]:%i Failed to call proprietary get status %{public}@", v32, ClassName, Name, 947, v27);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = object_getClass(v72);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      v36 = object_getClassName(v72);
      v37 = sel_getName("getStatusProprietaryApplicationsWithFiltering:");
      *buf = 67110146;
      v104 = v35;
      v105 = 2082;
      v106 = v36;
      v107 = 2082;
      v108 = v37;
      v109 = 1024;
      v110 = 947;
      v111 = 2114;
      v112 = v27;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to call proprietary get status %{public}@", buf, 0x2Cu);
    }

    v38 = 0;
  }

  else
  {
    v71 = v26;
    v39 = [v96[5] count];
    if (v39)
    {
      v40 = v39;
      for (i = 0; i != v40; ++i)
      {
        v42 = [v96[5] objectAtIndexedSubscript:i];
        v43 = [v42 objectForKeyedSubscript:@"associatedSSD"];
        v44 = [v12[56] NF_dataWithHexString:v43];
        v45 = [objc_alloc(v12[56]) initWithBytes:&unk_100297814 length:8];
        v46 = [v44 isEqualToData:v45];

        v47 = v12[56];
        v48 = [v42 objectForKeyedSubscript:@"appletAid"];
        v49 = [v47 NF_dataWithHexString:v48];
        v50 = [v74 containsObject:v49];

        v51 = [v42 objectForKeyedSubscript:@"containerInstance"];
        v52 = [v51 BOOLValue];

        [v42 objectForKeyedSubscript:@"proxyInstance"];
        v54 = v53 = v12;
        v55 = [v54 BOOLValue];

        v12 = v53;
        if (v43 && (v46 & 1) == 0 && (v50 & 1) == 0 && (v52 & 1) == 0 && (v55 & 1) == 0)
        {
          v56 = [v53[56] NF_dataWithHexString:v43];
          sub_10018DB1C(v72, v56, v42);
        }
      }
    }

    v57 = v90[5];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10018F9C8;
    v75[3] = &unk_10031AAC8;
    v75[4] = &v95;
    v58 = [NSPredicate predicateWithBlock:v75];
    [v57 filterUsingPredicate:v58];

    v59 = v96[5];
    v101[0] = @"containers";
    v101[1] = @"orphanedSSDs";
    v60 = v90[5];
    v102[0] = v59;
    v102[1] = v60;
    v101[2] = @"VASDs";
    v102[2] = v84[5];
    v38 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:3];
    v27 = 0;
    v26 = v71;
  }

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v89, 8);

  _Block_object_dispose(&v95, 8);
LABEL_43:

  return v38;
}

uint64_t sub_10018BA74(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) objectForKeyedSubscript:{@"packages", 0}];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) objectForKeyedSubscript:@"associatedSSD"];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

id sub_10018BBC4(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v228 = objc_opt_new();
  v229 = v4;
  [v4 objectForKeyedSubscript:@"containers"];
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v6 = v238 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v235 objects:v251 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v236;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v236 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v235 + 1) + 8 * v10);
      v12 = [v11 objectForKeyedSubscript:@"appletAid"];
      v13 = [NSData NF_dataWithHexString:v12];

      if ([v13 isEqualToData:v5])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v235 objects:v251 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v28 = [v11 objectForKeyedSubscript:@"moduleAid"];
    v29 = [NSData NF_dataWithHexString:v28];
    v30 = [[NSData alloc] initWithBytes:&unk_100297993 length:16];
    if ([v29 isEqualToData:v30])
    {
    }

    else
    {
      v31 = [[NSData alloc] initWithBytes:&unk_1002979A3 length:12];
      v32 = [v29 isEqualToData:v31];

      if ((v32 & 1) == 0)
      {
        v225 = v28;
        v49 = v29;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v51 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("getGetProtocolV4Container:forApplet:");
          v54 = 45;
          if (isMetaClass)
          {
            v54 = 43;
          }

          v51(3, "%c[%{public}s %{public}s]:%i moduleID  %{public}@ does not match MiFare or MOT MID. ", v54, ClassName, Name, 1253, v29);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v55 = NFSharedLogGetLogger();
        v27 = v229;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = object_getClass(a1);
          if (class_isMetaClass(v56))
          {
            v57 = 43;
          }

          else
          {
            v57 = 45;
          }

          v58 = object_getClassName(a1);
          v59 = sel_getName("getGetProtocolV4Container:forApplet:");
          *buf = 67110146;
          v240 = v57;
          v241 = 2082;
          v242 = v58;
          v243 = 2082;
          v244 = v59;
          v245 = 1024;
          v246 = 1253;
          v247 = 2114;
          v29 = v49;
          *v248 = v49;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i moduleID  %{public}@ does not match MiFare or MOT MID. ", buf, 0x2Cu);
          v26 = 0;
          v21 = v228;
        }

        else
        {
          v26 = 0;
          v21 = v228;
        }

        v35 = v55;
        v28 = v225;
        goto LABEL_156;
      }
    }

    v33 = [v11 objectForKeyedSubscript:@"lifeCycleState"];
    v34 = [v33 intValue];

    if (v34 != 15 && v34 != 130)
    {
      v223 = v29;
      v226 = v28;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFLogGetLogger();
      if (v60)
      {
        v61 = v60;
        v62 = object_getClass(a1);
        v63 = class_isMetaClass(v62);
        v200 = object_getClassName(a1);
        v206 = sel_getName("getGetProtocolV4Container:forApplet:");
        v64 = 45;
        if (v63)
        {
          v64 = 43;
        }

        v61(3, "%c[%{public}s %{public}s]:%i lifeCycle  %d is not valid ", v64, v200, v206, 1260, v34);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v65 = NFSharedLogGetLogger();
      v27 = v229;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = object_getClass(a1);
        if (class_isMetaClass(v66))
        {
          v67 = 43;
        }

        else
        {
          v67 = 45;
        }

        v68 = object_getClassName(a1);
        v69 = sel_getName("getGetProtocolV4Container:forApplet:");
        *buf = 67110146;
        v240 = v67;
        v241 = 2082;
        v242 = v68;
        v243 = 2082;
        v244 = v69;
        v245 = 1024;
        v246 = 1260;
        v247 = 1024;
        *v248 = v34;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i lifeCycle  %d is not valid ", buf, 0x28u);
      }

      v26 = 0;
      v21 = v228;
      v29 = v223;
      v35 = v65;
      v28 = v226;
      goto LABEL_156;
    }

    v35 = objc_opt_new();
    v36 = [v11 objectForKeyedSubscript:@"ssdCounter"];

    if (v36)
    {
      v37 = [v11 objectForKeyedSubscript:@"ssdCounter"];
      [v35 setObject:v37 forKeyedSubscript:@"ssdCounter"];

      v38 = [v11 objectForKeyedSubscript:@"appletAid"];

      if (v38)
      {
        v39 = [v11 objectForKeyedSubscript:@"appletAid"];
        [v35 setObject:v39 forKeyedSubscript:@"appletAid"];

        v234 = 0;
        v40 = sub_100158A6C(a1, v13, &v234);
        v224 = v234;
        v221 = v40;
        v222 = v29;
        if ([v40 status] != 36864)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v94 = NFLogGetLogger();
          if (v94)
          {
            v95 = v94;
            v96 = object_getClass(a1);
            v97 = class_isMetaClass(v96);
            v98 = v28;
            v99 = v35;
            v100 = object_getClassName(a1);
            v101 = sel_getName("getGetProtocolV4Container:forApplet:");
            v214 = [v40 status];
            v201 = v100;
            v102 = 43;
            if (!v97)
            {
              v102 = 45;
            }

            v35 = v99;
            v28 = v98;
            v95(3, "%c[%{public}s %{public}s]:%i Failed to select AID %{public}@: status 0x%04x, error = %{public}@", v102, v201, v101, 1289, v13, v214, v224);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v103 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            v104 = object_getClass(a1);
            if (class_isMetaClass(v104))
            {
              v105 = 43;
            }

            else
            {
              v105 = 45;
            }

            v106 = object_getClassName(a1);
            v107 = sel_getName("getGetProtocolV4Container:forApplet:");
            v108 = [v40 status];
            *buf = 67110658;
            v240 = v105;
            v241 = 2082;
            v242 = v106;
            v243 = 2082;
            v244 = v107;
            v245 = 1024;
            v246 = 1289;
            v247 = 2114;
            *v248 = v13;
            *&v248[8] = 1024;
            *&v248[10] = v108;
            v249 = 2114;
            v250 = v224;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select AID %{public}@: status 0x%04x, error = %{public}@", buf, 0x3Cu);
            v26 = 0;
            v109 = v103;
            v21 = v228;
            v27 = v229;
            v29 = v222;
            goto LABEL_154;
          }

          v26 = 0;
          v109 = v103;
          v21 = v228;
          v27 = v229;
          v29 = v222;
          goto LABEL_153;
        }

        v217 = v35;
        v41 = [[NSData alloc] initWithBytes:&unk_100297993 length:16];
        v42 = [v29 isEqualToData:v41];

        if (v42)
        {
          v43 = [[NSData alloc] initWithBytes:&unk_1002979AF length:1];
          v233 = v224;
          v44 = sub_100158A28(a1, 128, 0, v43, &v233);
          v218 = v233;

          v219 = v44;
          if (v44 && [v44 status] == 36864)
          {
            v45 = [v44 data];
            v46 = [v45 NF_asHexString];
            v47 = [v46 substringWithRange:{0, 4}];

            if (v47)
            {
              v48 = @"authenticationCounter";
              v35 = v217;
              goto LABEL_86;
            }

            v161 = v29;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v162 = NFLogGetLogger();
            if (v162)
            {
              v163 = v162;
              v164 = object_getClass(a1);
              v165 = class_isMetaClass(v164);
              v166 = object_getClassName(a1);
              v209 = sel_getName("getGetProtocolV4Container:forApplet:");
              v167 = 45;
              if (v165)
              {
                v167 = 43;
              }

              v163(3, "%c[%{public}s %{public}s]:%i Nil auth counter", v167, v166, v209, 1310);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v168 = NFSharedLogGetLogger();
            v27 = v229;
            if (!os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_140;
            }

            v169 = object_getClass(a1);
            if (class_isMetaClass(v169))
            {
              v170 = 43;
            }

            else
            {
              v170 = 45;
            }

            v171 = object_getClassName(a1);
            v172 = sel_getName("getGetProtocolV4Container:forApplet:");
            *buf = 67109890;
            v240 = v170;
            v241 = 2082;
            v242 = v171;
            v243 = 2082;
            v244 = v172;
            v245 = 1024;
            v246 = 1310;
            v173 = "%c[%{public}s %{public}s]:%i Nil auth counter";
LABEL_139:
            _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_ERROR, v173, buf, 0x22u);
LABEL_140:
            v184 = v168;
            v26 = 0;
            v40 = v219;
            v224 = v218;
            v21 = v228;
            v29 = v161;
            v35 = v217;
            v109 = v184;
            goto LABEL_154;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v120 = NFLogGetLogger();
          if (v120)
          {
            v121 = v120;
            v122 = object_getClass(a1);
            v123 = class_isMetaClass(v122);
            v124 = object_getClassName(a1);
            v125 = sel_getName("getGetProtocolV4Container:forApplet:");
            v212 = [v219 status];
            v126 = 45;
            if (v123)
            {
              v126 = 43;
            }

            v121(3, "%c[%{public}s %{public}s]:%i Failed to execute get auth command: 0x%04x, error = %{public}@", v126, v124, v125, 1301, v212, v218);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v127 = NFSharedLogGetLogger();
          v27 = v229;
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            v128 = object_getClass(a1);
            if (class_isMetaClass(v128))
            {
              v129 = 43;
            }

            else
            {
              v129 = 45;
            }

            v130 = object_getClassName(a1);
            v131 = sel_getName("getGetProtocolV4Container:forApplet:");
            v132 = v219;
            v133 = [v219 status];
            *buf = 67110402;
            v240 = v129;
            v241 = 2082;
            v242 = v130;
            v243 = 2082;
            v244 = v131;
            v245 = 1024;
            v246 = 1301;
            v247 = 1024;
            *v248 = v133;
            *&v248[4] = 2114;
            v134 = v218;
            *&v248[6] = v218;
            v135 = "%c[%{public}s %{public}s]:%i Failed to execute get auth command: 0x%04x, error = %{public}@";
LABEL_108:
            _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, v135, buf, 0x32u);
            v26 = 0;
            v40 = v132;
            v224 = v134;
LABEL_110:
            v21 = v228;
            v29 = v222;
            v109 = v127;
            v35 = v217;
LABEL_154:

            v78 = v224;
            goto LABEL_155;
          }
        }

        else
        {
          v232 = v224;
          v110 = sub_100158334(a1, 128, 241, 0, 0, 0, &v232);
          v218 = v232;

          v219 = v110;
          if (v110 && [v110 status] == 36864)
          {
            v111 = [v110 data];
            v47 = [v111 NF_asHexString];

            v35 = v217;
            if (v47)
            {
              v48 = @"appletSignedState";
LABEL_86:
              [v35 setObject:v47 forKeyedSubscript:v48];

              v112 = [v11 objectForKeyedSubscript:@"ssdAid"];
              v113 = [NSData NF_dataWithHexString:v112];

              v231 = v218;
              v216 = v113;
              v114 = sub_100158A6C(a1, v113, &v231);
              v224 = v231;

              v221 = v114;
              if ([v114 status] == 36864)
              {
                v115 = sub_10018D288(a1, 0);
                v116 = [v115 objectForKeyedSubscript:@"ssdKeyVersionNumber"];
                v27 = v229;
                if ([v116 count])
                {
                  [v116 objectAtIndexedSubscript:0];
                  v118 = v117 = v115;
                  v119 = [[NSString alloc] initWithFormat:@"%02lX", objc_msgSend(v118, "integerValue")];
                  [v217 setObject:v119 forKeyedSubscript:@"kvn"];

                  v35 = v217;
                  v21 = v228;
                  [v228 addObject:v217];
                  v26 = v228;
LABEL_152:
                  v109 = v216;
LABEL_153:
                  v40 = v221;
                  goto LABEL_154;
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v185 = NFLogGetLogger();
                if (v185)
                {
                  v186 = v185;
                  v187 = object_getClass(a1);
                  v188 = v115;
                  v189 = class_isMetaClass(v187);
                  v190 = object_getClassName(a1);
                  v211 = sel_getName("getGetProtocolV4Container:forApplet:");
                  v191 = !v189;
                  v115 = v188;
                  v192 = 45;
                  if (!v191)
                  {
                    v192 = 43;
                  }

                  v203 = v190;
                  v35 = v217;
                  v186(3, "%c[%{public}s %{public}s]:%i No KVN found", v192, v203, v211, 1367);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v193 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                {
                  v220 = v115;
                  v194 = object_getClass(a1);
                  if (class_isMetaClass(v194))
                  {
                    v195 = 43;
                  }

                  else
                  {
                    v195 = 45;
                  }

                  v196 = object_getClassName(a1);
                  v197 = sel_getName("getGetProtocolV4Container:forApplet:");
                  *buf = 67109890;
                  v240 = v195;
                  v241 = 2082;
                  v242 = v196;
                  v115 = v220;
                  v243 = 2082;
                  v244 = v197;
                  v245 = 1024;
                  v246 = 1367;
                  _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No KVN found", buf, 0x22u);
                }

                v26 = 0;
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v148 = NFLogGetLogger();
                if (v148)
                {
                  v149 = v148;
                  v150 = object_getClass(a1);
                  v151 = class_isMetaClass(v150);
                  v152 = object_getClassName(a1);
                  v153 = sel_getName("getGetProtocolV4Container:forApplet:");
                  v215 = [v114 status];
                  v202 = v152;
                  v154 = 43;
                  if (!v151)
                  {
                    v154 = 45;
                  }

                  v35 = v217;
                  v149(3, "%c[%{public}s %{public}s]:%i Failed to select SSD %{public}@: 0x%04x, error = %{public}@", v154, v202, v153, 1350, v216, v215, v224);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v155 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
                {
                  v156 = object_getClass(a1);
                  if (class_isMetaClass(v156))
                  {
                    v157 = 43;
                  }

                  else
                  {
                    v157 = 45;
                  }

                  v158 = object_getClassName(a1);
                  v159 = sel_getName("getGetProtocolV4Container:forApplet:");
                  v160 = [v114 status];
                  *buf = 67110658;
                  v240 = v157;
                  v241 = 2082;
                  v242 = v158;
                  v243 = 2082;
                  v244 = v159;
                  v35 = v217;
                  v245 = 1024;
                  v246 = 1350;
                  v247 = 2114;
                  *v248 = v216;
                  *&v248[8] = 1024;
                  *&v248[10] = v160;
                  v249 = 2114;
                  v250 = v224;
                  _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select SSD %{public}@: 0x%04x, error = %{public}@", buf, 0x3Cu);
                }

                v26 = 0;
                v27 = v229;
              }

              v21 = v228;
              v29 = v222;
              goto LABEL_152;
            }

            v161 = v29;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v174 = NFLogGetLogger();
            if (v174)
            {
              v175 = v174;
              v176 = object_getClass(a1);
              v177 = class_isMetaClass(v176);
              v178 = object_getClassName(a1);
              v210 = sel_getName("getGetProtocolV4Container:forApplet:");
              v179 = 45;
              if (v177)
              {
                v179 = 43;
              }

              v175(3, "%c[%{public}s %{public}s]:%i appletSignedState does not exist", v179, v178, v210, 1337);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v168 = NFSharedLogGetLogger();
            v27 = v229;
            if (!os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_140;
            }

            v180 = object_getClass(a1);
            if (class_isMetaClass(v180))
            {
              v181 = 43;
            }

            else
            {
              v181 = 45;
            }

            v182 = object_getClassName(a1);
            v183 = sel_getName("getGetProtocolV4Container:forApplet:");
            *buf = 67109890;
            v240 = v181;
            v241 = 2082;
            v242 = v182;
            v243 = 2082;
            v244 = v183;
            v245 = 1024;
            v246 = 1337;
            v173 = "%c[%{public}s %{public}s]:%i appletSignedState does not exist";
            goto LABEL_139;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v136 = NFLogGetLogger();
          if (v136)
          {
            v137 = v136;
            v138 = object_getClass(a1);
            v139 = class_isMetaClass(v138);
            v140 = object_getClassName(a1);
            v141 = sel_getName("getGetProtocolV4Container:forApplet:");
            v213 = [v219 status];
            v142 = 45;
            if (v139)
            {
              v142 = 43;
            }

            v137(3, "%c[%{public}s %{public}s]:%i Failed to execute get applet signed state command: 0x%04x, error = %{public}@", v142, v140, v141, 1328, v213, v218);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v127 = NFSharedLogGetLogger();
          v27 = v229;
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            v143 = object_getClass(a1);
            if (class_isMetaClass(v143))
            {
              v144 = 43;
            }

            else
            {
              v144 = 45;
            }

            v145 = object_getClassName(a1);
            v146 = sel_getName("getGetProtocolV4Container:forApplet:");
            v132 = v219;
            v147 = [v219 status];
            *buf = 67110402;
            v240 = v144;
            v241 = 2082;
            v242 = v145;
            v243 = 2082;
            v244 = v146;
            v245 = 1024;
            v246 = 1328;
            v247 = 1024;
            *v248 = v147;
            *&v248[4] = 2114;
            v134 = v218;
            *&v248[6] = v218;
            v135 = "%c[%{public}s %{public}s]:%i Failed to execute get applet signed state command: 0x%04x, error = %{public}@";
            goto LABEL_108;
          }
        }

        v26 = 0;
        v40 = v219;
        v224 = v218;
        goto LABEL_110;
      }

      v227 = v28;
      v70 = v35;
      v71 = v29;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v84 = NFLogGetLogger();
      if (v84)
      {
        v85 = v84;
        v86 = object_getClass(a1);
        v87 = class_isMetaClass(v86);
        v88 = object_getClassName(a1);
        v208 = sel_getName("getGetProtocolV4Container:forApplet:");
        v89 = 45;
        if (v87)
        {
          v89 = 43;
        }

        v85(3, "%c[%{public}s %{public}s]:%i ContainersAppletAID does not exist in container", v89, v88, v208, 1279);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v78 = NFSharedLogGetLogger();
      v27 = v229;
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
LABEL_72:
        v26 = 0;
        v29 = v71;
        v35 = v70;
        v28 = v227;
        v21 = v228;
LABEL_155:

LABEL_156:
        v20 = v6;
        goto LABEL_157;
      }

      v90 = object_getClass(a1);
      if (class_isMetaClass(v90))
      {
        v91 = 43;
      }

      else
      {
        v91 = 45;
      }

      v92 = object_getClassName(a1);
      v93 = sel_getName("getGetProtocolV4Container:forApplet:");
      *buf = 67109890;
      v240 = v91;
      v241 = 2082;
      v242 = v92;
      v243 = 2082;
      v244 = v93;
      v245 = 1024;
      v246 = 1279;
      v83 = "%c[%{public}s %{public}s]:%i ContainersAppletAID does not exist in container";
    }

    else
    {
      v227 = v28;
      v70 = v35;
      v71 = v29;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v72 = NFLogGetLogger();
      v27 = v229;
      if (v72)
      {
        v73 = v72;
        v74 = object_getClass(a1);
        v75 = class_isMetaClass(v74);
        v76 = object_getClassName(a1);
        v207 = sel_getName("getGetProtocolV4Container:forApplet:");
        v77 = 45;
        if (v75)
        {
          v77 = 43;
        }

        v73(3, "%c[%{public}s %{public}s]:%i SSDCounter does not exist in container", v77, v76, v207, 1271);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v78 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }

      v79 = object_getClass(a1);
      if (class_isMetaClass(v79))
      {
        v80 = 43;
      }

      else
      {
        v80 = 45;
      }

      v81 = object_getClassName(a1);
      v82 = sel_getName("getGetProtocolV4Container:forApplet:");
      *buf = 67109890;
      v240 = v80;
      v241 = 2082;
      v242 = v81;
      v243 = 2082;
      v244 = v82;
      v245 = 1024;
      v246 = 1271;
      v83 = "%c[%{public}s %{public}s]:%i SSDCounter does not exist in container";
    }

    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, v83, buf, 0x22u);
    goto LABEL_72;
  }

LABEL_9:

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v15 = v14;
    v16 = object_getClass(a1);
    v17 = class_isMetaClass(v16);
    v18 = object_getClassName(a1);
    v204 = sel_getName("getGetProtocolV4Container:forApplet:");
    v19 = 45;
    if (v17)
    {
      v19 = 43;
    }

    v15(3, "%c[%{public}s %{public}s]:%i No matching whitelisted applet found", v19, v18, v204, 1376);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  v21 = v228;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v22 = object_getClass(a1);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(a1);
    v25 = sel_getName("getGetProtocolV4Container:forApplet:");
    *buf = 67109890;
    v240 = v23;
    v241 = 2082;
    v242 = v24;
    v243 = 2082;
    v244 = v25;
    v245 = 1024;
    v246 = 1376;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No matching whitelisted applet found", buf, 0x22u);
  }

  v26 = 0;
  v27 = v229;
LABEL_157:

  return v26;
}

id sub_10018D288(id *a1, int a2)
{
  v4 = sub_100158AB4(a1, 224);
  if (!v4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_getKeyInfo:");
      v23 = 45;
      if (isMetaClass)
      {
        v23 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Failed to get key information template", v23, ClassName, Name, 339);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(a1);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      *buf = 67109890;
      v87 = v25;
      v88 = 2082;
      v89 = object_getClassName(a1);
      v90 = 2082;
      v91 = sel_getName("_getKeyInfo:");
      v92 = 1024;
      v93 = 339;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get key information template", buf, 0x22u);
    }

    v17 = 0;
    goto LABEL_26;
  }

  v5 = [NFTLV TLVsWithData:v4];
  if ([v5 count] < 3 || 0xAAAAAAAAAAAAAAABLL * objc_msgSend(v5, "count") > 0x5555555555555555)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v6 = NFLogGetLogger();
    if (v6)
    {
      v7 = v6;
      v8 = object_getClass(a1);
      v9 = class_isMetaClass(v8);
      v10 = object_getClassName(a1);
      v72 = sel_getName("_getKeyInfo:");
      v11 = 45;
      if (v9)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Invalid key set", v11, v10, v72, 348);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v13 = object_getClass(a1);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v87 = v14;
    v88 = 2082;
    v89 = object_getClassName(a1);
    v90 = 2082;
    v91 = sel_getName("_getKeyInfo:");
    v92 = 1024;
    v93 = 348;
    v15 = "%c[%{public}s %{public}s]:%i Invalid key set";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v15, buf, 0x22u);
LABEL_14:

    v16 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  if (![v5 count])
  {
LABEL_63:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFLogGetLogger();
    if (v62)
    {
      v63 = v62;
      v64 = object_getClass(a1);
      v65 = class_isMetaClass(v64);
      v66 = object_getClassName(a1);
      v76 = sel_getName("_getKeyInfo:");
      v67 = 45;
      if (v65)
      {
        v67 = 43;
      }

      v63(3, "%c[%{public}s %{public}s]:%i Failed to get key information template", v67, v66, v76, 385);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v68 = object_getClass(a1);
    if (class_isMetaClass(v68))
    {
      v69 = 43;
    }

    else
    {
      v69 = 45;
    }

    v70 = object_getClassName(a1);
    v71 = sel_getName("_getKeyInfo:");
    *buf = 67109890;
    v87 = v69;
    v88 = 2082;
    v89 = v70;
    v90 = 2082;
    v91 = v71;
    v92 = 1024;
    v93 = 385;
    v15 = "%c[%{public}s %{public}s]:%i Failed to get key information template";
    goto LABEL_13;
  }

  v77 = a2;
  v78 = v4;
  v79 = 0;
  v27 = 0;
  do
  {
    v28 = [v5 objectAtIndexedSubscript:v27];
    v29 = [v5 objectAtIndexedSubscript:v27 + 1];
    v30 = v27 + 2;
    v31 = [v5 objectAtIndexedSubscript:v27 + 2];
    if ([v28 tag] == 192 && objc_msgSend(v29, "tag") == 192 && objc_msgSend(v31, "tag") == 192)
    {
      v81 = 0;
      v80 = 0;
      v32 = [v28 value];
      [v32 getBytes:&v81 + 1 range:{1, 1}];

      v33 = [v29 value];
      [v33 getBytes:&v81 range:{1, 1}];

      v34 = [v31 value];
      [v34 getBytes:&v80 range:{1, 1}];

      if (HIBYTE(v81) == v81 && HIBYTE(v81) == v80)
      {
        if (v79)
        {
          v35 = [NSNumber numberWithUnsignedChar:?];
          v36 = [v79 arrayByAddingObject:v35];

          v79 = v36;
        }

        else
        {
          v59 = [NSArray alloc];
          v35 = [NSNumber numberWithUnsignedChar:HIBYTE(v81)];
          v79 = [v59 initWithObjects:{v35, 0}];
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFLogGetLogger();
        if (v49)
        {
          v50 = v49;
          v51 = object_getClass(a1);
          v52 = class_isMetaClass(v51);
          v53 = object_getClassName(a1);
          v75 = sel_getName("_getKeyInfo:");
          v54 = 45;
          if (v52)
          {
            v54 = 43;
          }

          v50(3, "%c[%{public}s %{public}s]:%i Inconsistent KVN in keyset", v54, v53, v75, 373);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v35 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v55 = object_getClass(a1);
          if (class_isMetaClass(v55))
          {
            v56 = 43;
          }

          else
          {
            v56 = 45;
          }

          v57 = object_getClassName(a1);
          v58 = sel_getName("_getKeyInfo:");
          *buf = 67109890;
          v87 = v56;
          v88 = 2082;
          v89 = v57;
          v90 = 2082;
          v91 = v58;
          v92 = 1024;
          v93 = 373;
          v47 = v35;
          v48 = "%c[%{public}s %{public}s]:%i Inconsistent KVN in keyset";
LABEL_47:
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v48, buf, 0x22u);
        }
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFLogGetLogger();
      if (v37)
      {
        v38 = v37;
        v39 = object_getClass(a1);
        v40 = class_isMetaClass(v39);
        v41 = object_getClassName(a1);
        v74 = sel_getName("_getKeyInfo:");
        v42 = 45;
        if (v40)
        {
          v42 = 43;
        }

        v38(3, "%c[%{public}s %{public}s]:%i Invalid data format", v42, v41, v74, 360);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v43 = object_getClass(a1);
        if (class_isMetaClass(v43))
        {
          v44 = 43;
        }

        else
        {
          v44 = 45;
        }

        v45 = object_getClassName(a1);
        v46 = sel_getName("_getKeyInfo:");
        *buf = 67109890;
        v87 = v44;
        v88 = 2082;
        v89 = v45;
        v90 = 2082;
        v91 = v46;
        v92 = 1024;
        v93 = 360;
        v47 = v35;
        v48 = "%c[%{public}s %{public}s]:%i Invalid data format";
        goto LABEL_47;
      }
    }

    v27 = v30 + 1;
  }

  while ([v5 count] > v30 + 1);
  v4 = v78;
  v16 = v79;
  if (!v79)
  {
    goto LABEL_63;
  }

  if (v77)
  {
    v84 = @"isdKeyVersionNumber";
    v85 = v79;
    v60 = &v85;
    v61 = &v84;
  }

  else
  {
    v82 = @"ssdKeyVersionNumber";
    v83 = v79;
    v60 = &v83;
    v61 = &v82;
  }

  v17 = [NSDictionary dictionaryWithObjects:v60 forKeys:v61 count:1];
LABEL_15:

LABEL_26:

  return v17;
}

void sub_10018DB1C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100158A6C(a1, v5, 0);
  if ([v7 status] == 36864)
  {
    v8 = sub_100158AB4(a1, 193);
    v9 = v8;
    if (v8)
    {
      v10 = [v8 NF_asHexString];
      [v6 setObject:v10 forKey:@"ssdCounter"];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_addEntriesFromSSD:intoApp:");
        v25 = 45;
        if (isMetaClass)
        {
          v25 = 43;
        }

        v22(3, "%c[%{public}s %{public}s]:%i Failed to get sequence counter: %{public}@", v25, ClassName, Name, 1210, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = object_getClass(a1);
        if (class_isMetaClass(v27))
        {
          v28 = 43;
        }

        else
        {
          v28 = 45;
        }

        *buf = 67110146;
        v73 = v28;
        v74 = 2082;
        v75 = object_getClassName(a1);
        v76 = 2082;
        v77 = sel_getName("_addEntriesFromSSD:intoApp:");
        v78 = 1024;
        v79 = 1210;
        v80 = 2114;
        v81 = v5;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get sequence counter: %{public}@", buf, 0x2Cu);
      }

      v9 = 0;
    }

    v29 = sub_100158F70(a1, 254, 0xDF30u);
    v30 = v29;
    if (v29)
    {
      v31 = [v29 NF_asHexString];
      [v6 setObject:v31 forKey:@"obgk"];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFLogGetLogger();
      if (v32)
      {
        v33 = v32;
        v34 = object_getClass(a1);
        v35 = class_isMetaClass(v34);
        v64 = object_getClassName(a1);
        v68 = sel_getName("_addEntriesFromSSD:intoApp:");
        v36 = 45;
        if (v35)
        {
          v36 = 43;
        }

        v33(3, "%c[%{public}s %{public}s]:%i Failed to get OBGK: %{public}@", v36, v64, v68, 1217, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v37 = object_getClass(a1);
        if (class_isMetaClass(v37))
        {
          v38 = 43;
        }

        else
        {
          v38 = 45;
        }

        v39 = object_getClassName(a1);
        v40 = sel_getName("_addEntriesFromSSD:intoApp:");
        *buf = 67110146;
        v73 = v38;
        v74 = 2082;
        v75 = v39;
        v76 = 2082;
        v77 = v40;
        v78 = 1024;
        v79 = 1217;
        v80 = 2114;
        v81 = v5;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get OBGK: %{public}@", buf, 0x2Cu);
      }
    }

    v41 = sub_100158AB4(a1, 32545);

    if (v41)
    {
      v42 = [NFTLV TLVWithTag:147 fromData:v41];
      v43 = [v42 value];

      if (v43)
      {
        v44 = [v43 NF_asHexString];
        [v6 setObject:v44 forKey:@"certSN"];

LABEL_58:
        goto LABEL_59;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFLogGetLogger();
      if (v54)
      {
        v55 = v54;
        v56 = object_getClass(a1);
        v57 = class_isMetaClass(v56);
        v66 = object_getClassName(a1);
        v70 = sel_getName("_addEntriesFromSSD:intoApp:");
        v58 = 45;
        if (v57)
        {
          v58 = 43;
        }

        v55(3, "%c[%{public}s %{public}s]:%i Failed to get certificate serial number: %{public}@", v58, v66, v70, 1229, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v59 = object_getClass(a1);
      if (class_isMetaClass(v59))
      {
        v60 = 43;
      }

      else
      {
        v60 = 45;
      }

      v61 = object_getClassName(a1);
      v62 = sel_getName("_addEntriesFromSSD:intoApp:");
      *buf = 67110146;
      v73 = v60;
      v74 = 2082;
      v75 = v61;
      v76 = 2082;
      v77 = v62;
      v78 = 1024;
      v79 = 1229;
      v80 = 2114;
      v81 = v5;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(a1);
        v48 = class_isMetaClass(v47);
        v65 = object_getClassName(a1);
        v69 = sel_getName("_addEntriesFromSSD:intoApp:");
        v49 = 45;
        if (v48)
        {
          v49 = 43;
        }

        v46(3, "%c[%{public}s %{public}s]:%i Failed to get certificate serial number: %{public}@", v49, v65, v69, 1225, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v50 = object_getClass(a1);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      v52 = object_getClassName(a1);
      v53 = sel_getName("_addEntriesFromSSD:intoApp:");
      *buf = 67110146;
      v73 = v51;
      v74 = 2082;
      v75 = v52;
      v76 = 2082;
      v77 = v53;
      v78 = 1024;
      v79 = 1225;
      v80 = 2114;
      v81 = v5;
    }

    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get certificate serial number: %{public}@", buf, 0x2Cu);
    goto LABEL_58;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v12 = v11;
    v13 = object_getClass(a1);
    v14 = class_isMetaClass(v13);
    v15 = object_getClassName(a1);
    v16 = sel_getName("_addEntriesFromSSD:intoApp:");
    v71 = [v7 status];
    v17 = 45;
    if (v14)
    {
      v17 = 43;
    }

    v12(3, "%c[%{public}s %{public}s]:%i Failed to select SSD %{public}@: 0x%04x", v17, v15, v16, 1196, v5, v71);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = object_getClass(a1);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    *buf = 67110402;
    v73 = v20;
    v74 = 2082;
    v75 = object_getClassName(a1);
    v76 = 2082;
    v77 = sel_getName("_addEntriesFromSSD:intoApp:");
    v78 = 1024;
    v79 = 1196;
    v80 = 2114;
    v81 = v5;
    v82 = 1024;
    v83 = [v7 status];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select SSD %{public}@: 0x%04x", buf, 0x32u);
  }

  if ([v7 status] == 27033)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ssdIsLocked"];
  }

LABEL_59:
}

void sub_10018E318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [NFTLV TLVSsWithBytes:a2 length:a3 requireDefiniteEncoding:1];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v114 = 0u;
  v93 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
  if (v93)
  {
    v92 = *v112;
    v4 = RBSProcessMonitor_ptr;
    v5 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    v96 = a1;
    do
    {
      v6 = 0;
      do
      {
        if (*v112 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v94 = v6;
        v7 = *(*(&v111 + 1) + 8 * v6);
        v95 = [v7 childWithTag:79];
        if (!v95)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v30 = Logger;
            Class = object_getClass(*(a1 + 32));
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(*(a1 + 32));
            Name = sel_getName(*(a1 + 72));
            v34 = 45;
            if (isMetaClass)
            {
              v34 = 43;
            }

            v30(3, "%c[%{public}s %{public}s]:%i Missing AID tag", v34, ClassName, Name, 846);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v11 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v35 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v35))
            {
              v36 = 43;
            }

            else
            {
              v36 = 45;
            }

            v37 = object_getClassName(*(a1 + 32));
            v38 = sel_getName(*(a1 + 72));
            *buf = 67109890;
            v123 = v36;
            v124 = 2082;
            v125 = v37;
            v126 = 2082;
            v127 = v38;
            v128 = 1024;
            v129 = 846;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing AID tag", buf, 0x22u);
          }

          goto LABEL_90;
        }

        if (*(a1 + 80) != 1 || (v8 = *(a1 + 40), [v95 value], v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend(v8, "containsObject:", v9), v9, (v8 & 1) == 0))
        {
          v10 = [v7 childWithTag:197];
          v11 = v10;
          if (!v10 || (-[NSObject value](v10, "value"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 length], v12, v13 >= 5))
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v14 = NFLogGetLogger();
            if (v14)
            {
              v15 = v14;
              v16 = object_getClass(*(a1 + 32));
              v17 = class_isMetaClass(v16);
              v18 = object_getClassName(*(a1 + 32));
              v19 = sel_getName(*(a1 + 72));
              v20 = [v11 value];
              v89 = [v20 length];
              v21 = 45;
              if (v17)
              {
                v21 = 43;
              }

              v15(3, "%c[%{public}s %{public}s]:%i Missing or too long privilege tag 0xC5 %lu", v21, v18, v19, 860, v89);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v22 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v23))
              {
                v24 = 43;
              }

              else
              {
                v24 = 45;
              }

              v25 = object_getClassName(*(a1 + 32));
              v26 = sel_getName(*(a1 + 72));
              v27 = [v11 value];
              v28 = [v27 length];
              *buf = 67110146;
              v123 = v24;
              v124 = 2082;
              v125 = v25;
              v126 = 2082;
              v127 = v26;
              v128 = 1024;
              v129 = 860;
              v130 = 2048;
              v131 = v28;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing or too long privilege tag 0xC5 %lu", buf, 0x2Cu);
            }

            goto LABEL_89;
          }

          v90 = v11;
          v39 = [v11 valueAsUnsignedLong];
          if ((v39 & 0x800000) != 0)
          {
            if ((~v39 & 0xC10000) != 0)
            {
              if ((v39 & 0x540) == 0)
              {
                v86 = *(*(*(a1 + 56) + 8) + 40);
                v22 = [v95 valueAsHexString];
                [v86 addObject:v22];
                goto LABEL_89;
              }
            }

            else
            {
              v85 = *(*(*(a1 + 48) + 8) + 40);
              v22 = [v95 valueAsHexString];
              [v85 addObject:v22];
LABEL_88:
              v11 = v90;
LABEL_89:
            }

LABEL_90:

            goto LABEL_91;
          }

          v22 = [[NSMutableDictionary alloc] initWithCapacity:18];
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v40 = [v7 children];
          v102 = [v40 countByEnumeratingWithState:&v107 objects:v120 count:16];
          if (!v102)
          {
            goto LABEL_85;
          }

          v41 = *v108;
          v98 = v22;
          v100 = v40;
          v101 = *v108;
          while (2)
          {
            v42 = 0;
LABEL_33:
            if (*v108 != v41)
            {
              objc_enumerationMutation(v40);
            }

            v43 = *(*(&v107 + 1) + 8 * v42);
            v44 = [v43 tag];
            if (v44 <= 164)
            {
              if (v44 <= 159)
              {
                if (v44 == 79)
                {
                  v50 = [v43 valueAsHexString];
                  v51 = v22;
                  v52 = v50;
                  v53 = @"appletAid";
                }

                else
                {
                  if (v44 != 132)
                  {
                    goto LABEL_83;
                  }

                  v50 = [v43 valueAsHexString];
                  v51 = v22;
                  v52 = v50;
                  v53 = @"moduleAid";
                }

                goto LABEL_81;
              }

              if (v44 == 160)
              {
                v63 = [v43 childWithTag:79];
                v50 = v63;
                if (!v63)
                {
                  v63 = v43;
                }

                v64 = [v63 valueAsHexString];
                [v22 setObject:v64 forKeyedSubscript:@"primaryContainer"];

                goto LABEL_82;
              }

              if (v44 == 164)
              {
                v54 = objc_alloc(v4[61]);
                v55 = [v43 children];
                v56 = [v54 initWithCapacity:{objc_msgSend(v55, "count")}];

                v105 = 0u;
                v106 = 0u;
                v103 = 0u;
                v104 = 0u;
                v57 = [v43 children];
                v58 = [v57 countByEnumeratingWithState:&v103 objects:v119 count:16];
                if (v58)
                {
                  v59 = v58;
                  v60 = *v104;
                  do
                  {
                    for (i = 0; i != v59; i = i + 1)
                    {
                      if (*v104 != v60)
                      {
                        objc_enumerationMutation(v57);
                      }

                      v62 = [*(*(&v103 + 1) + 8 * i) valueAsHexString];
                      [v56 addObject:v62];
                    }

                    v59 = [v57 countByEnumeratingWithState:&v103 objects:v119 count:16];
                  }

                  while (v59);
                }

                v22 = v98;
                [v98 setObject:v56 forKeyedSubscript:@"auxilaryContainers"];

                v40 = v100;
                v41 = v101;
              }
            }

            else
            {
              if (v44 > 203)
              {
                if (v44 == 204)
                {
                  v50 = [v43 valueAsHexString];
                  v51 = v22;
                  v52 = v50;
                  v53 = @"associatedSSD";
                }

                else
                {
                  if (v44 != 218)
                  {
                    if (v44 == 40816)
                    {
                      v45 = [v43 value];
                      v46 = [v45 length];

                      if (v46)
                      {
                        v47 = v5[470];
                        v48 = [v43 value];
                        v49 = [v47 numberWithUnsignedChar:{*objc_msgSend(v48, "bytes")}];
                        [v22 setObject:v49 forKeyedSubscript:@"lifeCycleState"];
                      }
                    }

                    goto LABEL_83;
                  }

                  v50 = [v43 valueAsHexString];
                  v51 = v22;
                  v52 = v50;
                  v53 = @"appletPresentmentACL";
                }

LABEL_81:
                [v51 setObject:v52 forKeyedSubscript:v53];
LABEL_82:

                goto LABEL_83;
              }

              if (v44 != 165)
              {
                if (v44 != 196)
                {
                  goto LABEL_83;
                }

                v50 = [v43 valueAsHexString];
                v51 = v22;
                v52 = v50;
                v53 = @"packageAid";
                goto LABEL_81;
              }

              v65 = [v43 valueAsHexString];
              [v22 setObject:v65 forKeyedSubscript:@"discretionaryData"];

              v66 = *(a1 + 32);
              v67 = v43;
              v68 = v22;
              if (v66)
              {
                v69 = [v67 childWithTag:254];
                v70 = [v69 childWithTag:57152];

                if (v70)
                {
                  v71 = [v70 valueAsHexString];
                  [v68 setObject:v71 forKeyedSubscript:@"extendedFunction"];

                  LODWORD(v71) = [v70 valueAsUnsignedShort];
                  v72 = [v5[470] numberWithBool:(v71 >> 2) & 1];
                  [v68 setObject:v72 forKeyedSubscript:@"containerInstance"];

                  v73 = [v5[470] numberWithBool:(v71 >> 3) & 1];
                  [v68 setObject:v73 forKeyedSubscript:@"proxyInstance"];
                }

                v99 = v70;
                v74 = [v67 childWithTag:204];
                v75 = v74;
                if (v74)
                {
                  v76 = [v74 valueAsHexString];
                  [v68 setObject:v76 forKeyedSubscript:@"ssdAid"];
                }

                v77 = [v67 childrenWithTag:221];
                if ([v77 count])
                {
                  v97 = v67;
                  v78 = [objc_alloc(v4[61]) initWithCapacity:{objc_msgSend(v77, "count")}];
                  v115 = 0u;
                  v116 = 0u;
                  v117 = 0u;
                  v118 = 0u;
                  v79 = v77;
                  v80 = [v79 countByEnumeratingWithState:&v115 objects:buf count:16];
                  if (v80)
                  {
                    v81 = v80;
                    v82 = *v116;
                    do
                    {
                      for (j = 0; j != v81; j = j + 1)
                      {
                        if (*v116 != v82)
                        {
                          objc_enumerationMutation(v79);
                        }

                        v84 = [*(*(&v115 + 1) + 8 * j) valueAsHexString];
                        [v78 addObject:v84];
                      }

                      v81 = [v79 countByEnumeratingWithState:&v115 objects:buf count:16];
                    }

                    while (v81);
                  }

                  [v68 setObject:v78 forKeyedSubscript:@"multiSEApplicationGroup"];
                  a1 = v96;
                  v67 = v97;
                  v4 = RBSProcessMonitor_ptr;
                  v5 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                  v22 = v98;
                }

                v40 = v100;
              }

              v41 = v101;
            }

LABEL_83:
            if (++v42 == v102)
            {
              v102 = [v40 countByEnumeratingWithState:&v107 objects:v120 count:16];
              if (!v102)
              {
LABEL_85:

                [*(*(*(a1 + 64) + 8) + 40) addObject:v22];
                goto LABEL_88;
              }

              continue;
            }

            goto LABEL_33;
          }
        }

LABEL_91:

        v6 = v94 + 1;
      }

      while ((v94 + 1) != v93);
      v87 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
      v93 = v87;
    }

    while (v87);
  }
}

id sub_10018EE10(id *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = a5;
  if (!a1)
  {
    v17 = 0;
    goto LABEL_22;
  }

  v49 = 79;
  v50 = 92;
  v51 = a4;
  v48 = 3;
  if (a4 >= 0x100)
  {
    v10 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    v64[0] = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v65[0] = v12;
    v65[1] = &off_100332B98;
    v64[1] = @"Line";
    v64[2] = @"Method";
    v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
    v65[2] = v13;
    v64[3] = NSDebugDescriptionErrorKey;
    v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1111];
    v65[3] = v14;
    v64[4] = NSLocalizedFailureReasonErrorKey;
    v15 = [[NSString alloc] initWithFormat:@"Tag list length too long"];
    v65[4] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:5];
    v17 = [v10 initWithDomain:v11 code:10 userInfo:v16];

    goto LABEL_20;
  }

  v18 = [NFCommandAPDU buildAPDUHeaderWithClass:128 instruction:175 p1:a2 p2:2 len:(a4 + 4) useExtendedLength:1];
  if (!v18)
  {
    v24 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    v62[0] = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithUTF8String:"No resources"];
    v63[0] = v12;
    v63[1] = &off_100332BB0;
    v62[1] = @"Line";
    v62[2] = @"Method";
    v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
    v63[2] = v13;
    v62[3] = NSDebugDescriptionErrorKey;
    v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1122];
    v63[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:4];
    v17 = [v24 initWithDomain:v11 code:34 userInfo:v15];
    goto LABEL_20;
  }

  v19 = v18;
  [v18 appendBytes:&v49 length:4];
  [v19 appendBytes:a3 length:a4];
  v20 = [NFCommandAPDU appendExpectedLength:0 usingExtendedLength:1 toAPDU:v19];
  if (v20)
  {
    v11 = v20;
    v21 = [NSError alloc];
    v13 = [NSString stringWithUTF8String:"nfcd"];
    v22 = [v11 code];
    v60[0] = NSLocalizedDescriptionKey;
    if ([v11 code] > 75)
    {
      v23 = 76;
    }

    else
    {
      v23 = [v11 code];
    }

    v14 = [NSString stringWithUTF8String:off_10031AB10[v23]];
    v61[0] = v14;
    v61[1] = v11;
    v60[1] = NSUnderlyingErrorKey;
    v60[2] = @"Line";
    v61[2] = &off_100332BC8;
    v60[3] = @"Method";
    v15 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
    v61[3] = v15;
    v60[4] = NSDebugDescriptionErrorKey;
    v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1129];
    v61[4] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:5];
    v17 = [v21 initWithDomain:v13 code:v22 userInfo:v31];

LABEL_19:
    v12 = v19;
    goto LABEL_20;
  }

  v25 = [[NSData alloc] initWithBytes:&unk_100297814 length:8];
  v26 = sub_1001595DC(a1, v25, 0);

  if (v26)
  {
    while (1)
    {
      v47 = 0;
      v13 = sub_1001579EC(a1, v19, 0, &v47);
      v11 = v47;
      if (v11)
      {
        break;
      }

      if (!v13 || [v13 length] <= 1)
      {
        v44 = [NSError alloc];
        v14 = [NSString stringWithUTF8String:"nfcd"];
        v54[0] = NSLocalizedDescriptionKey;
        v15 = [NSString stringWithUTF8String:"Command Error"];
        v55[0] = v15;
        v55[1] = &off_100332C10;
        v54[1] = @"Line";
        v54[2] = @"Method";
        v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
        v55[2] = v45;
        v54[3] = NSDebugDescriptionErrorKey;
        v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1145];
        v55[3] = v36;
        v54[4] = NSLocalizedFailureReasonErrorKey;
        v37 = [[NSString alloc] initWithFormat:@"Null or too-short response"];
        v55[4] = v37;
        v38 = v55;
        v39 = v54;
LABEL_27:
        v40 = [NSDictionary dictionaryWithObjects:v38 forKeys:v39 count:5];
        v17 = [v44 initWithDomain:v14 code:16 userInfo:v40];

        v41 = v45;
        goto LABEL_32;
      }

      v27 = [v13 bytes];
      v28 = *&v27[[v13 length] - 2];
      v29 = __rev16(v28);
      if (v29 != 25360 && v29 != 36864)
      {
        v44 = [NSError alloc];
        v14 = [NSString stringWithUTF8String:"nfcd"];
        v52[0] = NSLocalizedDescriptionKey;
        v15 = [NSString stringWithUTF8String:"Command Error"];
        v53[0] = v15;
        v53[1] = &off_100332C28;
        v52[1] = @"Line";
        v52[2] = @"Method";
        v45 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
        v53[2] = v45;
        v52[3] = NSDebugDescriptionErrorKey;
        v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1149];
        v53[3] = v36;
        v52[4] = NSLocalizedFailureReasonErrorKey;
        v37 = [[NSString alloc] initWithFormat:@"error status word 0x%hx", v29];
        v53[4] = v37;
        v38 = v53;
        v39 = v52;
        goto LABEL_27;
      }

      v9[2](v9, [v13 bytes], objc_msgSend(v13, "length") - 2);

      [v19 replaceBytesInRange:3 withBytes:1 length:{&v48, 1}];
      if (v28 != 4195)
      {
        v17 = 0;
        goto LABEL_21;
      }
    }

    v46 = [NSError alloc];
    v14 = [NSString stringWithUTF8String:"nfcd"];
    v42 = [v11 code];
    v56[0] = NSLocalizedDescriptionKey;
    if ([v11 code] > 75)
    {
      v43 = 76;
    }

    else
    {
      v43 = [v11 code];
    }

    v15 = [NSString stringWithUTF8String:off_10031AB10[v43]];
    v57[0] = v15;
    v57[1] = v11;
    v56[1] = NSUnderlyingErrorKey;
    v56[2] = @"Line";
    v57[2] = &off_100332BF8;
    v56[3] = @"Method";
    v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
    v57[3] = v41;
    v56[4] = NSDebugDescriptionErrorKey;
    v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1142];
    v57[4] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:5];
    v17 = [v46 initWithDomain:v14 code:v42 userInfo:v37];
LABEL_32:

    goto LABEL_19;
  }

  v33 = [NSError alloc];
  v12 = [NSString stringWithUTF8String:"nfcd"];
  v58[0] = NSLocalizedDescriptionKey;
  v13 = [NSString stringWithUTF8String:"Command Error"];
  v59[0] = v13;
  v59[1] = &off_100332BE0;
  v58[1] = @"Line";
  v58[2] = @"Method";
  v14 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:")];
  v59[2] = v14;
  v58[3] = NSDebugDescriptionErrorKey;
  v15 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendProprietaryGetStatusCommand:tagList:tagListLen:callback:"), 1133];
  v59[3] = v15;
  v58[4] = NSLocalizedFailureReasonErrorKey;
  v34 = [[NSString alloc] initWithFormat:@"Failed to select ISD"];
  v59[4] = v34;
  v35 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:5];
  v17 = [v33 initWithDomain:v12 code:16 userInfo:v35];

  v11 = v19;
LABEL_20:

  v19 = v11;
LABEL_21:

LABEL_22:

  return v17;
}

uint64_t sub_10018F9C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) objectForKeyedSubscript:{@"associatedSSD", v13}];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

void sub_10018FB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [NFTLV TLVSsWithBytes:a2 length:a3 requireDefiniteEncoding:1];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v106 = 0u;
  v4 = [obj countByEnumeratingWithState:&v103 objects:v120 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v104;
    v91 = *v104;
    do
    {
      v7 = 0;
      v92 = v5;
      do
      {
        if (*v104 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v103 + 1) + 8 * v7);
        v9 = [v8 childWithTag:79];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 valueAsHexString];
          v97 = v10;
          if (*(a1 + 72) == 1 && (v12 = *(a1 + 40), [v10 value], v13 = objc_claimAutoreleasedReturnValue(), LODWORD(v12) = objc_msgSend(v12, "containsObject:", v13), v13, v12))
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v15 = Logger;
              Class = object_getClass(*(a1 + 32));
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(*(a1 + 32));
              Name = sel_getName(*(a1 + 64));
              v18 = 45;
              if (isMetaClass)
              {
                v18 = 43;
              }

              v15(3, "%c[%{public}s %{public}s]:%i Hiding package AID %{public}@", v18, ClassName, Name, 1035, v11);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v19 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v20))
              {
                v21 = 43;
              }

              else
              {
                v21 = 45;
              }

              v22 = object_getClassName(*(a1 + 32));
              v23 = sel_getName(*(a1 + 64));
              *buf = 67110146;
              v108 = v21;
              v109 = 2082;
              v110 = v22;
              v111 = 2082;
              v112 = v23;
              v113 = 1024;
              v114 = 1035;
              v115 = 2114;
              v116 = v11;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Hiding package AID %{public}@", buf, 0x2Cu);
            }
          }

          else
          {
            v98 = v11;
            v94 = v8;
            v24 = [v8 childrenWithTag:132];
            v25 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v24, "count")}];
            v99 = 0u;
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v19 = v24;
            v26 = [v19 countByEnumeratingWithState:&v99 objects:v119 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v100;
LABEL_20:
              v29 = 0;
              while (1)
              {
                if (*v100 != v28)
                {
                  objc_enumerationMutation(v19);
                }

                v30 = *(*(&v99 + 1) + 8 * v29);
                if (*(a1 + 72) == 1)
                {
                  v31 = *(a1 + 48);
                  v32 = [*(*(&v99 + 1) + 8 * v29) value];
                  LODWORD(v31) = [v31 containsObject:v32];

                  if (v31)
                  {
                    break;
                  }
                }

                v33 = [v30 valueAsHexString];
                [v25 addObject:v33];

                if (v27 == ++v29)
                {
                  v27 = [v19 countByEnumeratingWithState:&v99 objects:v119 count:16];
                  if (v27)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_27;
                }
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v44 = NFLogGetLogger();
              if (v44)
              {
                v45 = v44;
                v46 = object_getClass(*(a1 + 32));
                v47 = class_isMetaClass(v46);
                v48 = object_getClassName(*(a1 + 32));
                v49 = sel_getName(*(a1 + 64));
                v50 = [v30 valueAsHexString];
                v51 = 45;
                if (v47)
                {
                  v51 = 43;
                }

                v45(6, "%c[%{public}s %{public}s]:%i Hiding package %{public}@ / module %{public}@", v51, v48, v49, 1044, v98, v50);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v52 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v53 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v53))
                {
                  v54 = 43;
                }

                else
                {
                  v54 = 45;
                }

                v55 = object_getClassName(*(a1 + 32));
                v56 = sel_getName(*(a1 + 64));
                v57 = [v30 valueAsHexString];
                *buf = 67110402;
                v108 = v54;
                v109 = 2082;
                v110 = v55;
                v111 = 2082;
                v112 = v56;
                v113 = 1024;
                v114 = 1044;
                v115 = 2114;
                v116 = v98;
                v117 = 2114;
                v118 = v57;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Hiding package %{public}@ / module %{public}@", buf, 0x36u);
              }

              v11 = v98;
              if (*(a1 + 72))
              {
                goto LABEL_76;
              }
            }

            else
            {
LABEL_27:

              v11 = v98;
            }

            v58 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v11, @"packageAid", v25, @"moduleAids", 0}];
            v59 = [v94 childWithTag:206];
            v60 = v59;
            if (v59)
            {
              v61 = [v59 valueAsHexString];
              if (v61)
              {
                [v58 setObject:v61 forKeyedSubscript:@"version"];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v62 = NFLogGetLogger();
                if (v62)
                {
                  v63 = v62;
                  v64 = object_getClass(*(a1 + 32));
                  v65 = class_isMetaClass(v64);
                  v85 = object_getClassName(*(a1 + 32));
                  v89 = sel_getName(*(a1 + 64));
                  v66 = 45;
                  if (v65)
                  {
                    v66 = 43;
                  }

                  v63(4, "%c[%{public}s %{public}s]:%i Missing package version info %{public}@", v66, v85, v89, 1064, v98);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v67 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  v68 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v68))
                  {
                    v69 = 43;
                  }

                  else
                  {
                    v69 = 45;
                  }

                  v70 = object_getClassName(*(a1 + 32));
                  v71 = sel_getName(*(a1 + 64));
                  *buf = 67110146;
                  v108 = v69;
                  v109 = 2082;
                  v110 = v70;
                  v111 = 2082;
                  v112 = v71;
                  v113 = 1024;
                  v114 = 1064;
                  v115 = 2114;
                  v116 = v98;
                  _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing package version info %{public}@", buf, 0x2Cu);
                }
              }
            }

            v72 = [v94 childWithTag:204];
            v73 = v72;
            if (v72)
            {
              v74 = [v72 valueAsHexString];
              if (v74)
              {
                [v58 setObject:v74 forKeyedSubscript:@"associatedSSD"];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v75 = NFLogGetLogger();
                if (v75)
                {
                  v76 = v75;
                  v77 = object_getClass(*(a1 + 32));
                  v95 = class_isMetaClass(v77);
                  v86 = object_getClassName(*(a1 + 32));
                  v90 = sel_getName(*(a1 + 64));
                  v78 = 45;
                  if (v95)
                  {
                    v78 = 43;
                  }

                  v76(4, "%c[%{public}s %{public}s]:%i Missing associated SSD String info %{public}@", v78, v86, v90, 1075, v98);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v79 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  v80 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v80))
                  {
                    v81 = 43;
                  }

                  else
                  {
                    v81 = 45;
                  }

                  v96 = v81;
                  v82 = object_getClassName(*(a1 + 32));
                  v83 = sel_getName(*(a1 + 64));
                  *buf = 67110146;
                  v108 = v96;
                  v109 = 2082;
                  v110 = v82;
                  v111 = 2082;
                  v112 = v83;
                  v113 = 1024;
                  v114 = 1075;
                  v115 = 2114;
                  v116 = v98;
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing associated SSD String info %{public}@", buf, 0x2Cu);
                }
              }
            }

            [*(*(*(a1 + 56) + 8) + 40) addObject:v58];

            v11 = v98;
LABEL_76:

            v6 = v91;
            v5 = v92;
          }

          v10 = v97;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v34 = NFLogGetLogger();
          if (v34)
          {
            v35 = v34;
            v36 = object_getClass(*(a1 + 32));
            v37 = class_isMetaClass(v36);
            v38 = object_getClassName(*(a1 + 32));
            v88 = sel_getName(*(a1 + 64));
            v39 = 45;
            if (v37)
            {
              v39 = 43;
            }

            v35(3, "%c[%{public}s %{public}s]:%i Missing packgeTag?!", v39, v38, v88, 1030);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v11 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v40 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v40))
            {
              v41 = 43;
            }

            else
            {
              v41 = 45;
            }

            v42 = object_getClassName(*(a1 + 32));
            v43 = sel_getName(*(a1 + 64));
            *buf = 67109890;
            v108 = v41;
            v109 = 2082;
            v110 = v42;
            v111 = 2082;
            v112 = v43;
            v113 = 1024;
            v114 = 1030;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing packgeTag?!", buf, 0x22u);
          }
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v103 objects:v120 count:16];
    }

    while (v5);
  }
}

id sub_10019093C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = [a2 UID];
  v4 = [v2 objectForKey:v3];

  v5 = [v4 objectForKey:@"type"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1001909EC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = [a2 UID];
  v4 = [v2 objectForKey:v3];

  v5 = [v4 objectForKey:@"tagHandle"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 pointerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100190BD0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a1;
    objc_sync_enter(v6);
    if (*(v6 + 169))
    {
      v7 = 3;
    }

    else
    {
      v8 = malloc_type_calloc(1uLL, 0x60uLL, 0x108004063299CC8uLL);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName("connectTag:updatedTag:");
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i Connecting to tag: %{public}@", v13, ClassName, Name, 93, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = object_getClass(v6);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        *buf = 67110146;
        v39 = v16;
        v40 = 2082;
        v41 = object_getClassName(v6);
        v42 = 2082;
        v43 = sel_getName("connectTag:updatedTag:");
        v44 = 1024;
        v45 = 93;
        v46 = 2114;
        v47 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Connecting to tag: %{public}@", buf, 0x2Cu);
      }

      v17 = *(v6 + 1);
      sub_1001909EC(v6, v5);
      v18 = NFDriverRemoteDevConnect();
      if (v18)
      {
        v19 = v18;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v20 = NFLogGetLogger();
        if (v20)
        {
          v21 = v20;
          v22 = object_getClass(v6);
          v23 = class_isMetaClass(v22);
          v35 = object_getClassName(v6);
          v37 = sel_getName("connectTag:updatedTag:");
          v24 = 45;
          if (v23)
          {
            v24 = 43;
          }

          v21(3, "%c[%{public}s %{public}s]:%i Failed to connect to tag: %{public}@", v24, v35, v37, 100, v5);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = object_getClass(v6);
          if (class_isMetaClass(v26))
          {
            v27 = 43;
          }

          else
          {
            v27 = 45;
          }

          v28 = object_getClassName(v6);
          v29 = sel_getName("connectTag:updatedTag:");
          *buf = 67110146;
          v39 = v27;
          v40 = 2082;
          v41 = v28;
          v42 = 2082;
          v43 = v29;
          v44 = 1024;
          v45 = 100;
          v46 = 2114;
          v47 = v5;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to connect to tag: %{public}@", buf, 0x2Cu);
        }

        if (v8)
        {
          free(v8);
        }

        switch(v19)
        {
          case 4:
            v7 = 35;
            break;
          case 18:
            v7 = 51;
            break;
          case 23:
            v7 = 64;
            break;
          default:
            v7 = 28;
            break;
        }
      }

      else
      {
        if (a3)
        {
          *a3 = [v6 _refreshTagInfo:v5 update:v8];
        }

        if (v8)
        {
          free(v8);
        }

        v30 = *(v6 + 2);
        *(v6 + 2) = 0;

        if ([v6 _isEMVPolling])
        {
          v31 = dispatch_semaphore_create(0);
          v32 = *(v6 + 2);
          *(v6 + 2) = v31;
        }

        v7 = 0;
      }
    }

    objc_sync_exit(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10019117C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a1;
    objc_sync_enter(v6);
    if (*(v6 + 169))
    {
      v7 = 3;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName("disconnectTag:tagRemovalDetect:");
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v9(6, "%c[%{public}s %{public}s]:%i disconnecting from tag: %{public}@, tagRemovalDetect=%d", v13, ClassName, Name, 158, v5, a3);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = object_getClass(v6);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        *buf = 67110402;
        v49 = v16;
        v50 = 2082;
        v51 = object_getClassName(v6);
        v52 = 2082;
        v53 = sel_getName("disconnectTag:tagRemovalDetect:");
        v54 = 1024;
        v55 = 158;
        v56 = 2114;
        v57 = v5;
        v58 = 1024;
        v59 = a3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i disconnecting from tag: %{public}@, tagRemovalDetect=%d", buf, 0x32u);
      }

      if ((*(v6 + 31) & 0x8000000) != 0 || (v17 = *(v6 + 1), sub_1001909EC(v6, v5), v18 = NFDriverRemoteDevDisconnect(), v18 == 19))
      {
        [v6 _cardRemovalDetect:v5];
        v19 = *(v6 + 1);
        sub_1001909EC(v6, v5);
        v18 = NFDriverRemoteDevDisconnect();
      }

      if (!a3 || v18)
      {
        v7 = 0;
        if (v18 && v18 != 6)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v32 = NFLogGetLogger();
          if (v32)
          {
            v33 = v32;
            v34 = object_getClass(v6);
            v35 = class_isMetaClass(v34);
            v44 = object_getClassName(v6);
            v47 = sel_getName("disconnectTag:tagRemovalDetect:");
            v36 = 45;
            if (v35)
            {
              v36 = 43;
            }

            v33(3, "%c[%{public}s %{public}s]:%i Failed to disconnect tag: %{public}@", v36, v44, v47, 187, v5);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v37 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = object_getClass(v6);
            if (class_isMetaClass(v38))
            {
              v39 = 43;
            }

            else
            {
              v39 = 45;
            }

            v40 = object_getClassName(v6);
            v41 = sel_getName("disconnectTag:tagRemovalDetect:");
            *buf = 67110146;
            v49 = v39;
            v50 = 2082;
            v51 = v40;
            v52 = 2082;
            v53 = v41;
            v54 = 1024;
            v55 = 187;
            v56 = 2114;
            v57 = v5;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disconnect tag: %{public}@", buf, 0x2Cu);
          }

          if (v18 == 18)
          {
            v7 = 51;
          }

          else
          {
            v7 = 15;
          }
        }
      }

      else
      {
        if (*(v6 + 2))
        {
          if ([v6 _isEMVPolling])
          {
            v20 = dispatch_time(0, 300000000000);
            if (dispatch_semaphore_wait(*(v6 + 2), v20))
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v21 = NFLogGetLogger();
              if (v21)
              {
                v22 = v21;
                v23 = object_getClass(v6);
                v24 = class_isMetaClass(v23);
                v25 = object_getClassName(v6);
                v46 = sel_getName("disconnectTag:tagRemovalDetect:");
                v26 = 45;
                if (v24)
                {
                  v26 = 43;
                }

                v22(3, "%c[%{public}s %{public}s]:%i Timeout on tag remove", v26, v25, v46, 182);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v27 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = object_getClass(v6);
                if (class_isMetaClass(v28))
                {
                  v29 = 43;
                }

                else
                {
                  v29 = 45;
                }

                v30 = object_getClassName(v6);
                v31 = sel_getName("disconnectTag:tagRemovalDetect:");
                *buf = 67109890;
                v49 = v29;
                v50 = 2082;
                v51 = v30;
                v52 = 2082;
                v53 = v31;
                v54 = 1024;
                v55 = 182;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Timeout on tag remove", buf, 0x22u);
              }
            }
          }
        }

        v7 = 0;
      }

      if (a3)
      {
        sub_1001E6EFC(*(v6 + 6), 0);
        if ([*(v6 + 7) readerModeStoppedShouldCooloffRun])
        {
          v42 = sub_10021A4A0(v6, @"Cooloff", 1uLL);
        }
      }
    }

    objc_sync_exit(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1001916A4(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v7 = a2;
  if (!a1)
  {
    a4 = 0;
    goto LABEL_47;
  }

  v8 = a1;
  objc_sync_enter(v8);
  if (*(v8 + 169) != 1)
  {
    v18 = *(v8 + 1);
    sub_1001909EC(v8, v7);
    v19 = NFDriverRemoteDevCheckNdef();
    if (!v19)
    {
      if (a4)
      {
        *a4 = 0;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v32 = Logger;
        Class = object_getClass(v8);
        if (class_isMetaClass(Class))
        {
          v34 = 43;
        }

        else
        {
          v34 = 45;
        }

        ClassName = object_getClassName(v8);
        Name = sel_getName("queryTagNDEFCapability:hasNdefAbility:error:");
        if (a3)
        {
          v37 = *(a3 + 16);
          v38 = *(a3 + 17);
          v40 = *a3;
          v39 = a3[1];
        }

        else
        {
          v39 = 0;
          v37 = 0;
          v38 = 0;
          v40 = 0;
        }

        v32(6, "%c[%{public}s %{public}s]:%i read=%d write=%d capacity=%lu, messageSize=%lu tag=%{public}@", v34, ClassName, Name, 242, v37, v38, v39, v40, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v41 = object_getClass(v8);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        v43 = object_getClassName(v8);
        v44 = sel_getName("queryTagNDEFCapability:hasNdefAbility:error:");
        if (a3)
        {
          v45 = *(a3 + 16);
          v46 = *(a3 + 17);
          v48 = *a3;
          v47 = a3[1];
        }

        else
        {
          v47 = 0;
          v45 = 0;
          v46 = 0;
          v48 = 0;
        }

        *buf = 67111170;
        v52 = v42;
        v53 = 2082;
        v54 = v43;
        v55 = 2082;
        v56 = v44;
        v57 = 1024;
        v58 = 242;
        v59 = 1024;
        v60 = v45;
        v61 = 1024;
        v62 = v46;
        v63 = 2048;
        v64 = v47;
        v65 = 2048;
        v66 = v48;
        v67 = 2114;
        v68 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i read=%d write=%d capacity=%lu, messageSize=%lu tag=%{public}@", buf, 0x4Cu);
      }

      a4 = 1;
      goto LABEL_45;
    }

    v20 = v19;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(v8);
      isMetaClass = class_isMetaClass(v23);
      v25 = object_getClassName(v8);
      v50 = sel_getName("queryTagNDEFCapability:hasNdefAbility:error:");
      v26 = 45;
      if (isMetaClass)
      {
        v26 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Failed to perform Ndef check", v26, v25, v50, 214);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(v8);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      *buf = 67109890;
      v52 = v29;
      v53 = 2082;
      v54 = object_getClassName(v8);
      v55 = 2082;
      v56 = sel_getName("queryTagNDEFCapability:hasNdefAbility:error:");
      v57 = 1024;
      v58 = 214;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to perform Ndef check", buf, 0x22u);
    }

    if (!a4)
    {
      goto LABEL_46;
    }

    v30 = [NSError alloc];
    v10 = [NSString stringWithUTF8String:"nfcd"];
    if (v20 > 11)
    {
      switch(v20)
      {
        case 12:
          v77[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"Tag Not NDEF formatted"];
          v78[0] = v11;
          v78[1] = &off_100332C88;
          v77[1] = @"Line";
          v77[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v78[2] = v12;
          v77[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 221];
          v78[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:4];
          v15 = v30;
          v16 = v10;
          v17 = 37;
          goto LABEL_5;
        case 18:
          v75[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"RF Deactivated"];
          v76[0] = v11;
          v76[1] = &off_100332CA0;
          v75[1] = @"Line";
          v75[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v76[2] = v12;
          v75[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 223];
          v76[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:4];
          v15 = v30;
          v16 = v10;
          v17 = 51;
          goto LABEL_5;
        case 23:
          v73[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
          v74[0] = v11;
          v74[1] = &off_100332CB8;
          v73[1] = @"Line";
          v73[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v74[2] = v12;
          v73[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 225];
          v74[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:4];
          v15 = v30;
          v16 = v10;
          v17 = 64;
          goto LABEL_5;
      }
    }

    else
    {
      switch(v20)
      {
        case 4:
          v71[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"SE not available"];
          v72[0] = v11;
          v72[1] = &off_100332CD0;
          v71[1] = @"Line";
          v71[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v72[2] = v12;
          v71[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 227];
          v72[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:4];
          v15 = v30;
          v16 = v10;
          v17 = 35;
          goto LABEL_5;
        case 5:
          v79[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v80[0] = v11;
          v80[1] = &off_100332C70;
          v79[1] = @"Line";
          v79[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v80[2] = v12;
          v79[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 219];
          v80[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];
          v15 = v30;
          v16 = v10;
          v17 = 10;
          goto LABEL_5;
        case 6:
          v81[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"Tag Not Found"];
          v82[0] = v11;
          v82[1] = &off_100332C58;
          v81[1] = @"Line";
          v81[2] = @"Method";
          v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
          v82[2] = v12;
          v81[3] = NSDebugDescriptionErrorKey;
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 217];
          v82[3] = v13;
          v14 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:4];
          v15 = v30;
          v16 = v10;
          v17 = 28;
          goto LABEL_5;
      }
    }

    v69[0] = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:"Stack Error"];
    v70[0] = v11;
    v70[1] = &off_100332CE8;
    v69[1] = @"Line";
    v69[2] = @"Method";
    v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
    v70[2] = v12;
    v69[3] = NSDebugDescriptionErrorKey;
    v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 229];
    v70[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:4];
    v15 = v30;
    v16 = v10;
    v17 = 15;
    goto LABEL_5;
  }

  if (a4)
  {
    v9 = [NSError alloc];
    v10 = [NSString stringWithUTF8String:"nfcd"];
    v83[0] = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:"Aborted"];
    v84[0] = v11;
    v84[1] = &off_100332C40;
    v83[1] = @"Line";
    v83[2] = @"Method";
    v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:")];
    v84[2] = v12;
    v83[3] = NSDebugDescriptionErrorKey;
    v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryTagNDEFCapability:hasNdefAbility:error:"), 208];
    v84[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:4];
    v15 = v9;
    v16 = v10;
    v17 = 3;
LABEL_5:
    *a4 = [v15 initWithDomain:v16 code:v17 userInfo:v14];

    a4 = 0;
LABEL_45:
  }

LABEL_46:
  objc_sync_exit(v8);

LABEL_47:
  return a4;
}

uint64_t sub_100192220(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a1)
  {
    a3 = 0;
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a1;
    objc_sync_enter(v6);
    if (*(v6 + 169) == 1)
    {
      if (!a3)
      {
LABEL_40:
        objc_sync_exit(v6);
        goto LABEL_41;
      }

      v7 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v68[0] = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithUTF8String:"Aborted"];
      v69[0] = v9;
      v69[1] = &off_100332D18;
      v68[1] = @"Line";
      v68[2] = @"Method";
      v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
      v69[2] = v10;
      v68[3] = NSDebugDescriptionErrorKey;
      v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 258];
      v69[3] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];
      *a3 = [v7 initWithDomain:v8 code:3 userInfo:v12];
    }

    else
    {
      v67 = 0;
      memset(buf, 0, sizeof(buf));
      v27 = *(v6 + 1);
      sub_1001909EC(v6, v5);
      MiFareInfo = NFDriverRemoteDevGetMiFareInfo();
      if (!MiFareInfo)
      {
        if ((*buf - 1) > 4)
        {
          a3 = 9;
        }

        else
        {
          a3 = dword_1002979C8[*buf - 1];
        }

        goto LABEL_40;
      }

      v29 = MiFareInfo;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v31 = Logger;
        Class = object_getClass(v6);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v6);
        Name = sel_getName("queryMifareTagCapability:error:");
        v35 = 45;
        if (isMetaClass)
        {
          v35 = 43;
        }

        v31(3, "%c[%{public}s %{public}s]:%i Failed to query MIFARE info", v35, ClassName, Name, 265);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = object_getClass(v6);
        if (class_isMetaClass(v37))
        {
          v38 = 43;
        }

        else
        {
          v38 = 45;
        }

        *v58 = 67109890;
        v59 = v38;
        v60 = 2082;
        v61 = object_getClassName(v6);
        v62 = 2082;
        v63 = sel_getName("queryMifareTagCapability:error:");
        v64 = 1024;
        v65 = 265;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query MIFARE info", v58, 0x22u);
      }

      if (!a3)
      {
        goto LABEL_40;
      }

      v39 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      switch(v29)
      {
        case 4:
          v52[0] = NSLocalizedDescriptionKey;
          v40 = [NSString stringWithUTF8String:"SE not available"];
          v53[0] = v40;
          v53[1] = &off_100332D60;
          v52[1] = @"Line";
          v52[2] = @"Method";
          v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
          v53[2] = v41;
          v52[3] = NSDebugDescriptionErrorKey;
          v42 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 272];
          v53[3] = v42;
          v43 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:4];
          v44 = v39;
          v45 = v8;
          v46 = 35;
          break;
        case 23:
          v54[0] = NSLocalizedDescriptionKey;
          v40 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
          v55[0] = v40;
          v55[1] = &off_100332D48;
          v54[1] = @"Line";
          v54[2] = @"Method";
          v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
          v55[2] = v41;
          v54[3] = NSDebugDescriptionErrorKey;
          v42 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 270];
          v55[3] = v42;
          v43 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:4];
          v44 = v39;
          v45 = v8;
          v46 = 64;
          break;
        case 18:
          v56[0] = NSLocalizedDescriptionKey;
          v40 = [NSString stringWithUTF8String:"RF Deactivated"];
          v57[0] = v40;
          v57[1] = &off_100332D30;
          v56[1] = @"Line";
          v56[2] = @"Method";
          v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
          v57[2] = v41;
          v56[3] = NSDebugDescriptionErrorKey;
          v42 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 268];
          v57[3] = v42;
          v43 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
          v44 = v39;
          v45 = v8;
          v46 = 51;
          break;
        default:
          v50[0] = NSLocalizedDescriptionKey;
          v40 = [NSString stringWithUTF8String:"Stack Error"];
          v51[0] = v40;
          v51[1] = &off_100332D78;
          v50[1] = @"Line";
          v50[2] = @"Method";
          v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
          v51[2] = v41;
          v50[3] = NSDebugDescriptionErrorKey;
          v42 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 274];
          v51[3] = v42;
          v43 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:4];
          v44 = v39;
          v45 = v8;
          v46 = 15;
          break;
      }

      *a3 = [v44 initWithDomain:v45 code:v46 userInfo:v43];
    }

    a3 = 0;
    goto LABEL_40;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v14 = v13;
    v15 = object_getClass(a1);
    v16 = class_isMetaClass(v15);
    v17 = object_getClassName(a1);
    v48 = sel_getName("queryMifareTagCapability:error:");
    v18 = 45;
    if (v16)
    {
      v18 = 43;
    }

    v14(3, "%c[%{public}s %{public}s]:%i Invalid tag parameter", v18, v17, v48, 251);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = object_getClass(a1);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    *buf = 67109890;
    *&buf[4] = v21;
    *&buf[8] = 2082;
    *&buf[10] = object_getClassName(a1);
    *&buf[18] = 2082;
    *&buf[20] = sel_getName("queryMifareTagCapability:error:");
    *&buf[28] = 1024;
    *&buf[30] = 251;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag parameter", buf, 0x22u);
  }

  if (a3)
  {
    v22 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v70[0] = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v71[0] = v23;
    v71[1] = &off_100332D00;
    v70[1] = @"Line";
    v70[2] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName("queryMifareTagCapability:error:")];
    v71[2] = v24;
    v70[3] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("queryMifareTagCapability:error:"), 252];
    v71[3] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];
    *a3 = [v22 initWithDomain:v6 code:10 userInfo:v26];

    a3 = 0;
LABEL_41:
  }

LABEL_42:

  return a3;
}

void *sub_100192C04(void *a1, void *a2, unsigned int a3, void *a4)
{
  v7 = a2;
  if (a1)
  {
    v8 = a1;
    objc_sync_enter(v8);
    if (*(v8 + 169) == 1)
    {
      if (!a4)
      {
LABEL_34:
        objc_sync_exit(v8);

        goto LABEL_35;
      }

      v9 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v115[0] = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithUTF8String:"Aborted"];
      v116[0] = v11;
      v116[1] = &off_100332D90;
      v115[1] = @"Line";
      v115[2] = @"Method";
      v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
      v116[2] = v12;
      v115[3] = NSDebugDescriptionErrorKey;
      v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 307];
      v116[3] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:4];
      v15 = v9;
      v16 = v10;
      v17 = 3;
      goto LABEL_32;
    }

    if (a3 > 0x8000)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v19 = Logger;
        Class = object_getClass(v8);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v8);
        Name = sel_getName("readNdefDataFromTag:messageSize:error:");
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v19(5, "%c[%{public}s %{public}s]:%i NDEF message size is over the read limit", v23, ClassName, Name, 313);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = object_getClass(v8);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        *buf = 67109890;
        v100 = v26;
        v101 = 2082;
        v102 = object_getClassName(v8);
        v103 = 2082;
        v104 = sel_getName("readNdefDataFromTag:messageSize:error:");
        v105 = 1024;
        v106 = 313;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NDEF message size is over the read limit", buf, 0x22u);
      }

      if (!a4)
      {
        goto LABEL_34;
      }

      v27 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v113[0] = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithUTF8String:"NDEF message size is over the limit"];
      v114[0] = v11;
      v114[1] = &off_100332DA8;
      v113[1] = @"Line";
      v113[2] = @"Method";
      v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
      v114[2] = v12;
      v113[3] = NSDebugDescriptionErrorKey;
      v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 314];
      v114[3] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:4];
      v15 = v27;
      v16 = v10;
      v17 = 43;
      goto LABEL_32;
    }

    if (!a3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFLogGetLogger();
      if (v29)
      {
        v30 = v29;
        v31 = object_getClass(v8);
        v32 = class_isMetaClass(v31);
        v33 = object_getClassName(v8);
        v77 = sel_getName("readNdefDataFromTag:messageSize:error:");
        v34 = 45;
        if (v32)
        {
          v34 = 43;
        }

        v30(5, "%c[%{public}s %{public}s]:%i zero-length message", v34, v33, v77, 317);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = object_getClass(v8);
        if (class_isMetaClass(v36))
        {
          v37 = 43;
        }

        else
        {
          v37 = 45;
        }

        *buf = 67109890;
        v100 = v37;
        v101 = 2082;
        v102 = object_getClassName(v8);
        v103 = 2082;
        v104 = sel_getName("readNdefDataFromTag:messageSize:error:");
        v105 = 1024;
        v106 = 317;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i zero-length message", buf, 0x22u);
      }

      if (!a4)
      {
        goto LABEL_34;
      }

      v38 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v111[0] = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithUTF8String:"Zero-length NDEF message"];
      v112[0] = v11;
      v112[1] = &off_100332DC0;
      v111[1] = @"Line";
      v111[2] = @"Method";
      v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
      v112[2] = v12;
      v111[3] = NSDebugDescriptionErrorKey;
      v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 318];
      v112[3] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
      v15 = v38;
      v16 = v10;
      v17 = 49;
      goto LABEL_32;
    }

    if (a4)
    {
      *a4 = 0;
      if (!NFDataCreateWithLength())
      {
        v28 = [NSError alloc];
        v10 = [NSString stringWithUTF8String:"nfcd"];
        v81[0] = NSLocalizedDescriptionKey;
        v11 = [NSString stringWithUTF8String:"No resources"];
        v82[0] = v11;
        v82[1] = &off_100332E98;
        v81[1] = @"Line";
        v81[2] = @"Method";
        v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
        v82[2] = v12;
        v81[3] = NSDebugDescriptionErrorKey;
        v13 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 360];
        v82[3] = v13;
        v14 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:4];
        v15 = v28;
        v16 = v10;
        v17 = 34;
LABEL_32:
        *a4 = [v15 initWithDomain:v16 code:v17 userInfo:v14];

LABEL_33:
        a4 = 0;
        goto LABEL_34;
      }
    }

    else if (!NFDataCreateWithLength())
    {
      goto LABEL_33;
    }

    v40 = *(v8 + 1);
    sub_1001909EC(v8, v7);
    Ndef = NFDriverRemoteDevReadNdef();
    if (!Ndef)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(v8);
        v64 = class_isMetaClass(v63);
        v65 = object_getClassName(v8);
        v79 = sel_getName("readNdefDataFromTag:messageSize:error:");
        v66 = 45;
        if (v64)
        {
          v66 = 43;
        }

        v62(5, "%c[%{public}s %{public}s]:%i zero-length message", v66, v65, v79, 352);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v67 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = object_getClass(v8);
        if (class_isMetaClass(v68))
        {
          v69 = 43;
        }

        else
        {
          v69 = 45;
        }

        *buf = 67109890;
        v100 = v69;
        v101 = 2082;
        v102 = object_getClassName(v8);
        v103 = 2082;
        v104 = sel_getName("readNdefDataFromTag:messageSize:error:");
        v105 = 1024;
        v106 = 352;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i zero-length message", buf, 0x22u);
      }

      if (a4)
      {
        v70 = [NSError alloc];
        v71 = [NSString stringWithUTF8String:"nfcd"];
        v83[0] = NSLocalizedDescriptionKey;
        v72 = [NSString stringWithUTF8String:"Zero-length NDEF message"];
        v84[0] = v72;
        v84[1] = &off_100332E80;
        v83[1] = @"Line";
        v83[2] = @"Method";
        v73 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
        v84[2] = v73;
        v83[3] = NSDebugDescriptionErrorKey;
        v74 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 353];
        v84[3] = v74;
        v75 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:4];
        *a4 = [v70 initWithDomain:v71 code:49 userInfo:v75];

        a4 = 0;
      }

      goto LABEL_78;
    }

    v42 = Ndef;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFLogGetLogger();
    if (v43)
    {
      v44 = v43;
      v45 = object_getClass(v8);
      v46 = class_isMetaClass(v45);
      v47 = object_getClassName(v8);
      v78 = sel_getName("readNdefDataFromTag:messageSize:error:");
      v48 = 45;
      if (v46)
      {
        v48 = 43;
      }

      v44(3, "%c[%{public}s %{public}s]:%i Failed to read NDEF from tag %{public}@, status=%d", v48, v47, v78, 331, v7, v42);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = object_getClass(v8);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      *buf = 67110402;
      v100 = v51;
      v101 = 2082;
      v102 = object_getClassName(v8);
      v103 = 2082;
      v104 = sel_getName("readNdefDataFromTag:messageSize:error:");
      v105 = 1024;
      v106 = 331;
      v107 = 2114;
      v108 = v7;
      v109 = 1024;
      v110 = v42;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to read NDEF from tag %{public}@, status=%d", buf, 0x32u);
    }

    if (!a4)
    {
LABEL_78:
      NFDataRelease();
      goto LABEL_34;
    }

    v52 = [NSError alloc];
    v53 = [NSString stringWithUTF8String:"nfcd"];
    v80 = v52;
    if (v42 > 11)
    {
      switch(v42)
      {
        case 0xC:
          v93[0] = NSLocalizedDescriptionKey;
          v54 = [NSString stringWithUTF8String:"Tag Not NDEF formatted"];
          v94[0] = v54;
          v94[1] = &off_100332E08;
          v93[1] = @"Line";
          v93[2] = @"Method";
          v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v94[2] = v55;
          v93[3] = NSDebugDescriptionErrorKey;
          v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 338];
          v94[3] = v56;
          v57 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:4];
          v58 = v80;
          v59 = v53;
          v60 = 37;
          goto LABEL_77;
        case 0x12:
          v91[0] = NSLocalizedDescriptionKey;
          v54 = [NSString stringWithUTF8String:"RF Deactivated"];
          v92[0] = v54;
          v92[1] = &off_100332E20;
          v91[1] = @"Line";
          v91[2] = @"Method";
          v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v92[2] = v55;
          v91[3] = NSDebugDescriptionErrorKey;
          v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 340];
          v92[3] = v56;
          v57 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:4];
          v58 = v80;
          v59 = v53;
          v60 = 51;
          goto LABEL_77;
        case 0x17:
          v89[0] = NSLocalizedDescriptionKey;
          v54 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
          v90[0] = v54;
          v90[1] = &off_100332E38;
          v89[1] = @"Line";
          v89[2] = @"Method";
          v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v90[2] = v55;
          v89[3] = NSDebugDescriptionErrorKey;
          v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 342];
          v90[3] = v56;
          v57 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:4];
          v58 = v80;
          v59 = v53;
          v60 = 64;
          goto LABEL_77;
      }
    }

    else
    {
      switch(v42)
      {
        case 4:
          v87[0] = NSLocalizedDescriptionKey;
          v54 = [NSString stringWithUTF8String:"SE not available"];
          v88[0] = v54;
          v88[1] = &off_100332E50;
          v87[1] = @"Line";
          v87[2] = @"Method";
          v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v88[2] = v55;
          v87[3] = NSDebugDescriptionErrorKey;
          v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 344];
          v88[3] = v56;
          v57 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:4];
          v58 = v80;
          v59 = v53;
          v60 = 35;
          goto LABEL_77;
        case 5:
          v95[0] = NSLocalizedDescriptionKey;
          v54 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v96[0] = v54;
          v96[1] = &off_100332DF0;
          v95[1] = @"Line";
          v95[2] = @"Method";
          v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v96[2] = v55;
          v95[3] = NSDebugDescriptionErrorKey;
          v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 336];
          v96[3] = v56;
          v57 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:4];
          v58 = v80;
          v59 = v53;
          v60 = 10;
          goto LABEL_77;
        case 6:
          v97[0] = NSLocalizedDescriptionKey;
          v54 = [NSString stringWithUTF8String:"Connection Closed"];
          v98[0] = v54;
          v98[1] = &off_100332DD8;
          v97[1] = @"Line";
          v97[2] = @"Method";
          v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
          v98[2] = v55;
          v97[3] = NSDebugDescriptionErrorKey;
          v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 334];
          v98[3] = v56;
          v57 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:4];
          v58 = v80;
          v59 = v53;
          v60 = 21;
LABEL_77:
          *a4 = [v58 initWithDomain:v59 code:v60 userInfo:v57];

          a4 = 0;
          goto LABEL_78;
      }
    }

    v85[0] = NSLocalizedDescriptionKey;
    v54 = [NSString stringWithUTF8String:"Stack Error"];
    v86[0] = v54;
    v86[1] = &off_100332E68;
    v85[1] = @"Line";
    v85[2] = @"Method";
    v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readNdefDataFromTag:messageSize:error:")];
    v86[2] = v55;
    v85[3] = NSDebugDescriptionErrorKey;
    v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readNdefDataFromTag:messageSize:error:"), 346];
    v86[3] = v56;
    v57 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:4];
    v58 = v80;
    v59 = v53;
    v60 = 15;
    goto LABEL_77;
  }

  a4 = 0;
LABEL_35:

  return a4;
}

id sub_100193E90(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    a1 = sub_100193EC8(a1, a2, 0x8000u, a3);
    v3 = vars8;
  }

  return a1;
}

id sub_100193EC8(void *a1, void *a2, unsigned int a3, void *a4)
{
  if (a1)
  {
    v4 = sub_100192C04(a1, a2, a3, a4);
    if (v4)
    {
      v5 = [[NFNdefMessageInternal alloc] initWithBytes:objc_msgSend(v4 length:{"bytes"), objc_msgSend(v4, "length")}];
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

uint64_t sub_100193F64(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  if (!a1)
  {
    v23 = 0;
    goto LABEL_47;
  }

  v10 = a1;
  objc_sync_enter(v10);
  if (*(v10 + 169) != 1)
  {
    v12 = [v8 asData];
    [v12 bytes];
    [v12 length];
    v17 = NFDataCreateWithBytesNoCopy();
    v48 = v9;
    if (a5 && !v17)
    {
      v18 = [NSError alloc];
      v13 = [NSString stringWithUTF8String:"nfcd"];
      v77[0] = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"No resources"];
      v78[0] = v19;
      v78[1] = &off_100332EC8;
      v77[1] = @"Line";
      v77[2] = @"Method";
      v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
      v78[2] = v20;
      v77[3] = NSDebugDescriptionErrorKey;
      v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 400];
      v78[3] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:4];
      *a5 = [v18 initWithDomain:v13 code:34 userInfo:v22];

      goto LABEL_8;
    }

    v24 = *(v10 + 1);
    sub_1001909EC(v10, v9);
    v25 = NFDriverRemoteDevWriteNdef();
    v23 = v25 == 0;
    if (!v25)
    {
      if (a5)
      {
        *a5 = 0;
      }

      goto LABEL_44;
    }

    v26 = v25;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v28 = Logger;
      Class = object_getClass(v10);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v10);
      Name = sel_getName("writeNdefData:toTag:nLengthOptimization:error:");
      v31 = 45;
      if (isMetaClass)
      {
        v31 = 43;
      }

      v28(3, "%c[%{public}s %{public}s]:%i Failed to write NDEF data to tag %{public}@", v31, ClassName, Name, 406, v48);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = object_getClass(v10);
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      *buf = 67110146;
      v68 = v34;
      v69 = 2082;
      v70 = object_getClassName(v10);
      v71 = 2082;
      v72 = sel_getName("writeNdefData:toTag:nLengthOptimization:error:");
      v73 = 1024;
      v74 = 406;
      v75 = 2114;
      v76 = v48;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to write NDEF data to tag %{public}@", buf, 0x2Cu);
    }

    v23 = v23;
    if (!a5)
    {
LABEL_44:
      NFDataRelease();
      goto LABEL_45;
    }

    v35 = [NSError alloc];
    v36 = [NSString stringWithUTF8String:"nfcd"];
    v47 = v35;
    if (v26 > 11)
    {
      if (v26 > 17)
      {
        if (v26 == 18)
        {
          v55[0] = NSLocalizedDescriptionKey;
          v46 = [NSString stringWithUTF8String:"RF Deactivated"];
          v56[0] = v46;
          v56[1] = &off_100332F58;
          v55[1] = @"Line";
          v55[2] = @"Method";
          v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
          v56[2] = v37;
          v55[3] = NSDebugDescriptionErrorKey;
          v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 420];
          v56[3] = v38;
          v39 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:4];
          v40 = v47;
          v41 = v36;
          v42 = 51;
          goto LABEL_43;
        }

        if (v26 == 23)
        {
          v53[0] = NSLocalizedDescriptionKey;
          v46 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
          v54[0] = v46;
          v54[1] = &off_100332F70;
          v53[1] = @"Line";
          v53[2] = @"Method";
          v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
          v54[2] = v37;
          v53[3] = NSDebugDescriptionErrorKey;
          v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 422];
          v54[3] = v38;
          v39 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:4];
          v40 = v47;
          v41 = v36;
          v42 = 64;
          goto LABEL_43;
        }
      }

      else
      {
        if (v26 == 12)
        {
          v61[0] = NSLocalizedDescriptionKey;
          v46 = [NSString stringWithUTF8String:"Tag Not NDEF formatted"];
          v62[0] = v46;
          v62[1] = &off_100332F10;
          v61[1] = @"Line";
          v61[2] = @"Method";
          v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
          v62[2] = v37;
          v61[3] = NSDebugDescriptionErrorKey;
          v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 414];
          v62[3] = v38;
          v39 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:4];
          v40 = v47;
          v41 = v36;
          v42 = 37;
          goto LABEL_43;
        }

        if (v26 == 15)
        {
          v59[0] = NSLocalizedDescriptionKey;
          v46 = [NSString stringWithUTF8String:"NDEF message size is over the limit"];
          v60[0] = v46;
          v60[1] = &off_100332F28;
          v59[1] = @"Line";
          v59[2] = @"Method";
          v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
          v60[2] = v37;
          v59[3] = NSDebugDescriptionErrorKey;
          v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 416];
          v60[3] = v38;
          v39 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
          v40 = v47;
          v41 = v36;
          v42 = 43;
          goto LABEL_43;
        }
      }
    }

    else if (v26 > 4)
    {
      if (v26 == 5)
      {
        v63[0] = NSLocalizedDescriptionKey;
        v46 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v64[0] = v46;
        v64[1] = &off_100332EF8;
        v63[1] = @"Line";
        v63[2] = @"Method";
        v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
        v64[2] = v37;
        v63[3] = NSDebugDescriptionErrorKey;
        v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 412];
        v64[3] = v38;
        v39 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:4];
        v40 = v47;
        v41 = v36;
        v42 = 10;
        goto LABEL_43;
      }

      if (v26 == 6)
      {
        v65[0] = NSLocalizedDescriptionKey;
        v46 = [NSString stringWithUTF8String:"Connection Closed"];
        v66[0] = v46;
        v66[1] = &off_100332EE0;
        v65[1] = @"Line";
        v65[2] = @"Method";
        v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
        v66[2] = v37;
        v65[3] = NSDebugDescriptionErrorKey;
        v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 410];
        v66[3] = v38;
        v39 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:4];
        v40 = v47;
        v41 = v36;
        v42 = 21;
        goto LABEL_43;
      }
    }

    else
    {
      if (v26 == 3)
      {
        v57[0] = NSLocalizedDescriptionKey;
        v46 = [NSString stringWithUTF8String:"No resources"];
        v58[0] = v46;
        v58[1] = &off_100332F40;
        v57[1] = @"Line";
        v57[2] = @"Method";
        v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
        v58[2] = v37;
        v57[3] = NSDebugDescriptionErrorKey;
        v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 418];
        v58[3] = v38;
        v39 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];
        v40 = v47;
        v41 = v36;
        v42 = 34;
        goto LABEL_43;
      }

      if (v26 == 4)
      {
        v51[0] = NSLocalizedDescriptionKey;
        v46 = [NSString stringWithUTF8String:"SE not available"];
        v52[0] = v46;
        v52[1] = &off_100332F88;
        v51[1] = @"Line";
        v51[2] = @"Method";
        v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
        v52[2] = v37;
        v51[3] = NSDebugDescriptionErrorKey;
        v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 424];
        v52[3] = v38;
        v39 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
        v40 = v47;
        v41 = v36;
        v42 = 35;
LABEL_43:
        *a5 = [v40 initWithDomain:v41 code:v42 userInfo:v39];

        goto LABEL_44;
      }
    }

    v49[0] = NSLocalizedDescriptionKey;
    v46 = [NSString stringWithUTF8String:"Stack Error"];
    v50[0] = v46;
    v50[1] = &off_100332FA0;
    v49[1] = @"Line";
    v49[2] = @"Method";
    v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
    v50[2] = v37;
    v49[3] = NSDebugDescriptionErrorKey;
    v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 426];
    v50[3] = v38;
    v39 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
    v40 = v47;
    v41 = v36;
    v42 = 15;
    goto LABEL_43;
  }

  if (a5)
  {
    v48 = v9;
    v11 = [NSError alloc];
    v12 = [NSString stringWithUTF8String:"nfcd"];
    v79[0] = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithUTF8String:"Aborted"];
    v80[0] = v13;
    v80[1] = &off_100332EB0;
    v79[1] = @"Line";
    v79[2] = @"Method";
    v14 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeNdefData:toTag:nLengthOptimization:error:")];
    v80[2] = v14;
    v79[3] = NSDebugDescriptionErrorKey;
    v15 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeNdefData:toTag:nLengthOptimization:error:"), 391];
    v80[3] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];
    *a5 = [v11 initWithDomain:v12 code:3 userInfo:v16];

LABEL_8:
    v23 = 0;
LABEL_45:

    v9 = v48;
    goto LABEL_46;
  }

  v23 = 0;
LABEL_46:
  objc_sync_exit(v10);

LABEL_47:
  return v23;
}

BOOL sub_100194D54(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v6 = a1;
  objc_sync_enter(v6);
  if (*(v6 + 169) != 1)
  {
    v18 = *(v6 + 1);
    sub_1001909EC(v6, v5);
    v19 = NFDriverRemoteDevWriteLockNdef();
    v16 = v19 == 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    v20 = v19;
    if (!v19)
    {
      goto LABEL_7;
    }

    v21 = [NSError alloc];
    v8 = [NSString stringWithUTF8String:"nfcd"];
    if (v20 > 11)
    {
      if (v20 == 12)
      {
        v28[0] = NSLocalizedDescriptionKey;
        v9 = [NSString stringWithUTF8String:"Tag Not NDEF formatted"];
        v29[0] = v9;
        v29[1] = &off_100332FE8;
        v28[1] = @"Line";
        v28[2] = @"Method";
        v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
        v29[2] = v10;
        v28[3] = NSDebugDescriptionErrorKey;
        v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 453];
        v29[3] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
        v13 = v21;
        v14 = v8;
        v15 = 37;
        goto LABEL_5;
      }

      if (v20 == 23)
      {
        v26[0] = NSLocalizedDescriptionKey;
        v9 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
        v27[0] = v9;
        v27[1] = &off_100333000;
        v26[1] = @"Line";
        v26[2] = @"Method";
        v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
        v27[2] = v10;
        v26[3] = NSDebugDescriptionErrorKey;
        v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 455];
        v27[3] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
        v13 = v21;
        v14 = v8;
        v15 = 64;
        goto LABEL_5;
      }
    }

    else
    {
      if (v20 == 4)
      {
        v24[0] = NSLocalizedDescriptionKey;
        v9 = [NSString stringWithUTF8String:"SE not available"];
        v25[0] = v9;
        v25[1] = &off_100333018;
        v24[1] = @"Line";
        v24[2] = @"Method";
        v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
        v25[2] = v10;
        v24[3] = NSDebugDescriptionErrorKey;
        v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 457];
        v25[3] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
        v13 = v21;
        v14 = v8;
        v15 = 35;
        goto LABEL_5;
      }

      if (v20 == 6)
      {
        v30[0] = NSLocalizedDescriptionKey;
        v9 = [NSString stringWithUTF8String:"Connection Closed"];
        v31[0] = v9;
        v31[1] = &off_100332FD0;
        v30[1] = @"Line";
        v30[2] = @"Method";
        v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
        v31[2] = v10;
        v30[3] = NSDebugDescriptionErrorKey;
        v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 451];
        v31[3] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4];
        v13 = v21;
        v14 = v8;
        v15 = 21;
        goto LABEL_5;
      }
    }

    v22[0] = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:"Stack Error"];
    v23[0] = v9;
    v23[1] = &off_100333030;
    v22[1] = @"Line";
    v22[2] = @"Method";
    v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
    v23[2] = v10;
    v22[3] = NSDebugDescriptionErrorKey;
    v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 459];
    v23[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    v13 = v21;
    v14 = v8;
    v15 = 15;
    goto LABEL_5;
  }

  if (a3)
  {
    v7 = [NSError alloc];
    v8 = [NSString stringWithUTF8String:"nfcd"];
    v32[0] = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:"Aborted"];
    v33[0] = v9;
    v33[1] = &off_100332FB8;
    v32[1] = @"Line";
    v32[2] = @"Method";
    v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeLockNdef:error:")];
    v33[2] = v10;
    v32[3] = NSDebugDescriptionErrorKey;
    v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeLockNdef:error:"), 443];
    v33[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
    v13 = v7;
    v14 = v8;
    v15 = 3;
LABEL_5:
    *a3 = [v13 initWithDomain:v14 code:v15 userInfo:v12];
  }

  v16 = 0;
LABEL_7:
  objc_sync_exit(v6);

LABEL_8:
  return v16;
}

uint64_t sub_100195444(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v4 = a1;
  objc_sync_enter(v4);
  if ((*(v4 + 169) & 1) == 0)
  {
    v7 = *(v4 + 1);
    sub_1001909EC(v4, v3);
    v8 = NFDriverRemoteDevCheckPresence();
    if (v8 > 17)
    {
      if (v8 == 18)
      {
        v5 = 51;
        goto LABEL_4;
      }

      if (v8 == 23)
      {
        v5 = 64;
        goto LABEL_4;
      }
    }

    else
    {
      if (!v8)
      {
        v5 = 0;
        goto LABEL_4;
      }

      if (v8 == 4)
      {
        v5 = 35;
        goto LABEL_4;
      }
    }

    v5 = 28;
    goto LABEL_4;
  }

  v5 = 3;
LABEL_4:
  objc_sync_exit(v4);

LABEL_5:
  return v5;
}

BOOL sub_100195514(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v19 = 0;
    goto LABEL_10;
  }

  v9 = a1;
  objc_sync_enter(v9);
  if (*(v9 + 169) != 1)
  {
    if ([v7 type] != 9 && objc_msgSend(v7, "type") != 14 && objc_msgSend(v7, "type") != 15 && objc_msgSend(v7, "type") != 16 && objc_msgSend(v7, "type") != 1 && objc_msgSend(v7, "type") != 4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v37 = Logger;
        Class = object_getClass(v9);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v9);
        Name = sel_getName("formatTagToNdef:withKey:error:");
        v47 = [v7 type];
        v42 = 45;
        if (isMetaClass)
        {
          v42 = 43;
        }

        v37(3, "%c[%{public}s %{public}s]:%i Unsupport tag type:%d", v42, ClassName, Name, 501, v47);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = object_getClass(v9);
        if (class_isMetaClass(v44))
        {
          v45 = 43;
        }

        else
        {
          v45 = 45;
        }

        *buf = 67110146;
        v62 = v45;
        v63 = 2082;
        v64 = object_getClassName(v9);
        v65 = 2082;
        v66 = sel_getName("formatTagToNdef:withKey:error:");
        v67 = 1024;
        v68 = 501;
        v69 = 1024;
        v70 = [v7 type];
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unsupport tag type:%d", buf, 0x28u);
      }

      if (!a4)
      {
        goto LABEL_8;
      }

      v46 = [NSError alloc];
      v11 = [NSString stringWithUTF8String:"nfcd"];
      v59[0] = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Feature Not Supported"];
      v60[0] = v12;
      v60[1] = &off_100333060;
      v59[1] = @"Line";
      v59[2] = @"Method";
      v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
      v60[2] = v13;
      v59[3] = NSDebugDescriptionErrorKey;
      v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 502];
      v60[3] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
      v16 = v46;
      v17 = v11;
      v18 = 14;
      goto LABEL_5;
    }

    v21 = *(v9 + 1);
    sub_1001909EC(v9, v7);
    v22 = NFDriverRemoteDevCheckNdef();
    if (v22 > 11)
    {
      if (v22 != 12)
      {
        if (v22 == 23)
        {
          if (!a4)
          {
            goto LABEL_8;
          }

          v24 = [NSError alloc];
          v11 = [NSString stringWithUTF8String:"nfcd"];
          v57[0] = NSLocalizedDescriptionKey;
          v12 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
          v58[0] = v12;
          v58[1] = &off_100333078;
          v57[1] = @"Line";
          v57[2] = @"Method";
          v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
          v58[2] = v13;
          v57[3] = NSDebugDescriptionErrorKey;
          v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 510];
          v58[3] = v14;
          v15 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];
          v16 = v24;
          v17 = v11;
          v18 = 64;
          goto LABEL_5;
        }

LABEL_27:
        ErrorCode = NFDriverCreateErrorCode();
        v11 = ErrorCode;
        if (!a4 || !ErrorCode)
        {
          goto LABEL_7;
        }

        v49 = [NSError alloc];
        v12 = [NSString stringWithUTF8String:"nfcd"];
        v53[0] = NSLocalizedDescriptionKey;
        v26 = [NSString stringWithUTF8String:"Stack Error"];
        v54[0] = v26;
        v54[1] = v11;
        v53[1] = NSUnderlyingErrorKey;
        v53[2] = @"Line";
        v54[2] = &off_1003330A8;
        v53[3] = @"Method";
        v27 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
        v54[3] = v27;
        v53[4] = NSDebugDescriptionErrorKey;
        v28 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 517];
        v54[4] = v28;
        v29 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:5];
        *a4 = [v49 initWithDomain:v12 code:15 userInfo:v29];

LABEL_6:
LABEL_7:

        goto LABEL_8;
      }
    }

    else if (v22)
    {
      if (v22 == 4)
      {
        if (!a4)
        {
          goto LABEL_8;
        }

        v23 = [NSError alloc];
        v11 = [NSString stringWithUTF8String:"nfcd"];
        v55[0] = NSLocalizedDescriptionKey;
        v12 = [NSString stringWithUTF8String:"SE not available"];
        v56[0] = v12;
        v56[1] = &off_100333090;
        v55[1] = @"Line";
        v55[2] = @"Method";
        v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
        v56[2] = v13;
        v55[3] = NSDebugDescriptionErrorKey;
        v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 513];
        v56[3] = v14;
        v15 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:4];
        v16 = v23;
        v17 = v11;
        v18 = 35;
        goto LABEL_5;
      }

      goto LABEL_27;
    }

    if ([v8 length])
    {
      [v8 bytes];
      [v8 length];
      NFDataCreateWithBytesNoCopy();
    }

    v30 = *(v9 + 1);
    sub_1001909EC(v9, v7);
    v31 = NFDriverRemoteDevFormatNdef();
    v19 = v31 == 0;
    if (a4 && v31)
    {
      v32 = [NSError alloc];
      v48 = [NSString stringWithUTF8String:"nfcd"];
      v51[0] = NSLocalizedDescriptionKey;
      v50 = [NSString stringWithUTF8String:"Tag Error"];
      v52[0] = v50;
      v52[1] = &off_1003330C0;
      v51[1] = @"Line";
      v51[2] = @"Method";
      v33 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
      v52[2] = v33;
      v51[3] = NSDebugDescriptionErrorKey;
      v34 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 535];
      v52[3] = v34;
      v35 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
      *a4 = [v32 initWithDomain:v48 code:29 userInfo:v35];
    }

    NFDataRelease();
    goto LABEL_9;
  }

  if (a4)
  {
    v10 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    v71[0] = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithUTF8String:"Aborted"];
    v72[0] = v12;
    v72[1] = &off_100333048;
    v71[1] = @"Line";
    v71[2] = @"Method";
    v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("formatTagToNdef:withKey:error:")];
    v72[2] = v13;
    v71[3] = NSDebugDescriptionErrorKey;
    v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("formatTagToNdef:withKey:error:"), 495];
    v72[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:4];
    v16 = v10;
    v17 = v11;
    v18 = 3;
LABEL_5:
    *a4 = [v16 initWithDomain:v17 code:v18 userInfo:v15];

    goto LABEL_6;
  }

LABEL_8:
  v19 = 0;
LABEL_9:
  objc_sync_exit(v9);

LABEL_10:
  return v19;
}

id sub_1001960B0(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    a1 = sub_1001960E8(a1, a2, a3, 0, a4);
    v4 = vars8;
  }

  return a1;
}

id sub_1001960E8(void *a1, void *a2, void *a3, unsigned int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  if (!a1)
  {
    goto LABEL_60;
  }

  v11 = a1;
  objc_sync_enter(v11);
  if (*(v11 + 169) == 1)
  {
    if (a5)
    {
      v12 = [NSError alloc];
      v13 = [NSString stringWithUTF8String:"nfcd"];
      v96[0] = NSLocalizedDescriptionKey;
      v14 = [NSString stringWithUTF8String:"Aborted"];
      v97[0] = v14;
      v97[1] = &off_1003330D8;
      v96[1] = @"Line";
      v96[2] = @"Method";
      v15 = [[NSString alloc] initWithFormat:@"%s", sel_getName("transceive:tag:maxTimeout:maxRetries:error:")];
      v97[2] = v15;
      v96[3] = NSDebugDescriptionErrorKey;
      v16 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("transceive:tag:maxTimeout:maxRetries:error:"), 551];
      v97[3] = v16;
      v17 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:4];
      *a5 = [v12 initWithDomain:v13 code:3 userInfo:v17];
    }

    goto LABEL_59;
  }

  [v9 bytes];
  [v9 length];
  NFDataCreateWithBytesNoCopy();
  if (a5)
  {
    *a5 = 0;
  }

  v18 = 0;
  while ([v10 technology] == 4)
  {
    v19 = *(v11 + 1);
    sub_1001909EC(v11, v10);
    v20 = NFDriverRemoteDeviceFelicaTransceive();
LABEL_16:
    v23 = v20;
    if (a4 < ++v18)
    {
      goto LABEL_37;
    }
  }

  if ([v10 technology] == 16)
  {
    v21 = *(v11 + 1);
    sub_1001909EC(v11, v10);
    v20 = NFDriverRemoteDeviceIso15693Transceive();
    goto LABEL_16;
  }

  if ([v10 technology] == 1 || objc_msgSend(v10, "technology") == 2)
  {
    v22 = *(v11 + 1);
    sub_1001909EC(v11, v10);
    v20 = NFDriverRemoteDeviceIso14443Transceive();
    goto LABEL_16;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v25 = Logger;
    Class = object_getClass(v11);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v11);
    Name = sel_getName("transceive:tag:maxTimeout:maxRetries:error:");
    v65 = [v10 technology];
    v30 = 45;
    if (isMetaClass)
    {
      v30 = 43;
    }

    v25(3, "%c[%{public}s %{public}s]:%i Tag tech = %d", v30, ClassName, Name, 577, v65);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v31 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = object_getClass(v11);
    if (class_isMetaClass(v32))
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    v34 = object_getClassName(v11);
    v35 = sel_getName("transceive:tag:maxTimeout:maxRetries:error:");
    v36 = [v10 technology];
    *buf = 67110146;
    v87 = v33;
    v88 = 2082;
    v89 = v34;
    v90 = 2082;
    v91 = v35;
    v92 = 1024;
    v93 = 577;
    v94 = 1024;
    v95 = v36;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag tech = %d", buf, 0x28u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v37 = NFLogGetLogger();
  if (v37)
  {
    v38 = v37;
    v39 = object_getClass(v11);
    v40 = class_isMetaClass(v39);
    v41 = object_getClassName(v11);
    v64 = sel_getName("transceive:tag:maxTimeout:maxRetries:error:");
    v42 = 45;
    if (v40)
    {
      v42 = 43;
    }

    v38(3, "%c[%{public}s %{public}s]:%i Reader mode transceive is not supported for this tag type", v42, v41, v64, 578);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v43 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = object_getClass(v11);
    if (class_isMetaClass(v44))
    {
      v45 = 43;
    }

    else
    {
      v45 = 45;
    }

    v46 = object_getClassName(v11);
    v47 = sel_getName("transceive:tag:maxTimeout:maxRetries:error:");
    *buf = 67109890;
    v87 = v45;
    v88 = 2082;
    v89 = v46;
    v90 = 2082;
    v91 = v47;
    v92 = 1024;
    v93 = 578;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader mode transceive is not supported for this tag type", buf, 0x22u);
  }

  v23 = 5;
LABEL_37:
  NFDataRelease();
  NFDataRelease();
  if (v23 > 19)
  {
    if (v23 == 20)
    {
      ErrorCode = NFDriverCreateErrorCode();
      v48 = ErrorCode;
      if (!a5 || !ErrorCode)
      {
        goto LABEL_58;
      }

      v75 = [NSError alloc];
      v52 = [NSString stringWithUTF8String:"nfcd"];
      v82[0] = NSLocalizedDescriptionKey;
      v49 = [NSString stringWithUTF8String:"Tag Error"];
      v82[1] = NSUnderlyingErrorKey;
      v83[0] = v49;
      v83[1] = v48;
      v50 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
      v57 = v75;
      v58 = v52;
      v59 = 29;
LABEL_56:
      *a5 = [v57 initWithDomain:v58 code:v59 userInfo:v50];
LABEL_57:

LABEL_58:
      goto LABEL_59;
    }

    if (v23 == 23)
    {
      v53 = NFDriverCreateErrorCode();
      v48 = v53;
      if (!a5 || !v53)
      {
        goto LABEL_58;
      }

      v69 = [NSError alloc];
      v72 = [NSString stringWithUTF8String:"nfcd"];
      v80[0] = NSLocalizedDescriptionKey;
      v66 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
      v81[0] = v66;
      v81[1] = v48;
      v80[1] = NSUnderlyingErrorKey;
      v80[2] = @"Line";
      v81[2] = &off_100333108;
      v80[3] = @"Method";
      v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName("transceive:tag:maxTimeout:maxRetries:error:")];
      v81[3] = v50;
      v80[4] = NSDebugDescriptionErrorKey;
      v54 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("transceive:tag:maxTimeout:maxRetries:error:"), 606];
      v81[4] = v54;
      v55 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:5];
      v52 = v72;
      *a5 = [v69 initWithDomain:v72 code:64 userInfo:v55];

      v49 = v66;
      goto LABEL_57;
    }

LABEL_47:
    v56 = NFDriverCreateErrorCode();
    v48 = v56;
    if (!a5 || !v56)
    {
      goto LABEL_58;
    }

    v73 = [NSError alloc];
    v52 = [NSString stringWithUTF8String:"nfcd"];
    v76[0] = NSLocalizedDescriptionKey;
    v49 = [NSString stringWithUTF8String:"Stack Error"];
    v76[1] = NSUnderlyingErrorKey;
    v77[0] = v49;
    v77[1] = v48;
    v50 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
    v57 = v73;
    v58 = v52;
    v59 = 15;
    goto LABEL_56;
  }

  if (v23 == 4)
  {
    v60 = NFDriverCreateErrorCode();
    v48 = v60;
    if (!a5 || !v60)
    {
      goto LABEL_58;
    }

    v70 = [NSError alloc];
    v74 = [NSString stringWithUTF8String:"nfcd"];
    v78[0] = NSLocalizedDescriptionKey;
    v49 = [NSString stringWithUTF8String:"SE not available"];
    v79[0] = v49;
    v79[1] = v48;
    v78[1] = NSUnderlyingErrorKey;
    v78[2] = @"Line";
    v79[2] = &off_100333120;
    v78[3] = @"Method";
    v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName("transceive:tag:maxTimeout:maxRetries:error:")];
    v79[3] = v50;
    v78[4] = NSDebugDescriptionErrorKey;
    v67 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("transceive:tag:maxTimeout:maxRetries:error:"), 609];
    v79[4] = v67;
    v61 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:5];
    v52 = v74;
    *a5 = [v70 initWithDomain:v74 code:35 userInfo:v61];

    goto LABEL_57;
  }

  if (v23 != 6)
  {
    goto LABEL_47;
  }

  if (a5)
  {
    v68 = [NSError alloc];
    v48 = [NSString stringWithUTF8String:"nfcd"];
    v84[0] = NSLocalizedDescriptionKey;
    v71 = [NSString stringWithUTF8String:"Tag Not Found"];
    v85[0] = v71;
    v85[1] = &off_1003330F0;
    v84[1] = @"Line";
    v84[2] = @"Method";
    v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName("transceive:tag:maxTimeout:maxRetries:error:")];
    v85[2] = v49;
    v84[3] = NSDebugDescriptionErrorKey;
    v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("transceive:tag:maxTimeout:maxRetries:error:"), 595];
    v85[3] = v50;
    v51 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:4];
    *a5 = [v68 initWithDomain:v48 code:28 userInfo:v51];

    v52 = v71;
    goto LABEL_57;
  }

LABEL_59:
  objc_sync_exit(v11);

LABEL_60:

  return 0;
}

uint64_t sub_100196C90(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = *(v1 + 169);
  objc_sync_exit(v1);

  if (v2)
  {
    return 0;
  }

  v4 = *(v1 + 1);
  return NFDriverRemoteDevReceive();
}

void sub_100197048(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = a1;
    objc_sync_enter(v5);
    if (*(v5 + 169) == 1)
    {
      v6 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v15[0] = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"Invalid State"];
      v16[0] = v8;
      v16[1] = &off_100333138;
      v15[1] = @"Line";
      v15[2] = @"Method";
      v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readFromHCEDevice:completion:")];
      v16[2] = v9;
      v15[3] = NSDebugDescriptionErrorKey;
      v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readFromHCEDevice:completion:"), 651];
      v16[3] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
      v12 = [v6 initWithDomain:v7 code:12 userInfo:v11];
      v4[2](v4, 0, v12);

      objc_sync_exit(v5);
    }

    else
    {
      objc_sync_exit(v5);

      v13 = *(v5 + 1);
      v14 = v4;
      NFDriverRemoteDevReceiveAsync();
      v5 = v14;
    }
  }
}

void sub_1001972BC(uint64_t a1, int a2)
{
  v3 = 0;
  if (a2 <= 4)
  {
    if (a2 == 1)
    {
      v16 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v23[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Stack Error"];
      v24[0] = v6;
      v24[1] = &off_100333168;
      v23[1] = @"Line";
      v23[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
      v24[2] = v7;
      v23[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 663];
      v24[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
      v10 = v16;
      v11 = v5;
      v12 = 15;
      goto LABEL_12;
    }

    if (a2 == 3)
    {
      v13 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v19[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"No resources"];
      v20[0] = v6;
      v20[1] = &off_100333198;
      v19[1] = @"Line";
      v19[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
      v20[2] = v7;
      v19[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 667];
      v20[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
      v10 = v13;
      v11 = v5;
      v12 = 34;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a2)
    {
      case 5:
        v14 = [NSError alloc];
        v5 = [NSString stringWithUTF8String:"nfcd"];
        v21[0] = NSLocalizedDescriptionKey;
        v6 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v22[0] = v6;
        v22[1] = &off_100333180;
        v21[1] = @"Line";
        v21[2] = @"Method";
        v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
        v22[2] = v7;
        v21[3] = NSDebugDescriptionErrorKey;
        v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 665];
        v22[3] = v8;
        v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
        v10 = v14;
        v11 = v5;
        v12 = 10;
        goto LABEL_12;
      case 21:
        v15 = [NSError alloc];
        v5 = [NSString stringWithUTF8String:"nfcd"];
        v17[0] = NSLocalizedDescriptionKey;
        v6 = [NSString stringWithUTF8String:"Tag is halted"];
        v18[0] = v6;
        v18[1] = &off_1003331B0;
        v17[1] = @"Line";
        v17[2] = @"Method";
        v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
        v18[2] = v7;
        v17[3] = NSDebugDescriptionErrorKey;
        v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 669];
        v18[3] = v8;
        v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
        v10 = v15;
        v11 = v5;
        v12 = 62;
        goto LABEL_12;
      case 6:
        v4 = [NSError alloc];
        v5 = [NSString stringWithUTF8String:"nfcd"];
        v25[0] = NSLocalizedDescriptionKey;
        v6 = [NSString stringWithUTF8String:"Tag Not Found"];
        v26[0] = v6;
        v26[1] = &off_100333150;
        v25[1] = @"Line";
        v25[2] = @"Method";
        v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
        v26[2] = v7;
        v25[3] = NSDebugDescriptionErrorKey;
        v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 661];
        v26[3] = v8;
        v9 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
        v10 = v4;
        v11 = v5;
        v12 = 28;
LABEL_12:
        v3 = [v10 initWithDomain:v11 code:v12 userInfo:v9];

        break;
    }
  }

  (*(*(a1 + 32) + 16))();
}