void sub_10000103C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000B0D0();
    }
  }

  else
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished initial load, resetting timer.", v6, 2u);
    }

    [*(a1 + 32) resetTimer];
  }

  [*(a1 + 32) _setupObservers];
}

void sub_1000011B8(uint64_t a1)
{
  lock._os_unfair_lock_opaque = [*(a1 + 32) loadingStoresLock];
  os_unfair_lock_lock(&lock);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000152C;
  v26[3] = &unk_100014510;
  os_unfair_lock_opaque = lock._os_unfair_lock_opaque;
  v27 = *(a1 + 40);
  v2 = objc_retainBlock(v26);
  if (![*(a1 + 32) storesLoaded])
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = objc_alloc_init(VSSemaphore);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100001590;
    v23 = sub_1000015A0;
    v24 = 0;
    v4 = [*(a1 + 32) container];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000015A8;
    v15[3] = &unk_100014538;
    objc_copyWeak(&v18, &location);
    v17 = &v19;
    v5 = v3;
    v16 = v5;
    [v4 loadPersistentStoresWithCompletionHandler:v15];

    [v5 wait];
    if ([*(a1 + 32) storesLoaded])
    {
      v6 = [*(a1 + 32) preferences];
      v7 = [v6 performedSubcriptionToUserAccountMigration];

      if (!v7)
      {
        v10 = VSDefaultLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Migration not performed, will fetch subscriptions for migration...", buf, 2u);
        }

        v11 = *(a1 + 32);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1000016A4;
        v12[3] = &unk_100014588;
        v12[4] = v11;
        v13 = v2;
        [v11 _subscriptionsForMigrationWithCompletion:v12];

        goto LABEL_13;
      }

      v8 = VSDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Migration already performed, skipping.", buf, 2u);
      }

      v9 = 0;
    }

    else
    {
      v9 = v20[5];
    }

    (v2[2])(v2, v9);
LABEL_13:

    objc_destroyWeak(&v18);
    _Block_object_dispose(&v19, 8);

    objc_destroyWeak(&location);
    goto LABEL_14;
  }

  (v2[2])(v2, 0);
LABEL_14:
}

void sub_1000014E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 - 136));
  _Unwind_Resume(a1);
}

void sub_10000152C(uint64_t a1, void *a2)
{
  v4 = a2;
  os_unfair_lock_unlock((a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t sub_100001590(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000015A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = VSErrorLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10000B140();
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    }

    else
    {
      v8 = VSDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished loading persistent stores successfully.", v9, 2u);
      }

      [WeakRetained setStoresLoaded:1];
    }
  }

  [*(a1 + 32) signal];
}

void sub_1000016A4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ([v5 count])
  {
    v21 = a2;
    v6 = [NSValueTransformer valueTransformerForName:VSSubscriptionValueTransformerName];
    v7 = objc_alloc_init(VSWaitGroup);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = v5;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [v6 transformedValue:v12];

          if (!v13)
          {
            [NSException raise:NSInvalidArgumentException format:@"The [subscriptionTransformer transformedValue:migrationSubscription] parameter must not be nil."];
          }

          v14 = [v6 transformedValue:v12];
          [v7 enter];
          v15 = [*(a1 + 32) createSaveContext];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100001988;
          v25[3] = &unk_100014560;
          v16 = *(a1 + 32);
          v26 = v15;
          v27 = v16;
          v28 = v14;
          v29 = v7;
          v17 = v14;
          v18 = v15;
          [v18 performBlock:v25];
        }

        v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }

    [v7 wait];
    v5 = v22;
    a2 = v21;
  }

  if (a2)
  {
    v19 = VSDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Marking migration as completed.", buf, 2u);
    }

    v20 = [*(a1 + 32) preferences];
    [v20 setPerformedSubcriptionToUserAccountMigration];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100001988(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "performing migration user account insertion...", buf, 2u);
  }

  v3 = [[VSPersistentUserAccount alloc] initWithContext:*(a1 + 32)];
  [*(a1 + 40) _populatePersistentUserAccount:v3 withUserAccount:*(a1 + 48) context:*(a1 + 32)];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "saving migrated persistent account: %@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = 0;
  v7 = [v5 saveContext:v6 withError:&v10];
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000B220();
    }
  }

  [*(a1 + 56) leave];
}

void sub_100001B18(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v2 = objc_begin_catch(exception_object);
      v3 = VSErrorLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        sub_10000B1B0();
      }

      objc_end_catch();
      JUMPOUT(0x100001AC4);
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0x100001AC8);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100001E54(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migration delegate block invoked with completion status %d subscriptions %@", v10, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  [*(a1 + 32) leave];
}

void sub_100002034(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) prepareUserAccountsToVend:a2 withSecurityTask:*(a1 + 40)];
  v10 = *(a1 + 48);
  v9 = v6;
  v7 = v5;
  v8 = v6;
  VSPerformCompletionHandler();
}

void sub_1000022E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) prepareUserAccountsToVend:a2 withSecurityTask:*(a1 + 40)];
  v10 = *(a1 + 48);
  v9 = v6;
  v7 = v5;
  v8 = v6;
  VSPerformCompletionHandler();
}

void sub_1000028C0(uint64_t a1)
{
  if (([*(a1 + 32) shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalSubscriptionService] & 1) == 0)
  {
    v2 = [*(a1 + 32) signingIdentifier];
    v3 = [[VSBundleRecord alloc] initWithBundleID:v2];
    v4 = v3;
    if (v3)
    {
      v5 = *(a1 + 40);
      v6 = [v3 bundleVersion];
      [v5 setModifierIdentifier:v6];
    }

    [*(a1 + 40) setModifierType:VSMetricAccountUpdateValueModifierTypeApp];
  }

  v10 = VSMetricAccountUpdateValueWriteTypeUpdate;
  if ([*(a1 + 40) isSignedOut])
  {
    v7 = VSMetricAccountUpdateValueWriteTypeRemove;

    v10 = v7;
  }

  v8 = *(a1 + 40);
  v9 = [v8 modifierIdentifier];
  [VSMetricsManagerObjC recordAccountUpdateWithAccount:v8 source:v9 updateType:v10 completion:0];
}

void sub_100002A08(uint64_t a1, void *a2)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002B44;
  v11[3] = &unk_1000146C8;
  v4 = *(a1 + 32);
  v14 = *(a1 + 64);
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v13 = v8;
  v12 = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002E18;
  v9[3] = &unk_1000146F0;
  v10 = *(a1 + 56);
  [a2 unwrapObject:v11 error:v9];
}

void sub_100002B44(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identityProviderID];
    v6 = [v5 forceUnwrapObject];
    v7 = [v6 isEqual:*(a1 + 32)];

    if (v7)
    {
      if (*(a1 + 64) == 1)
      {
        v8 = [v4 legacyItemHash];

        if (!v8)
        {
          [NSException raise:NSInvalidArgumentException format:@"The [account legacyItemHash] parameter must not be nil."];
        }

        v9 = [v4 legacyItemHash];
        v10 = VSDefaultLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Associating user account with keychain hash %@", buf, 0xCu);
        }

        [*(a1 + 40) setKeychainItemHash:{objc_msgSend(v9, "unsignedIntegerValue")}];
        [*(a1 + 48) insertUserAccount:*(a1 + 40) completion:*(a1 + 56)];
        goto LABEL_13;
      }
    }
  }

  v11 = VSErrorLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10000B3E8();
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = v12;
    VSPerformCompletionHandler();
    v9 = v13;
LABEL_13:
  }
}

void sub_100002D4C(uint64_t a1)
{
  v4 = VSPublicError();
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3 && ([VSLSApplicationRecord isAppStoreVendableForBundleIdentifier:v3]& 1) == 0)
  {
    [NSException raise:@"VSExceptionProviderMismatch" format:@"Not currently signed in to a provider matching the one indicated by the user account"];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100002E18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000B424();
  }

  if (*(a1 + 32))
  {
    v5 = VSPublicError();
    v7 = *(a1 + 32);
    v6 = v5;
    VSPerformCompletionHandler();
  }
}

void sub_100003110(uint64_t a1)
{
  if (([*(a1 + 32) shouldAllowAccessForBooleanEntitlement:VSEntitlementNameInternalSubscriptionService] & 1) == 0)
  {
    v2 = [*(a1 + 32) signingIdentifier];
    v3 = [[VSBundleRecord alloc] initWithBundleID:v2];
    v4 = v3;
    if (v3)
    {
      v5 = *(a1 + 40);
      v6 = [v3 bundleVersion];
      [v5 setModifierIdentifier:v6];
    }

    [*(a1 + 40) setModifierType:VSMetricAccountUpdateValueModifierTypeApp];
  }

  v7 = *(a1 + 40);
  v8 = [v7 modifierIdentifier];
  [VSMetricsManagerObjC recordAccountUpdateWithAccount:v7 source:v8 updateType:VSMetricAccountUpdateValueWriteTypeRemove completion:0];
}

void sub_10000321C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = VSPublicError();
  (*(v1 + 16))(v1, v2);
}

void sub_100003284(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000B494();
    }

    v6 = [v4 copy];
    v7 = VSPublicError();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v10 = v8;
    v9 = v7;
    VSPerformCompletionHandler();
  }
}

void sub_10000357C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_1000035A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setCurrentUpdateSessionIsForced:1];
    [v3 _update];
  }

  v4 = *(a1 + 32);
  VSPerformCompletionHandler();
}

void sub_100003844(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_100003868(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setCurrentUpdateSessionIsForced:1];
    [v3 _forceRefreshAccount:*(a1 + 32)];
  }

  v4 = *(a1 + 40);
  VSPerformCompletionHandler();
}

void sub_100003A48(uint64_t a1)
{
  v2 = VSPublicError();
  (*(*(a1 + 32) + 16))();
}

void sub_100003C50(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = VSErrorLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000B57C(a1);
    }

    v7 = VSPublicError();
  }

  else
  {
    [a2 hasConsented];
    v7 = 0;
  }

  v9 = *(a1 + 40);
  v8 = v7;
  VSPerformCompletionHandler();
}

void sub_100003D8C(uint64_t a1)
{
  v2 = VSPublicError();
  (*(*(a1 + 32) + 16))();
}

void sub_100004098(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = VSPublicError();
  (*(v1 + 16))(v1, v2);
}

void sub_100004100(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = VSErrorLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v7)
    {
      sub_10000B738(a1);
    }

    v8 = 0;
  }

  else
  {
    if (v7)
    {
      sub_10000B6D0(a1);
    }

    v8 = VSPublicError();
  }

  v10 = *(a1 + 40);
  v9 = v8;
  VSPerformCompletionHandler();
}

void sub_100004234(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = VSPublicError();
  (*(v1 + 16))(v1, v2);
}

void sub_10000443C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = VSErrorLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v7)
    {
      sub_10000B814(a1);
    }

    v8 = 0;
  }

  else
  {
    if (v7)
    {
      sub_10000B7AC(a1);
    }

    v8 = VSPublicError();
  }

  v10 = *(a1 + 40);
  v9 = v8;
  VSPerformCompletionHandler();
}

void sub_100004570(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = VSPublicError();
  (*(v1 + 16))(v1, v2);
}

void sub_100004724(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 consentStatus];
    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (v7 == 2);
    }

    v9 = [v5 token];
    if ([v9 length])
    {
      v10 = [v5 token];
    }

    else
    {
      v10 = 0;
    }

    v13 = [[VSAutoSignInToken alloc] initWithAuthorization:v8 value:v10];
    v12 = 0;
  }

  else
  {
    v11 = VSErrorLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000B888(a1);
    }

    v12 = VSPublicError();
    v13 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000049D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  VSPerformCompletionHandler();
}

void sub_100004B38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000B8F0();
    }

    v6 = [v4 copy];
    v7 = VSPublicError();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v10 = v8;
    v9 = v7;
    VSPerformCompletionHandler();
  }
}

void sub_100004D88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v46 = a1;
    v47 = v6;
    v8 = objc_alloc_init(NSMutableDictionary);
    v53 = objc_alloc_init(NSMutableDictionary);
    v50 = objc_alloc_init(NSMutableArray);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v65 objects:v73 count:16];
    v52 = v8;
    if (v10)
    {
      v11 = v10;
      v12 = *v66;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v66 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v65 + 1) + 8 * i);
          v15 = [v14 subscriptionBillingCycleEndDate];
          if (v15)
          {
            v16 = [v14 subscriptionBillingCycleEndDate];
            v17 = +[NSDate now];
            v18 = [v16 vs_isAfter:v17];

            v8 = v52;
            v19 = v18 ^ 1;
          }

          else
          {
            v19 = 0;
          }

          if (([v14 isSignedOut] & 1) == 0 && (v19 & 1) == 0 && objc_msgSend(v14, "sourceType") != 2)
          {
            v20 = [v14 sourceType];
            v21 = [v14 sourceIdentifier];
            v22 = [NSString stringWithFormat:@"%ld%@", v20, v21];

            [v50 addObject:v22];
            if ([v14 isFromCurrentDevice])
            {
              [v53 setObject:v14 forKeyedSubscript:v22];
              v8 = v52;
            }

            else
            {
              v8 = v52;
              v23 = [v52 objectForKeyedSubscript:v22];
              if (!v23)
              {
                v23 = objc_alloc_init(NSMutableArray);
              }

              [v23 addObject:v14];
              [v52 setObject:v23 forKeyedSubscript:v22];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v11);
    }

    v48 = v5;

    v24 = objc_alloc_init(NSMutableArray);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v50;
    v25 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v62;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v62 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v61 + 1) + 8 * j);
          v30 = [v8 objectForKeyedSubscript:v29];
          v31 = [v53 objectForKeyedSubscript:v29];
          if (v31)
          {
            [v24 addObject:v31];
          }

          else if ([v30 count])
          {
            v32 = [v30 firstObject];

            if (!v32)
            {
              [NSException raise:NSInvalidArgumentException format:@"The [nonLocalAccounts firstObject] parameter must not be nil."];
            }

            v33 = [v30 firstObject];
            [v24 addObject:v33];

            v8 = v52;
          }
        }

        v26 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v26);
    }

    v51 = objc_alloc_init(NSMutableArray);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v34 = v24;
    v35 = [v34 countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v58;
      v38 = VSSubscriptionValueTransformerName;
      do
      {
        for (k = 0; k != v36; k = k + 1)
        {
          if (*v58 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v57 + 1) + 8 * k);
          v41 = [NSValueTransformer valueTransformerForName:v38];
          v42 = [v41 reverseTransformedValue:v40];
          if (v42)
          {
            [v51 addObject:v42];
          }

          else
          {
            v43 = VSErrorLogObject();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v70 = v40;
              _os_log_fault_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "Error transforming user account to subscription: %@", buf, 0xCu);
            }
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v57 objects:v71 count:16];
      }

      while (v36);
    }

    v56 = *(v46 + 32);
    v44 = v51;
    VSPerformCompletionHandler();

    v7 = v47;
    v5 = v48;
    v45 = v52;
  }

  else
  {
    v55 = *(a1 + 32);
    v54 = v7;
    VSPerformCompletionHandler();

    v45 = v55;
  }
}

uint64_t sub_1000053DC(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Legacy API - Found no active subscriptions.", v5, 2u);
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void sub_100005AFC(uint64_t a1)
{
  v2 = [*(a1 + 32) _updateRequestForAccount:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) timer];

    if (v3)
    {
      v4 = [*(a1 + 32) timer];

      if (!v4)
      {
        [NSException raise:NSInvalidArgumentException format:@"The [self timer] parameter must not be nil."];
      }

      v5 = [*(a1 + 32) timer];
      dispatch_source_cancel(v5);
    }

    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "1 update request will be enqueued.", v10, 2u);
    }

    v7 = *(a1 + 32);
    v11 = v2;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    [v7 _setUpdateRequestManagerWithRequests:v8];
  }

  else
  {
    v9 = VSDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "User account did not qualify for force refresh.", v10, 2u);
    }

    [*(a1 + 32) setCurrentUpdateSessionIsForced:0];
  }
}

void sub_100005D30(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];

  if (v2)
  {
    v3 = [*(a1 + 32) timer];

    if (!v3)
    {
      [NSException raise:NSInvalidArgumentException format:@"The [self timer] parameter must not be nil."];
    }

    v4 = [*(a1 + 32) timer];
    dispatch_source_cancel(v4);
  }

  v5 = *(a1 + 32);
  v6 = +[NSDate now];
  [v5 setLastUpdateTime:v6];

  v7 = [*(a1 + 32) _predicateForUserAccountWithNonnullUpdateURL];
  v8 = *(a1 + 32);
  v9 = [v8 createSaveContext];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005E7C;
  v10[3] = &unk_100014858;
  v10[4] = *(a1 + 32);
  [v8 _queryUserAccountsWithPredicate:v7 context:v9 completion:v10];
}

void sub_100005E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100006014;
  v13 = &unk_100014830;
  v14 = *(a1 + 32);
  v5 = v4;
  v15 = v5;
  [v3 enumerateObjectsUsingBlock:&v10];

  v6 = [v5 count];
  v7 = VSDefaultLogObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [v5 count];
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%lu update requests will be enqueued.", buf, 0xCu);
    }

    [*(a1 + 32) _setUpdateRequestManagerWithRequests:v5];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No user accounts qualified for update, will not enqueue any update requests.", buf, 2u);
    }

    [*(a1 + 32) resetTimer];
  }
}

uint64_t sub_100006014(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _updateRequestForAccount:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_1000060E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000B960();
    }

    v5 = [NSNumber numberWithDouble:43200.0];
  }

  [v5 doubleValue];
  v9 = v8;
  v10 = [*(a1 + 32) privateQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000061FC;
  v11[3] = &unk_1000148F8;
  v11[4] = *(a1 + 32);
  v11[5] = v9;
  [v10 addOperationWithBlock:v11];
}

void sub_1000061FC(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100001590;
  v18 = sub_1000015A0;
  v19 = [*(a1 + 32) timer];
  v2 = v15[5];
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = [*(a1 + 32) _predicateForIsSignedOut:0];
  v4 = [*(a1 + 32) _predicateForUserAccountWithNonnullUpdateURL];
  v5 = [*(a1 + 32) _predicateForUserAccountWithNonnullBillingCycleEndDate];
  v21[0] = v3;
  v21[1] = v4;
  v21[2] = v5;
  v6 = [NSArray arrayWithObjects:v21 count:3];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  v8 = [*(a1 + 32) _sortForUserAccountBillingCycleEndDateASC:1];
  v9 = *(a1 + 32);
  v20 = v8;
  v10 = [NSArray arrayWithObjects:&v20 count:1];
  v11 = [*(a1 + 32) createSaveContext];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006464;
  v13[3] = &unk_1000148D0;
  v12 = *(a1 + 32);
  v13[6] = *(a1 + 40);
  v13[4] = v12;
  v13[5] = &v14;
  [v9 _queryUserAccountsWithPredicate:v7 sorts:v10 fetchLimit:&off_100014FF0 context:v11 completion:v13];

  _Block_object_dispose(&v14, 8);
}

void sub_100006430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006464(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v25 = a3;
  v5 = [v24 firstObject];
  v6 = [v5 subscriptionBillingCycleEndDate];

  v7 = VSDefaultLogObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v29 = *&v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Soonest expiring account is: %@", buf, 0xCu);
    }

    v7 = [*(a1 + 32) lastUpdateTime];
    if (!v7)
    {
      v7 = +[NSDate distantPast];
    }

    v9 = [v7 dateByAddingTimeInterval:*(a1 + 48)];
    v10 = [v6 vs_dateIncrementedByMinutes:1];
    v11 = v10;
    if ([v9 vs_isAfter:v10])
    {
      v12 = VSDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = *&v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Next refresh time is within update frequency limit, using frequency limit time: %@", buf, 0xCu);
      }

      v11 = v9;
    }

    v13 = +[NSDate now];
    [v11 timeIntervalSinceDate:v13];
    v15 = v14;

    v16 = VSDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v29 = v15;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "refresh expiry timer will fire in %f seconds (%@)", buf, 0x16u);
    }

    v17 = [*(a1 + 32) privateQueue];
    v18 = [v17 underlyingQueue];
    v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v18);
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = dispatch_time(0, 1000000000 * v15);
    dispatch_source_set_timer(*(*(*(a1 + 40) + 8) + 40), v22, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(buf, *(a1 + 32));
    v23 = *(*(*(a1 + 40) + 8) + 40);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100006860;
    handler[3] = &unk_1000148A8;
    objc_copyWeak(&v27, buf);
    dispatch_source_set_event_handler(v23, handler);
    [*(a1 + 32) setTimer:*(*(*(a1 + 40) + 8) + 40)];
    dispatch_activate(*(*(*(a1 + 40) + 8) + 40));
    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No subscriptions that qualify for expiration. Not setting up schedule.", buf, 2u);
  }
}

void sub_10000683C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006860(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Schedule timer fired.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _update];
  }
}

void sub_100006C88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error checking for Existing Persistent User Account: %@", buf, 0xCu);
    }
  }

  if ([v5 count])
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006E4C;
    v12[3] = &unk_100014970;
    v14 = *(a1 + 64);
    v13 = *(a1 + 48);
    [v8 _deduplicatePersistentUserAccounts:v5 context:v9 completion:v12];
  }

  else if (![v5 count])
  {
    v10 = VSDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 56);
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New User Account to Insert: %@", buf, 0xCu);
    }

    [*(a1 + 48) leave];
  }
}

void sub_100006E4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error deduplicating Existing Persistent User Account: %@", &v12, 0xCu);
    }
  }

  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found matching existing persistent user account to update.", &v12, 2u);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  [*(a1 + 32) leave];
}

void sub_100006F80(uint64_t a1)
{
  v2 = *(*(*(a1 + 72) + 8) + 40);
  if (v2)
  {
    v3 = v2;
    v4 = VSDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found matching existing persistent user account to update.", buf, 2u);
    }
  }

  else
  {
    v3 = [[VSPersistentUserAccount alloc] initWithContext:*(a1 + 32)];
  }

  [*(a1 + 40) _populatePersistentUserAccount:v3 withUserAccount:*(a1 + 48) context:*(a1 + 32)];
  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (!v5 || [v5 signedOut])
  {
    v6 = +[NSDate now];
    [(VSPersistentUserAccount *)v3 setCreated:v6];
  }

  v7 = [*(a1 + 56) signingIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if ((+[VSLSApplicationRecord isAppStoreVendableForBundleIdentifier:](VSLSApplicationRecord, "isAppStoreVendableForBundleIdentifier:", v9) & 1) == 0 && (+[VSLSApplicationRecord isDeletableForBundleIdentifier:](VSLSApplicationRecord, "isDeletableForBundleIdentifier:", v9) & 1) != 0 || [*(a1 + 48) isDeveloperCreated])
    {
      [(VSPersistentUserAccount *)v3 setDeveloper:1];
    }
  }

  v10 = +[VSDevice currentDevice];
  v11 = [v10 name];
  [(VSPersistentUserAccount *)v3 setDeviceName:v11];

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = 0;
  LOBYTE(v11) = [v12 saveContext:v13 withError:&v16];
  v14 = v16;
  if (v11)
  {
    [*(a1 + 40) resetTimer];
    v15 = [*(a1 + 40) remoteNotifier];
    [v15 postNotification];
  }

  else
  {
    v15 = VSErrorLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000BA40();
    }
  }

  (*(*(a1 + 64) + 16))();
}

void sub_1000071B0(void *exc_buf, int a2)
{
  if (a2 == 2)
  {
    v3 = objc_begin_catch(exc_buf);
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10000BAB0();
    }

    VSPublicError();
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x10000715CLL);
}

void sub_1000073C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000BB20();
    }

    v8 = v6;
  }

  else if ([v5 count])
  {
    v9 = v5;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000074F8;
  v14[3] = &unk_100014600;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16 = v6;
  v17 = v11;
  v15 = v9;
  v12 = v6;
  v13 = v9;
  [v10 performBlock:v14];
}

void sub_100007890(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to delete duplicate persistent user account: %@", &v7, 0xCu);
    }
  }
}

void sub_100007AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000BB90();
    }

    (*(*(a1 + 48) + 16))();
  }

  else if (v5)
  {
    if ([v5 count] >= 2)
    {
      v8 = VSErrorLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_10000BC00(v5, v8);
      }
    }

    v9 = [v5 firstObject];
    if (v9)
    {
      [*(a1 + 32) _deletePersistentUserAccount:v9 withContext:*(a1 + 40) completion:*(a1 + 48)];
    }

    else
    {
      v10 = VSErrorLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10000BC88();
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_100007CE0(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sourceIdentifier];
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Going to delete account: %@", buf, 0xCu);
  }

  [*(a1 + 40) deleteObject:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v13 = 0;
  v6 = [v4 saveContext:v5 withError:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Success Delete: Posting Notification", buf, 2u);
    }

    v9 = [*(a1 + 48) remoteNotifier];
    [v9 postNotification];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000BCC4();
    }

    v11 = *(a1 + 56);
    v12 = VSPublicError();
    (*(v11 + 16))(v11, v12);
  }
}

void sub_100007FA0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(a1 + 32) _userAccountForPersistentUserAccount:*(*(&v13 + 1) + 8 * v11) context:{*(a1 + 40), v13}];
          [v6 addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100008260(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008384;
  v12[3] = &unk_100014A88;
  v13 = v3;
  v16 = a1[8];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[4];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v11 = v3;
  [v4 performBlock:v12];
}

void sub_100008384(void *a1)
{
  if (a1[4])
  {
    v19 = VSPublicError();
    (*(a1[9] + 16))();
  }

  else
  {
    v2 = +[VSPersistentUserAccount fetchRequest];
    [v2 setIncludesPendingChanges:0];
    [v2 setPredicate:a1[5]];
    [v2 setSortDescriptors:a1[6]];
    v3 = a1[7];
    if (v3)
    {
      [v2 setFetchLimit:{objc_msgSend(v3, "unsignedIntegerValue")}];
    }

    v4 = VSDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 predicate];
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using predicate for fetch request: %@", buf, 0xCu);
    }

    v6 = a1[8];
    v24 = 0;
    v7 = [v6 executeFetchRequest:v2 error:&v24];
    v8 = v24;
    if (v7)
    {
      v9 = VSDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 count];
        *buf = 134218242;
        v27 = v10;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retrieved %lu persistent user accounts: %@", buf, 0x16u);
      }

      v11 = objc_alloc_init(NSMutableArray);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [v11 addObject:*(*(&v20 + 1) + 8 * i)];
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v14);
      }

      v17 = *(a1[9] + 16);
    }

    else
    {
      v18 = VSErrorLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10000BD34();
      }

      v11 = VSPublicError();
      v17 = *(a1[9] + 16);
    }

    v17();
  }
}

void sub_1000087D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) updateURL];
  [v2 setUpdateURL:v3];

  [*(a1 + 32) setRequiresSystemTrust:{objc_msgSend(*(a1 + 40), "requiresSystemTrust")}];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) accountProviderIdentifier];
  [v4 setProviderID:v5];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) identifier];
  [v6 setAccountIdentifier:v7];

  [*(a1 + 32) setAccountType:{objc_msgSend(*(a1 + 40), "accountType")}];
  [*(a1 + 32) setSignedOut:{objc_msgSend(*(a1 + 40), "isSignedOut")}];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) subscriptionBillingCycleEndDate];
  [v8 setBillingCycleEndDate:v9];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) tierIdentifiers];
  [v10 setTierIdentifiers:v11];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) billingIdentifier];
  [v12 setBillingIdentifier:v13];

  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) authenticationData];
  [v14 setAuthenticationData:v15];

  [*(a1 + 32) setDeviceType:*(a1 + 48)];
  [*(a1 + 32) setSourceType:{objc_msgSend(*(a1 + 40), "sourceType")}];
  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) sourceIdentifier];
  [v16 setSourceIdentifier:v17];

  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) deviceIdentifier];
  [v18 setDeviceIdentifier:v19];

  [*(a1 + 32) setKeychainItemHash:{objc_msgSend(*(a1 + 40), "keychainItemHash")}];
  v20 = *(a1 + 32);
  v21 = +[NSDate now];
  [v20 setModified:v21];

  [*(a1 + 32) setDeveloper:{objc_msgSend(*(a1 + 40), "isDeveloperCreated")}];
  v22 = *(a1 + 32);
  v23 = [*(a1 + 40) created];
  [v22 setCreated:v23];

  v24 = *(a1 + 32);
  v25 = [*(a1 + 40) deviceName];
  [v24 setDeviceName:v25];

  v26 = *(a1 + 32);
  v27 = [*(a1 + 40) appleSubscription];
  [v26 setAppleSubscription:v27];
}

void sub_100008EFC(id *a1, void *a2)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([v8 sourceType] == 2)
        {
          v9 = [v8 sourceIdentifier];
          v10 = [v9 isEqualToString:a1[4]];

          if (v10)
          {
            v12 = a1[5];
            v13 = [v8 billingCycleEndDate];
            [v12 setSubscriptionBillingCycleEndDate:v13];

            [a1[6] signal];
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = +[VSAccountStore sharedAccountStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100009108;
  v14[3] = &unk_100014BB8;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  [v11 fetchAccountsWithCompletionHandler:v14];

LABEL_12:
}

void sub_100009108(id *a1, void *a2)
{
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_1000091BC;
  v7 = &unk_100014B50;
  v8 = a1[4];
  v9 = a1[5];
  [a2 unwrapObject:&v4 error:&stru_100014B90];
  [a1[6] signal];
}

void sub_1000091BC(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 identityProviderID];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000092A8;
    v8[3] = &unk_100014B28;
    v9 = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    v7 = v5;
    [v6 conditionallyUnwrapObject:v8];
  }
}

void sub_1000092A8(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    v3 = [*(a1 + 40) legacyItemHash];
    v4 = [v3 unsignedIntegerValue];
    v5 = [*(a1 + 48) keychainItemHash];

    if (v4 == v5)
    {
      v6 = [*(a1 + 40) authenticationToken];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100009390;
      v7[3] = &unk_100014B00;
      v8 = *(a1 + 48);
      [v6 conditionallyUnwrapObject:v7];
    }
  }
}

void sub_100009390(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 expirationDate];
  [v2 setSubscriptionBillingCycleEndDate:v3];
}

void sub_1000093E8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Could not get account for expiration: %@", &v4, 0xCu);
  }
}

void sub_10000A528(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000C1C8();
    }
  }

  else
  {
    v4 = VSDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully inserted updated account from JS refresh: %@", &v6, 0xCu);
    }
  }
}

void sub_10000A86C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_10000A8A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Entering main() for videosubscriptionsd.", buf, 2u);
  }

  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, &stru_100014C20);
  v1 = VSLoadBundleAtPath();
  objc_autoreleasePoolPop(v0);
  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Will load VideoSubscriberAccount framework.", buf, 2u);
    }

    v3 = objc_autoreleasePoolPush();
    v10 = 0;
    v4 = [v1 loadAndReturnError:&v10];
    v5 = v10;
    objc_autoreleasePoolPop(v3);
    if (v4)
    {
      v6 = objc_autoreleasePoolPush();
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Did load VideoSubscriberAccount framework.", buf, 2u);
      }

      v7 = objc_alloc_init(NSClassFromString(@"VSUserAccountService"));
      v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.VideoSubscriberAccount.videosubscriptionsd"];
      [v8 setDelegate:v7];
      [v8 resume];
      objc_autoreleasePoolPop(v6);
      v9 = +[NSRunLoop currentRunLoop];
      [v9 run];

LABEL_12:
      exit(1);
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v12 = v5;
    v2 = "Error loading framework: %@";
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v12 = 0;
    v2 = "Unable to find framework using path: %@";
  }

  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v2, buf, 0xCu);
  goto LABEL_12;
}

void sub_10000AB10(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C238();
  }

  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    if (!strcmp(string, "Application Installed") || !strcmp(v4, "Application Uninstalled"))
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 postNotificationName:@"VSInstalledApplicationsDidChange" object:0];
    }
  }
}

void sub_10000AEE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000C280(v4, v5);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_10000B0D0()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B140()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B1B0()
{
  sub_10000A854();
  sub_10000A89C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B220()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B290()
{
  sub_10000A860();
  sub_10000A89C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000B2CC()
{
  sub_10000A860();
  sub_10000A89C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000B308()
{
  sub_10000A854();
  sub_10000A89C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B378()
{
  sub_10000A854();
  sub_10000A89C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B3E8()
{
  sub_10000A860();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000B424()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B494()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B504()
{
  sub_10000A860();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000B540()
{
  sub_10000A860();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000B57C(uint64_t a1)
{
  sub_10000A8A8(a1, __stack_chk_guard);
  sub_10000A830();
  sub_10000A86C(&_mh_execute_header, v1, v2, "Failed to authorize auto sign in token. {bundleIdentifier=%{public}@, error=%@}");
}

void sub_10000B5E4()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000B660()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B6D0(uint64_t a1)
{
  sub_10000A8A8(a1, __stack_chk_guard);
  sub_10000A830();
  sub_10000A86C(&_mh_execute_header, v1, v2, "Failed to update auto sign in token. {bundleIdentifier=%{public}@, error=%@}");
}

void sub_10000B738(uint64_t a1)
{
  sub_10000A8A8(a1, __stack_chk_guard);
  sub_10000A848();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000B7AC(uint64_t a1)
{
  sub_10000A8A8(a1, __stack_chk_guard);
  sub_10000A830();
  sub_10000A86C(&_mh_execute_header, v1, v2, "Failed to delete auto sign in token. {bundleIdentifier=%{public}@, error=%@}");
}

void sub_10000B814(uint64_t a1)
{
  sub_10000A8A8(a1, __stack_chk_guard);
  sub_10000A848();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000B888(uint64_t a1)
{
  sub_10000A8A8(a1, __stack_chk_guard);
  sub_10000A830();
  sub_10000A86C(&_mh_execute_header, v1, v2, "Failed to fetch auto sign in token. {bundleIdentifier=%{public}@, error=%@}");
}

void sub_10000B8F0()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B960()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000B9D0()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000BA40()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000BAB0()
{
  sub_10000A854();
  sub_10000A89C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000BB20()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000BB90()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000BC00(void *a1, NSObject *a2)
{
  [a1 count];
  sub_10000A854();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Found %ld existing persistent user accounts that match the user account to delete.", v3, 0xCu);
}

void sub_10000BC88()
{
  sub_10000A860();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BCC4()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000BD34()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000BDA4()
{
  sub_10000A860();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BDE0(void *a1)
{
  [a1 sourceType];
  sub_10000A854();
  sub_10000A88C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000BE60(void *a1)
{
  v1 = [a1 sourceIdentifier];
  sub_10000A854();
  sub_10000A88C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10000BF04()
{
  sub_10000A860();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BF40()
{
  sub_10000A860();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BF7C(void *a1)
{
  [a1 sourceType];
  sub_10000A854();
  sub_10000A88C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000BFFC()
{
  sub_10000A860();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C038()
{
  sub_10000A860();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C074()
{
  sub_10000A860();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C0B0(void *a1)
{
  v6 = [a1 updateError];
  sub_10000A88C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10000C158()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000C1C8()
{
  sub_10000A854();
  sub_10000A848();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000C280(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching subscriptions for migration: %@", &v2, 0xCu);
}