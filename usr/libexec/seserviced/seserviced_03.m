void sub_10005FCFC()
{
  objc_opt_self();
  v0 = sub_10005FC78();
  sub_1003B09A4(v0);
}

void sub_10005FD48(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Initializing debug server", &v13, 2u);
  }

  [*(*(a1 + 32) + 32) addObserver:*(a1 + 32) forKeyPath:@"debug.install.logging.applet" options:4 context:0];
  v3 = [SESXPCEventListener registerOnStream:@"com.apple.nfcd.xpc.sesd.events" forEvent:@"Payload" handler:*(a1 + 32)];
  v4 = [v3 filter:&stru_1004C3230];
  v5 = [v4 lastObject];
  if (v5)
  {
    v6 = sub_100060110(SESDebugServer, v5);
    objc_opt_self();
    *(*(a1 + 32) + 24) = (v6 & 0xE) != 0;
    v7 = +[_TtC10seserviced20SESBootScopedStorage shared];
    v8 = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 24)];
    [v7 setNumberFor:@"lpem.state" value:v8];
  }

  else
  {
    v9 = +[_TtC10seserviced20SESBootScopedStorage shared];
    v7 = [v9 getNumberFor:@"lpem.state"];

    if (v7)
    {
      v10 = [v7 intValue];
      v11 = SESDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 134217984;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Retrieved LPEM state from storage %lu", &v13, 0xCu);
      }

      *(*(a1 + 32) + 24) = v10;
    }

    v12 = *(a1 + 32);
    if (*(v12 + 24) == 4279897)
    {
      sub_100060170(v12);
    }
  }

  sub_1000603D4(*(a1 + 32));
}

uint64_t sub_10005FFA8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  v4 = string;
  if (string && !strcmp(string, "Payload"))
  {
    v9 = xpc_dictionary_get_string(v2, "Payload");
    v10 = v9;
    if (v9 && !strcmp(v9, "com.apple.stockholm.lpem.changed"))
    {
      v7 = 1;
      goto LABEL_7;
    }

    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = v10;
      v6 = "Ignoring event %s";
      goto LABEL_5;
    }
  }

  else
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = v4;
      v6 = "Ignoring eventName %s";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, &v11, 0xCu);
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

int64_t sub_100060110(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = xpc_dictionary_get_value(v2, "lpemFeatures");

  value = xpc_int64_get_value(v3);
  return value;
}

void sub_100060170(dispatch_queue_t *a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v2 = a1;
    objc_sync_enter(v2);
    v3 = v2[3];
    objc_sync_exit(v2);

    if (v3 == 4279897)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v4 = dispatch_group_create();
      dispatch_group_enter(v4);
      v5 = +[NFHardwareManager sharedHardwareManager];
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100060B10;
      v17 = &unk_1004C32A8;
      v6 = v4;
      v18 = v6;
      v19 = &v20;
      v7 = [v5 startLPEMConfigSession:&v14];

      dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      v8 = v2;
      objc_sync_enter(v8);
      v9 = v21[3];
      objc_opt_self();
      v2[3] = ((v9 & 0xE) != 0);
      v10 = [_TtC10seserviced20SESBootScopedStorage shared:v14];
      v11 = [NSNumber numberWithUnsignedInteger:v2[3]];
      [v10 setNumberFor:@"lpem.state" value:v11];

      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = v2[3];
        *buf = 134217984;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "LPEM enabled value %lu", buf, 0xCu);
      }

      objc_sync_exit(v8);
      _Block_object_dispose(&v20, 8);
    }
  }
}

void sub_1000603A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1000603D4(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = [*(a1 + 32) BOOLForKey:@"debug.install.logging.applet"];
    v3 = [*(a1 + 32) stringForKey:@"debug.logging.profile.to.install"];
    v4 = [SESBootUUID isFirstLaunchAfterBootForKey:@"debug.logging.last.check.uuid"];
    if (v4)
    {
      sub_1003B0C90();
    }

    else
    {
      v5 = a1;
      objc_sync_enter(v5);
      if (v5[17] == v2 && (!*(v5 + 3) || v5[16] == 1))
      {
        v8 = SESDefaultLogObject();
        sub_1003B0C30(v8, v5);
        goto LABEL_8;
      }

      objc_sync_exit(v5);
    }

    v6 = os_transaction_create();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006056C;
    v9[3] = &unk_1004C3280;
    v9[4] = a1;
    v12 = v2;
    v13 = v4;
    v10 = v3;
    v11 = v6;
    v7 = v6;
    sub_1003AF710(SecureElementManager, @"Evaluate Conditions for Logging Applet", v9);

LABEL_8:
  }
}

void sub_10006056C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get SE, logging applet pref dropped on the floor", buf, 2u);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006069C;
    block[3] = &unk_1004C3258;
    block[4] = v8;
    v11 = v5;
    v14 = *(a1 + 56);
    v12 = *(a1 + 40);
    v15 = *(a1 + 57);
    v13 = *(a1 + 48);
    dispatch_async(v9, block);
  }
}

void sub_1000606B4(dispatch_queue_t *a1, void *a2, int a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v11 = a1;
    objc_sync_enter(v11);
    if (a5)
    {
      v12 = [@"A000000704E000010002" hexStringAsData];
      *(v11 + 16) = sub_1003AF34C(v9, v12);

      [v11[4] setBool:*(v11 + 16) forKey:@"debug.have.logging.applet"];
      v13 = [@"A000000704E000010000" hexStringAsData];
      LOBYTE(v12) = sub_1003AF34C(v9, v13);

      v14 = [@"A000000704E000010001" hexStringAsData];
      v15 = sub_1003AF34C(v9, v14);

      *(v11 + 17) = v12 & v15;
      [NSObject setBool:"setBool:forKey:" forKey:?];
    }

    if ((v11[2] & 1) == 0 && (v11[3] || a3))
    {
      v16 = sub_1003B0A20(v11, v9);
      if (v16)
      {
        v17 = SESDefaultLogObject();
        sub_1003B0CA4(v17);
        goto LABEL_23;
      }

      *(v11 + 16) = 1;
      [v11[4] setBool:1 forKey:@"debug.have.logging.applet"];
    }

    if (*(v11 + 17) == a3)
    {
      v16 = SESDefaultLogObject();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v33 = 67109120;
      LODWORD(v34[0]) = a3;
      v18 = "Synced (after checking with SE) at %d";
      v19 = v16;
      v20 = OS_LOG_TYPE_INFO;
      v21 = 8;
      goto LABEL_13;
    }

    if (a3)
    {
      if ([v10 isEqualToString:@"Engineering"])
      {
        v22 = 1;
        v23 = "SLAMInstallLogger_v0_DevelopmentProfile";
LABEL_21:
        v16 = sub_1003AAA98(v9, v23);
        if (v16)
        {
          v25 = SESDefaultLogObject();
          sub_1003B0D34(v25);
          goto LABEL_23;
        }

        v26 = [@"A000000704E000010000" hexStringAsData];
        v27 = sub_1003AF34C(v9, v26);

        v28 = [@"A000000704E000010001" hexStringAsData];
        v29 = sub_1003AF34C(v9, v28);

        v30 = v27 & v29;
        if (v22 == v30)
        {
          v31 = SESDefaultLogObject();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Successfully set up or deleted logging instances", &v33, 2u);
          }

          *(v11 + 17) = v30;
          [v11[4] setBool:v30 forKey:@"debug.have.logging.profile"];
          v32 = v11[4];
          if (v30)
          {
            [v32 setObject:v10 forKey:@"debug.logging.profile.did.install"];
          }

          else
          {
            [v32 removeObjectForKey:@"debug.logging.profile.did.install"];
          }

          goto LABEL_24;
        }

        v16 = SESDefaultLogObject();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
LABEL_23:

LABEL_24:
          objc_sync_exit(v11);

          goto LABEL_25;
        }

        v33 = 67109376;
        LODWORD(v34[0]) = v22;
        WORD2(v34[0]) = 1024;
        *(v34 + 6) = v30;
        v18 = "Failed to set up logging instances shouldInstall %d isAppletInstalled %d; ignoring logging preference";
        v19 = v16;
        v20 = OS_LOG_TYPE_ERROR;
        v21 = 14;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v19, v20, v18, &v33, v21);
        goto LABEL_23;
      }

      v24 = SESDefaultLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v33 = 138412290;
        v34[0] = v10;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Can't find install script for profile %@", &v33, 0xCu);
      }

      [v11[4] setBool:0 forKey:@"debug.install.logging.applet"];
    }

    v22 = 0;
    v23 = "SLAMDeleteSunspriteLoggingApplets";
    goto LABEL_21;
  }

LABEL_25:
}

void sub_100060B10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to start LPEM session with error: %@", buf, 0xCu);
    }

    v9 = SESEnsureError();
  }

  else
  {
    v12 = 0;
    v8 = [v5 getLPEMFeaturesWithError:&v12];
    v9 = v12;
    *(*(*(a1 + 40) + 8) + 24) = v8;
    if (v9)
    {
      v10 = SESDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "getLPEMFeatures failed with error: %@", buf, 0xCu);
      }
    }

    [v5 endSession];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100060C88(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [@"A000000704E000010002" hexStringAsData];
    v5 = sub_1003AF34C(v3, v4);

    if (v5)
    {
      v6 = a1;
      objc_sync_enter(v6);
      if (*(v6 + 3) || (*(v6 + 17) & 1) != 0)
      {
        objc_sync_exit(v6);
      }

      else
      {
        objc_sync_exit(v6);

        v7 = SESDefaultLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Deleting unused Logger Applet", buf, 2u);
        }

        v8 = sub_1003AAA98(v3, "SLAMDeleteLogger");
        if (v8)
        {
          v9 = SESDefaultLogObject();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "SLAM Failed, could not delete logging applet!", v11, 2u);
          }
        }

        v10 = v6;
        objc_sync_enter(v10);
        *(v10 + 16) = 0;
        [v10[4] setBool:0 forKey:@"debug.have.logging.applet"];
        objc_sync_exit(v10);
      }
    }
  }
}

void sub_100060F64(id *a1)
{
  if ([a1[4] isEqualToString:@"com.apple.nfcd.xpc.sesd.events"])
  {
    if (sub_10005FFA8(SESDebugServer, a1[5]))
    {
      v2 = sub_100060110(SESDebugServer, a1[5]);
      v3 = SESDefaultLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v10 = 134217984;
        v11 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received event for LPEM state change value %lu", &v10, 0xCu);
      }

      v4 = a1[6];
      objc_sync_enter(v4);
      v5 = *(a1[6] + 3);
      objc_opt_self();
      *(a1[6] + 3) = (v2 & 0xE) != 0;
      v7 = *(a1[6] + 3) == 1 && v5 == 0;
      objc_sync_exit(v4);

      if (v7)
      {
        sub_1000603D4(a1[6]);
      }
    }
  }

  else
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[4];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ignoring stream %@", &v10, 0xCu);
    }
  }
}

void sub_100061164(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100061184(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 2u);
}

uint64_t sub_100061A24(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESAssertion invalidate %@", &v5, 0xCu);
  }

  [*(a1 + 32) stop:0];
  return (*(*(a1 + 40) + 16))();
}

void sub_100062234(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStateDescriptor:v3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000622D4;
  v5[3] = &unk_1004C32D0;
  v5[4] = *(a1 + 40);
  [v4 setUpdateHandler:v5];
}

uint64_t sub_1000633DC(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession endSession %@", &v5, 0xCu);
  }

  [*(a1 + 32) endSessionInternal:0];
  return (*(*(a1 + 40) + 16))();
}

void sub_100063578(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v45 = v3;
    v46 = 2112;
    v47 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ setActiveKey %@", buf, 0x16u);
  }

  if (([*(a1 + 32) isActive] & 1) == 0)
  {
    v9 = *(a1 + 48);
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    (*(v9 + 16))(v9, 0, v11);

    return;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_17;
  }

  v5 = [*(*(a1 + 32) + 64) publicKeyIdentifier];
  v6 = [*(a1 + 40) hexStringAsData];
  v7 = [v5 isEqualToData:v6];

  if (v7)
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Key already active", buf, 2u);
    }

    goto LABEL_18;
  }

  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_17:
    v33 = *(a1 + 32);
    v34 = *(v33 + 64);
    *(v33 + 64) = 0;

    *(*(a1 + 32) + 57) = 0;
LABEL_18:
    (*(*(a1 + 48) + 16))();
    return;
  }

  v13 = [v12 hexStringAsData];
  v14 = +[_TtC10seserviced14AlishaExternal shared];
  v15 = [v14 getAllEndpoints];

  v16 = [v15 allObjects];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100063A60;
  v40[3] = &unk_1004C31A8;
  v17 = v13;
  v41 = v17;
  v18 = [v16 find:v40];

  v19 = *(a1 + 32);
  if (v18)
  {
    objc_storeStrong((v19 + 64), v18);
    v20 = SESDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 40);
      *buf = 138412290;
      v45 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Active key set to %@", buf, 0xCu);
    }

    v22 = +[_TtC10seserviced14AlishaExternal shared];
    v23 = [v18 bleUUID];
    v24 = [NSUUID ses_withUUIDString:v23];
    v25 = [v22 isPeerConnectedWithClientUUID:v24];

    v26 = @"com.apple.secureelementservice.dck.event.vehicle.did.disconnect";
    v27 = *(a1 + 32);
    if (v25)
    {
      v26 = @"com.apple.secureelementservice.dck.event.vehicle.did.connect";
    }

    v43[0] = v26;
    v42[0] = @"xpcEventName";
    v42[1] = @"appletIdentifier";
    v28 = [v27[8] appletIdentifier];
    v29 = [v28 asHexString];
    v42[2] = @"keyIdentifier";
    v30 = *(a1 + 40);
    v43[1] = v29;
    v43[2] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
    v32 = [v18 publicKeyIdentifier];
    [v27 sendEvent:v31 keyIdentifier:v32];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v35 = *(v19 + 64);
    *(v19 + 64) = 0;

    *(*(a1 + 32) + 57) = 0;
    v36 = *(a1 + 48);
    v37 = SESDefaultLogObject();
    v39 = *(a1 + 40);
    v38 = SESCreateAndLogError();
    (*(v36 + 16))(v36, 0, v38);
  }
}

BOOL sub_100063A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 publicKeyIdentifier];
  if ([v4 isEqualToData:v5])
  {
    v6 = [v3 bleUUID];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100063BB4(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ setSecureElementToken", &v7, 0xCu);
  }

  if ([*(a1 + 32) isActive])
  {
    if ([*(a1 + 32) isWaitingForSecureElement])
    {
      [*(a1 + 32) pushSecureElementToken:*(a1 + 40)];
      [*(a1 + 32) setIsWaitingForSecureElement:0];
    }

    else
    {
      [*(a1 + 32) setSeToken:*(a1 + 40)];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = SESDefaultLogObject();
    v6 = SESCreateAndLogError();
    (*(v4 + 16))(v4, 0, v6);
  }
}

void sub_100063DC8(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ setAuthorization", &v8, 0xCu);
  }

  v4 = [*(a1 + 32) isActive];
  v5 = *(a1 + 40);
  if (v4)
  {
    (*(v5 + 16))(v5, 1, 0);
  }

  else
  {
    v6 = SESDefaultLogObject();
    v7 = SESCreateAndLogError();
    (*(v5 + 16))(v5, 0, v7);
  }
}

void sub_100063FB4(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v13 = 138412546;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ preArmActiveKey %d", &v13, 0x12u);
  }

  if (([*(a1 + 32) isActive] & 1) != 0 && (v5 = *(a1 + 32), *(v5 + 64)))
  {
    *(v5 + 57) = *(a1 + 48);
    if ([*(a1 + 32) isPreArmed])
    {
      v6 = +[_TtC10seserviced14AlishaExternal shared];
      v7 = [NSUUID alloc];
      v8 = [*(*(a1 + 32) + 64) bleUUID];
      v9 = [v7 initWithUUIDString:v8];
      [v6 pauseRangingFor:v9];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(v10 + 16))(v10, 0, v12);
  }
}

void sub_1000642D8(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40) != 0;
    *buf = 138413058;
    v14 = v5;
    v15 = 1024;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ sendRKEFunction 0x%X action 0x%X authorization %d", buf, 0x1Eu);
  }

  if (([*(a1 + 32) isActive] & 1) != 0 && *(*(a1 + 32) + 64))
  {
    v7 = +[_TtC10seserviced14AlishaExternal shared];
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = [*(*(a1 + 32) + 64) publicKeyIdentifier];
    v11 = *(a1 + 40);
    [v7 sendRKERequestWithFunctionIdentifier:v8 actionIdentifier:v9 keyIdentifier:v10 requestType:0 actionType:*(a1 + 80) arbitraryData:*(a1 + 48) enduringRequestHandler:0 authorization:v11 completion:*(a1 + 56)];
  }

  else
  {
    v12 = *(a1 + 56);
    v7 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    (*(v12 + 16))(v12, 0, v10);
  }
}

void sub_100064584(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v11 = 138412546;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ cancelRKEFunction 0x%X", &v11, 0x12u);
  }

  if (([*(a1 + 32) isActive] & 1) != 0 && *(*(a1 + 32) + 64))
  {
    v5 = +[_TtC10seserviced14AlishaExternal shared];
    v6 = *(a1 + 48);
    v7 = [*(*(a1 + 32) + 64) publicKeyIdentifier];
    v8 = [v5 cancelRKERequestWithFunctionIdentifier:v6 keyIdentifier:v7];

    (*(*(a1 + 40) + 16))(*(a1 + 40), v8 == 0, v8);
  }

  else
  {
    v9 = *(a1 + 40);
    v8 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    (*(v9 + 16))(v9, 0, v10);
  }
}

void sub_100064838(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ sendPassthroughMessage", &v14, 0xCu);
  }

  if ([*(a1 + 32) isActive])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    if (v5)
    {
      if (*(v4 + 56))
      {
LABEL_13:
        v11 = [NSUUID alloc];
        v12 = [*(*(a1 + 32) + 64) bleUUID];
        v9 = [v11 initWithUUIDString:v12];

        v13 = +[_TtC10seserviced14AlishaExternal shared];
        v10 = [v13 sendPassthroughWithMessage:*(a1 + 40) clientUUID:v9];

        (*(*(a1 + 48) + 16))(*(a1 + 48), v10 == 0, v10);
        goto LABEL_14;
      }

      v6 = [v5 getEndpointUser];
      if (v6)
      {
        if (v6 != 1)
        {
LABEL_12:
          *(*(a1 + 32) + 56) = 1;
          goto LABEL_13;
        }

        v7 = @"friendPassthroughCount";
      }

      else
      {
        v7 = @"ownerPassthroughCount";
      }

      sub_10004D584(SESDAnalyticsLogger, v7);
      goto LABEL_12;
    }
  }

  v8 = *(a1 + 48);
  v9 = SESDefaultLogObject();
  v10 = SESCreateAndLogError();
  (*(v8 + 16))(v8, 0, v10);
LABEL_14:
}

void sub_100064AE8(uint64_t a1)
{
  if (([*(a1 + 32) isWaitingForSecureElement] & 1) == 0)
  {
    v2 = [*(a1 + 32) seToken];

    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [*(a1 + 32) seToken];
      [v3 pushSecureElementToken:v4];

      v5 = *(a1 + 32);

      [v5 setSeToken:0];
    }

    else
    {
      [*(a1 + 32) setIsWaitingForSecureElement:1];
      v6 = [*(a1 + 32) remoteObject];
      [v6 sendEvent:&off_1004DC8C0];
    }
  }
}

void sub_100064E70(id a1)
{
  v1 = qword_10050CD30;
  qword_10050CD30 = &off_1004DC710;
}

id sub_100065150()
{
  result = [objc_allocWithZone(type metadata accessor for AlishaPairingExternal()) init];
  qword_10051B160 = result;
  return result;
}

uint64_t sub_1000651E0(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19[1] = qword_10051B7F0;
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_10006A46C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C5530;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  v17 = a1;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_1000654E0(_BYTE *a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called requestOwnerPairing", v4, 2u);
  }

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  a1[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning] = 1;
  if (qword_100501908 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a1;
  sub_100095A74(sub_10006A478, v5);
}

void sub_100065650(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_16:
    sub_100096454();
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Missing session or delegate", v19, 2u);
    }

    if (qword_100501908 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v11 = Strong;
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v13 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Calling btHceTxnSessionDidStartEmulation", v16, 2u);
  }

  if ([v11 respondsToSelector:"btHceTxnSessionDidStartEmulation:result:"])
  {
    swift_unknownObjectRetain();
    if (a1)
    {
      a1 = _convertErrorToNSError(_:)();
    }

    [v11 btHceTxnSessionDidStartEmulation:v13 result:a1];

    swift_unknownObjectRelease_n();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_100065A00(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called stopOwnerPairing", v4, 2u);
  }

  if (qword_100501908 != -1)
  {
    swift_once();
  }

  sub_100096454();
  *(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) = 0;
}

void sub_100065B58(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called startHceEmulation", v4, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    *(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages) = 1;
    v5 = OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isFirstStart;
    if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isFirstStart))
    {
LABEL_12:
      *(a1 + v5) = 0;
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Calling btHceTxnSessionDidStartEmulation", v12, 2u);
        }

        if ([v7 respondsToSelector:"btHceTxnSessionDidStartEmulation:result:"])
        {
          [v7 btHceTxnSessionDidStartEmulation:v9 result:0];
        }

        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing session or delegate", v15, 2u);
    }

    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_100096454();
  }
}

void sub_100065E44(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called stopHceEmulation", v4, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    *(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Calling btHceTxnSessionDidStopEmulation", v11, 2u);
        }

        if ([v6 respondsToSelector:"btHceTxnSessionDidStopEmulation:result:"])
        {
          [v6 btHceTxnSessionDidStopEmulation:v8 result:0];
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing session or delegate", v14, 2u);
    }

    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_100096454();
  }
}

void sub_10006612C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called startTransactionEmulation", v4, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_1000AFED0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Calling btTxnSessionDidStartTransaction", v11, 2u);
        }

        if ([v6 respondsToSelector:"btTxnSessionDidStartTransaction:result:"])
        {
          [v6 btTxnSessionDidStartTransaction:v8 result:0];
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing session or delegate", v14, 2u);
    }

    sub_100096454();
  }
}

void sub_1000663CC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called stopTransactionEmulation", v4, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_100096694();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Calling btTxnSessionDidEndTransaction", v11, 2u);
        }

        if ([v6 respondsToSelector:"btTxnSessionDidEndTransaction:result:"])
        {
          [v6 btTxnSessionDidEndTransaction:v8 result:0];
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing session or delegate", v14, 2u);
    }

    sub_100096454();
  }
}

uint64_t sub_1000666B4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16[1] = qword_10051B7F0;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10006A3B0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C5350;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

void sub_1000669A8(uint64_t a1, uint64_t a2)
{
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "KML called pairingEnded", v6, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_1000966A4(a2);
  }
}

uint64_t sub_100066B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "KML called sendAPDU", v10, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    result = sub_10009695C(a2, a3);
  }

  else
  {
    sub_100069DD8();
    result = swift_allocError();
    *v12 = 2;
  }

  *a4 = result;
  return result;
}

uint64_t sub_100066E78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "KML called readAPDU", v6, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1 && *(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages) == 1)
  {
    v7 = OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_receivedMessages;
    swift_beginAccess();
    v8 = *(a1 + v7);
    if (v8[2])
    {
      swift_beginAccess();
      v9 = v8[4];
      v10 = v8[5];
      sub_100069E2C(v9, v10);
      sub_1001A18A0(0, 1);
      swift_endAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v12 = Logger.logObject.getter();
      if (Strong)
      {
        v13 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "Calling btHceSessionHandleApdu", v14, 2u);
        }

        if ([Strong respondsToSelector:"btHceSessionHandleApdu:"])
        {
          sub_100069E2C(v9, v10);
          swift_unknownObjectRetain();
          isa = Data._bridgeToObjectiveC()().super.isa;
          [Strong btHceSessionHandleApdu:isa];
          swift_unknownObjectRelease();

          sub_10006A178(v9, v10);
        }

        swift_unknownObjectRelease();
        sub_10006A178(v9, v10);
        result = 0;
      }

      else
      {
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v12, v18, "Missing delegate", v19, 2u);
        }

        if (qword_100501908 != -1)
        {
          swift_once();
        }

        sub_100096454();
        sub_100069DD8();
        v20 = swift_allocError();
        *v21 = 2;
        sub_10006A178(v9, v10);
        result = v20;
      }
    }

    else
    {
      result = 0;
      *(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_readPending) = 1;
    }
  }

  else
  {
    sub_100069DD8();
    result = swift_allocError();
    *v17 = 2;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1000673E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19[1] = qword_10051B7F0;
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

void sub_1000676C0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called endSession", v4, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_100096E44();
  }
}

uint64_t sub_100067820(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v24);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v22 = qword_10051B7F0;
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);
  v20 = v5;
  sub_100069E2C(a1, a2);
  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v24);
}

void sub_100067B14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "KML called requestFirstApproach", v7, 2u);
  }

  if (qword_100501908 != -1)
  {
    swift_once();
  }

  sub_10009701C(a2, a3);
}

void sub_100067C2C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v14 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_100067820(v11, v13, a4, a5, a6);
  sub_10006A178(v11, v13);
}

void sub_100067CDC(uint64_t a1, unint64_t a2)
{
  if (qword_100501908 != -1)
  {
    swift_once();
  }

  sub_1000976F4(a1, a2);
  v5 = __chkstk_darwin(v4);
  if (qword_100501D78 != -1)
  {
    v5 = swift_once();
  }

  v6 = __chkstk_darwin(v5);
  v8 = *(v7 + 24);
  __chkstk_darwin(v6);
  os_unfair_lock_lock(v8 + 8);
  sub_10006A288(&v8[4], &v15);
  os_unfair_lock_unlock(v8 + 8);
  v9 = v15;
  if (v15)
  {
    if (qword_100501C40 != -1)
    {
      swift_once();
    }

    v10 = *(sub_1002A73E0(v9) + 16);

    if (v10)
    {
      v11 = *(v9 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
      v12 = *(v9 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      v13 = *(v9 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v14 = *(v9 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      sub_10006A2BC(v11, v12);
      sub_10006A2BC(v13, v14);
      sub_1003375E0(0xD000000000000042, 0x80000001004612F0, v11, v12, v13, v14, 0);

      sub_10006A2D0(v13, v14);
      sub_10006A2D0(v11, v12);
    }

    else
    {
    }
  }
}

uint64_t sub_100067F40(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v5 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v5 >> 60 == 15)
  {
    if (a3 >> 60 == 15)
    {
      sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v5);
      sub_100069E2C(a2, a3);
      sub_10006A2D0(v6, v5);
      return 1;
    }

    goto LABEL_5;
  }

  if (a3 >> 60 == 15)
  {
LABEL_5:
    sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v5);
    sub_100069E2C(a2, a3);
    sub_10006A2D0(v6, v5);
    sub_10006A2D0(a2, a3);
    return 0;
  }

  sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v5);
  sub_10006A2BC(v6, v5);
  sub_100069E2C(a2, a3);
  v8 = sub_10008FB4C(v6, v5, a2, a3);
  sub_10006A2D0(a2, a3);
  sub_10006A2D0(v6, v5);
  sub_10006A2D0(v6, v5);
  return v8 & 1;
}

void sub_1000680F8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    v5 = sub_10012E5A4(0, *(v5 + 16) + 1, 1, v5);
    *(v2 + v12) = v5;
    goto LABEL_13;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) != 1)
  {
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_readPending) == 1 && *(v2 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v14 = Logger.logObject.getter();
    if (Strong)
    {
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Calling btHceSessionHandleApdu", v16, 2u);
      }

      if ([Strong respondsToSelector:"btHceSessionHandleApdu:"])
      {
        swift_unknownObjectRetain();
        isa = Data._bridgeToObjectiveC()().super.isa;
        [Strong btHceSessionHandleApdu:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v14, v22, "Missing delegate", v23, 2u);
      }

      if (qword_100501908 != -1)
      {
        swift_once();
      }

      sub_100096454();
    }

    return;
  }

  v12 = OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_receivedMessages;
  swift_beginAccess();
  v5 = *(v2 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v12) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  v20 = *(v5 + 16);
  v19 = *(v5 + 24);
  if (v20 >= v19 >> 1)
  {
    v5 = sub_10012E5A4((v19 > 1), v20 + 1, 1, v5);
  }

  *(v5 + 16) = v20 + 1;
  v21 = v5 + 16 * v20;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v2 + v12) = v5;
  swift_endAccess();
  sub_100069E2C(a1, a2);
}

void sub_1000684C4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "Calling btTxnSessionDidEndTransaction", v14, 2u);
        }

        if ([v9 respondsToSelector:"btTxnSessionDidEndTransaction:result:"])
        {
          [v9 btTxnSessionDidEndTransaction:v11 result:0];
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing session or delegate", v17, 2u);
    }
  }
}

void sub_10006877C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.info.getter();
        v16 = os_log_type_enabled(v14, v15);
        if (a1)
        {
          if (a1 == 4)
          {
            if (v16)
            {
              v17 = swift_slowAlloc();
              *v17 = 0;
              _os_log_impl(&_mh_execute_header, v14, v15, "Calling btHceTxnSessionUwbUnavailable", v17, 2u);
            }

            if ([v11 respondsToSelector:"btHceTxnSessionUwbUnavailable:"])
            {
              [v11 btHceTxnSessionUwbUnavailable:v13];
            }
          }

          else
          {
            if (v16)
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              _os_log_impl(&_mh_execute_header, v14, v15, "Calling btHceTxnSessionDidEndUnexpectedly", v22, 2u);
            }

            if ([v11 respondsToSelector:"btHceTxnSessionDidEndUnexpectedly:result:"])
            {
              sub_100069DD8();
              swift_allocError();
              *v23 = a1;
              swift_unknownObjectRetain();
              v24 = _convertErrorToNSError(_:)();
              [v11 btHceTxnSessionDidEndUnexpectedly:v13 result:v24];

              swift_unknownObjectRelease_n();

              return;
            }
          }
        }

        else
        {
          if (v16)
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v14, v15, "Calling btHceTxnSessionRadioIsDisabled", v21, 2u);
          }

          if ([v11 respondsToSelector:"btHceTxnSessionRadioIsDisabled:"])
          {
            [v11 btHceTxnSessionRadioIsDisabled:v13];
          }
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Missing session or delegate", v20, 2u);
    }
  }
}

uint64_t sub_100068B94()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    *(v0 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages) = 0;
    *(v0 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isFirstStart) = 1;
    *(v0 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) = 0;
    *(v0 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_readPending) = 0;
    v9 = OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_receivedMessages;
    swift_beginAccess();
    v10 = *(v0 + v9);
    *(v0 + v9) = &_swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100068D38()
{
  ObjectType = swift_getObjectType();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v0[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isFirstStart] = 1;
  v0[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning] = 0;
  v0[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_readPending] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_receivedMessages] = &_swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id SECServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of SECServer.presentmentIntentAssertionCallbacks()
{
  sub_100068FC4(&qword_100504840, &qword_100408C28);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100068FC4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of SEStorageManagementUIClient.connection()
{
  v0 = objc_allocWithZone(SESUIServiceConnection);

  return [v0 init];
}

uint64_t variable initialization expression of SEStorageManagementUIClient.connectionQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_10006928C();
  static DispatchQoS.unspecified.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_10006928C()
{
  result = qword_100501E50;
  if (!qword_100501E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100501E50);
  }

  return result;
}

uint64_t sub_1000692D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for AlishaPairingExternal()
{
  result = qword_100501ED8;
  if (!qword_100501ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100069374()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_100069480(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10006948C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000694AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void *sub_100069548@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000695A0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_1000695EC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100069644()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000696AC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100069724(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000697A4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

_DWORD *sub_100069800@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100069814(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100069880(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100069908(uint64_t a1)
{
  v2 = sub_100069AF8(&qword_1005021C0, type metadata accessor for SESPrivacyEncryptionScheme);
  v3 = sub_100069AF8(&qword_1005021C8, type metadata accessor for SESPrivacyEncryptionScheme);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000699C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000699F4(uint64_t a1)
{
  v2 = sub_100069AF8(&qword_100502070, type metadata accessor for Name);
  v3 = sub_100069AF8(&qword_100502078, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100069AF8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100069BD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100069C18(uint64_t a1)
{
  v2 = sub_100069AF8(&qword_1005021D0, type metadata accessor for URLResourceKey);
  v3 = sub_100069AF8(&qword_1005021D8, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100069CD4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100069D10()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100069D64()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

unint64_t sub_100069DD8()
{
  result = qword_100502008;
  if (!qword_100502008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502008);
  }

  return result;
}

uint64_t sub_100069E2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100069E80(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16[1] = qword_10051B7F0;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_10006A204;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C5260;
  v14 = _Block_copy(aBlock);
  sub_100069E2C(a1, a2);
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_10006A178(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10006A1CC()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006A20C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006A224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006A288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  result = sub_10034B46C(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10006A2BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100069E2C(a1, a2);
  }

  return a1;
}

uint64_t sub_10006A2D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10006A178(a1, a2);
  }

  return a1;
}

uint64_t sub_10006A2F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006A370()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006A3C0()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10006A400()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10006612C(v0[2]);
}

uint64_t sub_10006A424()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006A46C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1000654E0(*(v0 + 16));
}

__n128 sub_10006A500(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_10006A544(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 200))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A564(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 200) = v3;
  return result;
}

__n128 sub_10006A624(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10006A630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_10006A958(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10006A97C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A99C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

uint64_t sub_10006A9FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006AA1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_10006AA6C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_10006AB60()
{
  result = [objc_allocWithZone(type metadata accessor for LyonSE()) init];
  qword_10051B168 = result;
  return result;
}

id sub_10006ABF0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &ObjectType - v5;
  v7 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &ObjectType - v10;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV] = 0;
  v12 = OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager;
  type metadata accessor for SlotManager();
  v13 = swift_allocObject();
  sub_100073C94(2uLL);
  *&v1[v12] = v13;
  v1[OBJC_IVAR____TtC10seserviced6LyonSE_isRunning] = 0;
  v14 = OBJC_IVAR____TtC10seserviced6LyonSE_seTimeoutInSec;
  v30 = 0x4008000000000000;
  aBlock = 0;
  LOBYTE(v24) = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  *&v1[v14] = aBlock;
  *&v1[OBJC_IVAR____TtC10seserviced6LyonSE_nonRecoverableSEErrorCodes] = &off_1004C3510;
  v15 = OBJC_IVAR____TtC10seserviced6LyonSE_enableI2CLogging;
  LOBYTE(aBlock) = 0;
  LOBYTE(v30) = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  v1[v15] = aBlock;
  v29.receiver = v1;
  v29.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v29, "init");
  v17 = qword_100501D90;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v27 = sub_100075D2C;
  v28 = v19;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100193978;
  v26 = &unk_1004C5B50;
  v20 = _Block_copy(&aBlock);

  os_state_add_handler();
  _Block_release(v20);

  return v18;
}

char *sub_10006AFE8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10seserviced6LyonSE_isRunning);
  v49 = &type metadata for Bool;
  LOBYTE(v48) = v2;
  sub_100075D50(&v48, v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v47, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v4 = *(v0 + OBJC_IVAR____TtC10seserviced6LyonSE_seTimeoutInSec);
  v49 = &type metadata for Double;
  *&v48 = v4;
  sub_100075D50(&v48, v47);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v47, 0x756F656D69546573, 0xEE006365536E4974, v5);
  v6 = *(v0 + OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV);
  if (!v6)
  {
    v12 = 1701736302;
    v49 = &type metadata for String;
    goto LABEL_6;
  }

  result = [v6 asData];
  if (!result)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *&v48 = sub_100288788(v9, v11);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;
  sub_10006A178(v9, v11);

  v49 = &type metadata for String;
  if (!v14)
  {
    v12 = 1701736302;
LABEL_6:
    v14 = 0xE400000000000000;
  }

  *&v48 = v12;
  *(&v48 + 1) = v14;
  sub_100075D50(&v48, v47);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v47, 0xD00000000000001DLL, 0x8000000100461850, v15);
  v16 = *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager);
  v17 = *(v16 + 24);
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v45 = *(v16 + 24);
    }

    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    *&v48 = _swiftEmptyArrayStorage;

    result = sub_10019F3C0(0, v18 & ~(v18 >> 63), 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      v19 = v48;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          if (!*(specialized _ArrayBuffer._getElementSlowPath(_:)() + 16))
          {
            goto LABEL_16;
          }
        }

        else
        {
          v24 = *(v17 + 8 * v20 + 32);

          if (!*(v24 + 16))
          {
LABEL_16:

            v23 = 0xE800000000000000;
            v21 = 0x72656E774F206F4ELL;
            goto LABEL_17;
          }
        }

        v21 = UUID.uuidString.getter();
        v23 = v22;

LABEL_17:
        *&v48 = v19;
        v26 = v19[2];
        v25 = v19[3];
        if (v26 >= v25 >> 1)
        {
          sub_10019F3C0((v25 > 1), v26 + 1, 1);
          v19 = v48;
        }

        ++v20;
        v19[2] = v26 + 1;
        v27 = &v19[2 * v26];
        v27[4] = v21;
        v27[5] = v23;
        if (v18 == v20)
        {

          goto LABEL_21;
        }
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_21:
  v28 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v49 = v28;
  *&v48 = v19;
  sub_100075D50(&v48, v47);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v47, 0x746F6C536B737275, 0xE900000000000073, v29);
  swift_beginAccess();
  v30 = *(v16 + 32);
  v31 = *(v30 + 16);
  v32 = _swiftEmptyArrayStorage;
  if (v31)
  {
    v46 = v28;
    *&v48 = _swiftEmptyArrayStorage;

    sub_10019F3C0(0, v31, 0);
    v32 = v48;
    v33 = (v30 + 48);
    do
    {
      v34 = *(v33 - 2);
      v35 = *v33;

      v36 = UUID.uuidString.getter();
      v38 = v37;

      *&v48 = v32;
      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        sub_10019F3C0((v39 > 1), v40 + 1, 1);
        v32 = v48;
      }

      v32[2] = v40 + 1;
      v41 = &v32[2 * v40];
      v41[4] = v36;
      v41[5] = v38;
      v33 += 3;
      --v31;
    }

    while (v31);

    v28 = v46;
  }

  v49 = v28;
  *&v48 = v32;
  sub_100075D50(&v48, v47);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v47, 0x746F6C536B737275, 0xEF73726574696157, v42);
  sub_1001950D4(&_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v44 = sub_100015DA0("lyonse.state", isa);

  return v44;
}

void sub_10006B5F0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC10seserviced6LyonSE_isRunning;
    v10 = *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_isRunning);
    v11 = Logger.logObject.getter();
    if (v10)
    {
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "LyonSE is already running", v13, 2u);
      }
    }

    else
    {
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, v14, "Starting LyonSE", v15, 2u);
      }

      *(v1 + v9) = 1;
      sub_10006B834(0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10006B834(char a1)
{
  v3 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v34 - v5;
  if (v1[OBJC_IVAR____TtC10seserviced6LyonSE_isRunning] == 1)
  {
    if ((a1 & 1) == 0)
    {
      v7 = v1;
      if (qword_100501A18 != -1)
      {
        swift_once();
      }

      sub_1000746B8(&v37);
      v8 = *(&v37 + 1);
      if (*(&v37 + 1) >> 60 != 15)
      {
        v9 = v37;
        sub_100069E2C(v37, *(&v37 + 1));
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10006A2D0(v9, v8);
        v11 = [objc_opt_self() TLVWithData:isa];

        if (v11)
        {
          sub_100069E2C(v9, v8);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.info.getter();
          sub_10006A2D0(v9, v8);
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *&v37 = v35;
            *v14 = 136315138;
            v36 = sub_100288788(v9, v8);
            HIDWORD(v34) = v13;
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
            v15 = BidirectionalCollection<>.joined(separator:)();
            v17 = v16;

            v18 = sub_1002FFA0C(v15, v17, &v37);

            *(v14 + 4) = v18;
            _os_log_impl(&_mh_execute_header, v12, BYTE4(v34), "Retrieved initiate access protocol TLV from storage %s", v14, 0xCu);
            sub_1000752F4(v35);

            sub_10006A2D0(v9, v8);
          }

          else
          {

            sub_10006A2D0(v9, v8);
          }

          v33 = *&v7[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV];
          *&v7[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV] = v11;

          return;
        }

        sub_10006A2D0(v9, v8);
      }

      if (*&v1[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV])
      {
        return;
      }
    }

    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = v1;
    v23[3] = 0xD00000000000001ELL;
    v23[4] = 0x8000000100461650;
    v24 = type metadata accessor for SERequest();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    v28 = (v27 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
    *v28 = 0xD000000000000014;
    v28[1] = 0x8000000100461670;
    *(v27 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 1;
    *(v27 + 16) = 0;
    *(v27 + 24) = 1;
    v29 = v27 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
    *(v29 + 32) = 0;
    *v29 = 0u;
    *(v29 + 16) = 0u;
    *(v27 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
    *(v27 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = 0;
    v30 = v27 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
    *v30 = 0;
    *(v30 + 8) = 1;
    sub_100075390(v6, v27 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
    v31 = v27 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
    *v31 = 0;
    *(v31 + 8) = 1;
    *(v27 + 32) = sub_100075494;
    *(v27 + 40) = v23;
    v32 = v1;
    sub_1001939C8(0, v27);
  }

  else
  {
    v35 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v35, v19, "LyonSE not running, did not cache initiate access protocol", v20, 2u);
    }

    v21 = v35;
  }
}

void sub_10006BDD8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC10seserviced6LyonSE_isRunning;
    v10 = *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_isRunning);
    v11 = Logger.logObject.getter();
    if (v10 == 1)
    {
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Stopping LyonSE", v13, 2u);
      }

      v14 = *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager);
      sub_10006C034();
      v15 = *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV);
      *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV) = 0;

      *(v1 + v9) = 0;
    }

    else
    {
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v11, v16, "LyonSE is not running", v17, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10006C034()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = *(v0 + 24);
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
LABEL_10:
      swift_beginAccess();
      v7 = *(v0 + 32);
      *(v0 + 32) = _swiftEmptyArrayStorage;

      return;
    }
  }

  if (v2 >= 1)
  {

    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v1 + 8 * v3 + 32);
      }

      ++v3;
      v5 = *(v4 + 16);
      *(v4 + 16) = 0;
    }

    while (v2 != v3);

    goto LABEL_10;
  }

  __break(1u);
}

void sub_10006C12C(void *a1, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC10seserviced6LyonSE_logger;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v86 = v5;
      *v16 = 136315138;
      *(v16 + 4) = sub_1002FFA0C(0xD000000000000012, 0x8000000100461630, &v86);
      _os_log_impl(&_mh_execute_header, v14, v15, "Selecting %s", v16, 0xCu);
      sub_1000752F4(v5);
    }

    else
    {
    }

    v17 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
    if (v18 >> 60 == 15)
    {
      __break(1u);
      goto LABEL_66;
    }

    v19 = v17;
    v20 = v18;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v19, v20);
    v86 = 0;
    v22 = sub_10005370C(a1, isa, &v86);

    v23 = v86;
    if (v22)
    {
      v24 = v86;
      goto LABEL_13;
    }

    if (!v86)
    {
      goto LABEL_14;
    }

    v22 = v86;
    v28 = sub_1003B0934(&v22->isa);
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v29, v31);
    v33 = [objc_opt_self() TLVWithData:v32];

    if (!v33)
    {
LABEL_13:

LABEL_14:
      v22 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v86 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1002FFA0C(0xD000000000000012, 0x8000000100461630, &v86);
        _os_log_impl(&_mh_execute_header, v22, v25, "Failed to select %s", v26, 0xCu);
        sub_1000752F4(v27);
      }

      goto LABEL_17;
    }

    v34 = &selRef_mockFleetIntermediateCert;
    if ([v33 tag] == 111)
    {
      v35 = [v33 children];
      if (v35)
      {
        v36 = v35;
        v79 = v33;
        sub_1000754A4();
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v86 = _swiftEmptyArrayStorage;
        if (v37 >> 62)
        {
          goto LABEL_37;
        }

        for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v78 = v22;
          v39 = 0;
          v22 = (v37 & 0xC000000000000001);
          v40 = v37 & 0xFFFFFFFFFFFFFF8;
          v80 = v37 & 0xC000000000000001;
          v81 = v13;
          while (1)
          {
            if (v22)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v39 >= *(v40 + 16))
              {
                goto LABEL_36;
              }

              v42 = *(v37 + 8 * v39 + 32);
            }

            v43 = v42;
            v13 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            if ([v42 v34[490]] == 165)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v44 = v37;
              v45 = a3;
              v46 = v34;
              v47 = *(v86 + 2);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              v34 = v46;
              a3 = v45;
              v37 = v44;
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v22 = v80;
            }

            else
            {
            }

            ++v39;
            v41 = v13 == i;
            v13 = v81;
            if (v41)
            {
              v48 = v86;
              v22 = v78;
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          ;
        }

        v48 = _swiftEmptyArrayStorage;
LABEL_39:

        v33 = v79;
        if ((v48 & 0x8000000000000000) != 0 || (v48 & 0x4000000000000000) != 0)
        {
          if (_CocoaArrayWrapper.endIndex.getter() == 1)
          {
LABEL_42:
            if ((v48 & 0xC000000000000001) != 0)
            {
              v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*(v48 + 16))
              {
                __break(1u);
              }

              v49 = *(v48 + 32);
            }

            v50 = v49;

            v51 = OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV;
            v52 = *&a3[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV];
            *&a3[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV] = v50;

            if (qword_100501A18 != -1)
            {
              swift_once();
            }

            v53 = *&a3[v51];
            if (v53 && (v54 = [v53 asData]) != 0)
            {
              v55 = v54;
              v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v58 = v57;
            }

            else
            {
              v56 = 0;
              v58 = 0xF000000000000000;
            }

            sub_10008B924(a4, a5, v56, v58);
            sub_10006A2D0(v56, v58);
            v5 = a3;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.info.getter();
            if (!os_log_type_enabled(v59, v60))
            {

              goto LABEL_56;
            }

            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v86 = v62;
            *v61 = 136315138;
            v63 = *&a3[v51];
            if (v63)
            {
              oslogb = v62;
              v64 = [v63 asData];

              if (v64)
              {
                v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v67 = v66;

                sub_100288788(v65, v67);
                sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
                v68 = BidirectionalCollection<>.joined(separator:)();
                v70 = v69;
                sub_10006A178(v65, v67);

                v71 = sub_1002FFA0C(v68, v70, &v86);

                *(v61 + 4) = v71;
                _os_log_impl(&_mh_execute_header, v59, v60, "Caching initiate access protocol %s", v61, 0xCu);
                sub_1000752F4(oslogb);

LABEL_56:

LABEL_17:
                return;
              }

LABEL_67:
              __break(1u);
              return;
            }

LABEL_66:

            __break(1u);
            goto LABEL_67;
          }
        }

        else if (*(v48 + 16) == 1)
        {
          goto LABEL_42;
        }
      }
    }

    v72 = v33;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      *(v75 + 4) = v72;
      *v76 = v33;
      v77 = v72;
      _os_log_impl(&_mh_execute_header, v73, v74, "Invalid Select Response for Lyon %@", v75, 0xCu);
      sub_100075768(v76, &unk_100503F70, &unk_10040B2E0);
    }

    else
    {
    }

    goto LABEL_17;
  }

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_100075400();
    swift_allocError();
    *v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Failed to get secure element with %@", v9, 0xCu);
    sub_100075768(v10, &unk_100503F70, &unk_10040B2E0);
  }
}

void sub_10006CAB0()
{
  v1 = v0;
  v2 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v53 = &v50 - v4;
  if (qword_100501A30 != -1)
  {
    swift_once();
  }

  v54 = qword_10051B358;
  sub_1001941C0();
  if (qword_100501900 != -1)
  {
    swift_once();
  }

  v5 = *(qword_10051B190 + 32);
  v57 = xmmword_1004098D0;
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = 32;
    do
    {
      v55 = bswap32(*(v5 + v7)) >> 16;
      v56[3] = &type metadata for UnsafeRawBufferPointer;
      v56[4] = &protocol witness table for UnsafeRawBufferPointer;
      v56[0] = &v55;
      v56[1] = v56;
      v8 = sub_1000752B0(v56, &type metadata for UnsafeRawBufferPointer);
      v10 = *v8;
      v9 = v8[1];
      Data._Representation.append(contentsOf:)();
      sub_1000752F4(v56);
      v7 += 2;
      --v6;
    }

    while (v6);

    v11 = *(&v57 + 1);
    v12 = v57;
  }

  else
  {
    v12 = 0;
    v11 = 0xC000000000000000;
  }

  sub_100069E2C(v12, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  sub_10006A178(v12, v11);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v51 = v0;
    v16 = v15;
    v17 = swift_slowAlloc();
    v56[0] = v17;
    *v16 = 136315138;
    v18 = sub_100288788(v12, v11);
    v52 = v11;
    v50 = v12;
    *&v57 = v18;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;
    v12 = v50;
    v11 = v52;

    v22 = sub_1002FFA0C(v19, v21, v56);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Updating Aliro protocol versions to %s", v16, 0xCu);
    sub_1000752F4(v17);

    v1 = v51;
  }

  sub_100069E2C(v12, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v12, v11);
  v24 = [objc_opt_self() TLVWithTag:148 value:isa];

  if (!v24)
  {
    __break(1u);
  }

  v25 = [v24 asData];

  if (v25)
  {
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = type metadata accessor for UUID();
    v30 = v53;
    (*(*(v29 - 8) + 56))(v53, 1, 1, v29);
    v31 = swift_allocObject();
    v31[2] = v26;
    v31[3] = v28;
    v31[4] = v1;
    v32 = type metadata accessor for SERequest();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    v35 = swift_allocObject();
    v36 = (v35 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
    *v36 = 0xD000000000000015;
    v36[1] = 0x8000000100461610;
    *(v35 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 1;
    *(v35 + 16) = 0;
    *(v35 + 24) = 1;
    v37 = v35 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
    *(v37 + 32) = 0;
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v35 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
    *(v35 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = 0;
    v38 = v35 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
    *v38 = 0;
    *(v38 + 8) = 1;
    sub_100075390(v30, v35 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
    v39 = v35 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
    *v39 = 0;
    *(v39 + 8) = 1;
    *(v35 + 32) = sub_100075380;
    *(v35 + 40) = v31;
    sub_100069E2C(v26, v28);
    v40 = v1;
    sub_1001939C8(0, v35);

    sub_10006A178(v26, v28);
  }

  else
  {
    sub_100069E2C(v12, v11);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    sub_10006A178(v12, v11);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v12;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56[0] = v45;
      *v44 = 136315138;
      *&v57 = sub_100288788(v43, v11);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v46 = BidirectionalCollection<>.joined(separator:)();
      v48 = v47;

      v49 = sub_1002FFA0C(v46, v48, v56);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to form Update Aliro Versions TLV with %s", v44, 0xCu);
      sub_1000752F4(v45);

      sub_10006A178(v43, v11);

      return;
    }
  }

  sub_10006A178(v12, v11);
}

void sub_10006D1CC(void *a1, char a2)
{
  if (a2)
  {
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v24 = v5;
      *v4 = 136315138;
      sub_100075400();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1002FFA0C(v6, v7, &v24);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Failed to get the SE %s", v4, 0xCu);
      sub_1000752F4(v5);

      return;
    }

LABEL_12:

    return;
  }

  v9 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  if (v10 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v11 = v9;
  v12 = v10;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v11, v12);
  v14 = Data._bridgeToObjectiveC()().super.isa;
  v15 = sub_100045670(a1, isa, v14);

  if (v15)
  {
    v16 = v15;
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_1002FFA0C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Setup instance failure %s", v18, 0xCu);
      sub_1000752F4(v19);

      return;
    }

    goto LABEL_12;
  }

  if (qword_1005018E8 != -1)
  {
    swift_once();
  }

  sub_10006B834(1);
}

uint64_t sub_10006D4F8(int64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
  {
    if (qword_1005018F8 != -1)
    {
      swift_once();
    }

    sub_100080874(a1);
    *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 2;
    v12 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);

    sub_1002F732C();
  }

  else
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      type metadata accessor for UUID();
      sub_10007554C();
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = sub_1002FFA0C(v8, v9, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "peer %s already disconnected, freeing slot", v6, 0xCu);
      sub_1000752F4(v7);
    }

    v11 = *(a2 + OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager);
    return sub_100073178();
  }
}

void sub_10006D880(char **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8;
  v258 = a7;
  v255 = a5;
  v256 = a6;
  v261 = a2;
  v262 = a4;
  v260 = a3;
  v11 = type metadata accessor for Logger();
  v254 = *(v11 - 8);
  v12 = *(v254 + 64);
  __chkstk_darwin(v11);
  v14 = v235 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v257 = v235 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v23 = qword_10051B7F0;
  *v22 = qword_10051B7F0;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v259 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v25 = *(v19 + 8);
  v24 = v19 + 8;
  v25(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_59:
    if (v26 == 2)
    {
      v55 = v22[2];
      v83 = v22[3];
      v61 = v83 - v55;
      if (__OFSUB__(v83, v55))
      {
        __break(1u);
LABEL_63:
        if (qword_100501A30 != -1)
        {
          v226 = v61;
          v227 = v55;
          swift_once();
          LODWORD(v55) = v227;
          v61 = v226;
        }

        v84 = v55 == 2;
        v252 = *(v61 + OBJC_IVAR____TtC10seserviced6LyonSE_seTimeoutInSec);
        v253 = qword_10051B358;
        v85 = type metadata accessor for UUID();
        aBlock = 0u;
        v264 = 0u;
        v265 = 0;
        v86 = *(v85 - 8);
        v87 = v257;
        (*(v86 + 16))(v257, v255, v85);
        (*(v86 + 56))(v87, 0, 1, v85);
        v88 = swift_allocObject();
        LODWORD(v255) = v84;
        *(v88 + 16) = v84;
        *(v88 + 24) = v61;
        *(v88 + 32) = v24;
        v89 = v260;
        *(v88 + 40) = v261;
        *(v88 + 48) = v89;
        v259 = v88;
        v90 = type metadata accessor for SERequest();
        v91 = *(v90 + 48);
        v92 = *(v90 + 52);
        v251 = v90;
        a1 = swift_allocObject();
        if ((v258 & 1) != 0 && (*(v86 + 48))(v87, 1, v85) == 1)
        {
          goto LABEL_156;
        }

        v93 = (a1 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
        *v93 = 0xD000000000000017;
        v93[1] = 0x80000001004616B0;
        *(a1 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = v255;
        a1[2] = v252;
        *(a1 + 24) = 0;
        v94 = a1 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
        *(v94 + 4) = v265;
        v95 = v264;
        *v94 = aBlock;
        *(v94 + 1) = v95;
        *(a1 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
        *(a1 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = v24;
        v96 = a1 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
        *v96 = v258;
        v96[8] = 0;
        sub_1000756F8(v87, a1 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
        v97 = a1 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
        *v97 = v256;
        v97[8] = 0;
        v98 = v259;
        a1[4] = sub_1000756E4;
        a1[5] = v98;

        sub_100069E2C(v261, v260);

        v99 = v61;
        sub_100075768(v87, &unk_10050BE80, &unk_10040B360);
        sub_1001939C8(0, a1);

        return;
      }
    }

    else
    {
      v61 = 0;
    }

    goto LABEL_71;
  }

  if (*(v7 + OBJC_IVAR____TtC10seserviced6LyonSE_isRunning) != 1)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Not running", v40, 2u);
      goto LABEL_11;
    }

LABEL_12:

    sub_1000755A4();
    swift_allocError();
    *v41 = 256;
    goto LABEL_29;
  }

  v27 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v24 = v262;
  if (*(v262 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) - 2 > 2)
  {

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v42, v43))
    {
LABEL_16:

LABEL_28:
      sub_1000755A4();
      swift_allocError();
      *v60 = 0;
LABEL_29:
      swift_willThrow();
      return;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v27;
    v47 = v45;
    *&aBlock = v45;
    *v44 = 136315138;
    v48 = *(v24 + v46);
LABEL_15:
    LOBYTE(v267) = v48;
    v49 = String.init<A>(describing:)();
    v51 = sub_1002FFA0C(v49, v50, &aBlock);

    *(v44 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v42, v43, "received SE message when peer is in invalid state %s", v44, 0xCu);
    sub_1000752F4(v47);

    goto LABEL_16;
  }

  if (a1)
  {
    v28 = v260;
    v29 = v261;
    sub_100069E2C(v261, v260);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    sub_10006A178(v29, v28);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&aBlock = v33;
      *v32 = 16777730;
      *(v32 + 4) = a1;
      *(v32 + 5) = 2080;
      v267 = sub_100288788(v29, v28);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v35;

      v37 = sub_1002FFA0C(v34, v36, &aBlock);

      *(v32 + 7) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Ignoring unknown message with ID %hhu payload %s", v32, 0xFu);
      sub_1000752F4(v33);

LABEL_26:
    }

LABEL_27:

    goto LABEL_28;
  }

  v252 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v253 = v7;
  v52 = v260;
  v22 = v261;
  v53 = sub_10006FBC0(v261, v260);
  if ((v53 & 0x10000) != 0)
  {
    v30 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v30, v57))
    {
      goto LABEL_27;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "Blocking invalid command";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v30, v57, v59, v58, 2u);
    goto LABEL_26;
  }

  v54 = v53;
  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B188;
  sub_100081644(0, v24);
  if (v8)
  {
    return;
  }

  sub_100081838(1, 0x617373656D204553, 0xEA00000000006567, v24);
  v9 = 0;
  LODWORD(v55) = *(v24 + v252);
  if (v55 != 2)
  {
    v251 = v7;
    v61 = v253;
    goto LABEL_32;
  }

  v247 = v54;
  v248 = 2;
  sub_100069E2C(v22, v52);
  v56 = sub_100090214(v22, v52, 0, 0, 0);
  v24 = 0;
  v9 = v253;
  v73 = v56;
  v246 = 0;
  v251 = v7;
  sub_10006A178(v22, v52);
  if (v73 != 32896)
  {
LABEL_85:
    v30 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v57))
    {
      goto LABEL_27;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "Invalid Auth 0 TLVs";
    goto LABEL_25;
  }

  v26 = v52 >> 62;
  if ((v52 >> 62) > 1)
  {
    goto LABEL_59;
  }

  if (v26)
  {
    if (__OFSUB__(HIDWORD(v22), v22))
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v61 = HIDWORD(v22) - v22;
  }

  else
  {
    v61 = BYTE6(v52);
  }

LABEL_71:
  v100 = objc_opt_self();
  if (__OFSUB__(v61, 1))
  {
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    v61 = _CocoaArrayWrapper.endIndex.getter();
    if (v61)
    {
      goto LABEL_76;
    }

LABEL_145:

    goto LABEL_146;
  }

  if (v61 - 1 < 5)
  {
    goto LABEL_142;
  }

  v101 = v100;
  v102 = Data.subdata(in:)();
  v104 = v103;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v102, v104);
  v106 = [v101 TLVsWithData:isa];

  v22 = v261;
  if (!v106)
  {
    goto LABEL_85;
  }

  sub_1000754A4();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_144;
  }

  v61 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v61)
  {
    goto LABEL_145;
  }

LABEL_76:
  v107 = 0;
  v249 = v7 & 0xFFFFFFFFFFFFFF8;
  v250 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v250)
    {
      v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v107 >= *(v249 + 16))
      {
        goto LABEL_123;
      }

      v108 = *(v7 + 8 * v107 + 32);
    }

    v22 = v108;
    v109 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      break;
    }

    if ([v108 tag] == 65)
    {
      a1 = &selRef_type;
      v110 = [v22 value];

      if (!v110)
      {

        goto LABEL_136;
      }

      v111 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;

      sub_100069E2C(v111, v113);
      v114 = v246;
      LODWORD(v245) = sub_1000939AC(v111, v113, 0, 0, 0);
      if (v114)
      {

        sub_10006A178(v111, v113);
        v246 = 0;
        goto LABEL_136;
      }

      v246 = 0;
      v243 = v111;
      v244 = v113;
      v115 = 0;
      while (1)
      {
        if (v250)
        {
          v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v115 >= *(v249 + 16))
          {
            __break(1u);
            goto LABEL_149;
          }

          v116 = *(v7 + 8 * v115 + 32);
        }

        v22 = v116;
        v117 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          goto LABEL_143;
        }

        if ([v116 tag] == 77)
        {
          v118 = [v22 value];

          if (v118)
          {
            v241 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v242 = v119;

            v120 = 0;
            while (1)
            {
              if (v250)
              {
                v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v120 >= *(v249 + 16))
                {
                  __break(1u);
LABEL_154:
                  __break(1u);
LABEL_155:
                  __break(1u);
LABEL_156:

                  sub_100069E2C(v261, v260);
                  v228 = qword_100501D88;

                  v229 = v61;
                  if (v228 != -1)
                  {
                    goto LABEL_160;
                  }

                  while (1)
                  {
                    (*(v254 + 16))(v14, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v11);
                    v230 = Logger.logObject.getter();
                    v231 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v230, v231))
                    {
                      v232 = swift_slowAlloc();
                      *v232 = 0;
                      _os_log_impl(&_mh_execute_header, v230, v231, "Requesting connection identifier check with no connection identifier", v232, 2u);
                    }

                    (*(v254 + 8))(v14, v11);
                    sub_100075768(&aBlock, &qword_100502438, &qword_100409990);
                    v233 = *(*a1 + 12);
                    v234 = *(*a1 + 26);
                    swift_deallocPartialClassInstance();
                    sub_100075768(v257, &unk_10050BE80, &unk_10040B360);
                    __break(1u);
LABEL_160:
                    swift_once();
                  }
                }

                v121 = *(v7 + 8 * v120 + 32);
              }

              v122 = v121;
              v123 = v120 + 1;
              if (__OFADD__(v120, 1))
              {
                goto LABEL_150;
              }

              if ([v121 tag] == 76)
              {
                v124 = [v122 value];

                if (v124)
                {
                  v239 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v240 = v125;

                  v126 = 0;
                  do
                  {
                    if (v250)
                    {
                      v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v126 >= *(v249 + 16))
                      {
                        goto LABEL_155;
                      }

                      v127 = *(v7 + 8 * v126 + 32);
                    }

                    v22 = v127;
                    v128 = v126 + 1;
                    if (__OFADD__(v126, 1))
                    {
                      goto LABEL_154;
                    }

                    if ([v127 tag] == 92)
                    {
                      goto LABEL_124;
                    }

                    ++v126;
                  }

                  while (v128 != v61);

LABEL_133:
                  sub_10006A178(v239, v240);
                }

                else
                {
LABEL_121:
                }

                sub_10006A178(v241, v242);
LABEL_135:
                sub_10006A178(v243, v244);
LABEL_136:
                v22 = v261;
LABEL_146:
                v218 = v260;
                sub_100069E2C(v22, v260);
                v38 = Logger.logObject.getter();
                v219 = static os_log_type_t.error.getter();
                sub_10006A178(v22, v218);
                if (os_log_type_enabled(v38, v219))
                {
                  v220 = swift_slowAlloc();
                  v221 = swift_slowAlloc();
                  *&aBlock = v221;
                  *v220 = 136315138;
                  v267 = sub_100288788(v22, v218);
                  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
                  v222 = BidirectionalCollection<>.joined(separator:)();
                  v224 = v223;

                  v225 = sub_1002FFA0C(v222, v224, &aBlock);

                  *(v220 + 4) = v225;
                  _os_log_impl(&_mh_execute_header, v38, v219, "Tag 0x41, 0x4C 0x4D, 0x5C not found in Auth0 with payload %s", v220, 0xCu);
                  sub_1000752F4(v221);

LABEL_11:
                }

                goto LABEL_12;
              }

              ++v120;
              if (v123 == v61)
              {
                goto LABEL_121;
              }
            }
          }

LABEL_110:

          goto LABEL_135;
        }

        ++v115;
        if (v117 == v61)
        {
          goto LABEL_110;
        }
      }
    }

    ++v107;
    v22 = v261;
    if (v109 == v61)
    {
      goto LABEL_145;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:

  v129 = [v22 a1[48]];

  if (!v129)
  {
    goto LABEL_133;
  }

  v237 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v238 = v130;

  v131 = Data.subdata(in:)();
  v249 = v132;
  v250 = v131;
  v133 = v262;
  v134 = *(v262 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
  v135 = v245 == 1;

  sub_1002F73C8(v135);

  v136 = v241;
  v137 = v242;
  sub_100069E2C(v241, v242);
  sub_100288640(8, v136, v137, &aBlock);
  v138 = aBlock;
  v139 = v133 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier;
  LOBYTE(v133) = sub_10008FB4C(aBlock, *(&aBlock + 1), *(v133 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier), *(v133 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8));
  sub_10006A178(v138, *(&v138 + 1));
  if ((v133 & 1) == 0)
  {
    v200 = v241;
    v201 = v242;
    sub_100069E2C(v241, v242);

    v202 = Logger.logObject.getter();
    v203 = static os_log_type_t.error.getter();
    sub_10006A178(v200, v201);

    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v261 = swift_slowAlloc();
      *&aBlock = v261;
      *v204 = 136315650;
      v267 = sub_100288788(*v139, *(v139 + 8));
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v205 = BidirectionalCollection<>.joined(separator:)();
      v207 = v206;

      v208 = sub_1002FFA0C(v205, v207, &aBlock);

      *(v204 + 4) = v208;
      *(v204 + 12) = 2080;
      v267 = sub_100288788(v241, v242);
      v209 = BidirectionalCollection<>.joined(separator:)();
      v211 = v210;

      v212 = sub_1002FFA0C(v209, v211, &aBlock);

      *(v204 + 14) = v212;
      *(v204 + 22) = 2080;

      v213 = UUID.uuidString.getter();
      v215 = v214;

      v216 = sub_1002FFA0C(v213, v215, &aBlock);

      *(v204 + 24) = v216;
      _os_log_impl(&_mh_execute_header, v202, v203, "%s does not match %s for %s", v204, 0x20u);
      swift_arrayDestroy();
    }

    sub_1000755A4();
    swift_allocError();
    *v217 = 256;
    swift_willThrow();
    goto LABEL_140;
  }

  v140 = (v262 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier);
  v141 = *(v262 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier);
  v142 = *(v262 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8);
  v143 = v241;
  v144 = v242;
  *v140 = v241;
  v140[1] = v144;
  sub_100069E2C(v143, v144);
  sub_10006A2D0(v141, v142);
  v145 = v249;
  v146 = v250;
  sub_100069E2C(v250, v249);
  v147 = v246;
  v148 = sub_1000939F8(v146, v145, 0, 0, 1);
  v9 = v147;
  sub_10006A178(v146, v145);
  if (v147)
  {
LABEL_140:
    sub_10006A178(v250, v249);
    sub_10006A178(v237, v238);
    sub_10006A178(v239, v240);
    sub_10006A178(v241, v242);
    sub_10006A178(v243, v244);
    return;
  }

  v149 = v262;
  v150 = v262 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID;
  *v150 = v148;
  *(v150 + 4) = 0;
  *(v149 + v252) = 3;
  v151 = v237;
  v152 = v238;
  sub_100069E2C(v237, v238);
  v153 = sub_100090214(v151, v152, 0, 0, 1);
  sub_10006A178(v151, v152);
  v154 = v262 + OBJC_IVAR____TtC10seserviced8LyonPeer_expeditedTransactionProtocolVersion;
  *v154 = v153;
  *(v154 + 2) = 0;
  v155 = OBJC_IVAR____TtC10seserviced6LyonSE_logger;
  v156 = v237;
  v157 = v238;
  sub_100069E2C(v237, v238);

  v246 = v155;
  v158 = Logger.logObject.getter();
  LODWORD(v155) = static os_log_type_t.debug.getter();
  sub_10006A178(v156, v157);

  LODWORD(v245) = v155;
  if (os_log_type_enabled(v158, v155))
  {
    v159 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    *&aBlock = v236;
    *v159 = 136315394;
    v267 = sub_100288788(v237, v238);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v160 = BidirectionalCollection<>.joined(separator:)();
    v162 = v161;

    v163 = sub_1002FFA0C(v160, v162, &aBlock);

    *(v159 + 4) = v163;
    *(v159 + 12) = 2080;

    v164 = UUID.uuidString.getter();
    v166 = v165;

    v167 = sub_1002FFA0C(v164, v166, &aBlock);

    *(v159 + 14) = v167;
    _os_log_impl(&_mh_execute_header, v158, v245, "Setting expedited protocol version identifier %s for peer %s", v159, 0x16u);
    swift_arrayDestroy();
  }

  v168 = v241;
  v169 = v242;
  sub_100069E2C(v241, v242);

  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.debug.getter();
  sub_10006A178(v168, v169);

  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *&aBlock = v245;
    *v172 = 136315394;
    v267 = sub_100288788(v241, v242);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v173 = BidirectionalCollection<>.joined(separator:)();
    v175 = v174;

    v176 = sub_1002FFA0C(v173, v175, &aBlock);

    *(v172 + 4) = v176;
    *(v172 + 12) = 2080;

    v177 = UUID.uuidString.getter();
    v179 = v178;

    v180 = sub_1002FFA0C(v177, v179, &aBlock);

    *(v172 + 14) = v180;
    _os_log_impl(&_mh_execute_header, v170, v171, "Setting reader identifier %s for peer %s", v172, 0x16u);
    swift_arrayDestroy();
  }

  v181 = v249;
  sub_100069E2C(v250, v249);

  v182 = v239;
  v183 = v240;
  sub_100069E2C(v239, v240);
  v184 = Logger.logObject.getter();
  v185 = static os_log_type_t.debug.getter();
  sub_10006A178(v250, v181);

  sub_10006A178(v182, v183);
  LODWORD(v245) = v185;
  v246 = v184;
  if (!os_log_type_enabled(v184, v185))
  {
LABEL_151:
    sub_10006A178(v243, v244);
    sub_10006A178(v241, v242);
    sub_10006A178(v237, v238);

    sub_10006A178(v250, v249);
    sub_10006A178(v239, v240);
    v61 = v253;
    v24 = v262;
    goto LABEL_152;
  }

  v186 = swift_slowAlloc();
  v236 = swift_slowAlloc();
  *&aBlock = v236;
  *v186 = 136315650;
  v267 = sub_100288788(v250, v249);
  v235[1] = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v235[0] = sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  v187 = BidirectionalCollection<>.joined(separator:)();
  v189 = v188;

  v190 = sub_1002FFA0C(v187, v189, &aBlock);

  *(v186 + 4) = v190;
  *(v186 + 12) = 2080;
  v24 = v262;

  v191 = UUID.uuidString.getter();
  v193 = v192;

  v194 = sub_1002FFA0C(v191, v193, &aBlock);

  *(v186 + 14) = v194;
  *(v186 + 22) = 2080;
  v267 = sub_100288788(v239, v240);
  v195 = BidirectionalCollection<>.joined(separator:)();
  v197 = v196;

  v198 = sub_1002FFA0C(v195, v197, &aBlock);

  *(v186 + 24) = v198;
  v199 = v246;
  _os_log_impl(&_mh_execute_header, v246, v245, "Setting uwb session id %s for peer %s from transaction id %s", v186, 0x20u);
  swift_arrayDestroy();

  sub_10006A178(v243, v244);
  sub_10006A178(v241, v242);
  sub_10006A178(v239, v240);
  sub_10006A178(v250, v249);
  sub_10006A178(v237, v238);

  v61 = v253;
LABEL_152:
  LODWORD(v55) = v248;
  LOWORD(v54) = v247;
LABEL_32:
  if (v54 == 32897)
  {
    v62 = *(v24 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    v63 = v55;

    sub_1002F73C8(0);

    LODWORD(v55) = v63;
    v61 = v253;
  }

  if (v54 != 195 && v54 != 4291 && v54 != 192 && v54 != 4288)
  {
    v64 = *(v24 + v252);
    if (v64 != 3)
    {
      if (v64 != 4 || v54 != 32969 && v54 != 37065)
      {

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v42, v43))
        {
          goto LABEL_16;
        }

        v44 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&aBlock = v47;
        *v44 = 136315138;
        v48 = *(v24 + v252);
        goto LABEL_15;
      }

LABEL_57:
      v76 = *(v24 + OBJC_IVAR____TtC10seserviced8LyonPeer_stepUpHelper);
      v77 = swift_allocObject();
      *(v77 + 16) = v24;
      *(v77 + 24) = v61;
      v78 = *(v76 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stsHelper);

      v79 = v61;
      v80 = Data._bridgeToObjectiveC()().super.isa;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_100075638;
      *(v81 + 24) = v77;
      v265 = sub_10007567C;
      v266 = v81;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v264 = sub_1000751C8;
      *(&v264 + 1) = &unk_1004C5A60;
      v82 = _Block_copy(&aBlock);

      [v78 processUnifiedAccessStepupAPDU:v80 callbackQueue:v259 responseHandler:v82];
      _Block_release(v82);

      return;
    }

    goto LABEL_63;
  }

  if (*(v24 + v252) != 3)
  {
    goto LABEL_57;
  }

  if (qword_100501A30 != -1)
  {
    swift_once();
  }

  sub_100194774(v24);
  *(v24 + v252) = 4;
  if (*(v24 + OBJC_IVAR____TtC10seserviced8LyonPeer_expeditedTransactionProtocolVersion + 2))
  {

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&aBlock = v68;
      *v67 = 136315138;

      v69 = UUID.uuidString.getter();
      v71 = v70;

      v72 = sub_1002FFA0C(v69, v71, &aBlock);

      *(v67 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v65, v66, "expeditedTransactionProtocolVersion missing for %s", v67, 0xCu);
      sub_1000752F4(v68);

      v24 = v262;
    }

    sub_100080E48(v24, 0);
    goto LABEL_28;
  }

  v74 = *(v24 + OBJC_IVAR____TtC10seserviced8LyonPeer_stepUpHelper);
  sub_1002FCAA0(*(v24 + OBJC_IVAR____TtC10seserviced8LyonPeer_expeditedTransactionProtocolVersion));
  if (!v9)
  {
    v75 = *(v24 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);

    sub_1002F74B0();

    v61 = v253;
    goto LABEL_57;
  }
}

uint64_t sub_10006FBC0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = __OFSUB__(v12, v13);
    v15 = v12 - v13;
    if (!v14)
    {
      if (v15 < 4)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    goto LABEL_34;
  }

  if (!v11)
  {
    if (BYTE6(a2) >= 4uLL)
    {
      goto LABEL_17;
    }

LABEL_11:
    sub_100069E2C(a1, a2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[0] = v19;
      *v18 = 136315138;
      v33 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v20 = BidirectionalCollection<>.joined(separator:)();
      v22 = v21;

      v23 = sub_1002FFA0C(v20, v22, v34);

      *(v18 + 4) = v23;
      v24 = "Payload is too short %s";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v16, v17, v24, v18, 0xCu);
      sub_1000752F4(v19);
    }

LABEL_14:

    v25 = 0;
    v26 = 1;
    return v25 | (v26 << 16);
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    if (HIDWORD(a1) - a1 < 4)
    {
      goto LABEL_11;
    }

LABEL_17:
    sub_100069E2C(a1, a2);
    v27 = sub_100090214(a1, a2, 0, 0, 0);
    sub_10006A178(a1, a2);
    if (v27 == 32896 || v27 == 36992 || v27 == 32897 || v27 == 36993 || v27 == 32977 || v27 == 37073 || v27 == 195 || v27 == 4291 || v27 == 192 || v27 == 4288 || v27 == 32969 || v27 == 37065)
    {
      v26 = 0;
      v25 = v27;
      return v25 | (v26 << 16);
    }

    sub_100069E2C(a1, a2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[0] = v19;
      *v18 = 136315138;
      v33 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v28 = BidirectionalCollection<>.joined(separator:)();
      v30 = v29;

      v31 = sub_1002FFA0C(v28, v30, v34);

      *(v18 + 4) = v31;
      v24 = "Blocked command %s";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_35:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_100070120(uint64_t a1, unint64_t a2, char a3, int64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v9 + 8);
  v15 = (v9 + 8);
  v16(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_14:
    v38 = v15[49];
    v42[0] = a1;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v39 = v41[46];
      if (v41[47])
      {
        v40 = 256;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    sub_100080E48(a4, v40 | v39);

    return;
  }

  p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
  v15 = &unk_10051B000;
  if (a3)
  {
    sub_100075CA8(a1, a2, 1);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v20 = 136315394;

      v21 = UUID.uuidString.getter();
      v23 = v22;

      v24 = sub_1002FFA0C(v21, v23, v42);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_1002FFA0C(v25, v26, v42);

      *(v20 + 14) = v27;
      v15 = &unk_10051B000;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to send stepup command for %s %s", v20, 0x16u);
      swift_arrayDestroy();

      p_class_meths = (&OBJC_PROTOCOL___SESSessionInterface + 32);
    }

    swift_willThrow();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = p_class_meths;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42[0] = v33;
      *v32 = 136315138;

      v34 = UUID.uuidString.getter();
      v36 = v35;

      v37 = sub_1002FFA0C(v34, v36, v42);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "Could not handle stepup response for %s", v32, 0xCu);
      sub_1000752F4(v33);

      p_class_meths = v31;
    }

    if (p_class_meths[287] == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  sub_100081ED8(0, 1, a1, a2, a4);
  sub_100081644(1, a4);
  sub_100081838(0, 0x2070752D70657453, 0xEF6567617373656DLL, a4);
}

void sub_100070660(void *a1, char a2, char a3, uint64_t a4, uint64_t *a5)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_10051B000;
  if (a2)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136315138;
      LOBYTE(v87) = a1;
      sub_100075400();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1002FFA0C(v21, v22, v89);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get SE %s", v19, 0xCu);
      sub_1000752F4(v20);
    }

    sub_100075400();
    v24 = swift_allocError();
    *v25 = a1;
    goto LABEL_23;
  }

  if (a3)
  {
    v83 = v13;
    v84 = OBJC_IVAR____TtC10seserviced6LyonSE_logger;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    v28 = os_log_type_enabled(v26, v27);
    v85 = a4;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v89[0] = v30;
      *v29 = 136315138;
      v82 = a5;
      *(v29 + 4) = sub_1002FFA0C(0xD000000000000012, 0x8000000100461630, v89);
      _os_log_impl(&_mh_execute_header, v26, v27, "Selecting %s", v29, 0xCu);
      sub_1000752F4(v30);

      a5 = v82;
    }

    else
    {
    }

    v82 = 0x8000000100461630;
    v31 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
    v16 = &unk_10051B000;
    if (v32 >> 60 == 15)
    {
      __break(1u);
      goto LABEL_40;
    }

    v33 = v31;
    v34 = v32;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v33, v34);
    v36 = sub_1003AF1FC(a1, isa);

    if (v36)
    {

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v89[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_1002FFA0C(0xD000000000000012, v82, v89);
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to select %s", v39, 0xCu);
        sub_1000752F4(v40);
      }

      sub_1000755A4();
      v24 = swift_allocError();
      *v41 = 256;
      goto LABEL_23;
    }

    v42 = *(a5 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);

    Date.init()();
    Date.timeIntervalSince1970.getter();
    v44 = v43;
    (*(v11 + 8))(v15, v83);
    *(v42 + 128) = v44;
    *(v42 + 136) = 0;

    a4 = v85;
  }

  v45 = Data._bridgeToObjectiveC()().super.isa;
  v89[0] = 0;
  v46 = sub_1003AE9C8(a1, v45, v89);

  if (!v46)
  {
    v53 = v89[0];
    v24 = _convertNSErrorToError(_:)();

LABEL_23:
    swift_willThrow();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v90 = v57;
      *v56 = 136315138;

      v58 = UUID.uuidString.getter();
      v60 = v59;

      v61 = sub_1002FFA0C(v58, v60, &v90);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "SERequest failed, disconnecting for %s", v56, 0xCu);
      sub_1000752F4(v57);
    }

    if (qword_1005018F8 != -1)
    {
      swift_once();
    }

    v62 = v16[49];
    *&v90 = v24;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v63 = v86;
      if (BYTE1(v86))
      {
        v64 = 256;
      }

      else
      {
        v64 = 0;
      }
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    sub_100080E48(a5, v64 | v63);

    return;
  }

  v90 = xmmword_1004098E0;
  v47 = v89[0];
  if (sub_1003B0984(v46) != 36864)
  {
    sub_100071154(a1, a5);
    if (sub_1003B0984(v46) == 36865)
    {
      v85 = a4;
      v65 = sub_1003B0934(v46);
      v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      sub_10006A2D0(v90, *(&v90 + 1));
      *&v90 = v66;
      *(&v90 + 1) = v68;
      if (v68 >> 60 != 15)
      {
        v87 = 144;
        v89[3] = &type metadata for UnsafeRawBufferPointer;
        v89[4] = &protocol witness table for UnsafeRawBufferPointer;
        v89[0] = &v87;
        v89[1] = v88;
        v69 = sub_1000752B0(v89, &type metadata for UnsafeRawBufferPointer);
        v71 = *v69;
        v70 = v69[1];
        Data._Representation.append(contentsOf:)();
        sub_1000752F4(v89);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v72, v73))
        {

          goto LABEL_17;
        }

        LODWORD(v83) = v73;
        v74 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v89[0] = v82;
        v84 = v74;
        *v74 = 136315138;
        swift_beginAccess();
        v75 = *(&v90 + 1);
        if (*(&v90 + 1) >> 60 != 15)
        {
          v76 = v90;
          sub_10006A2BC(v90, *(&v90 + 1));
          v86 = sub_100288788(v76, v75);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v77 = BidirectionalCollection<>.joined(separator:)();
          v79 = v78;
          sub_10006A2D0(v76, v75);

          v80 = sub_1002FFA0C(v77, v79, v89);

          v81 = v84;
          *(v84 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v72, v83, "Sending %s", v81, 0xCu);
          sub_1000752F4(v82);

          v16 = &unk_10051B000;
          goto LABEL_17;
        }

LABEL_41:
        __break(1u);
        return;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

LABEL_17:
  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  v84 = v16[49];
  swift_beginAccess();
  v48 = v90;
  v50 = *(&v90 + 1);
  v49 = v90;
  if (*(&v90 + 1) >> 60 == 15)
  {
    v51 = sub_1003AAA78(v46);
    v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v52;
  }

  sub_10006A2BC(v48, *(&v48 + 1));
  sub_100081ED8(0, 1, v49, v50, a5);
  sub_10006A178(v49, v50);
  sub_100081644(1, a5);
  sub_100081838(0, 0x67617373654D4553, 0xE900000000000065, a5);
  sub_10006A2D0(v90, *(&v90 + 1));
}

void sub_100071154(uint64_t a1, uint64_t a2)
{
  inited = v2;
  v257 = 0;
  v6 = sub_1003AEF50();
  if (!v6)
  {
    v160 = 0;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = 0;
  v213 = v7;
  v10 = sub_1003B0934(v7);
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v11, v13);
  v214 = v8;
  v15 = [v8 TLVsWithData:isa];

  if (!v15)
  {
    __break(1u);
LABEL_235:
    sub_10006A178(v3, v8);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
    return;
  }

  sub_1000754A4();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v16;
  if (v16 >> 62)
  {
    goto LABEL_215;
  }

  v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_216:

    goto LABEL_217;
  }

LABEL_5:
  v20 = 0;
  v221 = v18 & 0xC000000000000001;
  v215 = v18 + 32;
  v216 = v18 & 0xFFFFFFFFFFFFFF8;
  v21 = &selRef_type;
  v212 = OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData;
  v217 = OBJC_IVAR____TtC10seserviced8LyonPeer_stepUpHelper;
  v218 = OBJC_IVAR____TtC10seserviced8LyonPeer_secureChannel;
  *&v17 = 136315650;
  v211 = v17;
  v219 = v19;
  v220 = v18;
  v232 = inited;
  while (1)
  {
    if (v221)
    {
      v22 = v20;
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *(v216 + 16))
      {
        goto LABEL_214;
      }

      v22 = v20;
      v23 = *(v215 + 8 * v20);
    }

    v24 = v23;
    v25 = __OFADD__(v22, 1);
    v26 = v22 + 1;
    if (v25)
    {
      goto LABEL_205;
    }

    v225 = v26;
    if ([v23 tag] != 130)
    {
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Get event returned unexpected tag", v45, 2u);
      }

      goto LABEL_22;
    }

    v27 = [v24 v21[48]];
    if (!v27)
    {
      goto LABEL_228;
    }

    v28 = v27;
    v29 = [v27 u8:0];

    v30 = [v24 v21[48]];
    if (!v30)
    {
      goto LABEL_230;
    }

    v31 = v30;
    v32 = [v30 u8:1];

    v33 = [v24 v21[48]];
    if (!v33)
    {
      goto LABEL_231;
    }

    v34 = v33;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = [v24 v21[48]];
    if (!v38)
    {
      goto LABEL_229;
    }

    v39 = v38;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v40;

    v41 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v41 != 2)
      {
        goto LABEL_235;
      }

      v4 = *(v3 + 16);
      inited = *(v3 + 24);
      sub_10006A178(v3, v8);
      v42 = inited - v4;
      if (__OFSUB__(inited, v4))
      {
        __break(1u);
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }
    }

    else if (v41)
    {
      inited = HIDWORD(v3);
      sub_10006A178(v3, v8);
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_218;
      }

      v42 = HIDWORD(v3) - v3;
    }

    else
    {
      sub_10006A178(v3, v8);
      v42 = BYTE6(v8);
    }

    inited = v232;
    v21 = &selRef_type;
    if (v42 < 2)
    {
      goto LABEL_236;
    }

    v228 = Data.subdata(in:)();
    v229 = v47;
    sub_10006A178(v35, v37);
    sub_100073170();
    sub_100073170();
    sub_100073170();
    sub_100073170();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v8 = swift_slowAlloc();
      *v8 = 16777728;
      *(v8 + 4) = v29;
      *(v8 + 5) = 256;
      *(v8 + 7) = v32;
      _os_log_impl(&_mh_execute_header, v48, v49, "Received event with type 0x%hhx and version 0x%hhx", v8, 8u);
    }

    v227 = v24;
    if (v29 > 20)
    {
      if (v29 != 21)
      {
        if (v29 == 22)
        {

          sub_100069E2C(v228, v229);
          v180 = sub_100090214(v228, v229, 0, 0, 0);
          if (v226)
          {
            sub_10006A178(v228, v229);

            v181 = 0;
          }

          else
          {
            v181 = v180;
            sub_10006A178(v228, v229);
          }

          v32 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
          v29 = v194;
          v37 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v8 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
          sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100409900;
          *(inited + 32) = 0xD000000000000020;
          *(inited + 40) = 0x80000001004616D0;
          v257 = 0;
          v258 = 0xE000000000000000;
          LOWORD(v259) = v181;
          sub_10006A2BC(v37, v8);
          v195._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v195);

          v196 = v258;
          v4 = &type metadata for String;
          *(inited + 48) = v257;
          *(inited + 56) = v196;
          *(inited + 72) = &type metadata for String;
          *(inited + 80) = 0xD000000000000020;
          *(inited + 88) = 0x8000000100461750;
          if (qword_100501900 != -1)
          {
            goto LABEL_223;
          }

          goto LABEL_194;
        }

        if (v29 == 23)
        {

          v57 = v228;
          v8 = v229;
          sub_100069E2C(v228, v229);
          v182 = Logger.logObject.getter();
          v183 = static os_log_type_t.error.getter();
          sub_10006A178(v228, v229);
          if (os_log_type_enabled(v182, v183))
          {
            v184 = swift_slowAlloc();
            v255 = swift_slowAlloc();
            v257 = v255;
            *v184 = 136315138;
            v259 = sub_100288788(v228, v229);
            v251 = v183;
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
            v185 = BidirectionalCollection<>.joined(separator:)();
            v187 = v186;

            v188 = sub_1002FFA0C(v185, v187, &v257);
            inited = v232;

            *(v184 + 4) = v188;
            _os_log_impl(&_mh_execute_header, v182, v251, "Received error event with payload %s, disconnecting peer", v184, 0xCu);
            sub_1000752F4(v255);
          }

          sub_100069E2C(v228, v229);
          v189 = sub_100090214(v228, v229, 0, 0, 0);
          if (!v226)
          {
            v202 = v189;
            sub_10006A178(v228, v229);
            v257 = *(inited + OBJC_IVAR____TtC10seserviced6LyonSE_nonRecoverableSEErrorCodes);
            sub_100068FC4(&qword_100502448, &qword_100409998);
            v203 = swift_allocObject();
            *(v203 + 16) = xmmword_1004098F0;
            *(v203 + 32) = v202;
            v259 = v203;

            sub_100068FC4(&qword_100502428, &unk_100409C70);
            sub_100075C60(&qword_100502450, &qword_100502428, &unk_100409C70);
            v204 = Collection<>.contains<A>(_:)();

            if ((v204 & 1) == 0)
            {
              goto LABEL_201;
            }

            v205 = Logger.logObject.getter();
            v206 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v205, v206))
            {
              v207 = swift_slowAlloc();
              *v207 = 33554688;
              *(v207 + 4) = v202;
              _os_log_impl(&_mh_execute_header, v205, v206, "Non recoverable error code %hu received from peer", v207, 6u);
            }

            sub_1000755A4();
            swift_allocError();
            *v208 = 256;
            swift_willThrow();

            v178 = v228;
            v179 = v229;
            goto LABEL_178;
          }

          sub_10006A178(v228, v229);

          sub_10006A178(v228, v229);
          goto LABEL_191;
        }

LABEL_115:
        v29 = v228;
        v32 = v229;
        sub_100069E2C(v228, v229);
        v37 = Logger.logObject.getter();
        v120 = static os_log_type_t.debug.getter();
        sub_10006A178(v228, v229);
        if (!os_log_type_enabled(v37, v120))
        {

          sub_10006A178(v228, v229);
          goto LABEL_22;
        }

        v8 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v259 = v121;
        *v8 = 136315138;
        v122 = v229 >> 62;
        v245 = v120;
        v240 = v121;
        bufa = v8;
        if ((v229 >> 62) > 1)
        {
          if (v122 != 2)
          {
            v123 = _swiftEmptyArrayStorage;
LABEL_136:
            v257 = v123;
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
            v128 = BidirectionalCollection<>.joined(separator:)();
            v130 = v129;

            v131 = sub_1002FFA0C(v128, v130, &v259);

            *(bufa + 4) = v131;
            _os_log_impl(&_mh_execute_header, v37, v245, "Received unknown event with payload %s, ignoring", bufa, 0xCu);
            sub_1000752F4(v240);

            sub_10006A178(v228, v229);
            inited = v232;
            v46 = v219;
            v18 = v220;
            v21 = &selRef_type;
            goto LABEL_23;
          }

          osloga = v37;
          v125 = *(v228 + 16);
          v124 = *(v228 + 24);
          v37 = v124 - v125;
          if (__OFSUB__(v124, v125))
          {
            goto LABEL_221;
          }

          if (v37)
          {
            goto LABEL_127;
          }
        }

        else
        {
          osloga = v37;
          if (v122)
          {
            v127 = HIDWORD(v228) - v228;
            if (__OFSUB__(HIDWORD(v228), v228))
            {
              goto LABEL_220;
            }

            v37 = v127;
            if (v127)
            {
LABEL_127:
              inited = v37 & ~(v37 >> 63);
              sub_10019F3C0(0, inited, 0);
              v123 = _swiftEmptyArrayStorage;
              if (v122 != 2)
              {
                v126 = v229;
                if (v122 == 1)
                {
                  v29 = v228;
                  goto LABEL_138;
                }

                if ((v37 & 0x8000000000000000) == 0)
                {
                  v29 = 0;
                  goto LABEL_142;
                }

LABEL_222:
                __break(1u);
LABEL_223:
                swift_once();
LABEL_194:
                v197 = *(qword_10051B190 + 32);
                if (*(v197 + 16))
                {
                  LOWORD(v257) = *(v197 + 32);
                  v198 = dispatch thunk of CustomStringConvertible.description.getter();
                  *(inited + 120) = v4;
                  *(inited + 96) = v198;
                  *(inited + 104) = v199;
                  v200 = sub_10008FFDC(inited);
                  swift_setDeallocating();
                  sub_100068FC4(&qword_100507D30, &unk_100409C90);
                  swift_arrayDestroy();
                  sub_1003375E0(0xD000000000000041, 0x8000000100461700, v32, v29, v37, v8, v200);

                  sub_10006A2D0(v37, v8);
                  sub_10006A2D0(v32, v29);
                  sub_1000755A4();
                  swift_allocError();
                  *v201 = 256;
                  swift_willThrow();

                  sub_10006A178(v228, v229);
                  return;
                }

                __break(1u);
LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                __break(1u);
LABEL_228:
                __break(1u);
LABEL_229:
                __break(1u);
LABEL_230:
                __break(1u);
LABEL_231:
                __break(1u);
LABEL_232:
                __break(1u);
LABEL_233:
                __break(1u);
              }

              v126 = v229;
              v29 = *(v228 + 16);
LABEL_138:
              if (v37 < 0)
              {
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
                goto LABEL_222;
              }

LABEL_142:
              v132 = BYTE6(v126);
              while (2)
              {
                if (!inited)
                {
                  goto LABEL_203;
                }

                if (v122 == 2)
                {
                  if (v29 < *(v228 + 16))
                  {
                    goto LABEL_209;
                  }

                  if (v29 >= *(v228 + 24))
                  {
                    goto LABEL_211;
                  }

                  v136 = __DataStorage._bytes.getter();
                  if (!v136)
                  {
                    goto LABEL_233;
                  }

                  v4 = v136;
                  v137 = __DataStorage._offset.getter();
                  v135 = v29 - v137;
                  if (__OFSUB__(v29, v137))
                  {
                    goto LABEL_213;
                  }

LABEL_156:
                  v138 = *(v4 + v135);
                }

                else
                {
                  if (v122 == 1)
                  {
                    if (v29 < v228 || v29 >= v228 >> 32)
                    {
                      goto LABEL_210;
                    }

                    v133 = __DataStorage._bytes.getter();
                    if (!v133)
                    {
                      goto LABEL_232;
                    }

                    v4 = v133;
                    v134 = __DataStorage._offset.getter();
                    v135 = v29 - v134;
                    if (__OFSUB__(v29, v134))
                    {
                      goto LABEL_212;
                    }

                    goto LABEL_156;
                  }

                  if (v29 >= v132)
                  {
                    goto LABEL_208;
                  }

                  v257 = v228;
                  LOWORD(v258) = v126;
                  BYTE2(v258) = BYTE2(v126);
                  BYTE3(v258) = BYTE3(v126);
                  BYTE4(v258) = BYTE4(v126);
                  BYTE5(v258) = BYTE5(v126);
                  v138 = *(&v257 + v29);
                }

                sub_100068FC4(&qword_100502440, &unk_10040B240);
                v139 = swift_allocObject();
                *(v139 + 16) = xmmword_1004098F0;
                *(v139 + 56) = &type metadata for UInt8;
                *(v139 + 64) = &protocol witness table for UInt8;
                *(v139 + 32) = v138;
                v140 = String.init(format:_:)();
                v256 = v123;
                v142 = v123[2];
                v141 = v123[3];
                v4 = v142 + 1;
                if (v142 >= v141 >> 1)
                {
                  v234 = v140;
                  v144 = v18;
                  sub_10019F3C0((v141 > 1), v142 + 1, 1);
                  v18 = v144;
                  v140 = v234;
                  v123 = v256;
                }

                v123[2] = v4;
                v143 = &v123[2 * v142];
                v143[4] = v140;
                v143[5] = v18;
                ++v29;
                --inited;
                --v37;
                v126 = v229;
                if (!v37)
                {
                  goto LABEL_120;
                }

                continue;
              }
            }
          }

          else
          {
            v37 = BYTE6(v229);
            if (BYTE6(v229))
            {
              goto LABEL_127;
            }
          }
        }

        v123 = _swiftEmptyArrayStorage;
LABEL_120:
        v37 = osloga;
        goto LABEL_136;
      }

      if (v32 != 16)
      {

        sub_100073170();
        sub_100073170();
        v190 = Logger.logObject.getter();
        v191 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          *v192 = 16777472;
          v192[4] = v32;
          v193 = "Received notify share session with unsupported version 0x%hhx and expected version 0x10";
          goto LABEL_189;
        }

LABEL_190:

        sub_10006A178(v228, v229);
LABEL_191:

        return;
      }

      v91 = Data._bridgeToObjectiveC()().super.isa;
      v92 = [v214 TLVsWithData:v91];

      if (!v92)
      {
        goto LABEL_237;
      }

      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v4 >> 62))
      {
        v93 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v93)
        {
          goto LABEL_86;
        }

        goto LABEL_169;
      }

      v93 = _CocoaArrayWrapper.endIndex.getter();
      if (!v93)
      {
LABEL_169:

        sub_10006A178(v228, v229);
        goto LABEL_22;
      }

LABEL_86:
      v94 = 0;
      v249 = v93;
      v253 = v4 & 0xC000000000000001;
      v244 = v4 & 0xFFFFFFFFFFFFFF8;
      v247 = v4;
      while (1)
      {
        if (v253)
        {
          v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v94 >= *(v244 + 16))
          {
            goto LABEL_207;
          }

          v95 = *(v4 + 8 * v94 + 32);
        }

        v96 = v95;
        v97 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          v210 = v18;
          v19 = _CocoaArrayWrapper.endIndex.getter();
          v18 = v210;
          if (!v19)
          {
            goto LABEL_216;
          }

          goto LABEL_5;
        }

        v98 = [v95 tag];
        if (v98 == 128)
        {
          v108 = *(a2 + v218);
          v109 = [v96 v21[48]];
          if (!v109)
          {
            goto LABEL_226;
          }

          v110 = v109;
          v111 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          sub_1002B1218(v111, v113, a2);
          if (v226)
          {

            sub_10006A178(v111, v113);
            sub_10006A178(v228, v229);

LABEL_217:

            return;
          }

          sub_10006A178(v111, v113);
        }

        else
        {
          if (v98 != 129)
          {
            v114 = v96;
            v115 = Logger.logObject.getter();
            v116 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v115, v116))
            {
              v117 = swift_slowAlloc();
              *v117 = 67109120;
              *(v117 + 4) = [v114 tag];

              _os_log_impl(&_mh_execute_header, v115, v116, "Ignoring unknown tag value %u for get event", v117, 8u);
              v93 = v249;
            }

            else
            {
            }

            goto LABEL_89;
          }

          v99 = (a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v100 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
          if (v100 >> 60 == 15)
          {

            v161 = Logger.logObject.getter();
            v162 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v161, v162))
            {
              v163 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              v257 = v164;
              *v163 = 136315138;

              v165 = UUID.uuidString.getter();
              v167 = v166;

              v168 = sub_1002FFA0C(v165, v167, &v257);

              *(v163 + 4) = v168;
              _os_log_impl(&_mh_execute_header, v161, v162, "Key identifier not set for peer %s", v163, 0xCu);
              sub_1000752F4(v164);
            }

            sub_1000755A4();
            swift_allocError();
            *v169 = 256;
            swift_willThrow();

            sub_10006A178(v228, v229);
            goto LABEL_191;
          }

          v101 = *v99;
          v102 = *(a2 + v217);
          sub_100069E2C(*v99, *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
          v103 = [v96 value];
          if (!v103)
          {
            goto LABEL_227;
          }

          v104 = v103;
          v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v106;

          sub_1002FD674(v105, v107, v101, v100);
          sub_10006A178(v105, v107);
          sub_10006A2D0(v101, v100);
          v24 = v227;
        }

        inited = v232;
        v4 = v247;
        v93 = v249;
LABEL_89:
        ++v94;
        v21 = &selRef_type;
        if (v97 == v93)
        {
          goto LABEL_169;
        }
      }
    }

    if (v29 != 13)
    {
      if ((v29 - 3) < 2 || v29 == 8)
      {

        v57 = v228;
        v8 = v229;
        sub_100069E2C(v228, v229);
        v170 = Logger.logObject.getter();
        v171 = static os_log_type_t.error.getter();
        sub_10006A178(v228, v229);
        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          v254 = swift_slowAlloc();
          v257 = v254;
          *v172 = 136315138;
          v259 = sub_100288788(v228, v229);
          v250 = v171;
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v173 = BidirectionalCollection<>.joined(separator:)();
          v175 = v174;

          v176 = sub_1002FFA0C(v173, v175, &v257);

          *(v172 + 4) = v176;
          _os_log_impl(&_mh_execute_header, v170, v250, "Endpoint not found or reader auth failed with %s", v172, 0xCu);
          sub_1000752F4(v254);
        }

        sub_1000755A4();
        swift_allocError();
        *v177 = 256;
        goto LABEL_177;
      }

      goto LABEL_115;
    }

    if (v32 != 17)
    {

      sub_100073170();
      sub_100073170();
      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        *v192 = 16777472;
        v192[4] = v32;
        v193 = "Received notify share session with unsupported version 0x%hhx and expected version 0x11";
LABEL_189:
        _os_log_impl(&_mh_execute_header, v190, v191, v193, v192, 5u);

        goto LABEL_190;
      }

      goto LABEL_190;
    }

    v50 = Data._bridgeToObjectiveC()().super.isa;
    v51 = [v214 TLVsWithData:v50];

    if (!v51)
    {
      goto LABEL_238;
    }

    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v52 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (!v53)
      {
LABEL_167:

        sub_10006A178(v228, v229);

        goto LABEL_22;
      }
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v53)
      {
        goto LABEL_167;
      }
    }

    v239 = 0;
    buf = 0;
    v54 = 0;
    v55 = 0;
    v230 = v53;
    v231 = v52 & 0xC000000000000001;
    v222 = v52 + 32;
    v223 = v52 & 0xFFFFFFFFFFFFFF8;
    v4 = 0xF000000000000000;
    v56 = 0xF000000000000000;
    v57 = 0xF000000000000000;
LABEL_43:
    if (v231)
    {
      v58 = v55;
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v25 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v25)
      {
        break;
      }

      goto LABEL_49;
    }

    if (v55 >= *(v223 + 16))
    {
      goto LABEL_204;
    }

    v61 = v55;
    v59 = *(v222 + 8 * v55);
    v25 = __OFADD__(v61, 1);
    v60 = v61 + 1;
    if (v25)
    {
      break;
    }

LABEL_49:
    v233 = v60;
    v8 = v59;
    v248 = v57;
    v252 = v4;
    if ([v59 tag] == 194)
    {
      oslog = v8;
      v62 = [v8 children];
      if (!v62)
      {
        goto LABEL_225;
      }

      v63 = v62;
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v4 >> 62))
      {
        v64 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v65 = v8;
        if (v64)
        {
          goto LABEL_53;
        }

        goto LABEL_80;
      }

      v64 = _CocoaArrayWrapper.endIndex.getter();
      v65 = v8;
      if (!v64)
      {
LABEL_80:

        goto LABEL_42;
      }

LABEL_53:
      if (v64 < 1)
      {
        goto LABEL_206;
      }

      v243 = v56;
      v246 = v54;
      v66 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v68 = *(v4 + 8 * v66 + 32);
        }

        v69 = v68;
        v70 = [v68 tag];
        switch(v70)
        {
          case 6u:
            v79 = [v69 v21[48]];
            if (!v79)
            {
              sub_10006A2D0(buf, v252);
              buf = 0;
              v252 = 0xF000000000000000;
              goto LABEL_57;
            }

            v80 = v79;
            v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v82 = v81;
            sub_10006A2D0(buf, v252);

            v69 = v80;
            buf = v8;
            v252 = v82;
            break;
          case 5u:
            v75 = [v69 v21[48]];
            if (!v75)
            {
              sub_10006A2D0(v239, v243);
              v239 = 0;
              v243 = 0xF000000000000000;
              goto LABEL_57;
            }

            v76 = v75;
            v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v78 = v77;
            sub_10006A2D0(v239, v243);

            v69 = v76;
            v239 = v8;
            v243 = v78;
            break;
          case 4u:
            v71 = [v69 v21[48]];
            if (!v71)
            {
              sub_10006A2D0(v246, v248);
              v246 = 0;
              v248 = 0xF000000000000000;
              goto LABEL_57;
            }

            v72 = v71;
            v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = v73;
            sub_10006A2D0(v246, v248);

            v69 = v72;
            v246 = v8;
            v248 = v74;
            break;
          default:
            v83 = oslog;
            v84 = Logger.logObject.getter();
            v8 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v84, v8))
            {
              v67 = swift_slowAlloc();
              *v67 = 67109120;
              *(v67 + 4) = [v83 tag];

              _os_log_impl(&_mh_execute_header, v84, v8, "Ignoring unknown tag value %u for get event", v67, 8u);
              inited = v232;
            }

            else
            {

              v69 = v83;
            }

            break;
        }

        v21 = &selRef_type;
LABEL_57:
        ++v66;

        if (v64 == v66)
        {

          v24 = v227;
          v56 = v243;
          v54 = v246;
          goto LABEL_42;
        }
      }
    }

    v85 = v54;
    v86 = v24;
    v87 = v56;
    v88 = v8;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = [v88 tag];

      _os_log_impl(&_mh_execute_header, v89, v90, "Ignoring unknown tag value %u for message in exchange", v8, 8u);
    }

    else
    {
    }

    v56 = v87;
    v24 = v86;
    v54 = v85;
LABEL_42:
    v55 = v233;
    v57 = v248;
    v4 = v252;
    if (v233 != v230)
    {
      goto LABEL_43;
    }

    if (v248 >> 60 == 15)
    {

      sub_10006A178(v228, v229);
      v118 = buf;
      v119 = v252;
    }

    else
    {
      if (v56 >> 60 == 15)
      {
        sub_10006A2D0(buf, v252);

        sub_10006A178(v228, v229);
        sub_10006A2D0(v54, v248);
        goto LABEL_22;
      }

      if (v252 >> 60 != 15)
      {
        sub_10006A2BC(v239, v56);
        sub_10006A2BC(v54, v248);
        sub_10006A2BC(buf, v252);
        oslogb = Logger.logObject.getter();
        v145 = static os_log_type_t.info.getter();
        sub_10006A2D0(v239, v56);
        sub_10006A2D0(v54, v248);
        sub_10006A2D0(buf, v252);
        v235 = v145;
        if (os_log_type_enabled(oslogb, v145))
        {
          v146 = swift_slowAlloc();
          v257 = swift_slowAlloc();
          *v146 = v211;
          sub_100069E2C(v239, v56);
          v147 = Data.description.getter();
          v149 = v148;
          sub_10006A2D0(v239, v56);
          v150 = sub_1002FFA0C(v147, v149, &v257);

          *(v146 + 4) = v150;
          *(v146 + 12) = 2080;
          sub_100069E2C(v54, v248);
          v151 = Data.description.getter();
          v153 = v152;
          sub_10006A2D0(v54, v248);
          v154 = sub_1002FFA0C(v151, v153, &v257);

          *(v146 + 14) = v154;
          *(v146 + 22) = 2080;
          sub_100069E2C(buf, v252);
          v155 = Data.description.getter();
          v157 = v156;
          sub_10006A2D0(buf, v252);
          v158 = sub_1002FFA0C(v155, v157, &v257);
          v21 = &selRef_type;

          *(v146 + 24) = v158;
          _os_log_impl(&_mh_execute_header, oslogb, v235, "Logging for peer Product ID %s, vendor ID %s, firmware version %s", v146, 0x20u);
          swift_arrayDestroy();
        }

        v159 = *(a2 + v212);

        v4 = v54;
        sub_1002F76D4(v239, v56, v54, v248, buf, v252);

        sub_10006A178(v228, v229);
        sub_10006A2D0(v54, v248);
        sub_10006A2D0(v239, v56);
        sub_10006A2D0(buf, v252);

        goto LABEL_22;
      }

      sub_10006A178(v228, v229);
      v118 = v54;
      v119 = v248;
    }

    sub_10006A2D0(v118, v119);
    sub_10006A2D0(v239, v56);
LABEL_22:
    v46 = v219;
    v18 = v220;
LABEL_23:
    v20 = v225;
    if (v225 == v46)
    {
      goto LABEL_216;
    }
  }

  __break(1u);
LABEL_201:
  sub_1000755A4();
  swift_allocError();
  *v209 = 0;
LABEL_177:
  swift_willThrow();

  v178 = v57;
  v179 = v8;
LABEL_178:
  sub_10006A178(v178, v179);
}

uint64_t sub_100073178()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  v8 = __chkstk_darwin(v6);
  v57 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v53 = v2;
  v54 = &v49[-v11];
  v12 = *(v0 + 24);
  v59 = v10;
  v55 = v0;
  v56 = v1;
  v52 = v5;
  if (v12 >> 62)
  {
LABEL_30:
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v16 = *(v12 + 8 * v14 + 32);

        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_14;
        }
      }

      v18 = *(v16 + 16);
      if (v18)
      {
        v19 = *(v16 + 16);

        v20 = static UUID.== infix(_:_:)();

        if (v20)
        {

          v32 = v55;
          swift_beginAccess();
          v33 = *(v32 + 4);
          if (v33[2])
          {
            swift_beginAccess();
            if (v33[2])
            {
              v15 = v33[4];
              v18 = v33[5];
              v20 = v33[6];

              sub_1001A19B8(0, 1);
              swift_endAccess();
              v34 = *(v16 + 16);
              *(v16 + 16) = v15;

              v14 = v58;
              if (qword_100501D88 == -1)
              {
                goto LABEL_23;
              }
            }

            else
            {
              __break(1u);
            }

            swift_once();
LABEL_23:
            v35 = v54;
            v36 = v59;
            (*(v14 + 16))(v54, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v59);

            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v60[0] = v51;
              *v39 = 136315138;
              v55 = v18;
              v40 = v53;
              v41 = *(v53 + 16);
              v50 = v38;
              v42 = v52;
              v43 = v56;
              v41(v52, v15 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v56);
              sub_10007554C();
              v44 = dispatch thunk of CustomStringConvertible.description.getter();
              v57 = v20;
              v46 = v45;
              (*(v40 + 8))(v42, v43);
              v18 = v55;
              v47 = sub_1002FFA0C(v44, v46, v60);

              *(v39 + 4) = v47;
              _os_log_impl(&_mh_execute_header, v37, v50, "Allocating free slot to next waiter %s", v39, 0xCu);
              sub_1000752F4(v51);

              (*(v14 + 8))(v54, v59);
            }

            else
            {

              (*(v14 + 8))(v35, v36);
            }

            v60[0] = v15;
            v18(v60);
          }

          else
          {
            v48 = *(v16 + 16);
            *(v16 + 16) = 0;
          }
        }
      }

      ++v14;
    }

    while (v17 != v13);
  }

  if (qword_100501D88 != -1)
  {
    swift_once();
  }

  v22 = v57;
  v21 = v58;
  v23 = v59;
  (*(v58 + 16))(v57, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v59);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v61 = v27;
    *v26 = 136315138;
    sub_10007554C();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = sub_1002FFA0C(v28, v29, &v61);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "No slot to belongs to %s, doing nothing", v26, 0xCu);
    sub_1000752F4(v27);
  }

  return (*(v21 + 8))(v22, v23);
}

void sub_100073834(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_isRunning) == 1)
  {
    [*(*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_stepUpHelper) + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stsHelper) invalidate];
    if (*(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_enableI2CLogging))
    {
LABEL_8:
      v10 = *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager);
      sub_100073178();
      return;
    }

    v3 = v1;
    if (qword_100501A30 == -1)
    {
LABEL_7:
      sub_100194774(a1);
      v1 = v3;
      goto LABEL_8;
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Not running", v13, 2u);
  }
}

uint64_t type metadata accessor for LyonSE()
{
  result = qword_1005022B0;
  if (!qword_1005022B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100073B8C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SEStorageMockEntryStore.Context.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_100073C94(unint64_t result)
{
  v1[4] = &_swiftEmptyArrayStorage;
  v1[2] = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      type metadata accessor for SlotManager.LyonURSKSlot();
      do
      {
        *(swift_allocObject() + 16) = 0;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v3 = *(&_swiftEmptyArrayStorage + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v2;
      }

      while (v2);
    }

    v1[3] = &_swiftEmptyArrayStorage;
    return v1;
  }

  return result;
}

uint64_t sub_100073D64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100073DEC(uint64_t a1)
{
  v3 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3 - 8);
  v7 = &v19 - v6;
  if (*(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_enableI2CLogging) == 1)
  {
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v10 = type metadata accessor for SERequest();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v13 + OBJC_IVAR____TtC10seserviced9SERequest_reason;
    strcpy((v13 + OBJC_IVAR____TtC10seserviced9SERequest_reason), "Print I2C logs");
    *(v14 + 15) = -18;
    *(v13 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    v15 = v13 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v13 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
    *(v13 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = a1;
    v16 = v13 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
    *v16 = 0;
    *(v16 + 8) = 1;
    sub_1000756F8(v7, v13 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
    v17 = v13 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
    *v17 = 0;
    *(v17 + 8) = 1;
    *(v13 + 32) = sub_100075D20;
    *(v13 + 40) = v9;
    v18 = v1;

    sub_100075768(v7, &unk_10050BE80, &unk_10040B360);
    sub_1001939C8(0, v13);
  }

  return result;
}

void sub_100074064(void *a1, const char *a2, NSObject *a3)
{
  if (a2)
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "could not get SE for i2c logs", v5, 2u);
    }

    return;
  }

  v7 = sub_1003AF3C4(a1, a2);
  v8 = [v7 type];

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v8 < 4)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found P73x selecting ISD", v12, 2u);
    }

    v13 = sub_10013044C(0x3030343034413030, 0xEA00000000003030);
    if (v14 >> 60 == 15)
    {
      __break(1u);
      return;
    }

    v15 = v13;
    v16 = v14;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v15, v16);
    *&v56 = 0;
    v18 = sub_1003AEA90(a1, isa, 0, &v56);

    if (v18)
    {
      v19 = v56;
      if (sub_1003B0984(v18) == 36864)
      {
        osloga = a3;

        v20 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v46 = v56;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to select 00", v49, 2u);
    }

    return;
  }

  osloga = a3;
  if (v11)
  {
    v20 = 2;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Found EOS SE", v21, 2u);
  }

  else
  {

    v20 = 2;
  }

LABEL_17:
  v22 = 0;
  v56 = xmmword_1004098D0;
  do
  {
    v23 = sub_10013044C(0x4546303036324644, 0xEC00000030304243);
    if (v24 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v26 = v23;
      v27 = v24;
      v25 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A2D0(v26, v27);
    }

    v28 = sub_1003AEDB0(a1, 128, 202, 0, 254, v25, 0, v20, &v55, v50, osloga, v53, v54, 0, v56, *(&v56 + 1), v57, v58, v59, v60, v61, v62, v63);

    if (!v28)
    {
      v43 = v55;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      goto LABEL_26;
    }

    v29 = v55;

    v22 = v28;
    v30 = sub_1003B0934(v22);
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    Data.append(_:)();
    sub_10006A178(v31, v33);
  }

  while (sub_1003B0984(v22) == 25360);
  v34 = v56;
  sub_100069E2C(v56, *(&v56 + 1));
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  sub_10006A178(v34, *(&v34 + 1));
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136315138;
    sub_100288788(v34, *(&v34 + 1));
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v39 = BidirectionalCollection<>.joined(separator:)();
    v41 = v40;

    v42 = sub_1002FFA0C(v39, v41, &v55);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Complete I2C Logs: %s", v37, 0xCu);
    sub_1000752F4(v38);

LABEL_26:
    v45 = *(&v56 + 1);
    v44 = v56;
    goto LABEL_32;
  }

  v45 = *(&v34 + 1);
  v44 = v34;
LABEL_32:
  sub_10006A178(v44, v45);
}

void sub_1000746B8(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite);
  v4 = *(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite + 8);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    sub_100075768(&v18, &qword_100502420, &qword_10040F310);
    goto LABEL_20;
  }

  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    *a1 = xmmword_1004098E0;
    return;
  }

  if (!*(v15 + 16))
  {
    goto LABEL_19;
  }

  v10 = sub_10008C908(*(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey), *(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8));
  if ((v11 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1000754F0(*(v15 + 56) + 32 * v10, &v18);
  if (!swift_dynamicCast())
  {
    goto LABEL_19;
  }

  if (!*(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8))
  {

LABEL_19:

    goto LABEL_20;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID) != v16)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*(v15 + 16) && (v13 = sub_10008C908(*(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey), *(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8)), (v14 & 1) != 0))
  {
    sub_1000754F0(*(v15 + 56) + 32 * v13, &v18);
  }

  else
  {

    v18 = 0u;
    v19 = 0u;
  }

  sub_100068FC4(&qword_100502420, &qword_10040F310);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }
}

void sub_100074998(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite);
  v8 = *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite + 8);
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithSuiteName:v10];

  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    sub_100075768(&v22, &qword_100502420, &qword_10040F310);
    return;
  }

  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if (swift_dynamicCast())
  {
    if (*(v19 + 16))
    {
      v14 = sub_10008C908(*(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey), *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8));
      if (v15)
      {
        sub_1000754F0(*(v19 + 56) + 32 * v14, &v22);
        if (swift_dynamicCast())
        {
          if (*(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8))
          {
            if (*(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID) == v20)
            {

              goto LABEL_16;
            }

            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v16)
            {
LABEL_16:
              if (*(v19 + 16) && (v17 = sub_10008C908(*(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey), *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8)), (v18 & 1) != 0))
              {
                sub_1000754F0(*(v19 + 56) + 32 * v17, &v22);
              }

              else
              {

                v22 = 0u;
                v23 = 0u;
              }

              sub_100068FC4(&qword_100502420, &qword_10040F310);
              sub_100068FC4(a3, a4);
              swift_dynamicCast();
              return;
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_100074C60()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite);
  v2 = *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite + 8);
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_100075768(&v16, &qword_100502420, &qword_10040F310);
    return;
  }

  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if (swift_dynamicCast())
  {
    if (*(v13 + 16))
    {
      v8 = sub_10008C908(*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey), *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8));
      if (v9)
      {
        sub_1000754F0(*(v13 + 56) + 32 * v8, &v16);
        if (swift_dynamicCast())
        {
          if (*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8))
          {
            if (*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID) == v14)
            {

              goto LABEL_16;
            }

            v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v10)
            {
LABEL_16:
              if (*(v13 + 16) && (v11 = sub_10008C908(*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey), *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8)), (v12 & 1) != 0))
              {
                sub_1000754F0(*(v13 + 56) + 32 * v11, &v16);
              }

              else
              {

                v16 = 0u;
                v17 = 0u;
              }

              sub_100068FC4(&qword_100502420, &qword_10040F310);
              swift_dynamicCast();
              return;
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_100074F10()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite);
  v2 = *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite + 8);
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_100075768(&v16, &qword_100502420, &qword_10040F310);
    return;
  }

  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if (swift_dynamicCast())
  {
    if (*(v13 + 16))
    {
      v8 = sub_10008C908(*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey), *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8));
      if (v9)
      {
        sub_1000754F0(*(v13 + 56) + 32 * v8, &v16);
        if (swift_dynamicCast())
        {
          if (*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8))
          {
            if (*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID) == v14)
            {

              goto LABEL_16;
            }

            v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v10)
            {
LABEL_16:
              if (*(v13 + 16) && (v11 = sub_10008C908(*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey), *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8)), (v12 & 1) != 0))
              {
                sub_1000754F0(*(v13 + 56) + 32 * v11, &v16);
              }

              else
              {

                v16 = 0u;
                v17 = 0u;
              }

              sub_100068FC4(&qword_100502420, &qword_10040F310);
              swift_dynamicCast();
              return;
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_1000751C8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v8(v6, v11, a3, a4);

  sub_10006A2D0(v6, v11);
}

void *sub_1000752B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000752F4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100075340()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100075380(void *a1, char a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_10006D1CC(a1, a2 & 1);
}

uint64_t sub_100075390(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100075400()
{
  result = qword_100502410;
  if (!qword_100502410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502410);
  }

  return result;
}

uint64_t sub_100075454()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000754A4()
{
  result = qword_100502418;
  if (!qword_100502418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100502418);
  }

  return result;
}

uint64_t sub_1000754F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10007554C()
{
  result = qword_100504C70;
  if (!qword_100504C70)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504C70);
  }

  return result;
}

unint64_t sub_1000755A4()
{
  result = qword_100502430;
  if (!qword_100502430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502430);
  }

  return result;
}

uint64_t sub_1000755F8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075644()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075684(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007569C()
{
  v1 = *(v0 + 32);

  sub_10006A178(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1000756E4(void *a1, char a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  sub_100070660(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t sub_1000756F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100075768(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100068FC4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000757C8(uint64_t a1, uint64_t a2, id a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = *(a2 + 24);
  v41 = a2;
  v42 = v11;
  v43 = v6;
  v40 = v7;
  v13 = a1;
  if (v12 >> 62)
  {
LABEL_26:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a3 = a3;

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v16 = *(v12 + 8 * v15 + 32);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_13;
        }
      }

      if (!*(v16 + 16))
      {

        v37 = *(v16 + 16);
        *(v16 + 16) = v13;

        sub_10006D4F8(v38, a3);
      }

      ++v15;
    }

    while (v17 != v14);
  }

  if (qword_100501D88 != -1)
  {
    swift_once();
  }

  v18 = v40;
  v19 = v43;
  (*(v40 + 16))(v10, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v43);
  v20 = v13;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v44 = v24;
    *v23 = 136315138;
    type metadata accessor for UUID();
    sub_10007554C();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = sub_1002FFA0C(v25, v26, &v44);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "No free slot available, adding %s to queue", v23, 0xCu);
    sub_1000752F4(v24);

    (*(v18 + 8))(v10, v43);
  }

  else
  {

    (*(v18 + 8))(v10, v19);
  }

  v28 = v41;
  v29 = v42;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100075CEC;
  *(v30 + 24) = v29;
  swift_beginAccess();
  v31 = *(v28 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 32) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_10012E7F8(0, v31[2] + 1, 1, v31);
    *(v28 + 32) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_10012E7F8((v33 > 1), v34 + 1, 1, v31);
  }

  v31[2] = v34 + 1;
  v35 = &v31[3 * v34];
  v35[4] = v20;
  v35[5] = sub_100075CF4;
  v35[6] = v30;
  *(v28 + 32) = v31;
  swift_endAccess();
}

uint64_t sub_100075C60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100075CA8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_100069E2C(a1, a2);
  }
}

uint64_t sub_100075CB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075CF4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

_OWORD *sub_100075D50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100075D74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100075E04()
{
  v0 = type metadata accessor for AlishaLPEM();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100075E44();
  qword_10051B180 = result;
  return result;
}

uint64_t sub_100075E44()
{
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOWORD(aBlock[0]) = 256;
  v4 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_100079E7C;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193978;
  aBlock[3] = &unk_1004C5C18;
  v1 = _Block_copy(aBlock);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

void sub_100076084(char *a1)
{
  v2 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v194 = v181 - v4;
  v203 = sub_100068FC4(&qword_1005025D8, &qword_100409A10);
  v205 = *(v203 - 8);
  v5 = v205[8];
  __chkstk_darwin(v203);
  v198 = v181 - v6;
  v7 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v204 = *(v7 - 8);
  v8 = v204[8];
  __chkstk_darwin(v7);
  v10 = v181 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 1);
  v13 = *(v12 + 8);
  __chkstk_darwin(v11);
  v15 = (v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v16 = qword_10051B7F0;
    *v15 = qword_10051B7F0;
    v17 = *(v12 + 13);
    LODWORD(v208) = enum case for DispatchPredicate.onQueue(_:);
    v207 = v17;
    v17(v15);
    v18 = v16;
    v19 = _dispatchPreconditionTest(_:)();
    v20 = *(v12 + 1);
    v20(v15, v11);
    if (v19)
    {
      v206 = v18;
      if (qword_100501DA8 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    v22 = qword_100501D78;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = swift_allocObject();
    *(v23 + 16) = sub_100078928;
    *(v23 + 24) = v21;

    v24 = sub_1000CAAC4();

    v25 = v24;

    v26 = v24 & 0xC000000000000001;
    if ((v24 & 0xC000000000000001) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_11;
      }

      v27 = __CocoaSet.count.getter();
    }

    else
    {
      v27 = *(v24 + 16);
      if (!v27)
      {
        goto LABEL_11;
      }
    }

    if (v27 > 8)
    {
LABEL_11:

      v28 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v28, v7))
      {
        v29 = v25;
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        if (v26)
        {
          v26 = v29;
          v10 = __CocoaSet.count.getter();
        }

        else
        {
          v26 = v29;
          v10 = *(v29 + 16);
        }

        *(v30 + 4) = v10;

        _os_log_impl(&_mh_execute_header, v28, v7, "Disabling LPEM due to %ld peers", v30, 0xCu);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v35 = v206;
      v34 = v207;
      *v15 = v206;
      v34(v15, v208, v11);
      v36 = v35;
      v37 = _dispatchPreconditionTest(_:)();
      v20(v15, v11);
      if (v37)
      {
        sub_10034682C(0);
        return;
      }

      __break(1u);
LABEL_71:
      swift_once();
      goto LABEL_16;
    }

    v193 = v24;
    if (qword_100501960 != -1)
    {
      goto LABEL_71;
    }

LABEL_16:
    v31 = sub_1000E5E60();
    v33 = v32;
    sub_1000E616C(v193, &v213);
    v189 = v213;
    v190 = v214;
    v191 = v215;
    v192 = v216;
    v38 = v217;
    v213 = v217;

    sub_100078998(&v213);
    v39 = v213;
    v40 = v213[2];
    if (v26)
    {
      v41 = __CocoaSet.count.getter();
    }

    else
    {
      v41 = *(v193 + 16);
    }

    v201 = v39;
    if (v40 != v41)
    {

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 134218240;
        if (v26)
        {
          v84 = __CocoaSet.count.getter();
        }

        else
        {
          v84 = *(v193 + 16);
        }

        *(v83 + 4) = v84;

        *(v83 + 12) = 2048;
        v180 = v201[2];

        *(v83 + 14) = v180;

        _os_log_impl(&_mh_execute_header, v81, v82, "Missing pairing information for %ld peers got %ld", v83, 0x16u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      sub_10006A178(v31, v33);

      sub_10006A178(v189, v190);
      sub_10006A178(v191, v192);

      return;
    }

    v181[1] = v38;
    v42 = swift_allocObject();
    v43 = type metadata accessor for __DataStorage();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v199 = v43;
    swift_allocObject();
    v200 = v40;
    v46 = __DataStorage.init(capacity:)();
    *(v42 + 16) = 0;
    v183 = v42;
    *(v42 + 24) = v46 | 0x4000000000000000;
    LOBYTE(v211) = 1;
    v47 = v31;
    v48 = &v211 + 1;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 1;
    v49 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v51 = *v49;
    v50 = v49[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    LODWORD(v211) = 0x1000000;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 4;
    v52 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v54 = *v52;
    v53 = v52[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    Data.append(_:)();
    Data.append(_:)();
    v182 = v47;
    Data.append(_:)();
    v55 = v204;
    v56 = v202;
    (v204[2])(v10, v202 + OBJC_IVAR____TtC10seserviced10AlishaLPEM__isLoggingEnabled, v7);
    UserDefaultBacked.wrappedValue.getter();
    v58 = v55[1];
    v57 = (v55 + 1);
    v58(v10, v7);
    LOBYTE(v211) = v213;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 1;
    v59 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v61 = *v59;
    v60 = v59[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    v63 = v62 + 16;
    v187 = v62;
    *(v62 + 24) = 0;
    LOBYTE(v211) = 1;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 1;
    v64 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v66 = *v64;
    v65 = v64[1];
    Data._Representation.append(contentsOf:)();
    v67 = v200;
    sub_1000752F4(&v213);
    if (v67 > 255)
    {
      break;
    }

    v188 = v33;
    LOBYTE(v211) = v67;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 1;
    v68 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v70 = *v68;
    v69 = v68[1];
    *&v208 = v63;
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    v71 = OBJC_IVAR____TtC10seserviced10AlishaLPEM_logger;

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    v74 = os_log_type_enabled(v72, v73);
    v185 = v71;
    if (v74)
    {
      v75 = swift_slowAlloc();
      *v75 = 16777472;
      v76 = v205;
      v77 = v205[2];
      v78 = (v205 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v79 = v198;
      v80 = v203;
      v77(v198, &v56[OBJC_IVAR____TtC10seserviced10AlishaLPEM__latency], v203);
      UserDefaultBacked.wrappedValue.getter();
      (v76[1])(v79, v80);
      v75[4] = v213;
      v12 = v56;

      _os_log_impl(&_mh_execute_header, v72, v73, "Using car0 latency value %hhu", v75, 5u);
    }

    else
    {

      v12 = v56;
      v77 = v205[2];
      v78 = (v205 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v80 = v203;
      v79 = v198;
    }

    v204 = v77;
    v207 = v78;
    v77(v79, &v12[OBJC_IVAR____TtC10seserviced10AlishaLPEM__latency], v80);
    v85 = v79;
    UserDefaultBacked.wrappedValue.getter();
    v86 = v205 + 1;
    v206 = v205[1];
    v206(v79, v80);
    LOBYTE(v211) = v213;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 1;
    v87 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v89 = *v87;
    v88 = v87[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    LOBYTE(v211) = 2;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 1;
    v90 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v92 = *v90;
    v91 = v90[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    LOBYTE(v211) = 3;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 1;
    v93 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v95 = *v93;
    v94 = v93[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    LOBYTE(v211) = 6;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 1;
    v96 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v98 = *v96;
    v97 = v96[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    LOBYTE(v211) = 15;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 1;
    v99 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v101 = *v99;
    v100 = v99[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.info.getter();
    v104 = v80;
    v7 = v86;
    v105 = &unk_100502000;
    if (os_log_type_enabled(v102, v103))
    {
      v106 = swift_slowAlloc();
      *v106 = 16777472;
      v107 = v204;
      (v204)(v85, &v12[OBJC_IVAR____TtC10seserviced10AlishaLPEM__btScanTimer], v104);
      UserDefaultBacked.wrappedValue.getter();
      v108 = v206;
      v206(v85, v104);
      v106[4] = v213;

      _os_log_impl(&_mh_execute_header, v102, v103, "Using car0 BT scan timer value %hhu", v106, 5u);

      v15 = v201;
      v109 = v108;
      v105 = &unk_100502000;
    }

    else
    {

      v15 = v201;
      v107 = v204;
      v109 = v206;
    }

    v107(v85, &v12[v105[158]], v104);
    UserDefaultBacked.wrappedValue.getter();
    v109(v85, v104);
    LOBYTE(v211) = v213;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v10 = &protocol witness table for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 1;
    v110 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v112 = *v110;
    v111 = v110[1];
    a1 = v208;
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    LOWORD(v211) = 12288;
    v11 = &v211 + 2;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 2;
    v113 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v115 = *v113;
    v114 = v113[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    LOWORD(v211) = 24576;
    v216 = &type metadata for UnsafeRawBufferPointer;
    v217 = &protocol witness table for UnsafeRawBufferPointer;
    v213 = &v211;
    v214 = &v211 + 2;
    v116 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
    v118 = *v116;
    v117 = v116[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v213);
    v119 = swift_allocObject();
    v208 = xmmword_1004098D0;
    v186 = v119;
    *(v119 + 16) = xmmword_1004098D0;
    v198 = (v119 + 16);
    v120 = swift_allocObject();
    v184 = v120;
    *(v120 + 16) = v208;
    v197 = v120 + 16;
    if (!v200)
    {
LABEL_45:

      v48 = v188;
      v57 = v183;
      if (qword_100501A18 == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_73;
    }

    v121 = 0;
    v195 = &v210;
    v196 = v200 & ~(v200 >> 63);
    v122 = (v15 + 10);
    while (v196 != v121)
    {
      if (v121 >= v15[2])
      {
        goto LABEL_66;
      }

      v207 = v121;
      v7 = *(v122 - 6);
      v123 = *(v122 - 5);
      v125 = *(v122 - 4);
      v124 = *(v122 - 3);
      v127 = *(v122 - 2);
      v126 = *(v122 - 1);
      v128 = *v122;
      v129 = *(v199 + 48);
      v130 = *(v199 + 52);
      swift_allocObject();

      sub_100069E2C(v123, v125);
      v206 = v127;
      sub_100069E2C(v124, v127);
      *&v208 = v126;
      v205 = v128;
      sub_100069E2C(v126, v128);
      v131 = __DataStorage.init(capacity:)();
      v211 = 0;
      v212 = v131 | 0x4000000000000000;
      Data.append(_:)();
      Data.append(_:)();
      Data.append(_:)();
      v132 = *(v7 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v133 = *(v7 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);

      v134 = v123;
      v135 = v123;
      v136 = v125;
      sub_100069E2C(v135, v125);
      v12 = v124;
      v137 = v206;
      sub_100069E2C(v124, v206);
      v138 = v208;
      v10 = v205;
      sub_100069E2C(v208, v205);
      sub_10006A2BC(v132, v133);
      v204 = v7;

      if (v133 >> 60 == 15)
      {
        goto LABEL_77;
      }

      v203 = v207 + 1;
      sub_10006A178(v138, v10);
      sub_10006A178(v12, v137);
      sub_10006A178(v134, v136);
      Data.append(_:)();
      sub_10006A2D0(v132, v133);
      v209 = 0;
      v216 = &type metadata for UnsafeRawBufferPointer;
      v217 = &protocol witness table for UnsafeRawBufferPointer;
      v213 = &v209;
      v214 = v195;
      v139 = sub_1000752B0(&v213, &type metadata for UnsafeRawBufferPointer);
      v141 = *v139;
      v140 = v139[1];
      Data._Representation.append(contentsOf:)();
      sub_1000752F4(&v213);
      v11 = v211;
      v142 = v212;
      if (v207 >= 4)
      {
        a1 = v197;
      }

      else
      {
        a1 = v198;
      }

      Data.append(_:)();

      sub_10006A178(v134, v136);
      sub_10006A178(v12, v137);
      sub_10006A178(v208, v10);
      sub_10006A178(v11, v142);
      v122 += 7;
      v121 = v203;
      v15 = v201;
      if (v200 == v203)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_73:
  swift_once();
LABEL_46:
  sub_100074984(0xD000000000000019, 0x80000001004618E0);
  if (!v143)
  {
    goto LABEL_59;
  }

  if (v143[2] != 4)
  {
    goto LABEL_58;
  }

  v144 = *(v57 + 16);
  v145 = *(v57 + 24);
  v146 = v143[4];
  v147 = v143[5];
  v148 = v143;
  sub_100069E2C(v144, v145);
  sub_100069E2C(v146, v147);
  v149 = sub_10008FB4C(v144, v145, v146, v147);
  sub_10006A178(v146, v147);
  sub_10006A178(v144, v145);
  if ((v149 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v148[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_75;
  }

  v151 = *(v187 + 16);
  v150 = *(v187 + 24);
  v152 = v148[6];
  v153 = v148[7];
  sub_100069E2C(v151, v150);
  sub_100069E2C(v152, v153);
  v154 = sub_10008FB4C(v151, v150, v152, v153);
  sub_10006A178(v152, v153);
  sub_10006A178(v151, v150);
  if ((v154 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v148[2] < 3uLL)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v156 = *(v186 + 16);
  v155 = *(v186 + 24);
  v157 = v148[8];
  v158 = v148[9];
  sub_100069E2C(v156, v155);
  sub_100069E2C(v157, v158);
  v159 = sub_10008FB4C(v156, v155, v157, v158);
  sub_10006A178(v157, v158);
  sub_10006A178(v156, v155);
  if (v159)
  {
    if (v148[2] >= 4uLL)
    {
      v161 = *(v184 + 16);
      v160 = *(v184 + 24);
      v162 = v148[10];
      v163 = v148[11];
      sub_100069E2C(v161, v160);
      sub_100069E2C(v162, v163);

      v164 = sub_10008FB4C(v161, v160, v162, v163);
      sub_10006A178(v162, v163);
      sub_10006A178(v161, v160);
      if (v164)
      {
        v165 = Logger.logObject.getter();
        v166 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&_mh_execute_header, v165, v166, "Retrieved Alisha LPEM configuration from storage", v167, 2u);
        }

        sub_1003462A8(0);

        sub_10006A178(v189, v190);
        sub_10006A178(v191, v192);

        sub_10006A178(v182, v48);
        return;
      }

      goto LABEL_59;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
  }

LABEL_58:

LABEL_59:
  if (qword_100501A30 != -1)
  {
    swift_once();
  }

  *&v208 = qword_10051B358;
  v168 = type metadata accessor for UUID();
  v169 = v194;
  (*(*(v168 - 8) + 56))(v194, 1, 1, v168);
  v170 = swift_allocObject();
  v170[2] = v202;
  v170[3] = v57;
  v171 = v186;
  v170[4] = v187;
  v170[5] = v171;
  v170[6] = v184;
  v172 = type metadata accessor for SERequest();
  v173 = *(v172 + 48);
  v174 = *(v172 + 52);
  v175 = swift_allocObject();
  v176 = (v175 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
  *v176 = 0xD000000000000017;
  v176[1] = 0x8000000100461900;
  *(v175 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 1;
  *(v175 + 16) = 0;
  *(v175 + 24) = 1;
  v177 = v175 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
  *(v177 + 32) = 0;
  *v177 = 0u;
  *(v177 + 16) = 0u;
  *(v175 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 3;
  *(v175 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = 0;
  v178 = v175 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
  *v178 = 0;
  *(v178 + 8) = 1;
  sub_100075390(v169, v175 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
  v179 = v175 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
  *v179 = 0;
  *(v179 + 8) = 1;
  *(v175 + 32) = sub_100079E10;
  *(v175 + 40) = v170;

  sub_1001939C8(0, v175);

  sub_10006A178(v189, v190);
  sub_10006A178(v191, v192);

  sub_10006A178(v182, v188);
}

uint64_t sub_100077850(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v2 = (a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v3 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  v5 = *v2;
  sub_100069E2C(*v2, v3);
  LOBYTE(a2) = sub_1000C66AC(v5, v3, a2);
  sub_10006A2D0(v5, v3);
  return a2 & 1;
}

void sub_1000778E8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  if (a2)
  {
    v46 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v48 = v17;
      *v16 = 136315138;
      sub_100075400();
      v18 = Error.localizedDescription.getter();
      v20 = sub_1002FFA0C(v18, v19, &v48);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v46, v15, "Failed to get the SE %s", v16, 0xCu);
      sub_1000752F4(v17);
    }

    else
    {
    }

    return;
  }

  v47 = a6;
  swift_beginAccess();
  v22 = *(a4 + 16);
  v21 = *(a4 + 24);
  sub_100069E2C(v22, v21);
  sub_100077F3C(a1, 811889762, 0xE400000000000000, v22, v21);
  sub_10006A178(v22, v21);
  swift_beginAccess();
  v23 = *(a5 + 16);
  v24 = *(a5 + 24);
  sub_100069E2C(v23, v24);
  sub_100077F3C(a1, 812802403, 0xE400000000000000, v23, v24);
  sub_10006A178(v23, v24);
  swift_beginAccess();
  v25 = *(v47 + 16);
  v26 = *(v47 + 24);
  sub_100069E2C(v25, v26);
  sub_100077F3C(a1, 829579619, 0xE400000000000000, v25, v26);
  sub_10006A178(v25, v26);
  v27 = a7;
  swift_beginAccess();
  v28 = *(a7 + 16);
  v29 = *(a7 + 24);
  v30 = v29 >> 62;
  if ((v29 >> 62) <= 1)
  {
    if (!v30)
    {
      v28 = BYTE6(v29);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v30 == 2)
  {
    v33 = v28 + 16;
    v31 = *(v28 + 16);
    v32 = *(v33 + 8);
    v34 = __OFSUB__(v32, v31);
    v28 = v32 - v31;
    if (!v34)
    {
LABEL_17:
      if (v28 >= 1)
      {
        swift_beginAccess();
        v35 = *(a7 + 16);
        v36 = *(a7 + 24);
        sub_100069E2C(v35, v36);
        sub_100077F3C(a1, 846356835, 0xE400000000000000, v35, v36);
        sub_10006A178(v35, v36);
        v27 = a7;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_15:
    v34 = __OFSUB__(HIDWORD(v28), v28);
    LODWORD(v28) = HIDWORD(v28) - v28;
    if (v34)
    {
      __break(1u);
      return;
    }

    v28 = v28;
    goto LABEL_17;
  }

LABEL_19:
  if (qword_100501A18 != -1)
  {
    swift_once();
  }

  sub_100068FC4(&qword_1005025E0, &unk_10040F430);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1004099F0;
  swift_beginAccess();
  v38 = *(a4 + 16);
  v39 = *(a4 + 24);
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  swift_beginAccess();
  v41 = *(a5 + 16);
  v40 = *(a5 + 24);
  *(v37 + 48) = v41;
  *(v37 + 56) = v40;
  swift_beginAccess();
  v43 = *(v47 + 16);
  v42 = *(v47 + 24);
  *(v37 + 64) = v43;
  *(v37 + 72) = v42;
  swift_beginAccess();
  v44 = *(v27 + 16);
  v45 = *(v27 + 24);
  *(v37 + 80) = v44;
  *(v37 + 88) = v45;
  sub_100069E2C(v38, v39);
  sub_100069E2C(v41, v40);
  sub_100069E2C(v43, v42);
  sub_100069E2C(v44, v45);
  sub_10008BB30(0xD000000000000019, 0x80000001004618E0, v37);

  if (qword_100501DA8 != -1)
  {
    swift_once();
  }

  sub_1003462A8(0);
}

uint64_t sub_100077F3C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v60 = a4;
  v61 = a1;
  v62 = type metadata accessor for String.Encoding();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v62);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  static String.Encoding.ascii.getter();
  v20 = String.data(using:allowLossyConversion:)();
  v22 = v21;
  v23 = *(v8 + 8);
  result = v23(v11, v62);
  if (v22 >> 60 == 15)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v59 = v23;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v20, v22);
  v25 = sub_1000146EC(v61, isa, 0);

  if (v25)
  {
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v28 >> 60 != 15)
    {
      if (a5 >> 60 != 15)
      {
        sub_10006A2BC(v26, v28);
        v29 = v60;
        sub_100069E2C(v60, a5);
        v30 = sub_10008FB4C(v26, v28, v29, a5);
        sub_10006A2D0(v29, a5);
        sub_10006A2D0(v26, v28);
        if ((v30 & 1) == 0)
        {
          v31 = a2;
          goto LABEL_14;
        }

        return sub_10006A2D0(v26, v28);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v26 = 0;
    v28 = 0xF000000000000000;
  }

  if (a5 >> 60 == 15)
  {
    sub_100069E2C(v60, a5);
    return sub_10006A2D0(v26, v28);
  }

LABEL_13:
  v31 = a2;
  sub_10006A2BC(v26, v28);
  v32 = v60;
  sub_100069E2C(v60, a5);
  sub_10006A2D0(v26, v28);
  sub_10006A2D0(v32, a5);
LABEL_14:
  v33 = OBJC_IVAR____TtC10seserviced10AlishaLPEM_logger;

  v58 = v33;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v57 = v28;
    v37 = v36;
    v38 = swift_slowAlloc();
    v56 = v26;
    v39 = v38;
    v63 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_1002FFA0C(v31, a3, &v63);
    _os_log_impl(&_mh_execute_header, v34, v35, "Updating Sunsprite '%s'", v37, 0xCu);
    sub_1000752F4(v39);
    v26 = v56;

    v28 = v57;
  }

  static String.Encoding.ascii.getter();
  v57 = v31;
  v40 = String.data(using:allowLossyConversion:)();
  v42 = v41;
  result = v59(v11, v62);
  if (v42 >> 60 == 15)
  {
    goto LABEL_24;
  }

  v43 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v40, v42);
  v44 = Data._bridgeToObjectiveC()().super.isa;
  v45 = sub_1000144B4(v61, v43, v44);

  if (!v45)
  {
    return sub_10006A2D0(v26, v28);
  }

  v46 = v26;

  v47 = v45;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v50 = 136315394;
    *(v50 + 4) = sub_1002FFA0C(v57, a3, &v63);
    *(v50 + 12) = 2080;
    swift_getErrorValue();
    v51 = Error.localizedDescription.getter();
    v53 = sub_1002FFA0C(v51, v52, &v63);

    *(v50 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v48, v49, "Failed to write to Sunsprite '%s' %s", v50, 0x16u);
    swift_arrayDestroy();
  }

  sub_100079E24();
  swift_allocError();
  *v54 = 0;
  swift_willThrow();

  return sub_10006A2D0(v46, v28);
}

uint64_t sub_100078598()
{
  v1 = OBJC_IVAR____TtC10seserviced10AlishaLPEM__latency;
  v2 = sub_100068FC4(&qword_1005025D8, &qword_100409A10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10seserviced10AlishaLPEM__btScanTimer, v2);
  v4 = OBJC_IVAR____TtC10seserviced10AlishaLPEM__isLoggingEnabled;
  v5 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC10seserviced10AlishaLPEM_logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaLPEM()
{
  result = qword_100502530;
  if (!qword_100502530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100078750()
{
  sub_100078874(319, &unk_100502540);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100078874(319, &qword_100506E70);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Logger();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100078874(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for UserDefaultBacked();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000788F0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100078930()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100078968(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1) & 1;
}

Swift::Int sub_100078998(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100079D90(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100078A3C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_100078A04()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Int sub_100078A3C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100068FC4(&qword_1005025F0, &qword_100409A18);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100078D74(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100078B44(0, v2, 1, a1);
  }

  return result;
}