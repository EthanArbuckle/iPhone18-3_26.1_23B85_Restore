void sub_1000023A4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v5)
  {
    sub_10005DDBC("_approvedWebCredentialsDomainsForApplicationIdentifier:completionHandler:");
  }

  if ([v4 length])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100003060;
    v6[3] = &unk_100089D08;
    v7 = v5;
    [SFSafariCredentialStore getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID:v4 completionHandler:v6];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005DD74();
    }

    (*(v5 + 2))(v5, &__NSArray0__struct);
  }
}

void sub_1000024C8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v5)
  {
    sub_10005DEF8("_allWebCredentialsDomainsForApplicationIdentifier:completionHandler:");
  }

  if ([v4 length])
  {
    v6 = dispatch_get_global_queue(25, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000031DC;
    v7[3] = &unk_100089D58;
    v8 = v4;
    v9 = v5;
    dispatch_async(v6, v7);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005DEB0();
    }

    (*(v5 + 2))(v5, &__NSArray0__struct);
  }
}

void sub_100002610(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003404;
  v14[3] = &unk_100089DA8;
  v16 = v9;
  v17 = objc_opt_self();
  v15 = v8;
  v12 = v9;
  v13 = v8;
  sub_10000369C(v17, v11, v10, v14);
}

void sub_10000286C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002884(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = CPSCustomAuthenticationMethodOther;
  v7 = a2;
  if ([v7 isEqualToString:v6])
  {
    *(*(*(a1 + 32) + 8) + 32) |= 4u;
  }

  if ([v7 isEqualToString:CPSCustomAuthenticationMethodRestorePurchase])
  {
    *(*(*(a1 + 32) + 8) + 32) |= 8u;
  }

  v8 = [v7 isEqualToString:CPSCustomAuthenticationMethodVideoSubscriberAccount];

  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 32) |= 0x10u;
  }

  *a4 = (~*(*(*(a1 + 32) + 8) + 32) & 0x1C) == 0;
}

id sub_100002C64(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = +[NSMutableSet set];
  v7 = [v5 relyingPartyIdentifier];

  [v6 bs_safeAddObject:v7];
  v8 = [v4 relyingPartyIdentifier];

  [v6 bs_safeAddObject:v8];
  if ([v6 count] == 1)
  {
    v9 = [v6 anyObject];
    if ([v9 length])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_100003060(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003184;
  v9[3] = &unk_100089CE0;
  v4 = objc_alloc_init(NSMutableOrderedSet);
  v10 = v4;
  [v3 enumerateObjectsUsingBlock:v9];

  if (IsAppleInternalBuild())
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 stringArrayForKey:@"ExtraAssociatedDomains"];
    [v4 addObjectsFromArray:v6];
  }

  v7 = *(a1 + 32);
  v8 = [v4 array];
  (*(v7 + 16))(v7, v8);
}

void sub_100003184(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 domain];
  [v2 addObject:v3];
}

void sub_1000031DC(uint64_t a1)
{
  v2 = [[_SWCServiceSpecifier alloc] initWithServiceType:0 applicationIdentifier:*(a1 + 32) domain:0];
  v15 = 0;
  v3 = [_SWCServiceDetails serviceDetailsWithServiceSpecifier:v2 error:&v15];
  v4 = v15;
  if (v3)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100003398;
    v13 = &unk_100089D30;
    v5 = objc_alloc_init(NSMutableOrderedSet);
    v14 = v5;
    [v3 enumerateObjectsUsingBlock:&v10];
    if (IsAppleInternalBuild())
    {
      v6 = [NSUserDefaults standardUserDefaults:v10];
      v7 = [v6 stringArrayForKey:@"ExtraAssociatedDomains"];
      [v5 addObjectsFromArray:v7];
    }

    v8 = *(a1 + 40);
    v9 = [v5 array];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E0E0(v4);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100003398(uint64_t a1, void *a2)
{
  v4 = [a2 serviceSpecifier];
  v3 = [v4 domain];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_100003404(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:AKAppleIDAuthenticationErrorDomain];

  if (v5)
  {
    v6 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003500;
    v8[3] = &unk_100089D80;
    v7 = *(a1 + 48);
    v10 = *(a1 + 40);
    v9 = v3;
    sub_100003514(v7, v9, v6, v8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100003514(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = a3;
  objc_opt_self();
  v9 = [v6 userInfo];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSMutableDictionary dictionary];
  }

  v13 = v12;

  [v13 setObject:v8 forKeyedSubscript:AKClientBundleIDKey];
  v14 = [v6 domain];
  v15 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v14, [v6 code], v13);

  v16 = objc_alloc_init(AKAlertHandler);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100003864;
  v18[3] = &unk_100089DF8;
  v19 = v7;
  v17 = v7;
  [v16 showAlertForError:v15 withCompletion:v18];
}

void sub_10000369C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  objc_opt_self();
  v18 = 0;
  v9 = [AKAuthorizationValidator canPerformCredentialRequest:v8 error:&v18];

  v10 = v18;
  if (v9)
  {
    if (v6 && (+[AKAccountManager sharedInstance](AKAccountManager, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), [v11 continuationTokenForAccount:v6], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
    {
      v13 = objc_alloc_init(AKAppleIDAuthenticationContext);
      v14 = [v6 username];
      [v13 setUsername:v14];

      [v13 setIsUsernameEditable:0];
      v15 = objc_alloc_init(AKAppleIDAuthenticationController);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100003850;
      v16[3] = &unk_100089DD0;
      v17 = v7;
      [v15 authenticateWithContext:v13 completion:v16];
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }

  else
  {
    (*(v7 + 2))(v7, v10);
  }
}

void sub_10000389C(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

_BYTE *sub_100003CD0(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[9] & 1) == 0)
  {
    return [result _activated];
  }

  return result;
}

_BYTE *sub_100003DEC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result[9] & 1) == 0)
  {
    return [result _handleEvent:a2];
  }

  return result;
}

_BYTE *sub_1000040BC(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[9] & 1) == 0)
  {
    return [result _activated];
  }

  return result;
}

id sub_1000042C0()
{
  if (qword_10009BFF8 != -1)
  {
    sub_10005E258();
  }

  v1 = qword_10009BFF0;

  return v1;
}

uint64_t sub_100004460(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10000467C(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100004698(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_10000471C(id a1)
{
  qword_10009BFF0 = os_log_create("CompanionServices", "CDDeviceDiscovery");

  _objc_release_x1();
}

_BYTE *sub_10000484C(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[9] & 1) == 0)
  {
    return [result _activated];
  }

  return result;
}

id sub_100004980()
{
  if (qword_10009C008 != -1)
  {
    sub_10005E26C();
  }

  v1 = qword_10009C000;

  return v1;
}

void sub_100004B08(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v9 = IDSCopyBestGuessIDForID();
        if (v9)
        {
          [v2 addObject:v9];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v5);
  }

  v35[0] = IDSSessionAlwaysSkipSelfKey;
  v35[1] = IDSSendMessageOptionFireAndForgetKey;
  v36[0] = &__kCFBooleanTrue;
  v36[1] = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  v33 = @"type";
  v11 = [NSNumber numberWithInteger:*(a1 + 48)];
  v34 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];

  v13 = *(*(a1 + 40) + 16);
  v21 = 0;
  v22 = 0;
  v14 = [v13 sendMessage:v12 toDestinations:v2 priority:300 options:v10 identifier:&v22 error:&v21];
  v15 = v22;
  v16 = v21;
  v17 = sub_100004980();
  v18 = v17;
  if (v14)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138412802;
      v28 = v19;
      v29 = 2112;
      v30 = v2;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sent IDS message. {users = %@, destinations = %@, identifier=%@}", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    *buf = 138412802;
    v28 = v20;
    v29 = 2112;
    v30 = v2;
    v31 = 2112;
    v32 = v16;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error sending IDS message. {usernames = %@, destinations = %@, error = %@}", buf, 0x20u);
  }
}

void sub_100005108(id a1)
{
  qword_10009C000 = os_log_create("CompanionServices", "CDIDSService");

  _objc_release_x1();
}

_BYTE *sub_100005250(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[32] & 1) == 0)
  {
    return [result _activated];
  }

  return result;
}

id sub_100005370()
{
  if (qword_10009C018 != -1)
  {
    sub_10005E280();
  }

  v1 = qword_10009C010;

  return v1;
}

id sub_100005548(uint64_t a1)
{
  v2 = sub_100005370();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setup not needed handler called. Invalidating.", v4, 2u);
  }

  return [*(a1 + 32) _invalidated];
}

void sub_1000056DC(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100005370();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 5)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_100089F60[a2];
    }

    v12 = 136315394;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification action: %s, error: %@", &v12, 0x16u);
  }

  [*(*(a1 + 32) + 40) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  if (a2 == 1)
  {
    [*(*(a1 + 32) + 24) invalidate];
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = 0;

    [*(a1 + 32) _showViewService];
  }
}

void sub_100005CEC(id a1)
{
  qword_10009C010 = os_log_create("CompanionServices", "CDPhotoSetupSession");

  _objc_release_x1();
}

_BYTE *sub_100005E1C(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[73] & 1) == 0)
  {
    return [result _activated];
  }

  return result;
}

void sub_1000061A4(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Session invalidation handler called", v4, 2u);
  }

  [*(*(a1 + 32) + 32) stopRapportDiscovery];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

void sub_100006340(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v5;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BluetoothListener found device: device=%@, type=%ld", &v6, 0x16u);
  }

  if (a3 == 1)
  {
    [*(a1 + 32) _startPhotoSetupSessionWithBluetoothDevice:v5];
  }
}

void sub_100006558(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

id *sub_1000066C8(id *result, uint64_t a2)
{
  v2 = result;
  if (a2 == 1)
  {
    [*(result[4] + 1) invalidate];
    v3 = *(v2[4] + 4);

    return [v3 stopRapportDiscovery];
  }

  else if (!a2)
  {
    result = [result[4] _isSessionActive];
    if ((result & 1) == 0)
    {
      v4 = *(v2[4] + 4);

      return [v4 startRapportDiscovery];
    }
  }

  return result;
}

void sub_10000688C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1000068BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

void sub_1000068FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

id sub_100006B30(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"serviceListener"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"deviceDiscovery"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"currentSession"];
}

void sub_100006F78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

void sub_10000733C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 122) & 1) == 0)
  {
    sub_10005E2F0(v1);
  }
}

void sub_1000073CC(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "legacy app sign in session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting legacy app sign in session.", buf, 2u);
    }

    v4 = +[ACAccountStore defaultStore];
    v5 = [v4 ams_activeiCloudAccount];
    v6 = *(a1 + 72);
    *(a1 + 72) = v5;

    if (*(a1 + 72))
    {
      v7 = objc_alloc_init(RPCompanionLinkDevice);
      [v7 setIdentifier:*(a1 + 192)];
      v8 = objc_alloc_init(RPCompanionLinkClient);
      v9 = *(a1 + 16);
      *(a1 + 16) = v8;

      [*(a1 + 16) setDispatchQueue:*(a1 + 208)];
      [*(a1 + 16) setDestinationDevice:v7];
      v10 = *(a1 + 16);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000AD88;
      v12[3] = &unk_10008A080;
      v12[4] = a1;
      [v10 activateWithCompletion:v12];
    }

    else
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000622C0();
      }

      sub_10005E3C0(a1);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_1000075A8(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 232);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 40);
    v4 = *(v3 + 232);
    *(v3 + 232) = 0;
  }
}

void sub_100007610(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = cps_session_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000622FC();
    }

    sub_10005E3C0(*(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 240);
    if (v5)
    {
      (*(v5 + 16))(*(v4 + 240));
      v4 = *(a1 + 32);
    }

    sub_1000076A0(v4);
  }
}

void sub_1000076A0(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "auth session/send get auth type request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending get auth type request.", buf, 2u);
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 128);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000077D4;
    v6[3] = &unk_10008A0D0;
    v6[4] = a1;
    [v4 sendRequestID:@"com.apple.CompanionAuthentication.GetAuthType" request:&__NSDictionary0__struct options:v5 responseHandler:v6];
    os_activity_scope_leave(&state);
  }
}

void sub_1000077DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "auth session/handle get auth type response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v17.opaque[0] = 0;
    v17.opaque[1] = 0;
    os_activity_scope_enter(v10, &v17);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062364();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDGetAuthTypeResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth type response: %@", buf, 0xCu);
      }

      objc_storeStrong((a1 + 168), v12);
      v14 = [(CDGetAuthTypeResponse *)v12 authType];
      v15 = 2;
      switch(v14)
      {
        case 1:
          sub_100007B18(a1, [(CDGetAuthTypeResponse *)v12 isSandboxPurchase]);
          break;
        case 2:
        case 5:
        case 6:
          *(a1 + 88) = [(CDGetAuthTypeResponse *)v12 authFlags];
          sub_100007CB8(a1);
          break;
        case 4:
          goto LABEL_17;
        case 7:
          v15 = 3;
          goto LABEL_17;
        case 8:
          v15 = 4;
LABEL_17:
          *(a1 + 104) = v15;
          *(a1 + 112) = [(CDGetAuthTypeResponse *)v12 authFlags];
          sub_100007D8C(a1);
          break;
        case 9:
          sub_100007E60(a1);
          break;
        case 10:
          sub_100007F34(a1);
          break;
        case 11:
          sub_100008008(a1);
          break;
        case 12:
          sub_10000817C(a1);
          break;
        case 13:
          sub_100008250(a1);
          break;
        case 15:
          sub_100008324(a1);
          break;
        case 16:
          sub_100008490(a1);
          break;
        case 18:
          sub_100008564(a1);
          break;
        case 19:
          sub_1000086D4(a1);
          break;
        default:
          v16 = cps_session_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000623CC(buf, [(CDGetAuthTypeResponse *)v12 authType], v16);
          }

          sub_10005E3C0(a1);
          break;
      }
    }

    os_activity_scope_leave(&v17);
  }
}

void sub_100007B18(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = _os_activity_create(&_mh_execute_header, "store purchase session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v5 = cps_session_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting store purchase session.", v13, 2u);
    }

    v6 = &AMSAccountMediaTypeAppStoreSandbox;
    if (!a2)
    {
      v6 = &AMSAccountMediaTypeProduction;
    }

    v7 = *v6;
    v8 = [ACAccountStore ams_sharedAccountStoreForMediaType:v7];
    v9 = [v8 ams_activeiTunesAccount];

    if (v9 && ([v9 ams_isLocalAccount] & 1) == 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 96);
    *(a1 + 96) = v10;

    if (*(a1 + 96))
    {
      sub_10005F66C(a1);
    }

    else
    {
      v12 = cps_session_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10006240C();
      }

      sub_10005E3C0(a1);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_100007CB8(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "app sign in session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting app sign in session.", v4, 2u);
    }

    sub_10005FFE8(a1);
    os_activity_scope_leave(&state);
  }
}

void sub_100007D8C(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "system authentication session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting System Authentication session.", v4, 2u);
    }

    sub_1000603E4(a1);
    os_activity_scope_leave(&state);
  }
}

void sub_100007E60(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "sharing session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Sharing session.", v4, 2u);
    }

    sub_100060760(a1);
    os_activity_scope_leave(&state);
  }
}

void sub_100007F34(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "restricted access session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Restricted Access session.", v4, 2u);
    }

    sub_100060AD0(a1);
    os_activity_scope_leave(&state);
  }
}

void sub_100008008(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "store authentication session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting store authentication session.", v9, 2u);
    }

    v4 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeProduction];
    v5 = [v4 ams_activeiTunesAccount];

    if (v5 && ([v5 ams_isLocalAccount] & 1) == 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 96);
    *(a1 + 96) = v6;

    if (*(a1 + 96))
    {
      sub_10005FC18(a1);
    }

    else
    {
      v8 = cps_session_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10006240C();
      }

      sub_10005E3C0(a1);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000817C(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "tv provider session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting TV Provider session.", v4, 2u);
    }

    sub_100060ED8(a1);
    os_activity_scope_leave(&state);
  }
}

void sub_100008250(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "learn more session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Learn More session.", v4, 2u);
    }

    sub_100061020(a1);
    os_activity_scope_leave(&state);
  }
}

void sub_100008324(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "continue on session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Continue On session.", v6, 2u);
    }

    if ([*(a1 + 40) meDeviceValid])
    {
      if ([*(a1 + 40) meDeviceIsMe])
      {
        sub_1000615E8(a1);
      }

      else
      {
        v5 = cps_session_log();
        sub_100062448(v5);

        sub_10005E3C0(a1);
      }
    }

    else
    {
      v4 = cps_session_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Continue On session: Waiting for Me device.", v6, 2u);
      }

      if (!*(a1 + 64))
      {
        sub_10005F538(a1);
      }
    }

    os_activity_scope_leave(&state);
  }
}

void sub_100008490(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "unrecognized user session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Unrecognized User session.", v4, 2u);
    }

    sub_1000619F8(a1);
    os_activity_scope_leave(&state);
  }
}

void sub_100008564(uint64_t a1)
{
  if (a1)
  {
    if (_os_feature_enabled_impl())
    {
      v2 = +[CPSDevice currentDevice];
      v3 = [v2 model];
      v4 = [v3 hasPrefix:@"iPad"];

      if (v4)
      {
        sub_10006256C(a1);
      }

      else if ([*(a1 + 40) meDeviceValid])
      {
        if ([*(a1 + 40) meDeviceIsMe])
        {
          v5 = _os_activity_create(&_mh_execute_header, "incoming calls session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          os_activity_scope_enter(v5, &state);
          v6 = cps_session_log();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *v7 = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting Incoming Calls session.", v7, 2u);
          }

          sub_100061F40(a1);
          os_activity_scope_leave(&state);
        }

        else
        {
          sub_100062508(a1);
        }
      }

      else
      {
        sub_1000625D0(a1);
      }
    }

    else
    {
      sub_1000624A4(a1);
    }
  }
}

void sub_1000086D4(uint64_t a1)
{
  if (a1)
  {
    v2 = +[CPSDevice currentDevice];
    v3 = [v2 model];
    v4 = [v3 hasPrefix:@"iPad"];

    if (v4)
    {
      sub_1000626A4(a1);
    }

    else if ([*(a1 + 40) meDeviceValid])
    {
      if ([*(a1 + 40) meDeviceIsMe])
      {
        v5 = _os_activity_create(&_mh_execute_header, "user defaults session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        os_activity_scope_enter(v5, &state);
        v6 = cps_session_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting User Defaults session.", v7, 2u);
        }

        sub_100061D78(a1);
        os_activity_scope_leave(&state);
      }

      else
      {
        sub_100062640(a1);
      }
    }

    else
    {
      sub_100062708(a1);
    }
  }
}

void sub_100008820(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = _os_activity_create(&_mh_execute_header, "auth session/send get notif info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v8 = cps_session_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending get notif info request: %@", buf, 0xCu);
    }

    v9 = *(a1 + 16);
    v10 = [v5 makeRapportDictionary];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &__NSDictionary0__struct;
    }

    v13 = *(a1 + 128);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000089F4;
    v14[3] = &unk_10008A0F8;
    v15 = v6;
    [v9 sendRequestID:@"com.apple.CompanionAuthentication.GetNotifInfo" request:v12 options:v13 responseHandler:v14];

    os_activity_scope_leave(&state);
  }
}

void sub_100008A04(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "auth session/send did tap notif event", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v10.opaque[0] = 0;
    v10.opaque[1] = 0;
    os_activity_scope_enter(v2, &v10);
    v3 = +[CPSDevice currentDevice];
    v4 = objc_alloc_init(CDDeviceUpdateEvent);
    -[CDDeviceUpdateEvent setDeviceFlags:](v4, "setDeviceFlags:", [v3 flags]);
    v5 = [v3 model];
    [(CDDeviceUpdateEvent *)v4 setDeviceModel:v5];

    v6 = [v3 name];
    [(CDDeviceUpdateEvent *)v4 setDeviceName:v6];

    v7 = cps_session_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending did tap notif event: %@", buf, 0xCu);
    }

    v8 = *(a1 + 16);
    v9 = [(CDDeviceUpdateEvent *)v4 makeRapportDictionary];
    [v8 sendEventID:@"com.apple.CompanionAuthentication.DidTapNotif" event:v9 options:*(a1 + 128) completion:&stru_10008A138];

    os_activity_scope_leave(&v10);
  }
}

void sub_100008BD4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100062778();
    }
  }
}

void sub_100008C2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = _os_activity_create(&_mh_execute_header, "auth session/send get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v8 = cps_session_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending get auth info request: %@", buf, 0xCu);
    }

    v9 = *(a1 + 16);
    v10 = [v5 makeRapportDictionary];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &__NSDictionary0__struct;
    }

    v13 = *(a1 + 128);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008E00;
    v14[3] = &unk_10008A0F8;
    v15 = v6;
    [v9 sendRequestID:@"com.apple.CompanionAuthentication.GetAuthInfo" request:v12 options:v13 responseHandler:v14];

    os_activity_scope_leave(&state);
  }
}

void sub_100008E10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = _os_activity_create(&_mh_execute_header, "auth session/send did finish auth request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    *(a1 + 176) = 1;
    v5 = cps_session_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending did finish auth request: %@", buf, 0xCu);
    }

    v6 = *(a1 + 16);
    v7 = [v3 makeRapportDictionary];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &__NSDictionary0__struct;
    }

    v10 = *(a1 + 128);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100008FC0;
    v11[3] = &unk_10008A0D0;
    v11[4] = a1;
    [v6 sendRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" request:v9 options:v10 responseHandler:v11];

    os_activity_scope_leave(&state);
  }
}

void sub_100008FCC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = _os_activity_create(&_mh_execute_header, "auth session/handle did finish auth response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    if (v3)
    {
      v5 = cps_session_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000627E0();
      }
    }

    else
    {
      v6 = cps_session_log();
      sub_100062848(v6, &v8);
      v5 = v8;
    }

    sub_10005E3C0(a1);
    os_activity_scope_leave(&state);
  }
}

void sub_1000090B4(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = cps_session_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 5)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_10008A600[a2];
    }

    v10 = 136315394;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification action: %s, error: %@", &v10, 0x16u);
  }

  [*(*(a1 + 32) + 24) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = 0;

  (*(*(a1 + 40) + 16))();
}

void sub_1000091D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009290;
  v4[3] = &unk_10008A1B0;
  v4[4] = v2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [TVRCDeviceQuery getConnectionStatusToDeviceWithIdentifier:v3 completion:v4];
}

void sub_100009290(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009340;
  v5[3] = &unk_10008A188;
  v5[4] = v3;
  v8 = a2;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

id sub_100009340(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) systemLockStateSync];
  if (*(a1 + 56) == 1 && (*(a1 + 48) ? (v3 = v2 == 4) : (v3 = 0), v3))
  {
    v6 = cps_session_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remote app is open and connected, will skip presenting notification.", v7, 2u);
    }

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    v4 = *(a1 + 40);

    return [v4 activate];
  }
}

void sub_10000941C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = _os_activity_create(&_mh_execute_header, "session/start prox card transaction", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v5 = cps_session_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting prox card transaction.", buf, 2u);
    }

    v6 = objc_alloc_init(SFClient);
    [v6 setDispatchQueue:*(a1 + 208)];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100009578;
    v7[3] = &unk_10008A200;
    v7[5] = a1;
    v8 = v3;
    v7[4] = v6;
    [v6 startProxCardTransactionWithOptions:127 completion:v7];

    os_activity_scope_leave(&state);
  }
}

void sub_100009578(uint64_t a1, int a2)
{
  v4 = cps_session_log();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Prox card transaction activated.", v7, 2u);
    }

    v6 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10006289C();
    }

    [*(a1 + 32) invalidate];
    (*(*(a1 + 48) + 16))();
    sub_10005E3C0(*(a1 + 40));
  }
}

void sub_100009650(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "store local purchase session/start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting local store purchase session.", buf, 2u);
    }

    v4 = *(a1 + 160);
    v5 = [v4 account];
    v6 = *(a1 + 96);
    *(a1 + 96) = v5;

    if (*(a1 + 96))
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100009AD0;
      v19[3] = &unk_10008A030;
      v19[4] = a1;
      v7 = v4;
      v20 = v7;
      v8 = objc_retainBlock(v19);
      v9 = [v7 deviceName];
      v10 = [v9 length];

      if (v10)
      {
        v11 = +[CDUserNotificationContent storePurchaseContent];
        v12 = [v7 deviceName];
        [v11 addBodyArgument:v12];
      }

      else
      {
        v11 = +[CDUserNotificationContent storePurchaseNoDeviceNameContent];
      }

      [v11 setCategoryIdentifier:@"CDUserNotificationCategoryLocalStorePurchase"];
      v14 = [CUUserNotificationSession cad_sessionWithContent:v11];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10005F938;
      v18[3] = &unk_100089E20;
      v18[4] = a1;
      [v14 addActionWithIdentifier:@"ManageDevices" title:@"MANAGE_DEVICES_BUTTON" flags:0 handler:v18];
      [v14 setDispatchQueue:*(a1 + 208)];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100009BD4;
      v16[3] = &unk_10008A2E8;
      v15 = v8;
      v17 = v15;
      sub_10005EE18(a1, v14, 1, v16);
    }

    else
    {
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10006240C();
      }

      sub_10005E3C0(a1);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000997C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = cps_session_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000628D8();
    }

    [*(*(a1 + 32) + 48) invalidate];
    v6 = *(a1 + 32);
    v5 = *(v6 + 48);
    *(v6 + 48) = 0;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NearbyAction device discovery started.", v7, 2u);
  }
}

void sub_100009A4C(id a1)
{
  v1 = cps_session_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "System monitor started.", v2, 2u);
  }
}

uint64_t sub_100009AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

void sub_100009AD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) purchaseRequest];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009B70;
  v4[3] = &unk_10008A2C0;
  v4[4] = *(a1 + 32);
  sub_10005F744(v2, v3, v4);
}

void sub_100009B70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v5;
  if (a3)
  {
    sub_10005EC3C(v6, a3);
  }

  else
  {
    sub_100062940(v5, v6);
  }
}

uint64_t sub_100009BD4(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

id sub_100009BF0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = [NSString stringWithFormat:@"%@+%@", a1, a2];
    v4 = [v3 dataUsingEncoding:4];
    if (v4)
    {
      v5 = malloc_type_malloc(0x40uLL, 0xFD9CD80CuLL);
      [v4 bytes];
      [v4 length];
      CryptoHashOneShot();
      v2 = [NSData dataWithBytesNoCopy:v5 length:64 freeWhenDone:1];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void sub_100009D00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "store purchase session/handle get notif info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000629A4();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDGetNotifInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get notif info response: %@", buf, 0xCu);
      }

      v14 = +[CDUserNotificationContent storePurchaseContent];
      [v14 setIdentifier:*(a1 + 192)];
      v15 = [(CDGetNotifInfoResponse *)v12 deviceName];
      [v14 addBodyArgument:v15];

      v16 = [CUUserNotificationSession cad_sessionWithContent:v14];
      [v16 setDispatchQueue:*(a1 + 208)];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100009F6C;
      v17[3] = &unk_100089F20;
      v17[4] = a1;
      sub_10005EE18(a1, v16, 1, v17);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_100009F6C(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    [*(*(a1 + 32) + 48) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    sub_100008A04(*(a1 + 32));
    v6 = *(a1 + 32);

    sub_10005FA14(v6);
  }
}

void sub_100009FD8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "store purchase session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDStorePurchaseGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v14 = [(CDStorePurchaseGetAuthInfoResponse *)v12 purchaseRequest];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000A1EC;
      v15[3] = &unk_10008A2C0;
      v15[4] = a1;
      sub_10005F744(a1, v14, v15);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000A1F4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) performDelegatePurchase];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000A2C8;
  v3[3] = &unk_10008A338;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 addFinishBlock:v3];

  objc_destroyWeak(&v5);
}

void sub_10000A2C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = cps_session_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100062A74();
      }
    }

    v9 = WeakRetained[26];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000A3EC;
    v10[3] = &unk_10008A310;
    v10[4] = WeakRetained;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, v10);
  }
}

void *sub_10000A3EC(void *result)
{
  if ((*(result[4] + 122) & 1) == 0)
  {
    return (*(result[7] + 16))(result[7], result[5], result[6]);
  }

  return result;
}

void sub_10000A41C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "store authentication session/handle get notif info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000629A4();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDGetNotifInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get notif info response: %@", buf, 0xCu);
      }

      v14 = +[CDUserNotificationContent storeAuthenticationContent];
      [v14 setIdentifier:*(a1 + 192)];
      v15 = [(CDGetNotifInfoResponse *)v12 deviceName];
      [v14 addBodyArgument:v15];

      v16 = [CUUserNotificationSession cad_sessionWithContent:v14];
      [v16 setDispatchQueue:*(a1 + 208)];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000A688;
      v17[3] = &unk_100089F20;
      v17[4] = a1;
      sub_10005EE18(a1, v16, 1, v17);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000A688(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    [*(*(a1 + 32) + 48) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    sub_100008A04(*(a1 + 32));
    v6 = *(a1 + 32);

    sub_10005FCF0(v6);
  }
}

void sub_10000A6F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "store authentication session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDStoreAuthenticationGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000A900;
      v15[3] = &unk_10008A388;
      v15[4] = a1;
      v14 = v12;
      v16 = v14;
      sub_10000941C(a1, v15);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000A900(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    sub_100008A04(v4);
    sub_10000A964(*(a1 + 32), *(a1 + 40), v5);
  }
}

void sub_10000A964(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = _os_activity_create(&_mh_execute_header, "store authentication session/present view service", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v8 = objc_alloc_init(CPSStoreAuthenticationRequest);
    v9 = [v5 authenticationRequest];
    [v8 setAuthenticationRequest:v9];

    v10 = [ACAccountStore ams_sharedAccountStoreForMediaType:0];
    v11 = [v10 ams_activeiTunesAccount];

    if (v11 && ([v11 ams_isLocalAccount] & 1) == 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    [v8 setAccount:v12];
    v13 = objc_alloc_init(CDProviderViewService);
    [(CDProviderViewService *)v13 setDispatchQueue:*(a1 + 208)];
    [(CDProviderViewService *)v13 setViewControllerClassName:@"StoreAuthenticationViewController"];
    v14 = [v5 deviceName];
    [(CDProviderViewService *)v13 setRemoteDeviceName:v14];

    [(CDProviderViewService *)v13 setStoreAuthenticationRequest:v8];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000AC24;
    v20[3] = &unk_10008A3B0;
    v20[4] = a1;
    [(CDProviderViewService *)v13 setStoreAuthenticationCompletionHandler:v20];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000AD14;
    v19[3] = &unk_10008A3D8;
    v19[4] = a1;
    [(CDProviderViewService *)v13 setActionHandler:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000AD28;
    v17[3] = &unk_100089E20;
    v18 = v6;
    [(CDProviderViewService *)v13 setInvalidationHandler:v17];
    [(CDProviderViewService *)v13 activateWithCompletionHandler:&stru_10008A3F8];
    v15 = *(a1 + 152);
    *(a1 + 152) = v13;
    v16 = v13;

    os_activity_scope_leave(&state);
  }
}

void sub_10000AC24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = cps_session_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Store authentication completion {authenticationResult = %@, error = %@}", &v8, 0x16u);
  }

  *(*(a1 + 32) + 120) = 1;
  sub_10005FE20(*(a1 + 32));
}

void sub_10000AD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10005FE20(*(a1 + 32));
  }
}

void sub_10000AD30(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100062ADC();
    }
  }
}

void sub_10000AD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    sub_10005E3C0(v2);
  }

  else
  {
    sub_10005FEF4(v2);
  }
}

void sub_10000ADA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "legacy app sign in session/handle get notif info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    v11 = [v9 domain];
    if ([v11 isEqualToString:RPErrorDomain])
    {
      v12 = [v9 code] == -6714;

      if (v12)
      {
        v13 = +[CDUserNotificationContent legacyAppSignInContent];
        v14 = [*(a1 + 72) username];
        [v13 addBodyArgument:v14];

        v15 = cps_session_log();
        if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &v15->super, OS_LOG_TYPE_DEFAULT, "Request not handled. Will show legacy app sign in notification.", buf, 2u);
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    if (v9)
    {
      v16 = cps_session_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000629A4();
      }

      sub_10005E3C0(a1);
      goto LABEL_15;
    }

    v15 = [[CDGetNotifInfoResponse alloc] initWithRapportDictionary:v7];
    v17 = cps_session_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received get notif info response: %@", buf, 0xCu);
    }

    v13 = +[CDUserNotificationContent appSignInContent];
    v18 = [(CDGetNotifInfoResponse *)v15 appName];
    [v13 addTitleArgument:v18];

    v19 = [(CDGetNotifInfoResponse *)v15 deviceName];
    [v13 addBodyArgument:v19];

LABEL_14:
    [v13 setIdentifier:*(a1 + 192)];
    v20 = [CUUserNotificationSession cad_sessionWithContent:v13];
    [v20 setDispatchQueue:*(a1 + 208)];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000B0EC;
    v21[3] = &unk_100089F20;
    v21[4] = a1;
    sub_10005EE18(a1, v20, 1, v21);

LABEL_15:
    os_activity_scope_leave(&state);
  }
}

void sub_10000B0EC(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    [*(*(a1 + 32) + 48) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v6 = *(a1 + 32);

    sub_10000B148(v6);
  }
}

void sub_10000B148(uint64_t a1)
{
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "legacy app sign in session/send get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = +[CPSDevice currentDevice];
    v4 = objc_alloc_init(CDGetInfoRequest);
    -[CDGetInfoRequest setDeviceFlags:](v4, "setDeviceFlags:", [v3 flags]);
    v5 = [v3 model];
    [(CDGetInfoRequest *)v4 setDeviceModel:v5];

    v6 = [v3 name];
    [(CDGetInfoRequest *)v4 setDeviceName:v6];

    v7 = cps_session_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending get auth info request: %@", buf, 0xCu);
    }

    v8 = *(a1 + 16);
    v9 = [(CDGetInfoRequest *)v4 makeRapportDictionary];
    v10 = *(a1 + 128);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000B35C;
    v11[3] = &unk_10008A0D0;
    v11[4] = a1;
    [v8 sendRequestID:@"com.apple.AuthKit.StartAuthorization" request:v9 options:v10 responseHandler:v11];

    os_activity_scope_leave(&state);
  }
}

void sub_10000B364(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "legacy app sign in session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDLegacyAppSignInGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v14 = [(CDLegacyAppSignInGetAuthInfoResponse *)v12 credentialRequest];
      v15 = [v14 copy];

      v16 = objc_alloc_init(AKAuthorizationController);
      v17 = cps_session_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Submitting credential request: %@", buf, 0xCu);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000B5F8;
      v18[3] = &unk_10008A448;
      v18[4] = a1;
      [v16 performAuthorizationWithContext:v15 completion:v18];
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000B5F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = cps_session_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100062B44();
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 208);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B6F4;
  block[3] = &unk_10008A420;
  block[4] = v8;
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

void sub_10000B704(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = _os_activity_create(&_mh_execute_header, "legacy app sign in session/send did finish auth request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v8 = objc_alloc_init(CDLegacyAppSignInDidFinishAuthRequest);
    [(CDLegacyAppSignInDidFinishAuthRequest *)v8 setAuthorization:v5];
    [(CDLegacyAppSignInDidFinishAuthRequest *)v8 setError:v6];
    v9 = cps_session_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending did finish auth request: %@", buf, 0xCu);
    }

    v10 = *(a1 + 16);
    v11 = [(CDLegacyAppSignInDidFinishAuthRequest *)v8 makeRapportDictionary];
    v12 = *(a1 + 128);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000B8E0;
    v13[3] = &unk_10008A0D0;
    v13[4] = a1;
    [v10 sendRequestID:@"com.apple.AuthKit.AuthorizationDidFinish" request:v11 options:v12 responseHandler:v13];

    os_activity_scope_leave(&state);
  }
}

void sub_10000B8F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "app sign in session/handle get notif info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000629A4();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDGetNotifInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get notif info response: %@", buf, 0xCu);
      }

      if (*(a1 + 88))
      {
        v14 = +[CDUserNotificationContent registerPasskeyContent];
        v15 = [(CDGetNotifInfoResponse *)v12 appName];
        [v14 addBodyArgument:v15];
      }

      else
      {
        v14 = +[CDUserNotificationContent appSignInContent];
        v15 = [(CDGetNotifInfoResponse *)v12 appName];
        [v14 addTitleArgument:v15];
      }

      v16 = [(CDGetNotifInfoResponse *)v12 deviceName];
      [v14 addBodyArgument:v16];

      [v14 setIdentifier:*(a1 + 192)];
      v17 = [CUUserNotificationSession cad_sessionWithContent:v14];
      [v17 setDispatchQueue:*(a1 + 208)];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000BBD8;
      v18[3] = &unk_100089F20;
      v18[4] = a1;
      sub_10005EE18(a1, v17, 1, v18);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000BBD8(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    [*(*(a1 + 32) + 48) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    sub_100008A04(*(a1 + 32));
    v6 = *(a1 + 32);

    sub_1000600DC(v6);
  }
}

void sub_10000BC44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "app sign in session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDAppSignInGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v14 = [(CDAppSignInGetAuthInfoResponse *)v12 webRequest];
      v15 = v14 == 0;

      if (v15)
      {
        v16 = [CDAppSignInUtilities credentialRequestFromClientAuthenticationContext:v12];
        v18 = objc_alloc_init(ASCAgentProxy);
        v19 = *(a1 + 80);
        *(a1 + 80) = v18;

        v20 = cps_session_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v16;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Submitting credential request: %@", buf, 0xCu);
        }

        v21 = *(a1 + 80);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10000C124;
        v22[3] = &unk_10008A470;
        v22[4] = a1;
        [v21 performAuthorizationRequestsForContext:v16 withCompletionHandler:v22];
      }

      else
      {
        v16 = [(CDAppSignInGetAuthInfoResponse *)v12 webRequest];
        v17 = [(CDAppSignInGetAuthInfoResponse *)v12 appDomains];
        sub_10000BF20(a1, v16, v17);
      }
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000BF20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (!v5)
    {
      sub_100062BAC("_performWebAuthenticationWithRequest:proxiedAppDomains:", a1);
    }

    v7 = _os_activity_create(&_mh_execute_header, "CompAuth/WebAuth/perform", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v8 = cps_session_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing web authentication: %@", buf, 0xCu);
    }

    v9 = objc_alloc_init(CDProviderViewService);
    [(CDProviderViewService *)v9 setDispatchQueue:*(a1 + 208)];
    [(CDProviderViewService *)v9 setViewControllerClassName:@"WebAuthenticationViewController"];
    [(CDProviderViewService *)v9 setWebAuthenticationRequest:v5];
    [(CDProviderViewService *)v9 setProxiedAppDomains:v6];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000C230;
    v12[3] = &unk_10008A498;
    v12[4] = a1;
    [(CDProviderViewService *)v9 setWebAuthenticationCompletionHandler:v12];
    [(CDProviderViewService *)v9 activateWithCompletionHandler:&stru_10008A4B8];
    v10 = *(a1 + 152);
    *(a1 + 152) = v9;
    v11 = v9;

    os_activity_scope_leave(&state);
  }
}

void sub_10000C124(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = cps_session_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100062B44();
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 208);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C220;
  block[3] = &unk_10008A420;
  block[4] = v8;
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

void sub_10000C230(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = cps_session_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100062CE0();
    }
  }

  sub_100060360(*(a1 + 32));
}

void sub_10000C2B0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100062ADC();
    }
  }
}

void sub_10000C310(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "system authentication session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDSystemAuthenticationGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v14 = sub_1000604D8(a1, v12);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000C52C;
      v15[3] = &unk_10008A4E0;
      v15[4] = a1;
      v15[5] = v12;
      sub_10005EE18(a1, v14, 1, v15);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000C52C(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = cps_session_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 5)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_10008A600[a2];
    }

    *buf = 136315394;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification action: %s, error: %@", buf, 0x16u);
  }

  if (a2 == 1)
  {
    [*(*(a1 + 32) + 48) invalidate];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = 0;

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000C690;
    v10[3] = &unk_10008A388;
    v11 = *(a1 + 32);
    sub_10000941C(v11, v10);
  }
}

void sub_10000C690(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    sub_100008A04(v4);
    sub_10000C6F4(*(a1 + 32), *(a1 + 40), v5);
  }
}

void sub_10000C6F4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = _os_activity_create(&_mh_execute_header, "system authentication session/present view service", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v8 = objc_alloc_init(CPSSystemAuthenticationRequest);
    [v8 setService:a1[13]];
    [v8 setOptions:a1[14]];
    v9 = objc_alloc_init(CDProviderViewService);
    [(CDProviderViewService *)v9 setDispatchQueue:a1[26]];
    [(CDProviderViewService *)v9 setViewControllerClassName:@"ConfirmViewController"];
    v10 = [v5 deviceName];
    [(CDProviderViewService *)v9 setRemoteDeviceName:v10];

    [(CDProviderViewService *)v9 setSystemAuthenticationRequest:v8];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000C900;
    v18[3] = &unk_10008A3D8;
    v18[4] = a1;
    [(CDProviderViewService *)v9 setActionHandler:v18];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10000CA30;
    v16 = &unk_100089E20;
    v17 = v6;
    [(CDProviderViewService *)v9 setInvalidationHandler:&v13];
    [(CDProviderViewService *)v9 activateWithCompletionHandler:&stru_10008A500, v13, v14, v15, v16];
    v11 = a1[19];
    a1[19] = v9;
    v12 = v9;

    os_activity_scope_leave(&state);
  }
}

void sub_10000C900(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = cps_session_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2 - 1) >= 3)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %ld)", a2];
    }

    else
    {
      v7 = off_10008A630[a2 - 1];
    }

    *buf = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received view service action: %@, error: %@", buf, 0x16u);
  }

  *(*(a1 + 32) + 144) = a2 == 3;
  sub_100060674(*(a1 + 32), *(*(a1 + 32) + 144), v5);
}

void sub_10000CA38(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100062ADC();
    }
  }
}

void sub_10000CA98(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "sharing session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDSharingGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v14 = sub_100060854(a1, v12);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000CCB4;
      v15[3] = &unk_10008A4E0;
      v15[4] = a1;
      v15[5] = v12;
      sub_10005EE18(a1, v14, 1, v15);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000CCB4(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    [*(*(a1 + 32) + 48) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    sub_100060A04(v6, v7);
  }
}

void sub_10000CD10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = _os_activity_create(&_mh_execute_header, "sharing session/present view service", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v5 = objc_alloc_init(CDProviderViewService);
    [(CDProviderViewService *)v5 setDispatchQueue:*(a1 + 208)];
    [(CDProviderViewService *)v5 setViewControllerClassName:@"SharingViewController"];
    v6 = [v3 deviceName];
    [(CDProviderViewService *)v5 setRemoteDeviceName:v6];

    v7 = [v3 requestData];
    [(CDProviderViewService *)v5 setSharingData:v7];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000CE88;
    v8[3] = &unk_10008A3D8;
    v8[4] = a1;
    [(CDProviderViewService *)v5 setActionHandler:v8];
    [(CDProviderViewService *)v5 setInvalidationHandler:&stru_10008A520];
    [(CDProviderViewService *)v5 activateWithCompletionHandler:&stru_10008A540];

    os_activity_scope_leave(&state);
  }
}

void sub_10000CE88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = cps_session_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received view service dismissal, error: %@", &v6, 0xCu);
  }

  sub_100060A60(*(a1 + 32), v4);
}

void sub_10000CF50(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100062ADC();
    }
  }
}

void sub_10000CFB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "restricted access session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDRestrictedAccessGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v14 = sub_100060BC4(a1, v12);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000D1CC;
      v15[3] = &unk_10008A4E0;
      v15[4] = a1;
      v15[5] = v12;
      sub_10005EE18(a1, v14, 1, v15);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000D1CC(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v7[8] = v2;
    v7[9] = v3;
    [*(*(a1 + 32) + 48) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000D274;
    v7[3] = &unk_10008A388;
    sub_10000941C(*(a1 + 32), v7);
  }
}

void sub_10000D274(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    sub_100008A04(v4);
    sub_10000D2D8(*(a1 + 32), *(a1 + 40), v5);
  }
}

void sub_10000D2D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = _os_activity_create(&_mh_execute_header, "restricted access session/present view service", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v8 = objc_alloc_init(CPSRestrictedAccessRequest);
    v9 = objc_alloc_init(CDProviderViewService);
    [(CDProviderViewService *)v9 setDispatchQueue:*(a1 + 208)];
    [(CDProviderViewService *)v9 setViewControllerClassName:@"ConfirmViewController"];
    v10 = [v5 deviceName];
    [(CDProviderViewService *)v9 setRemoteDeviceName:v10];

    [(CDProviderViewService *)v9 setRestrictedAccessRequest:v8];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100060DCC;
    v18[3] = &unk_10008A3D8;
    v18[4] = a1;
    [(CDProviderViewService *)v9 setActionHandler:v18];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10000D4E0;
    v16 = &unk_100089E20;
    v17 = v6;
    [(CDProviderViewService *)v9 setInvalidationHandler:&v13];
    [(CDProviderViewService *)v9 activateWithCompletionHandler:&stru_10008A560, v13, v14, v15, v16];
    v11 = *(a1 + 152);
    *(a1 + 152) = v9;
    v12 = v9;

    os_activity_scope_leave(&state);
  }
}

void sub_10000D4E8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100062ADC();
    }
  }
}

void sub_10000D548(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "tv provider session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDTVProviderGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v14 = sub_100060F50(a1, v12);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000D764;
      v15[3] = &unk_10008A4E0;
      v15[4] = a1;
      v15[5] = v12;
      sub_10005EE18(a1, v14, 1, v15);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000D764(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    [*(*(a1 + 32) + 48) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    sub_100008A04(*(a1 + 32));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    sub_10000D7C8(v6, v7);
  }
}

void sub_10000D7C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = _os_activity_create(&_mh_execute_header, "tv provider session/present view service", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v5 = objc_alloc_init(CPSTVProviderRequest);
    v6 = [v3 providerURL];
    [v5 setProviderURL:v6];

    v7 = [v3 providerName];
    [v5 setProviderName:v7];

    v8 = objc_alloc_init(CDProviderViewService);
    [(CDProviderViewService *)v8 setDispatchQueue:*(a1 + 208)];
    [(CDProviderViewService *)v8 setViewControllerClassName:@"WebViewController"];
    [(CDProviderViewService *)v8 setTvProviderRequest:v5];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100061018;
    v11[3] = &unk_100089E20;
    v11[4] = a1;
    [(CDProviderViewService *)v8 setInvalidationHandler:v11];
    [(CDProviderViewService *)v8 activateWithCompletionHandler:&stru_10008A580];
    v9 = *(a1 + 152);
    *(a1 + 152) = v8;
    v10 = v8;

    os_activity_scope_leave(&state);
  }
}

void sub_10000D968(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100062ADC();
    }
  }
}

void sub_10000D9C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "learn more session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDLearnMoreGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v14 = sub_100061098(a1, v12);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000DBE4;
      v15[3] = &unk_10008A4E0;
      v15[4] = a1;
      v15[5] = v12;
      sub_10005EE18(a1, v14, 1, v15);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000DBE4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a2 == 1)
  {
    [*(*(a1 + 32) + 48) invalidate];
    v23 = *(a1 + 32);
    v24 = *(v23 + 48);
    *(v23 + 48) = 0;

    v31 = *(a1 + 32);
    v32 = *(a1 + 40);

    sub_1000611BC(v31, v32, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }
}

void sub_10000DC40(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v10 = v2;
    v11 = v3;
    [*(*(a1 + 32) + 48) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000DCFC;
    v8[3] = &unk_10008A388;
    v8[4] = v7;
    v9 = *(a1 + 40);
    sub_10000941C(v7, v8);
  }
}

void sub_10000DCFC(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    sub_10000DD10(*(a1 + 32), *(a1 + 40), a3);
  }
}

void sub_10000DD10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = _os_activity_create(&_mh_execute_header, "dedicated camera provider session/present view service", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v8 = objc_alloc_init(CDProviderViewService);
    [(CDProviderViewService *)v8 setDispatchQueue:*(a1 + 208)];
    [(CDProviderViewService *)v8 setViewControllerClassName:@"DedicatedCameraViewController"];
    [(CDProviderViewService *)v8 setDedicatedCameraRequest:v5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100061468;
    v13[3] = &unk_10008A030;
    v14 = v6;
    v15 = a1;
    [(CDProviderViewService *)v8 setInvalidationHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000614A4;
    v12[3] = &unk_10008A3D8;
    v12[4] = a1;
    [(CDProviderViewService *)v8 setActionHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000DF04;
    v11[3] = &unk_10008A080;
    v11[4] = a1;
    [(CDProviderViewService *)v8 activateWithCompletionHandler:v11];
    v9 = *(a1 + 152);
    *(a1 + 152) = v8;
    v10 = v8;

    os_activity_scope_leave(&state);
  }
}

void sub_10000DF04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = cps_session_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_100062ADC();
    }

    sub_10005EC3C(*(a1 + 32), v3);
    sub_10005E3C0(*(a1 + 32));
  }
}

void sub_10000DF84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "continue on session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      *(a1 + 177) = 1;
      v12 = *(a1 + 184);
      *(a1 + 184) = &stru_10008A5C0;

      v13 = [[CDContinueOnGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v14 = cps_session_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v15 = [(CDContinueOnGetAuthInfoResponse *)v13 requestTypeData];
      v24 = 0;
      v16 = [_TtC10companiond34CDOpensAppIntentDispatcherProvider dispatcherWithRequestTypeData:v15 error:&v24];
      v17 = v24;

      if (v17)
      {
        v18 = cps_session_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100062D48();
        }

        sub_10005E3C0(a1);
      }

      else
      {
        v19 = [v16 bundleIdentifier];
        v20 = sub_10006176C(a1, v13, v19);

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10000E36C;
        v21[3] = &unk_10008A4E0;
        v22 = v16;
        v23 = a1;
        sub_10005EE18(a1, v20, 0, v21);
      }
    }

    os_activity_scope_leave(&state);
  }
}

CDRapportDictionaryEncodable *__cdecl sub_10000E274(id a1)
{
  v1 = objc_alloc_init(CDContinueOnDidFinishAuthRequest);
  v2 = CPSErrorDomain;
  v6 = NSDebugDescriptionErrorKey;
  v7 = @"Session invalidated before completing.";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:v2 code:100 userInfo:v3];
  [(CDContinueOnDidFinishAuthRequest *)v1 setError:v4];

  return v1;
}

void sub_10000E36C(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v8[7] = v2;
    v8[8] = v3;
    v5 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000E414;
    v8[3] = &unk_10008A080;
    v8[4] = *(a1 + 40);
    [v5 performWithCompletionHandler:v8];
    [*(*(a1 + 40) + 48) invalidate];
    v6 = *(a1 + 40);
    v7 = *(v6 + 48);
    *(v6 + 48) = 0;
  }
}

void sub_10000E414(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = cps_session_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to perform intent with error: %@", &v6, 0xCu);
    }
  }

  sub_100061988(*(a1 + 32), v3);
}

void sub_10000E4F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "unrecognized user session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDUnrecognizedUserGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v14 = sub_100061AEC(a1, v12);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000E790;
      v16[3] = &unk_100089E20;
      v16[4] = a1;
      [v14 addActionWithIdentifier:@"Continue" title:@"CONTINUE_BUTTON" flags:1 handler:v16];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100061C5C;
      v15[3] = &unk_100089E20;
      v15[4] = a1;
      [v14 addActionWithIdentifier:@"Cancel" title:@"CANCEL_BUTTON" flags:1 handler:v15];
      sub_10005EE18(a1, v14, 0, 0);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000E790(uint64_t a1)
{
  v2 = cps_session_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received notification action: continue", v5, 2u);
  }

  [*(*(a1 + 32) + 48) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  sub_100061B9C(*(a1 + 32), 0);
}

void sub_10000E82C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v49 = a2;
  v46 = a3;
  v7 = a4;
  v47 = a1;
  if (!a1)
  {
    goto LABEL_60;
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v45 = _os_activity_create(&_mh_execute_header, "unrecognized user session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v45, &state);
  v48 = v7;
  if (!v7)
  {
    v44 = [[CDUserDefaultsGetAuthInfoResponse alloc] initWithRapportDictionary:v49];
    v9 = cps_session_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v44;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
    }

    v10 = [(CDUserDefaultsGetAuthInfoResponse *)v44 readInfo];
    v54 = +[NSMutableDictionary dictionary];
    v55 = +[NSMutableDictionary dictionary];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
    if (v11)
    {
      v51 = *v65;
      do
      {
        v52 = v11;
        for (i = 0; i != v52; i = i + 1)
        {
          if (*v65 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v64 + 1) + 8 * i);
          v14 = [v13 suiteName];
          v15 = v14;
          v16 = &stru_10008C138;
          if (v14)
          {
            v16 = v14;
          }

          v17 = v16;

          v18 = [v55 objectForKeyedSubscript:v17];
          if (!v18)
          {
            if ([(__CFString *)v17 length])
            {
              v18 = [[NSUserDefaults alloc] initWithSuiteName:v17];
              if (!v18)
              {
                v18 = cps_session_log();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v70 = v17;
                  _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not initialize UserDefaults for suite: %@", buf, 0xCu);
                }

                goto LABEL_32;
              }
            }

            else
            {
              v18 = +[NSUserDefaults standardUserDefaults];
            }

            [v55 setObject:v18 forKeyedSubscript:v17];
          }

          v19 = [v54 objectForKeyedSubscript:v17];
          if (!v19)
          {
            v19 = +[NSMutableDictionary dictionary];
            [v54 setObject:v19 forKeyedSubscript:v17];
          }

          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v20 = [v13 keys];
          v21 = [v20 countByEnumeratingWithState:&v60 objects:v76 count:16];
          if (v21)
          {
            v22 = *v61;
            do
            {
              for (j = 0; j != v21; j = j + 1)
              {
                if (*v61 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v60 + 1) + 8 * j);
                v25 = [v18 objectForKey:v24];
                [v19 setObject:v25 forKeyedSubscript:v24];
              }

              v21 = [v20 countByEnumeratingWithState:&v60 objects:v76 count:16];
            }

            while (v21);
          }

LABEL_32:
        }

        v11 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v11);
    }

    [(CDUserDefaultsGetAuthInfoResponse *)v44 writeInfo];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v53 = v57 = 0u;
    v26 = [v53 countByEnumeratingWithState:&v56 objects:v75 count:16];
    if (!v26)
    {
      goto LABEL_58;
    }

    v28 = *v57;
    *&v27 = 138412290;
    v43 = v27;
LABEL_36:
    v29 = 0;
    while (1)
    {
      if (*v57 != v28)
      {
        objc_enumerationMutation(v53);
      }

      v30 = *(*(&v56 + 1) + 8 * v29);
      v31 = [v30 suiteName];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = &stru_10008C138;
      }

      v34 = v33;

      v35 = [v55 objectForKeyedSubscript:v34];
      if (!v35)
      {
        if ([(__CFString *)v34 length])
        {
          v35 = [[NSUserDefaults alloc] initWithSuiteName:v34];
          if (!v35)
          {
            v35 = cps_session_log();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = v43;
              v70 = v34;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Could not initialize UserDefaults for suite: %@ for write operation", buf, 0xCu);
            }

            goto LABEL_56;
          }
        }

        else
        {
          v35 = +[NSUserDefaults standardUserDefaults];
        }

        [v55 setObject:v35 forKeyedSubscript:v34];
      }

      v36 = [v30 key];
      v37 = [v30 value];
      if (v37)
      {
        [v35 setObject:v37 forKey:v36];
        v38 = cps_session_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v70 = v34;
          v71 = 2112;
          v72 = v36;
          v73 = 2112;
          v74 = v37;
          v39 = v38;
          v40 = "Set UserDefaults. {suite=%@, key=%@, value=%@}";
          v41 = 32;
LABEL_54:
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, buf, v41);
        }
      }

      else
      {
        [v35 removeObjectForKey:v36];
        v38 = cps_session_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v70 = v34;
          v71 = 2112;
          v72 = v36;
          v39 = v38;
          v40 = "Removed UserDefaults. {suite=%@, key=%@}";
          v41 = 22;
          goto LABEL_54;
        }
      }

LABEL_56:
      if (v26 == ++v29)
      {
        v26 = [v53 countByEnumeratingWithState:&v56 objects:v75 count:16];
        if (!v26)
        {
LABEL_58:

          v42 = [v54 copy];
          sub_100061E6C(v47);

          goto LABEL_59;
        }

        goto LABEL_36;
      }
    }
  }

  v8 = cps_session_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100062A0C();
  }

  sub_10005E3C0(a1);
LABEL_59:
  os_activity_scope_leave(&state);

  v7 = v48;
LABEL_60:
}

void sub_10000EFF4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "incoming calls session/handle get auth info response", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    if (v9)
    {
      v11 = cps_session_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062A0C();
      }

      sub_10005E3C0(a1);
    }

    else
    {
      v12 = [[CDIncomingCallsGetAuthInfoResponse alloc] initWithRapportDictionary:v7];
      v13 = cps_session_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received get auth info response: %@", buf, 0xCu);
      }

      v14 = [(CDIncomingCallsGetAuthInfoResponse *)v12 deviceIdentifier];
      v15 = sub_100062034(a1, v12);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000F2C4;
      v18[3] = &unk_10008A030;
      v18[4] = a1;
      v16 = v14;
      v19 = v16;
      [v15 addActionWithIdentifier:@"Continue" title:@"CONTINUE_BUTTON" flags:1 handler:v18];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000621A4;
      v17[3] = &unk_100089E20;
      v17[4] = a1;
      [v15 addActionWithIdentifier:@"Cancel" title:@"CANCEL_BUTTON" flags:1 handler:v17];
      sub_10005EE18(a1, v15, 0, 0);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10000F2C4(uint64_t a1)
{
  v2 = cps_session_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received notification action: continue", buf, 2u);
  }

  [*(*(a1 + 32) + 48) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  if ((+[TUCallCapabilities accountsSupportSecondaryCalling]& 1) == 0)
  {
    v11 = cps_session_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100062DB0();
    }

    v5 = objc_alloc_init(CUUserAlert);
    v12 = [NSBundle bundleWithIdentifier:@"com.apple.CompanionNotifications"];
    [v5 setLocalizationBundle:v12];

    [v5 setTitleKey:@"INCOMING_CALLS_APPLE_ACCOUNT_ALERT_TITLE"];
    [v5 setSubtitleKey:@"INCOMING_CALLS_APPLE_ACCOUNT_ALERT_BODY"];
    [v5 setDefaultButtonTitleKey:@"INCOMING_CALLS_APPLE_ACCOUNT_ALERT_BUTTON_TITLE"];
    [v5 activateWithCompletion:&stru_10008A5E0];
    v7 = *(a1 + 32);
    v8 = CPSErrorDomain;
    v27 = NSDebugDescriptionErrorKey;
    v28 = @"Failed to enable Incoming Calls: Apple Account mismatch for FaceTime.";
    v9 = &v28;
    v10 = &v27;
    goto LABEL_11;
  }

  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.NeighborhoodActivityConduitService"];
  if (!v5)
  {
    v6 = cps_session_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100062DEC();
    }

    v7 = *(a1 + 32);
    v8 = CPSErrorDomain;
    v23 = NSDebugDescriptionErrorKey;
    v24 = @"Failed to add device identifier: no defaults";
    v9 = &v24;
    v10 = &v23;
LABEL_11:
    v13 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1, v23, v24];
    v14 = [NSError errorWithDomain:v8 code:100 userInfo:v13];
    sub_1000620E4(v7, v14);

    goto LABEL_20;
  }

  v15 = [NSMutableArray alloc];
  v16 = [v5 arrayForKey:@"incomingCallBannerEnabledDevices"];
  v17 = [v15 initWithArray:v16];

  v18 = [v17 containsObject:*(a1 + 40)];
  v19 = cps_session_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v21 = *(a1 + 40);
      *buf = 138412290;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device identifier already exists in the enabled devices list: {identifier=%@}", buf, 0xCu);
    }
  }

  else
  {
    if (v20)
    {
      v22 = *(a1 + 40);
      *buf = 138412290;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Adding new device identifier to the enabled devices list. {identifier=%@}", buf, 0xCu);
    }

    [v17 addObject:*(a1 + 40)];
    [v5 setObject:v17 forKey:@"incomingCallBannerEnabledDevices"];
  }

  sub_1000620E4(*(a1 + 32), 0);
LABEL_20:
}

void sub_10000F660(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = cps_session_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100062E28();
    }
  }
}

void sub_10000F910(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000F944(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

id sub_10000F9B8(uint64_t a1)
{

  return [v1 setAppleAccountToken:a1];
}

void sub_10000F9D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_10000FA08(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

BOOL sub_10000FA34(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_10000FA58()
{

  return objc_opt_isKindOfClass();
}

id sub_10000FA74()
{

  return [v1 setNonce:v0];
}

id sub_10000FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 setDeviceFlags:a1];
}

id sub_10000FAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 setError:v10];
}

BOOL sub_10000FADC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_10000FB48(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x16u);
}

id sub_10000FB68(void *a1, const char *a2)
{

  return [a1 setError:v2];
}

id sub_10000FCB8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  return objc_opt_self();
}

void sub_10000FDA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    v3 = *(a1 + 40);
LABEL_4:
    v4 = NSErrorWithOSStatusF();
    (*(v3 + 16))(v3, v4);

    v5 = *(a1 + 32);

    sub_100062E90(v5);
    return;
  }

  v3 = *(a1 + 40);
  if (*(v2 + 49) == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 40);

  sub_100062FE4(v2, v6);
}

void sub_10000FEE0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = cps_daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10006368C(v2, v3);
  }
}

void sub_100010314(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, 3, 0);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
  }
}

void sub_1000106E8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), 0);
    v3 = *(a1 + 32);
    v4 = *(v3 + 152);
    *(v3 + 152) = 0;
  }
}

void sub_1000107E8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 152);
    *(v3 + 152) = 0;
  }
}

uint64_t sub_100010A94(uint64_t result)
{
  v2 = *(v1 + 40);
  v3 = *(result + 16);
  return result;
}

void sub_100010AD0()
{
  v2 = *(v0 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;
}

id sub_100010C78()
{
  if (qword_10009C038[0] != -1)
  {
    sub_1000637D0();
  }

  v1 = qword_10009C030;

  return v1;
}

_BYTE *sub_100010D58(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[9] & 1) == 0)
  {
    return [result _activated];
  }

  return result;
}

void sub_100010F48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100010C78();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000637E4(v3, v5);
    }

    [*(*(a1 + 32) + 16) invalidate];
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Rapport discovery started.", v8, 2u);
    }

    [*(a1 + 32) _startDiscoveryTimer];
  }
}

id sub_1000113C4(uint64_t a1)
{
  v2 = sub_100010C78();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Rapport discovery timer fired.", v4, 2u);
  }

  return [*(a1 + 32) _invalidated];
}

void sub_100011508(id a1)
{
  qword_10009C030 = os_log_create("CompanionServices", "CDRapportDiscovery");

  _objc_release_x1();
}

_BYTE *sub_100011638(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[9] & 1) == 0)
  {
    return [result _activated];
  }

  return result;
}

void sub_10001177C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100011798(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && (WeakRetained[9] & 1) == 0)
  {
    [WeakRetained _handleEvent:v5];
  }
}

id sub_1000129F0(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v1 = [NSKeyedArchiver archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v4];
    v2 = v4;
    if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000638D4(v2);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_100017500(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  CFDataGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  if (v8)
  {
    v12 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v8 error:&v12];
    v10 = v12;
    if (v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063954(v10);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

_BYTE *sub_100017FD4(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[41] & 1) == 0)
  {
    return [result _activated];
  }

  return result;
}

void sub_1000189EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

void sub_100018E38(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "incoming calls session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v27.opaque[0] = 0;
    v27.opaque[1] = 0;
    os_activity_scope_enter(v10, &v27);
    v11 = [[CDGetInfoRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received get auth info request: %@", buf, 0xCu);
    }

    v13 = [a1 request];
    v14 = [v13 appleAccountAltDSID];
    v15 = v14 == 0;

    if (v15 || ([(CDGetInfoRequest *)v11 appleAccountToken], v16 = objc_claimAutoreleasedReturnValue(), [(CDGetInfoRequest *)v11 nonce], v17 = objc_claimAutoreleasedReturnValue(), v18 = sub_1000639D4(a1, v16, v17), v17, v16, (v18 & 1) != 0))
    {
      v19 = objc_alloc_init(CDIncomingCallsGetAuthInfoResponse);
      v20 = GestaltCopyAnswer();
      [(CDIncomingCallsGetAuthInfoResponse *)v19 setDeviceName:v20];

      v21 = [a1 request];
      v22 = [v21 deviceIdentifier];

      v23 = [v22 length];
      v24 = v22;
      if (!v23)
      {
        v24 = GestaltCopyAnswer();
      }

      [(CDIncomingCallsGetAuthInfoResponse *)v19 setDeviceIdentifier:v24];
      if (!v23)
      {
      }

      v25 = [(CDIncomingCallsGetAuthInfoResponse *)v19 makeRapportDictionary];
      (*(v9 + 2))(v9, v25, 0, 0);
    }

    else
    {
      v26 = cps_session_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100063B34(v26);
      }

      v19 = NSErrorF();
      (*(v9 + 2))(v9, 0, 0, v19);
    }

    os_activity_scope_leave(&v27);
  }
}

void sub_10001915C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "incoming calls session/handle did finish auth request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v18.opaque[0] = 0;
    v18.opaque[1] = 0;
    os_activity_scope_enter(v10, &v18);
    v11 = [[CDIncomingCallsDidFinishAuthRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received did finish auth request: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(CPSDevice);
    v14 = [(CDIncomingCallsDidFinishAuthRequest *)v11 deviceName];
    [v13 setName:v14];

    v15 = [(CDIncomingCallsDidFinishAuthRequest *)v11 deviceModel];
    [v13 setModel:v15];

    [v13 setFlags:{-[CDIncomingCallsDidFinishAuthRequest deviceFlags](v11, "deviceFlags")}];
    v16 = [(CDIncomingCallsDidFinishAuthRequest *)v11 error];
    LODWORD(v15) = v16 == 0;

    if (v15)
    {
      v17 = objc_alloc_init(CPSIncomingCallsResponse);
      [a1 _notifySessionFinished:v17];
      [a1 _invalidated];
    }

    else
    {
      v17 = [(CDIncomingCallsDidFinishAuthRequest *)v11 error];
      [a1 _notifySessionFailed:v17];
    }

    (*(v9 + 2))(v9, 0, 0, 0);
    os_activity_scope_leave(&v18);
  }
}

void sub_1000196FC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "learn more session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v19.opaque[0] = 0;
    v19.opaque[1] = 0;
    os_activity_scope_enter(v10, &v19);
    v11 = [[CDGetInfoRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received get auth info request: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(CDLearnMoreGetAuthInfoResponse);
    v14 = GestaltCopyAnswer();
    [(CDLearnMoreGetAuthInfoResponse *)v13 setDeviceClass:v14];

    v15 = GestaltCopyAnswer();
    [(CDLearnMoreGetAuthInfoResponse *)v13 setDeviceName:v15];

    v16 = [a1 request];
    v17 = [v16 URL];
    [(CDLearnMoreGetAuthInfoResponse *)v13 setURL:v17];

    v18 = [(CDLearnMoreGetAuthInfoResponse *)v13 makeRapportDictionary];
    (*(v9 + 2))(v9, v18, 0, 0);

    os_activity_scope_leave(&v19);
  }
}

void sub_100019930(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "learn more session/handle did finish auth request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v17.opaque[0] = 0;
    v17.opaque[1] = 0;
    os_activity_scope_enter(v10, &v17);
    v11 = [[CDLearnMoreDidFinishRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received did finish auth request: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(CPSDevice);
    v14 = [(CDLearnMoreDidFinishRequest *)v11 deviceName];
    [v13 setName:v14];

    v15 = [(CDLearnMoreDidFinishRequest *)v11 deviceModel];
    [v13 setModel:v15];

    [v13 setFlags:{-[CDLearnMoreDidFinishRequest deviceFlags](v11, "deviceFlags")}];
    [a1 _notifyDeviceAcceptedNotification:v13];
    v16 = objc_alloc_init(CPSLearnMoreResponse);
    [a1 _notifySessionFinished:v16];
    (*(v9 + 2))(v9, 0, 0, 0);

    os_activity_scope_leave(&v17);
  }
}

void sub_10001A3F8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "restricted access session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v25.opaque[0] = 0;
    v25.opaque[1] = 0;
    os_activity_scope_enter(v10, &v25);
    v11 = [[CDGetInfoRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received get auth info request: %@", buf, 0xCu);
    }

    v13 = [a1 request];
    v14 = [v13 approversAppleAccountAltDSIDs];
    v15 = v14 == 0;

    if (v15 || ([(CDGetInfoRequest *)v11 appleAccountToken], v16 = objc_claimAutoreleasedReturnValue(), [(CDGetInfoRequest *)v11 nonce], v17 = objc_claimAutoreleasedReturnValue(), v18 = sub_100063B78(a1, v16, v17), v17, v16, (v18 & 1) != 0))
    {
      v19 = objc_alloc_init(CDRestrictedAccessGetAuthInfoResponse);
      v20 = GestaltCopyAnswer();
      [(CDRestrictedAccessGetAuthInfoResponse *)v19 setDeviceClass:v20];

      v21 = GestaltCopyAnswer();
      [(CDRestrictedAccessGetAuthInfoResponse *)v19 setDeviceName:v21];

      v22 = [a1 request];
      -[CDRestrictedAccessGetAuthInfoResponse setRestrictionType:](v19, "setRestrictionType:", [v22 restrictionType]);

      v23 = [(CDRestrictedAccessGetAuthInfoResponse *)v19 makeRapportDictionary];
      (*(v9 + 2))(v9, v23, 0, 0);
    }

    else
    {
      v24 = cps_session_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100063D80(v24);
      }

      v19 = NSErrorF();
      (*(v9 + 2))(v9, 0, 0, v19);
    }

    os_activity_scope_leave(&v25);
  }
}

void sub_10001A700(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "restricted access session/handle did finish auth request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v19.opaque[0] = 0;
    v19.opaque[1] = 0;
    os_activity_scope_enter(v10, &v19);
    v11 = [[CDRestrictedAccesssDidFinishAuthRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received did finish auth request: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(CPSDevice);
    v14 = [(CDRestrictedAccesssDidFinishAuthRequest *)v11 deviceName];
    [v13 setName:v14];

    v15 = [(CDRestrictedAccesssDidFinishAuthRequest *)v11 deviceModel];
    [v13 setModel:v15];

    [v13 setFlags:{-[CDRestrictedAccesssDidFinishAuthRequest deviceFlags](v11, "deviceFlags")}];
    v16 = [v13 model];
    v17 = GestaltProductTypeStringToDeviceClass() == 6;

    if (v17)
    {
      [a1 _notifyDeviceAcceptedNotification:v13];
    }

    if ([(CDRestrictedAccesssDidFinishAuthRequest *)v11 isApproved])
    {
      v18 = objc_alloc_init(CPSRestrictedAccessResponse);
      [a1 _notifySessionFinished:v18];
    }

    else
    {
      v18 = [(CDRestrictedAccesssDidFinishAuthRequest *)v11 error];
      [a1 _notifySessionFailed:v18];
    }

    (*(v9 + 2))(v9, 0, 0, 0);
    os_activity_scope_leave(&v19);
  }
}

id sub_10001AC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

void sub_10001ADC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[33] == 1)
  {
    v3 = *(a1 + 40);
LABEL_4:
    v5 = NSErrorF();
    (*(v3 + 16))(v3, v5);

    return;
  }

  v3 = *(a1 + 40);
  if (v2[34] == 1)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 40);

  sub_100063DC4(v2, v4);
}

void sub_10001AF18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    (*(*(a1 + 40) + 16))();
    v4 = *(a1 + 32);

    [v4 _invalidated];
  }

  else
  {
    [*(a1 + 32) _sessionActivated];
    [*(a1 + 32) _presentViewService];
    sub_100063E44(*(a1 + 32), *(a1 + 40));
    sub_10006406C(*(a1 + 32));
    v5 = *(a1 + 32);

    sub_1000640CC(v5);
  }
}

void sub_10001B080(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "auth session/handle get notif info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v23.opaque[0] = 0;
    v23.opaque[1] = 0;
    os_activity_scope_enter(v10, &v23);
    v11 = [v8 objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
    v12 = [a1 _notifyDeviceIDSIdentifier];
    v13 = v12;
    if (v12 && v11 && ([v12 isEqualToString:v11] & 1) == 0)
    {
      v14 = NSErrorF();
      v22 = cps_session_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Rejecting get notif info request from device with IDS ID %@", buf, 0xCu);
      }

      (*(v9 + 2))(v9, 0, 0, v14);
    }

    else
    {
      v14 = [[CDGetInfoRequest alloc] initWithRapportDictionary:v7];
      v15 = cps_session_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received get notif info request: %@", buf, 0xCu);
      }

      v16 = [a1 _responseForGetNotifInfoRequest:v14];
      if (v16)
      {
        v17 = GestaltCopyAnswer();
        [(CDGetInfoRequest *)v16 setDeviceClass:v17];

        v18 = GestaltCopyAnswer();
        [(CDGetInfoRequest *)v16 setDeviceName:v18];

        v19 = cps_session_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v16;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending get notif info response: %@", buf, 0xCu);
        }

        v20 = [(CDGetInfoRequest *)v16 makeRapportDictionary];
        (*(v9 + 2))(v9, v20, 0, 0);
      }

      else
      {
        v20 = NSErrorF();
        v21 = cps_session_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100064308(v20, v21);
        }

        (*(v9 + 2))(v9, 0, 0, v20);
      }
    }

    os_activity_scope_leave(&v23);
  }
}

void sub_10001B44C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = _os_activity_create(&_mh_execute_header, "auth session/handle did tap notif event", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v15.opaque[0] = 0;
    v15.opaque[1] = 0;
    os_activity_scope_enter(v7, &v15);
    v8 = [[CDDeviceUpdateEvent alloc] initWithRapportDictionary:v5];
    v9 = cps_session_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received did tap notif event: %@", buf, 0xCu);
    }

    v10 = [(CDDeviceUpdateEvent *)v8 deviceModel];
    v11 = GestaltProductTypeStringToDeviceClass() == 6;

    if (!v11)
    {
      [a1 _stopAdvertisingNearbyAction];
    }

    v12 = objc_alloc_init(CPSDevice);
    [v12 setFlags:{-[CDDeviceUpdateEvent deviceFlags](v8, "deviceFlags")}];
    v13 = [(CDDeviceUpdateEvent *)v8 deviceModel];
    [v12 setModel:v13];

    v14 = [(CDDeviceUpdateEvent *)v8 deviceName];
    [v12 setName:v14];

    [a1 _notifyDeviceAcceptedNotification:v12];
    os_activity_scope_leave(&v15);
  }
}

void sub_10001B64C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "auth session/handle get auth type request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v17.opaque[0] = 0;
    v17.opaque[1] = 0;
    os_activity_scope_enter(v10, &v17);
    v11 = cps_session_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received get auth type request.", buf, 2u);
    }

    v12 = objc_alloc_init(CDGetAuthTypeResponse);
    v13 = [a1 request];
    v14 = [v13 authType];

    [(CDGetAuthTypeResponse *)v12 setAuthType:v14];
    -[CDGetAuthTypeResponse setSandboxPurchase:](v12, "setSandboxPurchase:", [a1 _isSandboxPurchase]);
    -[CDGetAuthTypeResponse setAuthFlags:](v12, "setAuthFlags:", [a1 _authFlags]);
    v15 = cps_session_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending get auth type response: %@", buf, 0xCu);
    }

    v16 = [(CDGetAuthTypeResponse *)v12 makeRapportDictionary];
    (*(v9 + 2))(v9, v16, 0, 0);

    os_activity_scope_leave(&v17);
  }
}

void sub_10001B878(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = _os_activity_create(&_mh_execute_header, "auth session/handle did start auth event", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v13.opaque[0] = 0;
    v13.opaque[1] = 0;
    os_activity_scope_enter(v7, &v13);
    v8 = [[CDDeviceUpdateEvent alloc] initWithRapportDictionary:v5];
    v9 = cps_session_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received did start auth event: %@", buf, 0xCu);
    }

    v10 = objc_alloc_init(CPSDevice);
    [v10 setFlags:{-[CDDeviceUpdateEvent deviceFlags](v8, "deviceFlags")}];
    v11 = [(CDDeviceUpdateEvent *)v8 deviceModel];
    [v10 setModel:v11];

    v12 = [(CDDeviceUpdateEvent *)v8 deviceName];
    [v10 setName:v12];

    [a1 _notifyDeviceStartedAuthentication:v10];
    os_activity_scope_leave(&v13);
  }
}

void sub_10001BA44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    (*(*(a1 + 40) + 16))();
    v4 = *(a1 + 32);

    [v4 _invalidated];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    sub_1000641F4(v5, v6);
  }
}

id sub_10001BAAC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 16);
  if (a2)
  {
    v3();
    v4 = *(a1 + 32);

    return [v4 _invalidated];
  }

  else
  {

    return (v3)();
  }
}

void sub_10001C108(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10001C24C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "sharing session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v19.opaque[0] = 0;
    v19.opaque[1] = 0;
    os_activity_scope_enter(v10, &v19);
    v11 = [[CDGetInfoRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received get auth info request: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(CDSharingGetAuthInfoResponse);
    v14 = GestaltCopyAnswer();
    [(CDSharingGetAuthInfoResponse *)v13 setDeviceClass:v14];

    v15 = GestaltCopyAnswer();
    [(CDSharingGetAuthInfoResponse *)v13 setDeviceName:v15];

    v16 = [a1 request];
    v17 = [v16 requestData];
    [(CDSharingGetAuthInfoResponse *)v13 setRequestData:v17];

    v18 = [(CDSharingGetAuthInfoResponse *)v13 makeRapportDictionary];
    (*(v9 + 2))(v9, v18, 0, 0);

    os_activity_scope_leave(&v19);
  }
}

void sub_10001C480(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "sharing session/handle did finish auth request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v15.opaque[0] = 0;
    v15.opaque[1] = 0;
    os_activity_scope_enter(v10, &v15);
    v11 = [[CDSharingDidFinishAuthRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received did finish auth request: %@", buf, 0xCu);
    }

    v13 = [(CDSharingDidFinishAuthRequest *)v11 error];

    if (v13)
    {
      v14 = [(CDSharingDidFinishAuthRequest *)v11 error];
      [a1 _notifySessionFailed:v14];
    }

    else
    {
      v14 = objc_alloc_init(CPSSharingResponse);
      [a1 _notifySessionFinished:v14];
    }

    (*(v9 + 2))(v9, 0, 0, 0);
    os_activity_scope_leave(&v15);
  }
}

void sub_10001C940(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "store authentication session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v29.opaque[0] = 0;
    v29.opaque[1] = 0;
    os_activity_scope_enter(v10, &v29);
    v11 = [[CDGetInfoRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received get auth info request: %@", buf, 0xCu);
    }

    v13 = [(CDGetInfoRequest *)v11 storeAccountToken];
    v14 = [(CDGetInfoRequest *)v11 nonce];
    v15 = sub_1000643F8(a1, v13, v14);

    if (v15)
    {
      v16 = objc_alloc_init(CDStoreAuthenticationGetAuthInfoResponse);
      [(CDStoreAuthenticationGetAuthInfoResponse *)v16 setAuthenticationRequest:a1[15]];
      v17 = GestaltCopyAnswer();
      [(CDStoreAuthenticationGetAuthInfoResponse *)v16 setDeviceClass:v17];

      v18 = GestaltCopyAnswer();
      [(CDStoreAuthenticationGetAuthInfoResponse *)v16 setDeviceName:v18];

      v19 = cps_session_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending get auth info response: %@", buf, 0xCu);
      }

      v20 = [(CDStoreAuthenticationGetAuthInfoResponse *)v16 makeRapportDictionary];
      (*(v9 + 2))(v9, v20, 0, 0);
    }

    else
    {
      v21 = cps_session_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10006454C(v21, v22, v23, v24, v25, v26, v27, v28);
      }

      v16 = NSErrorF();
      (*(v9 + 2))(v9, 0, 0, v16);
    }

    os_activity_scope_leave(&v29);
  }
}

void sub_10001CC5C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "store authentication session/handle did finish auth request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v26.opaque[0] = 0;
    v26.opaque[1] = 0;
    os_activity_scope_enter(v10, &v26);
    v11 = [[CDStoreAuthenticationDidFinishAuthRequest alloc] initWithRapportDictionary:v7];
    v12 = objc_alloc_init(CPSDevice);
    v13 = [(CDStoreAuthenticationDidFinishAuthRequest *)v11 deviceName];
    [v12 setName:v13];

    v14 = [(CDStoreAuthenticationDidFinishAuthRequest *)v11 deviceModel];
    [v12 setModel:v14];

    [v12 setFlags:{-[CDStoreAuthenticationDidFinishAuthRequest deviceFlags](v11, "deviceFlags")}];
    v15 = [v12 model];
    v16 = GestaltProductTypeStringToDeviceClass() == 6;

    if (v16)
    {
      [a1 _notifyDeviceAcceptedNotification:v12];
    }

    v17 = cps_session_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received did finish auth request: %@", buf, 0xCu);
    }

    v18 = [(CDStoreAuthenticationDidFinishAuthRequest *)v11 authenticationResult];
    v19 = v18 == 0;

    if (v19)
    {
      v23 = [(CDStoreAuthenticationDidFinishAuthRequest *)v11 error];
      [a1 _notifySessionFailed:v23];
    }

    else
    {
      v20 = [v8 bs_safeStringForKey:RPOptionSenderModelID];
      v21 = [v8 bs_safeNumberForKey:RPOptionStatusFlags];
      v22 = [v21 unsignedIntegerValue];
      if (CPSMetrics)
      {
        [CPSMetrics sendProviderDeviceUsageEvent:v20, v22];
      }

      else
      {
      }

      v24 = [CPSStoreAuthenticationResponse alloc];
      v25 = [(CDStoreAuthenticationDidFinishAuthRequest *)v11 authenticationResult];
      v23 = [v24 initWithAuthenticationResult:v25];

      [a1 _notifySessionFinished:v23];
    }

    (*(v9 + 2))(v9, 0, 0, 0);
    [a1 _invalidated];

    os_activity_scope_leave(&v26);
  }
}

void sub_10001D0F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10001D340(void *a1, void *a2, void *a3, void *a4)
{
  v30 = a2;
  v29 = a3;
  v7 = a4;
  if (a1)
  {
    v8 = _os_activity_create(&_mh_execute_header, "store purchase session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = [[CDGetInfoRequest alloc] initWithRapportDictionary:v30];
    v10 = cps_session_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received get auth info request: %@", buf, 0xCu);
    }

    v11 = [(CDGetInfoRequest *)v9 storeAccountToken];
    v12 = [(CDGetInfoRequest *)v9 nonce];
    v13 = sub_1000645BC(a1, v11, v12);

    if (v13)
    {
      v14 = objc_alloc_init(CDStorePurchaseGetAuthInfoResponse);
      v15 = [(CDGetInfoRequest *)v9 deviceBuildVersion];
      v28 = [BSBuildVersion fromString:v15];

      v16 = [v29 objectForKeyedSubscript:RPOptionSenderModelID];
      LOBYTE(v15) = [v16 hasPrefix:@"iPhone"];

      if (((v15 & 1) != 0 || (v17 = v16, v18 = [v17 hasPrefix:@"iPad"], v17, v18)) && objc_msgSend(v28, "majorBuildNumber", v28) <= 20)
      {
        v19 = cps_session_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "iOS device requires legacy purchase request", buf, 2u);
        }

        v20 = +[AMSDelegatePurchaseTask bagSubProfile];
        v21 = +[AMSDelegatePurchaseTask bagSubProfileVersion];
        v22 = [AMSBag bagForProfile:v20 profileVersion:v21];

        v23 = [[AMSDelegatePurchasePaymentDialogTask alloc] initWithDelegatePurchaseRequest:a1[15] bag:v22 andDesignVersion:&off_10008DC98];
        v24 = cps_session_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Loading legacy purchase request.", buf, 2u);
        }

        v25 = [v23 performTask];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10001DCA4;
        v31[3] = &unk_10008A7F8;
        v31[4] = a1;
        v33 = v7;
        v32 = v14;
        [v25 addFinishBlock:v31];
      }

      else
      {
        [(CDStorePurchaseGetAuthInfoResponse *)v14 setPurchaseRequest:a1[15], v28];
        v27 = cps_session_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v14;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sending get auth info response: %@", buf, 0xCu);
        }

        v22 = [(CDStorePurchaseGetAuthInfoResponse *)v14 makeRapportDictionary];
        (*(v7 + 2))(v7, v22, 0, 0);
      }
    }

    else
    {
      v26 = cps_session_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100064710(v26);
      }

      v14 = NSErrorF();
      (*(v7 + 2))(v7, 0, 0, v14);
    }

    os_activity_scope_leave(&state);
  }
}

void sub_10001D868(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "store purchase session/handle did finish auth request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v26.opaque[0] = 0;
    v26.opaque[1] = 0;
    os_activity_scope_enter(v10, &v26);
    v11 = [[CDStorePurchaseDidFinishAuthRequest alloc] initWithRapportDictionary:v7];
    v12 = objc_alloc_init(CPSDevice);
    v13 = [(CDStorePurchaseDidFinishAuthRequest *)v11 deviceName];
    [v12 setName:v13];

    v14 = [(CDStorePurchaseDidFinishAuthRequest *)v11 deviceModel];
    [v12 setModel:v14];

    [v12 setFlags:{-[CDStorePurchaseDidFinishAuthRequest deviceFlags](v11, "deviceFlags")}];
    v15 = [v12 model];
    v16 = GestaltProductTypeStringToDeviceClass() == 6;

    if (v16)
    {
      [a1 _notifyDeviceAcceptedNotification:v12];
    }

    v17 = cps_session_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received did finish auth request: %@", buf, 0xCu);
    }

    v18 = [(CDStorePurchaseDidFinishAuthRequest *)v11 purchaseResult];
    v19 = v18 == 0;

    if (v19)
    {
      v23 = [(CDStorePurchaseDidFinishAuthRequest *)v11 error];
      [a1 _notifySessionFailed:v23];
    }

    else
    {
      v20 = [v8 bs_safeStringForKey:RPOptionSenderModelID];
      v21 = [v8 bs_safeNumberForKey:RPOptionStatusFlags];
      v22 = [v21 unsignedIntegerValue];
      if (CPSMetrics)
      {
        [CPSMetrics sendProviderDeviceUsageEvent:v20, v22];
      }

      else
      {
      }

      v24 = [CPSStorePurchaseResponse alloc];
      v25 = [(CDStorePurchaseDidFinishAuthRequest *)v11 purchaseResult];
      v23 = [v24 initWithPurchaseResult:v25];

      [a1 _notifySessionFinished:v23];
    }

    (*(v9 + 2))(v9, 0, 0, 0);
    [a1 _invalidated];

    os_activity_scope_leave(&v26);
  }
}

void sub_10001DCA4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001DDA4;
  v10[3] = &unk_10008A310;
  v11 = v6;
  v14 = a1[6];
  v12 = v5;
  v13 = a1[5];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_10001DDA4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = cps_session_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100064754(v2, v5);
    }

    v6 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got legacy purchase request: %@", &v12, 0xCu);
    }

    [*(a1 + 48) setPurchaseRequest:*(a1 + 40)];
    v8 = cps_session_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending get auth info response: %@", &v12, 0xCu);
    }

    v10 = *(a1 + 56);
    v11 = [*(a1 + 48) makeRapportDictionary];
    (*(v10 + 16))(v10, v11, 0, 0);
  }
}

void sub_10001E0A0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "system auth session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v24.opaque[0] = 0;
    v24.opaque[1] = 0;
    os_activity_scope_enter(v10, &v24);
    v11 = [[CDGetInfoRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received get auth info request: %@", buf, 0xCu);
    }

    v13 = [a1 request];
    v14 = [v13 appleAccountAltDSID];
    v15 = v14 == 0;

    if (v15 || ([(CDGetInfoRequest *)v11 appleAccountToken], v16 = objc_claimAutoreleasedReturnValue(), [(CDGetInfoRequest *)v11 nonce], v17 = objc_claimAutoreleasedReturnValue(), v18 = sub_1000639D4(a1, v16, v17), v17, v16, (v18 & 1) != 0))
    {
      v19 = objc_alloc_init(CDSystemAuthenticationGetAuthInfoResponse);
      v20 = GestaltCopyAnswer();
      [(CDSystemAuthenticationGetAuthInfoResponse *)v19 setDeviceClass:v20];

      v21 = GestaltCopyAnswer();
      [(CDSystemAuthenticationGetAuthInfoResponse *)v19 setDeviceName:v21];

      v22 = [(CDSystemAuthenticationGetAuthInfoResponse *)v19 makeRapportDictionary];
      (*(v9 + 2))(v9, v22, 0, 0);
    }

    else
    {
      v23 = cps_session_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100063B34(v23);
      }

      v19 = NSErrorF();
      (*(v9 + 2))(v9, 0, 0, v19);
    }

    os_activity_scope_leave(&v24);
  }
}

void sub_10001E37C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "system auth session/handle did finish auth request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v23.opaque[0] = 0;
    v23.opaque[1] = 0;
    os_activity_scope_enter(v10, &v23);
    v11 = [[CDSystemAuthenticationDidFinishAuthRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received did finish auth request: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(CPSDevice);
    v14 = [(CDSystemAuthenticationDidFinishAuthRequest *)v11 deviceName];
    [v13 setName:v14];

    v15 = [(CDSystemAuthenticationDidFinishAuthRequest *)v11 deviceModel];
    [v13 setModel:v15];

    [v13 setFlags:{-[CDSystemAuthenticationDidFinishAuthRequest deviceFlags](v11, "deviceFlags")}];
    v16 = [v13 model];
    v17 = GestaltProductTypeStringToDeviceClass() == 6;

    if (v17)
    {
      [a1 _notifyDeviceAcceptedNotification:v13];
    }

    if ([(CDSystemAuthenticationDidFinishAuthRequest *)v11 isEnabled])
    {
      v18 = [a1 request];
      +[CPSMetrics sendSystemSessionCompletedEvent:](CPSMetrics, "sendSystemSessionCompletedEvent:", [v18 service], 1);

      v19 = [v8 bs_safeStringForKey:RPOptionSenderModelID];
      v20 = [v8 bs_safeNumberForKey:RPOptionStatusFlags];
      v21 = [v20 unsignedIntegerValue];
      if (CPSMetrics)
      {
        [CPSMetrics sendProviderDeviceUsageEvent:v19, v21];
      }

      else
      {
      }

      v22 = objc_alloc_init(CPSSystemAuthenticationResponse);
      [a1 _notifySessionFinished:v22];
    }

    else
    {
      v22 = [(CDSystemAuthenticationDidFinishAuthRequest *)v11 error];
      sub_1000647D0(a1, v22);
      [a1 _notifySessionFailed:v22];
    }

    (*(v9 + 2))(v9, 0, 0, 0);
    os_activity_scope_leave(&v23);
  }
}

void sub_10001EE98(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "user defaults session/handle get auth info request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v26.opaque[0] = 0;
    v26.opaque[1] = 0;
    os_activity_scope_enter(v10, &v26);
    v11 = [[CDGetInfoRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received get auth info request: %@", buf, 0xCu);
    }

    v13 = [a1 request];
    v14 = [v13 appleAccountAltDSID];
    v15 = v14 == 0;

    if (v15 || ([(CDGetInfoRequest *)v11 appleAccountToken], v16 = objc_claimAutoreleasedReturnValue(), [(CDGetInfoRequest *)v11 nonce], v17 = objc_claimAutoreleasedReturnValue(), v18 = sub_1000639D4(a1, v16, v17), v17, v16, (v18 & 1) != 0))
    {
      [a1[15] invalidate];
      v19 = objc_alloc_init(CDUserDefaultsGetAuthInfoResponse);
      v20 = [a1 request];
      v21 = [v20 readInfo];
      [(CDUserDefaultsGetAuthInfoResponse *)v19 setReadInfo:v21];

      v22 = [a1 request];
      v23 = [v22 writeInfo];
      [(CDUserDefaultsGetAuthInfoResponse *)v19 setWriteInfo:v23];

      v24 = [(CDUserDefaultsGetAuthInfoResponse *)v19 makeRapportDictionary];
      (*(v9 + 2))(v9, v24, 0, 0);
    }

    else
    {
      v25 = cps_session_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100063B34(v25);
      }

      v19 = NSErrorF();
      (*(v9 + 2))(v9, 0, 0, v19);
    }

    os_activity_scope_leave(&v26);
  }
}

void sub_10001F19C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = _os_activity_create(&_mh_execute_header, "user defaults session/handle did finish auth request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v19.opaque[0] = 0;
    v19.opaque[1] = 0;
    os_activity_scope_enter(v10, &v19);
    v11 = [[CDUserDefaultsDidFinishAuthRequest alloc] initWithRapportDictionary:v7];
    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received did finish auth request: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(CPSDevice);
    v14 = [(CDUserDefaultsDidFinishAuthRequest *)v11 deviceName];
    [v13 setName:v14];

    v15 = [(CDUserDefaultsDidFinishAuthRequest *)v11 deviceModel];
    [v13 setModel:v15];

    [v13 setFlags:{-[CDUserDefaultsDidFinishAuthRequest deviceFlags](v11, "deviceFlags")}];
    v16 = [(CDUserDefaultsDidFinishAuthRequest *)v11 error];

    if (v16)
    {
      v17 = [(CDUserDefaultsDidFinishAuthRequest *)v11 error];
      [a1 _notifySessionFailed:v17];
    }

    else
    {
      v17 = objc_alloc_init(CPSUserDefaultsResponse);
      v18 = [(CDUserDefaultsDidFinishAuthRequest *)v11 values];
      [v17 setValues:v18];

      [a1 _notifySessionFinished:v17];
    }

    [a1 _invalidated];

    (*(v9 + 2))(v9, 0, 0, 0);
    os_activity_scope_leave(&v19);
  }
}

void sub_10001F56C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"CDRequesterUserDefaultsSession timed out."];
  v2 = CPSErrorMake();
  [v1 _notifySessionFailed:v2];
}

void sub_10001FFFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = cps_service_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100065014();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Started authentication session.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002077C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = cps_service_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100065104();
  }
}

void sub_100020958(id a1, NSError *a2)
{
  v2 = a2;
  v3 = cps_service_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100065104();
  }
}

void sub_100020B34(id a1, NSError *a2)
{
  v2 = a2;
  v3 = cps_service_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100065104();
  }
}

id sub_100020CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [a1 serviceConnection:v12 serviceClient:a10 startAuthenticationSessionWithRequest:v10 completionHandler:v11];
}

id sub_100020CFC(uint64_t a1, void *a2)
{

  return a2;
}

id sub_100020D18(void *a1)
{

  return [a1 serviceConnection:v1 serviceClient:v2 startAuthenticationSessionWithRequest:v3 completionHandler:v4];
}

id sub_100020D48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  return a4;
}

_BYTE *sub_100020E88(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[21] & 1) == 0)
  {
    return [result _activated];
  }

  return result;
}

void sub_100021154(id a1, int a2)
{
  v2 = cps_service_listener_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "System language changed. Exiting.", v3, 2u);
  }

  xpc_transaction_exit_clean();
}

uint64_t start()
{
  v0 = cps_daemon_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "The companion daemon is starting.", v9, 2u);
  }

  v1 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v2 = cps_daemon_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1000651FC(v2);
    }
  }

  [AMSEphemeralDefaults setPreferEphemeralURLSessions:1];
  [AMSEphemeralDefaults setSuppressEngagement:1];
  v3 = objc_alloc_init(CDProviderDaemon);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.companiond.main", v4);
  [(CDProviderDaemon *)v3 setDispatchQueue:v5];
  [(CDProviderDaemon *)v3 activate];
  v6 = +[_TtC10companiond13CPSDaemonShim shared];
  [v6 activate];

  objc_autoreleasePoolPop(v1);
  v7 = +[NSRunLoop currentRunLoop];
  [v7 run];

  return 0;
}

void sub_100022BB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&_mh_execute_header, "CompAuth/RapportClient/handleRequest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v10, &v14);
  if (*(a1 + 40) != 1 || ([v8 bs_safeNumberForKey:RPOptionStatusFlags], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "integerValue"), v11, (v12 & 0x80000) != 0))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000652A4();
    }

    v13 = NSErrorF();
    (*(v9 + 2))(v9, 0, 0, v13);
  }

  os_activity_scope_leave(&v14);
}

void sub_100022DE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _os_activity_create(&_mh_execute_header, "CompAuth/RapportClient/handleEvent", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v7, &v10);
  if (*(a1 + 40) != 1 || ([v6 bs_safeNumberForKey:RPOptionStatusFlags], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "integerValue"), v8, (v9 & 0x80000) != 0))
  {
    (*(*(a1 + 32) + 16))();
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000652A4();
  }

  os_activity_scope_leave(&v10);
}

id CDOpensAppIntentDispatcherProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDOpensAppIntentDispatcherProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDOpensAppIntentDispatcherProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id CDOpensAppIntentDispatcherProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDOpensAppIntentDispatcherProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100023294()
{
  v1[7] = v0;
  v2 = *(*(sub_100024EA8(&qword_10009AEE8, &qword_10006DC38) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v3 = sub_100024EA8(&qword_10009AEF0, &qword_10006DC40);
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v6 = type metadata accessor for IntentsServices.PayloadPrivacy();
  v1[12] = v6;
  v7 = *(v6 - 8);
  v1[13] = v7;
  v8 = *(v7 + 64) + 15;
  v1[14] = swift_task_alloc();
  v9 = *(*(sub_100024EA8(&qword_10009AEF8, &qword_10006DC48) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v10 = type metadata accessor for IntentsServices.DispatcherOptions();
  v1[16] = v10;
  v11 = *(v10 - 8);
  v1[17] = v11;
  v12 = *(v11 + 64) + 15;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100023488, 0, 0);
}

uint64_t sub_100023488()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v19 = v0[16];
  v20 = v0[8];
  v21 = v0[7];
  v7 = [objc_opt_self() defaultEnvironment];
  v0[5] = sub_1000254BC(0, &unk_10009AF00, LNEnvironment_ptr);
  v0[6] = &protocol witness table for LNEnvironment;
  v0[2] = v7;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v4 + 104))(v5, enum case for IntentsServices.PayloadPrivacy.default(_:), v6);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v8 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  v10 = v9;
  v0[19] = v8;
  (*(v2 + 8))(v1, v19);
  sub_100024EF0(v0 + 2);
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC10companiond24OpensAppIntentDispatcher_appIntentSpecification;
  v13 = type metadata accessor for AppIntentPerformOptions();
  (*(*(v13 - 8) + 56))(v20, 1, 1, v13);
  v14 = async function pointer to AppIntentDispatching.perform(_:options:delegate:)[1];
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1000236B0;
  v16 = v0[11];
  v17 = v0[8];

  return AppIntentDispatching.perform(_:options:delegate:)(v16, v21 + v12, v17, 0, 0, ObjectType, v10);
}

uint64_t sub_1000236B0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_10002556C(v4, &qword_10009AEE8, &qword_10006DC38);
  if (v0)
  {
    v5 = sub_1000238B8;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v5 = sub_100023810;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100023810()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v6 = v0[8];
  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000238B8()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v6 = v0[8];
  swift_unknownObjectRelease();

  v7 = v0[1];
  v8 = v0[21];

  return v7();
}

uint64_t sub_100023AD8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100023B80;

  return sub_100023294();
}

uint64_t sub_100023B80()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100023D08()
{
  v1 = OBJC_IVAR____TtC10companiond24OpensAppIntentDispatcher_appIntentSpecification;
  v2 = type metadata accessor for AppIntentSpecification();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

Swift::Int sub_100023DBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100023E30()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100023EDC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000257F4;

  return v7();
}

uint64_t sub_100023FC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000240AC;

  return v8();
}

uint64_t sub_1000240AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000241A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000251F8(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10002556C(v12, &qword_10009B150, &qword_10006DC50);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10002556C(a3, &qword_10009B150, &qword_10006DC50);

    return v23;
  }

LABEL_8:
  sub_10002556C(a3, &qword_10009B150, &qword_10006DC50);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10002448C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024584;

  return v7(a1);
}

uint64_t sub_100024584()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002467C(uint64_t a1, char *a2)
{
  v65 = a2;
  v2 = type metadata accessor for AppIntentRegistry();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  (__chkstk_darwin)();
  v60 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(sub_100024EA8(&qword_10009AF10, &unk_10006DCA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v61 = &v55 - v6;
  v7 = type metadata accessor for AppIntentSpecification();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  v9 = (__chkstk_darwin)();
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  v14 = type metadata accessor for ContinueOnRequestType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v55 - v20;
  v22 = type metadata accessor for JSONDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100025464();
  v25 = v66;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v25)
  {
    return v19;
  }

  v65 = v11;
  (*(v15 + 16))(v19, v21, v14);
  v26 = (*(v15 + 88))(v19, v14);
  if (v26 == enum case for ContinueOnRequestType.opensIntent(_:))
  {
    (*(v15 + 8))(v21, v14);
    (*(v15 + 96))(v19, v14);
    v27 = *(v64 + 32);
    v27(v13, v19, v7);
    v28 = type metadata accessor for OpensAppIntentDispatcher();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    v19 = swift_allocObject();
    v27((v19 + OBJC_IVAR____TtC10companiond24OpensAppIntentDispatcher_appIntentSpecification), v13, v7);
    return v19;
  }

  v59 = v21;
  v66 = 0;
  v57 = v7;
  v56 = v13;
  if (v26 == enum case for ContinueOnRequestType.entity(_:))
  {
    (*(v15 + 96))(v19, v14);
    v32 = *v19;
    v33 = *(v19 + 8);
    v34 = *(v19 + 16);
    v35 = *(v19 + 24);
    v36 = *(v19 + 40);
    v58 = *(v19 + 32);
    v37 = objc_allocWithZone(LNEntityIdentifier);
    v38 = String._bridgeToObjectiveC()();

    v39 = String._bridgeToObjectiveC()();

    v40 = [v37 initWithTypeIdentifier:v38 instanceIdentifier:v39];

    v41 = v60;
    static IntentsServices.localRegistry.getter();
    v67 = v40;
    sub_1000254BC(0, &qword_10009AF20, LNEntityIdentifier_ptr);
    sub_100025504();
    v42 = v61;
    v43 = v66;
    AppIntentRegistry.openIntent<A>(for:bundleIdentifier:factoidTitle:factoidCaption:)();
    v44 = v62;
    if (v43)
    {

      v45 = *(v44 + 8);
      v19 = v44 + 8;
      v45(v41, v63);
      (*(v15 + 8))(v59, v14);
    }

    else
    {
      v66 = 0;
      (*(v62 + 8))(v41, v63);

      v46 = v64;
      v19 = 1;
      v47 = v57;
      if ((*(v64 + 48))(v42, 1, v57) == 1)
      {
        sub_10002556C(v42, &qword_10009AF10, &unk_10006DCA0);
        sub_1000255CC();
        swift_allocError();
        *v48 = 1;
        swift_willThrow();

        (*(v15 + 8))(v59, v14);
      }

      else
      {
        (*(v15 + 8))(v59, v14);

        v49 = *(v46 + 32);
        v50 = v65;
        v49(v65, v42, v47);
        v51 = v56;
        v49(v56, v50, v47);
        v52 = type metadata accessor for OpensAppIntentDispatcher();
        v53 = *(v52 + 48);
        v54 = *(v52 + 52);
        v19 = swift_allocObject();
        v49((v19 + OBJC_IVAR____TtC10companiond24OpensAppIntentDispatcher_appIntentSpecification), v51, v47);
      }
    }

    return v19;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for OpensAppIntentDispatcher()
{
  result = qword_10009AE40;
  if (!qword_10009AE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024D48()
{
  result = type metadata accessor for AppIntentSpecification();
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

__n128 sub_100024DDC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100024DE8(uint64_t a1, int a2)
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

uint64_t sub_100024E08(uint64_t result, int a2, int a3)
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

void sub_100024E5C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100024EA8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100024EF0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100024F3C()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024F7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000240AC;

  return sub_100023AD8(v2, v3);
}

uint64_t sub_10002502C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000257F4;

  return sub_100023EDC(v2, v3, v5);
}

uint64_t sub_1000250EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002512C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000257F4;

  return sub_100023FC4(a1, v4, v5, v7);
}

uint64_t sub_1000251F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025268()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000252A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000257F4;

  return sub_10002448C(a1, v5);
}

uint64_t sub_100025358(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000240AC;

  return sub_10002448C(a1, v5);
}

uint64_t sub_100025410(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100025464()
{
  result = qword_10009AF18;
  if (!qword_10009AF18)
  {
    type metadata accessor for ContinueOnRequestType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AF18);
  }

  return result;
}

uint64_t sub_1000254BC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100025504()
{
  result = qword_10009AF28;
  if (!qword_10009AF28)
  {
    sub_1000254BC(255, &qword_10009AF20, LNEntityIdentifier_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AF28);
  }

  return result;
}

uint64_t sub_10002556C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100024EA8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000255CC()
{
  result = qword_10009AF30;
  if (!qword_10009AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AF30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CDOpensAppIntentDispatcherProviderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CDOpensAppIntentDispatcherProviderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100025798()
{
  result = qword_10009AF38;
  if (!qword_10009AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AF38);
  }

  return result;
}

id CDCSKClient.dispatchQueue.getter()
{
  v1 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CDCSKClient.dispatchQueue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CDCSKClient.setupNotNeededHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10companiond11CDCSKClient_setupNotNeededHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_100025AEC(v3);
  return v3;
}

uint64_t sub_100025AEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t CDCSKClient.setupNotNeededHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10companiond11CDCSKClient_setupNotNeededHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100025C1C(v6);
}

uint64_t sub_100025C1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id CDCSKClient.__allocating_init(bluetoothDevice:discoveryType:)(uint64_t a1, int a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC10companiond11CDCSKClient_invalidateDone] = 0;
  v6 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  sub_100025DE4();
  *&v5[v6] = static OS_dispatch_queue.main.getter();
  v7 = &v5[OBJC_IVAR____TtC10companiond11CDCSKClient_setupNotNeededHandler];
  *v7 = 0;
  v7[1] = 0;
  *&v5[OBJC_IVAR____TtC10companiond11CDCSKClient_bluetoothDevice] = a1;
  *&v5[OBJC_IVAR____TtC10companiond11CDCSKClient_discoveryType] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, "init");
}

id CDCSKClient.init(bluetoothDevice:discoveryType:)(uint64_t a1, int a2)
{
  v2[OBJC_IVAR____TtC10companiond11CDCSKClient_invalidateDone] = 0;
  v5 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  sub_100025DE4();
  *&v2[v5] = static OS_dispatch_queue.main.getter();
  v6 = &v2[OBJC_IVAR____TtC10companiond11CDCSKClient_setupNotNeededHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v2[OBJC_IVAR____TtC10companiond11CDCSKClient_bluetoothDevice] = a1;
  *&v2[OBJC_IVAR____TtC10companiond11CDCSKClient_discoveryType] = a2;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CDCSKClient();
  return objc_msgSendSuper2(&v8, "init");
}

unint64_t sub_100025DE4()
{
  result = qword_10009AD88;
  if (!qword_10009AD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009AD88);
  }

  return result;
}

uint64_t sub_100025F30()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025F68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100025FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100025FC4()
{
  result = qword_10009AFC8;
  if (!qword_10009AFC8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AFC8);
  }

  return result;
}

unint64_t sub_10002601C()
{
  result = qword_10009AFD8;
  if (!qword_10009AFD8)
  {
    sub_100026080(&qword_10009AFD0, &qword_10006DD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AFD8);
  }

  return result;
}

uint64_t sub_100026080(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100026138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC10companiond11CDCSKClient_dispatchQueue;
  swift_beginAccess();
  v16 = *&v3[v15];
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100025F68;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  v20 = v3;
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100025FC4();
  sub_100024EA8(&qword_10009AFD0, &qword_10006DD90);
  sub_10002601C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_1000263BC(uint64_t result)
{
  v1 = OBJC_IVAR____TtC10companiond11CDCSKClient_invalidateDone;
  if ((*(result + OBJC_IVAR____TtC10companiond11CDCSKClient_invalidateDone) & 1) == 0)
  {
    v2 = (result + OBJC_IVAR____TtC10companiond11CDCSKClient_setupNotNeededHandler);
    v3 = result;
    swift_beginAccess();
    v4 = *v2;
    v5 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    result = sub_100025C1C(v4);
    *(v3 + v1) = 1;
  }

  return result;
}

id CDCSKClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDCSKClient();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100026574()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000265D4()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009B010);
  sub_10002AF48(v0, qword_10009B010);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100026640(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon__osStateHandler) = 0;
  *(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon_remoteLLMServer) = 0;
  *(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon_requesterDaemon) = 0;
  *(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon_responderDaemon) = 0;
  *(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon__registeredXPCEventsBluetooth) = 0;
  v3 = OBJC_IVAR____TtC10companiond9CPSDaemon__startTicks;
  *(v1 + v3) = mach_absolute_time();
  *(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon__subDaemons) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon_xpcServer) = 0;
  v4 = OBJC_IVAR____TtC10companiond9CPSDaemon_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t sub_100026720()
{
  v1[15] = v0;
  v2 = *v0;
  v3 = type metadata accessor for DefaultStringInterpolation.PrintUtilsTimeDuration();
  v1[16] = v3;
  v4 = *(v3 - 8);
  v1[17] = v4;
  v5 = *(v4 + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_10002B6A0(&qword_10009B140, type metadata accessor for CPSDaemon);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v7;
  v1[20] = v6;

  return _swift_task_switch(sub_100026850, v7, v6);
}

uint64_t sub_100026850()
{
  v1 = v0[15];
  v2 = mach_absolute_time();
  v3 = *(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon__startTicks);
  v4 = v2 >= v3;
  result = v2 - v3;
  if (v4)
  {
    v7 = v0[17];
    v6 = v0[18];
    v9 = v0[15];
    v8 = v0[16];
    v10 = UpTicksToSeconds();
    _StringGuts.grow(_:)(21);
    v11._object = 0x8000000100072E30;
    v11._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v11);
    v0[14] = v10;
    (*(v7 + 104))(v6, enum case for DefaultStringInterpolation.PrintUtilsTimeDuration.duration(_:), v8);
    sub_10002B46C();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:)();
    (*(v7 + 8))(v6, v8);
    v0[10] = 0;
    v0[11] = 0xE000000000000000;
    v12._countAndFlagsBits = 10;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = OBJC_IVAR____TtC10companiond9CPSDaemon__subDaemons;
    swift_beginAccess();
    v14 = *(v9 + v13);
    v0[21] = v14;
    v15 = *(v14 + 16);
    v0[22] = v15;
    if (v15)
    {
      v0[23] = 0;

      sub_10002AF80(v16 + 32, (v0 + 2));
      v17 = v0[5];
      v18 = v0[6];
      sub_10002AFE4(v0 + 2, v17);
      v19 = *(v18 + 16);
      v26 = (v19 + *v19);
      v20 = v19[1];
      v21 = swift_task_alloc();
      v0[24] = v21;
      *v21 = v0;
      v21[1] = sub_100026B08;

      return v26(v17, v18);
    }

    else
    {
      v22 = v0[18];
      v24 = v0[10];
      v23 = v0[11];

      v25 = v0[1];

      return v25(v24, v23);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100026B08(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = (*v2)[24];
  v9 = *v2;
  v4[25] = a1;
  v4[26] = a2;

  sub_100024EF0(v4 + 2);
  v6 = v3[20];
  v7 = v3[19];

  return _swift_task_switch(sub_100026C40, v7, v6);
}

uint64_t sub_100026E3C()
{
  v1[2] = v0;
  v2 = *v0;
  v3 = *(*(sub_100024EA8(&qword_10009B150, &qword_10006DC50) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = sub_10002B6A0(&qword_10009B140, type metadata accessor for CPSDaemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v5;
  v1[6] = v4;

  return _swift_task_switch(sub_100026F4C, v5, v4);
}

uint64_t sub_100026F4C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[7] = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = v0[3];

      v4 = v0[1];

      return v4();
    }

    v15 = async function pointer to Task<>.value.getter[1];

    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    v14 = sub_10002714C;
  }

  else
  {
    v6 = v0[3];
    v7 = v0[4];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = v1;
    v9[3] = v7;
    v9[4] = v1;
    swift_retain_n();
    v10 = sub_100057714(0, 0, v6, &unk_10006DEF8, v9);
    v0[9] = v10;
    v11 = *(v1 + 16);
    *(v1 + 16) = v10;

    sub_10002AF38(v11);
    v12 = async function pointer to Task<>.value.getter[1];
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v14 = sub_1000272D4;
  }

  v13[1] = v14;

  return Task<>.value.getter();
}

uint64_t sub_10002714C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_10002726C, v4, v3);
}

uint64_t sub_10002726C()
{
  sub_10002AF38(v0[7]);
  v1 = v0[3];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000272D4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_1000273F4, v4, v3);
}

uint64_t sub_1000273F4()
{
  v1 = v0[9];

  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[2] = a4;
  v5 = *a4;
  sub_10002B6A0(&qword_10009B140, type metadata accessor for CPSDaemon);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[3] = v7;
  v4[4] = v6;

  return _swift_task_switch(sub_100027534, v7, v6);
}

uint64_t sub_100027534()
{
  if (qword_10009AD30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = sub_10002AF48(v1, qword_10009B010);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "activating", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100027684;
  v6 = v0[2];

  return sub_100027888();
}

uint64_t sub_100027684()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 32);
  v4 = *(v1 + 24);

  return _swift_task_switch(sub_1000277A4, v4, v3);
}

uint64_t sub_1000277A4()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = *(v2 + 16);
  *(v2 + 16) = 1;
  sub_10002AF38(v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "activated", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100027888()
{
  v1[34] = v0;
  v2 = *v0;
  v3 = type metadata accessor for CUEnvironmentValues();
  v1[35] = v3;
  v4 = *(v3 - 8);
  v1[36] = v4;
  v5 = *(v4 + 64) + 15;
  v1[37] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[38] = v6;
  v7 = *(v6 - 8);
  v1[39] = v7;
  v8 = *(v7 + 64) + 15;
  v1[40] = swift_task_alloc();
  sub_10002B6A0(&qword_10009B140, type metadata accessor for CPSDaemon);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[41] = v10;
  v1[42] = v9;

  return _swift_task_switch(sub_100027A14, v10, v9);
}

uint64_t sub_100027A14()
{
  v1 = *(v0 + 272);
  v2 = OBJC_IVAR____TtC10companiond9CPSDaemon__osStateHandler;
  if (!*(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon__osStateHandler))
  {
    CUEnvironmentValues.dispatchQueue.getter();
    if (qword_10009AD30 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 312);
    v3 = *(v0 + 320);
    v5 = *(v0 + 304);
    v6 = *(v0 + 272);
    v7 = sub_10002AF48(v5, qword_10009B010);
    (*(v4 + 16))(v3, v7, v5);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    v10 = type metadata accessor for CUOSStateHandlerAsync();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = _s14CoreUtilsSwift21CUOSStateHandlerAsyncC5title13dispatchQueue6logger05stateE0ACSS_So03OS_H13_queue_serialC2os6LoggerVSSSgyYaYbYActcfc();
    v14 = *(v1 + v2);
    *(v1 + v2) = v13;

    v1 = *(v0 + 272);
  }

  v15 = OBJC_IVAR____TtC10companiond9CPSDaemon_remoteLLMServer;
  if (!*(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon_remoteLLMServer))
  {
    v16 = OBJC_IVAR____TtC10companiond9CPSDaemon_environment;
    sub_10002B304();
    CUEnvironmentValues.subscript.getter();
    v17 = *(v0 + 272);
    if (*(v0 + 392) == 1)
    {
      v19 = *(v0 + 288);
      v18 = *(v0 + 296);
      v20 = *(v0 + 280);
      (*(v19 + 16))(v18, v1 + v16, v20);
      v21 = type metadata accessor for CPSRemoteLLMServer();
      *(v0 + 344) = v21;
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      v24 = swift_allocObject();
      *(v0 + 352) = v24;
      swift_weakInit();
      v25 = OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer__messageDecoder;
      v26 = type metadata accessor for JSONDecoder();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();

      *(v24 + v25) = JSONDecoder.init()();
      v29 = OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer__messageEncoder;
      v30 = type metadata accessor for JSONEncoder();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      *(v24 + v29) = JSONEncoder.init()();
      *(v24 + OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer__rapportServer) = 0;
      swift_weakAssign();
      (*(v19 + 32))(v24 + OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer_environment, v18, v20);

      v33 = *(v1 + v15);
      *(v1 + v15) = v24;

      v34 = swift_task_alloc();
      *(v0 + 360) = v34;
      *v34 = v0;
      v34[1] = sub_10002836C;

      return sub_10002B814();
    }

    v1 = *(v0 + 272);
  }

  v36 = OBJC_IVAR____TtC10companiond9CPSDaemon_requesterDaemon;
  if (!*(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon_requesterDaemon))
  {
    v37 = OBJC_IVAR____TtC10companiond9CPSDaemon_environment;
    sub_10002B358();
    CUEnvironmentValues.subscript.getter();
    v38 = *(v0 + 272);
    if (*(v0 + 393) == 1)
    {
      v40 = *(v0 + 288);
      v39 = *(v0 + 296);
      v41 = *(v0 + 280);
      (*(v40 + 16))(v39, v1 + v37, v41);
      v42 = type metadata accessor for CPSRequesterDaemon();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      v45 = swift_allocObject();
      swift_weakInit();
      *(v45 + OBJC_IVAR____TtC10companiond18CPSRequesterDaemon__sessions) = &_swiftEmptyDictionarySingleton;
      swift_weakAssign();
      (*(v40 + 32))(v45 + OBJC_IVAR____TtC10companiond18CPSRequesterDaemon_environment, v39, v41);
      v46 = *(v1 + v36);
      *(v1 + v36) = v45;

      v47 = OBJC_IVAR____TtC10companiond9CPSDaemon__subDaemons;
      swift_beginAccess();
      v48 = *(v38 + v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v38 + v47) = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = sub_100037884(0, v48[2] + 1, 1, v48);
        *(v38 + v47) = v48;
      }

      v51 = v48[2];
      v50 = v48[3];
      if (v51 >= v50 >> 1)
      {
        v48 = sub_100037884((v50 > 1), v51 + 1, 1, v48);
      }

      *(v0 + 120) = v42;
      *(v0 + 128) = sub_10002B6A0(&qword_10009B188, type metadata accessor for CPSRequesterDaemon);
      *(v0 + 96) = v45;
      v48[2] = v51 + 1;
      sub_10002B454((v0 + 96), &v48[5 * v51 + 4]);
      *(v38 + v47) = v48;
      swift_endAccess();
      v1 = *(v0 + 272);
    }

    else
    {
      v1 = *(v0 + 272);
    }
  }

  v52 = OBJC_IVAR____TtC10companiond9CPSDaemon_responderDaemon;
  if (!*(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon_responderDaemon))
  {
    v53 = OBJC_IVAR____TtC10companiond9CPSDaemon_environment;
    sub_10002B3AC();
    CUEnvironmentValues.subscript.getter();
    v54 = *(v0 + 272);
    if (*(v0 + 394) == 1)
    {
      v56 = *(v0 + 288);
      v55 = *(v0 + 296);
      v57 = *(v0 + 280);
      (*(v56 + 16))(v55, v1 + v53, v57);
      v58 = type metadata accessor for CPSResponderDaemon();
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      v61 = swift_allocObject();
      swift_weakInit();
      *(v61 + OBJC_IVAR____TtC10companiond18CPSResponderDaemon__sessions) = &_swiftEmptyDictionarySingleton;
      swift_weakAssign();
      (*(v56 + 32))(v61 + OBJC_IVAR____TtC10companiond18CPSResponderDaemon_environment, v55, v57);
      v62 = *(v1 + v52);
      *(v1 + v52) = v61;

      v63 = OBJC_IVAR____TtC10companiond9CPSDaemon__subDaemons;
      swift_beginAccess();
      v64 = *(v54 + v63);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *(v54 + v63) = v64;
      if ((v65 & 1) == 0)
      {
        v64 = sub_100037884(0, v64[2] + 1, 1, v64);
        *(v54 + v63) = v64;
      }

      v67 = v64[2];
      v66 = v64[3];
      if (v67 >= v66 >> 1)
      {
        v64 = sub_100037884((v66 > 1), v67 + 1, 1, v64);
      }

      *(v0 + 80) = v58;
      *(v0 + 88) = sub_10002B6A0(&qword_10009B180, type metadata accessor for CPSResponderDaemon);
      *(v0 + 56) = v61;
      v64[2] = v67 + 1;
      sub_10002B454((v0 + 56), &v64[5 * v67 + 4]);
      *(v54 + v63) = v64;
      swift_endAccess();
      v1 = *(v0 + 272);
    }

    else
    {
      v1 = *(v0 + 272);
    }
  }

  v68 = OBJC_IVAR____TtC10companiond9CPSDaemon_xpcServer;
  if (!*(v1 + OBJC_IVAR____TtC10companiond9CPSDaemon_xpcServer))
  {
    v69 = OBJC_IVAR____TtC10companiond9CPSDaemon_environment;
    sub_10002B400();
    CUEnvironmentValues.subscript.getter();
    v70 = *(v0 + 272);
    if (*(v0 + 395) == 1)
    {
      v72 = *(v0 + 288);
      v71 = *(v0 + 296);
      v73 = *(v0 + 280);
      (*(v72 + 16))(v71, v1 + v69, v73);
      v74 = type metadata accessor for CPSXPCServer();
      *(v0 + 368) = v74;
      v75 = *(v74 + 48);
      v76 = *(v74 + 52);
      v77 = swift_allocObject();
      *(v0 + 376) = v77;
      swift_weakInit();
      *(v77 + OBJC_IVAR____TtC10companiond12CPSXPCServer__invalidateCalled) = 0;
      *(v77 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcConnections) = &_swiftEmptySetSingleton;
      *(v77 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener) = 0;
      v78 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcEndpoint;
      v79 = type metadata accessor for CUXPCEndpoint();
      (*(*(v79 - 8) + 56))(v77 + v78, 1, 1, v79);
      swift_weakAssign();
      (*(v72 + 32))(v77 + OBJC_IVAR____TtC10companiond12CPSXPCServer_environment, v71, v73);
      v80 = *(v1 + v68);
      *(v1 + v68) = v77;

      v81 = swift_task_alloc();
      *(v0 + 384) = v81;
      *v81 = v0;
      v81[1] = sub_100028BC0;

      return sub_1000541AC();
    }

    v82 = *(v0 + 272);
  }

  v83 = *(v0 + 320);
  v84 = *(v0 + 296);
  sub_10002908C();

  v85 = *(v0 + 8);

  return v85();
}

uint64_t sub_10002836C()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v6 = *v0;

  v3 = *(v1 + 336);
  v4 = *(v1 + 328);

  return _swift_task_switch(sub_10002848C, v4, v3);
}

uint64_t sub_10002848C()
{
  v1 = *(v0 + 272);
  v2 = OBJC_IVAR____TtC10companiond9CPSDaemon__subDaemons;
  swift_beginAccess();
  v3 = *(v1 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100037884(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_100037884((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = *(v0 + 352);
  *(v0 + 160) = *(v0 + 344);
  *(v0 + 168) = sub_10002B6A0(&qword_10009B190, type metadata accessor for CPSRemoteLLMServer);
  *(v0 + 136) = v7;
  v3[2] = v6 + 1;
  sub_10002B454((v0 + 136), &v3[5 * v6 + 4]);
  *(v1 + v2) = v3;
  swift_endAccess();
  v8 = *(v0 + 272);
  v9 = OBJC_IVAR____TtC10companiond9CPSDaemon_requesterDaemon;
  if (!*(v8 + OBJC_IVAR____TtC10companiond9CPSDaemon_requesterDaemon))
  {
    v10 = OBJC_IVAR____TtC10companiond9CPSDaemon_environment;
    sub_10002B358();
    CUEnvironmentValues.subscript.getter();
    v11 = *(v0 + 272);
    if (*(v0 + 393) == 1)
    {
      v13 = *(v0 + 288);
      v12 = *(v0 + 296);
      v14 = *(v0 + 280);
      (*(v13 + 16))(v12, v8 + v10, v14);
      v15 = type metadata accessor for CPSRequesterDaemon();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      swift_weakInit();
      *(v18 + OBJC_IVAR____TtC10companiond18CPSRequesterDaemon__sessions) = &_swiftEmptyDictionarySingleton;
      swift_weakAssign();
      (*(v13 + 32))(v18 + OBJC_IVAR____TtC10companiond18CPSRequesterDaemon_environment, v12, v14);
      v19 = *(v8 + v9);
      *(v8 + v9) = v18;

      v20 = OBJC_IVAR____TtC10companiond9CPSDaemon__subDaemons;
      swift_beginAccess();
      v21 = *(v11 + v20);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + v20) = v21;
      if ((v22 & 1) == 0)
      {
        v21 = sub_100037884(0, v21[2] + 1, 1, v21);
        *(v11 + v20) = v21;
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_100037884((v23 > 1), v24 + 1, 1, v21);
      }

      *(v0 + 120) = v15;
      *(v0 + 128) = sub_10002B6A0(&qword_10009B188, type metadata accessor for CPSRequesterDaemon);
      *(v0 + 96) = v18;
      v21[2] = v24 + 1;
      sub_10002B454((v0 + 96), &v21[5 * v24 + 4]);
      *(v11 + v20) = v21;
      swift_endAccess();
      v8 = *(v0 + 272);
    }

    else
    {
      v8 = *(v0 + 272);
    }
  }

  v25 = OBJC_IVAR____TtC10companiond9CPSDaemon_responderDaemon;
  if (!*(v8 + OBJC_IVAR____TtC10companiond9CPSDaemon_responderDaemon))
  {
    v26 = OBJC_IVAR____TtC10companiond9CPSDaemon_environment;
    sub_10002B3AC();
    CUEnvironmentValues.subscript.getter();
    v27 = *(v0 + 272);
    if (*(v0 + 394) == 1)
    {
      v29 = *(v0 + 288);
      v28 = *(v0 + 296);
      v30 = *(v0 + 280);
      (*(v29 + 16))(v28, v8 + v26, v30);
      v31 = type metadata accessor for CPSResponderDaemon();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      v34 = swift_allocObject();
      swift_weakInit();
      *(v34 + OBJC_IVAR____TtC10companiond18CPSResponderDaemon__sessions) = &_swiftEmptyDictionarySingleton;
      swift_weakAssign();
      (*(v29 + 32))(v34 + OBJC_IVAR____TtC10companiond18CPSResponderDaemon_environment, v28, v30);
      v35 = *(v8 + v25);
      *(v8 + v25) = v34;

      v36 = OBJC_IVAR____TtC10companiond9CPSDaemon__subDaemons;
      swift_beginAccess();
      v37 = *(v27 + v36);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + v36) = v37;
      if ((v38 & 1) == 0)
      {
        v37 = sub_100037884(0, v37[2] + 1, 1, v37);
        *(v27 + v36) = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = sub_100037884((v39 > 1), v40 + 1, 1, v37);
      }

      *(v0 + 80) = v31;
      *(v0 + 88) = sub_10002B6A0(&qword_10009B180, type metadata accessor for CPSResponderDaemon);
      *(v0 + 56) = v34;
      v37[2] = v40 + 1;
      sub_10002B454((v0 + 56), &v37[5 * v40 + 4]);
      *(v27 + v36) = v37;
      swift_endAccess();
      v8 = *(v0 + 272);
    }

    else
    {
      v8 = *(v0 + 272);
    }
  }

  v41 = OBJC_IVAR____TtC10companiond9CPSDaemon_xpcServer;
  if (!*(v8 + OBJC_IVAR____TtC10companiond9CPSDaemon_xpcServer))
  {
    v42 = OBJC_IVAR____TtC10companiond9CPSDaemon_environment;
    sub_10002B400();
    CUEnvironmentValues.subscript.getter();
    v43 = *(v0 + 272);
    if (*(v0 + 395) == 1)
    {
      v45 = *(v0 + 288);
      v44 = *(v0 + 296);
      v46 = *(v0 + 280);
      (*(v45 + 16))(v44, v8 + v42, v46);
      v47 = type metadata accessor for CPSXPCServer();
      *(v0 + 368) = v47;
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      v50 = swift_allocObject();
      *(v0 + 376) = v50;
      swift_weakInit();
      *(v50 + OBJC_IVAR____TtC10companiond12CPSXPCServer__invalidateCalled) = 0;
      *(v50 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcConnections) = &_swiftEmptySetSingleton;
      *(v50 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener) = 0;
      v51 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcEndpoint;
      v52 = type metadata accessor for CUXPCEndpoint();
      (*(*(v52 - 8) + 56))(v50 + v51, 1, 1, v52);
      swift_weakAssign();
      (*(v45 + 32))(v50 + OBJC_IVAR____TtC10companiond12CPSXPCServer_environment, v44, v46);
      v53 = *(v8 + v41);
      *(v8 + v41) = v50;

      v54 = swift_task_alloc();
      *(v0 + 384) = v54;
      *v54 = v0;
      v54[1] = sub_100028BC0;

      return sub_1000541AC();
    }

    v56 = *(v0 + 272);
  }

  v57 = *(v0 + 320);
  v58 = *(v0 + 296);
  sub_10002908C();

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_100028BC0()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v6 = *v0;

  v3 = *(v1 + 336);
  v4 = *(v1 + 328);

  return _swift_task_switch(sub_100028CE0, v4, v3);
}

uint64_t sub_100028CE0()
{
  v1 = *(v0 + 272);
  v2 = OBJC_IVAR____TtC10companiond9CPSDaemon__subDaemons;
  swift_beginAccess();
  v3 = *(v1 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100037884(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_100037884((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = *(v0 + 376);
  *(v0 + 40) = *(v0 + 368);
  *(v0 + 48) = sub_10002B6A0(&qword_10009B178, type metadata accessor for CPSXPCServer);
  *(v0 + 16) = v7;
  v3[2] = v6 + 1;
  sub_10002B454((v0 + 16), &v3[5 * v6 + 4]);
  *(v1 + v2) = v3;
  swift_endAccess();
  v8 = *(v0 + 320);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  sub_10002908C();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100028E78()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100028F64;

    return sub_100026720();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100028F64(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v9 = *v2;

  v7 = *(v9 + 8);

  return v7(a1, a2);
}

void sub_10002908C()
{
  v1 = OBJC_IVAR____TtC10companiond9CPSDaemon__registeredXPCEventsBluetooth;
  if ((*(v0 + OBJC_IVAR____TtC10companiond9CPSDaemon__registeredXPCEventsBluetooth) & 1) == 0)
  {
    v2 = v0;
    if (CUEnvironmentValues.xpcRegisterStreamEvents.getter())
    {
      if (qword_10009AD30 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10002AF48(v3, qword_10009B010);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "XPC bluetooth connections register", v6, 2u);
      }

      v7 = CUEnvironmentValues.dispatchQueue.getter();
      v8 = swift_allocObject();
      swift_weakInit();
      v10[4] = sub_10002B4C0;
      v10[5] = v8;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_10005445C;
      v10[3] = &unk_10008AEB8;
      v9 = _Block_copy(v10);

      xpc_set_event_stream_handler("com.apple.bluetooth.connections", v7, v9);
      _Block_release(v9);

      *(v2 + v1) = 1;
    }
  }
}

uint64_t sub_100029260(uint64_t a1)
{
  v2 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v42 = result;
  if (result)
  {
    if (qword_10009AD30 != -1)
    {
      swift_once();
    }

    v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = type metadata accessor for Logger();
    sub_10002AF48(v15, qword_10009B010);
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v8;
      v47 = v38;
      *v18 = 136315138;
      swift_getObjectType();
      v19 = OS_xpc_object.nestedDescription.getter();
      v21 = a1;
      v22 = v13;
      v23 = v7;
      v24 = v9;
      v25 = sub_100030690(v19, v20, &v47);

      *(v18 + 4) = v25;
      v9 = v24;
      v7 = v23;
      v13 = v22;
      a1 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "XPC bluetooth connections event: %s", v18, 0xCu);
      sub_100024EF0(v38);
      v8 = v39;
    }

    v47 = a1;
    swift_unknownObjectRetain();
    sub_100024EA8(&unk_10009B1A0, &qword_10006EAC0);
    CUSendableWrapper.init(_:)();
    v26 = v42;
    v39 = CUEnvironmentValues.dispatchQueue.getter();
    v27 = type metadata accessor for TaskPriority();
    v28 = *(v27 - 8);
    (*(v28 + 56))(v7, 1, 1, v27);
    v29 = v40;
    (*(v9 + 16))(v40, v13, v8);
    v30 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    (*(v9 + 32))(v31 + v30, v29, v8);
    v32 = v41;
    sub_1000251F8(v7, v41);
    LODWORD(v30) = (*(v28 + 48))(v32, 1, v27);

    if (v30 == 1)
    {
      sub_10002556C(v32, &qword_10009B150, &qword_10006DC50);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v28 + 8))(v32, v27);
    }

    v33 = sub_10002B6A0(&qword_10009B330, sub_10002B6E8);
    v34 = swift_allocObject();
    *(v34 + 16) = &unk_10006DF28;
    *(v34 + 24) = v31;
    v43 = 6;
    v44 = 0;
    v35 = v39;
    v45 = v39;
    v46 = v33;

    v36 = v35;
    swift_task_create();
    sub_10002556C(v7, &qword_10009B150, &qword_10006DC50);

    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

uint64_t sub_1000297D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return _swift_task_switch(sub_1000297F8, 0, 0);
}

uint64_t sub_1000297F8()
{
  v1 = v0[4];
  sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  CUSendableWrapper.value.getter();
  v2 = v0[2];
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1000298B4;
  v4 = v0[3];

  return sub_1000299C4(v2);
}

uint64_t sub_1000298B4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  swift_unknownObjectRelease();
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000299C4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *v1;
  sub_10002B6A0(&qword_10009B140, type metadata accessor for CPSDaemon);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v5;

  return _swift_task_switch(sub_100029ACC, v4, v5);
}

uint64_t sub_100029ACC()
{
  v1 = v0[3];
  v2 = objc_allocWithZone(CBConnection);
  v0[2] = 0;
  swift_unknownObjectRetain();
  v3 = [v2 initWithXPCEventRepresentation:v1 error:v0 + 2];
  v0[7] = v3;
  v4 = v0[2];
  if (v3)
  {
    v5 = v3;
    v6 = v0[3];
    v7 = v0[4];
    v8 = v4;
    swift_unknownObjectRelease();
    v9 = *(v7 + OBJC_IVAR____TtC10companiond9CPSDaemon_responderDaemon);
    v0[8] = v9;
    if (v9)
    {

      v10 = swift_task_alloc();
      v0[9] = v10;
      *v10 = v0;
      v10[1] = sub_100029E0C;

      return sub_100045D6C(v5);
    }

    v14 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
  }

  else
  {
    v12 = v0[3];
    v13 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  if (qword_10009AD30 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10002AF48(v15, qword_10009B010);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "### XPC bluetooth incoming connection failed: error=%@", v18, 0xCu);
    sub_10002556C(v19, &unk_10009B2F0, &unk_10006E0C0);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100029E0C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_100029F60, v4, v3);
}

uint64_t sub_100029F60()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100029FF4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *v1;
  sub_10002B6A0(&qword_10009B140, type metadata accessor for CPSDaemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_10002A0C8, v5, v4);
}

uint64_t sub_10002A0C8()
{
  v14 = v0;
  v1 = v0[11];
  sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  CUSendableWrapper.value.getter();
  v0[15] = v0[10];
  if (qword_10009AD30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[16] = sub_10002AF48(v2, qword_10009B010);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    v7 = OS_xpc_object.nestedDescription.getter();
    v9 = sub_100030690(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "XPC event: %s", v5, 0xCu);
    sub_100024EF0(v6);
  }

  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_10002A2C0;
  v11 = v0[12];

  return sub_100026E3C();
}

uint64_t sub_10002A2C0()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_10002A3E0, v4, v3);
}

uint64_t sub_10002A3E0()
{
  v26 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC10companiond9CPSDaemon__subDaemons;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 144) = v3;
  v4 = *(v3 + 16);
  *(v0 + 152) = v4;
  *(v0 + 160) = 0;

  if (v4)
  {
    if (*(result + 16))
    {
      sub_10002AF80(result + 32, v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      sub_10002AFE4((v0 + 16), v6);
      v8 = *(v7 + 40);
      v24 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      *(v0 + 168) = v10;
      *v10 = v0;
      v10[1] = sub_10002A6B0;
      v11 = *(v0 + 88);

      return v24(v11, v6, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);

    swift_unknownObjectRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 120);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      swift_getObjectType();
      v19 = OS_xpc_object.nestedDescription.getter();
      v21 = sub_100030690(v19, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "### XPC event not handled: %s", v17, 0xCu);
      sub_100024EF0(v18);
    }

    if (xpc_dictionary_create_reply(*(v0 + 120)))
    {
      xpc_dictionary_send_reply();
      swift_unknownObjectRelease();
    }

    v22 = *(v0 + 120);
    swift_unknownObjectRelease();
    v23 = *(v0 + 8);

    return v23();
  }

  return result;
}

uint64_t sub_10002A6B0(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 168);
  v8 = *v1;
  *(v3 + 176) = a1;

  sub_100024EF0((v3 + 16));
  v5 = *(v2 + 112);
  v6 = *(v2 + 104);

  return _swift_task_switch(sub_10002A7E8, v6, v5);
}

uint64_t sub_10002A7E8()
{
  v25 = v0;
  if (*(v0 + 176))
  {
    v1 = *(v0 + 144);

LABEL_7:
    if (xpc_dictionary_create_reply(*(v0 + 120)))
    {
      xpc_dictionary_send_reply();
      swift_unknownObjectRelease();
    }

    v15 = *(v0 + 120);
    swift_unknownObjectRelease();
    v16 = *(v0 + 8);

    return v16();
  }

  v2 = *(v0 + 152);
  v3 = *(v0 + 160) + 1;
  *(v0 + 160) = v3;
  result = *(v0 + 144);
  if (v3 == v2)
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);

    swift_unknownObjectRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 120);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      swift_getObjectType();
      v12 = OS_xpc_object.nestedDescription.getter();
      v14 = sub_100030690(v12, v13, &v24);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "### XPC event not handled: %s", v10, 0xCu);
      sub_100024EF0(v11);
    }

    goto LABEL_7;
  }

  if (v3 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    sub_10002AF80(result + 40 * v3 + 32, v0 + 16);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    sub_10002AFE4((v0 + 16), v17);
    v19 = *(v18 + 40);
    v23 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 168) = v21;
    *v21 = v0;
    v21[1] = sub_10002A6B0;
    v22 = *(v0 + 88);

    return v23(v22, v17, v18);
  }

  return result;
}

uint64_t sub_10002AAB8()
{
  sub_10002AF38(*(v0 + 16));
  v1 = OBJC_IVAR____TtC10companiond9CPSDaemon_environment;
  v2 = type metadata accessor for CUEnvironmentValues();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10companiond9CPSDaemon__osStateHandler);

  v4 = *(v0 + OBJC_IVAR____TtC10companiond9CPSDaemon_remoteLLMServer);

  v5 = *(v0 + OBJC_IVAR____TtC10companiond9CPSDaemon_requesterDaemon);

  v6 = *(v0 + OBJC_IVAR____TtC10companiond9CPSDaemon_responderDaemon);

  v7 = *(v0 + OBJC_IVAR____TtC10companiond9CPSDaemon__subDaemons);

  v8 = *(v0 + OBJC_IVAR____TtC10companiond9CPSDaemon_xpcServer);

  return v0;
}

uint64_t sub_10002AB80()
{
  sub_10002AAB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CPSDaemon()
{
  result = qword_10009B068;
  if (!qword_10009B068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002AC2C()
{
  result = type metadata accessor for CUEnvironmentValues();
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

uint64_t sub_10002AD00(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002AD24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002AD78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10002ADD4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10002AE04(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_10002B6A0(&qword_10009B138, type metadata accessor for CPSDaemon);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_10002AEA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond9CPSDaemon_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_10002AF38(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_10002AF48(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10002AF80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10002AFE4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10002B02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000257F4;

  return sub_10002745C(a1, v4, v5, v6);
}

uint64_t sub_10002B0E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B118()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002B158()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002B200;

  return sub_100028E58(v2, v3, v4);
}

uint64_t sub_10002B200(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

unint64_t sub_10002B304()
{
  result = qword_10009B158;
  if (!qword_10009B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B158);
  }

  return result;
}

unint64_t sub_10002B358()
{
  result = qword_10009B160;
  if (!qword_10009B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B160);
  }

  return result;
}

unint64_t sub_10002B3AC()
{
  result = qword_10009B168;
  if (!qword_10009B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B168);
  }

  return result;
}

unint64_t sub_10002B400()
{
  result = qword_10009B170;
  if (!qword_10009B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B170);
  }

  return result;
}

uint64_t sub_10002B454(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10002B46C()
{
  result = qword_10009B198;
  if (!qword_10009B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B198);
  }

  return result;
}

uint64_t sub_10002B4C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B4E0()
{
  v1 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002B5B0(uint64_t a1)
{
  v4 = *(sub_100024EA8(&qword_10009B148, &qword_10006E0A0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000240AC;

  return sub_1000297D8(a1, v6, v1 + v5);
}

uint64_t sub_10002B6A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002B6E8()
{
  result = qword_10009B1B0;
  if (!qword_10009B1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009B1B0);
  }

  return result;
}

uint64_t sub_10002B734()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_10002B76C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t CUEnvironmentValues.cpsRemoteLLMServerEnabled.getter()
{
  sub_10002B304();
  CUEnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10002B814()
{
  *(v1 + 16) = v0;
  v2 = *v0;
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002B8E8, v4, v3);
}

uint64_t sub_10002B8E8()
{
  if (qword_10009AD38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B1C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "activate", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002BA34;
  v6 = *(v0 + 16);

  return sub_10002BF78();
}

uint64_t sub_10002BA34()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002BB28()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009B1C0);
  sub_10002AF48(v0, qword_10009B1C0);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

void *sub_10002BB94()
{
  v1 = v0;
  v2 = *v0;
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_10009AD38 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10002AF48(v3, qword_10009B1C0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "deinit", v6, 2u);
  }

  v7 = OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer__rapportServer;
  v8 = *(v1 + OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer__rapportServer);
  *(v1 + OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer__rapportServer) = 0;
  [v8 invalidate];

  swift_weakDestroy();
  v9 = OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer_environment;
  v10 = type metadata accessor for CUEnvironmentValues();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = *(v1 + OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer__messageDecoder);

  v12 = *(v1 + OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer__messageEncoder);

  return v1;
}

uint64_t sub_10002BDA0(uint64_t a1)
{
  sub_10002BB94();
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 52);

  return _swift_deallocClassInstance(a1, v2, v3);
}

uint64_t sub_10002BE04()
{
  v1 = *v0;
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_deinitOnExecutor(v0, sub_10002BDA0, v3, v2, 0);
}

uint64_t sub_10002BF78()
{
  v1[42] = v0;
  v2 = *v0;
  v3 = sub_100024EA8(&qword_10009B2E0, &qword_10006E0B0);
  v1[43] = v3;
  v4 = *(v3 - 8);
  v1[44] = v4;
  v5 = *(v4 + 64) + 15;
  v1[45] = swift_task_alloc();
  sub_100030568(&unk_10009B2D0, type metadata accessor for CPSRemoteLLMServer);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[46] = v7;
  v1[47] = v6;

  return _swift_task_switch(sub_10002C0B4, v7, v6);
}

uint64_t sub_10002C0B4()
{
  v1 = v0[42];
  v2 = OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer__rapportServer;
  v0[48] = OBJC_IVAR____TtC10companiond18CPSRemoteLLMServer__rapportServer;
  if (*(v1 + v2))
  {
    v3 = v0[45];

    v4 = v0[1];

    return v4();
  }

  else
  {
    if (qword_10009AD38 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v0[49] = sub_10002AF48(v6, qword_10009B1C0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "rapport server start", v9, 2u);
    }

    v10 = v0[44];
    v25 = v0[45];
    v24 = v0[43];
    v23 = v0[42];

    v11 = [objc_allocWithZone(RPCompanionLinkClient) init];
    v0[50] = v11;
    v12 = CUEnvironmentValues.dispatchQueue.getter();
    [v11 setDispatchQueue:v12];

    v13 = *(v1 + v2);
    *(v1 + v2) = v11;
    v14 = v11;

    v0[22] = sub_10002CD60;
    v0[23] = 0;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100025F68;
    v0[21] = &unk_10008AF80;
    v15 = _Block_copy(v0 + 18);
    [v14 setDisconnectHandler:v15];
    _Block_release(v15);
    v0[28] = sub_10002CD80;
    v0[29] = 0;
    v0[24] = _NSConcreteStackBlock;
    v0[25] = 1107296256;
    v0[26] = sub_100025F68;
    v0[27] = &unk_10008AFA8;
    v16 = _Block_copy(v0 + 24);
    [v14 setInterruptionHandler:v16];
    _Block_release(v16);
    v0[34] = sub_10002CDA0;
    v0[35] = 0;
    v0[30] = _NSConcreteStackBlock;
    v0[31] = 1107296256;
    v0[32] = sub_100025F68;
    v0[33] = &unk_10008AFD0;
    v17 = _Block_copy(v0 + 30);
    [v14 setInvalidationHandler:v17];
    _Block_release(v17);
    static CPSRemoteLLMConstants.rapportRequestID.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = swift_allocObject();
    swift_weakInit();
    v0[40] = sub_100030600;
    v0[41] = v19;
    v0[36] = _NSConcreteStackBlock;
    v0[37] = 1107296256;
    v0[38] = sub_10002DACC;
    v0[39] = &unk_10008B020;
    v20 = _Block_copy(v0 + 36);
    v21 = v0[41];

    [v14 registerRequestID:v18 options:0 handler:v20];
    _Block_release(v20);

    v0[2] = v0;
    v0[3] = sub_10002C62C;
    swift_continuation_init();
    v0[17] = v24;
    v22 = sub_100034710(v0 + 14);
    sub_100024EA8(&qword_10009B2E8, &qword_10006E0B8);
    CheckedContinuation.init(continuation:function:)();
    (*(v10 + 32))(v22, v25, v24);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10002DCC0;
    v0[13] = &unk_10008B048;
    [v14 activateWithCompletion:?];
    (*(v10 + 8))(v22, v24);

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10002C62C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 408) = v3;
  v4 = *(v1 + 376);
  v5 = *(v1 + 368);
  if (v3)
  {
    v6 = sub_10002C7C4;
  }

  else
  {
    v6 = sub_10002C75C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10002C75C()
{
  v1 = *(v0 + 360);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002C7C4()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[51];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "### rapport server start failed: error=%@", v8, 0xCu);
    sub_10002556C(v9, &unk_10009B2F0, &unk_10006E0C0);
  }

  else
  {
  }

  v11 = v0[48];
  v12 = v0[42];
  v13 = *(v12 + v11);
  *(v12 + v11) = 0;

  v14 = v0[45];

  v15 = v0[1];

  return v15();
}