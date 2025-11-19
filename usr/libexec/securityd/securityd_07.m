void sub_10013EF54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = 0;
  v2 = [WeakRetained fetchSendingMetricsPermitted:&v17];
  v3 = v17;
  if (!v3)
  {
    v6 = sub_100006274("octagon-metrics");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"Not Permitted";
      if (v2)
      {
        v7 = @"Permitted";
      }

      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "current metrics setting set to: %@", buf, 0xCu);
    }

    if (!v2)
    {
      goto LABEL_18;
    }

    v16 = 0;
    v8 = [WeakRetained persistSendingMetricsPermitted:0 error:&v16];
    v9 = v16;
    v10 = v9;
    if (!v8 || v9)
    {
      v11 = sub_100006274("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v10;
        v12 = "octagon-metrics: failed to persist metrics setting: %@";
        v13 = v11;
        v14 = 12;
        goto LABEL_16;
      }
    }

    else
    {
      v11 = sub_100006274("octagon-metrics");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "persisted metrics setting set to not permitted";
        v13 = v11;
        v14 = 2;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }

LABEL_18:
    v15 = [WeakRetained checkMetricsTrigger];
    [v15 cancel];

    [WeakRetained setCheckMetricsTrigger:0];
    goto LABEL_19;
  }

  v4 = sub_100006274("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon-metrics: failed to fetch account metadata: %@", buf, 0xCu);
  }

  v5 = [WeakRetained checkMetricsTrigger];
  [v5 trigger];

LABEL_19:
}

void sub_10013F498(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "localReset returned an error: %@", &v6, 0xCu);
    }
  }

  else
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "localReset succeeded", &v6, 2u);
    }

    v4 = [*(a1 + 40) pairingUUID];
    [*(a1 + 32) setPairingUUID:v4];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1001405F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      v5 = "octagon-perform-ckserver-unreadable-data-removal: failed with error: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else
  {
    v4 = sub_100006274("octagon-perform-ckserver-unreadable-data-removal");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "succeeded!";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
}

OTAccountMetadataClassC *__cdecl sub_100140FC0(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setCdpState:2];

  return v2;
}

void sub_100141330(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100141354(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  WeakRetained[12] = -1;
  v5 = [*(a1 + 32) unsignedCharValue];
  v6 = v5;
  if (a2)
  {
    v7 = sub_100006274("octagon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "not in clique, discarding passcode stash", buf, 2u);
    }

    v8 = [WeakRetained laContextAdapter];
    v9 = v8;
    v10 = v6;
LABEL_5:
    [v8 discardPasscodeStashSecret:v10];
    goto LABEL_24;
  }

  switch(v5)
  {
    case 2:
      v17 = sub_100006274("octagon");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "cache flow enabled passcode unlocked", buf, 2u);
      }

      WeakRetained[12] = 102;
      goto LABEL_23;
    case 1:
      v16 = sub_100006274("octagon");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "cache flow enabled passcode validated", buf, 2u);
      }

      v8 = [WeakRetained laContextAdapter];
      v9 = v8;
      v10 = 1;
      goto LABEL_5;
    case 0:
      v11 = sub_100006274("octagon");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "cache flow enabled passcode changed", buf, 2u);
      }

      WeakRetained[12] = 100;
      v12 = [WeakRetained accountMetadataStore];
      v27 = 0;
      v13 = [v12 clearLastEscrowRepairAttempt:&v27];
      v14 = v27;

      if (!v13 || v14)
      {
        v15 = sub_100006274("SecError");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "failed to clear last escrow repair attempt: %@", buf, 0xCu);
        }
      }

LABEL_23:
      v18 = [WeakRetained stateMachine];
      [v18 handleFlag:@"passcode_stash_available"];

      v9 = [WeakRetained sessionMetrics];
      v19 = [AAFAnalyticsEventSecurity alloc];
      v20 = [WeakRetained activeAccount];
      v21 = [v20 altDSID];
      v22 = [v9 flowID];
      v23 = [v9 deviceSessionID];
      LOBYTE(v26) = 1;
      v24 = [v19 initWithKeychainCircleMetrics:0 altDSID:v21 flowID:v22 deviceSessionID:v23 eventName:kSecurityRTCEventNameEscrowPasscodeCacheAvailable testsAreEnabled:0 canSendMetrics:v26 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

      [v24 sendMetricWithResult:1 error:0];
      goto LABEL_24;
  }

  v9 = sub_100006274("SecError");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 32);
    *buf = 138412290;
    v29 = v25;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "cache flow enabled unknown value: %@", buf, 0xCu);
  }

LABEL_24:
}

id sub_100141CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAltDSID:*(a1 + 32)];

  return v3;
}

void sub_100141FE4(uint64_t a1)
{
  v2 = sub_100006274("octagon");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Told of a new CK account status: %@", buf, 0xCu);
  }

  [*(a1 + 40) setCloudKitAccountInfo:*(a1 + 32)];
  if ([*(a1 + 32) accountStatus] == 1)
  {
    v4 = [*(a1 + 40) activeAccount];

    if (!v4)
    {
      v5 = [*(a1 + 40) sessionMetrics];
      v7 = [AAFAnalyticsEventSecurity alloc];
      v8 = [*(a1 + 40) activeAccount];
      v9 = [v8 altDSID];
      v10 = [v5 flowID];
      v11 = [v5 deviceSessionID];
      v12 = kSecurityRTCEventNameCloudKitAccountAvailability;
      LOBYTE(v28) = [*(a1 + 40) canSendMetricsUsingAccountState:{objc_msgSend(*(a1 + 40), "shouldSendMetricsForOctagon")}];
      v6 = [v7 initWithKeychainCircleMetrics:0 altDSID:v9 flowID:v10 deviceSessionID:v11 eventName:v12 testsAreEnabled:0 canSendMetrics:v28 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

      v13 = [*(a1 + 40) accountsAdapter];
      v14 = [*(a1 + 40) personaAdapter];
      v15 = [*(a1 + 40) containerName];
      v16 = [*(a1 + 40) contextID];
      v29 = 0;
      v17 = [v13 findAccountForCurrentThread:v14 optionalAltDSID:0 cloudkitContainerName:v15 octagonContextID:v16 error:&v29];
      v18 = v29;
      [*(a1 + 40) setActiveAccount:v17];

      v19 = [*(a1 + 40) activeAccount];

      v20 = sub_100006274("octagon-account");
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          v22 = [*(a1 + 40) contextID];
          v23 = [*(a1 + 40) activeAccount];
          *buf = 138412546;
          v31 = v22;
          v32 = 2112;
          v33 = v23;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found a new account (%@): %@", buf, 0x16u);
        }

        v20 = [*(a1 + 40) accountMetadataStore];
        v24 = [*(a1 + 40) activeAccount];
        [v20 changeActiveAccount:v24];
      }

      else
      {
        if (!v21)
        {
LABEL_14:

          v25 = [*(a1 + 40) activeAccount];
          [v6 sendMetricWithResult:v25 != 0 error:v18];

          goto LABEL_15;
        }

        v24 = [*(a1 + 40) contextID];
        *buf = 138412546;
        v31 = v24;
        v32 = 2112;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unable to find a current account (context %@): %@", buf, 0x16u);
      }

      goto LABEL_14;
    }
  }

  v5 = sub_100006274("octagon-account");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) contextID];
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "skipping account fetch %@", buf, 0xCu);
LABEL_15:
  }

  v26 = [*(a1 + 40) stateMachine];
  [v26 _onqueuePokeStateMachine];

  v27 = [*(a1 + 40) cloudKitAccountStateKnown];
  [v27 fulfill];
}

void sub_100143364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

void sub_1001433C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Adding flag for CKKS TLK upload", v4, 2u);
  }

  v3 = [WeakRetained stateMachine];
  [v3 handleFlag:@"tlk_upload_needed"];
}

void sub_100143464(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Adding flag for CKKS policy check", v4, 2u);
  }

  v3 = [WeakRetained stateMachine];
  [v3 handleFlag:@"policy_check_needed"];
}

void sub_100143504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [[OctagonPendingFlag alloc] initWithFlag:@"attempt_ucv_upgrade" conditions:3];
  v2 = [WeakRetained stateMachine];
  [v2 handlePendingFlag:v1];
}

void sub_100143588(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100006274("octagon-metrics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Added check-on-metrics flag to the state machine", v4, 2u);
  }

  v3 = [WeakRetained stateMachine];
  [v3 handleFlag:@"check_on_rtc_metrics"];
}

__CFString *sub_100143858(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = +[NSMutableSet set];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"unlock"];
      v1 &= ~1uLL;
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if (!v1)
        {
LABEL_6:
          v5 = [v3 allObjects];
          v6 = [v5 componentsJoinedByString:{@", "}];

          goto LABEL_8;
        }

LABEL_5:
        v4 = [NSString stringWithFormat:@"Conditions<0x%x>", v1];
        [v3 addObject:v4];

        goto LABEL_6;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"network"];
    v1 &= ~2uLL;
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = @"none";
LABEL_8:

  return v6;
}

uint64_t sub_100143FE4(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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

      if ((v12 >> 3) == 101)
      {
        break;
      }

      if ((v12 >> 3) == 102)
      {
        v13 = &OBJC_IVAR___SECC2MPInternalTestConfig__value;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___SECC2MPInternalTestConfig__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_100144608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014462C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = +[CKKSAnalytics logger];
  [v9 logResultForEvent:@"OctagonEventPreflightVouchWithCustodianRecoveryKey" hardFailure:1 result:v7];

  if (!v6 || v7)
  {
    v12 = sub_100006274("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "octagon: Error preflighting voucher using custodian recovery key: %@", &v14, 0xCu);
    }

    [WeakRetained setError:v7];
  }

  else
  {
    v10 = sub_100006274("octagon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Preflight Custodian Recovery key ID %@ looks good to go", &v14, 0xCu);
    }

    v11 = [WeakRetained intendedState];
    [WeakRetained setNextState:v11];
  }

  v13 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v13];
}

void sub_100144C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100144C40(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = +[CKKSAnalytics logger];
  [v17 logResultForEvent:@"OctagonEventVoucherWithCustodianRecoveryKey" hardFailure:1 result:v15];

  if (v15)
  {
    v18 = sub_100006274("SecError");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon: Error preparing voucher using custodian recovery key: %@", buf, 0xCu);
    }

    [WeakRetained setError:v15];
LABEL_16:
    v23 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v23];
    goto LABEL_17;
  }

  v19 = +[CKKSAnalytics logger];
  [v19 recordRecoveredTLKMetrics:*(a1 + 32) tlkRecoveryResults:v14 uniqueTLKsRecoveredEvent:@"OACustodianUniqueTLKsRecoveredCount" totalSharesRecoveredEvent:@"OACustodianTotalTLKSharesRecoveredCount" totalRecoverableTLKSharesEvent:@"OACustodianTotalTLKSharesCount" totalRecoverableTLKsEvent:@"OACustodianUniqueTLKsWithSharesCount" totalViewsWithSharesEvent:@"OACustodianTLKUniqueViewCount"];

  [WeakRetained setVoucher:v11];
  [WeakRetained setVoucherSig:v12];
  if (![WeakRetained saveVoucher])
  {
LABEL_13:
    v26 = sub_100006274("octagon");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Successfully vouched with a custodian recovery key: %@, %@", buf, 0x16u);
    }

    v27 = [WeakRetained intendedState];
    [WeakRetained setNextState:v27];

    goto LABEL_16;
  }

  v20 = sub_100006274("octagon");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Saving voucher for later use...", buf, 2u);
  }

  v21 = [WeakRetained deps];
  v22 = [v21 stateHolder];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100145058;
  v29[3] = &unk_100337F70;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v28 = 0;
  [v22 persistAccountChanges:v29 error:&v28];
  v23 = v28;

  if (!v23)
  {

    goto LABEL_13;
  }

  v24 = sub_100006274("octagon");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "unable to save voucher: %@", buf, 0xCu);
  }

  v25 = [WeakRetained finishOp];
  [WeakRetained runBeforeGroupFinished:v25];

LABEL_17:
}

id sub_100145058(void *a1, void *a2)
{
  v3 = a2;
  [v3 setVoucher:a1[4]];
  [v3 setVoucherSignature:a1[5]];
  [v3 setTLKSharesPairedWithVoucher:a1[6]];

  return v3;
}

void sub_1001452A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1001452C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "octagon: Error fetching TLKShares to recover: %@", buf, 0xCu);
    }

    [v8 setError:v6];
    v10 = [v8 finishOp];
    [v8 runBeforeGroupFinished:v10];
  }

  else
  {
    v25 = WeakRetained;
    v10 = +[NSMutableArray array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v5;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          v17 = [v16 recordType];
          v18 = [v17 isEqual:@"tlkshare"];

          if (v18)
          {
            v19 = [CKKSTLKShareRecord alloc];
            v20 = [v25 deps];
            v21 = [v20 contextID];
            v22 = [(CKKSCKRecordHolder *)v19 initWithCKRecord:v16 contextID:v21];

            v23 = [(CKKSTLKShareRecord *)v22 share];
            [v10 addObject:v23];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v8 = v25;
    [v25 proceedWithFilteredTLKShares:v10];
    v6 = 0;
    v5 = v24;
  }
}

void sub_1001458EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100145918(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = +[CKKSAnalytics logger];
  [v11 logResultForEvent:@"OctagonEventPreflightVouchWithCustodianRecoveryKey" hardFailure:1 result:v9];

  if (!v7 || v9)
  {
    v15 = sub_100006274("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "octagon: Error preflighting voucher using custodian recovery key: %@", &v17, 0xCu);
    }

    [WeakRetained setError:v9];
    v16 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v16];
  }

  else
  {
    v12 = sub_100006274("octagon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Custodian Recovery key ID %@ looks good to go", &v17, 0xCu);
    }

    v13 = [WeakRetained deps];
    v14 = [v13 ckks];
    [v14 setCurrentSyncingPolicy:v8];

    [WeakRetained proceedWithRecoveryKeyID:v7];
  }
}

void sub_100146034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100146058(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = +[CKKSAnalytics logger];
  [v11 logResultForEvent:@"OctagonEventVoucherWithInheritanceKey" hardFailure:1 result:v9];

  if (v9)
  {
    v12 = sub_100006274("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "octagon-inheritor: Error recovering tlkshares: %@", buf, 0xCu);
    }

    [WeakRetained setError:v9];
    v13 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v13];
  }

  else
  {
    v14 = +[CKKSAnalytics logger];
    [v14 recordRecoveredTLKMetrics:*(a1 + 32) tlkRecoveryResults:v8 uniqueTLKsRecoveredEvent:@"OAInheritanceUniqueTLKsRecoveredCount" totalSharesRecoveredEvent:@"OAInheritanceTotalTLKSharesRecoveredCount" totalRecoverableTLKSharesEvent:@"OAInheritanceTotalTLKSharesCount" totalRecoverableTLKsEvent:@"OAInheritanceUniqueTLKsWithSharesCount" totalViewsWithSharesEvent:@"OAInheritanceTLKUniqueViewCount"];

    v15 = sub_100006274("octagon-inheritor");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Saving tlkshares for later use...", buf, 2u);
    }

    v16 = [WeakRetained deps];
    v17 = [v16 stateHolder];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001463B4;
    v22[3] = &unk_100344BD8;
    v23 = v7;
    v21 = 0;
    [v17 persistAccountChanges:v22 error:&v21];
    v13 = v21;

    v18 = sub_100006274("octagon-inheritor");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v19)
      {
        *buf = 138412290;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "unable to save shares: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully recovered shares", buf, 2u);
      }

      v18 = [WeakRetained intendedState];
      [WeakRetained setNextState:v18];
    }

    v20 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v20];
  }
}

id sub_1001463B4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTLKSharesPairedWithVoucher:*(a1 + 32)];

  return v3;
}

void sub_100146968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak((v36 - 128));
  _Block_object_dispose((v36 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001469AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1001469C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 parsedSecureElementIdentity];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return v3;
}

void sub_100146A1C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = a10;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v24 = +[CKKSAnalytics logger];
  [v24 logResultForEvent:@"OctagonEventPrepareIdentity" hardFailure:1 result:v23];

  if (v23)
  {
    v25 = sub_100006274("SecError");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = v23;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "octagon-inheritor: Error preparing inheritor identity: %@", buf, 0xCu);
    }

    v26 = WeakRetained;
    [WeakRetained setError:v23];
    v27 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v27];
  }

  else
  {
    v28 = sub_100006274("octagon-inheritor");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v71 = v16;
      v72 = 2112;
      v73 = v17;
      v74 = 2112;
      v75 = v18;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Prepared: %@ %@ %@", buf, 0x20u);
    }

    [WeakRetained setPeerID:v16];
    v58 = v17;
    [WeakRetained setPermanentInfo:v17];
    v57 = v18;
    [WeakRetained setPermanentInfoSig:v18];
    v56 = v19;
    [WeakRetained setStableInfo:v19];
    v55 = v20;
    [WeakRetained setStableInfoSig:v20];
    v29 = sub_100006274("octagon-inheritor");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v21 viewList];
      *buf = 138412546;
      v71 = v21;
      v72 = 2112;
      v73 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "New syncing policy: %@ views: %@", buf, 0x16u);
    }

    v54 = v21;

    v59 = +[NSMutableArray array];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v53 = v22;
    v31 = v22;
    v32 = [v31 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v66;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v66 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v65 + 1) + 8 * i);
          v37 = [v36 recordType];
          v38 = [v37 isEqual:@"tlkshare"];

          if (v38)
          {
            v39 = [CKKSTLKShareRecord alloc];
            v40 = [WeakRetained deps];
            v41 = [v40 contextID];
            v42 = [(CKKSCKRecordHolder *)v39 initWithCKRecord:v36 contextID:v41];

            v43 = [(CKKSTLKShareRecord *)v42 share];
            [v59 addObject:v43];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v33);
    }

    v44 = [WeakRetained deps];
    v45 = [v44 stateHolder];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100147010;
    v62[3] = &unk_100338E48;
    v63 = v16;
    v21 = v54;
    v46 = v54;
    v64 = v46;
    v61 = 0;
    v47 = [v45 persistAccountChanges:v62 error:&v61];
    v27 = v61;

    if (!v47 || v27)
    {
      v51 = sub_100006274("octagon-inheritor");
      v17 = v58;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = v27;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Couldn't persist metadata: %@", buf, 0xCu);
      }

      v26 = WeakRetained;
      [WeakRetained setError:v27];
      v52 = [WeakRetained finishOp];
      [WeakRetained runBeforeGroupFinished:v52];

      v19 = v56;
      v18 = v57;
      v20 = v55;
      v22 = v53;
      v50 = v59;
    }

    else
    {
      v48 = [WeakRetained deps];
      v49 = [v48 ckks];
      [v49 setCurrentSyncingPolicy:v46];

      v26 = WeakRetained;
      v50 = v59;
      [WeakRetained proceedWithFilteredTLKShares:v59];
      v18 = v57;
      v17 = v58;
      v20 = v55;
      v19 = v56;
      v22 = v53;
    }

    v23 = 0;
  }
}

id sub_100147010(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPeerID:*(a1 + 32)];
  [v3 setTrustState:2];
  [v3 setIsInheritedAccount:1];
  v4 = [v3 tlkSharesForVouchedIdentitys];
  [v4 removeAllObjects];

  [v3 setTPSyncingPolicy:*(a1 + 40)];

  return v3;
}

CFMutableDictionaryRef sub_10014779C(uint64_t a1)
{
  **(a1 + 32) = _CFRuntimeRegisterClass();
  v1 = dispatch_queue_create("SOSEngine queue", 0);
  v2 = qword_10039DF20;
  qword_10039DF20 = v1;

  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_10039DF28 = result;
  return result;
}

CFStringRef sub_100147824(void *a1, const __CFDictionary *a2)
{
  v4 = a1[10];
  if (v4)
  {
    v5 = CFStringCreateByCombiningStrings(kCFAllocatorDefault, v4, @" ");
  }

  else
  {
    v5 = &stru_100348050;
  }

  v6 = a1[3];
  v7 = a1[6];
  if (v7)
  {
    Count = CFDictionaryGetCount(v7);
  }

  else
  {
    Count = 0;
  }

  v9 = a1[7];
  if (v9)
  {
    v9 = CFDictionaryGetCount(v9);
  }

  v10 = CFStringCreateWithFormat(kCFAllocatorDefault, a2, @"<Engine %@ peers %@ MC[%d] PS[%d]>", v6, v5, Count, v9);
  if (v5)
  {
    CFRelease(v5);
  }

  return v10;
}

const void *sub_1001478EC(uint64_t a1, const void *a2)
{
  if (![OTSOSActualAdapter sosEnabled]_0())
  {
    return 0;
  }

  v4 = 0;
  if (a2)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, a2);
      v4 = Value;
      if (Value)
      {
        v7 = CFGetTypeID(Value);
        if (v7 != sub_10022A258())
        {
          v8 = sub_100006274("SecError");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 138412290;
            v11 = a2;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "dropping corrupt manifest for %@ from cache", &v10, 0xCu);
          }

          CFDictionaryRemoveValue(*(a1 + 48), a2);
          return 0;
        }
      }
    }
  }

  return v4;
}

const void *sub_1001479F8(uint64_t a1, const __CFDictionary *a2, const void *a3)
{
  if (![OTSOSActualAdapter sosEnabled]_0())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a2, a3);
  if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFDataGetTypeID()))
  {
    v7 = 0;
  }

  v9 = sub_1001478EC(a1, v7);
  v10 = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  return v10;
}

CFMutableArrayRef sub_100147A84(uint64_t a1, const __CFDictionary *a2, const void *a3, __CFArray *Mutable)
{
  if (![OTSOSActualAdapter sosEnabled]_0())
  {
    SOSCCSetSOSDisabledError();
    return 0;
  }

  Value = CFDictionaryGetValue(a2, a3);
  if (Value)
  {
    v9 = Value;
    v10 = CFGetTypeID(Value);
    if (v10 == CFArrayGetTypeID())
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v12 = Count;
        for (i = 0; i != v12; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
          v15 = sub_1001478EC(a1, ValueAtIndex);
          if (v15)
          {
            CFArrayAppendValue(Mutable, v15);
          }
        }
      }

      return Mutable;
    }

    if (!Mutable)
    {
      return Mutable;
    }

    sub_1000103CC(-50, Mutable, @"object %@ is not an array", v9);
    return 0;
  }

  return CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
}

void sub_100147BD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = a1[5];
  v9 = a1[6];
  v11 = a1[7];
  v10 = a1[8];
  if (!a3)
  {
    goto LABEL_11;
  }

  SOSFullPeerInfoGetPeerInfo();
  v13 = SOSPeerInfoCopyPubKey();
  if (v13)
  {
    v14 = SOSPeerInfoCopyPubKey();
    if (v14)
    {
      v15 = *(a3 + 24);
      v16 = SecOTRSIsForKeys();
      goto LABEL_5;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = 0;
LABEL_5:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
    v17 = 1;
    goto LABEL_27;
  }

LABEL_11:
  v18 = sub_100006274("coder");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v9;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "New coder for id %@.", buf, 0xCu);
  }

  CFGetAllocator(v10);
  sub_100228F20();
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 40) = 0;
  *(Instance + 48) = 0;
  *(Instance + 56) = 0;
  if (!v10 || !v11)
  {
    v25 = sub_100006274("coder");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "NULL Coder requested, no transport security", buf, 2u);
    }

    goto LABEL_26;
  }

  v20 = SOSFullPeerInfoCopyDeviceKey();
  if (!v20)
  {
    v22 = 0;
    v23 = 0;
    v21 = 0;
    goto LABEL_35;
  }

  v21 = SecOTRFullIdentityCreateFromSecKeyRefSOS();
  if (!v21)
  {
    v22 = 0;
LABEL_33:
    v23 = 0;
    goto LABEL_35;
  }

  CFRelease(v20);
  v22 = SOSPeerInfoCopyPubKey();
  if (!v22)
  {
    v20 = 0;
    goto LABEL_33;
  }

  v23 = SecOTRPublicIdentityCreateFromSecKeyRef();
  if (v23)
  {
    if (kCFBooleanTrue == kCFBooleanFalse)
    {
      v24 = SecOTRSessionCreateFromIDAndFlags();
    }

    else
    {
      v24 = SecOTRSessionCreateFromID();
    }

    *(Instance + 24) = v24;
    if (v24)
    {
      *(Instance + 32) = 0;
      *(Instance + 40) = 0;
      CFRelease(v22);
      CFRelease(v21);
      CFRelease(v23);
LABEL_26:
      v26 = *ccsha1_di();
      Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
      CFDataSetLength(Mutable, v26);
      *(Instance + 48) = Mutable;
      *(Instance + 56) = 0;
      sub_10022936C(Instance, 0);
      CFDictionarySetValue(*(v8 + 96), v9, Instance);
      CFRelease(Instance);
      v17 = 1;
      *(v8 + 105) = 1;
      goto LABEL_27;
    }

    v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_35:
  v28 = sub_100006274("SecError");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = @"No local error in SOSCoderCreate";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Coder create failed: %@\n", buf, 0xCu);
  }

  v29 = sub_100006274("SecError");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Coder create failed: %@\n", buf, 0xCu);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  CFRelease(Instance);
  v30 = sub_100006274("SecError");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v9;
    v33 = 2112;
    v34 = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Failed to create coder for %@: %@", buf, 0x16u);
  }

  v17 = 0;
LABEL_27:
  *(*(a1[4] + 8) + 24) = v17;
  *a6 = *(a1[5] + 105);
}

uint64_t sub_10014811C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100148238;
    v11[3] = &unk_1003382A0;
    v15 = a2;
    v16 = a3;
    v13 = &v17;
    v14 = a1;
    v12 = v7;
    v8 = sub_10014854C(a1, a3, v11);
    v9 = (v8 & v18[3]);
    *(v18 + 24) &= v8;

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    SOSCCSetSOSDisabledError();
    v9 = 0;
  }

  return v9;
}

void sub_100148238(uint64_t a1)
{
  v2 = sub_1001486BC(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (v2)
  {
    v3 = v2;
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = *(a1 + 64);
    if ((*(v5 + 104) & 1) == 0)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v7 = (*(*(v5 + 16) + 40))();
      v8 = v7;
      if (v7)
      {
        v9 = sub_100148808(v7, v6);
        if (v9)
        {
          v10 = *(v5 + 56);
          context[0] = _NSConcreteStackBlock;
          context[1] = 3221225472;
          context[2] = sub_1001488E0;
          context[3] = &unk_1003466B0;
          context[5] = v9;
          context[6] = v5;
          context[4] = &v20;
          CFDictionaryApplyFunction(v10, sub_100149D00, context);
          v11 = sub_100006274("coder");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(v21 + 24);
            *buf = 67109120;
            v25 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Will force peer registration: %{BOOL}d", buf, 8u);
          }

          if (*(v21 + 24) == 1)
          {
            v13 = dispatch_get_global_queue(-32768, 0);
            dispatch_async(v13, &stru_1003385A0);
          }

          *(v5 + 104) = 1;
        }

        CFRelease(v8);
        if (v9)
        {
          CFRelease(v9);
        }
      }

      _Block_object_dispose(&v20, 8);
      *(v5 + 104) = 1;
    }

    Value = CFDictionaryGetValue(*(v5 + 96), v4);
    if (!Value || (v15 = CFGetTypeID(Value), v15 != sub_100228F20()))
    {
      SOSErrorCreate();
    }

    v16 = *(*(a1 + 48) + 16);
    (*(*(a1 + 32) + 16))(*(a1 + 32));
    CFRelease(v3);
  }

  else
  {
    v17 = *(a1 + 64);
    v18 = *(a1 + 56);
    *(*(*(a1 + 40) + 8) + 24) = SOSErrorCreate();
  }
}

void sub_100148524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014854C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 16);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100148608;
  v11[3] = &unk_1003384E0;
  v12 = v5;
  v13 = a1;
  v7 = *(v6 + 64);
  v8 = v5;
  v9 = v7(v6, a2, 0, 1, v11);

  return v9;
}

void sub_100148608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001486A4;
  block[3] = &unk_1003384B8;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = a3;
  dispatch_sync(*(v5 + 112), block);
}

void *sub_1001486BC(uint64_t a1, const void *a2, __CFArray *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (Value)
  {

    return sub_100149A44(a1, a2, Value, a3);
  }

  else
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      *buf = 138412802;
      v11 = a2;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "peer: %@ not found, peerMap: %@, engine: %@", buf, 0x20u);
    }

    SOSErrorCreate();
    return 0;
  }
}

CFTypeRef sub_100148808(const __CFData *a1, CFTypeRef *a2)
{
  if (![OTSOSActualAdapter sosEnabled]_0())
  {
    SOSCCSetSOSDisabledError();
    return 0;
  }

  cf = 0;
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    v6 = &BytePtr[Length];
    v7 = sub_100006D24(kCFAllocatorDefault, &cf, a2, BytePtr, &BytePtr[Length]);
    if (v7)
    {
      v8 = v7 == v6;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v10 = SOSErrorCreate();
      if (v10)
      {
        return cf;
      }

      goto LABEL_12;
    }

    if (!v7)
    {
LABEL_12:
      v11 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v11);
      }
    }
  }

  return cf;
}

void sub_1001488E0(uint64_t a1, const __CFString *cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      if (CFStringHasSuffix(cf, @"-tomb"))
      {
        v5 = sub_100006274("coder");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = cf;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping coder check for peer: %@", buf, 0xCu);
        }

        return;
      }
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 40), cf);
  if (!Value)
  {
    v10 = sub_100006274("coder");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = cf;
      v15 = 2112;
      v16 = v11;
      v12 = "didn't find coder for peer: %@ engine dictionary: %@";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);
    }

LABEL_15:

    *(*(*(a1 + 32) + 8) + 24) = 1;
    return;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFDataGetTypeID())
  {
    v10 = sub_100006274("coder");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = cf;
      v15 = 2112;
      v16 = 0;
      v12 = "coder for %@ was not cf data: %@";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_100228F20();
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 40) = 0;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 48) = 0;
  *(Instance + 56) = 0;
  CFDataGetBytePtr(v7);
  CFDataGetLength(v7);
  *buf = 0xAAAAAAAAAAAAAAAALL;
  ccder_decode_tag();
  SOSErrorCreate();
  CFRelease(Instance);
  v13 = sub_100006274("coder");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = cf;
    v15 = 2112;
    v16 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Coder for '%@' failed to create: %@", buf, 0x16u);
  }
}

uint64_t sub_100148EB4(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!*(a1 + 16))
  {
    return 1;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = Mutable;
  v8 = *(a1 + 24);
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"id", v8);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    CFDictionarySetValue(v7, @"peerIDs", v9);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    CFDictionarySetValue(v7, @"traceDate", v10);
  }

  *valuePtr = 2;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, valuePtr);
  CFDictionarySetValue(v7, @"engine-stateVersion", v11);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v7)
  {
    v37 = sub_10014942C(a1, a2, @"engine-state-v2", kSecAttrAccessibleAlwaysPrivate, v7, a3);
    CFRelease(v7);
  }

  else
  {
    v37 = 0;
  }

  v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = *(a1 + 56);
  *valuePtr = _NSConcreteStackBlock;
  *&valuePtr[8] = 3221225472;
  *&valuePtr[16] = sub_1001494B0;
  v40 = &unk_1003469D0;
  v41 = v13;
  CFDictionaryApplyFunction(v14, sub_100149D00, valuePtr);
  if (v13)
  {
    v15 = sub_10014942C(a1, a2, @"engine-peer-states", kSecAttrAccessibleAlwaysPrivate, v13, a3);
    CFRelease(v13);
  }

  else
  {
    v15 = 0;
  }

  v16 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *valuePtr = _NSConcreteStackBlock;
  *&valuePtr[8] = 3221225472;
  *&valuePtr[16] = sub_1001495FC;
  v40 = &unk_100338330;
  v41 = v16;
  sub_100149668(a1, valuePtr);
  if (v16)
  {
    v17 = sub_10014942C(a1, a2, @"engine-manifest-cache", kSecAttrAccessibleAlwaysPrivate, v16, a3);
    CFRelease(v16);
  }

  else
  {
    v17 = 0;
  }

  if (*(a1 + 105) == 1)
  {
    cf = 0;
    v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v19 = *(a1 + 56);
    *valuePtr = _NSConcreteStackBlock;
    *&valuePtr[8] = 3221225472;
    *&valuePtr[16] = sub_1001496F4;
    v40 = &unk_100338D38;
    v41 = a1;
    v42 = v18;
    CFDictionaryApplyFunction(v19, sub_100149D00, valuePtr);
    v23 = sub_10001B910(v18, &cf, v20, v21, v22);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v23 && (*(*(a1 + 16) + 96))())
    {
      *(a1 + 105) = 0;
      v24 = sub_100006274("coder");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(a1 + 96);
        *valuePtr = 138412290;
        *&valuePtr[4] = v36;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "saved coders: %@", valuePtr, 0xCu);
      }

      v25 = 1;
    }

    else
    {
      if (a3)
      {
        v27 = cf;
        cf = 0;
        if (*a3)
        {
          CFRelease(*a3);
        }

        *a3 = v27;
      }

      v28 = sub_100006274("coder");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 96);
        *valuePtr = 138412546;
        *&valuePtr[4] = v29;
        *&valuePtr[12] = 2112;
        *&valuePtr[14] = cf;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "failed to save coders: %@ (%@)", valuePtr, 0x16u);
      }

      v25 = 0;
      v26 = 0;
      if (!v23)
      {
        goto LABEL_37;
      }
    }

    CFRelease(v23);
    v26 = v25;
LABEL_37:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_39;
  }

  v26 = 1;
LABEL_39:
  v30 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v33 = v30;
  v34 = *(a1 + 24);
  if (v34)
  {
    CFDictionarySetValue(v30, @"id", v34);
  }

  v35 = sub_10001B910(v33, 0, v34, v31, v32);
  if (v33)
  {
    CFRelease(v33);
  }

  if (v35)
  {
    (*(*(a1 + 16) + 96))();
    CFRelease(v35);
  }

  if ((v15 & v37 & v17) != 0)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

__CFData *sub_10014942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFString *a5, CFTypeRef *a6)
{
  result = sub_10001B910(a5, a6, a3, a4, a5);
  if (result)
  {
    v8 = result;
    v9 = (*(*(a1 + 16) + 96))();
    CFRelease(v8);
    return v9;
  }

  return result;
}

void sub_1001494B0(uint64_t a1, const void *a2, __CFDictionary *cf)
{
  if (!cf)
  {
    return;
  }

  v3 = cf;
  v6 = CFGetTypeID(cf);
  if (v6 == sub_10022DFAC())
  {
    v3 = sub_10022EFF4(v3);
    if (!v3)
    {
      v7 = sub_100006274("engine");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412546;
        v9 = a2;
        v10 = 2112;
        v11 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ failed to encode peer: %@", &v8, 0x16u);
      }

      return;
    }
  }

  else
  {
    CFRetain(v3);
  }

  CFDictionarySetValue(*(a1 + 32), a2, v3);

  CFRelease(v3);
}

void sub_1001495FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_10022FFEC(v3, *(a2 + 56));
  sub_10022FFEC(v3, *(a2 + 64));
  sub_10022FFEC(v3, *(a2 + 72));
  sub_10023004C(v3, *(a2 + 88));
  v4 = *(a2 + 80);

  sub_10023004C(v3, v4);
}

void sub_100149668(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v6 = objc_retainBlock(v3);
  Copy = CFDictionaryCreateCopy(0, *(a1 + 56));
  CFDictionaryApplyFunction(Copy, sub_1001499D4, &v5);
  CFRelease(Copy);
}

void sub_1001496F4(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 32);
  Value = CFDictionaryGetValue(*(v4 + 96), a2);
  if (!Value)
  {
    return;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != sub_100228F20())
  {
    return;
  }

  v23 = 0;
  v8 = sub_1002292A8(v6);
  if (v8)
  {
    v9 = v8;
    CFDataGetLength(v8);
    v10 = ccder_sizeof_raw_octet_string();
    v11 = ccder_sizeof();
    v12 = *(v6 + 40);
    if (v12)
    {
      CFDataGetLength(v12);
      ccder_sizeof_raw_octet_string();
    }

    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_11:
      CFRelease(v9);
      goto LABEL_19;
    }

    v14 = ccder_sizeof();
    CFRelease(v9);
    if (v14)
    {
      Mutable = CFDataCreateMutable(0, v14);
      if (Mutable)
      {
        v9 = Mutable;
        CFDataSetLength(Mutable, v14);
        CFDataGetMutableBytePtr(v9);
        v16 = sub_1002292A8(v6);
        if (v16)
        {
          v17 = v16;
          v18 = *(v6 + 32);
          v19 = *(v6 + 40);
          if (v19)
          {
            sub_10001263C(v19, &v23);
          }

          buf[0] = v18;
          ccder_encode_body();
          ccder_encode_tl();
          sub_10001263C(v17, &v23);
          v20 = ccder_encode_constructed_tl();
          CFRelease(v17);
          if (v20)
          {
            CFDictionarySetValue(*(a1 + 40), a2, v9);
LABEL_24:
            CFRelease(v9);
            return;
          }
        }

        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v21 = sub_100006274("SecError");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = a2;
    v26 = 2112;
    v27 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "failed to der encode coder for peer %@, dropping it: %@", buf, 0x16u);
  }

  CFDictionaryRemoveValue(*(v4 + 96), a2);
  v9 = v23;
  v22 = sub_100006274("engine");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = a2;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ no coder for peer: %@", buf, 0x16u);
  }

  if (v9)
  {
    goto LABEL_24;
  }
}

void sub_1001499D4(const void *a1, const __CFDictionary *cf, uint64_t *a3)
{
  v4 = sub_100149A44(*a3, a1, cf, 0);
  if (v4)
  {
    v5 = v4;
    (*(a3[1] + 16))();

    CFRelease(v5);
  }
}

void *sub_100149A44(uint64_t a1, const void *a2, const __CFDictionary *cf, __CFArray *a4)
{
  if (!cf || (v8 = CFGetTypeID(cf), v8 != sub_10022DFAC()))
  {
    v10 = *(a1 + 80);
    if (v10 && (v23.length = CFArrayGetCount(*(a1 + 80)), v23.location = 0, CFArrayContainsValue(v10, v23, a2)))
    {
      cfa = 0;
      v11 = sub_10022FB58(a1, a2, cf, &cfa);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v13 = sub_100006274("SecError");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v17 = a2;
          v18 = 2112;
          v19 = cfa;
          v20 = 2112;
          v21 = cf;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "error inflating peer: %@: %@ from state: %@", buf, 0x20u);
        }

        v14 = cfa;
        if (cfa)
        {
          cfa = 0;
          CFRelease(v14);
        }

        v12 = sub_10022FB58(a1, a2, 0, a4);
        if (!v12)
        {
          return v12;
        }
      }

      CFDictionarySetValue(*(a1 + 56), a2, v12);
    }

    else
    {
      SOSErrorCreate();
      return 0;
    }

    return v12;
  }

  return CFRetain(cf);
}

void sub_100149C34(id a1)
{
  cf = 0;
  if ((sub_1002501B0(&cf) & 1) == 0)
  {
    v1 = sub_100006274("coder");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v5 = cf;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SOSCCProcessEnsurePeerRegistration failed with: %@", buf, 0xCu);
    }
  }

  v2 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v2);
  }
}

uint64_t sub_100149D1C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v5 = (*(*(a1 + 16) + 40))();
  v6 = v5;
  if (v5)
  {
    v7 = sub_100148808(v5, &cf);
    v8 = (*(*(a1 + 16) + 40))();
    v9 = sub_100148808(v8, &cf);
    if (v8)
    {
      CFRelease(v8);
    }

    v10 = (*(*(a1 + 16) + 40))();
    v11 = sub_100148808(v10, &cf);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v12 = (*(*(a1 + 16) + 40))();
    if (v12)
    {
      v13 = v12;
      v14 = sub_100148808(v12, &cf);
      v7 = v14;
      if (v14)
      {
        Value = CFDictionaryGetValue(v14, @"manifestCache");
        v9 = Value;
        if (Value)
        {
          v16 = CFGetTypeID(Value);
          if (v16 == CFDictionaryGetTypeID())
          {
            CFRetain(v9);
          }

          else
          {
            v9 = 0;
          }
        }

        v17 = CFDictionaryGetValue(v7, @"peerState");
        v11 = v17;
        if (v17)
        {
          v18 = CFGetTypeID(v17);
          if (v18 == CFDictionaryGetTypeID())
          {
            CFRetain(v11);
          }

          else
          {
            v11 = 0;
          }
        }
      }

      else
      {
        v11 = 0;
        v9 = 0;
      }

      CFRelease(v13);
    }

    else
    {
      v11 = 0;
      v9 = 0;
      v7 = 0;
    }

    v19 = sub_100006274("coder");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Migrating from v0 engine state; dropping coders and forcing re-negotiation", &buf, 2u);
    }

    _os_activity_initiate(&_mh_execute_header, "CloudCircle EnsurePeerRegistration", OS_ACTIVITY_FLAG_DEFAULT, &stru_100346EA8);
    v20 = *(a1 + 80);
    if (v20)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v44 = sub_100245934;
      v45 = &unk_100346E68;
      v46 = v20;
      _os_activity_initiate(&_mh_execute_header, "CloudCircle RequestSyncWithPeersList", OS_ACTIVITY_FLAG_DEFAULT, &buf);
    }
  }

  if (v7)
  {
    v21 = CFDictionaryGetValue(v7, @"id");
    if (v21 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFStringGetTypeID()))
    {
      if (*(a1 + 24) != v22)
      {
        CFRetain(v22);
        v24 = *(a1 + 24);
        if (!v24)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v24 = *(a1 + 24);
      if (v24)
      {
        v22 = 0;
LABEL_31:
        CFRelease(v24);
LABEL_32:
        *(a1 + 24) = v22;
      }
    }

    v25 = CFDictionaryGetValue(v7, @"peerIDs");
    if (v25 && (v26 = v25, v27 = CFGetTypeID(v25), v27 == CFArrayGetTypeID()))
    {
      if (*(a1 + 80) != v26)
      {
        CFRetain(v26);
        v28 = *(a1 + 80);
        if (!v28)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v28 = *(a1 + 80);
      if (v28)
      {
        v26 = 0;
LABEL_40:
        CFRelease(v28);
LABEL_41:
        *(a1 + 80) = v26;
      }
    }

    v29 = CFDictionaryGetValue(v7, @"traceDate");
    if (v29 && (v30 = v29, v31 = CFGetTypeID(v29), v31 == CFDateGetTypeID()))
    {
      if (*(a1 + 88) != v30)
      {
        CFRetain(v30);
        v32 = *(a1 + 88);
        if (!v32)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v32 = *(a1 + 88);
      if (v32)
      {
        v30 = 0;
LABEL_49:
        CFRelease(v32);
LABEL_50:
        *(a1 + 88) = v30;
      }
    }

    v33 = sub_100006274("engine");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
    }
  }

  v34 = *(a1 + 48);
  if (v34)
  {
    *(a1 + 48) = 0;
    CFRelease(v34);
  }

  if (v9)
  {
    *(a1 + 48) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v44 = sub_10014A384;
    v45 = &unk_1003469D0;
    v46 = a1;
    CFDictionaryApplyFunction(v9, sub_100149D00, &buf);
  }

  if (v11)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v36 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v37 = CFGetTypeID(v11);
    if (v37 == CFDictionaryGetTypeID())
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v44 = sub_10014A41C;
      v45 = &unk_1003469D0;
      v46 = a1;
      CFDictionaryApplyFunction(v11, sub_100149D00, &buf);
    }

    sub_10014A614(a1, v36, Mutable);
    sub_10014A744(a1, *(a1 + 24), v36, Mutable);
    if (v36)
    {
      CFRelease(v36);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v11)
  {
    v38 = v7 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11 && (CFRelease(v11), v39))
  {
    v40 = cf;
  }

  else
  {
    v40 = cf;
    if (a3)
    {
      *a3 = cf;
      return v39;
    }
  }

  if (v40)
  {
    cf = 0;
    CFRelease(v40);
  }

  return v39;
}

void sub_10014A384(uint64_t a1, const void *a2, CFTypeRef cf)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDataGetTypeID())
    {
      v7 = sub_10022A73C(cf, 0);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(*(*(a1 + 32) + 48), a2, v7);

        CFRelease(v8);
      }
    }
  }
}

void sub_10014A41C(uint64_t a1, const void *a2, const __CFData *a3)
{
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 56), a2);
  if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == sub_10022DFAC()))
  {
    cf = 0;
    if (!sub_10022F85C(v7, *(a1 + 32), a3, &cf))
    {
      Length = CFDataGetLength(a3);
      Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
      BytePtr = CFDataGetBytePtr(a3);
      v12 = CFDataGetLength(a3);
      if (v12 >= 1)
      {
        v13 = v12;
        do
        {
          v14 = *BytePtr++;
          CFStringAppendFormat(Mutable, 0, @"%02X", v14);
          --v13;
        }

        while (v13);
      }

      v15 = sub_100006274("SecError");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v20 = a2;
        v21 = 2112;
        v22 = cf;
        v23 = 2112;
        v24 = Mutable;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "peer: %@: bad state: %@ in engine state: %@", buf, 0x20u);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v16 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v16);
      }
    }
  }

  else
  {
    v17 = *(*(a1 + 32) + 56);

    CFDictionarySetValue(v17, a2, a3);
  }
}

void sub_10014A614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 80);
  if (v6)
  {
    Count = CFArrayGetCount(*(a1 + 80));
    if (Count >> 61)
    {
      v6 = 0;
    }

    else
    {
      v8 = Count;
      v9 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      v13.location = 0;
      v13.length = v8;
      CFArrayGetValues(v6, v13, v9);
      v10 = CFGetAllocator(v6);
      v6 = CFSetCreate(v10, v9, v8, &kCFTypeSetCallBacks);
      free(v9);
    }
  }

  v11 = *(a1 + 56);
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_10014BE4C;
  context[3] = &unk_100338350;
  context[4] = v6;
  context[5] = a2;
  context[6] = a3;
  CFDictionaryApplyFunction(v11, sub_100149D00, context);
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_10014A744(uint64_t a1, CFTypeRef a2, const __CFArray *a3, const __CFArray *a4)
{
  v20 = 0;
  v21 = 0;
  v19 = 0;
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, @"me");
  if (a2)
  {
    a2 = sub_10022DCC8(a2, &v20, &v19, &v21);
  }

  if (MutableCopy)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v23 = sub_10014AA34;
    v24 = &unk_100345A98;
    v25 = MutableCopy;
    v26 = a2;
    sub_100085CC8(v20, &buf);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (*(a1 + 104) == 1)
  {
    v10 = *(a1 + 24);
    if (a2 && v10)
    {
      if (!CFEqual(a2, v10))
      {
        goto LABEL_16;
      }
    }

    else if (a2 != v10)
    {
LABEL_16:
      *(a1 + 105) = 1;
      goto LABEL_17;
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10014AA6C;
    v18[3] = &unk_100346870;
    v18[4] = a1;
    v18[5] = Mutable;
    v11 = objc_retainBlock(v18);
    v12 = v11;
    if (a3)
    {
      v13 = v11;
      v27.length = CFArrayGetCount(a3);
      v27.location = 0;
      CFArrayApplyFunction(a3, v27, sub_10014BE34, v13);
    }

    if (a4)
    {
      v14 = v12;
      v28.length = CFArrayGetCount(a4);
      v28.location = 0;
      CFArrayApplyFunction(a4, v28, sub_10014BE34, v14);
    }

    goto LABEL_16;
  }

LABEL_17:
  v15 = *(a1 + 24);
  if (v15 != a2)
  {
    if (!a2 || (CFRetain(a2), (v15 = *(a1 + 24)) != 0))
    {
      CFRelease(v15);
    }

    *(a1 + 24) = a2;
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    CFRelease(v16);
  }

  *(a1 + 96) = Mutable;
  sub_10014AAE4(a1, a3, a4, MutableCopy);
  v17 = sub_100006274("engine");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = MutableCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_10014AA6C(uint64_t a1, CFTypeRef cf)
{
  v3 = sub_10022DCC8(cf, 0, 0, 0);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(*(*(a1 + 32) + 96), v3);
    if (Value)
    {
      v6 = Value;
      v7 = *(a1 + 40);

      CFDictionarySetValue(v7, v4, v6);
    }
  }
}

void sub_10014AAE4(uint64_t a1, const __CFArray *a2, const __CFArray *a3, __CFString *a4)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v61 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (*(a1 + 24))
  {
    v6 = kSOSViewKeychainV0_tomb;
    Value = CFDictionaryGetValue(*(a1 + 56), kSOSViewKeychainV0_tomb);
    if (Value && (v15 = Value, v16 = CFGetTypeID(Value), v16 == sub_10022DFAC()))
    {
      v17 = *(v15 + 14);
      if (v17)
      {
        CFRetain(*(v15 + 14));
      }
    }

    else
    {
      cf = 0;
      v18 = sub_10014B368(kCFAllocatorDefault, v8, v9, v10, v11, v12, v13, v14, kSecAttrAccessGroup, @"com.apple.sbd");
      v17 = (*(*(a1 + 16) + 48))();
      if (v18)
      {
        CFRelease(v18);
      }

      if (!v17)
      {
        v19 = sub_100006274("engine");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = cf;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No keybag found for v0 backup peer: %@", &buf, 0xCu);
        }
      }
    }

    V0BackupViewSet = SOSViewsGetV0BackupViewSet();
    sub_10014B3EC(a1, v6, V0BackupViewSet, v17, v61, theDict);
    if (v17)
    {
      CFRelease(v17);
    }

    v21 = *(a1 + 64);
    V0BackupBagViewSet = SOSViewsGetV0BackupBagViewSet();
    v23 = sub_10014B550(v21, v61, V0BackupBagViewSet);
    CFArrayAppendValue(*(v23 + 24), &stru_1003383B0);
  }

  if (a2 && CFArrayGetCount(a2))
  {
    if (a4)
    {
      CFStringAppend(a4, @" trusted");
    }

    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v70 = 0;
        v65 = 0;
        v27 = sub_10022DCC8(ValueAtIndex, &v70, &v65, 0);
        CFArrayAppendValue(Mutable, v27);
        if (a4)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v72 = sub_10014AA34;
          v73 = &unk_100345A98;
          p_isa = &a4->isa;
          v75 = v27;
          sub_100085CC8(v70, &buf);
        }

        V0ViewSet = v70;
        if (!v70)
        {
          V0ViewSet = SOSViewsGetV0ViewSet();
          v70 = V0ViewSet;
        }

        if (v65)
        {
          sub_10014B3EC(a1, v27, V0ViewSet, v65, v61, theDict);
        }

        else
        {
          v29 = CFDictionaryGetValue(*(a1 + 56), v27);
          v35 = sub_10022DE70(v29, V0ViewSet, 0, v30, v31, v32, v33, v34);
          if (v35)
          {
            v36 = sub_10014B550(*(a1 + 64), v61, V0ViewSet);
            v37 = CFGetTypeID(v35);
            if (v37 == CFDictionaryGetTypeID())
            {
              p_buf = &buf;
              *&buf = _NSConcreteStackBlock;
              *(&buf + 1) = 3221225472;
              v39 = sub_10014B6D8;
              v40 = v27;
            }

            else
            {
              p_buf = &cf;
              cf = _NSConcreteStackBlock;
              p_cf = 3221225472;
              v39 = sub_10014B810;
              v40 = v35;
            }

            p_buf[2] = v39;
            p_buf[3] = &unk_1003383D0;
            p_buf[4] = v40;
            v41 = objc_retainBlock(p_buf);
            v42 = objc_retainBlock(v41);
            CFArrayAppendValue(*(v36 + 32), v42);
            CFDictionarySetValue(theDict, v27, v35);
            CFRelease(v35);
          }
        }
      }
    }
  }

  if (a3 && CFArrayGetCount(a3))
  {
    if (a4)
    {
      CFStringAppend(a4, @" untrusted");
    }

    v43 = CFArrayGetCount(a3);
    if (v43 >= 1)
    {
      for (j = 0; v43 != j; ++j)
      {
        v45 = CFArrayGetValueAtIndex(a3, j);
        v70 = 0;
        v46 = sub_10022DCC8(v45, &v70, 0, 0);
        if (a4)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v72 = sub_10014AA34;
          v73 = &unk_100345A98;
          p_isa = &a4->isa;
          v75 = v46;
          sub_100085CC8(v70, &buf);
        }

        if (v70)
        {
          v47 = 0;
        }

        else
        {
          v47 = CFSetCreate(kCFAllocatorDefault, 0, 0, &kCFTypeSetCallBacks);
          v70 = v47;
        }

        MutableCopy = CFDictionaryGetValue(*(a1 + 56), v46);
        v49 = v70;
        if (!v70)
        {
          sub_100089FEC(@"Execution has encountered an unexpected state", 1405091854);
        }

        if (MutableCopy)
        {
          v50 = CFGetTypeID(MutableCopy);
          if (v50 == sub_10022DFAC())
          {
            sub_10022E044(MutableCopy, v49);
            MutableCopy = sub_10022EFF4(MutableCopy);
            if (!v47)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }

          v51 = CFGetTypeID(MutableCopy);
          if (v51 != CFDictionaryGetTypeID())
          {
            MutableCopy = 0;
            if (!v47)
            {
              goto LABEL_56;
            }

LABEL_55:
            CFRelease(v47);
            goto LABEL_56;
          }

          v52 = CFDictionaryGetValue(MutableCopy, @"views");
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, MutableCopy);
          CFDictionarySetValue(MutableCopy, @"views", v49);
          if (v52)
          {
            cf = 0;
            p_cf = &cf;
            v68 = 0x2020000000;
            v69 = 1;
            *&buf = _NSConcreteStackBlock;
            *(&buf + 1) = 3221225472;
            v72 = sub_10022EBC0;
            v73 = &unk_1003462B0;
            p_isa = &cf;
            v75 = v52;
            CFSetApplyFunction(v49, sub_10022EBF8, &buf);
            v53 = *(p_cf + 24);
            _Block_object_dispose(&cf, 8);
            if ((v53 & 1) == 0)
            {
              CFDictionarySetValue(MutableCopy, @"has-been-in-sync", kCFBooleanFalse);
            }
          }
        }

        if (v47)
        {
          goto LABEL_55;
        }

LABEL_56:
        if (MutableCopy)
        {
          CFDictionarySetValue(theDict, v46, MutableCopy);
          CFRelease(MutableCopy);
        }
      }
    }
  }

  v54 = *(a1 + 80);
  if (v54)
  {
    CFRelease(v54);
  }

  *(a1 + 80) = Mutable;
  v55 = *(a1 + 56);
  if (v55)
  {
    CFRelease(v55);
  }

  *(a1 + 56) = theDict;
  v56 = *(a1 + 64);
  if (v56)
  {
    CFRelease(v56);
  }

  *(a1 + 64) = v61;
  v57 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v58 = *(a1 + 64);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v72 = sub_10014B840;
  v73 = &unk_1003469D0;
  p_isa = v57;
  CFDictionaryApplyFunction(v58, sub_100149D00, &buf);
  v59 = *(a1 + 72);
  if (v59)
  {
    CFRelease(v59);
  }

  *(a1 + 72) = v57;
}

__CFDictionary *sub_10014B368(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = &a10;
  v11 = key;
  if (key)
  {
    do
    {
      CFDictionarySetValue(Mutable, v11, *v14);
      v12 = v14 + 1;
      v14 += 2;
      v11 = *v12;
    }

    while (*v12);
  }

  return Mutable;
}

void sub_10014B3EC(uint64_t a1, const void *a2, void *a3, const void *a4, const __CFDictionary *a5, __CFDictionary *a6)
{
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  v18 = sub_10022DE70(Value, a3, a4, v13, v14, v15, v16, v17);
  if (v18)
  {
    v19 = v18;
    v20 = CFGetTypeID(v18);
    if (v20 == CFDictionaryGetTypeID())
    {
      v21 = sub_10022FB58(a1, a2, v19, 0);
      CFRelease(v19);
      if (!Value)
      {
        sub_10022E308(v21);
      }
    }

    else
    {
      v21 = v19;
    }

    CFDictionarySetValue(a6, a2, v21);
    CFRelease(v21);
    if (a4)
    {
      v22 = sub_10014B550(*(a1 + 64), a5, a3);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10014BC30;
      v25[3] = &unk_100338370;
      v25[4] = v21;
      v23 = objc_retainBlock(v25);
      v24 = [v23 copy];
      CFArrayAppendValue(*(v22 + 24), v24);
    }
  }
}

uint64_t sub_10014B550(const __CFDictionary *a1, CFDictionaryRef theDict, void *key)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    v7 = CFDictionaryGetValue(a1, key);
    if (v7)
    {
      Value = v7;
      CFArrayRemoveAllValues(v7[3]);
      CFArrayRemoveAllValues(*(Value + 32));
      v8 = theDict;
      v9 = key;
      v10 = Value;
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100112654;
      block[3] = &unk_100337428;
      block[4] = &qword_10039DEE8;
      if (qword_10039DEE0 != -1)
      {
        dispatch_once(&qword_10039DEE0, block);
      }

      Value = _CFRuntimeCreateInstance();
      if (Value)
      {
        *(Value + 24) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        *(Value + 32) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        CFDictionarySetValue(theDict, key, Value);
        CFRelease(Value);
        return Value;
      }

      v8 = theDict;
      v9 = key;
      v10 = 0;
    }

    CFDictionarySetValue(v8, v9, v10);
  }

  return Value;
}

BOOL sub_10014B6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CFDataRef *a8, CFTypeRef *a9)
{
  v19 = 0;
  v13 = sub_1001486BC(a3, *(a1 + 32), &v19);
  v14 = v13 != 0;
  if (v13)
  {
    v15 = v13;
    sub_1002300D4(v13, a5, a7, a8, a9);
  }

  else
  {
    v16 = sub_100006274("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412546;
      v21 = v17;
      v22 = 2112;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: peer failed to inflate: %@", buf, 0x16u);
    }

    v15 = v19;
    if (!v19)
    {
      return 0;
    }
  }

  CFRelease(v15);
  return v14;
}

void sub_10014B840(uint64_t a1, CFSetRef theSet, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10014B8C4;
  v3[3] = &unk_100346870;
  v3[4] = *(a1 + 32);
  v3[5] = a3;
  CFSetApplyFunction(theSet, sub_10014BE34, v3);
}

void sub_10014B8C4(uint64_t a1, const void *a2)
{
  value = 0;
  if (CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value))
  {
    if (value)
    {
      v4 = CFGetTypeID(value);
      TypeID = CFSetGetTypeID();
      v6 = value;
      if (v4 == TypeID)
      {
        CFSetAddValue(value, *(a1 + 40));
        return;
      }
    }

    else
    {
      v6 = 0;
    }

    if (!CFEqual(*(a1 + 40), v6))
    {
      Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
      CFSetAddValue(Mutable, value);
      CFSetAddValue(Mutable, *(a1 + 40));
      CFDictionaryReplaceValue(*(a1 + 32), a2, Mutable);
      CFRelease(Mutable);
    }
  }

  else
  {
    CFDictionarySetValue(*(a1 + 32), a2, *(a1 + 40));
  }
}

BOOL sub_10014B9AC(id a1, __OpaqueSOSChangeTracker *a2, __OpaqueSOSEngine *a3, __OpaqueSOSTransaction *a4, unint64_t a5, unint64_t a6, __CFArray *a7, __CFError **a8)
{
  Count = CFArrayGetCount(a7);
  if (Count >= 1)
  {
    v10 = Count;
    v11 = 0;
    v26 = kSOSViewKeychainV0_tomb;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a7, v11);
      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(ValueAtIndex) != 1)
        {
          sub_100089FEC(@"Execution has encountered an unexpected state", 1405091854);
        }

        v14 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        ValueAtIndex = 0;
        if (!v14)
        {
LABEL_7:
          v15 = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v14 = ValueAtIndex;
        if (!ValueAtIndex)
        {
          goto LABEL_7;
        }
      }

      v16 = CFGetTypeID(v14);
      if (v16 == CFDataGetTypeID())
      {
        goto LABEL_29;
      }

      v15 = v14;
LABEL_11:
      v17 = sub_100015B5C(v15, kSecAttrService);
      if (v17 && CFEqual(v17, @"SecureBackupService"))
      {
        v18 = sub_100015B5C(v14, kSecAttrAccessible);
        if (v18 && kSecAttrAccessibleWhenUnlocked)
        {
          if (CFEqual(v18, kSecAttrAccessibleWhenUnlocked))
          {
            goto LABEL_18;
          }
        }

        else if (v18 == kSecAttrAccessibleWhenUnlocked)
        {
LABEL_18:
          v19 = sub_100015B5C(v14, kSecAttrAccount);
          if (v19 && CFEqual(v19, @"SecureBackupPublicKeybag"))
          {
            v20 = sub_1001486BC(a3, v26, 0);
            if (ValueAtIndex)
            {
              v21 = sub_100015BFC(ValueAtIndex, &off_100339EF0, 0);
            }

            else
            {
              v21 = 0;
            }

            v22 = v20[14];
            sub_10022E15C(v20, v21);
            if (!v22)
            {
              sub_10022E308(v20);
            }

            CFRelease(v20);
            Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            v24 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            sub_10014A614(a3, v24, Mutable);
            sub_10014AAE4(a3, v24, Mutable, 0);
            if (v24)
            {
              CFRelease(v24);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }
        }
      }

LABEL_29:
      ++v11;
    }

    while (v10 != v11);
  }

  return 1;
}

uint64_t sub_10014BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{
  v11 = *(a1 + 32);
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v12 = *(a3 + 16);
  }

  else
  {
    v12 = 0;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  if (*(v11 + 48) == 1 && (sub_10022E714(v11, a8) & 1) == 0)
  {
    *(v20 + 24) = 0;
    goto LABEL_9;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1002303C8;
  v18[3] = &unk_100346288;
  v18[4] = &v19;
  v18[5] = a7;
  v18[6] = v12;
  v18[7] = v11;
  v18[8] = a8;
  v13 = sub_10022F5D0(v11, a8, v18);
  v14 = v13 & v20[3];
  *(v20 + 24) = v14;
  if ((v14 & 1) == 0)
  {
LABEL_9:
    v24 = *(v11 + 16);
    v16 = [NSArray arrayWithObjects:&v24 count:1];
    activity_block[0] = _NSConcreteStackBlock;
    activity_block[1] = 3221225472;
    activity_block[2] = sub_1002515E8;
    activity_block[3] = &unk_100346E68;
    activity_block[4] = v16;
    _os_activity_initiate(&_mh_execute_header, "CloudCircle SOSCCRequestSyncWithBackupPeerList", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

    v15 = *(v20 + 24);
    goto LABEL_10;
  }

  v15 = 1;
LABEL_10:
  _Block_object_dispose(&v19, 8);
  return v15 & 1;
}

void sub_10014BE4C(const __CFSet **a1, const __CFDictionary *cf1, uint64_t *cf)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == sub_10022DFAC())
    {
      v7 = cf[3];
      v8 = cf[14];
      v9 = cf1;
LABEL_10:
      v10 = sub_10022DB74(v9, v7, v8);
      goto LABEL_11;
    }
  }

  if (!cf1 || !kSOSViewKeychainV0_tomb)
  {
    if (kSOSViewKeychainV0_tomb == cf1)
    {
      goto LABEL_7;
    }

LABEL_9:
    Value = CFDictionaryGetValue(cf, @"views");
    v8 = CFDictionaryGetValue(cf, @"keybag");
    v9 = cf1;
    v7 = Value;
    goto LABEL_10;
  }

  if (!CFEqual(cf1, kSOSViewKeychainV0_tomb))
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = 0;
LABEL_11:
  v12 = a1[4];
  if (v12 && CFSetContainsValue(v12, cf1))
  {
    goto LABEL_16;
  }

  if (!cf1 || !kSOSViewKeychainV0_tomb)
  {
    if (kSOSViewKeychainV0_tomb == cf1)
    {
      goto LABEL_16;
    }

LABEL_19:
    CFArrayAppendValue(a1[6], cf1);
    if (!v10)
    {
      return;
    }

    goto LABEL_20;
  }

  if (!CFEqual(cf1, kSOSViewKeychainV0_tomb))
  {
    goto LABEL_19;
  }

LABEL_16:
  if (!v10)
  {
    return;
  }

  CFArrayAppendValue(a1[5], v10);
LABEL_20:

  CFRelease(v10);
}

CFTypeRef sub_10014BF98(uint64_t a1, uint64_t a2)
{
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v4 = *(a2 + 24);

    return sub_10014C008(a1, v4);
  }

  else
  {
    SOSCCSetSOSDisabledError();
    return 0;
  }
}

CFTypeRef sub_10014C008(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  if (Value)
  {
    v4 = Value;
    CFRetain(Value);
    v5 = v4[2];
    if (v5)
    {
      v6 = CFRetain(v5);
      if (v6)
      {
LABEL_12:
        CFRelease(v4);
        return v6;
      }
    }

    else
    {
      SOSErrorCreate();
    }

    v6 = (*(*(a1 + 16) + 24))();
    v7 = v4[2];
    if (v7 != v6)
    {
      if (!v6 || (CFRetain(v6), (v7 = v4[2]) != 0))
      {
        CFRelease(v7);
      }

      v4[2] = v6;
    }

    goto LABEL_12;
  }

  SOSErrorCreate();
  return 0;
}

void sub_10014C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014C178;
  block[3] = &unk_1003383F0;
  block[4] = v6;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  block[8] = a6;
  dispatch_sync(v7, block);
}

void sub_10014C178(uint64_t a1)
{
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    cf = 0;
    if ((sub_10014C2A8(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), &cf) & 1) == 0)
    {
      v2 = sub_100006274("SecError");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v6 = cf;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "updateChanged failed: %@", buf, 0xCu);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v3 = sub_100006274("engine");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SOS disabled for this platform", buf, 2u);
    }
  }
}

uint64_t sub_10014C2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFArray *a5, CFTypeRef *a6)
{
  if (![OTSOSActualAdapter sosEnabled]_0())
  {
    SOSCCSetSOSDisabledError();
    return 0;
  }

  v11 = sub_100006274("engine");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 24);
    v13 = "did-rollback";
    if (a3 == 2)
    {
      v13 = "did-commit";
    }

    if (a3 == 1)
    {
      v14 = "will-commit";
    }

    else
    {
      v14 = v13;
    }

    if (a4)
    {
      if (a4 == 3)
      {
        v15 = "ckks";
      }

      else if (a4 == 1)
      {
        v15 = "api";
      }

      else
      {
        v15 = "unknown";
      }
    }

    else
    {
      v15 = "sos";
    }

    *buf = 138413570;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = v14;
    *&buf[22] = 2080;
    v43 = v15;
    *v44 = 2048;
    *&v44[2] = CFArrayGetCount(a5);
    *&v44[10] = 2112;
    *&v44[12] = a2;
    *&v44[20] = 2048;
    *&v44[22] = a2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: %s %s %ld changes, txn=%@, %p", buf, 0x3Eu);
  }

  if ((a3 - 1) >= 2)
  {
    if (!a3)
    {
      return sub_100149D1C(a1, a2, a6);
    }

    return 1;
  }

  v35[0] = a1;
  v35[1] = a2;
  v35[2] = a3;
  v35[3] = a4;
  theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  theSet = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  Count = CFArrayGetCount(a5);
  if (Count >= 1)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a5, v19);
      v21 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        goto LABEL_38;
      }

      v22 = CFGetTypeID(ValueAtIndex);
      if (v22 == CFArrayGetTypeID())
      {
        v23 = CFArrayGetCount(v21);
        if (v23 == 1)
        {
          v24 = CFArrayGetValueAtIndex(v21, 0);
          v21 = 0;
          if (v24)
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v23 != 2)
          {
            sub_1000103CC(-50, a6, 0, @"invalid entry in changes array: %@", v21);
            goto LABEL_38;
          }

          v24 = CFArrayGetValueAtIndex(v21, 0);
          v21 = CFArrayGetValueAtIndex(v21, 1);
          if (v24)
          {
LABEL_28:
            v18 |= sub_10014D098(v35, 0, v24);
            if (!v21)
            {
              goto LABEL_38;
            }

            goto LABEL_29;
          }
        }

        if (!v21)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      if (sub_10014D098(v35, 1, v21))
      {
        v18 = 1;
      }

      else
      {
        v25 = CFGetTypeID(v21);
        if (v25 != CFDataGetTypeID() && sub_10001A700(v21))
        {
          v26 = sub_100015BFC(v21, &off_100339F68, 0);
          if (v26 && kCFBooleanTrue)
          {
            if (!CFEqual(v26, kCFBooleanTrue))
            {
              goto LABEL_41;
            }
          }

          else if (v26 != kCFBooleanTrue)
          {
LABEL_41:
            cf = 0;
            if ((sub_10001728C(v21, a2, &cf, &stru_100338978) & 1) == 0)
            {
              v27 = sub_100006274("SecError");
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138478083;
                *&buf[4] = v21;
                *&buf[12] = 2112;
                *&buf[14] = cf;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "failed to delete tombstone %{private}@ that no one cares about: %@", buf, 0x16u);
              }

              v28 = cf;
              if (cf)
              {
                cf = 0;
                CFRelease(v28);
              }
            }
          }
        }
      }

LABEL_38:
      if (Count == ++v19)
      {
        goto LABEL_49;
      }
    }
  }

  v18 = 0;
LABEL_49:
  cf = 0;
  p_cf = &cf;
  v40 = 0x2020000000;
  v41 = 1;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10014C984;
  v43 = &unk_1003466B0;
  *v44 = &cf;
  *&v44[8] = v35;
  *&v44[16] = a6;
  CFDictionaryApplyFunction(theDict, sub_100149D00, buf);
  v16 = *(p_cf + 24);
  _Block_object_dispose(&cf, 8);
  v29 = theSet;
  if (qword_10039DF38 != -1)
  {
    dispatch_once(&qword_10039DF38, &stru_100338470);
  }

  if (qword_10039DF40 && CFSetGetCount(v29))
  {
    CFRetain(v29);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10014CFB8;
    v43 = &unk_100346E68;
    *v44 = v29;
    dispatch_async(qword_10039DF40, buf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (theSet)
  {
    CFRelease(theSet);
  }

  if (a3 == 1 && (v16 & 1) != 0)
  {
    v30 = sub_100006274("engine");
    v31 = v30;
    if (((a4 != 0) & (v18 ^ 1)) == 0)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "saving engine state", buf, 2u);
      }

      v16 = sub_100148EB4(a1, a2, a6);
      if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v32 = *(a1 + 80);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100245934;
        v43 = &unk_100346E68;
        *v44 = v32;
        _os_activity_initiate(&_mh_execute_header, "CloudCircle RequestSyncWithPeersList", OS_ACTIVITY_FLAG_DEFAULT, buf);
      }

      return v16;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Not saving engine state, nothing changed.", buf, 2u);
    }

    return 1;
  }

  return v16;
}

void sub_10014C964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C984(uint64_t result, uint64_t a2, CFArrayRef theArray)
{
  v3 = result;
  if (theArray && (v6 = *(result + 40), v7 = *(result + 48), v8 = v6[1], v9 = v6[3], v61 = v6[2], v62 = *v6, (result = CFArrayGetCount(theArray)) != 0))
  {
    v60 = v9;
    v58 = v3;
    v59 = v7;
    v57 = a2;
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, @"(");
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v15 = CFGetTypeID(ValueAtIndex);
        TypeID = CFArrayGetTypeID();
        if (v15 == TypeID)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        }

        if (ValueAtIndex)
        {
          v17 = CFGetTypeID(ValueAtIndex);
          v18 = CFDataGetTypeID();
          v19 = @"a";
          if (v15 == TypeID)
          {
            v19 = @"d";
            v20 = @"D";
          }

          else
          {
            v20 = @"A";
          }

          if (v17 == v18)
          {
            v21 = v19;
          }

          else
          {
            v21 = v20;
          }
        }

        else if (v15 == TypeID)
        {
          v21 = @"D";
        }

        else
        {
          v21 = @"A";
        }

        CFStringAppend(MutableCopy, v21);
        CFRelease(v21);
      }
    }

    CFStringAppend(MutableCopy, @""));
    v22 = sub_100006274("tracker");
    v23 = v60;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = "did-rollback";
      if (v61 == 2)
      {
        v24 = "did-commit";
      }

      if (v61 == 1)
      {
        v24 = "will-commit";
      }

      if (v60)
      {
        if (v60 == 3)
        {
          v25 = "ckks";
        }

        else
        {
          v25 = "unknown";
          if (v60 == 1)
          {
            v25 = "api";
          }
        }
      }

      else
      {
        v25 = "sos";
      }

      *buf = 138413058;
      *&buf[4] = v57;
      *&buf[12] = 2080;
      *&buf[14] = v24;
      *&buf[22] = 2080;
      *&buf[24] = v25;
      v67 = 2112;
      v68 = MutableCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ %s %s changes: %@", buf, 0x2Au);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (*(v57 + 16) || *(v57 + 32))
    {
      memset(buf, 0, sizeof(buf));
      *v64 = 0u;
      v65 = 0u;
      v27 = CFArrayGetCount(theArray);
      if (v27 >= 1)
      {
        v28 = v27;
        for (j = 0; v28 != j; ++j)
        {
          v30 = CFArrayGetValueAtIndex(theArray, j);
          v31 = v30;
          if (v30)
          {
            v32 = CFGetTypeID(v30);
            if (v32 == CFArrayGetTypeID())
            {
              v31 = CFArrayGetValueAtIndex(v31, 0);
              v33 = buf;
              if (!v31)
              {
                goto LABEL_45;
              }
            }

            else
            {
              v33 = v64;
            }

            v34 = CFGetTypeID(v31);
            if (v34 == CFDataGetTypeID())
            {
              v35 = 0;
              v36 = v31;
              goto LABEL_47;
            }
          }

          else
          {
            v33 = v64;
          }

LABEL_45:
          cf = 0;
          [OTSOSActualAdapter sosEnabled]_0();
          v37 = (*(*(v62 + 16) + 112))(v31, &cf);
          if (!v37)
          {
            v41 = sub_100006274("SecError");
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *v69 = 138412546;
              v70 = v31;
              v71 = 2112;
              v72 = cf;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "change %@ SOSObjectCopyDigest: %@", v69, 0x16u);
            }

            v40 = cf;
            if (!cf)
            {
              continue;
            }

            cf = 0;
            goto LABEL_57;
          }

          v35 = v37;
          v36 = v37;
LABEL_47:
          if (CFDataGetLength(v36) == 20)
          {
            BytePtr = CFDataGetBytePtr(v36);
            sub_1002297B0(v33, BytePtr);
            *(v33 + 24) = 1;
          }

          else
          {
            v39 = sub_100006274("SecError");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *v69 = 138412546;
              v70 = v31;
              v71 = 2112;
              v72 = v36;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "change %@ bad length digest: %@", v69, 0x16u);
            }
          }

          if (!v35)
          {
            continue;
          }

          v40 = v35;
LABEL_57:
          CFRelease(v40);
        }
      }

      v42 = sub_10022ABF8(buf, v59);
      if (v42)
      {
        v43 = sub_10022ABF8(v64, v59);
        v44 = v43 != 0;
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      free(v64[0]);
      v64[0] = 0;
      v64[1] = 0;
      BYTE8(v65) = 0;
      *&v65 = 0;
      free(*buf);
      v26 = 0;
      if (v44)
      {
        v45 = *(v57 + 16);
        if (v45)
        {
          v46 = sub_10022AC58(v45, v42, v43, v59);
          if (v46)
          {
            v47 = v46;
            v48 = *(v57 + 16);
            if (v48)
            {
              CFRelease(v48);
            }

            *(v57 + 16) = v47;
          }
        }

        v49 = *(v57 + 32);
        if (v49 && (v50 = CFArrayGetCount(v49), v50 >= 1))
        {
          v51 = v50;
          v52 = 0;
          v26 = 1;
          do
          {
            v53 = CFArrayGetValueAtIndex(*(v57 + 32), v52);
            if (v26)
            {
              v26 = v53[2](v53, v57, v62, v8, v60, v61, v42, v43, v59);
            }

            else
            {
              v26 = 0;
            }

            ++v52;
          }

          while (v51 != v52);
        }

        else
        {
          v26 = 1;
        }
      }

      if (v42)
      {
        CFRelease(v42);
      }

      v3 = v58;
      v54 = v8;
      v23 = v60;
      if (v43)
      {
        CFRelease(v43);
      }
    }

    else
    {
      v26 = 1;
      v54 = v8;
    }

    result = *(v57 + 24);
    if (result)
    {
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        v55 = result;
        for (k = 0; k != v55; ++k)
        {
          result = CFArrayGetValueAtIndex(*(v57 + 24), k);
          if (v26)
          {
            result = (*(result + 16))(result, v57, v62, v54, v23, v61, theArray, v59);
            v26 = result;
          }

          else
          {
            v26 = 0;
          }
        }
      }
    }
  }

  else
  {
    v26 = 1;
  }

  *(*(*(v3 + 32) + 8) + 24) &= v26;
  return result;
}

void sub_10014CFB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_10039DF30)
  {
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_10014DB94;
    context[3] = &unk_1003477F0;
    context[4] = qword_10039DF30;
    CFSetApplyFunction(v2, sub_10014BE34, context);
  }

  else
  {
    qword_10039DF30 = CFSetCreateMutableCopy(0, 0, v2);
    v3 = dispatch_time(0, 1000000000);
    dispatch_after(v3, qword_10039DF40, &stru_100338490);
  }

  CFRelease(*(a1 + 32));
}

BOOL sub_10014D098(uint64_t a1, char a2, void *cf)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFDataGetTypeID())
  {
    v7 = *(*a1 + 64);
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_10014D8EC;
    context[3] = &unk_100338430;
    v41 = a2;
    context[4] = a1;
    context[5] = cf;
    CFDictionaryApplyFunction(v7, sub_100149D00, context);
    Count = CFDictionaryGetCount(*(*a1 + 64));
    return Count != 0;
  }

  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v36 = sub_10014D900;
  v37 = &unk_100345A98;
  v38 = a1;
  v39 = Mutable;
  v10 = v35;
  v11 = CFGetTypeID(cf);
  if (v11 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(cf, kSecAttrTombstone);
    if (Value)
    {
      v13 = CFBooleanGetValue(Value);
      v36(v10, kSOSViewKeychainV0);
      if (v13)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v36(v10, kSOSViewKeychainV0);
    }

    v21 = &kSOSViewKeychainV0_tomb;
    goto LABEL_30;
  }

  valuePtr = 0;
  *buf = 0;
  v14 = sub_100016514(cf[2], 11, buf);
  if (!sub_100016FF0(cf, v14, &valuePtr, buf))
  {
    valuePtr = SecErrorGetOSStatus() == -26275;
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  if (!valuePtr)
  {
    goto LABEL_31;
  }

  v15 = cf[2];
  v16 = sub_100015B5C(cf, kSecAttrAccessible);
  if (v15 != sub_100007604(@"genp", &qword_10039E090, &unk_10039E088) && v15 != sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098) && v15 != sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8) && v15 != sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8))
  {
    goto LABEL_31;
  }

  if (!v16)
  {
    goto LABEL_31;
  }

  v17 = CFGetTypeID(v16);
  if (v17 != CFStringGetTypeID() || !CFEqual(v16, kSecAttrAccessibleWhenUnlocked) && !CFEqual(v16, kSecAttrAccessibleAfterFirstUnlock) && !CFEqual(v16, kSecAttrAccessibleAlwaysPrivate) && !CFEqual(v16, kSecAttrAccessibleWhenUnlockedThisDeviceOnly) && !CFEqual(v16, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly) && !CFEqual(v16, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate))
  {
    goto LABEL_31;
  }

  v18 = sub_100015B5C(cf, kSecAttrTombstone);
  valuePtr = 0;
  v32 = v18 && (v19 = v18, v20 = CFGetTypeID(v18), v20 == CFNumberGetTypeID()) && CFNumberGetValue(v19, kCFNumberCharType, &valuePtr) && valuePtr;
  v23 = sub_100015B5C(cf, kSecAttrSyncViewHint);
  v24 = v23;
  if (v23)
  {
    v25 = CFGetTypeID(v23);
    if (v25 != CFStringGetTypeID())
    {
      v24 = 0;
    }
  }

  if (SOSViewHintInCKKSSystem())
  {
    goto LABEL_31;
  }

  if (!sub_1001636C4(cf))
  {
    v28 = sub_100006274("item");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *&buf[4] = cf;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Skipping non-primary item %{private}@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  if (v24)
  {
    v36(v10, v24);
    if (!v32)
    {
      v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-tomb", v24);
      if (v26)
      {
        v27 = v26;
        v36(v10, v26);
        CFRelease(v27);
      }
    }

    goto LABEL_31;
  }

  if (v15 == sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8))
  {
    v36(v10, kSOSViewOtherSyncable);
    if (v32)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

  v29 = v32;
  if (!sub_100015B5C(cf, kSecAttrTokenID))
  {
    v36(v10, kSOSViewKeychainV0);
    if (!v32)
    {
      v36(v10, kSOSViewKeychainV0_tomb);
    }
  }

  v30 = sub_100015B5C(cf, kSecAttrAccessGroup);
  if (v15 != sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8))
  {
    if (v30)
    {
LABEL_53:
      if (CFEqual(v30, @"com.apple.cfnetwork"))
      {
        v36(v10, kSOSViewAutofillPasswords);
        if (!v32)
        {
          v21 = &kSOSViewAutofillPasswords_tomb;
LABEL_30:
          v36(v10, *v21);
          goto LABEL_31;
        }

        goto LABEL_31;
      }

      if (CFEqual(v30, @"com.apple.safari.credit-cards"))
      {
        v36(v10, kSOSViewSafariCreditCards);
        if (!v32)
        {
          v21 = &kSOSViewSafariCreditCards_tomb;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (v15 == sub_100007604(@"genp", &qword_10039E090, &unk_10039E088))
      {
        if (CFEqual(v30, @"apple"))
        {
          v31 = sub_100015B5C(cf, kSecAttrService);
          if (v31)
          {
            if (CFEqual(v31, @"AirPort"))
            {
              v36(v10, kSOSViewWiFi);
              if (!v32)
              {
                v21 = &kSOSViewWiFi_tomb;
                goto LABEL_30;
              }

              goto LABEL_31;
            }
          }
        }

        v29 = v32;
        if (CFEqual(v30, @"com.apple.sbd"))
        {
          v36(v10, kSOSViewBackupBagV0);
          if (!v32)
          {
            v21 = &kSOSViewBackupBagV0_tomb;
            goto LABEL_30;
          }

          goto LABEL_31;
        }
      }

      goto LABEL_63;
    }

LABEL_62:
    sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
LABEL_63:
    v36(v10, kSOSViewOtherSyncable);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_64:
    v21 = &kSOSViewOtherSyncable_tomb;
    goto LABEL_30;
  }

  if (!v30)
  {
    goto LABEL_62;
  }

  if (!CFEqual(v30, @"com.apple.security.sos"))
  {
    goto LABEL_53;
  }

  v36(v10, kSOSViewiCloudIdentity);
  if (!v32)
  {
    v21 = &kSOSViewiCloudIdentity_tomb;
    goto LABEL_30;
  }

LABEL_31:

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10014DA34;
  v33[3] = &unk_100338450;
  v34 = a2;
  v33[4] = a1;
  v33[5] = cf;
  CFSetApplyFunction(Mutable, sub_10014BE34, v33);
  Count = CFSetGetCount(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Count != 0;
}

void sub_10014D900(uint64_t a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(*(**(a1 + 32) + 72), a2);
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFSetGetTypeID())
    {
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_10014DB8C;
      context[3] = &unk_1003477F0;
      context[4] = *(a1 + 40);
      CFSetApplyFunction(v5, sub_10014BE34, context);
    }

    else
    {
      CFSetAddValue(*(a1 + 40), v5);
    }
  }

  v7 = *(a1 + 32);
  if (!a2 || (v8 = CFGetTypeID(a2), v8 != CFStringGetTypeID()))
  {
    sub_100089FEC(@"Execution has encountered an unexpected state", 1405091854);
  }

  if (CFStringHasPrefix(a2, @"PCS-"))
  {
    v9 = @"PCS";
  }

  else
  {
    v9 = a2;
  }

  CFSetSetValue(*(v7 + 40), v9);
}

void sub_10014DA44(uint64_t a1, const void *a2, int a3, const void *a4)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (!Value)
  {
    Value = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    CFDictionarySetValue(*(a1 + 32), a2, Value);
    if (Value)
    {
      CFRelease(Value);
    }
  }

  if (a3)
  {

    CFArrayAppendValue(Value, a4);
  }

  else
  {
    v10 = a4;
    v9 = CFArrayCreate(kCFAllocatorDefault, &v10, 1, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Value, v9);
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void sub_10014DB9C(id a1)
{
  v1 = qword_10039DF30;
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_10014DC3C;
  context[3] = &unk_1003477F0;
  context[4] = CFNotificationCenterGetDarwinNotifyCenter();
  CFSetApplyFunction(v1, sub_10014BE34, context);
  CFRelease(qword_10039DF30);
  qword_10039DF30 = 0;
}

void sub_10014DC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("view");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v8 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Sending view notification for view %@", buf, 0xCu);
  }

  v5 = CFStringCreateWithFormat(0, 0, @"com.apple.security.view-change.%@", a2);
  if (v5)
  {
    v6 = v5;
    CFNotificationCenterPostNotificationWithOptions(*(a1 + 32), v5, 0, 0, 0);
    CFRelease(v6);
  }
}

void sub_10014DD38(id a1)
{
  qword_10039DF40 = dispatch_queue_create("ViewNotificationQueue", 0);

  _objc_release_x1();
}

uint64_t sub_10014DD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 40);
  result = SOSErrorCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a5 = 1;
  return result;
}

void sub_10014DDC8(uint64_t a1, const void *a2, _BYTE *a3)
{
  v6 = (*(*(*(a1 + 56) + 16) + 112))(a2, *(a1 + 64));
  if (v6)
  {
    v7 = v6;
    v8 = *(*(a1 + 32) + 8);
    BytePtr = CFDataGetBytePtr(v6);
    sub_1002297B0((v8 + 32), BytePtr);
    *(v8 + 56) = 1;
    cf1 = 0;
    v10 = (*(*(*(a1 + 56) + 16) + 88))(*(a1 + 88), a2, &cf1, *(a1 + 64));
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 24);
    if (!v10)
    {
      v12 = 0;
    }

    *(v11 + 24) = v12;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        **(a1 + 96) = 1;
      }

      else
      {
        if (!CFEqual(cf1, a2))
        {
          v19 = *(*(a1 + 48) + 8);
          v20 = CFDataGetBytePtr(v7);
          sub_1002297B0((v19 + 32), v20);
          *(v19 + 56) = 1;
        }

        CFArrayAppendValue(*(a1 + 104), cf1);
      }
    }

    else
    {
      *a3 = 1;
      **(a1 + 72) = 0;
      v16 = sub_100006274("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(a1 + 80) + 16);
        v18 = *(a1 + 64);
        if (v18)
        {
          v18 = *v18;
        }

        *buf = 138412546;
        v31 = v17;
        v32 = 2112;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ SOSDataSourceMergeObject failed %@ rolling back changes", buf, 0x16u);
      }
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1 && *(a1 + 112) == 1)
    {
      v21 = (*(*(*(a1 + 56) + 16) + 120))(a2, 0);
      if (v21)
      {
        v22 = v21;
        Current = CFAbsoluteTimeGetCurrent();
        AbsoluteTime = CFDateGetAbsoluteTime(v22);
        v25 = (Current - AbsoluteTime);
        if (AbsoluteTime <= Current)
        {
          v25 = 0;
        }

        v26 = 1;
        if (v25 >= 101)
        {
          v27 = v25;
          do
          {
            v26 *= 10;
            v28 = v27 > 0x3F1;
            v27 /= 0xAuLL;
          }

          while (v28);
        }

        SecCoreAnalyticsSendValue();
        CFRelease(v22);
      }
    }

    if (cf1)
    {
      CFRelease(cf1);
    }

    CFRelease(v7);
  }

  else
  {
    *a3 = 1;
    **(a1 + 72) = 0;
    v13 = sub_100006274("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(a1 + 80) + 16);
      v15 = *(a1 + 64);
      if (v15)
      {
        v15 = *v15;
      }

      *buf = 138412546;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ peer sent bad object: %@, rolling back changes", buf, 0x16u);
    }
  }
}

void sub_10014E104(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10014E1A4;
    v4[3] = &unk_1003380C0;
    v6 = a1;
    v5 = v3;
    dispatch_sync(*(a1 + 112), v4);
  }
}

uint64_t sub_10014E1A4(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(a1 + 40);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;

  return _objc_release_x1();
}

void sub_10014E1E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10014E288;
    v4[3] = &unk_100338138;
    v6 = a1;
    v5 = v3;
    dispatch_sync(*(a1 + 112), v4);
  }
}

void sub_10014E294(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(a1[4] + 16))();
  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_10014E2F8(uint64_t a1, CFDataRef theData, const void *a3, _BYTE *a4)
{
  cf = 0;
  if (!a3)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v37 = sub_100006274("SecError");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(*(a1 + 64) + 24);
      v39 = *(*(a1 + 72) + 16);
      v40 = *BytePtr;
      v41 = BytePtr[1];
      v42 = BytePtr[2];
      v43 = BytePtr[3];
      v44 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 138413826;
      *&buf[4] = v38;
      v102 = 2112;
      v103 = v39;
      v104 = 1024;
      v105 = v40;
      v106 = 1024;
      v107 = v41;
      v108 = 1024;
      v109 = v42;
      v110 = 1024;
      v111 = v43;
      v112 = 2112;
      *v113 = v44;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@:%@ object %02X%02X%02X%02X dropping from manifest: not found in datasource: %@", buf, 0x38u);
    }

    v45 = *(a1 + 80);
    *buf = theData;
    v46 = CFArrayCreate(kCFAllocatorDefault, buf, 1, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(v45, v46);
    if (v46)
    {
      CFRelease(v46);
    }

    v13 = 0;
    goto LABEL_51;
  }

  v8 = (*(*(*(a1 + 64) + 16) + 136))(a3, &cf);
  if (!v8)
  {
    v13 = 0;
    goto LABEL_22;
  }

  v12 = v8;
  v13 = sub_10001B910(v8, &cf, v9, v10, v11);
  CFRelease(v12);
  if (!v13 || (v14 = (*(*(*(a1 + 64) + 16) + 112))(a3, &cf)) == 0)
  {
LABEL_22:
    OSStatus = SecErrorGetOSStatus();
    v48 = CFDataGetBytePtr(theData);
    v49 = sub_100006274("engine");
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    if (OSStatus == -26275)
    {
      if (v50)
      {
        v51 = *(*(a1 + 64) + 24);
        v52 = *(*(a1 + 72) + 16);
        v53 = *v48;
        v54 = v48[1];
        v55 = v48[2];
        v56 = v48[3];
        *buf = 138413826;
        *&buf[4] = v51;
        v102 = 2112;
        v103 = v52;
        v104 = 1024;
        v105 = v53;
        v106 = 1024;
        v107 = v54;
        v108 = 1024;
        v109 = v55;
        v110 = 1024;
        v111 = v56;
        v112 = 2112;
        *v113 = cf;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%@:%@ object %02X%02X%02X%02X dropping from manifest: %@", buf, 0x38u);
      }

      v57 = *(a1 + 80);
      *buf = theData;
      v58 = CFArrayCreate(kCFAllocatorDefault, buf, 1, &kCFTypeArrayCallBacks);
      CFArrayAppendValue(v57, v58);
      if (v58)
      {
        CFRelease(v58);
      }

      v59 = cf;
    }

    else
    {
      if (v50)
      {
        v60 = *(*(a1 + 64) + 24);
        v61 = *(*(a1 + 72) + 16);
        v62 = *v48;
        v63 = v48[1];
        v64 = v48[2];
        v65 = v48[3];
        *buf = 138413826;
        *&buf[4] = v60;
        v102 = 2112;
        v103 = v61;
        v104 = 1024;
        v105 = v62;
        v106 = 1024;
        v107 = v63;
        v108 = 1024;
        v109 = v64;
        v110 = 1024;
        v111 = v65;
        v112 = 2112;
        *v113 = cf;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%@:%@ object %02X%02X%02X%02X in SOSDataSourceForEachObject: %@", buf, 0x38u);
      }

      *a4 = 1;
      if (cf)
      {
        v66 = *(a1 + 88);
        if (v66 && !*v66)
        {
          *v66 = cf;
        }

        else
        {
          CFRelease(cf);
        }
      }

      v85 = *(*(a1 + 40) + 8);
      v59 = *(v85 + 24);
      if (!v59)
      {
        goto LABEL_51;
      }

      *(v85 + 24) = 0;
    }

    CFRelease(v59);
LABEL_51:
    v15 = 0;
    goto LABEL_52;
  }

  v15 = v14;
  if (!CFEqual(theData, v14))
  {
    v16 = CFDataGetBytePtr(theData);
    v17 = CFDataGetBytePtr(v15);
    v18 = sub_100006274("engine");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(a1 + 64) + 24);
      v20 = *(*(a1 + 72) + 16);
      v21 = *v16;
      v22 = v16[1];
      v23 = v16[2];
      v24 = v16[3];
      v25 = *v17;
      v26 = v17[1];
      v27 = v17[2];
      v28 = v17[3];
      *buf = 138414594;
      *&buf[4] = v19;
      v102 = 2112;
      v103 = v20;
      v104 = 1024;
      v105 = v21;
      v106 = 1024;
      v107 = v22;
      v108 = 1024;
      v109 = v23;
      v110 = 1024;
      v111 = v24;
      v112 = 1024;
      *v113 = v25;
      *&v113[4] = 1024;
      *&v113[6] = v26;
      LOWORD(v114) = 1024;
      *(&v114 + 2) = v27;
      HIWORD(v114) = 1024;
      v115 = v28;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ object %02X%02X%02X%02X is really %02X%02X%02X%02X dropping from local manifest", buf, 0x46u);
    }

    v29 = *(a1 + 80);
    *buf = theData;
    v30 = CFArrayCreate(kCFAllocatorDefault, buf, 1, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(v29, v30);
    if (v30)
    {
      CFRelease(v30);
    }

    CFArrayAppendValue(*(a1 + 80), a3);
  }

  Length = CFDataGetLength(v13);
  v32 = *(*(*(a1 + 40) + 8) + 24);
  v33 = CFDataGetBytePtr(v13);
  v34 = &v33[CFDataGetLength(v13)];
  v100 = 0;
  *buf = 0;
  if (ccder_decode_tag())
  {
    if (*buf)
    {
      v35 = ccder_decode_len();
      if (v35)
      {
        if (v34 == (v35 + v100))
        {
          goto LABEL_63;
        }
      }
    }

    if (SOSErrorCreate())
    {
      goto LABEL_63;
    }

LABEL_35:
    v98 = Length;
    v67 = CFDataGetBytePtr(v15);
    v68 = CFDataGetLength(v13);
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * v68);
    v70 = CFDataGetBytePtr(v13);
    v71 = CFDataGetLength(v13);
    if (v71 >= 1)
    {
      v72 = v71;
      do
      {
        v73 = *v70++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v73);
        --v72;
      }

      while (v72);
    }

    v74 = sub_100006274("engine");
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = *(*(a1 + 64) + 24);
      v76 = *(*(a1 + 72) + 16);
      v77 = *v67;
      v78 = v67[1];
      v79 = v67[2];
      v80 = v67[3];
      *buf = 138414082;
      *&buf[4] = v75;
      v102 = 2112;
      v103 = v76;
      v104 = 1024;
      v105 = v77;
      v106 = 1024;
      v107 = v78;
      v108 = 1024;
      v109 = v79;
      v110 = 1024;
      v111 = v80;
      v112 = 2112;
      *v113 = Mutable;
      *&v113[8] = 2112;
      v114 = cf;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%@:%@ object %02X%02X%02X%02X der: %@ dropping from manifest: %@", buf, 0x42u);
    }

    Length = v98;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v81 = *(*(a1 + 40) + 8);
    v82 = *(v81 + 24);
    if (v82)
    {
      *(v81 + 24) = 0;
      CFRelease(v82);
    }

    v83 = *(a1 + 80);
    *buf = v15;
    v84 = CFArrayCreate(kCFAllocatorDefault, buf, 1, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(v83, v84);
    if (!v84)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (!SOSErrorCreate())
  {
    goto LABEL_35;
  }

LABEL_63:
  v88 = v32[10];
  if (v88 || (v89 = CFGetAllocator(v32), v88 = CFArrayCreateMutable(v89, 0, &kCFTypeArrayCallBacks), (v32[10] = v88) != 0))
  {
    CFArrayAppendValue(v88, v13);
  }

  v90 = *(*(a1 + 48) + 8);
  v91 = CFDataGetBytePtr(v15);
  sub_1002297B0((v90 + 32), v91);
  *(v90 + 56) = 1;
  if (!**(a1 + 96))
  {
    **(a1 + 96) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  }

  v92 = (*(*(*(a1 + 64) + 16) + 136))(a3, &cf);
  if (!v92)
  {
    goto LABEL_72;
  }

  v84 = v92;
  v93 = **(a1 + 96);
  Count = CFArrayGetCount(v93);
  Value = CFDictionaryGetValue(v84, kSecAttrAccessGroup);
  v116.location = 0;
  v116.length = Count;
  if (!CFArrayContainsValue(v93, v116, Value))
  {
    v96 = **(a1 + 96);
    v97 = CFDictionaryGetValue(v84, kSecAttrAccessGroup);
    CFArrayAppendValue(v96, v97);
  }

LABEL_71:
  CFRelease(v84);
LABEL_72:
  *(*(*(a1 + 56) + 8) + 24) += Length;
  if (*(*(*(a1 + 56) + 8) + 24) >= 0xFA01uLL)
  {
    *a4 = 1;
  }

LABEL_52:
  v86 = *(*(*(a1 + 32) + 8) + 24);
  if (v86)
  {
    v87 = *(a1 + 88);
    if (v87 && !*v87)
    {
      *v87 = v86;
    }

    else
    {
      CFRelease(v86);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_10014EC18(uint64_t a1, char a2)
{
  v4 = *([*(a1 + 32) engine] + 14);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014ECC0;
  v5[3] = &unk_100343A90;
  v7 = a2;
  v6 = *(a1 + 32);
  dispatch_async(v4, v5);
}

void sub_10014ECC0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    *([*(a1 + 32) peer] + 48) = 0;
    if (![*(a1 + 32) confirmed] && !objc_msgSend(*(a1 + 32), "proposed"))
    {
      *([*(a1 + 32) peer] + 49) = 1;
      v2 = sub_100006274("engine");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *([*(a1 + 32) engine] + 3);
        v4 = *([*(a1 + 32) peer] + 2);
        v5 = [*(a1 + 32) local];
        v14 = 138412802;
        v15 = v3;
        v16 = 2112;
        v17 = v4;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@:%@ sendObjects=true L:%@", &v14, 0x20u);
      }
    }

    sub_10022FD9C([*(a1 + 32) peer] + 11, objc_msgSend(*(a1 + 32), "local"));
    sub_10022FD9C([*(a1 + 32) peer] + 10, objc_msgSend(*(a1 + 32), "proposed"));
    v6 = sub_100006274("engine");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *([*(a1 + 32) engine] + 3);
      v8 = *([*(a1 + 32) peer] + 2);
      v9 = [*(a1 + 32) message];
      v14 = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v10 = "send %@:%@ %@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, &v14, 0x20u);
    }
  }

  else
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *([*(a1 + 32) engine] + 3);
      v12 = *([*(a1 + 32) peer] + 2);
      v13 = [*(a1 + 32) message];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v10 = "%@:%@ failed to send %@";
      goto LABEL_11;
    }
  }
}

CFMutableSetRef sub_10014EF2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v13 = 0;
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10014F064;
    v10[3] = &unk_1003381D8;
    v11 = a3;
    v10[4] = v12;
    v10[5] = a2;
    v10[6] = a1;
    v10[7] = Mutable;
    if ((sub_10014854C(a1, a4, v10) & 1) == 0 && Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    _Block_object_dispose(v12, 8);
  }

  else
  {
    SOSCCSetSOSDisabledError();
    return 0;
  }

  return Mutable;
}

void sub_10014F044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014F064(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *(a1 + 40);
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_10014F200;
  context[3] = &unk_1003381B0;
  v10 = *(a1 + 64);
  v5 = *(a1 + 32);
  context[4] = &v11;
  context[5] = v5;
  v9 = *(a1 + 48);
  CFSetApplyFunction(v4, sub_10014BE34, context);
  if (*(v12 + 24) == 1)
  {
    v7 = 0;
    if ((sub_100148EB4(*(a1 + 48), a2, &v7) & 1) == 0)
    {
      v6 = sub_100006274("engine-save");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to save engine: %@", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v11, 8);
}

void sub_10014F200(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  cfa = 0;
  if (!cf)
  {
    sub_1000103CC(-50, &cfa, @"object %@ is not a string", 0);
LABEL_9:
    v5 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFStringGetTypeID())
  {
    sub_1000103CC(-50, &cfa, @"object %@ is not a string", v2);
    v2 = 0;
    goto LABEL_9;
  }

  v5 = sub_1001486BC(*(a1 + 48), v2, &cfa);
  if (sub_10022F340(v5))
  {
    if (*(a1 + 64) == 1)
    {
      *(v5 + 48) = 1;
    }

    v6 = sub_10014F3C8(*(a1 + 48), v5, 0, *(*(a1 + 32) + 8) + 24, *(*(a1 + 40) + 8) + 24, &cfa);
  }

  else
  {
    v6 = 1;
  }

LABEL_10:
  if (cfa)
  {
    v7 = sub_100006274("engine-sync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v2;
      v12 = 2112;
      v13 = cfa;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to process sync for %@: %@", buf, 0x16u);
    }
  }

  if (v6)
  {
    CFSetAddValue(*(a1 + 56), v2);
  }

  v8 = cfa;
  if (cfa)
  {
    cfa = 0;
    CFRelease(v8);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t sub_10014F3C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v12 = &v49;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  if (*(a2 + 48) == 1)
  {
    v13 = sub_10022E714(a2, a6);
    v12 = v50;
  }

  else
  {
    v13 = 1;
  }

  v52 = v13;
  if (*(v12 + 24) != 1)
  {
    v21 = 0;
    goto LABEL_44;
  }

  if (!*(a2 + 112))
  {
    v21 = 1;
    goto LABEL_44;
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = sub_10014BF98(a1, a2);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = sub_10022FCF8(a2);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v35 = 0;
  cf = 0;
  v14 = *(a2 + 16);
  v15 = sub_10022A898(v42[3], v46[3], &v35, &cf, a6);
  *(v50 + 24) &= v15;
  v16 = sub_100006274("engine");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 24);
    v33 = v14;
    if (v46[3])
    {
      v17 = "L";
    }

    else
    {
      v17 = "l";
    }

    v31 = v17;
    if (v42[3])
    {
      v18 = "P";
    }

    else
    {
      v18 = "0";
    }

    if (cf)
    {
      v19 = "O";
    }

    else
    {
      v19 = "0";
    }

    if (cf)
    {
      v20 = CFDataGetLength(*(cf + 3)) / 0x14uLL;
    }

    else
    {
      v20 = 0;
    }

    v22 = v35;
    if (v35)
    {
      v22 = CFDataGetLength(*(v35 + 3)) / 0x14uLL;
    }

    *buf = 138413826;
    v54 = v32;
    v55 = 2112;
    v56 = v33;
    v57 = 2080;
    v58 = v31;
    v59 = 2080;
    v60 = v18;
    v14 = v33;
    v61 = 2080;
    v62 = v19;
    v63 = 2048;
    v64 = v20;
    v65 = 2048;
    v66 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@:%@: Send state for peer [%s%s%s] O: %zu, M: %zu", buf, 0x48u);
  }

  if ((!v35 || CFDataGetLength(*(v35 + 3)) <= 0x13) && (!cf || CFDataGetLength(*(cf + 3)) <= 0x13))
  {
    if (!a3)
    {
      v25 = sub_100006274("engine");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 24);
        *buf = 138412546;
        v54 = v26;
        v55 = 2112;
        v56 = a2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@:%@ backup still done", buf, 0x16u);
      }

      goto LABEL_37;
    }

    *(v38 + 24) = 0;
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10014F90C;
  v34[3] = &unk_100338558;
  v34[8] = v35;
  v34[9] = a1;
  v34[10] = v14;
  v34[11] = a6;
  v34[4] = &v49;
  v34[5] = &v45;
  v34[12] = cf;
  v34[13] = a2;
  v34[6] = &v41;
  v34[7] = &v37;
  v34[14] = a4;
  v34[15] = a5;
  v23 = sub_10022F5D0(a2, a6, v34);
  *(v50 + 24) &= v23;
  if (*(v38 + 24) == 1)
  {
    v24 = sub_100006274("backup");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v54 = "writing changes to backup";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "posting notification to CloudServices: %s", buf, 0xCu);
    }

    notify_post("com.apple.security.itembackup");
  }

LABEL_37:
  v27 = v46[3];
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v28);
  }

  v29 = v35;
  if (v35)
  {
    v35 = 0;
    CFRelease(v29);
  }

  v21 = *(v50 + 24);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
LABEL_44:
  _Block_object_dispose(&v49, 8);
  return v21 & 1;
}

void sub_10014F8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_10014F90C(uint64_t a1, FILE *a2, int a3)
{
  v55 = 0;
  v56 = &v55;
  v57 = 0x4010000000;
  v58 = "";
  v59 = 0u;
  v60 = 0u;
  v49 = 0;
  v50 = &v49;
  v51 = 0x4010000000;
  v52 = "";
  v53 = 0u;
  v54 = 0u;
  v6 = *(a1 + 64);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10015003C;
  v46[3] = &unk_100338508;
  v47 = *(a1 + 72);
  v48 = *(a1 + 88);
  v7 = *(a1 + 32);
  v46[4] = &v55;
  v46[5] = v7;
  v46[6] = a2;
  sub_10022A5D4(v6, v46);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v8 = *(a1 + 96);
    if (v8)
    {
      if (CFDataGetLength(*(v8 + 24)) >= 0x14)
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v11 = *(a1 + 88);
        v10 = *(a1 + 96);
        cf[1] = _NSConcreteStackBlock;
        cf[2] = 3221225472;
        v12 = *(a1 + 72);
        v13 = *(*(a1 + 72) + 16);
        cf[3] = sub_100150128;
        cf[4] = &unk_100338530;
        v42 = v12;
        v45 = a3;
        v43 = Mutable;
        v44 = v11;
        cf[5] = *(a1 + 32);
        cf[6] = &v49;
        cf[7] = a2;
        *(*(*(a1 + 32) + 8) + 24) &= (*(v13 + 32))();
        if (CFArrayGetCount(Mutable))
        {
          cf[0] = 0;
          if ((sub_10014C2A8(*(a1 + 72), 0, 2, 0, Mutable, cf) & 1) == 0)
          {
            v14 = sub_100006274("SecError");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v62 = Mutable;
              v63 = 2112;
              v64 = cf[0];
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SOSEngineUpdateChanges_locked: %@ failed: %@", buf, 0x16u);
            }
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          v15 = *(*(a1 + 40) + 8);
          v16 = *(a1 + 88);
          v17 = sub_10014BF98(*(a1 + 72), *(a1 + 104));
          v18 = *(v15 + 24);
          if (v18)
          {
            CFRelease(v18);
          }

          *(v15 + 24) = v17;
          *(*(*(a1 + 48) + 8) + 24) = sub_10022FCF8(*(a1 + 104));
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }
  }

  if (v50[5] || (v22 = v56, *(*(*(a1 + 48) + 8) + 24)) && v56[5])
  {
    **(a1 + 112) = 1;
    v19 = sub_10022ABF8((v56 + 4), *(a1 + 88));
    v20 = sub_10022ABF8((v50 + 4), *(a1 + 88));
    v21 = sub_10022AC58(*(*(*(a1 + 48) + 8) + 24), v19, v20, *(a1 + 88));
    if (v19)
    {
      CFRelease(v19);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    sub_10022FC58((*(a1 + 104) + 80), v21);
    if (v21)
    {
      CFRelease(v21);
    }

    *(*(*(a1 + 48) + 8) + 24) = sub_10022FCF8(*(a1 + 104));
    v22 = v56;
  }

  free(v22[4]);
  v22[4] = 0;
  v22[5] = 0;
  *(v22 + 56) = 0;
  v22[6] = 0;
  v23 = v50;
  free(v50[4]);
  v23[4] = 0;
  v23[5] = 0;
  *(v23 + 56) = 0;
  v23[6] = 0;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v24 = *(*(*(a1 + 40) + 8) + 24);
    v25 = *(*(*(a1 + 48) + 8) + 24);
    if (v24 && v25)
    {
      if (CFEqual(v24, v25))
      {
        goto LABEL_28;
      }
    }

    else if (v24 == v25)
    {
LABEL_28:
      cf[0] = 0;
      if (sub_100224B28(a2, 899, cf))
      {
        *(*(a1 + 104) + 49) = 1;
        **(a1 + 112) = 1;
        v26 = sub_100006274("backup");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 80);
          v28 = *(*(a1 + 72) + 24);
          if (*(*(*(a1 + 56) + 8) + 24))
          {
            v29 = " notifying sbd";
          }

          else
          {
            v29 = "";
          }

          *buf = 138412802;
          v62 = v28;
          v63 = 2112;
          v64 = v27;
          v65 = 2080;
          v66 = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@:%@ backup done%s", buf, 0x20u);
        }
      }

      else
      {
        v37 = sub_100006274("SecWarning");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 80);
          v39 = *(*(a1 + 72) + 24);
          *buf = 138412802;
          v62 = v39;
          v63 = 2112;
          v64 = v38;
          v65 = 2112;
          v66 = cf[0];
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@:%@ in SOSBackupPeerWriteCompleteMarker: %@", buf, 0x20u);
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
        **(a1 + 120) = 1;
        if (cf[0])
        {
          v40 = *(a1 + 88);
          if (v40 && !*v40)
          {
            *v40 = cf[0];
          }

          else
          {
            CFRelease(cf[0]);
          }
        }
      }

      goto LABEL_50;
    }
  }

  v30 = sub_100006274("backup");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 80);
    v32 = *(*(a1 + 72) + 24);
    v33 = *(*(*(a1 + 40) + 8) + 24);
    if (v33)
    {
      v34 = CFDataGetLength(*(v33 + 24)) / 0x14uLL;
    }

    else
    {
      v34 = 0;
    }

    v35 = *(*(*(a1 + 48) + 8) + 24);
    if (v35)
    {
      v35 = CFDataGetLength(*(v35 + 24)) / 0x14uLL;
    }

    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v36 = " notifying sbd";
    }

    else
    {
      v36 = "";
    }

    *buf = 138413314;
    v62 = v32;
    v63 = 2112;
    v64 = v31;
    v65 = 2048;
    v66 = v34;
    v67 = 2048;
    v68 = v35;
    v69 = 2080;
    v70 = v36;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@:%@ backup incomplete [%zu/%zu]%s", buf, 0x34u);
  }

  **(a1 + 120) = 1;
LABEL_50:
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);
}

void sub_10014FFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10015003C(uint64_t a1, const __CFData *a2, _BYTE *a3)
{
  cf = 0;
  if (ftello(*(a1 + 48)) < 64001)
  {
    if (sub_10022496C(*(a1 + 48), a2, &cf))
    {
      v6 = *(*(a1 + 32) + 8);
      BytePtr = CFDataGetBytePtr(a2);
      sub_1002297B0((v6 + 32), BytePtr);
      *(v6 + 56) = 1;
    }

    else
    {
      sub_100150464(*(a1 + 56), *(a1 + 64), a2, 0, "in SOSPeerWriteDelete", cf);
      if (cf)
      {
        v8 = *(a1 + 72);
        if (v8 && !*v8)
        {
          *v8 = cf;
        }

        else
        {
          CFRelease(cf);
        }
      }

      *a3 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    *a3 = 1;
  }
}

void sub_100150128(uint64_t a1, const __CFData *a2, const void *a3, _BYTE *a4)
{
  cf = 0;
  if (ftello(*(a1 + 48)) >= 64001)
  {
    *a4 = 1;
    return;
  }

  v8 = *(a1 + 56);
  if (!a3)
  {
    sub_100150464(v8, *(a1 + 64), a2, 0, "dropping from manifest: not found in datasource", 0);
    v21 = *(a1 + 72);
    values = a2;
    v9 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(v21, v9);
    if (!v9)
    {
      return;
    }

    goto LABEL_29;
  }

  v9 = (*(*(v8 + 16) + 144))(a3, *(a1 + 88), &cf);
  if (v9)
  {
    v10 = (*(*(*(a1 + 56) + 16) + 112))(a3, &cf);
    if (v10)
    {
      v11 = v10;
      if (!CFEqual(a2, v10))
      {
        sub_100150464(*(a1 + 56), *(a1 + 64), a2, v11, "", 0);
        v12 = *(a1 + 72);
        values = a2;
        v13 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
        CFArrayAppendValue(v12, v13);
        if (v13)
        {
          CFRelease(v13);
        }

        CFArrayAppendValue(*(a1 + 72), a3);
      }

      if (sub_100224A70(*(a1 + 48), v9, &cf))
      {
        v14 = *(*(a1 + 40) + 8);
        BytePtr = CFDataGetBytePtr(v11);
        sub_1002297B0((v14 + 32), BytePtr);
        *(v14 + 56) = 1;
      }

      else
      {
        sub_100150464(*(a1 + 56), *(a1 + 64), a2, 0, "in SOSPeerWriteAdd", cf);
        *a4 = 1;
        if (cf)
        {
          v23 = *(a1 + 80);
          if (v23 && !*v23)
          {
            *v23 = cf;
          }

          else
          {
            CFRelease(cf);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
      }

      CFRelease(v9);
      v24 = v11;
      goto LABEL_33;
    }
  }

  OSStatus = SecErrorGetOSStatus();
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  if (OSStatus == -26275)
  {
    sub_100150464(v17, v18, a2, 0, "dropping from manifest", cf);
    v19 = *(a1 + 72);
    values = a2;
    v20 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(v19, v20);
    if (v20)
    {
      CFRelease(v20);
    }

    CFRelease(cf);
    if (!v9)
    {
      return;
    }

LABEL_29:
    v24 = v9;
LABEL_33:
    CFRelease(v24);
    return;
  }

  sub_100150464(v17, v18, a2, 0, "in SOSDataSourceForEachObject", cf);
  *a4 = 1;
  if (cf)
  {
    v22 = *(a1 + 80);
    if (v22 && !*v22)
    {
      *v22 = cf;
    }

    else
    {
      CFRelease(cf);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  if (v9)
  {
    goto LABEL_29;
  }
}

void sub_100150464(uint64_t a1, uint64_t a2, CFDataRef theData, const __CFData *a4, uint64_t a5, const __CFString *a6)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (a4)
  {
    v12 = CFDataGetBytePtr(a4);
    v13 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 24);
      v15 = *BytePtr;
      v16 = BytePtr[1];
      v17 = BytePtr[2];
      v18 = BytePtr[3];
      v19 = *v12;
      v20 = v12[1];
      v21 = v12[2];
      v22 = v12[3];
      v32 = 138414594;
      v33 = v14;
      v34 = 2112;
      v35 = a2;
      v36 = 1024;
      v37 = v15;
      v38 = 1024;
      v39 = v16;
      v40 = 1024;
      v41 = v17;
      v42 = 1024;
      v43 = v18;
      v44 = 1024;
      *v45 = v19;
      *&v45[4] = 1024;
      *&v45[6] = v20;
      LOWORD(v46) = 1024;
      *(&v46 + 2) = v21;
      HIWORD(v46) = 1024;
      v47 = v22;
      v23 = "%@:%@ object %02X%02X%02X%02X is really %02X%02X%02X%02X dropping from local manifest";
      v24 = v13;
      v25 = 70;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v32, v25);
    }
  }

  else
  {
    v13 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 24);
      v27 = *BytePtr;
      v28 = BytePtr[1];
      v29 = BytePtr[2];
      v30 = &stru_100348050;
      v31 = BytePtr[3];
      if (a6)
      {
        v30 = a6;
      }

      v32 = 138414082;
      v33 = v26;
      v34 = 2112;
      v35 = a2;
      v36 = 1024;
      v37 = v27;
      v38 = 1024;
      v39 = v28;
      v40 = 1024;
      v41 = v29;
      v42 = 1024;
      v43 = v31;
      v44 = 2080;
      *v45 = a5;
      *&v45[8] = 2112;
      v46 = v30;
      v23 = "%@:%@ object %02X%02X%02X%02X %s: %@";
      v24 = v13;
      v25 = 66;
      goto LABEL_8;
    }
  }
}

void sub_10015067C(uint64_t a1)
{
  sub_10014A744(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v2 = *(a1 + 40);
    if (*(v2 + 24))
    {
      if (CFArrayGetCount(*(v2 + 80)))
      {
        v3 = *(*(a1 + 40) + 80);
        activity_block[0] = _NSConcreteStackBlock;
        activity_block[1] = 3221225472;
        activity_block[2] = sub_100245934;
        activity_block[3] = &unk_100346E68;
        activity_block[4] = v3;
        _os_activity_initiate(&_mh_execute_header, "CloudCircle RequestSyncWithPeersList", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
      }
    }
  }
}

uint64_t sub_10015075C(void *a1, uint64_t a2, _BYTE *a3)
{
  result = sub_100148EB4(a1[6], a2, (*(a1[5] + 8) + 24));
  *a3 = result;
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

CFTypeRef sub_1001507A4(void *a1)
{
  v2 = a1[5];
  V0ViewSet = SOSViewsGetV0ViewSet();
  v4 = a1[6];
  result = sub_10014C008(v2, V0ViewSet);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1001507E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 16);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100150898;
  v9[3] = &unk_100338580;
  v10 = v5;
  v11 = a1;
  v7 = *(v6 + 80);
  v8 = v5;
  v7(v6, a2, 0, v9);
}

void sub_100150898(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100150924;
  v4[3] = &unk_1003380C0;
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = a2;
  dispatch_sync(*(v3 + 112), v4);
}

uint64_t sub_100150938(uint64_t a1)
{
  result = sub_10014C2A8(*(a1 + 40), 0, 2, *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10015097C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100150A98;
    v10[3] = &unk_100338278;
    v13 = a1;
    v14 = a2;
    v15 = a3;
    v11 = v7;
    v12 = &v16;
    sub_1001507E8(a1, a3, v10);
    v8 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    SOSCCSetSOSDisabledError();
    v8 = 0;
  }

  return v8 & 1;
}

void sub_100150A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100150A98(uint64_t a1)
{
  v2 = sub_1001486BC(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (v2)
  {
    v3 = v2;
    (*(*(a1 + 32) + 16))();

    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_100150B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v5 = *(a3 + 112);
  if (v5)
  {
    v6 = sub_10001B280(v5);
    v7 = *(a1 + 40);
    v8 = v6 == 0;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v8 = 0;
      if (CFEqual(v7, v6))
      {
        goto LABEL_7;
      }

LABEL_11:
      v10 = 0;
      *(a3 + 48) = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    v7 = *(a1 + 40);
    v8 = 1;
  }

  if (v7 != v6)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = sub_10022A73C(*(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = v10 != 0;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    sub_10022FD50(a3, v10);
    sub_10022FC58((a3 + 80), v10);
  }

LABEL_12:
  *(a3 + 49) = 0;
  *(*(*(a1 + 32) + 8) + 24) = sub_10014F3C8(*(a1 + 64), a3, 1, &v18 + 1, &v18, *(a1 + 56));
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = *v11;
      if (SecErrorGetOSStatus() == -25308)
      {
        if (qword_10039E2C0 != -1)
        {
          dispatch_once(&qword_10039E2C0, &stru_100344868);
        }

        v13 = qword_10039E2D0;
        objc_sync_enter(v13);
        v14 = [qword_10039E2C8 operationCount];
        v15 = sub_100006274("engine");
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SOSEnsureBackup: Backup already scheduled for next unlock", buf, 2u);
          }
        }

        else
        {
          if (v16)
          {
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SOSEnsureBackup: Scheduling a backup for next unlock", v19, 2u);
          }

          v15 = [NSBlockOperation blockOperationWithBlock:&stru_100344888];
          v17 = [qword_10039E2D0 unlockDependency];
          [v15 addNullableDependency:v17];

          [qword_10039E2C8 addOperation:v15];
        }

        objc_sync_exit(v13);
      }
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (!v8)
  {
    CFRelease(v6);
  }
}

uint64_t sub_100150DB4(uint64_t a1)
{
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150EEC;
    v5[3] = &unk_1003382F0;
    v5[4] = &v6;
    v2 = v5;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100150F00;
    block[3] = &unk_1003380C0;
    v11 = v2;
    v12 = a1;
    dispatch_sync(*(a1 + 112), block);

    v3 = v7[3];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    SOSCCSetSOSDisabledError();
    return 0;
  }

  return v3;
}

void sub_100150F00(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4 = v1;
  v5 = objc_retainBlock(v2);
  Copy = CFDictionaryCreateCopy(0, *(v1 + 56));
  CFDictionaryApplyFunction(Copy, sub_100150F8C, &v4);
  CFRelease(Copy);
}

void sub_100150F8C(const void *a1, const __CFDictionary *a2, uint64_t *a3)
{
  if (sub_10022F340(a2))
  {
    v6 = sub_100149A44(*a3, a1, a2, 0);
    if (v6)
    {
      v7 = v6;
      (*(a3[1] + 16))();

      CFRelease(v7);
    }
  }
}

void *sub_10015101C(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    result = CFRetain(*(a2 + 16));
  }

  *(*(v2[4] + 8) + 24) = v3;
  return result;
}

void sub_100151058(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v7 = v2;
  v8 = objc_retainBlock(v3);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  Copy = CFDictionaryCreateCopy(0, *(v2 + 56));
  Value = CFDictionaryGetValue(Copy, v1);
  if (Value)
  {
    CFDictionaryAddValue(Mutable, v1, Value);
    CFDictionaryApplyFunction(Mutable, sub_100150F8C, &v7);
  }

  CFRelease(Copy);
  CFRelease(Mutable);
}

uint64_t sub_100151158(uint64_t a1, uint64_t a2)
{
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100151240;
    v6[3] = &unk_100338250;
    v6[4] = &v7;
    v6[5] = a1;
    v6[6] = a2;
    sub_1001507E8(a1, a2, v6);
    v4 = v8[3];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    SOSCCSetSOSDisabledError();
    return 0;
  }

  return v4;
}

void sub_100151240(uint64_t a1)
{
  v4 = *(a1 + 40);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v3 = *(v4 + 64);
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_100151378;
  context[3] = &unk_100338350;
  v7 = v4;
  v8 = Mutable;
  CFDictionaryApplyFunction(v3, sub_100149D00, context);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001513F4;
  v5[3] = &unk_1003385C0;
  v5[4] = v4;
  v5[5] = Mutable;
  sub_100149668(v4, v5);
  *(*(*(a1 + 32) + 8) + 24) = Mutable;
}

void sub_100151378(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 40);
  v5 = sub_10014C008(*(a1 + 32), a2);
  sub_10015148C(*(a1 + 48), 0, v5, a2);
  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_1001513F4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 96);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, *(a2 + 16));
    if (!Value)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    Value = @"Coders not loaded.";
  }

  v6 = CFCopyDescription(Value);
LABEL_6:
  sub_10015148C(*(a1 + 40), *(a2 + 16), *(a2 + 72), *(a2 + 24));
  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_10015148C(__CFArray *a1, uint64_t a2, CFDataRef *a3, const void *a4)
{
  v8 = kCFAllocatorDefault;
  if (a3)
  {
    v9 = CFDataGetLength(a3[3]) / 0x14uLL;
  }

  else
  {
    v9 = 0;
  }

  valuePtr = v9;
  v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  sub_10022A4C8(a3);
  key = kSOSCCEngineStatePeerIDKey;
  if (a4)
  {
    CFGetTypeID(a4);
    CFSetGetTypeID();
    v8 = kCFAllocatorDefault;
  }

  v19 = sub_1001515FC(v8, v11, v12, v13, v14, v15, v16, v17, key, a2);
  if (v10)
  {
    CFRelease(v10);
  }

  CFArrayAppendValue(a1, v19);
  if (v19)
  {
    CFRelease(v19);
  }
}

__CFDictionary *sub_1001515FC(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v15 = &a10;
  v11 = key;
  if (key)
  {
    do
    {
      v12 = v15;
      v16 = v15 + 1;
      if (*v12)
      {
        CFDictionarySetValue(Mutable, v11, *v12);
      }

      v13 = v16;
      v15 = v16 + 1;
      v11 = *v13;
    }

    while (*v13);
  }

  return Mutable;
}

void sub_100151684(id a1, __CFString *a2)
{
  v3 = sub_100006274("engineLogState");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@", &v4, 0xCu);
  }
}

void sub_100155C24(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = [v3 objectForKeyedSubscript:@"count(rowid)"];
  v4 = [v11 asNSNumberInteger];
  v5 = *(a1 + 32);
  v6 = [v3 objectForKeyedSubscript:@"state"];
  v7 = [v6 asString];
  v8 = [v3 objectForKeyedSubscript:@"keyclass"];

  v9 = [v8 asString];
  v10 = [NSString stringWithFormat:@"%@-%@", v7, v9];
  [v5 setObject:v4 forKeyedSubscript:v10];
}

void sub_100155F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100155F70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100155F88(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:@"count(rowid)"];
  v3 = [v6 asNSNumberInteger];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1001581C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) sanitizeErrorDomain:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_100158590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) sanitizeErrorDomain:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_10015895C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = [v9 sanitizeErrorDomain:a5];
  (*(v8 + 16))(v8, v12, v11, v10, v13);
}

void sub_100158D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) sanitizeErrorDomain:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_100159698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001596C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained allDependentsSuccessful];
  v2 = *(a1 + 32);
  v3 = [WeakRetained error];
  v4 = CKXPCSuitableError();
  (*(v2 + 16))(v2, v4);
}

void sub_100159CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100159CD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained allDependentsSuccessful];
  v2 = *(a1 + 32);
  v3 = [WeakRetained error];
  v4 = CKXPCSuitableError();
  (*(v2 + 16))(v2, v4);
}

void sub_10015A3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015A3CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100019104(@"ckks", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained error];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ending rsync-local rpc with %@", &v8, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [WeakRetained error];
  v7 = CKXPCSuitableError();
  (*(v5 + 16))(v5, v7);
}

void sub_10015A8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015A8E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100019104(@"ckks", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained error];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ending rsync-CloudKit rpc with %@", &v8, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [WeakRetained error];
  v7 = CKXPCSuitableError();
  (*(v5 + 16))(v5, v7);
}

void sub_10015B564(id a1, SOSAccountTransaction *a2)
{
  cf = 0;
  v2 = sub_100216A18(a2, &cf);
  if (cf)
  {
    v3 = sub_100019104(@"backup", 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = cf;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Couldn't process sync with backup peers: %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = sub_100019104(@"ckksbackup", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "telling CloudServices about TLK arrival", buf, 2u);
    }

    notify_post("com.apple.security.itembackup");
  }

  v5 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v5);
  }
}

uint64_t sub_10015D35C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10015D374(uint64_t a1)
{
  v9 = 0;
  v2 = [CKKSZoneStateEntry tryFromDatabase:&stru_100348050 zoneName:@"all" error:&v9];
  v3 = v9;
  if (v3)
  {
    v4 = sub_100019104(@"manager", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, " couldn't load global zone state: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [v2 rateLimiter];

    if (v6)
    {
      v5 = [v2 rateLimiter];
      goto LABEL_8;
    }
  }

  v5 = objc_alloc_init(CKKSRateLimiter);
LABEL_8:
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

void sub_10015D4B8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("CKKS global zone state", v3);
  v2 = qword_10039DF50;
  qword_10039DF50 = v1;
}

void sub_10015D7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10015D818(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained sosPeerAdapter];
    v32 = 0;
    v4 = [v3 circleStatus:&v32];
    v5 = v32;

    if (v5)
    {
      v6 = sub_100019104(@"manager", 0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, " couldn't fetch sos status for SF report: %@", buf, 0xCu);
      }
    }

    v7 = +[NSMutableDictionary dictionary];
    if (!v4)
    {
      v8 = +[CKKSAnalytics logger];
      v9 = +[NSDate date];
      [v8 setDateProperty:v9 forKey:@"lastInCircle"];
    }

    v25 = v5;
    v10 = [NSNumber numberWithBool:v4 == 0];
    [v7 setObject:v10 forKeyedSubscript:@"inCircle"];

    v27 = v2;
    v11 = [v2 accountTracker];
    v12 = [v11 currentCKAccountInfo];
    v13 = [v12 hasValidCredentials];

    if ((v13 & 1) == 0)
    {
      v14 = [NSNumber numberWithBool:0, v5];
      [v7 setObject:v14 forKeyedSubscript:@"validCredentials"];
    }

    v34[0] = @"lastUnlock";
    v34[1] = @"lastInCircle";
    [NSArray arrayWithObjects:v34 count:2, v25];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v31 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = +[CKKSAnalytics logger];
          v22 = [v21 datePropertyForKey:v20];

          v23 = [NSNumber numberWithInteger:[CKKSAnalytics fuzzyDaysSinceDate:v22]];
          [v7 setObject:v23 forKeyedSubscript:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v17);
    }

    v2 = v27;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10015DB5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v3 = 0;
    goto LABEL_45;
  }

  v3 = +[NSMutableDictionary dictionary];
  v4 = [*(a1 + 32) viewStateForName:*(a1 + 40)];
  if (v4)
  {
    v83 = WeakRetained;
    v5 = +[CKKSAnalytics logger];
    v6 = [v4 zoneName];
    v7 = [v5 dateOfLastSuccessForEvent:@"CKKSEventProcessIncomingQueueClassA" zoneName:v6];

    v8 = +[CKKSAnalytics logger];
    v9 = [v4 zoneName];
    v10 = [v8 dateOfLastSuccessForEvent:@"CKKSEventProcessIncomingQueueClassC" zoneName:v9];

    v11 = +[CKKSAnalytics logger];
    v12 = [v4 zoneName];
    v13 = [v11 datePropertyForKey:@"lastKSR" zoneName:v12];

    v82 = v7;
    v14 = [CKKSAnalytics fuzzyDaysSinceDate:v7];
    v81 = v10;
    v15 = [CKKSAnalytics fuzzyDaysSinceDate:v10];
    v80 = v13;
    v16 = [CKKSAnalytics fuzzyDaysSinceDate:v13];
    v76 = v14;
    v17 = [NSNumber numberWithInteger:v14];
    v18 = [NSString stringWithFormat:@"%@-daysSinceClassASync", *(a1 + 40)];
    [v3 setValue:v17 forKey:v18];

    v77 = v15;
    v19 = [NSNumber numberWithInteger:v15];
    v20 = [NSString stringWithFormat:@"%@-daysSinceClassCSync", *(a1 + 40)];
    [v3 setValue:v19 forKey:v20];

    v21 = [NSNumber numberWithInteger:v16];
    v22 = [NSString stringWithFormat:@"%@-daysSinceLastKeystateReady", *(a1 + 40)];
    [v3 setValue:v21 forKey:v22];

    v23 = [v4 contextID];
    v24 = [v4 zoneID];
    v89 = 0;
    v25 = [CKKSMirrorEntry countsWithContextID:v23 zoneID:v24 error:&v89];
    v26 = v89;

    v78 = v26;
    if (v26 || !v25)
    {
      v29 = sub_100019104(@"manager", 0);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        v31 = [v4 contextID];
        v32 = [v4 zoneID];
        v88 = 0;
        v33 = [CKKSTLKShareRecord countsWithContextID:v31 zoneID:v32 error:&v88];
        v34 = v88;

        v84 = v34;
        v85 = v33;
        if (v34 || !v33)
        {
          v37 = sub_100019104(@"manager", 0);
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          v38 = [v4 zoneID];
          *buf = 138412546;
          v91 = v38;
          v92 = 2112;
          v93 = v34;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "couldn't fetch CKKSTLKShare counts for %@: %@", buf, 0x16u);
        }

        else
        {
          v35 = [v4 zoneName];
          v36 = sub_100019104(@"metrics", v35);

          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v91 = v85;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "View has %@ tlkshares", buf, 0xCu);
          }

          v37 = [CKKSAnalytics fuzzyNumber:v85];
          v38 = [NSString stringWithFormat:@"%@-%@", *(a1 + 40), @"numTLKShares"];
          [v3 setObject:v37 forKeyedSubscript:v38];
        }

LABEL_20:
        v39 = [v4 contextID];
        v40 = [v4 zoneID];
        v87 = 0;
        v41 = [CKKSKey countsWithContextID:v39 zoneID:v40 error:&v87];
        v42 = v87;

        v79 = v25;
        v74 = v42;
        v75 = v41;
        if (v42 || !v41)
        {
          v45 = sub_100019104(@"manager", 0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = [v4 zoneID];
            *buf = 138412546;
            v91 = v46;
            v92 = 2112;
            v93 = v42;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "couldn't fetch CKKSKey counts for %@: %@", buf, 0x16u);
          }
        }

        else
        {
          v43 = [v4 zoneName];
          v44 = sub_100019104(@"metrics", v43);

          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v91 = v41;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "View has %@ sync keys", buf, 0xCu);
          }

          v45 = [NSString stringWithFormat:@"%@-%@", *(a1 + 40), @"numSyncKeys"];
          [v3 setObject:v41 forKeyedSubscript:v45];
        }

        v47 = [*(a1 + 32) lastIncomingQueueOperation];
        v48 = [v47 error];

        v49 = [*(a1 + 32) lastOutgoingQueueOperation];
        v50 = [v49 error];

        v51 = [NSString stringWithFormat:@"%@-%@", *(a1 + 40), @"TLKs"];
        v73 = [NSString stringWithFormat:@"%@-%@", *(a1 + 40), @"inSyncA"];
        v72 = [NSString stringWithFormat:@"%@-%@", *(a1 + 40), @"inSyncC"];
        v71 = [NSString stringWithFormat:@"%@-%@", *(a1 + 40), @"IQNOE"];
        v70 = [NSString stringWithFormat:@"%@-%@", *(a1 + 40), @"OQNOE"];
        v52 = *(a1 + 32);
        v86 = 0;
        v53 = [v52 haveTLKsLocally:v4 error:&v86];
        v54 = v86;
        v69 = v51;
        if (v54)
        {
          v55 = [v4 zoneName];
          v56 = sub_100019104(@"metrics", v55);

          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v91 = v54;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Unable to check haveTLKs: %@", buf, 0xCu);
          }

          v57 = [NSString stringWithFormat:@"%@-%@-fetchFailed", *(a1 + 40), @"TLKs"];
          v58 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v54 code]);
          [v3 setObject:v58 forKeyedSubscript:v57];
        }

        else
        {
          v57 = [NSNumber numberWithBool:v53];
          [v3 setObject:v57 forKeyedSubscript:v51];
        }

        if (v76 < 7)
        {
          v59 = v53;
        }

        else
        {
          v59 = 0;
        }

        v60 = [NSNumber numberWithBool:v76 < 7];
        [v3 setObject:v60 forKeyedSubscript:v73];

        if (v77 >= 7)
        {
          v59 = 0;
        }

        v61 = [NSNumber numberWithBool:v77 < 7];
        [v3 setObject:v61 forKeyedSubscript:v72];

        if (v48)
        {
          v62 = 0;
        }

        else
        {
          v62 = v59;
        }

        v63 = [NSNumber numberWithBool:v48 == 0];
        [v3 setObject:v63 forKeyedSubscript:v71];

        if (v50)
        {
          v64 = 0;
        }

        else
        {
          v64 = v62;
        }

        v65 = [NSNumber numberWithBool:v50 == 0];
        [v3 setObject:v65 forKeyedSubscript:v70];

        v66 = [NSString stringWithFormat:@"%@-%@", *(a1 + 40), @"inSync"];
        v67 = [NSNumber numberWithBool:v64];
        [v3 setObject:v67 forKeyedSubscript:v66];

        WeakRetained = v83;
        goto LABEL_44;
      }

      v30 = [v4 zoneID];
      *buf = 138412546;
      v91 = v30;
      v92 = 2112;
      v93 = v26;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "couldn't fetch CKMirror counts for %@: %@", buf, 0x16u);
    }

    else
    {
      v27 = [v4 zoneName];
      v28 = sub_100019104(@"metrics", v27);

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v91 = v25;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "View has %@ item ckrecords", buf, 0xCu);
      }

      v29 = [CKKSAnalytics fuzzyNumber:v25];
      v30 = [NSString stringWithFormat:@"%@-%@", *(a1 + 40), @"numItems"];
      [v3 setObject:v29 forKeyedSubscript:v30];
    }

    goto LABEL_12;
  }

LABEL_44:

LABEL_45:

  return v3;
}

void sub_10015E7C8(uint64_t a1)
{
  v4 = +[OTManager manager];
  v2 = objc_alloc_init(OTControlArguments);
  v3 = [v4 waitForReady:v2 wait:2000000000];

  if ((v3 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10015EF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10015EF98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = +[CKKSAnalytics logger];
  [v9 logResultForEvent:@"OctagonEventFetchViews" hardFailure:1 result:v7];

  if (v7)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon: failed to retrieve policy+views: %@", buf, 0xCu);
    }

    [WeakRetained setError:v7];
  }

  else
  {
    v11 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 viewList];
      *buf = 138412546;
      v25 = v6;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received syncing policy %@ with view list: %@", buf, 0x16u);
    }

    v13 = [WeakRetained deps];
    v14 = [v13 stateHolder];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10015F298;
    v22[3] = &unk_100344BD8;
    v15 = v6;
    v23 = v15;
    v21 = 0;
    [v14 persistAccountChanges:v22 error:&v21];
    v16 = v21;

    if (v16)
    {
      v17 = sub_100006274("SecError");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "octagon: failed to save policy+views: %@", buf, 0xCu);
      }

      [WeakRetained setError:v16];
    }

    else
    {
      v18 = [WeakRetained deps];
      v19 = [v18 ckks];
      [v19 setCurrentSyncingPolicy:v15];

      v20 = [WeakRetained intendedState];
      [WeakRetained setNextState:v20];
    }
  }
}

id sub_10015F298(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTPSyncingPolicy:*(a1 + 32)];

  return v3;
}

void sub_100161C58(uint64_t a1)
{
  v2 = [_SFAuthenticatedEncryptionOperation alloc];
  v5 = [*(a1 + 32) keySpecifier];
  v3 = [v2 initWithKeySpecifier:v5];
  v4 = qword_10039DF80;
  qword_10039DF80 = v3;
}

void sub_100161CD0(uint64_t a1)
{
  v2 = [_SFAuthenticatedEncryptionOperation alloc];
  v5 = [*(a1 + 32) keySpecifier];
  v3 = [v2 initWithKeySpecifier:v5];
  v4 = qword_10039DF70;
  qword_10039DF70 = v3;
}

void sub_100161D48(id a1)
{
  qword_10039DF60 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];

  _objc_release_x1();
}

void sub_100162244(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100162274(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162394;
  block[3] = &unk_100346018;
  block[4] = WeakRetained;
  dispatch_sync(v2, block);
}

void sub_100162308(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained timer];

    WeakRetained = v4;
    if (v2)
    {
      v3 = +[CKKSAnalytics logger];
      [v3 noteEvent:@"CKKSEventReachabilityTimerExpired"];

      [v4 _onQueueRunReachabilityDependency];
      WeakRetained = v4;
    }
  }
}

void sub_100162394(uint64_t a1)
{
  v2 = [*(a1 + 32) haveNetwork];
  v3 = sub_100019104(@"network", 0);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Network available", &v5, 2u);
    }
  }

  else
  {
    if (v4)
    {
      v5 = 134217984;
      v6 = 0x4028000000000000;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Network still not available, retrying after waiting %2.1f hours", &v5, 0xCu);
    }

    [*(a1 + 32) _onQueueResetReachabilityDependency];
  }
}

void sub_100162648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100162660(uint64_t a1)
{
  result = [*(a1 + 32) haveNetwork];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1001628C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

const void *sub_100162A74(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return v1;
}

uint64_t sub_100162B04(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

__CFString *sub_100162B38(void **a1)
{
  v2 = sub_100017B30();

  return sub_10001EECC(a1, v2);
}

void sub_100162B74(const void *a1, CFStringRef *a2, __CFString *a3)
{
  if (!CFEqual(@"data", *a2) && !CFEqual(@"v_pk", *a2))
  {
    v6 = sub_100015BFC(a1, a2, 0);
    if (v6)
    {
      v7 = v6;
      if (v6 != kCFNull)
      {
        CFStringAppend(a3, @",");
        CFStringAppend(a3, *a2);
        CFStringAppend(a3, @"=");
        if (CFEqual(@"data", *a2))
        {
          BytePtr = CFDataGetBytePtr(v7);
          Length = CFDataGetLength(v7);
          if ((Length & 0x8000000000000000) == 0)
          {
            v10 = Length;
            CFStringAppendFormat(a3, 0, @"%04lx:", Length);
            if (v10 > 8)
            {
              CNCRC();
              for (i = 0; i != 8; ++i)
              {
                CFStringAppendFormat(a3, 0, @"%02X", BytePtr[i]);
              }

              CFStringAppendFormat(a3, 0, @"...|%08llx", 0);
            }

            else
            {
              for (; v10; --v10)
              {
                v11 = *BytePtr++;
                CFStringAppendFormat(a3, 0, @"%02X", v11);
              }
            }
          }
        }

        else if (CFEqual(@"v_Data", *a2))
        {

          CFStringAppend(a3, @"<?>");
        }

        else
        {
          v13 = CFGetTypeID(v7);
          if (v13 == CFDataGetTypeID())
          {

            sub_100162DA8(a3, v7);
          }

          else
          {
            CFStringAppendFormat(a3, 0, @"%@", v7);
          }
        }
      }
    }
  }
}

void sub_100162DA8(__CFString *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length >= 1)
  {
    v6 = Length;
    do
    {
      v7 = *BytePtr++;
      CFStringAppendFormat(a1, 0, @"%02X", v7);
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_100162E24(void **a1)
{
  v2 = sub_100016514(a1[2], 7, 0);
  v3 = sub_100015BFC(a1, v2, 0);
  return *CFDataGetBytePtr(v3);
}

uint64_t sub_100162E6C(void **a1, void **a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = sub_100016514(a1[2], 7, 0);
    v3 = sub_100015BFC(v3, v4, 0);
  }

  if (a2)
  {
    v5 = sub_100016514(a2[2], 7, 0);
    v6 = sub_100015BFC(a2, v5, 0);
  }

  else
  {
    v6 = 0;
  }

  return CFEqual(v3, v6);
}

BOOL sub_100162EFC(uint64_t a1, int a2, __CFString **a3)
{
  v5 = sub_100016898(a1, 1, a3);
  if (v5 && *(a1 + 28) != a2)
  {
    *(a1 + 28) = a2;
    *(a1 + 32) = 0;
    if (*(a1 + 40) == 2)
    {
      v6 = sub_100016514(*(a1 + 16), 9, 0);
      sub_1000154A0(a1, v6, kCFNull, 0);
    }
  }

  return v5;
}

void sub_100162F88(uint64_t a1, const void *a2, uint64_t *a3)
{
  cf = 0;
  v5 = sub_100015BFC(a2, a3, &cf);
  if (cf)
  {
    v6 = sub_100006274("secitem");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    v7 = *a3;
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = cf;
    v8 = "Merging: unable to get attribute (%@) : %@";
    goto LABEL_4;
  }

  v10 = v5;
  if (v5 && (!kCFNull || !CFEqual(v5, kCFNull)))
  {
    v11 = sub_100006274("secitem");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = *a3;
      *buf = 138412290;
      v16 = v13;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Preserving existing data for %@", buf, 0xCu);
    }

    sub_1000154A0(a1, a3, v10, &cf);
    if (cf)
    {
      v6 = sub_100006274("secitem");
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_5:
        v9 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v9);
        }

        return;
      }

      v12 = *a3;
      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = cf;
      v8 = "Unable to set attribute (%@) : %@";
LABEL_4:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
      goto LABEL_5;
    }
  }
}

CFNumberRef sub_100163168(const __CFAllocator *a1, sqlite3_stmt *a2, int iCol)
{
  v4 = sqlite3_column_int64(a2, iCol);
  valuePtr = v4;
  if (v4 == v4)
  {
    v9 = v4;
    p_valuePtr = &v9;
    v6 = a1;
    v7 = kCFNumberSInt32Type;
  }

  else
  {
    p_valuePtr = &valuePtr;
    v6 = a1;
    v7 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(v6, v7, p_valuePtr);
}

CFStringRef sub_1001631CC(const __CFAllocator *a1, sqlite3_stmt *a2, int iCol, __int16 a4)
{
  v6 = sqlite3_column_text(a2, iCol);
  if (v6 && (v7 = v6, (v8 = strlen(v6)) != 0))
  {

    return CFStringCreateWithBytes(a1, v7, v8, 0x8000100u, 0);
  }

  else if ((a4 & 0x800) != 0)
  {
    return &stru_100348050;
  }

  else if ((a4 & 0x400) != 0)
  {
    return @"0";
  }

  else
  {
    return kCFNull;
  }
}

const void *sub_100163278(const __CFAllocator *a1, void *a2, const __CFData *a3, int a4, uint64_t a5, __CFString **a6)
{
  v9 = sub_1000160F4(a1, a2, a4, a5);
  v10 = sub_100016514(a2, 9, a6);
  if (v10 && (sub_1000154A0(v9, v10, a3, a6) & 1) == 0 && v9)
  {
    CFRelease(v9);
    return 0;
  }

  return v9;
}

const void *sub_1001632F8(uint64_t a1, const __CFDictionary *a2, __CFString **a3)
{
  v6 = CFGetAllocator(a1);
  v7 = sub_1000160F4(v6, *(a1 + 16), *(a1 + 28), *(a1 + 32));
  sub_10001A9E8(v7, *(a1 + 56));
  v8 = *(a1 + 16);
  v9 = *(v8 + 16);
  if (!v9)
  {
    return v7;
  }

  for (i = (v8 + 24); ; ++i)
  {
    v11 = *(v9 + 8);
    v12 = v11 > 0xA;
    v13 = (1 << v11) & 0x6C0;
    if (!v12 && v13 != 0)
    {
      goto LABEL_7;
    }

    value = 0;
    if (CFDictionaryGetValueIfPresent(a2, *v9, &value))
    {
      break;
    }

    v16 = sub_100015BFC(a1, v9, a3);
    value = v16;
    if (!v16)
    {
      goto LABEL_15;
    }

LABEL_14:
    if ((sub_1000154A0(v7, v9, v16, a3) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_7:
    v15 = *i;
    v9 = v15;
    if (!v15)
    {
      return v7;
    }
  }

  v16 = value;
  if (value)
  {
    goto LABEL_14;
  }

  sub_1000103CC(-50, a3, @"NULL value in dictionary");
  v16 = value;
  if (value)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v7)
  {
    CFRelease(v7);
  }

  return 0;
}

void sub_10016342C(CFMutableStringRef theString, uint64_t a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = a2 + 1;
    do
    {
      if (v3)
      {
        CFStringAppend(theString, @",");
      }

      CFStringAppend(theString, @"?");
      --v4;
      v3 = 1;
    }

    while (v4 > 1);
  }

  CFStringAppend(theString, @""));
}

const void *sub_1001634BC(void **a1, __CFString **a2)
{
  v4 = sub_100016514(a1[2], 16, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = sub_100015BFC(a1, v4, a2);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFDataGetTypeID())
    {
      sub_10001D9F0(1, a2, @"persistent ref %@ is not a data", v6);
    }
  }

  else
  {
    sub_10001D9F0(1, a2, @"persistent ref %@ is not a data", 0);
  }

  return v6;
}

uint64_t sub_100163560(void **a1, __CFString **a2)
{
  valuePtr = 0;
  v4 = sub_100016514(a1[2], 8, a2);
  if (v4)
  {
    v5 = sub_100015BFC(a1, v4, a2);
    v6 = v5;
    if (!v5 || (v7 = CFGetTypeID(v5), v7 != CFNumberGetTypeID()) || !CFNumberGetValue(v6, kCFNumberSInt64Type, &valuePtr))
    {
      sub_10001D9F0(1, a2, @"rowid %@ is not a 64 bit number", v6);
    }
  }

  return valuePtr;
}

void sub_10016360C(uint64_t a1, __CFString **a2)
{
  v3 = sub_100016514(*(a1 + 16), 8, a2);
  if (v3)
  {
    v4 = *v3;
    v5 = *(a1 + 48);

    CFDictionaryRemoveValue(v5, v4);
  }
}

uint64_t sub_100163668(uint64_t a1, __CFString **a2)
{
  v4 = sub_100016514(*(a1 + 16), 11, a2);

  return sub_1000154A0(a1, v4, kCFBooleanTrue, a2);
}

BOOL sub_1001636C4(const void *a1)
{
  v1 = sub_100015BFC(a1, &off_100342650, 0);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  if (qword_10039DFD8 != -1)
  {
    dispatch_once(&qword_10039DFD8, &stru_100338EF0);
  }

  return qword_10039DFE0 && CFEqual(v2, qword_10039DFE0) != 0;
}

const void *sub_10016374C(void **a1, __CFString **a2)
{
  v4 = sub_100016514(a1[2], 7, a2);

  return sub_100015BFC(a1, v4, a2);
}

__CFError *sub_10016379C(__CFError *result)
{
  if (result)
  {
    v1 = result;
    if (CFErrorGetCode(result) == 19)
    {
      Domain = CFErrorGetDomain(v1);
      return (CFEqual(@"com.apple.utilities.sqlite3", Domain) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001637F8(uint64_t a1, const __CFNull *a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = v5 + 1;
  result = sub_10001E010(v3, *(a1 + 56), v5, *(a1 + 64), a2, *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void *sub_10016386C(void **a1, const void *a2, __CFString **a3)
{
  result = sub_100016514(a1[2], 6, a3);
  if (result)
  {

    return sub_100163A4C(a1, a2, result, a3);
  }

  return result;
}

__CFData *sub_1001638DC(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(v5 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    LODWORD(v10) = 0;
    v11 = (v8 + 24);
    while (1)
    {
      if ((v9[16] & 2) != 0)
      {
        v12 = sub_100017508(v5, v9, v6);
        if (!v12)
        {
          goto LABEL_10;
        }

        v10 = (v10 + 1);
        v13 = sub_10000CBCC(a2, v10, v12, v6);
        CFRelease(v12);
        if (!v13)
        {
          break;
        }
      }

      v14 = *v11++;
      v9 = v14;
      if (!v14)
      {
        goto LABEL_9;
      }
    }

    LOBYTE(v12) = 0;
  }

  else
  {
    LODWORD(v10) = 0;
LABEL_9:
    LOBYTE(v12) = 1;
  }

LABEL_10:
  v15 = *(v4 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 24);
    do
    {
      if ((*(v7 + 16))(v7, v16))
      {
        result = sub_100017508(v4, v16, v6);
        if (!result)
        {
          goto LABEL_20;
        }

        v19 = result;
        v10 = (v10 + 1);
        v20 = v12 & sub_10000CBCC(a2, v10, result, v6);
        CFRelease(v19);
        if ((v20 & 1) == 0)
        {
          goto LABEL_19;
        }

        LOBYTE(v12) = 1;
      }

      v21 = *v17++;
      v16 = v21;
    }

    while (v21);
  }

  if (v12)
  {
    result = sub_100015DAC(*(a1 + 72), a2, *(a1 + 64), 0);
  }

  else
  {
LABEL_19:
    result = 0;
  }

LABEL_20:
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100163A4C(const void *a1, const void *a2, void *a3, __CFString **a4)
{
  result = sub_100015BFC(a2, a3, a4);
  if (result)
  {
    v8 = result;
    result = sub_100015BFC(a1, a3, a4);
    if (result)
    {
      result = CFDateCompare(result, v8, 0);
      if (result != 1)
      {
        AbsoluteTime = CFDateGetAbsoluteTime(v8);
        v10 = CFDateCreate(kCFAllocatorDefault, AbsoluteTime + 0.001);
        if (v10)
        {
          v11 = v10;
          v12 = sub_1000154A0(a1, a3, v10, a4);
          CFRelease(v11);
          return v12;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100163B20(uint64_t a1, uint64_t a2, char a3, char a4, __CFString **a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10001E9B0;
  v6[3] = &unk_100338910;
  v6[4] = a1;
  v7 = a3;
  v8 = a4;
  return sub_10001AA4C(a1, a2, a5, v6);
}

void sub_100163BA8(uint64_t a1, __CFString *a2)
{
  v8 = 0;
  *(*(*(a1 + 32) + 8) + 24) = sub_10001E0A4(a2, &v8, *(a1 + 48));
  if (*(*(*(a1 + 32) + 8) + 24) != 1 || (v8 & 1) != 0)
  {
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      return;
    }
  }

  else
  {
    if (!sub_10001A700(a2))
    {
      return;
    }

    *(*(*(a1 + 32) + 8) + 24) = sub_10016386C(*(a1 + 56), a2, *(a1 + 48));
    if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
    {
      return;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = sub_1000171B0(*(a1 + 64), *(a1 + 72), *(a1 + 48), &stru_100338A38);
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = sub_10001C528(a2, *(a1 + 56), *(a1 + 72), *(a1 + 48), &stru_100338A78);
    v4 = *(*(a1 + 32) + 8);
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = v5;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24);
  if (v7)
  {
    *(v6 + 24) = 0;

    CFRelease(v7);
  }
}

const void *sub_100163CE0(uint64_t a1, const __CFData *a2, int a3, __CFString **a4)
{
  v8 = CFGetAllocator(a1);
  v9 = sub_1000160F4(v8, *(a1 + 16), *(a1 + 28), *(a1 + 32));
  v10 = *(a1 + 16);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return v9;
  }

  for (i = (v10 + 24); ; ++i)
  {
    v13 = *(v11 + 8);
    if (v13 == 12)
    {
      v14 = v9;
      v15 = v11;
      v16 = kCFBooleanTrue;
LABEL_13:
      if ((sub_1000154A0(v14, v15, v16, a4) & 1) == 0)
      {
        break;
      }

      goto LABEL_14;
    }

    v17 = *(v11 + 16);
    if ((v17 & 1) != 0 || (v13 <= 0xE ? (v18 = ((1 << v13) & 0x4120) == 0) : (v18 = 1), !v18 || (v17 & 0x2000) != 0))
    {
      v19 = sub_100015BFC(a1, v11, a4);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      if (CFEqual(kCFNull, v19))
      {
        goto LABEL_14;
      }

      v14 = v9;
      v15 = v11;
      v16 = v20;
      goto LABEL_13;
    }

    if (v13 != 6)
    {
      if (a2 && v13 == 13)
      {
        sub_1000154A0(v9, v11, a2, a4);
      }

      goto LABEL_14;
    }

    if (a3)
    {
      sub_100162F88(v9, a1, v11);
    }

    if ((sub_100163A4C(v9, a1, v11, a4) & 1) == 0)
    {
      break;
    }

LABEL_14:
    v21 = *i;
    v11 = v21;
    if (!v21)
    {
      return v9;
    }
  }

  if (v9)
  {
    CFRelease(v9);
    return 0;
  }

  return v9;
}

void sub_100164550(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 name];
  v6 = sub_100006610([NSString stringWithFormat:@"%@-%@", v5, @"state-rpc"]);

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) result];
    v9 = [v8 error];
    v10 = v9;
    v11 = @"no error";
    if (v9)
    {
      v11 = v9;
    }

    *buf = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Returning '%@' result: %@", buf, 0x16u);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = [*(a1 + 48) result];
    v14 = [v13 error];
    (*(v12 + 16))(v12, v14);
  }

  v15 = [*(a1 + 48) result];
  v16 = [v15 error];
  [v4 setError:v16];
}

void sub_100164AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100164B30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained name];
  v4 = sub_100006610([NSString stringWithFormat:@"%@-%@", v3, @"state-rpc"]);

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) error];
    v7 = v6;
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning '%@' result: %@", buf, 0x16u);
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) error];
  (*(v9 + 16))(v9, v10);
}

void sub_100164E1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained currentState];
  v4 = [WeakRetained timeoutErrorForState:v3];
  [v2 onqueueHandleStartTimeout:v4];
}

void sub_10016502C(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachineWatchers];
  [v2 addObject:*(a1 + 40)];

  [*(a1 + 32) _onqueuePokeStateMachine];
  if ((*(a1 + 48) + 1) >= 2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = dispatch_time(0, *(a1 + 48));
    v4 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100165158;
    block[3] = &unk_100344D38;
    objc_copyWeak(&v7, &location);
    v6 = *(a1 + 40);
    dispatch_after(v3, v4, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void sub_100165158(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained currentState];
  v4 = [WeakRetained timeoutErrorForState:v3];
  [v2 onqueueHandleStartTimeout:v4];
}

void sub_10016529C(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachineRequests];
  [v2 addObject:*(a1 + 40)];

  [*(a1 + 32) _onqueuePokeStateMachine];
  if ((*(a1 + 48) + 1) >= 2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = dispatch_time(0, *(a1 + 48));
    v4 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001653C8;
    block[3] = &unk_100344D38;
    objc_copyWeak(&v7, &location);
    v6 = *(a1 + 40);
    dispatch_after(v3, v4, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void sub_1001653C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained currentState];
  v4 = [WeakRetained timeoutErrorForState:v3];
  [v2 onqueueHandleStartTimeout:v4];
}

id sub_1001655E4(uint64_t a1)
{
  v2 = [*(a1 + 32) holdStateMachineOperation];

  if (v2)
  {
    v3 = [*(a1 + 32) operationQueue];
    v4 = [*(a1 + 32) holdStateMachineOperation];
    [v3 addOperation:v4];

    [*(a1 + 32) setHoldStateMachineOperation:0];
  }

  [*(a1 + 32) setHalted:1];
  [*(a1 + 32) setAllowPendingFlags:0];
  v5 = *(a1 + 32);

  return [v5 _onqueuePokeStateMachine];
}

void sub_100165718(uint64_t a1)
{
  v2 = [*(a1 + 32) holdStateMachineOperation];

  if (v2)
  {
    v3 = [*(a1 + 32) operationQueue];
    v4 = [*(a1 + 32) holdStateMachineOperation];
    [v3 addOperation:v4];

    v5 = *(a1 + 32);

    [v5 setHoldStateMachineOperation:0];
  }
}

void sub_100165874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10016588C(uint64_t a1)
{
  v2 = [*(a1 + 32) nextStateMachineCycleOperation];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;
}

id sub_100165990(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = sub_100006610([NSString stringWithFormat:@"%@-%@", v2, @"test"]);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing state machine test pause from %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) testHoldStates];
  [v5 removeObject:*(a1 + 40)];

  return [*(a1 + 32) _onqueuePokeStateMachine];
}

void sub_100165B54(uint64_t a1)
{
  v2 = [*(a1 + 32) testHoldStates];
  [v2 addObject:*(a1 + 40)];
}

void sub_100166704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100166768(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100166978;
    block[3] = &unk_100346018;
    block[4] = v2;
    dispatch_sync(v3, block);
  }
}

void sub_100166804(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001668A0;
    block[3] = &unk_100346018;
    block[4] = v2;
    dispatch_sync(v3, block);
  }
}

id sub_1001668A0(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = sub_100006610([NSString stringWithFormat:@"%@-%@", v2, @"pending-flag"]);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Network is reachable", buf, 2u);
  }

  [*(a1 + 32) setConditionChecksInFlight:{objc_msgSend(*(a1 + 32), "conditionChecksInFlight") & 0xFFFFFFFFFFFFFFFDLL}];
  [*(a1 + 32) _onqueueRecheckConditions];
  return [*(a1 + 32) _onqueueSendAnyPendingFlags];
}

id sub_100166978(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = sub_100006610([NSString stringWithFormat:@"%@-%@", v2, @"pending-flag"]);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unlock occurred", buf, 2u);
  }

  [*(a1 + 32) setConditionChecksInFlight:{objc_msgSend(*(a1 + 32), "conditionChecksInFlight") & 0xFFFFFFFFFFFFFFFELL}];
  [*(a1 + 32) _onqueueRecheckConditions];
  return [*(a1 + 32) _onqueueSendAnyPendingFlags];
}

void sub_100166BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100166BD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100166BE8(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) pendingFlags];
  v3 = [v2 allKeys];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 32) pendingFlags];
        v10 = [v9 objectForKeyedSubscript:v8];
        v11 = [v10 description];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v11 forKeyedSubscript:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_100166F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100166F84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167018;
  block[3] = &unk_100346018;
  block[4] = WeakRetained;
  dispatch_sync(v2, block);
}

id sub_100167018(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = sub_100006610([NSString stringWithFormat:@"%@-%@", v2, @"pending-flag"]);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished waiting for operation", buf, 2u);
  }

  return [*(a1 + 32) _onqueueSendAnyPendingFlags];
}

void sub_1001675AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001675CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100167684;
  v4[3] = &unk_100343E38;
  v4[4] = WeakRetained;
  v5 = *(a1 + 32);
  dispatch_sync(v3, v4);
}

id sub_100167684(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = sub_100006610([NSString stringWithFormat:@"%@-%@", v2, @"state"]);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) nextState];
    v5 = [*(a1 + 40) intendedState];
    v6 = [*(a1 + 32) currentFlags];
    v7 = [v6 contentsAsString];
    v8 = [*(a1 + 32) pendingFlagsString];
    v9 = *(a1 + 40);
    v10 = [v9 error];
    v11 = v10;
    *buf = 138413570;
    v12 = @"(no error)";
    v36 = v4;
    if (v10)
    {
      v12 = v10;
    }

    v37 = 2112;
    v38 = v5;
    v39 = 2112;
    v40 = v7;
    v41 = 2112;
    v42 = v8;
    v43 = 2112;
    v44 = v9;
    v45 = 2112;
    v46 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finishing state transition attempt (ending in %@, intended: %@, f:[%@], p:[%@]): %@ %@", buf, 0x3Eu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = [*(a1 + 32) stateMachineWatchers];
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [*(a1 + 32) name];
        v20 = sub_100006610([NSString stringWithFormat:@"%@-%@", v19, @"state"]);

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v18;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "notifying watcher: %@", buf, 0xCu);
        }

        [v18 onqueueHandleTransition:*(a1 + 40)];
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v21 = [*(a1 + 32) stateMachineWatchers];
  v22 = [v21 count];

  if ((v22 - 1) >= 0)
  {
    do
    {
      --v22;
      v23 = [*(a1 + 32) stateMachineWatchers];
      v24 = [v23 objectAtIndexedSubscript:v22];
      v25 = [v24 result];
      v26 = [v25 isFinished];

      if (v26)
      {
        v27 = [*(a1 + 32) stateMachineWatchers];
        [v27 removeObjectAtIndex:v22];
      }
    }

    while (v22 > 0);
  }

  v28 = [*(a1 + 40) nextState];
  [*(a1 + 32) setCurrentState:v28];

  [*(a1 + 32) setNextStateMachineCycleOperation:0];
  return [*(a1 + 32) _onqueueStartNextStateMachineOperation:1];
}

void sub_10016852C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100168544(uint64_t a1)
{
  v5 = [*(a1 + 32) mutableStateConditions];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100168AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100168B04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100168BAC;
  block[3] = &unk_100346018;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_sync(v2, block);
}

BOOL sub_100168BB8(uint64_t a1, uint64_t a2, const __CFData *a3, __CFData *a4, const __CFDictionary *a5, __CFData **a6, int a7, char a8, CFTypeRef *a9)
{
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  bytes[0] = v15;
  bytes[1] = v15;
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, 168);
  Constraints = SecAccessControlGetConstraints();
  v21 = Constraints;
  if (Constraints)
  {
    v22 = 6;
  }

  else
  {
    v22 = 3;
  }

  if (!Constraints)
  {
    v76 = v22;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a4);
    v24 = MutableCopy;
    if (a5)
    {
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_10016937C;
      context[3] = &unk_1003469D0;
      context[4] = MutableCopy;
      CFDictionaryApplyFunction(a5, sub_100169384, context);
    }

    if (v24)
    {
      CFDictionaryRemoveValue(v24, kSecAttrAccessControl);
      a4 = sub_10001B910(v24, a9, v25, v26, v27);
      CFRelease(v24);
      if (a4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      a4 = 0;
    }

LABEL_17:
    v30 = 1;
LABEL_18:
    v32 = sub_1000103CC(-50, a9, @"ks_encrypt_data: invalid plain text");
    goto LABEL_19;
  }

  if (!a4)
  {
    goto LABEL_17;
  }

  v76 = v22;
  a4 = sub_10001B910(a4, a9, v18, v19, v20);
  if (!a4)
  {
    goto LABEL_17;
  }

LABEL_12:
  v75 = a7;
  v28 = CFGetTypeID(a4);
  TypeID = CFDataGetTypeID();
  v30 = 0;
  if (!a2 || v28 != TypeID)
  {
    goto LABEL_18;
  }

  Length = CFDataGetLength(a4);
  v81 = 16;
  v80 = 0;
  if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes))
  {
    v32 = sub_1000103CC(-108, a9, @"ks_encrypt_data: SecRandomCopyBytes failed");
    v30 = 0;
LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  Protection = SecAccessControlGetProtection();
  v37 = sub_10001BD38(Protection, a9);
  if (!v37)
  {
    v30 = 0;
    v33 = 0;
LABEL_73:
    v32 = 1;
    goto LABEL_20;
  }

  if (v21)
  {
    v73 = v37;
    v38 = SecAccessControlGetConstraints();
    v39 = CFDictionaryCreateMutableCopy(0, 0, a5);
    CFDictionarySetValue(v39, @"acl", v38);
    v33 = sub_10001B910(v39, 0, v40, v41, v42);
    if (v39)
    {
      CFRelease(v39);
    }

    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v43 = SecAccessControlCopyData();
    v84 = 0;
    if (a3 && (SecAccessControlIsBound() & 1) != 0)
    {
      CFDataGetBytePtr(v33);
      CFDataGetLength(v33);
      CFDataGetBytePtr(a3);
      CFDataGetLength(a3);
      aks_operation_optional_params();
      v44 = aks_ref_key_create();
      if (v44)
      {
        v69 = a1;
        v70 = v73;
      }

      else
      {
        v44 = aks_ref_key_encrypt();
        if (!v44)
        {
          v83 = 0xAAAAAAAAAAAAAAAALL;
          blob = aks_ref_key_get_blob();
          if (blob)
          {
            if (sub_1001931A8(v87, v85, blob, v83, Mutable))
            {
              v46 = 1;
LABEL_45:
              if (v84)
              {
                aks_ref_key_free();
              }

              if (v88)
              {
                free(v88);
              }

              if (v87)
              {
                free(v87);
              }

              if (v43)
              {
                CFRelease(v43);
              }

              if (v46)
              {
                __n = CFDataGetLength(Mutable);
                v47 = SecAccessControlGetProtection();
                v51 = sub_10000E384(v47, 0, v48, v49, v50);
                v52 = CFDataCreateMutable(0, 0);
                CFDataSetLength(v52, v51);
                MutableBytePtr = CFDataGetMutableBytePtr(v52);
                v54 = CFDataGetMutableBytePtr(v52);
                if (sub_10000E614(v47, 0, 0, MutableBytePtr, &v54[v51]))
                {
                  theDataa = Length;
                  if (v52)
                  {
                    v74 = v52;
                    v55 = CFDataGetLength(v52);
                    v56 = v55 + 28;
                    v57 = __n;
                    goto LABEL_59;
                  }
                }

                else
                {
                  CFRelease(v52);
                }

                v30 = 0;
                goto LABEL_73;
              }

              v30 = 0;
LABEL_82:
              v32 = 0;
LABEL_20:
              memset_s(bytes, 0x20uLL, 0, 0x20uLL);
              v34 = 0;
              if (!Mutable)
              {
                goto LABEL_22;
              }

              goto LABEL_21;
            }

            sub_1000103CC(-26275, a9, @"ks_crypt_acl: %x failed to '%s' item (class %d, bag: %d) Item can't be encrypted due to merge failed, so drop the item.", 0, "encrypt", v73, a1);
          }

          else
          {
            sub_1000103CC(-26275, a9, @"ks_crypt_acl: %x failed to '%s' item (class %d, bag: %d) Item can't be encrypted due to invalid key data, so drop the item.", 0, "encrypt", v73, a1);
          }

LABEL_44:
          v46 = 0;
          goto LABEL_45;
        }

        v69 = a1;
        v70 = v73;
      }

      sub_100193860(v44, @"oe", v69, v70, v43, a3, a9);
      goto LABEL_44;
    }

    SecAccessControlIsBound();
    sub_1001935E8(a9, v43);
    goto LABEL_44;
  }

  theDataa = Length;
  if (!sub_10000D43C(@"oe", a1, 0, v37, 0x20u, bytes, &v80, Mutable, a8, a9))
  {
    v30 = 0;
    v33 = 0;
    goto LABEL_82;
  }

  v57 = CFDataGetLength(Mutable);
  v33 = 0;
  v55 = 0;
  v74 = 0;
  v56 = 28;
LABEL_59:
  v58 = theDataa + v57;
  v59 = CFDataCreateMutable(0, &v58[v56]);
  v34 = v59;
  if (!v59)
  {
    goto LABEL_70;
  }

  CFDataSetLength(v59, &v58[v56]);
  v60 = CFDataGetMutableBytePtr(v34);
  v61 = v76 | 0x80000000;
  if (!v75)
  {
    v61 = v76;
  }

  *v60 = v61;
  if (v21)
  {
    *(v60 + 1) = v55;
    v62 = v60 + 8;
    v90.length = v55;
    v90.location = 0;
    CFDataGetBytes(v74, v90, v60 + 8);
    v63 = &v62[v55];
  }

  else
  {
    *(v60 + 1) = v80;
    v63 = v60 + 8;
  }

  *v63 = v57;
  v64 = (v63 + 4);
  if (v75)
  {
    CFDataGetMutableBytePtr(v34);
  }

  BytePtr = CFDataGetBytePtr(Mutable);
  memcpy(v64, BytePtr, v57);
  v66 = &v64[v57];
  v71 = theDataa + v66;
  CFDataGetBytePtr(a4);
  v67 = CCCryptorGCM();
  if (!v67)
  {
    if (v81 != 16)
    {
      v68 = sub_1000103CC(-26276, a9, @"ks_encrypt_data: CCCryptorGCM expected: 16 got: %ld byte tag", v81, theDataa, v66, v71, &v81);
      goto LABEL_75;
    }

LABEL_70:
    v32 = 1;
    goto LABEL_76;
  }

  v68 = sub_1000103CC(-26276, a9, @"ks_encrypt_data: CCCryptorGCM failed: %d", v67, theDataa, v66, v71, &v81);
LABEL_75:
  v32 = v68;
LABEL_76:
  memset_s(bytes, 0x20uLL, 0, 0x20uLL);
  if (v74)
  {
    CFRelease(v74);
  }

  v30 = 0;
  if (Mutable)
  {
LABEL_21:
    CFRelease(Mutable);
  }

LABEL_22:
  if ((v30 & 1) == 0)
  {
    CFRelease(a4);
  }

  if (v32)
  {
    *a6 = v34;
  }

  else if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v32;
}

void sub_1001693A8(id a1)
{
  v1 = sub_100088500("non-device keybag", 2);
  v2 = qword_10039DFC0;
  qword_10039DFC0 = v1;

  v3 = qword_10039DFC0;
  context = dispatch_get_context(qword_10039DFC0);
  context[2] = _Block_copy(&stru_100338D78);

  dispatch_activate(v3);
}

void sub_100169418(id a1)
{
  v1 = sub_100006274("SecWarning");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "ks_encrypt_data: called with non-device keybag - call should be rerouted to ks_encrypt_data_legacy", v2, 2u);
  }
}

__CFData *sub_100169488(const __CFString *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000E384(a1, a2, a3, a4, a5);
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  CFDataSetLength(Mutable, v7);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v10 = CFDataGetMutableBytePtr(Mutable);
  if (!sub_10000E614(a1, a2, 0, MutableBytePtr, &v10[v7]))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t sub_100169524(uint64_t a1, uint64_t a2, const UInt8 *a3, CFIndex a4, uint64_t a5, unsigned int a6, __CFDictionary **a7, void *a8, CFTypeRef *a9, __CFString **a10)
{
  v39 = 0;
  v40 = 0;
  v37 = 0;
  theData = 0;
  sub_1000068E0(0, &v40, 0, a3, &a3[a4]);
  v16 = v40;
  if (!v40)
  {
    v17 = 0;
    MutableCopy = 0;
    sub_1000103CC(-26275, a10, @"kc_attribs_key_encrypted_data_from_blob: failed to decode 'blob data'");
    goto LABEL_52;
  }

  if (sub_10019352C(v40, &v37, &theData))
  {
    v17 = v37;
  }

  else
  {
    v17 = CFDataCreate(kCFAllocatorDefault, a3, a4);
    v37 = v17;
    theData = CFRetain(v17);
  }

  if (!v17)
  {
    MutableCopy = 0;
    sub_1000103CC(-26275, a10, @"kc_attribs_key_encrypted_data_from_blob: failed to decode 'encrypted data'");
    goto LABEL_52;
  }

  v18 = theData;
  if (!theData)
  {
    MutableCopy = 0;
    sub_1000103CC(-26275, a10, @"kc_attribs_key_encrypted_data_from_blob: failed to decode 'key data'");
    goto LABEL_52;
  }

  v36 = 0;
  CFDataGetBytePtr(theData);
  CFDataGetLength(v18);
  v19 = aks_ref_key_create_with_blob();
  if (v19)
  {
    if (v19 == -536870206)
    {
      sub_1000103CC(-26275, a10, @"aks_ref_key: failed to create ref key with blob because bad data (bag: %d)", a1);
    }

    else
    {
      sub_1000103CC(-26275, a10, @"aks_ref_key: failed to create ref key with blob: %x (bag: %d)", v19, a1);
    }

    goto LABEL_24;
  }

  v33 = a8;
  external_data = aks_ref_key_get_external_data();
  if (!external_data)
  {
LABEL_24:
    v29 = 0;
    MutableCopy = 0;
    goto LABEL_25;
  }

  theDict = 0;
  sub_1000068E0(0, &theDict, 0, external_data, external_data + v36);
  v21 = theDict;
  if (!theDict)
  {
    MutableCopy = 0;
    sub_1000103CC(-26275, a10, @"kc_attribs_key_encrypted_data_from_blob: failed to decode 'encrypted data dictionary'");
    goto LABEL_52;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  v23 = *(a2 + 16);
  if (v23)
  {
    v24 = (a2 + 24);
    do
    {
      if ((*(v23 + 17) & 0x20) != 0)
      {
        CFDictionaryRemoveValue(MutableCopy, *v23);
        Value = CFDictionaryGetValue(v21, *v23);
        if (Value)
        {
          v26 = Value;
          Mutable = *a7;
          if (!*a7)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            *a7 = Mutable;
          }

          CFDictionaryAddValue(Mutable, *v23, v26);
        }
      }

      v28 = *v24++;
      v23 = v28;
    }

    while (v28);
  }

  CFRelease(v21);
  if (MutableCopy)
  {
    if (a6 == 4)
    {
      SecAccessControlSetConstraints();
LABEL_39:
      if (!SecAccessControlGetConstraint())
      {
        SecAccessControlAddConstraintForOperation();
      }

      goto LABEL_41;
    }

    v31 = CFDictionaryGetValue(MutableCopy, @"acl");
    if (v31)
    {
      v32 = CFGetTypeID(v31);
      if (v32 == CFDictionaryGetTypeID())
      {
        SecAccessControlSetConstraints();
        if (a6 > 5)
        {
          goto LABEL_41;
        }

        goto LABEL_39;
      }
    }

    sub_1000103CC(-26275, a10, @"kc_attribs_key_encrypted_data_from_blob: acl missing");
LABEL_52:
    v29 = 0;
LABEL_25:
    if (v39)
    {
      aks_ref_key_free();
    }

    if (v16)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

LABEL_41:
  if (a9)
  {
    *a9 = CFRetain(v17);
  }

  if (!v33)
  {
    v29 = 1;
    goto LABEL_25;
  }

  *v33 = v39;
  v39 = 0;
  v29 = 1;
  if (v16)
  {
LABEL_28:
    CFRelease(v16);
  }

LABEL_29:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v29;
}