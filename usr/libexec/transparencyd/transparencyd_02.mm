void sub_10005F2B4(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005F2F8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005F33C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005F5F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 isEqualToString:*(a1 + 40)])
    {
      v7 = *(a1 + 48);
      v8 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:14 description:@"OS update has not happened"];
      (*(v7 + 16))(v7, 0, v8);
    }

    else
    {
      if (qword_10038BD00 != -1)
      {
        sub_10024A4D4();
      }

      v11 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Update has happened, attempting to opt in", buf, 2u);
      }

      v12 = *(a1 + 32);
      v21 = 0;
      v13 = [v12 changeOptInState:3 application:kKTApplicationIdentifierIDS loggableData:0 error:&v21];
      v8 = v21;
      if ((v13 & 1) != 0 || ![KTContext checkNetworkError:v8])
      {
        v17 = [*(a1 + 32) statusReporting];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10005FB30;
        v19[3] = &unk_10031A768;
        v18 = *(a1 + 40);
        v20 = *(a1 + 48);
        [v17 insertOSVersion:v18 completionHandler:v19];

        v16 = v20;
      }

      else
      {
        if (qword_10038BD00 != -1)
        {
          sub_10024A4E8();
        }

        v14 = qword_10038BD08;
        if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v8;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to opt into KT by default. Error %@", buf, 0xCu);
        }

        v15 = *(a1 + 48);
        v16 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:17 underlyingError:v8 description:@"change opt in failed"];
        (*(v15 + 16))(v15, 0, v16);
      }
    }
  }

  else
  {
    v9 = [*(a1 + 32) statusReporting];
    v10 = *(a1 + 40);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10005F944;
    v22[3] = &unk_10031AA28;
    v23 = v10;
    v24 = *(a1 + 48);
    [v9 insertOSVersion:v23 completionHandler:v22];
  }
}

void sub_10005F944(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10038BD00 != -1)
  {
    sub_10024A510();
  }

  v4 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Updated cached OS version to %@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:13 underlyingError:v3 description:@"cachedOS version was nil"];
  (*(v6 + 16))(v6, 0, v7);
}

void sub_10005FA64(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005FAA8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005FAEC(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005FB30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A524();
    }

    v4 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to update cached OS version: %@", &v7, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:13 underlyingError:v3 description:@"change opt in failed"];
    (*(v5 + 16))(v5, 1, v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10005FC6C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10005FD44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) deps];
  v7 = [v6 stateMonitor];
  v8 = [v7 ktStatus];
  v9 = [v8 optIn];

  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:15 description:@"User is already opted in or pending opt in"];
    (*(v10 + 16))(v10, a2, 0, v11);
  }

  else if (a2)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10005FF84;
    v21[3] = &unk_10031BC10;
    v12 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = a2;
    [v12 tryOptInByDefaultWithCompletionHandler:v21];
  }

  else if ([v5 code] == 10)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = +[TransparencySettings deviceUserAgent];
    v14 = [*(a1 + 32) statusReporting];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000600C0;
    v16[3] = &unk_10031BC78;
    v17 = v13;
    v19 = *(a1 + 40);
    v20 = 0;
    v18 = v5;
    v15 = v13;
    [v14 insertOSVersion:v15 completionHandler:v16];
  }
}

void sub_10005FF84(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (qword_10038BD00 != -1)
  {
    sub_10024A538();
  }

  v6 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Opt-in success %d, error %@", v8, 0x12u);
  }

  v7 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
}

void sub_10006007C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000600C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A54C();
    }

    v4 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to update cached OS version: %@", &v10, 0xCu);
    }
  }

  if (qword_10038BD00 != -1)
  {
    sub_10024A560();
  }

  v5 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated cached OS version to %@", &v10, 0xCu);
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:16 underlyingError:*(a1 + 40) description:@"Recommended No"];
  (*(v8 + 16))(v8, v7, 0, v9);
}

void sub_10006024C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100060290(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006048C(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100060A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100060AB8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100060B14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained statusReporting];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100060BC8;
  v5[3] = &unk_10031BD28;
  v4 = *(a1 + 32);
  v5[4] = WeakRetained;
  v6 = v4;
  [v3 reportWithCompletionHandler:v5];
}

void sub_100060BC8(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), a2 == 0);
  v3 = [*(a1 + 32) statusReporting];
  [v3 clearReportOverridesWithCompletionHandler:&stru_10031BD00];
}

void sub_100060E14(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100060E58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [SecXPCHelper cleanseErrorForXPC:?];
  (*(v3 + 16))(v3, a2, v4);
}

void sub_10006139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000613B8(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000613FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [SecXPCHelper cleanseErrorForXPC:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_100061464(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061528;
  block[3] = &unk_100317DE0;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_100061528(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(a1[6] + 8);
    v5 = *(v3 + 40);
    v4 = (v3 + 40);
    if (!v5)
    {
      objc_storeStrong(v4, v2);
    }
  }

  v6 = a1[5];

  dispatch_group_leave(v6);
}

void sub_100061578(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 40) + 8) + 40)];
  (*(v1 + 16))(v1, v2);
}

void sub_100061A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_100061A94(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = a2;
  v5 = a3;
  v6 = a2;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [SecXPCHelper cleanseErrorForXPC:v5];

  (*(v4 + 16))(v4, v7, v8);
}

void sub_100061B74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061C64;
  block[3] = &unk_10031BE58;
  v7 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v14 = v5;
  v8 = *(a1 + 64);
  v15 = v6;
  v17 = v8;
  v12 = *(a1 + 48);
  v9 = v12;
  v16 = v12;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void sub_100061C64(void *a1)
{
  [*(*(a1[8] + 8) + 40) setObject:a1[5] forKeyedSubscript:a1[4]];
  if (a1[6])
  {
    [*(*(a1[9] + 8) + 40) addObject:?];
  }

  v2 = a1[7];

  dispatch_group_leave(v2);
}

void sub_100061CC4(void *a1)
{
  if ([*(*(a1[5] + 8) + 40) count])
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    [v2 setObject:*(*(a1[5] + 8) + 40) forKeyedSubscript:NSMultipleUnderlyingErrorsKey];
    v6 = [TransparencyError errorWithDomain:kTransparencyErrorEligibility code:4 userInfo:v2];
  }

  else
  {
    v6 = 0;
  }

  v3 = a1[4];
  v4 = *(*(a1[6] + 8) + 40);
  v5 = [SecXPCHelper cleanseErrorForXPC:v6];
  (*(v3 + 16))(v3, v4, v5);
}

void sub_100062814(id a1)
{
  qword_10038BD08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100062AFC(id a1)
{
  qword_10038BD18 = [NSSet setWithArray:&off_10033D7A8];

  _objc_release_x1();
}

void sub_100062CBC(id a1)
{
  qword_10038BD28 = [NSSet setWithArray:&off_10033D7C0];

  _objc_release_x1();
}

intptr_t sub_100063FCC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = +[NSDate now];
    [v4 timeIntervalSinceDate:v3];
    v6 = v5;

    *(*(*(a1 + 40) + 8) + 24) = (v6 / 86400.0);
  }

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

void sub_100064064(uint64_t a1, uint64_t a2)
{
  v3 = [NSNumber numberWithBool:a2];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"selfOptIn"];
}

void sub_1000641AC(uint64_t a1)
{
  v2 = [*(a1 + 32) stringForValidateType:*(a1 + 48)];
  if (v2)
  {
    v3 = *(a1 + 56);
    if (v3 == 1)
    {
      v4 = [_TtC13transparencyd25KTEligibilityStatusResult statusResultWithSuccessWithElement:v2];
    }

    else
    {
      if (v3)
      {
        goto LABEL_8;
      }

      v4 = [_TtC13transparencyd25KTEligibilityStatusResult statusResultWithFailureWithElement:v2 error:*(a1 + 40)];
    }

    v5 = v4;
    if (v4)
    {
      v6 = [*(a1 + 32) eligibilityStatusReporter];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000642B0;
      v7[3] = &unk_10031BFE0;
      v7[4] = *(a1 + 32);
      [v6 storeWithStatus:v5 completionHandler:v7];
    }
  }

LABEL_8:
}

void sub_1000642B0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 && (a2 & 1) == 0)
  {
    if (qword_10038BD30 != -1)
    {
      sub_10024A614();
    }

    v6 = qword_10038BD38;
    if (os_log_type_enabled(qword_10038BD38, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error storing eligibility metric %{public}@", &v8, 0xCu);
    }
  }

  v7 = [*(a1 + 32) storedEligibilityResult];
  [v7 fulfill];
}

void sub_1000643A0(id a1)
{
  qword_10038BD38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100064E78(id a1)
{
  qword_10038BD48 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100064EBC(id a1)
{
  qword_10038BD48 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100065094(id a1)
{
  qword_10038BD48 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100065604(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100065648(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006568C(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000656D0(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100065714(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100065758(uint64_t a1)
{
  v2 = [*(a1 + 32) errors];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) errors];
    v5 = [v4 allKeys];

    v34 = v5;
    v6 = [v5 componentsJoinedByString:{@", "}];
    v7 = [NSString stringWithFormat:@"Inclusion failed for applications: %@", v6];

    v42[0] = NSMultipleUnderlyingErrorsKey;
    v8 = [*(a1 + 32) errors];
    v9 = [v8 allValues];
    v42[1] = NSLocalizedDescriptionKey;
    v43[0] = v9;
    v33 = v7;
    v43[1] = v7;
    v10 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];

    v32 = v10;
    v11 = [NSError errorWithDomain:@"TransparencyErrorVerify" code:-385 userInfo:v10];
    [*(a1 + 32) setError:v11];

    v12 = +[NSMutableString string];
    v13 = +[NSMutableString string];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [*(a1 + 32) failedRevs];
    v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          v19 = [*(a1 + 32) serverHints];
          v20 = [v19 objectForKeyedSubscript:v18];
          [v12 appendFormat:@"%@/%@, ", v18, v20];

          v21 = [*(a1 + 32) failedRevs];
          v22 = [v21 objectForKeyedSubscript:v18];
          v23 = [v22 componentsJoinedByString:{@", "}];
          [v13 appendFormat:@"%@:%@", v18, v23];
        }

        v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v15);
    }

    v24 = [*(a1 + 32) backgroundOpId];
    v25 = [*(a1 + 32) deps];
    v26 = [v25 smDataStore];
    v27 = [*(a1 + 32) name];
    v28 = [*(a1 + 32) error];
    [KTBackgroundSystemValidationOperation addErrorToBackgroundOp:v24 smDataStore:v26 failureDataString:v13 type:v27 serverHint:v12 failure:v28];
  }

  if (qword_10038BD50 != -1)
  {
    sub_10024A740();
  }

  v29 = qword_10038BD58;
  if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "VerifyRevisionInclusion: end", buf, 2u);
  }

  v30 = [*(a1 + 32) operationQueue];
  v31 = [*(a1 + 32) finishedOp];
  [v30 addOperation:v31];
}

void sub_100065B70(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100065E10(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100065FF0(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000662A0(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000665D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100066610(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_100066654(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006666C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 deps];
  v6 = [v5 dataStore];
  v7 = [v6 createDownloadRecord:*(a1 + 64) moc:v4 application:*(a1 + 40)];

  v8 = [NSJSONSerialization dataWithJSONObject:*(a1 + 48) options:0 error:*(a1 + 72)];
  [v7 setRevisions:v8];

  if (qword_10038BD50 != -1)
  {
    sub_10024A7E0();
  }

  v9 = qword_10038BD58;
  if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = v9;
    v13 = [v7 downloadId];
    *buf = 138543874;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
    v29 = 2114;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetching Inclusion Proofs for %{public}@ %{public}@ with downloadId %{public}@", buf, 0x20u);
  }

  v14 = [v7 downloadId];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [*(a1 + 32) deps];
  v18 = [v17 dataStore];
  v24 = 0;
  v19 = [v18 persistWithError:&v24];
  v20 = v24;

  if ((v19 & 1) == 0)
  {
    if (qword_10038BD50 != -1)
    {
      sub_10024A7F4();
    }

    v21 = qword_10038BD58;
    if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to save downloadRecord: %@", buf, 0xCu);
    }

    v22 = [*(a1 + 32) deps];
    v23 = [v22 dataStore];
    [v23 reportCoreDataPersistEventForLocation:@"verifyConsistency" underlyingError:v20];
  }
}

void sub_1000668EC(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100066930(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100066974(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained deps];
  v9 = [v8 publicKeyStore];
  v73 = [v9 applicationPublicKeyStore:*(a1 + 32)];

  v10 = [KTContextVerifier alloc];
  v11 = [WeakRetained deps];
  v12 = [v11 dataStore];
  v13 = [(KTContextVerifier *)v10 initWithApplicationKeyStore:v73 dataStore:v12 applicationID:*(a1 + 32)];

  v72 = +[NSMutableArray array];
  if (!v5 || v6)
  {
    if (qword_10038BD50 != -1)
    {
      sub_10024A81C();
    }

    v36 = qword_10038BD58;
    if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_ERROR))
    {
      v37 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v79 = v37;
      v80 = 2112;
      v81 = v6;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed inclusion proof downloadId %{public}@: %@", buf, 0x16u);
    }

    if (!v6)
    {
      v6 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-145 description:@"empty inclusion proof response"];
    }

    v38 = [WeakRetained deps];
    v39 = [v38 dataStore];
    v40 = *(*(*(a1 + 48) + 8) + 40);
    v41 = [WeakRetained deps];
    v42 = [v41 logClient];
    [v39 failHeadDownload:v40 failure:v6 logClient:v42];

    v15 = v6;
    v43 = v15;
  }

  else
  {
    if ([v5 status] == 1)
    {
      v75 = 0;
      v14 = [(KTContextVerifier *)v13 verifyRevisionLogInclusionProofResponse:v5 receivedRevisions:v72 error:&v75];
      v15 = v75;
      if (v14)
      {
        v16 = [WeakRetained deps];
        v17 = [v16 settings];
        v18 = [v17 allowsInternalSecurityPolicies];

        if (v18)
        {
          v19 = [TransparencyAnalytics formatEventName:@"InclusionDownload" application:*(a1 + 32)];
          v20 = *(a1 + 40);
          v76[0] = @"requestedRevisions";
          v76[1] = @"receivedRevisions";
          v77[0] = v20;
          v77[1] = v72;
          v21 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
          v22 = [v21 mutableCopy];

          v23 = [v5 metadata];
          v24 = kTransparencyResponseMetadataKeyServerHint;
          v25 = [v23 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

          if (v25)
          {
            v26 = [v5 metadata];
            v27 = [v26 objectForKeyedSubscript:v24];
            [v22 setObject:v27 forKeyedSubscript:v24];
          }

          v28 = [v5 metadata];
          v29 = [v28 objectForKeyedSubscript:@"APS"];

          if (v29)
          {
            [v22 setObject:&__kCFBooleanTrue forKeyedSubscript:@"APS"];
          }

          v30 = [WeakRetained deps];
          v31 = [v30 logger];
          [v31 logHardFailureForEventNamed:v19 withAttributes:v22];
        }

        if (qword_10038BD50 != -1)
        {
          sub_10024A86C();
        }

        v32 = qword_10038BD58;
        if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(*(*(a1 + 48) + 8) + 40);
          *buf = 138543362;
          v79 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Revision log inclusion proof downloadId %{public}@: verification succeeded", buf, 0xCu);
        }

        v34 = [WeakRetained deps];
        v35 = [v34 logClient];
        [v35 deleteDownloadId:*(*(*(a1 + 48) + 8) + 40)];
      }

      else
      {
        if (qword_10038BD50 != -1)
        {
          sub_10024A844();
        }

        v54 = qword_10038BD58;
        if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_ERROR))
        {
          v55 = *(*(*(a1 + 48) + 8) + 40);
          *buf = 138543618;
          v79 = v55;
          v80 = 2112;
          v81 = v15;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Inclusion proof response donwloadId %{public}@: verification failed %@", buf, 0x16u);
        }

        v56 = [WeakRetained deps];
        v57 = [v56 dataStore];
        v58 = *(*(*(a1 + 48) + 8) + 40);
        v59 = [WeakRetained deps];
        v60 = [v59 logClient];
        [v57 failHeadDownload:v58 failure:v15 logClient:v60];
      }
    }

    else
    {
      if (qword_10038BD50 != -1)
      {
        sub_10024A830();
      }

      v44 = qword_10038BD58;
      if (os_log_type_enabled(qword_10038BD58, OS_LOG_TYPE_ERROR))
      {
        v45 = *(*(*(a1 + 48) + 8) + 40);
        v46 = v44;
        *buf = 138543618;
        v79 = v45;
        v80 = 1024;
        LODWORD(v81) = [v5 status];
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "server failed to produce inclusion proof for downloadId %{public}@: %d", buf, 0x12u);
      }

      v47 = [v5 status];
      v48 = [v5 status];
      v15 = [TransparencyError errorWithDomain:kTransparencyErrorServer code:v47 description:@"server failed to produce inclusion proof: %d", v48];
      v49 = [WeakRetained deps];
      v50 = [v49 dataStore];
      v51 = *(*(*(a1 + 48) + 8) + 40);
      v52 = [WeakRetained deps];
      v53 = [v52 logClient];
      [v50 failHeadDownload:v51 failure:v15 logClient:v53];
    }

    v43 = 0;
  }

  v74 = v15;
  v61 = [(KTContextVerifier *)v13 failExpiredSTHsForType:1 error:&v74];
  v62 = v74;

  if (v61 && [v61 count])
  {
    if (v5)
    {
      v63 = [v5 metadata];
      v64 = [v63 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
    }

    else
    {
      v64 = 0;
    }

    v65 = *(a1 + 32);
    v66 = [NSString stringWithFormat:@"%@%lu", v65, *(a1 + 64)];
    v67 = [WeakRetained errors];
    objc_sync_enter(v67);
    v68 = [WeakRetained serverHints];
    [v68 setObject:v64 forKeyedSubscript:v66];

    v69 = [WeakRetained errors];
    [v69 setObject:v62 forKeyedSubscript:v66];

    v70 = [WeakRetained failedRevs];
    [v70 setObject:v61 forKeyedSubscript:v66];

    objc_sync_exit(v67);
  }

  v71 = [WeakRetained fetchGroup];
  dispatch_group_leave(v71);
}

void sub_1000671E8(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006722C(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100067270(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000672B4(id a1)
{
  qword_10038BD58 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100067930(id a1)
{
  qword_10038BD68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100067974(id a1)
{
  qword_10038BD68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000679B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    goto LABEL_3;
  }

  if (qword_10038BD60 != -1)
  {
    sub_10024A8E4();
  }

  v7 = qword_10038BD68;
  if (os_log_type_enabled(qword_10038BD68, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "createManateeIdentity: %@", &v16, 0xCu);
  }

  if (v6)
  {
    if (qword_10038BD60 != -1)
    {
      sub_10024A920();
    }

    v8 = qword_10038BD68;
    if (os_log_type_enabled(qword_10038BD68, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "createManateeIdentity: %@", &v16, 0xCu);
    }

    [*(a1 + 32) setError:v6];
  }

  else
  {
    if (a2)
    {
LABEL_3:
      [*(a1 + 32) setIdentityCreated:1];
      [*(a1 + 32) setIdentity:PCSIdentityGetPublicKey()];
      goto LABEL_14;
    }

    v11 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-327 description:@"Identity creation failed"];
    [*(a1 + 32) setError:v11];

    if (qword_10038BD60 != -1)
    {
      sub_10024A8F8();
    }

    v12 = qword_10038BD68;
    if (os_log_type_enabled(qword_10038BD68, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = [v13 error];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "createManateeIdentity no identity returned: %@", &v16, 0xCu);
    }
  }

LABEL_14:
  v9 = [*(a1 + 32) operationQueue];
  v10 = [*(a1 + 32) finishedOp];
  [v9 addOperation:v10];

  [*(a1 + 32) setTransaction:0];
}

void sub_100067C2C(id a1)
{
  qword_10038BD68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100067C70(id a1)
{
  qword_10038BD68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100067CB4(id a1)
{
  qword_10038BD68 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100068384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000683A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = [WeakRetained fuzzyTimeSinceLastUpdate];
    [v2 setObject:v3 forKeyedSubscript:@"globalSetting"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100068A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 48));
  _Block_object_dispose(&a22, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100068A84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100068A9C(id a1)
{
  qword_10038BD78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100068AE0(id a1)
{
  qword_10038BD78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100068B24(id a1)
{
  qword_10038BD78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100068B68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 48));
  v7 = objc_loadWeakRetained(&to);

  if (v7)
  {
    if ([v5 isEqual:*(a1 + 32)])
    {
      if (qword_10038BD70 != -1)
      {
        sub_10024A9C0();
      }

      v8 = qword_10038BD78;
      if (os_log_type_enabled(qword_10038BD78, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Updating configuration for SFA", buf, 2u);
      }

      v9 = objc_loadWeakRetained(&to);
      v10 = [v9 delegate];
      [v10 updateSFAConfigurationWithData:v6];
    }

    if ([v5 isEqual:*(a1 + 40)])
    {
      if (qword_10038BD70 != -1)
      {
        sub_10024A9E8();
      }

      v11 = qword_10038BD78;
      if (os_log_type_enabled(qword_10038BD78, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Updating configuration for dew", v14, 2u);
      }

      v12 = objc_loadWeakRetained(&to);
      v13 = [v12 delegate];
      [v13 updateDewConfigurationWithData:v6];
    }
  }

  objc_destroyWeak(&to);
}

void sub_100068D18(id a1)
{
  qword_10038BD78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100068D5C(id a1)
{
  qword_10038BD78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100068DA0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_10038BD70 != -1)
  {
    sub_10024AA10();
  }

  v3 = qword_10038BD78;
  if (os_log_type_enabled(qword_10038BD78, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating configuration done: %{public}@", &v4, 0xCu);
  }
}

void sub_100068E60(id a1)
{
  qword_10038BD78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100069290(id a1)
{
  qword_10038BD78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000692D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (qword_10038BD70 != -1)
    {
      sub_10024AA4C();
    }

    v10 = qword_10038BD78;
    if (os_log_type_enabled(qword_10038BD78, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "ConfigurationData not present/wrong type: %{public}@", &v15, 0xCu);
    }
  }

  else
  {
    v11 = [v7 recordID];
    v12 = [v11 recordName];

    if (v12)
    {
      v13 = [v7 objectForKeyedSubscript:@"configurationData"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        if (qword_10038BD70 != -1)
        {
          sub_10024AA60();
        }

        v14 = qword_10038BD78;
        if (os_log_type_enabled(qword_10038BD78, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "ConfigurationData not present/wrong type", &v15, 2u);
        }
      }
    }
  }
}

void sub_1000694A4(id a1)
{
  qword_10038BD78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000694E8(id a1)
{
  qword_10038BD78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006A11C(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006A160(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006A1A4(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006A1E8(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006A22C(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006A75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006A780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006A798(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"KTRequest"];
  [v2 setPropertiesToFetch:&off_10033D7D8];
  [v2 setResultType:2];
  [v2 setFetchLimit:1];
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"sequenceId" ascending:0];
  v14 = v3;
  v4 = [NSArray arrayWithObjects:&v14 count:1];
  [v2 setSortDescriptors:v4];

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7 && [v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 objectForKeyedSubscript:@"sequenceId"];

    *(*(*(a1 + 56) + 8) + 24) = [v9 longLongValue] + 1;
  }

  else if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 40) reportCoreDataEventForEntity:@"KTRequest" write:0 code:-126 underlyingError:?];
  }

  v10 = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 48) + 8) + 40)];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_10006A980(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (qword_10038BD80 != -1)
    {
      sub_10024AB28();
    }

    v8 = qword_10038BD88;
    if (os_log_type_enabled(qword_10038BD88, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v5 URL];
      *buf = 138412290;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Loaded store at %@", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v25 = 0;
    v12 = [v11 createContexts:&v25];
    v13 = v25;
    v14 = v13;
    if (v12)
    {
      v15 = *(a1 + 32);
      v16 = [v15 logger];
      v17 = +[TransparencyFollowup instance];
      v24 = v14;
      v18 = [v15 createDataStores:v16 followup:v17 error:&v24];
      v7 = v24;

      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = v13;
    }
  }

  if (qword_10038BD80 != -1)
  {
    sub_10024AB3C();
  }

  v19 = qword_10038BD88;
  if (os_log_type_enabled(qword_10038BD88, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    v21 = v19;
    v22 = [v20 movedDatabase];
    v23 = &stru_10032E8E8;
    if (v22)
    {
      v23 = @" again";
    }

    *buf = 138412546;
    v27 = v23;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to load stack%@: %@", buf, 0x16u);
  }

  if (![*(a1 + 32) shouldMoveAsideDatabase:v7] || !objc_msgSend(*(a1 + 32), "moveAsideDatabase:", v7))
  {
    [*(a1 + 32) reportCoreDataEventForEntity:@"Initialization" hardFailure:1 write:1 code:-127 underlyingError:v7];
    [*(a1 + 32) setPersistentContainer:0];
LABEL_20:
    [*(a1 + 32) setupComplete];
    goto LABEL_21;
  }

  [*(a1 + 32) reportCoreDataEventForEntity:@"Initialization" hardFailure:0 write:1 code:-127 underlyingError:v7];
  [*(a1 + 32) setMovedDatabase:1];
  [*(a1 + 32) loadPersistentStores];
LABEL_21:
}

void sub_10006AC54(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006AC98(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006B0D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const __CFString *a11, const __CFString *a12, const __CFString *a13, const __CFString *a14, const __CFString *a15, _UNKNOWN **a16, uint64_t a17, void *a18, const __CFString *a19, void *a20, __int128 buf)
{
  if (a2 == 1)
  {
    v23 = objc_begin_catch(a1);
    if (qword_10038BD80 != -1)
    {
      sub_10024ABB4();
    }

    v24 = qword_10038BD88;
    if (os_log_type_enabled(qword_10038BD88, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "CoreData context save exception: %@", &buf, 0xCu);
    }

    v25 = +[NSMutableDictionary dictionary];
    v26 = [v23 name];
    [v25 setValue:v26 forKey:@"CoreDataExceptionName"];

    v27 = [v23 reason];
    [v25 setValue:v27 forKey:@"CoreDataExceptionReason"];

    v28 = [v23 userInfo];
    [v25 setValue:v28 forKey:@"CoreDataExceptionUserInfo"];

    if (v21 && *v21)
    {
      [v25 setValue:*v21 forKey:NSUnderlyingErrorKey];
    }

    v29 = [NSError alloc];
    v30 = kTransparencyErrorDatabase;
    v31 = [v29 initWithDomain:kTransparencyErrorDatabase code:-110 userInfo:v25];
    v41 = [v23 reason];
    v32 = [TransparencyError errorWithDomain:v30 code:-110 underlyingError:v31 description:@"Error persisting to database: %@"];

    v33 = [v22 logger];
    a11 = @"errorCode";
    a12 = @"errorDomain";
    a16 = &off_10033CF30;
    a17 = v30;
    a13 = @"exceptionName";
    v34 = [v23 name];
    a18 = v34;
    a19 = @"Persistence";
    a14 = @"entityType";
    a15 = @"write";
    a20 = &__kCFBooleanTrue;
    v35 = [NSDictionary dictionaryWithObjects:&a16 forKeys:&a11 count:5];
    [v33 logHardFailureForEventNamed:@"ktCoreDataEvent" withAttributes:v35];

    if (qword_10038BD80 != -1)
    {
      sub_10024ABDC();
    }

    v36 = qword_10038BD88;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [v23 reason];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error saving to database: %@", &buf, 0xCu);
    }

    v38 = [SecXPCHelper cleanseErrorForXPC:v32];

    if (v38)
    {
      v39 = v21 != 0;
    }

    else
    {
      v39 = 0;
    }

    if (v39)
    {
      v40 = v38;
      *v21 = v38;
    }

    objc_end_catch();
    JUMPOUT(0x10006B084);
  }

  _Unwind_Resume(a1);
}

void sub_10006B430(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006B474(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006B4B8(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006B4FC(id a1)
{
  qword_10038BD88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006BAE8(id a1)
{
  qword_10038BD98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006BB2C(id a1)
{
  qword_10038BD98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006BB70(id a1)
{
  qword_10038BD98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006C360(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006C3A4(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006C548(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006CD2C(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_10006CD70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006CD88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024ACB8();
    }

    v7 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ContextStore configuration error for %@: %@", &v14, 0x16u);
    }

    if ([v5 isEqualToString:*(a1 + 32)])
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v8 dataStore];
    v10 = [*(a1 + 40) staticKeyStore];
    v11 = *(a1 + 48);
    v12 = [*(a1 + 40) stateMachine];
    v13 = [v8 createContextForApplication:v5 dataStore:v9 staticKeyStore:v10 logClient:v11 stateMachine:v12];
  }
}

void sub_10006CF10(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006CF54(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) contexts];
  v4 = [v3 count];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 dataStore];
    v7 = [*(a1 + 32) staticKeyStore];
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) stateMachine];
    v10 = [v5 createContextForTLT:v6 staticKeyStore:v7 logClient:v8 stateMachine:v9];
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = [*(a1 + 32) contexts];
    v12 = [v11 objectForKeyedSubscript:*(a1 + 48)];

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v14;
      if (!v13)
      {
        v13 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-148 description:@"Failed to configure public key store for %@", *(a1 + 48)];
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10006D0E4(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006D2E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (!a2 || v5)
  {
    v6 = *(a1 + 56);
    v7 = [[KTVerifierResult alloc] initWithUri:*(a1 + 32) application:*(a1 + 40) ktResult:0];
    (*(v6 + 16))(v6, v7, v10);

    v8 = +[TransparencyAnalytics logger];
    v9 = [KTContext validateEventName:0 application:*(a1 + 40)];
    [v8 logResultForEvent:v9 hardFailure:0 result:v10];
  }

  else
  {
    [a2 validatePeerRequestId:*(a1 + 48) revalidate:*(a1 + 64) fetchNow:*(a1 + 65) completionHandler:*(a1 + 56)];
  }
}

void sub_10006D598(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    (*(a1[7] + 16))();
    v12 = +[TransparencyAnalytics logger];
    v13 = [KTContext validateEventName:2 application:a1[4]];
    [v12 logResultForEvent:v13 hardFailure:0 result:v6];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v7 = a1[5];
    v8 = a1[6];
    v14 = 0;
    [a2 validateEnrollmentRequestId:v7 transparentData:&v16 loggableDatas:&v15 cloudOptIn:v8 error:&v14];
    v9 = v16;
    v10 = v15;
    v11 = v14;
    (*(a1[7] + 16))();
  }
}

void sub_10006D898(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006D8DC(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006DAF0(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006DB34(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006DB78(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024AD44();
    }

    v6 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to update key store for %@ with error %@", &v7, 0x16u);
    }
  }
}

void sub_10006DC60(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006DE0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v12 = +[TransparencyAnalytics logger];
    v13 = [TransparencyAnalytics formatEventName:@"VerifyInclusionProofEvent" application:*(a1 + 32)];
    [v12 logResultForEvent:v13 hardFailure:0 result:v6];
  }

  else
  {
    v7 = *(a1 + 40);
    v14 = 0;
    v8 = [a2 verifyInclusionProofDownload:v7 error:&v14];
    v9 = v14;
    v10 = v9;
    if (!v8 || v9)
    {
      if (qword_10038BDA0 != -1)
      {
        sub_10024AD58();
      }

      v11 = qword_10038BDA8;
      if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to handle inclusion proof download: %@", buf, 0xCu);
      }
    }
  }
}

void sub_10006DF64(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006E078(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v11 = +[TransparencyAnalytics logger];
    v12 = [TransparencyAnalytics formatEventName:@"VerifyConsistencyProofEvent" application:*(a1 + 32)];
    [v11 logResultForEvent:v12 hardFailure:0 result:v6];
  }

  else
  {
    v7 = *(a1 + 40);
    v13 = 0;
    v8 = [a2 verifyConsistencyProofDownload:v7 error:&v13];
    v9 = v13;
    if (v8 != 1)
    {
      if (qword_10038BDA0 != -1)
      {
        sub_10024AD80();
      }

      v10 = qword_10038BDA8;
      if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to handle consistency proof download: %@", buf, 0xCu);
      }
    }
  }
}

void sub_10006E1D0(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006E32C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (!a2 || v5)
  {
    v6 = +[TransparencyAnalytics logger];
    v7 = [TransparencyAnalytics formatEventName:@"VerifyUnknownProofEvent" application:*(a1 + 32)];
    [v6 logResultForEvent:v7 hardFailure:0 result:v8];
  }

  else
  {
    v6 = [*(a1 + 40) dataStore];
    [v6 failHeadDownload:*(a1 + 48) failure:*(a1 + 56) logClient:*(a1 + 64)];
  }
}

void sub_10006E4B4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v5 = [a3 transcript];
  v4 = [v5 serialize];
  [v3 addObject:v4];
}

void sub_10006E8F4(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006E938(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006E97C(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006E9C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = [TransparencyAnalytics formatEventName:@"RetrieveTLTSTHEvent" application:kKTApplicationIdentifierTLT];
    v11 = +[TransparencyAnalytics logger];
    [v11 logResultForEvent:v9 hardFailure:0 result:v7];

    if (qword_10038BDA0 != -1)
    {
      sub_10024ADF8();
    }

    v12 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to get context for TLT STH retrieval: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024ADE4();
    }

    v8 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "retrieving STH for gossip", buf, 2u);
    }

    v14 = 0;
    v9 = [v5 retrieveTLTSTH:&v14];
    v10 = v14;
    if (v9)
    {
      [*(a1 + 32) setCachedGossip:v9];
    }

    else
    {
      v13 = +[NSData data];
      [*(a1 + 32) setCachedGossip:v13];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10006EBE8(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006EC2C(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10006ED78(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (!a2 || v5)
  {
    v6 = +[TransparencyAnalytics logger];
    v7 = [TransparencyAnalytics formatEventName:@"ReceivedSTHsFromPeersEvent" application:kKTApplicationIdentifierTLT];
    [v6 logResultForEvent:v7 hardFailure:0 result:v8];

    (*(a1[6] + 16))();
  }

  else
  {
    [a2 processSTHsFromPeers:a1[4] verifier:a1[5] completionHandler:a1[6]];
  }
}

void sub_10006EF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006EF64(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 contextShouldGossip];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

void sub_10006F084(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (!a2 || v5)
  {
    (*(*(a1 + 40) + 16))();
    v6 = +[TransparencyAnalytics logger];
    [v6 logResultForEvent:@"KTAccountKeySign" hardFailure:0 result:v7];
  }

  else
  {
    v6 = [a2 accountKeyServer];
    [v6 signData:*(a1 + 32) completionBlock:*(a1 + 40)];
  }
}

void sub_10006F1F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (!a2 || v5)
  {
    (*(*(a1 + 32) + 16))();
    v6 = +[TransparencyAnalytics logger];
    [v6 logResultForEvent:@"KTAccountKeyRoll" hardFailure:0 result:v7];
  }

  else
  {
    v6 = [a2 accountKeyServer];
    [v6 rollKey:*(a1 + 32)];
  }
}

void sub_10006F388(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (!a2 || v5)
  {
    v6 = [TransparencyAnalytics formatEventName:@"OptInServerGet" application:*(a1 + 32)];
    v7 = +[TransparencyAnalytics logger];
    [v7 logResultForEvent:v6 hardFailure:0 result:v8];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [a2 optInServer];
    [v6 getOptInState:*(a1 + 48) completionBlock:*(a1 + 40)];
  }
}

void sub_10006F544(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (!a2 || v5)
  {
    v6 = [TransparencyAnalytics formatEventName:@"OptInServerSet" application:*(a1 + 32)];
    v9 = +[TransparencyAnalytics logger];
    [v9 logResultForEvent:v6 hardFailure:0 result:v10];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [a2 optInServer];
    v7 = *(a1 + 56);
    v8 = [*(a1 + 40) dataStore];
    [v6 changeOptInState:v7 dataStore:v8 completionBlock:*(a1 + 48)];
  }
}

void sub_10006F7B4(void *a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v9 = a1[8];
    v10 = *(a1[8] + 16);

    v10();
  }

  else
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v11 = 0;
    [a2 handleBatchQueryResponse:v4 queryRequest:v5 receiptDate:v6 fetchId:v7 error:&v11 transparentDataHandler:a1[9]];
    v8 = v11;
    (*(a1[8] + 16))();
  }
}

void sub_10006F994(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (qword_10038BDA0 != -1)
    {
      sub_10024AE0C();
    }

    v8 = qword_10038BDA8;
    if (os_log_type_enabled(qword_10038BDA8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Context for application %@ unavailable", buf, 0xCu);
    }

    v10 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-167 underlyingError:v7 description:@"Context for application %@ unavailable", *(a1 + 32)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [v5 queryForUris:*(a1 + 40) userInitiated:*(a1 + 64) cachedYoungerThan:*(a1 + 48) completionHandler:*(a1 + 56)];
  }
}

void sub_10006FAE4(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_10006FC98(void *a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    return (*(a1[9] + 16))();
  }

  else
  {
    return [a2 replaySelfValidate:a1[4] pcsAccountKey:a1[5] queryRequest:a1[6] queryResponse:a1[7] responseTime:a1[8] completionHandler:a1[9]];
  }
}

void sub_10006FDD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (!a2 || v5)
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) allKeys];
    v8 = [KTVerifierResult resultsForUris:v7 application:*(a1 + 40) failure:v9];
    (*(v6 + 16))(v6, v8);
  }

  else
  {
    [a2 validatePeers:*(a1 + 32) fetchNow:*(a1 + 56) completionBlock:*(a1 + 48)];
  }
}

id sub_10006FFE0(void *a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    return (*(a1[8] + 16))();
  }

  else
  {
    return [a2 validateIDSPeerWithUri:a1[4] application:a1[5] idsData:a1[6] ktData:a1[7] complete:a1[8]];
  }
}

void sub_1000701DC(id a1)
{
  qword_10038BDA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100070AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100070AD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100070AEC(uint64_t a1)
{
  v2 = [*(a1 + 32) dataStore];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 createSingleQuery:v3 backgroundOpId:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_100070B74(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100070BB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-329 underlyingError:v6 description:@"Failed to get a response for single query rpc with id: %@", *(*(*(a1 + 48) + 8) + 40)];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (qword_10038BDB0 != -1)
    {
      sub_10024AE5C();
    }

    v17 = qword_10038BDB8;
    if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get a response for single query rpc with id: %@", buf, 0xCu);
    }

    v19 = [*(a1 + 32) dataStore];
    v20 = *(*(*(a1 + 48) + 8) + 40);
    v21 = *(*(a1 + 40) + 8);
    v27 = *(v21 + 40);
    [v19 failRpcId:v20 failure:v7 error:&v27];
    objc_storeStrong((v21 + 40), v27);
  }

  else
  {
    v25 = [*(a1 + 32) dataStore];
    v23 = *(*(*(a1 + 48) + 8) + 40);
    v22 = [v5 data];
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 status]);
    v24 = [v5 metadata];
    v9 = [v24 objectForKeyedSubscript:@"APS"];
    v10 = [v5 metadata];
    v11 = [v10 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
    v12 = *(*(a1 + 40) + 8);
    obj = *(v12 + 40);
    v13 = [v25 setResponseForRpcId:v23 response:v22 responseStatus:v8 usedReversePush:v9 != 0 serverHint:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);

    v7 = 0;
    if (v13)
    {
      [*(a1 + 32) validatePendingPeersForRpcId:*(*(*(a1 + 48) + 8) + 40)];
      [*(a1 + 32) validatePendingSMTsForRpcId:*(*(*(a1 + 48) + 8) + 40)];
    }
  }
}

void sub_100070E98(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000712E0(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100071324(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100071368(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (qword_10038BDB0 != -1)
    {
      sub_10024AEC0();
    }

    v7 = qword_10038BDB8;
    if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 141558530;
      v12 = 1752392040;
      v13 = 2112;
      v14 = v8;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Created RPCSingleQuery for %{mask.hash}@ with rpcId %{public}@", &v11, 0x20u);
    }
  }

  else
  {
    if (qword_10038BDB0 != -1)
    {
      sub_10024AED4();
    }

    v9 = qword_10038BDB8;
    if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 141558530;
      v12 = 1752392040;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create RPCSingleQuery for %{mask.hash}@: %@", &v11, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void sub_100071504(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100071548(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100071888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000718B4(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000718F8(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007193C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v5 || v6)
  {
    if (qword_10038BDB0 != -1)
    {
      sub_10024AF60();
    }

    v17 = qword_10038BDB8;
    if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "optInStateForUri: failed to check opt-in, network failure: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [v5 metadata];
    v9 = [v8 objectForKeyedSubscript:@"ResponseTime"];
    v10 = [NSDate kt_dateFromString:v9];

    v11 = [WeakRetained verifier];
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v20 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100071C04;
    v18[3] = &unk_10031CF70;
    v19 = *(a1 + 48);
    v14 = [v11 handleQueryResponse:v5 queryRequest:v12 receiptDate:v10 fetchId:v13 error:&v20 transparentDataHandler:v18];
    v15 = v20;

    if (v14 != 1)
    {
      if (qword_10038BDB0 != -1)
      {
        sub_10024AF38();
      }

      v16 = qword_10038BDB8;
      if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "optInStateForUri: failed to check opt-in, KT server failure: %@", buf, 0xCu);
      }
    }
  }
}

void sub_100071BC0(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100071C04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (qword_10038BDB0 != -1)
    {
      sub_10024AF74();
    }

    v10 = qword_10038BDB8;
    if (os_log_type_enabled(qword_10038BDB8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "optInStateForUri: failed to verify opt-in, KT server failure: %@", &v13, 0xCu);
    }

    v11 = *(*(a1 + 32) + 16);
  }

  else
  {
    v12 = *(a1 + 32);
    [v8 currentAccountOptInState];
    v11 = *(v12 + 16);
  }

  v11();
}

void sub_100071D38(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100071D7C(id a1)
{
  qword_10038BDB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100073190(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000731D4(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1000733C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000733DC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_1000736DC(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007398C(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100073DD0(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_1000733C4;
  v16[4] = sub_1000733D4;
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v4 = [*(a1 + 32) xpcDataStore];
  v15 = 0;
  v5 = [v2 addValidateRequest:v3 dataStore:v4 error:&v15];
  v6 = v15;
  v17 = v5;

  v7 = [*(a1 + 32) deps];
  v8 = [v7 settings];
  v9 = [v8 getBool:kTransparencyFlagDisableAsyncValidation];

  if ((v9 & 1) == 0)
  {
    v10 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100073F98;
    v11[3] = &unk_10031D0C8;
    v11[4] = v10;
    v14 = v16;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v10 runAsynchronousTransactionName:"com.apple.transparencyd.validatePeer" block:v11];
  }

  _Block_object_dispose(v16, 8);
}

void sub_100073F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100073F98(uint64_t a1)
{
  [*(a1 + 32) logStartEvent:@"validatePeerUri-Async"];
  v2 = [*(a1 + 32) workloopContextStore];
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) ktLogClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007407C;
  v7[3] = &unk_10031D0A0;
  v7[4] = *(a1 + 32);
  [v2 validatePeerRequestId:v4 uri:v5 application:v3 logClient:v6 completionHandler:v7];
}

id sub_10007407C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 logFinishFailureEvent:@"validatePeerUri-Async" error:a3];
  }

  else
  {
    return [v3 logFinishSuccessEvent:@"validatePeerUri-Async"];
  }
}

void sub_100074498(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000744DC(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100074520(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100074564(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) logger];
  [v7 logResultForEvent:@"KTIDSValidatePeer" hardFailure:1 result:v6];

  if (v6)
  {
    if (qword_10038BDC0 != -1)
    {
      sub_10024B078();
    }

    v8 = qword_10038BDC8;
    if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "validatePeerRequestId: error %@", &v12, 0xCu);
    }

    v10 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (qword_10038BDC0 != -1)
    {
      sub_10024B08C();
    }

    v11 = qword_10038BDC8;
    if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "validatePeerRequestId: result: %@", &v12, 0xCu);
    }

    v10 = *(*(a1 + 48) + 16);
  }

  v10();
}

void sub_1000746F8(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007473C(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100074A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100074A44(uint64_t a1, void *a2)
{
  v3 = a2;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1000733C4;
  v45 = sub_1000733D4;
  v46 = 0;
  v4 = [v3 uri];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if ((v5 & 1) == 0)
  {
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = [v3 uri];
    v17 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-159 description:@"Request associated with UUID %@ does not have expected uri %@. Got %@", v14, v15, v16];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    [*(a1 + 48) logFinishFailureEvent:@"validatePeerResult" error:*(*(*(a1 + 64) + 8) + 40)];
    v20 = [[KTVerifierResult alloc] initWithUri:*(a1 + 32) application:0 ktResult:0];
    v21 = v42[5];
    v42[5] = v20;

    v22 = v42[5];
    v23 = *(a1 + 56);
    v24 = [*(a1 + 48) cleanseErrorForXPC:*(*(*(a1 + 64) + 8) + 40)];
    (*(v23 + 16))(v23, v22, v24);
LABEL_7:

    goto LABEL_8;
  }

  if ([v3 type] && objc_msgSend(v3, "type") != 1)
  {
    v25 = *(a1 + 40);
    v26 = [v3 type];
    v27 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-124 description:@"Request associated with UUID %@ is not of expected type %llu. Got %lld.", v25, 0, v26];
    v28 = *(*(a1 + 64) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    [*(a1 + 48) logFinishFailureEvent:@"validatePeerResult" error:*(*(*(a1 + 64) + 8) + 40)];
    v30 = [KTVerifierResult alloc];
    v31 = *(a1 + 32);
    v32 = [v3 application];
    v33 = [v30 initWithUri:v31 application:v32 ktResult:0];
    v34 = v42[5];
    v42[5] = v33;

    v35 = v42[5];
    v36 = *(a1 + 56);
    v24 = [*(a1 + 48) cleanseErrorForXPC:*(*(*(a1 + 64) + 8) + 40)];
    (*(v36 + 16))(v36, v35, v24);
    goto LABEL_7;
  }

  v6 = [*(a1 + 48) xpcContextStore];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [v3 application];
  v10 = [*(a1 + 48) ktLogClient];
  v11 = *(a1 + 72);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100074DF4;
  v37[3] = &unk_10031D1E0;
  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  v39 = &v41;
  v40 = v12;
  v37[4] = *(a1 + 48);
  v38 = v13;
  [v6 validatePeerRequestId:v7 uri:v8 application:v9 logClient:v10 revalidate:1 fetchNow:v11 completionHandler:v37];

LABEL_8:
  _Block_object_dispose(&v41, 8);
}

void sub_100074DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100074DF4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v7 = *(a1 + 32);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [v7 logFinishFailureEvent:@"validatePeerResult" error:?];
  }

  else
  {
    [v7 logFinishSuccessEvent:@"validatePeerResult"];
  }

  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) cleanseErrorForXPC:*(*(*(a1 + 56) + 8) + 40)];
  (*(v9 + 16))(v9, v8, v10);
}

void sub_100075294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000752CC(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_1000733C4;
  v12[4] = sub_1000733D4;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = [*(a1 + 32) xpcDataStore];
  v11 = 0;
  v5 = [v2 addValidateRequest:v3 dataStore:v4 error:&v11];
  v6 = v11;
  v13 = v5;

  if (([TransparencySettings getBool:kTransparencyFlagDisableAsyncValidation]& 1) == 0)
  {
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100075458;
    v8[3] = &unk_100317DE0;
    v8[4] = v7;
    v10 = v12;
    v9 = *(a1 + 40);
    [v7 runAsynchronousTransactionName:"com.apple.transparencyd.validateEnrollment" block:v8];
  }

  _Block_object_dispose(v12, 8);
}

void sub_100075440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100075458(uint64_t a1)
{
  [*(a1 + 32) logStartEvent:@"validateEnrollmentUri-Async"];
  v2 = [*(a1 + 32) workloopContextStore];
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = [*(a1 + 32) ktLogClient];
  v6 = [*(a1 + 32) deps];
  v7 = [v6 cloudRecords];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100075568;
  v8[3] = &unk_10031D230;
  v8[4] = *(a1 + 32);
  [v2 validateEnrollmentRequestId:v4 application:v3 logClient:v5 cloudOptIn:v7 completionHandler:v8];
}

id sub_100075568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (a5)
  {
    return [v5 logFinishFailureEvent:@"validateEnrollmentUri-Async" error:a5];
  }

  else
  {
    return [v5 logFinishSuccessEvent:@"validateEnrollmentUri-Async"];
  }
}

void sub_1000757A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uri];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if ((v5 & 1) == 0)
  {
    v13 = kTransparencyErrorInterface;
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = [v3 uri];
    v17 = [TransparencyError errorWithDomain:v13 code:-159 description:@"Request associated with UUID %@ does not have expected uri %@. Got %@", v14, v15, v16];

LABEL_6:
    [*(a1 + 48) logFinishFailureEvent:@"validateEnrollmentUriResult" error:v17];
    v18 = *(a1 + 56);
    v19 = *(a1 + 32);
    v20 = [v3 verificationResult];
    v21 = [*(a1 + 48) cleanseErrorForXPC:v17];
    (*(v18 + 16))(v18, v19, v20, 0, 0, v21);

    goto LABEL_7;
  }

  if ([v3 type] != 2)
  {
    v17 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorInterface, -124, @"Request associated with UUID %@ is not of expected type %llu. Got %lld.", *(a1 + 40), 2, [v3 type]);
    goto LABEL_6;
  }

  v6 = [*(a1 + 48) xpcContextStore];
  v7 = *(a1 + 40);
  v8 = [v3 application];
  v9 = [*(a1 + 48) ktLogClient];
  v10 = [*(a1 + 48) deps];
  v11 = [v10 cloudRecords];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100075A20;
  v22[3] = &unk_10031D280;
  v12 = *(a1 + 56);
  v22[4] = *(a1 + 48);
  v24 = v12;
  v23 = *(a1 + 32);
  [v6 validateEnrollmentRequestId:v7 application:v8 logClient:v9 cloudOptIn:v11 completionHandler:v22];

LABEL_7:
}

void sub_100075A20(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [v9 logFinishSuccessEvent:@"validateEnrollmentUriResult"];
  v13 = [v12 verifiedAccountOptInState];

  v14 = v13 == 1;
  v15 = [*(a1 + 32) deps];
  v16 = [v15 logger];
  v17 = +[NSDate date];
  [v16 setDateProperty:v17 forKey:off_100381D08];

  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  v20 = [*(a1 + 32) cleanseErrorForXPC:v10];

  (*(v18 + 16))(v18, v19, a2, v14, v11, v20);
}

id sub_100075CBC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 logFinishSuccessEvent:@"GetLoggableDataForDeviceID"];
}

void sub_100075F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100075F24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 xpcContextStore];
  v8 = 0;
  [v5 ignoreFailure:v4 error:&v8];

  v6 = v8;
  v7 = v8;

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
  }
}

void sub_10007638C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  if (v11)
  {
    [v5 logFinishSuccessEvent:@"copyApplicationState"];
    v7 = *(a1 + 40);
    v8 = [v11 copyState];
    v9 = [*(a1 + 32) cleanseErrorForXPC:v6];

    (*(v7 + 16))(v7, v8, v9);
  }

  else
  {
    [v5 logFinishFailureEvent:@"copyApplicationState" error:v6];
    v10 = *(a1 + 40);
    v8 = [*(a1 + 32) cleanseErrorForXPC:v6];

    (*(v10 + 16))(v10, 0, v8);
  }
}

void sub_1000765B4(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100076740(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000768C8(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100076D2C(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (v8)
  {
    [*(a1 + 32) logFinishSuccessEvent:@"copyApplicationTranscript"];
    v5 = *(a1 + 48);
    v6 = [v8 transcript];
    v7 = [v6 serialize];
    (*(v5 + 16))(v5, v7, 0);
  }

  else
  {
    v6 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-167 underlyingError:a3 description:@"Context for application %@ unavailable", *(a1 + 40)];
    [*(a1 + 32) logFinishFailureEvent:@"copyApplicationTranscript" error:v6];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100076F1C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  if (a2)
  {
    [v4 logFinishFailureEvent:@"forceConfigUpdate" error:v5];
  }

  else
  {
    [v4 logFinishSuccessEvent:@"forceConfigUpdate"];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) cleanseErrorForXPC:v5];

  (*(v6 + 16))(v6, v7);
}

void sub_10007713C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = v6;
  if (a3)
  {
    [v5 logFinishFailureEvent:@"forceApplicationConfig" error:v6];
  }

  else
  {
    [v5 logFinishSuccessEvent:@"forceApplicationConfig"];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10007750C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) && ([v3 uri], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *(a1 + 32)), v5, (v6 & 1) == 0))
  {
    v15 = kTransparencyErrorInterface;
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = [v4 uri];
    v19 = [TransparencyError errorWithDomain:v15 code:-159 description:@"Request associated with UUID %@ does not have expected uri %@. Got %@", v16, v17, v18];

    [*(a1 + 48) logFinishFailureEvent:@"forceValidateUUID" error:v19];
    v20 = *(a1 + 32);
    v21 = *(a1 + 56);
    v22 = [*(a1 + 48) cleanseErrorForXPC:v19];
    (*(v21 + 16))(v21, v20, 0, 0, 0, v22);
  }

  else
  {
    v7 = [v4 type];
    if (v7 == 2)
    {
      v29 = [*(a1 + 48) xpcContextStore];
      v30 = *(a1 + 40);
      v31 = [v4 application];
      v32 = [*(a1 + 48) ktLogClient];
      v33 = [*(a1 + 48) deps];
      v34 = [v33 cloudRecords];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000779B4;
      v36[3] = &unk_10031D280;
      v35 = *(a1 + 56);
      v36[4] = *(a1 + 48);
      v38 = v35;
      v37 = v4;
      [v29 validateEnrollmentRequestId:v30 application:v31 logClient:v32 cloudOptIn:v34 completionHandler:v36];

      v14 = v38;
      goto LABEL_10;
    }

    if (v7 == 1)
    {
      v23 = *(a1 + 56);
      v24 = [v4 uri];
      v25 = *(a1 + 48);
      v26 = NSStringFromSelector(*(a1 + 64));
      v27 = [NSString stringWithFormat:@"KTValidateTypeSelf in %@", v26];
      v28 = [v25 unimplementedError:v27];
      (*(v23 + 16))(v23, v24, 0, 0, 0, v28);
    }

    else if (!v7)
    {
      v8 = [*(a1 + 48) xpcContextStore];
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = [v4 application];
      v12 = [*(a1 + 48) ktLogClient];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1000778A4;
      v39[3] = &unk_10031D3D0;
      v13 = *(a1 + 56);
      v39[4] = *(a1 + 48);
      v41 = v13;
      v40 = v4;
      [v8 validatePeerRequestId:v9 uri:v10 application:v11 logClient:v12 revalidate:1 fetchNow:0 completionHandler:v39];

      v14 = v41;
LABEL_10:
    }
  }
}

void sub_1000778A4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  if (a3)
  {
    [v6 logFinishFailureEvent:@"forceValidateUUID" error:v7];
  }

  else
  {
    [v6 logFinishSuccessEvent:@"forceValidateUUID"];
  }

  v9 = *(a1 + 48);
  v14 = [*(a1 + 40) uri];
  v10 = [v8 succeed];
  v11 = [v8 optedIn];
  v12 = [v8 loggableDatas];

  v13 = [*(a1 + 32) cleanseErrorForXPC:v7];

  (*(v9 + 16))(v9, v14, v10, v11, v12, v13);
}

void sub_1000779B4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = *(a1 + 32);
  v11 = a5;
  v12 = a4;
  v13 = a3;
  if (a5)
  {
    [v10 logFinishFailureEvent:@"forceValidateUUID" error:v11];
  }

  else
  {
    [v10 logFinishSuccessEvent:@"forceValidateUUID"];
  }

  v14 = [v13 verifiedAccountOptInState];

  v15 = *(a1 + 48);
  v17 = [*(a1 + 40) uri];
  v16 = [*(a1 + 32) cleanseErrorForXPC:v11];

  (*(v15 + 16))(v15, v17, a2, v14 == 1, v12, v16);
}

void sub_100077B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) cleanseErrorForXPC:a6];
  (*(v7 + 16))(v7, a3, v8);
}

void sub_100077D98(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setVerificationResult:2];
  [v3 setResponseTime:0];
  [v3 setQueryResponse:0];

  v4 = [*(a1 + 32) xpcDataStore];
  v9 = 0;
  v5 = [v4 persistWithError:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    if (qword_10038BDC0 != -1)
    {
      sub_10024B104();
    }

    v7 = qword_10038BDC8;
    if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to save request reset to pending: %@", buf, 0xCu);
    }

    v8 = [*(a1 + 32) xpcDataStore];
    [v8 reportCoreDataPersistEventForLocation:@"resetToPending" underlyingError:v6];
  }
}

void sub_100077EE0(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000780DC(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100078120(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10038BDC0 != -1)
  {
    sub_10024B154();
  }

  v4 = qword_10038BDC8;
  if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "runDutyCycle done: %@", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_100078208(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100078ACC(void *a1)
{
  if (qword_10038BDC0 != -1)
  {
    sub_10024B168();
  }

  v2 = qword_10038BDC8;
  if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_ERROR))
  {
    v3 = a1[7];
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to get gossip message within %fs", buf, 0xCu);
  }

  v4 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-151 description:@"failed to get gossip message within %fs", a1[7]];
  os_unfair_lock_lock((*(a1[5] + 8) + 32));
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  if (v6)
  {
    *(v5 + 40) = 0;

    os_unfair_lock_unlock((*(a1[5] + 8) + 32));
    (*(a1[4] + 16))();
  }

  else
  {
    os_unfair_lock_unlock((*(a1[5] + 8) + 32));
  }
}

void sub_100078C24(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100078C68(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = a1[4];
  if (!v10 || v5)
  {
    [v6 logFinishFailureEvent:@"retrieveCurrentVerifiedTLTSTH" error:v5];
  }

  else
  {
    [v6 logFinishSuccessEvent:@"retrieveCurrentVerifiedTLTSTH"];
  }

  os_unfair_lock_lock((*(a1[6] + 8) + 32));
  v7 = *(*(a1[7] + 8) + 40);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    os_unfair_lock_unlock((*(a1[6] + 8) + 32));
    (*(a1[5] + 16))();
  }

  else
  {
    os_unfair_lock_unlock((*(a1[6] + 8) + 32));
  }
}

void sub_100079090(void *a1)
{
  if (qword_10038BDC0 != -1)
  {
    sub_10024B17C();
  }

  v2 = qword_10038BDC8;
  if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_ERROR))
  {
    v3 = a1[7];
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to get gossip message within %fs", buf, 0xCu);
  }

  v4 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-151 description:@"failed to get gossip message within %fs", a1[7]];
  os_unfair_lock_lock((*(a1[5] + 8) + 32));
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  if (v6)
  {
    *(v5 + 40) = 0;

    os_unfair_lock_unlock((*(a1[5] + 8) + 32));
    (*(a1[4] + 16))();
  }

  else
  {
    os_unfair_lock_unlock((*(a1[5] + 8) + 32));
  }
}

void sub_1000791E4(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100079228(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v8 = v3;
  if (v3)
  {
    [v4 logFinishFailureEvent:@"receivedSTHsFromPeers" error:?];
  }

  else
  {
    [v4 logFinishSuccessEvent:@"receivedSTHsFromPeers"];
  }

  os_unfair_lock_lock((*(a1[6] + 8) + 32));
  v5 = *(*(a1[7] + 8) + 40);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    os_unfair_lock_unlock((*(a1[6] + 8) + 32));
    (*(a1[5] + 16))();
  }

  else
  {
    os_unfair_lock_unlock((*(a1[6] + 8) + 32));
  }
}

void sub_100079428(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = *(a1 + 32);
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  if (a5)
  {
    [v10 logFinishFailureEvent:@"accountKeySignData" error:v11];
  }

  else
  {
    [v10 logFinishSuccessEvent:@"accountKeySignData"];
  }

  v15 = *(a1 + 40);
  v16 = [SecXPCHelper cleanseErrorForXPC:v11];

  (*(v15 + 16))(v15, v14, v13, v12, v16);
}

void sub_100079634(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  if (a3)
  {
    [v6 logFinishFailureEvent:@"accountKeyRoll" error:v7];
  }

  else
  {
    [v6 logFinishSuccessEvent:@"accountKeyRoll"];
  }

  v9 = *(a1 + 40);
  v10 = [SecXPCHelper cleanseErrorForXPC:v7];

  (*(v9 + 16))(v9, v8, v10);
}

void sub_100079ABC(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100079B00(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100079B44(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100079B88(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100079D28(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100079E34(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SecXPCHelper cleanseErrorForXPC:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_100079F68(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SecXPCHelper cleanseErrorForXPC:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10007A09C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SecXPCHelper cleanseErrorForXPC:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10007A1D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [SecXPCHelper cleanseErrorForXPC:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_10007A2E4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SecXPCHelper cleanseErrorForXPC:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10007A448(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [SecXPCHelper cleanseErrorForXPC:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_10007A58C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [SecXPCHelper cleanseErrorForXPC:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_10007A6BC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SecXPCHelper cleanseErrorForXPC:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10007A820(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SecXPCHelper cleanseErrorForXPC:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10007A9A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [SecXPCHelper cleanseErrorForXPC:?];
  (*(v3 + 16))(v3, a2, v4);
}

void sub_10007AAC0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SecXPCHelper cleanseErrorForXPC:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10007AC10(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SecXPCHelper cleanseErrorForXPC:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10007AD74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [SecXPCHelper cleanseErrorForXPC:?];
  (*(v3 + 16))(v3, a2, v4);
}

void sub_10007AFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007B020(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v14 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [KTOptInState alloc];
  v10 = [*(a1 + 32) application];
  v11 = [v9 initWithApplication:v10];

  if (v7)
  {
    [v11 setState:2];
    [WeakRetained logFinishFailureEvent:@"GetOptIn" error:v7];
  }

  else
  {
    [WeakRetained logFinishSuccessEvent:@"GetOptIn"];
    [v11 setState:a2];
    [v11 setSmtTimestamp:v14];
  }

  v12 = *(a1 + 40);
  v13 = [SecXPCHelper cleanseErrorForXPC:v7];

  (*(v12 + 16))(v12, v11, v13);
}

void sub_10007B2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007B2C4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (v7)
  {
    [WeakRetained logFinishFailureEvent:@"SetOptIn" error:v7];
  }

  else
  {
    [WeakRetained logFinishSuccessEvent:@"SetOptIn"];
  }

  v10 = *(a1 + 32);
  v11 = [SecXPCHelper cleanseErrorForXPC:v7];

  (*(v10 + 16))(v10, a2, v8, v11);
}

void sub_10007B5B4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  if (a3)
  {
    [v6 logFinishFailureEvent:@"GetStatus" error:v7];
  }

  else
  {
    [v6 logFinishSuccessEvent:@"GetStatus"];
  }

  v9 = *(a1 + 40);
  v11 = [v8 simpleStatus];

  v10 = [SecXPCHelper cleanseErrorForXPC:v7];

  (*(v9 + 16))(v9, v11, v10);
}

void sub_10007B770(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  if (a3)
  {
    [v6 logFinishFailureEvent:@"GetSelfStatus" error:v7];
  }

  else
  {
    [v6 logFinishSuccessEvent:@"GetSelfStatus"];
  }

  v9 = *(a1 + 40);
  v10 = [SecXPCHelper cleanseErrorForXPC:v7];

  (*(v9 + 16))(v9, v8, v10);
}

void sub_10007B940(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  if (a2 == 1)
  {
    [v7 logFinishSuccessEvent:@"GetKTErrorForEventId"];
  }

  else
  {
    [v7 logFinishFailureEvent:@"GetKTErrorForEventId" error:v8];
  }

  v10 = *(a1 + 40);
  v11 = [SecXPCHelper cleanseErrorForXPC:v8];

  (*(v10 + 16))(v10, a2, v9, v11);
}

void sub_10007BB18(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  if (a2)
  {
    [v4 logFinishFailureEvent:@"IgnoreKTErrorEvent" error:v5];
  }

  else
  {
    [v4 logFinishSuccessEvent:@"IgnoreKTErrorEvent"];
  }

  v6 = *(a1 + 40);
  v7 = [SecXPCHelper cleanseErrorForXPC:v5];

  (*(v6 + 16))(v6, v7);
}

void sub_10007BD3C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  if (a3)
  {
    [v6 logFinishFailureEvent:@"getAuditorReport" error:v7];
  }

  else
  {
    [v6 logFinishSuccessEvent:@"getAuditorReport"];
  }

  v9 = *(a1 + 40);
  v10 = [SecXPCHelper cleanseErrorForXPC:v7];

  (*(v9 + 16))(v9, v8, v10);
}

void sub_10007BF3C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  if (a2)
  {
    [v4 logFinishFailureEvent:@"makeAuditorReport" error:v5];
  }

  else
  {
    [v4 logFinishSuccessEvent:@"makeAuditorReport"];
  }

  v6 = *(a1 + 40);
  v7 = [SecXPCHelper cleanseErrorForXPC:v5];

  (*(v6 + 16))(v6, v7);
}

void sub_10007C310(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007C354(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007C914(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007C958(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007C99C(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007CC80(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007CCC4(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007CF68(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007CFAC(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007D250(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007D294(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007D484(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007D4C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (qword_10038BDC0 != -1)
    {
      sub_10024B384();
    }

    v7 = qword_10038BDC8;
    if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v35 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error fetching opt in state to check static key store mapping %{public}@", buf, 0xCu);
    }
  }

  if ([v5 state])
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v33 = 0;
    v10 = [v8 ensureContactFieldsPresent:v9 error:&v33];
    v11 = v33;
    if (!v10)
    {
      v26 = *(a1 + 48);
      v22 = [*(a1 + 32) cleanseErrorForXPC:v11];
      (*(v26 + 16))(v26, 0, v22);
      goto LABEL_23;
    }

    v12 = [*(a1 + 32) staticKeyController];
    v13 = [v10 externalURI];
    v32 = v11;
    v14 = [v12 findStaticKeyByContactExternalURI:v13 error:&v32];
    v15 = v32;

    if (!v14)
    {
      if (qword_10038BDC0 != -1)
      {
        sub_10024B398();
      }

      v16 = qword_10038BDC8;
      if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = [v10 externalURI];
        *buf = 138412546;
        v35 = v18;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "findStaticKeyStoreMappingByContactExternalURI: %@ error: %@", buf, 0x16u);
      }

      v19 = [*(a1 + 32) staticKeyController];
      v20 = [v10 identifier];
      v31 = v15;
      v14 = [v19 findStaticKeyByContactIdentifier:v20 error:&v31];
      v11 = v31;

      if (!v14)
      {
        if (qword_10038BDC0 != -1)
        {
          sub_10024B3C0();
        }

        v27 = qword_10038BDC8;
        if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_ERROR))
        {
          v28 = v27;
          v29 = [v10 identifier];
          *buf = 138412546;
          v35 = v29;
          v36 = 2112;
          v37 = v11;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "findStaticKeyByContactIdentifier: %@ error: %@", buf, 0x16u);
        }

        v22 = 0;
        goto LABEL_16;
      }

      v15 = v11;
    }

    v21 = [*(a1 + 32) staticKeyController];
    v30 = v15;
    v22 = [v21 validateStoreEntry:v14 error:&v30];
    v11 = v30;

LABEL_16:
    v23 = *(a1 + 48);
    v24 = [*(a1 + 32) cleanseErrorForXPC:v11];
    (*(v23 + 16))(v23, v22, v24);

LABEL_23:
    goto LABEL_24;
  }

  if (qword_10038BDC0 != -1)
  {
    sub_10024B3E8();
  }

  v25 = qword_10038BDC8;
  if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Ignoring static key store entry request because user is not opted into KT", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_24:
}

void sub_10007D8E8(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007D92C(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007D970(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007D9B4(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007DBB8(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007DD9C(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007DF80(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007E21C(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007E260(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007E4BC(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007E500(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007EC40(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007EE14(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10007F118(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10007F244(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  if (a3)
  {
    [v6 logFinishFailureEvent:@"fetchBatchQuery" error:v7];
  }

  else
  {
    [v6 logFinishSuccessEvent:@"fetchBatchQuery"];
  }

  v9 = *(a1 + 40);
  v10 = [SecXPCHelper cleanseErrorForXPC:v7];

  (*(v9 + 16))(v9, v8, v10);
}

void sub_10007FCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007FCDC(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 32) + 8) + 40) addEntriesFromDictionary:a2];
  v3 = +[NSDate date];
  v4 = [v3 kt_toISO_8601_UTCString];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v4 forKeyedSubscript:@"isFallback"];

  v5 = *(*(*(a1 + 32) + 8) + 40);
  v18 = 0;
  v6 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:&v18];
  v7 = v18;
  v17 = 0;
  v8 = [TransparencyFileSupport transparencyFilesPath:&v17];
  v9 = v17;
  v10 = [v8 URLByAppendingPathComponent:@"transparency_start.log" isDirectory:0];

  v11 = +[NSFileManager defaultManager];
  v12 = [v10 relativePath];
  v21 = NSFileProtectionKey;
  v22 = NSFileProtectionNone;
  v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v14 = [v11 createFileAtPath:v12 contents:v6 attributes:v13];

  if ((v14 & 1) == 0)
  {
    if (qword_10038BDC0 != -1)
    {
      sub_10024B4EC();
    }

    v15 = qword_10038BDC8;
    if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "transparencyd: create fallback sysdiagnose error %@", buf, 0xCu);
    }
  }

  v16 = [v10 absoluteString];
  [v6 writeToFile:v16 atomically:1];
}

void sub_10007FF44(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000804C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080614;
  block[3] = &unk_10031DC58;
  v8 = *(a1 + 56);
  v16 = v5;
  v17 = v8;
  v9 = v5;
  dispatch_sync(v7, block);
  if (v6)
  {
    v10 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100080674;
    v11[3] = &unk_10031A198;
    v14 = *(a1 + 56);
    v12 = v6;
    v13 = *(a1 + 40);
    dispatch_sync(v10, v11);
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

id sub_100080614(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if ([*(a1 + 32) state] == 1)
  {
    v2 = @"true";
  }

  else
  {
    v2 = @"false";
  }

  return [v1 setValue:v2 forKey:@"optedIn"];
}

id sub_100080674(uint64_t a1)
{
  v2 = [*(a1 + 32) description];
  [*(*(*(a1 + 48) + 8) + 40) setObject:v2 forKeyedSubscript:@"error"];

  v3 = *(a1 + 40);

  return [v3 addObject:@"optIn"];
}

void sub_1000806E0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000807A4;
  block[3] = &unk_10031A198;
  v9 = *(a1 + 56);
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_sync(v4, block);
  dispatch_group_leave(*(a1 + 48));
}

id sub_1000807A4(void *a1)
{
  [*(*(a1[6] + 8) + 40) setObject:a1[4] forKeyedSubscript:@"stateMachine"];
  v2 = a1[5];

  return [v2 addObject:@"sm"];
}

void sub_1000807FC(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) globalSettings];
  v4 = [v3 fuzzyTimeSinceLastUpdate];
  [v2 setObject:v4 forKeyedSubscript:@"lastUpdate"];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080904;
  block[3] = &unk_10031A198;
  v10 = *(a1 + 64);
  v8 = v2;
  v5 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6 = v2;
  dispatch_sync(v5, block);
  dispatch_group_leave(*(a1 + 56));
}

id sub_100080904(void *a1)
{
  [*(*(a1[6] + 8) + 40) setObject:a1[4] forKeyedSubscript:@"globalSetting"];
  v2 = a1[5];

  return [v2 addObject:@"settings"];
}

void sub_10008095C(uint64_t a1, void *a2)
{
  v3 = a2;
  v53 = +[NSMutableArray array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v50 = v3;
  v4 = [v3 registrationData];
  v5 = [v4 allValues];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v6)
  {
    v7 = v6;
    v52 = *v59;
    do
    {
      v8 = 0;
      do
      {
        if (*v59 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v58 + 1) + 8 * v8);
        v10 = +[NSMutableDictionary dictionary];
        v11 = [v9 application];
        [v10 setObject:v11 forKeyedSubscript:@"app"];

        v12 = [v9 signature];
        v13 = [v12 kt_hexString];
        [v10 setObject:v13 forKeyedSubscript:@"signature"];

        v14 = [v9 publicKey];
        v15 = [v14 kt_hexString];
        [v10 setObject:v15 forKeyedSubscript:@"publicKey"];

        v16 = [v9 orderedTimestamp];
        v17 = [v16 kt_toISO_8601_UTCString];
        [v10 setObject:v17 forKeyedSubscript:@"orderedTimestamp"];

        v18 = [v9 tbsKTIDSRegistrationData];
        v19 = [v18 kt_hexString];
        [v10 setObject:v19 forKeyedSubscript:@"tbs"];

        v20 = [v9 createdAt];
        v21 = [v20 description];
        [v10 setObject:v21 forKeyedSubscript:@"createdAt"];

        v22 = [v9 signedAt];
        v23 = [v22 description];
        [v10 setObject:v23 forKeyedSubscript:@"signedAt"];

        v24 = [*(a1 + 32) deps];
        v25 = [v24 cloudRecords];
        v26 = [v9 pushToken];
        v27 = [v9 tbsKTIDSRegistrationData];
        v28 = [v25 fetchCloudDeviceWithPushToken:v26 tbsRegistrationData:v27];

        v29 = [v28 uploadedToCKAt];
        v30 = [v29 description];
        [v10 setObject:v30 forKeyedSubscript:@"uploadedToCKAt"];

        v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v28 stateReady]);
        [v10 setObject:v31 forKeyedSubscript:@"stateReady"];

        v32 = [v28 state];
        [v10 setObject:v32 forKeyedSubscript:@"state"];

        v33 = [v9 pushToken];
        v34 = [v33 kt_hexString];
        [v10 setObject:v34 forKeyedSubscript:@"pushToken"];

        v35 = [v9 createdAt];
        if (v35)
        {
          v36 = v35;
          v37 = [v9 signedAt];

          if (v37)
          {
            v38 = [v9 signedAt];
            v39 = [v9 createdAt];
            [v38 timeIntervalSinceDate:v39];
            v41 = v40;

            v42 = [NSNumber numberWithInteger:[SFAnalytics fuzzyInteger:v41]];
            [v10 setObject:v42 forKeyedSubscript:@"delay"];
          }
        }

        v43 = [*(a1 + 32) deps];
        v44 = [v43 settings];
        v45 = [v44 allowsInternalSecurityPolicies];

        if (v45)
        {
          v46 = [v9 altDSID];
          [v10 setObject:v46 forKeyedSubscript:@"altDSID"];

          v47 = [v9 dsid];
          [v10 setObject:v47 forKeyedSubscript:@"dsid"];
        }

        [v53 addObject:v10];

        v8 = v8 + 1;
      }

      while (v7 != v8);
      v7 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v7);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080F44;
  block[3] = &unk_10031A198;
  v57 = *(a1 + 64);
  v55 = v53;
  v48 = *(a1 + 40);
  v56 = *(a1 + 48);
  v49 = v53;
  dispatch_sync(v48, block);
  dispatch_group_leave(*(a1 + 56));
}

id sub_100080F44(void *a1)
{
  [*(*(a1[6] + 8) + 40) setObject:a1[4] forKeyedSubscript:@"registration"];
  v2 = a1[5];

  return [v2 addObject:@"registration"];
}

void sub_100080F9C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  if (!v4)
  {
    if (qword_10038BDC0 != -1)
    {
      sub_10024B53C();
    }

    v7 = qword_10038BDC8;
    if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "KTIDStaticKeyStore listStaticKey: %@", buf, 0xCu);
    }

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"failed"];
    v8 = [v5 description];
    [v6 setObject:v8 forKeyedSubscript:@"error"];
  }

  v9 = +[NSMutableDictionary dictionary];
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v31 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v19 = v5;
      v20 = v4;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [v15 publicAccountIdentity];
          if (v16)
          {
            v17 = *(a1 + 32);
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_100081364;
            v26[3] = &unk_10031DD60;
            v27 = v9;
            v28 = v15;
            v29 = v6;
            v30 = v16;
            [v17 findStaticKeyStoreMappingByKey:v15 complete:v26];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
      v5 = v19;
      v4 = v20;
    }
  }

  else
  {
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
    [v9 setObject:v10 forKeyedSubscript:@"peers"];
  }

  if ([v6 count])
  {
    v18 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100081590;
    block[3] = &unk_10031A198;
    v25 = *(a1 + 56);
    v23 = v6;
    v24 = *(a1 + 48);
    dispatch_sync(v18, block);
  }
}

void sub_100081320(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100081364(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 mappings];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:@"mappings"];

    v8 = [v5 contactIdentifier];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:@"contactIdentifier"];

    v9 = [v5 contactExternalURI];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:@"contactExternalURI"];

    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 valid]);
    v11 = *(a1 + 32);
    v12 = @"valid";
  }

  else
  {
    if (qword_10038BDC0 != -1)
    {
      sub_10024B550();
    }

    v13 = qword_10038BDC8;
    if (os_log_type_enabled(qword_10038BDC8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v15 = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "KTIDStaticKeyStore findByIdentifier: %@: %@", &v15, 0x16u);
    }

    [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:@"failed"];
    v10 = [v6 description];
    v11 = *(a1 + 32);
    v12 = @"error";
  }

  [v11 setObject:v10 forKeyedSubscript:v12];

  [*(a1 + 48) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 56)];
}

void sub_10008154C(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_100081590(void *a1)
{
  [*(*(a1[6] + 8) + 40) setObject:a1[4] forKeyedSubscript:@"static_key_peers"];
  v2 = a1[5];

  return [v2 addObject:@"peers"];
}

void sub_1000815E8(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008162C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(*(*(a1 + 48) + 8) + 40) setObject:*(a1 + 32) forKeyedSubscript:@"completed"];
  }

  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  v4 = v3;

  (*(*(a1 + 40) + 16))();
}

void sub_1000817F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  if (!v5 || v6)
  {
    v21 = *(a1 + 48);
    v22 = [SecXPCHelper cleanseErrorForXPC:v6];
    (*(v21 + 16))(v21, 0, v22);
  }

  else
  {
    v23 = 0;
    v24 = v5;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v26 = *v31;
      do
      {
        v10 = 0;
        do
        {
          v11 = v7;
          if (*v31 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v30 + 1) + 8 * v10);
          v13 = objc_alloc_init(KTDeviceStatus);
          [v13 setIdms:v12];
          v14 = [v12 pushToken];
          v15 = +[NSData kt_dataWithHexString:](NSData, "kt_dataWithHexString:", [v14 UTF8String]);

          v16 = [*(a1 + 32) xpcDataStore];
          v17 = *(a1 + 40);
          v29 = 0;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100081ABC;
          v27[3] = &unk_10031DDF8;
          v18 = v13;
          v28 = v18;
          v19 = [v16 performAndWaitForDeviceId:v15 application:v17 error:&v29 block:v27];
          v20 = v29;

          if ((v19 & 1) == 0)
          {
            [v18 setLoggableDataError:v20];
          }

          v7 = v11;
          [v11 addObject:{v18, v23, v24}];

          v10 = v10 + 1;
        }

        while (v9 != v10);
        v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 48) + 16))();
    v6 = v23;
    v5 = v24;
  }
}

void sub_100081DD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [v3 allKeys];
  v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [*(a1 + 32) smManager];
        v11 = [v3 objectForKeyedSubscript:v9];
        v12 = [v10 prettyFormatIDSKTStateArray:v11];
        [v4 setObject:v12 forKeyedSubscript:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100082078(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  if (a2)
  {
    [v4 logFinishFailureEvent:@"initiateQueryForUris" error:v5];
  }

  else
  {
    [v4 logFinishSuccessEvent:@"initiateQueryForUris"];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) cleanseErrorForXPC:v5];

  (*(v6 + 16))(v6, v7);
}

void sub_100082254(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) cleanseErrorForXPC:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_100082738(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSMutableDictionary dictionary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100082864;
  v10 = v9[3] = &unk_10031DE70;
  v4 = v10;
  [v3 enumerateObjectsUsingBlock:v9];

  v5 = [KTValidatePeersResponse alloc];
  v6 = [*(a1 + 32) application];
  v7 = [v5 initWithApplication:v6 results:v4];

  v8 = [*(a1 + 32) traceUUID];
  [v7 setTraceUUID:v8];

  (*(*(a1 + 40) + 16))();
}

void sub_100082864(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uri];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void sub_100083340(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000836B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100083AC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v12 = objc_alloc_init(KTNetworkResponse);
  [v12 setRequest:v9];

  [v12 setResponse:v8];
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) cleanseErrorForXPC:v7];

  (*(v10 + 16))(v10, v12, v11);
}

void sub_100083DB0(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100083DF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 cleanseErrorForXPC:a3];
  (*(v4 + 16))(v4, v6, v7);
}

void sub_100084044(id a1)
{
  qword_10038BDC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000848C8(id a1)
{
  qword_10038BDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008490C(id a1)
{
  qword_10038BDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100084D68(id a1)
{
  qword_10038BDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100084DAC(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084E64;
  block[3] = &unk_10031E018;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, block);
}

void sub_100084E64(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    if (([*(a1 + 32) shouldRetry] & 1) == 0)
    {
      if (qword_10038BDD0 != -1)
      {
        sub_10024B5F0();
      }

      v21 = qword_10038BDD8;
      if (os_log_type_enabled(qword_10038BDD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = v2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Fetcher don't advice retry on error: %{public}@", buf, 0xCu);
      }

      v22 = *(a1 + 40);
      goto LABEL_21;
    }

    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) error];
    v5 = [*(a1 + 40) ckFetchScheduler];
    [v3 inspectErrorForRetryAfter:v4 trigger:v5];

    v6 = [*(a1 + 40) deps];
    v7 = [v6 reachabilityTracker];
    LODWORD(v5) = [v7 isNetworkError:v2];

    v8 = [*(a1 + 40) ckFetchReasons];
    v9 = v8;
    if (v5)
    {
      [v8 addObject:off_100381D88];

      v9 = [*(a1 + 40) deps];
      v10 = [v9 networkTimeout];
      [v10 networkWithFeedback:1];
    }

    else
    {
      [v8 addObject:off_100381D98];
    }

    v23 = [*(a1 + 40) ckFetchReasons];
    [v23 unionSet:*(a1 + 48)];

    v24 = [*(a1 + 40) isCancelled];
    v22 = *(a1 + 40);
    if (v24)
    {
LABEL_21:
      [v22 cancelAllPending];
      goto LABEL_24;
    }

    [v22 setNewCKRequests:1];
LABEL_23:
    v25 = [*(a1 + 40) ckFetchScheduler];
    [v25 trigger];

    goto LABEL_24;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [*(a1 + 40) inflightCKFetchDependencies];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [*(a1 + 40) operationQueue];
        [v17 addOperation:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v13);
  }

  v18 = [*(a1 + 40) inflightCKFetchDependencies];
  [v18 removeAllObjects];

  v19 = [*(a1 + 40) deps];
  v20 = [v19 networkTimeout];
  [v20 networkWithFeedback:0];

  if ([*(a1 + 40) newCKRequests])
  {
    goto LABEL_23;
  }

LABEL_24:
  [*(a1 + 40) setCurrentCKFetch:0];
}

void sub_1000851A0(id a1)
{
  qword_10038BDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000855C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000855E4(id a1)
{
  qword_10038BDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100085628(id a1)
{
  qword_10038BDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_10008566C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100085684(uint64_t a1)
{
  v2 = [*(a1 + 32) successfulCKFetchDependency];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) setNewCKRequests:1];
  v5 = [*(a1 + 32) ckFetchReasons];
  [v5 unionSet:*(a1 + 40)];

  v6 = [*(a1 + 32) ckFetchScheduler];
  [v6 trigger];
}

void sub_1000858BC(id a1)
{
  qword_10038BDD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100085DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100085E24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100085E3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = a2;
  LOBYTE(v3) = [v3 verifyInclusionProofDownloadRecord:v5 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v3;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B6A4();
    }

    v6 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138543362;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "revision log inclusion proof downloadId %{public}@: verification succeeded", buf, 0xCu);
    }

    v8 = [*(a1 + 32) logClient];
    v9 = [v5 downloadId];

    [v8 deleteDownloadId:v9];
  }

  else
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B67C();
    }

    v10 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to verify inclusion proof downloadId %{public}@: %@", buf, 0x16u);
    }

    v8 = [*(a1 + 32) dataStore];
    v13 = *(*(a1 + 56) + 8);
    v22 = *(v13 + 40);
    [v8 failHeadDownloadRecord:v5 failure:? error:?];

    v14 = v22;
    v9 = *(v13 + 40);
    *(v13 + 40) = v14;
  }

  v15 = [*(a1 + 32) dataStore];
  v16 = *(*(a1 + 56) + 8);
  v21 = *(v16 + 40);
  v17 = [v15 persistWithError:&v21];
  objc_storeStrong((v16 + 40), v21);

  if ((v17 & 1) == 0)
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B6CC();
    }

    v18 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
    {
      v19 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "failed to save inclusion proof results: %@", buf, 0xCu);
    }

    v20 = [*(a1 + 32) dataStore];
    [v20 reportCoreDataPersistEventForLocation:@"handleInclusionDownload" underlyingError:*(*(*(a1 + 56) + 8) + 40)];
  }
}

void sub_100086128(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008616C(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000861B0(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000861F4(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000864DC(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100086520(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000867B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000867E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = a2;
  v6 = [v3 verifyConsistencyProofDownloadRecord:v5 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v6;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B76C();
    }

    v7 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "consistency proof downloadId %{public}@: verification succeeded", buf, 0xCu);
    }

    v9 = [*(a1 + 32) logClient];
    v10 = [v5 downloadId];

    [v9 deleteDownloadId:v10];
    v11 = [*(a1 + 32) contextStore];
    [v11 clearGossip];
  }

  else
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B744();
    }

    v12 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543618;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to verify consistency proof for downloadId %{public}@: %@", buf, 0x16u);
    }

    v11 = [*(a1 + 32) dataStore];
    v15 = *(*(a1 + 56) + 8);
    v23 = *(v15 + 40);
    [v11 failHeadDownloadRecord:v5 failure:? error:?];

    objc_storeStrong((v15 + 40), v23);
  }

  v16 = [*(a1 + 32) dataStore];
  v17 = *(*(a1 + 56) + 8);
  v22 = *(v17 + 40);
  v18 = [v16 persistWithError:&v22];
  objc_storeStrong((v17 + 40), v22);

  if ((v18 & 1) == 0)
  {
    if (qword_10038BDE0 != -1)
    {
      sub_10024B794();
    }

    v19 = qword_10038BDE8;
    if (os_log_type_enabled(qword_10038BDE8, OS_LOG_TYPE_ERROR))
    {
      v20 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "failed to save consistency proof results: %@", buf, 0xCu);
    }

    v21 = [*(a1 + 32) dataStore];
    [v21 reportCoreDataPersistEventForLocation:@"handleConsistencyDownload" underlyingError:*(*(*(a1 + 56) + 8) + 40)];
  }
}

void sub_100086AE0(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100086B24(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100086B68(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100086BAC(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100086FC4(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100087008(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008704C(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100087090(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100087FE8(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008802C(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100088070(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000880B4(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000880F8(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008813C(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100088180(id a1)
{
  qword_10038BDE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100088678(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000886BC(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100088700(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100088CAC(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_100088CF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100088D08(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (qword_10038BDF0 != -1)
    {
      sub_10024B9C4();
    }

    v10 = qword_10038BDF8;
    if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 141558530;
      v50 = 1752392040;
      v51 = 2112;
      v52 = v7;
      v53 = 2112;
      v54 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "verification failed for %{mask.hash}@: %@", buf, 0x20u);
    }

    v11 = [KTVerifierResult alloc];
    v12 = [*(a1 + 32) application];
    v13 = [v11 initWithUri:v7 application:v12 failure:v9];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
    goto LABEL_7;
  }

  v16 = [*(a1 + 32) getUnsigned:"verificationResult"];
  v17 = *(a1 + 72);
  v18 = *(a1 + 40);
  v19 = [*(a1 + 32) accountKey];
  v20 = *(a1 + 48);
  v21 = [*(a1 + 32) idsResponseTime];
  v22 = [*(a1 + 56) metadata];
  v48 = 0;
  v23 = [v18 validateAndReportPeerOrEnroll:v7 type:v17 transparentData:v8 accountKey:v19 loggableDatas:v20 initialResult:v16 idsResponseTime:v21 responseMetadata:v22 error:&v48];
  v12 = v48;

  if (v23 == 1)
  {
    if (qword_10038BDF0 != -1)
    {
      sub_10024BA00();
    }

    v24 = qword_10038BDF8;
    if (!os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v25 = *(a1 + 32);
    v26 = v24;
    v27 = [v25 verificationId];
    *buf = 138543362;
    v50 = v27;
    v28 = "Validate peer succeeded for verificationId %{public}@";
    v29 = v26;
    v30 = OS_LOG_TYPE_DEFAULT;
    v31 = 12;
  }

  else
  {
    if (qword_10038BDF0 != -1)
    {
      sub_10024B9D8();
    }

    v32 = qword_10038BDF8;
    if (!os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v33 = *(a1 + 32);
    v26 = v32;
    v27 = [v33 verificationId];
    *buf = 138543618;
    v50 = v27;
    v51 = 2112;
    v52 = v12;
    v28 = "Validate Peer failed for verificationId %{public}@: %@";
    v29 = v26;
    v30 = OS_LOG_TYPE_ERROR;
    v31 = 22;
  }

  _os_log_impl(&_mh_execute_header, v29, v30, v28, buf, v31);

LABEL_18:
  v34 = [KTVerifierResult alloc];
  v35 = [*(a1 + 32) application];
  v36 = [v34 initWithUri:v7 application:v35 ktResult:v23 transparentData:v8 loggableDatas:*(a1 + 48)];
  v37 = *(*(a1 + 64) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v36;

  [*(*(*(a1 + 64) + 8) + 40) setFailure:v12];
  if (v23 || ([*(a1 + 32) idsResponseTime], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "accountKey"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v8, "optInAfter:accountKey:", v39, v40), v40, v39, !v41))
  {
    v9 = 0;
    goto LABEL_26;
  }

  if (qword_10038BDF0 != -1)
  {
    sub_10024BA28();
  }

  v42 = qword_10038BDF8;
  if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_DEFAULT))
  {
    v43 = *(a1 + 40);
    v44 = v42;
    v45 = [v43 applicationID];
    *buf = 141558530;
    v50 = 1752392040;
    v51 = 2112;
    v52 = v7;
    v53 = 2112;
    v54 = v45;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Clearing IDS cache for %{mask.hash}@[%@]", buf, 0x20u);
  }

  [*(*(*(a1 + 64) + 8) + 40) setOptedIn:0];
  [*(*(*(a1 + 64) + 8) + 40) setOptInTernaryState:0];
  v15 = [*(a1 + 40) stateMachine];
  v46 = [*(a1 + 32) uri];
  v47 = [*(a1 + 40) applicationID];
  [v15 clearIDSCacheForUri:v46 application:v47];

  v9 = 0;
LABEL_7:

LABEL_26:
}

void sub_100089208(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008924C(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100089290(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000892D4(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000897DC(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 getUnsigned:"verificationResult"] == 2)
  {
    v4 = [v3 idsResponseTime];
    if (!v4)
    {
      v4 = [v3 creationTime];
    }

    v5 = [a1[6] dataStore];
    v6 = [v3 uri];
    v7 = [a1[6] applicationID];
    v43 = 0;
    v8 = [v5 getLatestSuccessfulSingleQueryForUri:v6 application:v7 requestYoungerThan:v4 error:&v43];
    v9 = v43;

    if (v8)
    {
      v10 = [a1[6] dataStore];
      v42 = v9;
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_100089D24;
      v35 = &unk_10031E518;
      v11 = v8;
      v36 = v11;
      v37 = a1[4];
      v12 = a1[5];
      v13 = a1[6];
      v38 = v12;
      v39 = v13;
      v14 = v3;
      v40 = v14;
      v41 = a1[7];
      v15 = [v10 performAndWaitForRpcId:v11 error:&v42 block:&v32];
      v16 = v42;

      if ((v15 & 1) == 0)
      {
        if (qword_10038BDF0 != -1)
        {
          sub_10024BA64();
        }

        v17 = qword_10038BDF8;
        if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v45 = v11;
          v46 = 2112;
          v47 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to find ServerRPC %{public}@: %@", buf, 0x16u);
        }

        v18 = [a1[6] dataStore];
        v19 = [v18 onMocSetPendingResultForVerification:v14];

        (*(a1[7] + 2))();
      }

      v20 = v36;
      v9 = v16;
    }

    else
    {
      if (qword_10038BDF0 != -1)
      {
        sub_10024BA8C();
      }

      v27 = qword_10038BDF8;
      if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_DEFAULT))
      {
        v28 = a1[4];
        v29 = a1[5];
        *buf = 138543874;
        v45 = v28;
        v46 = 2160;
        v47 = 1752392040;
        v48 = 2112;
        v49 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "validatePeer: no successful rpc for %{public}@ for %{mask.hash}@", buf, 0x20u);
      }

      v30 = [a1[6] dataStore];
      v20 = [v30 onMocSetPendingResultForVerification:v3];

      (*(a1[7] + 2))();
      v31 = +[TransparencyAnalytics logger];
      [v31 logSuccessForEventNamed:@"KTQueryFresh"];
    }

    goto LABEL_24;
  }

  if (qword_10038BDF0 != -1)
  {
    sub_10024BA50();
  }

  v21 = qword_10038BDF8;
  if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[4];
    v23 = a1[5];
    *buf = 138543874;
    v45 = v22;
    v46 = 2160;
    v47 = 1752392040;
    v48 = 2112;
    v49 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "validatePeer: reusing completed result %{public}@ for %{mask.hash}@", buf, 0x20u);
  }

  v24 = [a1[6] dataStore];
  v25 = [v3 uri];
  v26 = [a1[6] applicationID];
  v9 = [v24 verifierResultForPeer:v25 application:v26];

  if (v9)
  {
    (*(a1[7] + 2))();
LABEL_24:
  }
}

void sub_100089C9C(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100089CE0(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100089D24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[TransparencyAnalytics logger];
  [v4 logSuccessForEventNamed:@"KTQueryCached"];

  if (qword_10038BDF0 != -1)
  {
    sub_10024BAB4();
  }

  v5 = qword_10038BDF8;
  if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 138544130;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "validatePeer: validating rpc %{public}@ for %{public}@ for %{mask.hash}@", buf, 0x2Au);
  }

  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100089F18;
  v11[3] = &unk_10031E4F0;
  v11[4] = v10;
  v12 = v9;
  v13 = *(a1 + 72);
  [v10 validatePeerIDSKTVerification:v12 serverRPC:v3 completionBlock:v11];
}

void sub_100089ED4(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100089F18(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) dataStore];
  v4 = [*(a1 + 40) uri];
  v5 = [*(a1 + 32) applicationID];
  v6 = [v3 verifierResultForPeer:v4 application:v5];

  (*(*(a1 + 48) + 16))();
}

void sub_100089FE8(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008A460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_10008A4A8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (qword_10038BDF0 != -1)
  {
    sub_10024BAF0();
  }

  v6 = qword_10038BDF8;
  if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    [v5 uiStatus];
    v8 = KTUIStatusGetString();
    v9 = [v5 uri];
    v10 = 138543874;
    v11 = v8;
    v12 = 2160;
    v13 = 1752392040;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "validatePeers: UIStatus %{public}@ for uri %{mask.hash}@", &v10, 0x20u);
  }

  [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
  [*(a1 + 32) addObject:*(a1 + 40)];
  if (([v5 sentToIDS] & 1) == 0)
  {
    [*(*(*(a1 + 64) + 8) + 40) addObject:v5];
  }

  if (a3)
  {
    [*(a1 + 48) addObject:*(a1 + 40)];
  }
}

void sub_10008A620(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008A664(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008A6A8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (qword_10038BDF0 != -1)
    {
      sub_10024BB04();
    }

    v3 = qword_10038BDF8;
    if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "failed to kick off query for validatePeers uris with no current RPC: %@", &v4, 0xCu);
    }
  }
}

void sub_10008A76C(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008AB48(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008AEAC(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008AEF0(uint64_t a1, void *a2)
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    v6 = v27;
    v7 = &off_10038B000;
    v8 = &off_10038B000;
    v24 = a1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        if (v7[446] != -1)
        {
          sub_10024BBA4();
        }

        v11 = v8[447];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = v11;
          v13 = [v10 verificationId];
          [*(a1 + 32) rpcId];
          v14 = v4;
          v15 = v6;
          v16 = v5;
          v17 = v8;
          v19 = v18 = v7;
          *buf = 138543618;
          v35 = v13;
          v36 = 2114;
          v37 = v19;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "performing peer validation for verificationId %{public}@ with received rpcId %{public}@", buf, 0x16u);

          v7 = v18;
          v8 = v17;
          v5 = v16;
          v6 = v15;
          v4 = v14;
          a1 = v24;
        }

        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v27[0] = sub_10008B190;
        v27[1] = &unk_10031E6B0;
        v27[2] = v10;
        v22 = v20;
        v23 = *(a1 + 40);
        v28 = v22;
        v29 = v23;
        [v21 validatePeerIDSKTVerification:v10 singleQuery:v22 completionBlock:v26];
      }

      v4 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v4);
  }
}

void sub_10008B14C(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008B190(id *a1, void *a2)
{
  v3 = a2;
  if (qword_10038BDF0 != -1)
  {
    sub_10024BBCC();
  }

  v4 = qword_10038BDF8;
  if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = v4;
    v7 = [v5 verificationId];
    v8 = [a1[5] rpcId];
    [v3 succeed];
    v9 = KTResultGetString();
    v14 = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "verificationId %{public}@ with rpcId %{public}@ result: %@", &v14, 0x20u);
  }

  v10 = [a1[6] dataStore];
  v11 = [a1[4] uri];
  v12 = [a1[4] application];
  v13 = [v10 verifierResultForPeer:v11 application:v12];
}

void sub_10008B320(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008B364(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008B3A8(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008B474(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008B614(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 rpcType])
  {
    if ([v3 rpcType] == 1)
    {
      [*(a1 + 32) validatePendingPeersForBatchQuery:v3];
    }

    else
    {
      if (qword_10038BDF0 != -1)
      {
        sub_10024BC1C();
      }

      v4 = qword_10038BDF8;
      if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
      {
        v5 = v4;
        v6 = 134217984;
        v7 = [v3 rpcType];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "unknown server rpc type: %lld", &v6, 0xCu);
      }
    }
  }

  else
  {
    [*(a1 + 32) validatePendingPeersForSingleQuery:v3];
  }
}

void sub_10008B724(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008B768(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008B970(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [KTLoggableData ktLoggableDataWithKTIDSData:*(a1 + 32)];
  v5 = [KTVerificationInfo alloc];
  v6 = [*(a1 + 32) ktAccountKey];
  v7 = [v5 initWithAccountKey:v6 serverLoggableDatas:v4];

  v8 = [*(a1 + 40) dataStore];
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v35 = 0;
  v11 = [v8 createVerification:v9 application:v10 onMoc:v3 verificationInfo:v7 error:&v35];
  v12 = v35;

  if (v11)
  {
    v27 = v12;
    v28 = v7;
    v29 = v4;
    v13 = [*(a1 + 40) dataStore];
    v26 = *(a1 + 56);
    v14 = [*(a1 + 64) request];
    v15 = [*(a1 + 64) response];
    v16 = [*(a1 + 64) metadata];
    [v16 objectForKeyedSubscript:@"traceUUID"];
    v17 = v30 = v3;
    v18 = [*(a1 + 72) status];
    v19 = [*(a1 + 64) metadata];
    [v19 objectForKeyedSubscript:@"serverHint"];
    v21 = v20 = v11;
    v22 = [v13 insertCompletedSingleQuery:v30 application:v26 request:v14 response:v15 traceUUID:v17 responseStatus:v18 serverHint:v21];

    v11 = v20;
    v23 = *(a1 + 40);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10008BCB8;
    v32[3] = &unk_10031E4F0;
    v32[4] = v23;
    v33 = v20;
    v34 = *(a1 + 80);
    v3 = v30;
    [v23 validatePeerIDSKTVerification:v33 serverRPC:v22 completionBlock:v32];
    v31 = 0;
    LOBYTE(v23) = [v30 save:&v31];
    v24 = v31;
    if ((v23 & 1) == 0)
    {
      if (qword_10038BDF0 != -1)
      {
        sub_10024BC30();
      }

      v25 = qword_10038BDF8;
      if (os_log_type_enabled(qword_10038BDF8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "validatePeerWithUri: moc failed to store data %@", buf, 0xCu);
      }
    }

    v7 = v28;
    v4 = v29;
    v12 = v27;
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void sub_10008BCB8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) dataStore];
  v4 = [*(a1 + 40) uri];
  v5 = [*(a1 + 32) applicationID];
  v6 = [v3 verifierResultForPeer:v4 application:v5];

  (*(*(a1 + 48) + 16))();
}

void sub_10008BD88(id a1)
{
  qword_10038BDF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008BFD8(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008C01C(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008C300(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008C344(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008C5E0(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008C624(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t start()
{
  [NSError _setFileNameLocalizationEnabled:0];
  bzero(buf, 0x400uLL);
  if (!_set_user_dir_suffix() || !confstr(65537, buf, 0x400uLL) || mkdir(buf, 0x1C0u) && *__error() != 17)
  {
    if (qword_10038BE00 != -1)
    {
      sub_10024BD48();
    }

    v20 = qword_10038BE08;
    if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      v22 = *__error();
      v23 = __error();
      v24 = strerror(*v23);
      *v41 = 67109378;
      v42 = v22;
      v43 = 2080;
      v44 = v24;
      v25 = "failed to initialize temporary directory (%d): %s";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v25, v41, 0x12u);
    }

LABEL_24:
    exit(1);
  }

  v0 = realpath_DARWIN_EXTSN(buf, 0);
  if (!v0)
  {
    if (qword_10038BE00 != -1)
    {
      sub_10024BD20();
    }

    v26 = qword_10038BE08;
    if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_ERROR))
    {
      v21 = v26;
      v27 = *__error();
      v28 = __error();
      v29 = strerror(*v28);
      *v41 = 67109378;
      v42 = v27;
      v43 = 2080;
      v44 = v29;
      v25 = "failed to resolve temporary directory (%d): %s";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v1 = v0;
  setenv("SQLITE_TMPDIR", v0, 1);
  free(v1);
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(transparencyd);
  v4 = objc_alloc_init(MainServiceDelegate);
  [(MainServiceDelegate *)v4 setDaemonContext:v3];
  v5 = dispatch_workloop_create("com.apple.transparencyd.xpc");
  [(MainServiceDelegate *)v4 setXpcQueue:v5];

  v6 = objc_alloc_init(KTIDSSupportServiceDelegate);
  [(KTIDSSupportServiceDelegate *)v6 setDaemonContext:v3];
  v7 = [(MainServiceDelegate *)v4 xpcQueue];
  [(KTIDSSupportServiceDelegate *)v6 setXpcQueue:v7];

  v8 = objc_alloc_init(KTAccountsSupportServiceDelegate);
  [(KTAccountsSupportServiceDelegate *)v8 setDaemonContext:v3];
  v9 = [(MainServiceDelegate *)v4 xpcQueue];
  [(KTAccountsSupportServiceDelegate *)v8 setXpcQueue:v9];

  v30 = [[KTSignalTermHandler alloc] initWithSIGTERMNotification:&stru_10031E878];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10008CD30;
  handler[3] = &unk_10031E900;
  v10 = v4;
  v40 = v10;
  xpc_activity_register("com.apple.transparencyd.dutycycle", XPC_ACTIVITY_CHECK_IN, handler);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10008D098;
  v37[3] = &unk_10031E900;
  v11 = v3;
  v38 = v11;
  xpc_activity_register("com.apple.transparencyd.self-validate", XPC_ACTIVITY_CHECK_IN, v37);
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_10008D280;
  v35 = &unk_10031E900;
  v12 = v11;
  v36 = v12;
  xpc_activity_register("com.apple.transparencyd.24h", XPC_ACTIVITY_CHECK_IN, &v32);
  v13 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.transparencyd"];
  [v13 setDelegate:v10];
  [v13 resume];
  v14 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.transparencyd.ids-support"];
  [v14 setDelegate:v6];
  [v14 resume];
  v15 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.transparencyd.accounts-support"];
  [v15 setDelegate:v8];
  [v15 resume];

  objc_autoreleasePoolPop(v2);
  if (qword_10038BE00 != -1)
  {
    sub_10024BCD0();
  }

  v16 = qword_10038BE08;
  if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "transparencyd accepting work", buf, 2u);
  }

  v17 = [NSRunLoop mainRunLoop:v30];
  [v17 run];

  if (qword_10038BE00 != -1)
  {
    sub_10024BCF8();
  }

  v18 = qword_10038BE08;
  if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "transparencyd stopping", buf, 2u);
  }

  return 1;
}

void sub_10008CC70(id a1)
{
  if (qword_10038BE00 != -1)
  {
    sub_10024BD70();
  }

  v1 = qword_10038BE08;
  if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received signal SIGTERM. Will terminate when clean.", v2, 2u);
  }
}

void sub_10008CCEC(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008CD30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  if (qword_10038BE00 != -1)
  {
    sub_10024BD84();
  }

  v6 = qword_10038BE08;
  if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v18 = state;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "XPC dutycycle activity triggered, state: %ld", buf, 0xCu);
  }

  if (state == 2)
  {
    v7 = xpc_activity_copy_dispatch_queue();
    *buf = 0;
    qos_class = dispatch_queue_get_qos_class(v7, buf);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, qos_class, *buf);

    v11 = [*(a1 + 32) daemonContext];
    v12 = [v11 workloop];
    v13 = dispatch_queue_create_with_target_V2("com.apple.transparencyd.dutycycle.workloop", v10, v12);

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008CF78;
    v14[3] = &unk_1003180E0;
    v15 = v3;
    v16 = *(a1 + 32);
    dispatch_sync(v13, v14);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10008CF34(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008CF78(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && xpc_activity_should_defer(v2) && xpc_activity_set_state(*(a1 + 32), 3))
  {
    if (qword_10038BE00 != -1)
    {
      sub_10024BD98();
    }

    v3 = qword_10038BE08;
    if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "duty cycle deferred", buf, 2u);
    }
  }

  else
  {
    v4 = [*(a1 + 40) daemonContext];
    [v4 runDutyCycleForActivity:*(a1 + 32)];
  }
}

void sub_10008D054(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008D098(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (qword_10038BE00 != -1)
  {
    sub_10024BDAC();
  }

  v5 = qword_10038BE08;
  if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "XPC self-validate activity triggered, state: %ld", &v7, 0xCu);
  }

  if (state == 2)
  {
    if ((+[TransparencySettings enableSelfValidationXPCActivity]& 1) != 0)
    {
      [*(a1 + 32) selfValidateNotification:v3];
    }

    else
    {
      if (qword_10038BE00 != -1)
      {
        sub_10024BDC0();
      }

      v6 = qword_10038BE08;
      if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "XPC self-validate activity ignored by setting on internal build", &v7, 2u);
      }

      xpc_activity_set_state(v3, 5);
    }
  }
}

void sub_10008D1F8(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008D23C(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008D280(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (qword_10038BE00 != -1)
  {
    sub_10024BDE8();
  }

  v5 = qword_10038BE08;
  if (os_log_type_enabled(qword_10038BE08, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "XPC settings activity triggered, state: %ld", &v7, 0xCu);
  }

  if (state == 2)
  {
    v6 = [*(a1 + 32) globalSettings];
    [v6 fetchSettings:v3 force:0];

    [*(a1 + 32) xpc24HrNotification:v3];
  }
}

void sub_10008D388(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008D3CC(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008D410(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008D454(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008D498(id a1)
{
  qword_10038BE08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10008D528(uint64_t a1@<X8>)
{
  sub_1000956B8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_10008D574(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1000956B8();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_10008D5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100098014();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10008D628(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10008D65C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_10008D674()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_10008D69C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_10008D6B8(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

Swift::Int sub_10008D6D8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10008D744(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000965D8();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10008D794()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10008D7FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

unint64_t sub_10008D834(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10008D844(unint64_t result)
{
  if (result >= 2)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

BOOL sub_10008D89C(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *a1;
  sub_100096A68();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v4 == v3;
}

Swift::Int sub_10008D914()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10008D978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000959B4();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10008D9C4()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t *sub_10008DA24@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_10008DA40@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 >= 2)
  {
    v3 = *v1;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    *a1 = *v1;
  }

  return result;
}

unint64_t sub_10008DA90@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 1)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = result > 1;
  return result;
}

uint64_t sub_10008DAA8()
{
  if (*v0 < 2)
  {
    return *v0;
  }

  v2 = *v0;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10008DB14(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_10008DB6C()
{
  v1 = *(v0 + 8);
  sub_100002D78(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_10008DBA0(uint64_t a1, uint64_t a2)
{
  result = sub_1000956CC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_10008DC90@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = xmmword_1002D4770;
  *(a1 + 24) = xmmword_1002D4770;
  v1 = a1 + *(type metadata accessor for SASAnnounce(0) + 28);
  return UnknownStorage.init()();
}

uint64_t sub_10008DCE0()
{
  v1 = *(v0 + 16);
  sub_100002D78(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_10008DD14(uint64_t a1, uint64_t a2)
{
  result = sub_1000956CC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_10008DD6C()
{
  v1 = *(v0 + 32);
  sub_100002D78(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_10008DDA0(uint64_t a1, uint64_t a2)
{
  result = sub_1000956CC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_10008DE10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10008DEAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10008E004@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  v1 = a1 + *(type metadata accessor for SASSelected(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_10008E044()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_10008E050(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_10008E060@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SASTeardown(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10008E0DC(uint64_t a1)
{
  v3 = *(type metadata accessor for SASTeardown(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10008E1A0@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for SASTeardown(0) + 24);
  return UnknownStorage.init()();
}

uint64_t sub_10008E1EC()
{
  v1 = *(v0 + 48);
  sub_100002D78(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_10008E220(uint64_t a1, uint64_t a2)
{
  result = sub_1000956CC(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_10008E278@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SASSetupB(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10008E2F4(uint64_t a1)
{
  v3 = *(type metadata accessor for SASSetupB(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10008E3B8@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  a1[1] = xmmword_1002D4770;
  a1[2] = xmmword_1002D4770;
  a1[3] = xmmword_1002D4770;
  v1 = a1 + *(type metadata accessor for SASSetupB(0) + 32);
  return UnknownStorage.init()();
}

uint64_t sub_10008E48C@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  a2[1] = xmmword_1002D4770;
  a2[2] = xmmword_1002D4770;
  v2 = a2 + *(a1(0) + 28);
  return UnknownStorage.init()();
}

uint64_t sub_10008E4D8()
{
  v1 = *v0;
  sub_100002D78(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_10008E50C(uint64_t a1, uint64_t a2)
{
  result = sub_1000956CC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_10008E554()
{
  v1 = *(v0 + 24);
  sub_100002D78(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_10008E588(uint64_t a1, uint64_t a2)
{
  result = sub_1000956CC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_10008E63C@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xC000000000000000;
  v1 = a1 + *(type metadata accessor for SASConfirm(0) + 28);
  return UnknownStorage.init()();
}

uint64_t sub_10008E694()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10008E6C4(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_10008E704(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_10008E7A8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = _swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for ErrorDomainCode(0) + 28);
  return UnknownStorage.init()();
}

uint64_t sub_10008E7F0@<X0>(void *a1@<X8>)
{
  v3 = sub_100095820(&qword_1003825A8, &qword_1002D4888);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for IDSFailingDevice(0);
  sub_100095888(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for ErrorDomainCode(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000958F8(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = &_swiftEmptyArrayStorage;
  v10 = a1 + *(v8 + 28);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000057C4(v6, &qword_1003825A8, &qword_1002D4888);
  }

  return result;
}

uint64_t sub_10008E938(uint64_t a1)
{
  v3 = *(type metadata accessor for IDSFailingDevice(0) + 24);
  sub_1000057C4(v1 + v3, &qword_1003825A8, &qword_1002D4888);
  sub_1000958F8(a1, v1 + v3);
  v4 = type metadata accessor for ErrorDomainCode(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10008E9DC(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100095820(&qword_1003825A8, &qword_1002D4888) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for ErrorDomainCode(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for IDSFailingDevice(0) + 24);
  *(v4 + 12) = v14;
  sub_100095888(v1 + v14, v7);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = &_swiftEmptyArrayStorage;
    v16 = v13 + *(v8 + 28);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000057C4(v7, &qword_1003825A8, &qword_1002D4888);
    }
  }

  else
  {
    sub_1000958F8(v7, v13);
  }

  return sub_10008EBDC;
}

void sub_10008EBDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_100098068((*a1)[5], v4, type metadata accessor for ErrorDomainCode);
    sub_1000057C4(v9 + v3, &qword_1003825A8, &qword_1002D4888);
    sub_1000958F8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000980D0(v5, type metadata accessor for ErrorDomainCode);
  }

  else
  {
    sub_1000057C4(v9 + v3, &qword_1003825A8, &qword_1002D4888);
    sub_1000958F8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_10008ED18()
{
  v1 = sub_100095820(&qword_1003825A8, &qword_1002D4888);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for IDSFailingDevice(0);
  sub_100095888(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for ErrorDomainCode(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000057C4(v4, &qword_1003825A8, &qword_1002D4888);
  return v7;
}

uint64_t sub_10008EE04()
{
  v1 = *(type metadata accessor for IDSFailingDevice(0) + 24);
  sub_1000057C4(v0 + v1, &qword_1003825A8, &qword_1002D4888);
  v2 = type metadata accessor for ErrorDomainCode(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_10008EEA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10008EF44(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10008F00C@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_1002D4770;
  v2 = type metadata accessor for IDSFailingDevice(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for ErrorDomainCode(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_10008F0A0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ErrorDomainCode(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10008F10C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_10008F13C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_10008F174()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_10008F1A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_10008F224(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_10008F270@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SASTTR(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10008F2EC(uint64_t a1)
{
  v3 = *(type metadata accessor for SASTTR(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10008F3B0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = _swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for SASTTR(0) + 40);
  return UnknownStorage.init()();
}

uint64_t sub_10008F404()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039CF38);
  sub_10009597C(v0, qword_10039CF38);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1002D4780;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "announce";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "commit";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "selected";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "teardown";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "setupB";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "revealA";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "confirm";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "tapToRadar";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008F834()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039CF68);
  sub_10009597C(v0, qword_10039CF68);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HMAC_SHA256_VERSION_1";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HMAC_SHA256_VERSION_2";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008FA94()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039CF80);
  sub_10009597C(v0, qword_10039CF80);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "aProtocolVersion";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sessionID";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "peerSessionID";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008FCF0()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 6 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 1)
      {
        sub_1000959B4();
        dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10008FDBC()
{
  if (!*(*v0 + 16) || (sub_1000959B4(), result = dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[1];
    v4 = v0[2];
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
    }

    else
    {
      if (!v5)
      {
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 == v7)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

LABEL_12:
    v8 = v0[3];
    v9 = v0[4];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_21;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        goto LABEL_21;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_20;
    }

LABEL_21:
    v13 = v0 + *(type metadata accessor for SASAnnounce(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10008FF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = xmmword_1002D4770;
  *(a2 + 24) = xmmword_1002D4770;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t (*sub_10008FF98(uint64_t a1, uint64_t a2))()
{
  result = KTBucketNearFutureScheduler.KTBucketNFSResult.rawValue.getter;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_10008FFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100096590(&qword_100382D40, type metadata accessor for SASAnnounce);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009008C(uint64_t a1)
{
  v2 = sub_100096590(&qword_1003826A8, type metadata accessor for SASAnnounce);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000900F8()
{
  sub_100096590(&qword_1003826A8, type metadata accessor for SASAnnounce);

  return Message.hash(into:)();
}

uint64_t sub_10009019C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039CF98);
  sub_10009597C(v0, qword_10039CF98);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "publicInfo";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "aCommitRandom";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000904B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100096590(&qword_100382D38, type metadata accessor for SASCommit);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100090558(uint64_t a1)
{
  v2 = sub_100096590(&qword_1003826C0, type metadata accessor for SASCommit);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000905C4()
{
  sub_100096590(&qword_1003826C0, type metadata accessor for SASCommit);

  return Message.hash(into:)();
}

uint64_t sub_100090688(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for _NameMap();
  sub_100098130(v9, a2);
  sub_10009597C(v9, a2);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v10 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002D47B0;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = enum case for _NameMap.NameDescription.same(_:);
  v16 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100090844()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_1000908B4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for SASSelected(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100090980(uint64_t a1, uint64_t a2)
{
  if ((sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for SASSelected(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100090A78@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t (*sub_100090AAC(uint64_t a1, uint64_t a2))()
{
  result = KTBucketNearFutureScheduler.KTBucketNFSResult.rawValue.getter;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_100090B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100096590(&qword_100382D30, type metadata accessor for SASSelected);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100090BA0(uint64_t a1)
{
  v2 = sub_100096590(&qword_1003826D8, type metadata accessor for SASSelected);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100090C0C()
{
  sub_100096590(&qword_1003826D8, type metadata accessor for SASSelected);

  return Message.hash(into:)();
}

uint64_t sub_100090C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100095AC0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_100096590(&qword_1003825C8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100090D80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _NameMap();
  sub_100098130(v7, a2);
  sub_10009597C(v7, a2);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v8 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002D4790;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 9;
  *(v13 + 16) = 2;
  v14 = enum case for _NameMap.NameDescription.same(_:);
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100090F84()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        sub_1000965D8();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100091040()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((*(v0 + 24) & 1) != 0 || !*(v0 + 16) || (v9 = *(v0 + 16), sub_1000965D8(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v8 = v0 + *(type metadata accessor for SASTeardown(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10009119C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t sub_1000911D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100091248(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1000912BC(uint64_t a1, uint64_t a2))()
{
  result = KTBucketNearFutureScheduler.KTBucketNFSResult.rawValue.getter;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_100091310(uint64_t a1, uint64_t a2)
{
  v4 = sub_100096590(&qword_100382D28, type metadata accessor for SASTeardown);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000913B0(uint64_t a1)
{
  v2 = sub_100096590(&qword_1003826F0, type metadata accessor for SASTeardown);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009141C()
{
  sub_100096590(&qword_1003826F0, type metadata accessor for SASTeardown);

  return Message.hash(into:)();
}

uint64_t sub_1000914C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039CFE0);
  sub_10009597C(v0, qword_10039CFE0);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sessionID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bRandom";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "publicInfo";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "peerSessionID";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100091750()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1000917FC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_19:
  v13 = v0[4];
  v14 = v0[5];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_28;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 == v17)
  {
    goto LABEL_28;
  }

LABEL_27:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_28:
  v18 = v0[6];
  v19 = v0[7];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_37;
    }

    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
  }

  else
  {
    if (!v20)
    {
      if ((v19 & 0xFF000000000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_36:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_37;
    }

    v21 = v18;
    v22 = v18 >> 32;
  }

  if (v21 != v22)
  {
    goto LABEL_36;
  }

LABEL_37:
  v23 = v0 + *(type metadata accessor for SASSetupB(0) + 32);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100091A0C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  a2[1] = xmmword_1002D4770;
  a2[2] = xmmword_1002D4770;
  a2[3] = xmmword_1002D4770;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t sub_100091A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100091AB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_100091B24(uint64_t a1, uint64_t a2))()
{
  result = KTBucketNearFutureScheduler.KTBucketNFSResult.rawValue.getter;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_100091B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100096590(&qword_100382D20, type metadata accessor for SASSetupB);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100091C18(uint64_t a1)
{
  v2 = sub_100096590(&qword_100382708, type metadata accessor for SASSetupB);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100091C84()
{
  sub_100096590(&qword_100382708, type metadata accessor for SASSetupB);

  return Message.hash(into:)();
}

uint64_t sub_100091D28()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039CFF8);
  sub_10009597C(v0, qword_10039CFF8);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aRandom";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "peerSessionID";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100091F84()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_100092040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v10 = v7;
    v11 = v7 >> 32;
  }

  if (v10 == v11)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v5)
  {
    return result;
  }

LABEL_10:
  v13 = v4[2];
  v14 = v4[3];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_19;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 == v17)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v5)
  {
    return result;
  }

LABEL_19:
  v18 = v4[4];
  v19 = v4[5];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_28;
    }

    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
  }

  else
  {
    if (!v20)
    {
      if ((v19 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_27:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v5)
      {
        return result;
      }

      goto LABEL_28;
    }

    v21 = v18;
    v22 = v18 >> 32;
  }

  if (v21 != v22)
  {
    goto LABEL_27;
  }

LABEL_28:
  v23 = v4 + *(a4(0) + 28);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100092234@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  a2[1] = xmmword_1002D4770;
  a2[2] = xmmword_1002D4770;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t sub_100092264(uint64_t a1, uint64_t a2)
{
  v4 = sub_100096590(&qword_100382D18, type metadata accessor for SASReveal);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100092304(uint64_t a1)
{
  v2 = sub_100096590(&qword_100382720, type metadata accessor for SASReveal);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100092370()
{
  sub_100096590(&qword_100382720, type metadata accessor for SASReveal);

  return Message.hash(into:)();
}

uint64_t sub_100092414()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D010);
  sub_10009597C(v0, qword_10039D010);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sentTime";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "peerSessionID";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100092670()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        break;
      case 1:
LABEL_8:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }
}

uint64_t sub_10009270C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_10:
  if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
  {
    v8 = v0[3];
    v9 = v0[4];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_21;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        goto LABEL_21;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_20;
    }

LABEL_21:
    v13 = v0 + *(type metadata accessor for SASConfirm(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10009288C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1002D4770;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xC000000000000000;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t sub_100092904(uint64_t a1, uint64_t a2)
{
  v4 = sub_100096590(&qword_100382D10, type metadata accessor for SASConfirm);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000929A8(uint64_t a1)
{
  v2 = sub_100096590(&qword_100382738, type metadata accessor for SASConfirm);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100092A18()
{
  sub_100096590(&qword_100382738, type metadata accessor for SASConfirm);

  return Message.hash(into:)();
}

uint64_t sub_100092AC8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D028);
  sub_10009597C(v0, qword_10039D028);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "errorDomain";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorCode";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "underlyingErrors";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100092D24()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for ErrorDomainCode(0);
          sub_100096590(&qword_100382600, type metadata accessor for ErrorDomainCode);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100092E40()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[3] + 16) || (type metadata accessor for ErrorDomainCode(0), sub_100096590(&qword_100382600, type metadata accessor for ErrorDomainCode), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
      {
        v6 = v0 + *(type metadata accessor for ErrorDomainCode(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_100092FC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t sub_100092FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100093068(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10009310C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100096590(&qword_100382D08, type metadata accessor for ErrorDomainCode);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000931AC(uint64_t a1)
{
  v2 = sub_100096590(&qword_100382600, type metadata accessor for ErrorDomainCode);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100093218()
{
  sub_100096590(&qword_100382600, type metadata accessor for ErrorDomainCode);

  return Message.hash(into:)();
}

uint64_t sub_100093324()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for IDSFailingDevice(0) + 24);
        type metadata accessor for ErrorDomainCode(0);
        sub_100096590(&qword_100382600, type metadata accessor for ErrorDomainCode);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10009342C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_8;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_100093504(v0);
  if (!v1)
  {
    v8 = v0 + *(type metadata accessor for IDSFailingDevice(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}