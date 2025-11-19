id sub_100000E34(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100000ED4;
  v8[3] = &unk_100008270;
  v5 = a1[8];
  v8[4] = a1[9];
  BYTE2(v7) = 1;
  LOWORD(v7) = 256;
  return [v2 displayUserNotificationWithIdentifier:@"passcodenagd-user-notification-id" title:v1 message:v3 defaultButtonText:v4 alternateButtonText:v5 otherButtonText:0 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v7 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v8 assertion:? completionBlock:?];
}

void sub_100000ED4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[6];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2 == 1)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v11 = 0;
    v8 = "later!";
    v9 = &v11;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    goto LABEL_11;
  }

  if (a2)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v10 = 0;
    v8 = "default behavior!";
    v9 = &v10;
    goto LABEL_10;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "change now!", buf, 2u);
  }

  [*(a1 + 32) beginPromptForChangePasscode];
LABEL_11:
}

id sub_100001120(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000011C0;
  v8[3] = &unk_100008270;
  v5 = a1[8];
  v8[4] = a1[9];
  BYTE2(v7) = 1;
  LOWORD(v7) = 256;
  return [v2 displayUserNotificationWithIdentifier:@"passcodenagd-user-notification-id" title:v1 message:v3 defaultButtonText:v4 alternateButtonText:v5 otherButtonText:0 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v7 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v8 assertion:? completionBlock:?];
}

void sub_1000011C0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[6];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2 == 1)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v11 = 0;
    v8 = "cancel";
    v9 = &v11;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    goto LABEL_11;
  }

  if (a2)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v10 = 0;
    v8 = "default behavior?";
    v9 = &v10;
    goto LABEL_10;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Continue", buf, 2u);
  }

  [*(a1 + 32) beginPromptForChangePasscode];
LABEL_11:
}

id sub_1000013E4(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001488;
  v7[3] = &unk_100008270;
  v7[4] = a1[8];
  BYTE2(v6) = 1;
  LOWORD(v6) = 256;
  return [v2 displayUserNotificationWithIdentifier:@"passcodenagd-user-notification-id" title:v1 message:v3 defaultButtonText:v4 alternateButtonText:0 otherButtonText:0 textfieldPlaceholder:0.0 displayOnLockScreen:0 dismissOnLock:v6 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v7 assertion:? completionBlock:?];
}

void sub_100001488(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[6];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "default behavior?", v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Change Passcode", buf, 2u);
    }

    [*(a1 + 32) beginPromptForChangePasscode];
  }
}

void sub_100001830(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001920;
  v12[3] = &unk_100008310;
  v8 = a1[10];
  v14 = a1[11];
  v9 = v8;
  v10 = a1[12];
  v13 = v9;
  v15 = v10;
  BYTE2(v11) = 1;
  LOWORD(v11) = 256;
  [v2 displayUserNotificationWithIdentifier:@"passcodenagd-user-notification-id" title:v3 message:v4 defaultButtonText:v5 alternateButtonText:v6 otherButtonText:0 textfieldPlaceholder:0.0 displayOnLockScreen:v7 dismissOnLock:v11 displayInAppWhitelistModes:0 dismissAfterTimeInterval:v12 assertion:? completionBlock:?];
}

void sub_100001920(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[6];
  if (a2 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Emergency Call", buf, 2u);
    }

    v8 = objc_opt_new();
    [v8 launchEmergencyDialerWithCompletion:0];
    [v8 invalidate];
    goto LABEL_37;
  }

  if (!a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Continue", buf, 2u);
    }

    v7 = [v5 copy];
    v8 = [NSString _newZStringWithString:v7];

    if (![v8 length])
    {

      v8 = 0;
    }

    v9 = *(a1 + 40);
    if (v9 == 2)
    {
      v31 = [qword_10000C398 passcodeIsEqualToString:v8];
      v32 = _MCLogObjects[6];
      if (v31)
      {
        if (os_log_type_enabled(_MCLogObjects[6], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "passcode matches!", buf, 2u);
        }

        v50 = [[DMCProcessAssertion alloc] initWithReason:@"passcodenagd-changePasscode"];
        [PNDConnection setIsChangingPasscode:1];
        v33 = *(a1 + 32);
        v34 = [qword_10000C390 externalizedContext];
        v35 = [qword_10000C398 externalizedContext];
        v53 = 0;
        v36 = [v33 changePasscodeWithOldPasscodeContext:v34 newPasscodeContext:v35 skipRecovery:0 outError:&v53];
        v37 = v53;

        if (v36)
        {
          v38 = _MCLogObjects[6];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "New passcode has been set!", buf, 2u);
          }

          v39 = qword_10000C398;
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_100001FCC;
          v51[3] = &unk_1000082E8;
          v40 = v50;
          v52 = v50;
          [PNDConnection notifyCDPOfNewPasscodeWithContext:v39 completion:v51];
        }

        else
        {
          [PNDConnection setIsChangingPasscode:0];
          v47 = [v37 localizedDescription];
          v48 = qword_10000C388;
          qword_10000C388 = v47;

          qword_10000C3A0 = 1;
          v49 = qword_10000C398;
          qword_10000C398 = 0;

          [*(a1 + 48) showCFUserNotifcationWithSecureTextFieldOptionForState:qword_10000C3A0];
          v40 = v50;
        }
      }

      else
      {
        if (os_log_type_enabled(_MCLogObjects[6], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "passcode does not match!", buf, 2u);
        }

        v44 = MCLocalizedFormat();
        v45 = qword_10000C388;
        qword_10000C388 = v44;

        qword_10000C3A0 = 1;
        v46 = qword_10000C398;
        qword_10000C398 = 0;

        [*(a1 + 48) showCFUserNotifcationWithSecureTextFieldOptionForState:qword_10000C3A0];
      }

      goto LABEL_37;
    }

    if (v9 == 1)
    {
      v60 = NSLocalizedDescriptionKey;
      v21 = [*(a1 + 32) localizedDescriptionOfCurrentPasscodeConstraints];
      v61 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v23 = [NSError errorWithDomain:@"EmptyPasscode" code:0 userInfo:v22];

      v55 = v23;
      v24 = [MCExtractablePasscodeContextWrapper contextWrapperForExtractablePasscode:v8 outError:&v55];
      v25 = v55;

      v26 = qword_10000C398;
      qword_10000C398 = v24;

      v27 = *(a1 + 32);
      v28 = [qword_10000C398 externalizedContext];
      v54 = v25;
      v29 = [v27 passcodeContext:v28 meetsCurrentConstraintsOutError:&v54];
      v18 = v54;

      v30 = _MCLogObjects[6];
      if (v29)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "passcode works!", buf, 2u);
        }

        qword_10000C3A0 = 2;
        v19 = *(a1 + 48);
        v20 = 2;
        goto LABEL_36;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "passcode does not work!", buf, 2u);
      }

      v41 = [v18 localizedDescription];
      v42 = qword_10000C388;
      qword_10000C388 = v41;

      v43 = qword_10000C398;
      qword_10000C398 = 0;
    }

    else
    {
      if (v9)
      {
LABEL_37:

        goto LABEL_38;
      }

      v57 = 0;
      v10 = [MCExtractablePasscodeContextWrapper contextWrapperForExtractablePasscode:v8 outError:&v57];
      v11 = v57;
      v12 = qword_10000C390;
      qword_10000C390 = v10;

      v13 = [*(a1 + 32) localizedDescriptionOfCurrentPasscodeConstraints];
      v14 = qword_10000C388;
      qword_10000C388 = v13;

      v15 = *(a1 + 32);
      v16 = [qword_10000C390 externalizedContext];
      v56 = v11;
      v17 = [v15 unlockDeviceWithPasscodeContext:v16 outError:&v56];
      v18 = v56;

      if (v17)
      {
        qword_10000C3A0 = 1;
        v19 = *(a1 + 48);
        v20 = 1;
LABEL_36:
        [v19 showCFUserNotifcationWithSecureTextFieldOptionForState:v20];

        goto LABEL_37;
      }

      v43 = qword_10000C390;
      qword_10000C390 = 0;
    }

    v19 = *(a1 + 48);
    v20 = qword_10000C3A0;
    goto LABEL_36;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v59 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unexpected response type: %d", buf, 8u);
  }

LABEL_38:
}

void sub_100001FCC()
{
  [PNDConnection setIsChangingPasscode:0];
  v0 = qword_10000C390;
  qword_10000C390 = 0;

  v1 = qword_10000C398;
  qword_10000C398 = 0;

  v2 = +[NSFileManager defaultManager];
  v3 = MCPasscodeNagKeepAliveFilePath();
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = _MCLogObjects[6];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting Keep-Alive file", buf, 2u);
    }

    v6 = +[NSFileManager defaultManager];
    v7 = MCPasscodeNagKeepAliveFilePath();
    v13 = 0;
    v8 = [v6 removeItemAtPath:v7 error:&v13];
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      v10 = _MCLogObjects[6];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [v9 localizedDescription];
        *buf = 138543362;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error deleting Keep-Alive file: %{public}@", buf, 0xCu);
      }
    }
  }
}

void sub_1000021D8(id a1)
{
  qword_10000C3C0 = objc_alloc_init(NSObject);

  _objc_release_x1();
}

id sub_1000024EC(uint64_t a1)
{
  v2 = _MCLogObjects[6];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Keep-Alive file has been deleted!", buf, 2u);
  }

  if (![*(a1 + 32) isChangingPasscode])
  {
    return [*(a1 + 32) shutdown];
  }

  v3 = _MCLogObjects[6];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Currently changing passcode. Postponing handling this notification until passcode change completes", v5, 2u);
  }

  return [*(a1 + 32) setPendingKeepAliveDeletion:1];
}

void sub_1000026F4(id a1)
{
  v1 = _MCLogObjects[6];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Dying now...", v2, 2u);
  }

  exit(0);
}

void sub_100002884(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  if (state64 == 1)
  {
    v3 = _MCLogObjects[6];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notified that we landed on HomeScreen", buf, 2u);
    }

    if ([*(a1 + 32) isChangingPasscode])
    {
      v4 = _MCLogObjects[6];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Currently changing passcode. Ignoring this notification for now...", v5, 2u);
      }
    }

    else
    {
      [*(a1 + 32) _checkPasscodeCompliance];
    }
  }
}

void sub_100002A4C(id a1, int a2)
{
  v2 = _MCLogObjects[6];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notified that device lock state changed", v5, 2u);
  }

  v3 = +[NSDate date];
  v4 = qword_10000C3A8;
  qword_10000C3A8 = v3;
}

id sub_100002B20()
{
  v0 = _MCLogObjects[6];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "System language changed", v2, 2u);
  }

  return +[PNDConnection shutdown];
}

void sub_100002C38(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v17 = _MCLogObjects[6];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "getPasscodeComplianceWarningLastLockDate completion: kMCPasscodeComplianceOptional", buf, 2u);
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100002F94;
      v29[3] = &unk_100008460;
      v30 = v7;
      v31 = v8;
      dispatch_async(&_dispatch_main_q, v29);
      v18 = *(a1 + 32);
      v19 = +[NSDate date];
      [v18 notifyUserHasSeenComplianceMessageWithLastLockDate:v19];

      v12 = v30;
      goto LABEL_17;
    }

    if (a2 == 3)
    {
      v13 = _MCLogObjects[6];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "getPasscodeComplianceWarningLastLockDate completion: kMCPasscodeComplianceAdvisory", buf, 2u);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002FA8;
      block[3] = &unk_100008460;
      v27 = v7;
      v28 = v8;
      dispatch_async(&_dispatch_main_q, block);
      v14 = *(a1 + 32);
      v15 = +[NSDate date];
      [v14 notifyUserHasSeenComplianceMessageWithLastLockDate:v15];

      v12 = v27;
      goto LABEL_17;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = _MCLogObjects[6];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "getPasscodeComplianceWarningLastLockDate completion: kMCPasscodeComplianceMandatory", buf, 2u);
      }

      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_100002FBC;
      v23 = &unk_100008460;
      v24 = v7;
      v25 = v8;
      dispatch_async(&_dispatch_main_q, &v20);
      v10 = *(a1 + 32);
      v11 = [NSDate date:v20];
      [v10 notifyUserHasSeenComplianceMessageWithLastLockDate:v11];

      v12 = v24;
LABEL_17:
    }
  }

  else
  {
    v16 = _MCLogObjects[6];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "getPasscodeComplianceWarningLastLockDate completion: kMCPasscodeComplianceNone", buf, 2u);
    }
  }
}

void sub_100003130(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _MCLogObjects[6];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully notified CDP of passcode change", &v10, 2u);
    }
  }

  else if (v7)
  {
    v8 = v6;
    v9 = [v5 localizedDescription];
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to notify CDP of passcode change. Error: %{public}@", &v10, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  MCLoggingInitialize();
  v1 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "passcodenagd starting...", buf, 2u);
  }

  v2 = +[NSFileManager defaultManager];
  v3 = MCPasscodeNagKeepAliveFilePath();
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    +[PNDConnection registerKeepAliveFileDeleteNotification];
    +[PNDConnection registerSpringboardNotification];
    +[PNDConnection registerLockStateChangedNotification];
    +[PNDConnection registerLanguageChangedNotification];
  }

  else
  {
    v5 = _MCLogObjects[6];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No Keep-Alive file!", v8, 2u);
    }

    +[PNDConnection shutdown];
  }

  objc_autoreleasePoolPop(v0);
  v6 = +[NSRunLoop mainRunLoop];
  [v6 run];

  return 0;
}