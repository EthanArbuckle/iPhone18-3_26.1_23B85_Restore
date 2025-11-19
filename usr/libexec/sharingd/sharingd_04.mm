void sub_1000D3E20(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) observerTable];
  v3 = [v2 allObjects];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
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

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = auto_unlock_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v15 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "### Calling failed to enable %@", buf, 0xCu);
          }

          [v8 session:*(a1 + 32) didFailToEnableDevice:*(a1 + 40) error:*(a1 + 48)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_1000D4070(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) observerTable];
  v3 = [v2 allObjects];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
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

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = auto_unlock_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v15 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling began %@", buf, 0xCu);
          }

          [v8 session:*(a1 + 32) didBeginAttemptWithDevice:*(a1 + 40)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_1000D42D0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) observerTable];
  v3 = [v2 allObjects];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
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

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = auto_unlock_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v15 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling completed %@", buf, 0xCu);
          }

          [v8 session:*(a1 + 32) didCompleteUnlockWithDevice:*(a1 + 40)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_1000D4540(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) observerTable];
  v3 = [v2 allObjects];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = auto_unlock_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "### Calling failed %@", buf, 0xCu);
          }

          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          v12 = *(a1 + 48);
          v13 = [v10 incrementedCountID];
          [v8 session:v10 didFailUnlockWithResults:v11 error:v12 incrementedAttempt:v13 != 0];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }
}

void sub_1000D474C(id a1)
{
  v1 = auto_unlock_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Repair cloud pairing if necessary", v3, 2u);
  }

  v2 = +[SDAutoUnlockTransport sharedTransport];
  [v2 triggerCloudPairRetryWithShortRetryDeviceIDs:0];
}

void sub_1000D4ADC(uint64_t a1)
{
  if (sub_100022E18())
  {
    v2 = auto_unlock_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "### No eligible devices: Auto Unlock disabled due to profile", &v19, 2u);
    }

    v3 = *(a1 + 48);
    v4 = objc_opt_new();
    (*(v3 + 16))(v3, v4, 0);
  }

  else
  {
    v4 = [*(a1 + 32) autoUnlockTransport];
    v5 = [v4 autoUnlockEligibleWatchesWithCloudPairing:0];
    v6 = [v5 mutableCopy];

    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 allObjects];
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Devices %@", &v19, 0xCu);
    }

    [*(a1 + 32) eligibleDevicesFilterCompatibleDevices:v6];
    [*(a1 + 32) setEligibleDevices:v6];
    v9 = v6;
    if (([*(a1 + 40) isEqualToString:@"com.apple.preference.security.remoteservice"] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqualToString:", @"com.apple.Touch-ID-Settings.extension") & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqualToString:", @"autool") & 1) != 0 || (v10 = v9, objc_msgSend(*(a1 + 40), "isEqualToString:", @"com.apple.Preferences")))
    {
      v11 = [(__CFString *)v9 allObjects];
      v12 = sub_1001125EC(v11);
      v10 = [NSSet setWithArray:v12];

      v13 = auto_unlock_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Devices with description %@", &v19, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
    v14 = auto_unlock_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = +[SDStatusMonitor sharedMonitor];
      if ([v15 deviceSupportsRanging])
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = +[SDStatusMonitor sharedMonitor];
      v18 = [v17 modelCode];
      v19 = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ranging supported: %@ for model: %@", &v19, 0x16u);
    }
  }
}

void sub_1000D5184(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancel enabling all devices", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) lockPairingSessions];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) cancelEnablingAutoUnlockForDeviceID:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000D5388(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) uniqueID];
  [v1 cancelEnablingAutoUnlockForDeviceID:v2];
}

void sub_1000D580C(uint64_t a1)
{
  v2 = +[SDAutoUnlockAKSManager sharedManager];
  v3 = [*(a1 + 32) uniqueID];
  v9 = [v2 pairingIDForWatchID:v3];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) uniqueID];
  v6 = [v4 disablePairingForDeviceID:v5 pairingID:v9];

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, 0);
  }

  v8 = +[SDAutoUnlockTransport sharedTransport];
  [v8 updateApproveBluetoothIDs];
}

id sub_1000D5B88(uint64_t a1)
{
  v2 = sub_10011173C();
  v3 = sub_1001118A4();
  if (v2 && *(a1 + 40) == 1)
  {
    v4 = *(a1 + 32);
LABEL_7:

    return [v4 generateAttemptForType:?];
  }

  if (v3 && *(a1 + 40) == 2)
  {
    v4 = *(a1 + 32);
    goto LABEL_7;
  }

  v5 = *(a1 + 32);

  return [v5 attemptAutoUnlock];
}

void sub_1000D5E1C(uint64_t a1)
{
  v2 = sub_100111978();
  v3 = sub_100111A28();
  v4 = v3;
  v5 = @"Test Mode";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = objc_opt_new();
  v8 = v2 ^ 1u;
  v9 = [NSNumber numberWithInt:v8];
  [v7 setObject:v9 forKeyedSubscript:SDAutoUnlockManagerMetricSuccessKey];

  v10 = [*(a1 + 32) uniqueID];
  [v7 setObject:v10 forKeyedSubscript:SDAutoUnlockManagerMetricDeviceIDKey];

  [v7 setObject:*(a1 + 40) forKeyedSubscript:SDAutoUnlockManagerMetricTimeKey];
  v11 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  [v7 setObject:v11 forKeyedSubscript:SDAutoUnlockManagerMetricConnectedBluetoothDevicesKey];

  v12 = [NSNumber numberWithInteger:*(a1 + 64)];
  [v7 setObject:v12 forKeyedSubscript:SDAutoUnlockManagerMetricTimeSinceLastWakeKey];

  v13 = [NSNumber numberWithInteger:*(a1 + 72)];
  [v7 setObject:v13 forKeyedSubscript:SDAutoUnlockManagerMetricLastSleepTypeKey];

  if ((v8 & 1) == 0)
  {
    v14 = SFAutoUnlockErrorDomain;
    [v7 setObject:SFAutoUnlockErrorDomain forKeyedSubscript:SDAutoUnlockManagerMetricErrorDomainKey];
    [v7 setObject:&off_10090BA18 forKeyedSubscript:SDAutoUnlockManagerMetricErrorCodeKey];
    [v7 setObject:v6 forKeyedSubscript:SDAutoUnlockManagerMetricErrorStringKey];
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Test mode failure";
    v15 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v16 = [NSError errorWithDomain:v14 code:103 userInfo:v15];

    [*(a1 + 48) setCachedMetrics:v7];
    [*(a1 + 48) notifyObserversOfUnlockFailureWithResults:v7 error:v16];
    goto LABEL_22;
  }

  v17 = sub_100111ACC();
  v16 = v17;
  if (v17)
  {
    if (*(a1 + 80) == 1)
    {
      v18 = [*(a1 + 48) attemptExternalACMContext];
      v19 = sub_10005EA80(v16, v18);

      v20 = auto_unlock_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Test Mode: Token: %@", buf, 0xCu);
      }

      if (v19)
      {
        [*(a1 + 32) setHintToken:v19];
LABEL_21:

        [*(a1 + 32) setResults:v7];
        [*(a1 + 48) notifyObserversOfUnlockCompletionWithDevice:*(a1 + 32)];
        goto LABEL_22;
      }

      v25 = auto_unlock_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v26 = "Test Mode: Unable to create hint token";
        goto LABEL_19;
      }
    }

    else
    {
      v19 = [v17 dataUsingEncoding:4];
      if (MKBUnlockDevice())
      {
        goto LABEL_21;
      }

      v25 = auto_unlock_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v26 = "Test Mode: Unlocked keybag";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
      }
    }

    goto LABEL_21;
  }

  v21 = auto_unlock_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1000E35D4();
  }

  v22 = SFAutoUnlockErrorDomain;
  v27 = NSLocalizedDescriptionKey;
  v28 = @"Missing passcode";
  v23 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v24 = [NSError errorWithDomain:v22 code:182 userInfo:v23];

  [*(a1 + 48) notifyObserversOfUnlockFailureWithResults:v7 error:v24];
LABEL_22:
}

void sub_1000D7578(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) attemptActivatedHandler];

  if (v4)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      v7 = *(a1 + 40);
      if (a2)
      {
        v6 = @"YES";
      }

      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempt started %@, error %@", &v9, 0x16u);
    }

    v8 = [*(a1 + 32) attemptActivatedHandler];
    v8[2](v8, a2, *(a1 + 40));
  }
}

void sub_1000D79BC(uint64_t a1)
{
  if ([*(a1 + 32) doNotPostUnlockConfirmation])
  {
    [*(a1 + 32) setSuppressAlert:(*(a1 + 40) & 1) == 0];
    v2 = [*(a1 + 32) suppressAlert];
    v3 = *(a1 + 32);
    if (v2)
    {
      [v3 setPeriocularStatus:2];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v4 = [*(a1 + 32) lockAuthSessions];
      v5 = [v4 allValues];

      v6 = [v5 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v34;
LABEL_5:
        v9 = 0;
        while (1)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v33 + 1) + 8 * v9);
          if ([v10 doNotPostUnlockConfirmation] && objc_msgSend(v10, "aksSuccess"))
          {
            v26 = auto_unlock_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sending Unlock Confirmation, Suppress Notification", buf, 2u);
            }

            [v10 completeAttemptPostNotification:0];
            goto LABEL_31;
          }

          if ([v10 doNotPostUnlockConfirmation])
          {
            break;
          }

          if (v7 == ++v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v33 objects:v40 count:16];
            if (v7)
            {
              goto LABEL_5;
            }

            goto LABEL_31;
          }
        }

        v12 = v10;

        if (!v12)
        {
          goto LABEL_33;
        }

        v5 = [v12 attemptResults];
        v18 = [v5 mutableCopy];
        [*(a1 + 32) setCachedMetrics:v18];

        v19 = SFUnlockErrorDomian;
        v38 = NSLocalizedDescriptionKey;
        v39 = @"Attempt Cancelled due to Periocular Success";
        v20 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [NSError errorWithDomain:v19 code:118 userInfo:v20];

        v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 code]);
        v23 = [*(a1 + 32) cachedMetrics];
        [v23 setObject:v22 forKeyedSubscript:SDAutoUnlockManagerMetricErrorCodeKey];

        v24 = *(a1 + 32);
        v25 = [v24 cachedMetrics];
        [v24 notifyObserversOfUnlockFailureWithResults:v25 error:v21];
      }

      else
      {
LABEL_31:
        v12 = 0;
      }

LABEL_33:
      [*(a1 + 32) cancelAttemptsForDeviceUnlocked];
    }

    else
    {
      [v3 setDoNotPostUnlockConfirmation:0];
      [*(a1 + 32) setPeriocularStatus:1];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = [*(a1 + 32) lockAuthSessions];
      v12 = [v11 allValues];

      v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v29;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v28 + 1) + 8 * i);
            if ([v17 doNotPostUnlockConfirmation] && objc_msgSend(v17, "aksSuccess"))
            {
              v27 = auto_unlock_log();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sending Unlock Confirmation, Show Notification", buf, 2u);
              }

              [v17 completeAttemptPostNotification:1];
              goto LABEL_34;
            }

            if ([v17 doNotPostUnlockConfirmation])
            {
              [v17 setDoNotPostUnlockConfirmation:{objc_msgSend(*(a1 + 32), "doNotPostUnlockConfirmation")}];
              goto LABEL_34;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_34:
  }
}

id sub_1000D81E8(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E3610();
  }

  v3 = [*(a1 + 32) lockAuthSessions];
  v4 = [v3 count];

  if (v4)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v5 = [*(a1 + 32) lockAuthSessions];
    v6 = [v5 allValues];

    obj = v6;
    v7 = [v6 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v53;
      v50 = SDAutoUnlockManagerMetricSuccessKey;
      v49 = SDAutoUnlockManagerMetricAttemptTypeKey;
      v48 = SFAutoUnlockErrorDomain;
      v47 = SDAutoUnlockManagerMetricErrorDomainKey;
      v46 = SDAutoUnlockManagerMetricErrorCodeKey;
      v45 = SDAutoUnlockManagerMetricErrorStringKey;
      v44 = SDAutoUnlockManagerMetricUsingToolKey;
      v43 = SDAutoUnlockManagerMetricCancelTimeKey;
      v42 = SDAutoUnlockManagerMetricCancelReasonKey;
      v41 = SDAutoUnlockManagerMetricConnectedBluetoothDevicesKey;
      v40 = SDAutoUnlockManagerMetricTimeSinceLastWakeKey;
      v39 = SDAutoUnlockManagerMetricLastSleepTypeKey;
      v37 = SDAutoUnlockManagerMetricPeriocularStatus;
      v38 = SDAutoUnlockManagerMetricPrewarmKey;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v52 + 1) + 8 * i);
          [v11 cancel];
          v12 = [*(a1 + 32) canceledAuthLockSessions];
          v13 = [v11 sessionID];
          v14 = [v12 containsObject:v13];

          if ((v14 & 1) == 0)
          {
            v15 = [*(a1 + 32) canceledAuthLockSessions];
            v16 = [v11 sessionID];
            [v15 addObject:v16];

            v17 = [*(a1 + 32) attemptDevice];
            v18 = [v17 uniqueID];
            v19 = [v11 deviceID];
            v20 = [v18 isEqualToString:v19];

            if (v20)
            {
              v21 = +[NSDate date];
              v22 = [*(a1 + 32) attemptStart];
              [v21 timeIntervalSinceDate:v22];
              v24 = v23;

              v25 = [v11 attemptResults];
              v26 = [v25 mutableCopy];

              [v26 setObject:&off_10090BA30 forKeyedSubscript:v50];
              v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) attemptType]);
              [v26 setObject:v27 forKeyedSubscript:v49];

              [v26 setObject:v48 forKeyedSubscript:v47];
              [v26 setObject:&off_10090BA48 forKeyedSubscript:v46];
              [v26 setObject:@"Attempt Cancelled -- After finding Watch" forKeyedSubscript:v45];
              v28 = [NSNumber numberWithBool:*(a1 + 48)];
              [v26 setObject:v28 forKeyedSubscript:v44];

              v29 = [NSNumber numberWithDouble:v24];
              [v26 setObject:v29 forKeyedSubscript:v43];

              v30 = [NSNumber numberWithInteger:*(a1 + 40)];
              [v26 setObject:v30 forKeyedSubscript:v42];

              v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) connectedBluetoothDevices]);
              [v26 setObject:v31 forKeyedSubscript:v41];

              v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) timeSinceLastMachineWake]);
              [v26 setObject:v32 forKeyedSubscript:v40];

              v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) lastSleepType]);
              [v26 setObject:v33 forKeyedSubscript:v39];

              v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 attemptPrewarmed]);
              [v26 setObject:v34 forKeyedSubscript:v38];

              if ([*(a1 + 32) periocularStatus])
              {
                v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) periocularStatus]);
                [v26 setObject:v35 forKeyedSubscript:v37];
              }

              [*(a1 + 32) setCachedMetrics:v26];
              if (([*(a1 + 32) isBeingUsedForSiri] & 1) == 0)
              {
                sub_10010F888(v26);
              }

              [*(a1 + 32) setCachedMetrics:0];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v8);
    }
  }

  [*(a1 + 32) invalidateAttempt];
  return [*(a1 + 32) setScanErrorString:0];
}

void sub_1000D882C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 - 1) >= 2)
  {
    if (v1)
    {
      return;
    }

    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E3650();
    }

    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setBool:1 forKey:@"AutoUnlockDoNotCollectTriggerMetrics"];
  }

  else
  {
    if (v1 == 2)
    {
      v3 = &off_10090BA60;
    }

    else
    {
      v3 = &off_10090BA30;
    }

    v4 = [*(a1 + 32) cachedMetrics];
    v5 = SDAutoUnlockManagerMetricUnintentionalAttemptKey;
    [v4 setObject:v3 forKeyedSubscript:SDAutoUnlockManagerMetricUnintentionalAttemptKey];

    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) cachedMetrics];
      v8 = [v7 objectForKeyedSubscript:v5];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Log Unintentional AutoUnlock Attempt: %@", &v10, 0xCu);
    }
  }
}

void sub_1000D8C54(id a1, NSError *a2)
{
  v2 = a2;
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000E368C();
  }
}

void sub_1000D9208(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000E36FC(a1);
  }
}

void sub_1000D9344(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[SDUnlockDisable alloc] initWithData:*(a1 + 40)];
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [(SDUnlockDisable *)v2 pairingID];
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received SDUnlockDisable (device ID: %@, pairingID: %@)", &v8, 0x16u);
    }

    v6 = +[SDAutoUnlockAKSManager sharedManager];
    [v6 disablePairingWithKeyDevice:*(a1 + 32)];

    [*(a1 + 48) initializeRemotePeer];
    v7 = +[SDAutoUnlockAKSManager sharedManager];
    [v7 updateDynamicStoreEnabled];
  }

  else
  {
    v2 = auto_unlock_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received SDUnlockDisable but device ID is NULL", &v8, 2u);
    }
  }
}

void sub_1000DB67C(id *a1)
{
  v2 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1[4];
    if ([v3 canceled])
    {
      v4 = SFAutoUnlockErrorDomain;
      v83 = NSLocalizedDescriptionKey;
      v84 = @"Pairing canceled";
      v5 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v6 = [NSError errorWithDomain:v4 code:118 userInfo:v5];
    }

    else
    {
      v6 = a1[5];
    }

    if (v6)
    {
      v17 = [v3 placeholder];
      v18 = +[SDAutoUnlockTransport sharedTransport];
      v19 = v18;
      if (v17)
      {
        v20 = [v18 placeholderDevice];
      }

      else
      {
        v36 = [a1[4] deviceID];
        v37 = [v19 idsDeviceForUniqueID:v36];

        v38 = +[SDAutoUnlockTransport sharedTransport];
        v20 = [v38 autoUnlockDeviceForIDSDevice:v37 cloudPaired:0 cached:0];

        v19 = v37;
      }

      v39 = a1[6];
      v40 = [v3 deviceID];
      v41 = [v3 sessionID];
      v42 = [v41 UUIDString];
      [v39 disablePairingForDeviceID:v40 pairingID:v42];

      [a1[6] notifyObserverOfFailedToEnableDevice:v20 error:v6];
    }

    else
    {
      [a1[6] initializeRemotePeer];
      v25 = [a1[6] remotePeer];
      [v25 handlePairedSuccessfully];

      v26 = +[SDAutoUnlockTransport sharedTransport];
      v27 = [a1[4] deviceID];
      v20 = [v26 autoUnlockDeviceForDeviceID:v27];

      [a1[6] notifyObserverOfEnabledDevice:v20];
      v28 = [a1[6] suggestionManager];
      v29 = [v20 uniqueID];
      [v28 setFeatureSuggestedForDeviceID:v29];

      v30 = [a1[6] suggestionManager];
      [v30 setRetriedSetup];

      v31 = +[SDAutoUnlockAKSManager sharedManager];
      [v31 updateDynamicStoreEnabled];

      sub_100113448(@"com.apple.watch.auto-unlock.enabled");
      v32 = +[NSUserDefaults standardUserDefaults];
      [v32 setBool:1 forKey:@"AutoUnlockAlreadyEnabledBefore"];

      v33 = +[NSUserDefaults standardUserDefaults];
      v34 = SFDeviceProductVersion();
      [v34 floatValue];
      [v33 setFloat:@"AutoUnlockLastSeenVersion" forKey:?];

      v35 = +[SDAutoUnlockNotificationsManager sharedManager];
      [v35 clearPhoneAutoUnlockUpsellNotification:1];
    }

    [a1[4] invalidate];
    v43 = [a1[6] lockPairingSessions];
    v44 = [a1[4] deviceID];
    [v43 removeObjectForKey:v44];

    v45 = +[SDAutoUnlockTransport sharedTransport];
    [v45 updateApproveBluetoothIDs];

LABEL_22:
LABEL_34:

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!a1[5])
    {
      v7 = [a1[6] canceledPairingKeySessions];
      v8 = [a1[4] sessionID];
      v9 = [v8 UUIDString];
      v10 = [v7 containsObject:v9];

      if (v10)
      {
        v11 = auto_unlock_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [a1[4] deviceID];
          v13 = [a1[4] sessionID];
          v14 = [v13 UUIDString];
          v79 = 138412546;
          v80 = v12;
          v81 = 2112;
          v82 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Pairing session canceled (device ID: %@, session ID: %@)", &v79, 0x16u);
        }

        v15 = a1[6];
        v16 = [a1[4] deviceID];
        [v15 disableKeyPairingForDeviceID:v16];
      }

      else
      {
        [a1[6] updateAdvertising];
      }
    }

    [a1[4] invalidate];
    v52 = [a1[6] canceledPairingKeySessions];
    v53 = [a1[4] sessionID];
    [v52 removeObject:v53];

    v3 = [a1[6] keyPairingSessions];
    v54 = [a1[4] deviceID];
    [v3 removeObjectForKey:v54];

    goto LABEL_34;
  }

  v21 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = a1[5];
    v22 = a1[6];
    v24 = a1[4];

    [v22 handleLockSessionCompleted:v24 error:v23];
    return;
  }

  v46 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1[4];
    v47 = a1[5];
    if (v47)
    {
      if ([v47 code] == 213)
      {
        [a1[6] beginKeyRegistrationIfNecessary];
      }

      v48 = +[SDAutoUnlockNotificationsManager sharedManager];
      [v48 removeAutoUnlockNotification];
    }

    else
    {
      v48 = [a1[6] keysWithAKSTokens];
      v61 = [v3 bleDevice];
      v62 = [v61 identifier];
      [v48 addObject:v62];
    }

    [a1[6] setNeedsStrictMotionCheck:{objc_msgSend(v3, "needsStrictMotionCheck")}];
    v63 = auto_unlock_log();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = [a1[4] sessionID];
      v79 = 138412290;
      v80 = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Removing key session %@", &v79, 0xCu);
    }

    [a1[4] invalidate];
    v65 = [a1[6] keyAuthSessions];
    v66 = [a1[4] sessionID];
    v67 = [v66 UUIDString];
    [v65 removeObjectForKey:v67];

    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [a1[6] keyAuthSessions];
      v79 = 138412290;
      v80 = v68;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removed key session %@", &v79, 0xCu);
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v55 = a1[4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a1[5])
      {
        v56 = auto_unlock_log();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = [a1[4] deviceID];
          v79 = 138412290;
          v80 = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Received error while registering key (%@), removing from list of registered devices.", &v79, 0xCu);
        }

        v58 = [a1[5] code];
        v59 = [a1[6] remotePeer];
        v60 = v59;
        if (v58 == 102)
        {
          [v59 handleRegistrationFailedKeyLocked];
LABEL_56:

          v75 = [a1[6] lockRegistrationSessionsByDeviceID];
          v76 = [a1[4] deviceID];
          [v75 setObject:0 forKeyedSubscript:v76];

          [a1[4] invalidate];
          return;
        }

        v74 = 0;
      }

      else
      {
        v59 = [a1[6] remotePeer];
        v60 = v59;
        v74 = 1;
      }

      [v59 handleRegistrationCompletedSuccessfully:v74];
      goto LABEL_56;
    }

    v69 = a1[4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v70 = a1[4];
    v3 = v70;
    if (a1[5])
    {
      if ([v70 isLocallyGenerated])
      {
        v71 = auto_unlock_log();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          sub_1000E38F0();
        }

        v72 = a1[6];
        v73 = 1;
        goto LABEL_59;
      }

      if (a1[5])
      {
LABEL_60:
        v77 = [a1[6] keyRegistrationSessionsByDeviceID];
        v78 = [a1[4] deviceID];
        [v77 setObject:0 forKeyedSubscript:v78];

        [a1[4] invalidate];
        goto LABEL_34;
      }
    }

    v72 = a1[6];
    v73 = 0;
LABEL_59:
    [v72 setNeedsArming:v73];
    goto LABEL_60;
  }

  v50 = a1[5];
  v49 = a1[6];
  v51 = a1[4];

  [v49 handleProxySessionCompleted:v51 error:v50];
}

void sub_1000DD5CC(uint64_t a1)
{
  v2 = +[SDAutoUnlockAKSManager sharedManager];
  [v2 updateLocalLTK];

  [*(a1 + 32) setIdsMacCountCache:-1];
  v3 = +[SDAutoUnlockAKSManager sharedManager];
  [v3 updateDynamicStoreEnabled];
}

void sub_1000DD700(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setNearbyDeviceChangedDate:v2];

  v3 = [*(a1 + 40) activeDevice];
  v4 = [v3 isConnected];

  if (v4)
  {
    v5 = *(a1 + 32);

    [v5 registerRemotePeerIfNecessary];
  }
}

id sub_1000DD99C(uint64_t a1)
{
  [*(a1 + 32) cancelParallelRegistrationSessionsForDeviceID:*(a1 + 40) newSessionID:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 createRegistrationKeySessionWithIdentifier:v4 deviceID:v3 requestData:v5 locallyGenerated:0];
}

id sub_1000DDAE4(uint64_t a1)
{
  [*(a1 + 32) cancelParallelRegistrationSessionsForDeviceID:*(a1 + 40) newSessionID:*(a1 + 48)];
  v2 = [*(a1 + 32) remotePeer];
  [v2 handleRemoteRegistrationRequested];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);

  return [v3 createRegistrationLockSessionWithDeviceID:v4 sessionID:v5 requestData:v6];
}

void sub_1000DDDDC(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) remotePeer];
  v4 = [v3 deviceID];
  v6 = *(a1 + 40);
  v5 = (a1 + 40);
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = *v2;

    [v8 handleRelockMessage];
  }

  else
  {
    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E3AE0(v5, v2);
    }
  }
}

void sub_1000DDE9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) payload];
  [v1 createPairingKeySessionWithIdentifier:v2 deviceID:v3 requestData:v4];
}

void sub_1000DE394(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 152));
  _Unwind_Resume(a1);
}

void sub_1000DE424(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 bleDevice];

  v5 = [v4 copy];
  [WeakRetained handleFoundPeer:v5];
}

void sub_1000DE4A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 bleDevice];

  v5 = [v4 copy];
  [WeakRetained handleFoundPeer:v5];
}

void sub_1000DE52C(id a1)
{
  v1 = auto_unlock_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Scanner invalidated", v2, 2u);
  }
}

void sub_1000DE594(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SFBLEScanner timer fired %@", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 handleBLEScanTimerFired];
}

void sub_1000DE664(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v7 = sub_10000C2C4(@"AUScanTimeout");
    v6 = v7;
    if (v7)
    {
      v8 = [v7 integerValue];
    }

    else
    {
      v8 = 5.0;
    }

    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scanner started with timeout %.2f seconds", &v10, 0xCu);
    }

    [*(a1 + 32) restartScanTimer:sub_1001F0530(v8)];
    goto LABEL_14;
  }

  v4 = [*(a1 + 32) scanner];

  v5 = auto_unlock_log();
  v6 = v5;
  if (!v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scanner invalidated before activate", &v10, 2u);
    }

LABEL_14:

    goto LABEL_15;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000E3B98();
  }

  [*(a1 + 32) invalidateAttempt];
  [*(a1 + 32) setScanErrorString:0];
LABEL_15:
}

id sub_1000DED40(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Scan timer fired", v4, 2u);
  }

  [*(a1 + 32) updateStringForProxySession];
  [*(a1 + 32) cancelAllLockSessionsForScanTimeout];
  [*(a1 + 32) handleScanTimerFired];
  [*(a1 + 32) invalidateAttempt];
  return [*(a1 + 32) setScanErrorString:0];
}

id sub_1000DF568(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceClients];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 updateAdvertising];
}

id sub_1000DF66C(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceClients];
  [v2 removeObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 updateAdvertising];
}

void sub_1000DFB48(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] lockAuthSessions];
  v5 = [a1[5] identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if ([a1[6] messageType] == 309)
  {
    v7 = [SDAutoUnlockDecryptionFailed alloc];
    v8 = [a1[6] payload];
    v9 = [(SDAutoUnlockDecryptionFailed *)v7 initWithData:v8];

    v10 = [v9 errorCode];
    if (v6)
    {
      v11 = v10;
      [v6 handleDecryptionFailure:v10];
      if (v11 == 191)
      {
        v12 = auto_unlock_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000E3DF8();
        }

        v13 = +[SDAutoUnlockAKSManager sharedManager];
        v14 = [v6 deviceID];
        [v13 addDeviceIDMissingSessionKey:v14];
LABEL_7:

LABEL_22:
      }
    }
  }

  else
  {
    if ([v3 hasSessionID])
    {
      v15 = [v3 sessionID];
      v16 = [v15 length];

      if (v16 == 16)
      {
        v17 = [NSUUID alloc];
        v18 = [v3 sessionID];
        v9 = [v17 initWithUUIDBytes:{objc_msgSend(v18, "bytes")}];

        v19 = auto_unlock_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v9 UUIDString];
          v24 = 138412546;
          v25 = v3;
          v26 = 2112;
          v27 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received wrapper %@, session ID %@", &v24, 0x16u);
        }

        if (!v9)
        {
          v13 = auto_unlock_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1000E3DBC();
          }

          goto LABEL_22;
        }

        v21 = [a1[4] keyAuthSessions];
        v22 = [v9 UUIDString];
        v13 = [v21 objectForKeyedSubscript:v22];

        if (v13)
        {
          v23 = v13;
        }

        else
        {
          if (!v6)
          {
            v14 = auto_unlock_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_1000E3D4C();
            }

            goto LABEL_7;
          }

          v23 = v6;
        }

        [v23 handleMessageWithWrapper:v3];
        goto LABEL_22;
      }
    }

    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E3C80(v3);
    }
  }
}

void sub_1000DFE80(id a1, NSError *a2)
{
  v2 = a2;
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000E3E34();
  }
}

void sub_1000E0588(uint64_t a1)
{
  *(a1 + 32);
  v1 = SFLocalizedStringForKey();
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Posting notification with text %@", &v4, 0xCu);
  }

  v3 = +[SDAutoUnlockNotificationsManager sharedManager];
  [v3 showPhoneAutoUnlockNotificationWithBodyText:v1 isUpsell:0];
}

void sub_1000E0838(uint64_t a1)
{
  v2 = [*(a1 + 32) getUpsellNotificationBodyTextForEvent:*(a1 + 40)];
  v1 = +[SDAutoUnlockNotificationsManager sharedManager];
  [v1 showPhoneAutoUnlockNotificationWithBodyText:v2 isUpsell:1];
}

id sub_1000E0C90(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setPipeConnectionChangedDate:v2];

  v3 = *(a1 + 32);

  return [v3 updateAdvertising];
}

void sub_1000E1294(uint64_t a1)
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 pairedWatchLockState];

  v4 = [*(a1 + 32) remotePeer];
  v5 = [v4 isKeyBagLocked];

  if (v5)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(a1 + 32);

    [v7 registerRemotePeerIfNecessary];
  }
}

void sub_1000E13B0(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) lockAuthSessions];
  v2 = [v1 allValues];

  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) tearDownAWDLIfNecessary];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000E1844(uint64_t a1)
{
  v2 = [*(a1 + 32) magnetLinkTimer];
  v3 = dispatch_source_testcancel(v2);

  if (!v3)
  {
    v4 = [*(a1 + 32) magnetLinkTimer];
    dispatch_source_cancel(v4);
  }

  [*(a1 + 32) setMagnetLinkTimer:0];
  v5 = [*(a1 + 32) deviceCurrentlyUnlockedByWatch];
  v6 = auto_unlock_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "### Requesting Relock Due To Magnet Link Disconnect", &v12, 2u);
    }

    v8 = [*(a1 + 32) localDeviceController];
    [v8 lockDevice];

    [*(a1 + 32) setLastLockedByRelock:1];
    [*(a1 + 32) cancelAutoUnlock];
    v9 = +[SDAutoUnlockNotificationsManager sharedManager];
    [v9 showPhoneAutoRelockNotification];

    v6 = [*(a1 + 32) cachedMetrics];
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:SDAutoUnlockManagerMetricAutoRelockKey];
  }

  else if (v7)
  {
    v10 = [*(a1 + 32) deviceCurrentlyUnlockedByWatch];
    v11 = @"NO";
    if (v10)
    {
      v11 = @"YES";
    }

    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not Requesting Relock, deviceCurrentlyUnlockedByWatch: %@", &v12, 0xCu);
  }
}

void sub_1000E349C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 modelIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Unsupported hardware model identifier:%@", a1, 0xCu);
}

void sub_1000E3514(void *a1, NSObject *a2)
{
  v4 = [a1 modelIdentifier];
  v5 = [a1 productVersion];
  v7 = 138412546;
  v8 = v4;
  sub_100021E88();
  v9 = v6;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unsupported hardware/software model identifier:%@, version:%@", &v7, 0x16u);
}

void sub_1000E35D4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E3650()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E368C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E36FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 138412546;
  v5 = v1;
  sub_100021E88();
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "### Error sending disable message (device id: %@, error: %@)", &v4, 0x16u);
}

void sub_1000E3784()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E37C0(int a1, void *a2, NSObject *a3)
{
  v4 = a1 / 60;
  v5 = [a2 lockStateChangedDate];
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2112;
  v8 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Phone unused within the last %d min. Last lock/unlock date: %@. Telling Watch to perform motion check", v6, 0x12u);
}

void sub_1000E3878()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E38B4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E38F0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E392C(void *a1)
{
  [a1 attemptType];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000E39B0(void *a1)
{
  [a1 attemptType];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000E3A34(void *a1)
{
  v1 = [a1 sessionID];
  sub_10000883C();
  sub_100021E88();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000E3AE0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 remotePeer];
  v4 = [v3 deviceID];
  sub_100021E88();
  sub_100008860();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000E3B98()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E3C08(uint64_t *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000E3C80(void *a1)
{
  [a1 hasSessionID];
  v2 = [a1 sessionID];
  [v2 length];
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000E3D4C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E3DBC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E3DF8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E3E34()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E3EA4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_1000E45A4(uint64_t result)
{
  v1 = result;
  if (dword_1009707D0 <= 40)
  {
    if (dword_1009707D0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1000E9B50(v1);
    }
  }

  *(*(v1 + 32) + 264) = *(v1 + 40);
  return result;
}

void *sub_1000E4CD0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[26];
  if (!v3)
  {
    return result;
  }

  if (dword_1009707D0 <= 40)
  {
    if (dword_1009707D0 != -1)
    {
LABEL_4:
      v4 = [v3 screenOn];
      v5 = "off";
      if (v4)
      {
        v5 = "on";
      }

      v8 = v5;
      LogPrintF();
      result = *(a1 + 32);
      goto LABEL_8;
    }

    v6 = _LogCategory_Initialize();
    result = *(a1 + 32);
    if (v6)
    {
      v3 = result[26];
      goto LABEL_4;
    }
  }

LABEL_8:
  [result _update];
  result = [*(*(a1 + 32) + 208) screenOn];
  if ((result & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 104);

    return [v7 tvAutoFillRemoveAll];
  }

  return result;
}

id sub_1000E4E3C(uint64_t a1)
{
  result = *(*(a1 + 32) + 208);
  if (result)
  {
    v3 = [result deviceUIUnlocked];
    if (dword_1009707D0 <= 40 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E9CDC();
    }

    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 _activateUIDelayTimer];
    }

    else
    {
      [v4 _deactivateUIDelayTimer];
    }

    v5 = *(a1 + 32);

    return [v5 _update];
  }

  return result;
}

void sub_1000E4FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E9D84();
    }
  }

  else if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E9DC4();
  }

  [*(a1 + 32) _update];
}

void sub_1000E5068(id a1)
{
  if (dword_1009707D0 <= 90 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E9DE0();
  }
}

void sub_1000E50B4(id a1)
{
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E9E00();
  }
}

void sub_1000E5124(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1009707D0 <= 90)
    {
      v6 = v2;
      if (dword_1009707D0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_1000E9E1C();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_1009707D0 <= 30)
  {
    v6 = 0;
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_1000E9E5C();
      goto LABEL_13;
    }
  }
}

void sub_1000E61EC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1009707D0 <= 60)
    {
      v6 = v2;
      if (dword_1009707D0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_1000EA188();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_1009707D0 <= 30)
  {
    v6 = 0;
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_1000EA1C8();
      goto LABEL_13;
    }
  }
}

id sub_1000E69D8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 184);
    *(v4 + 184) = 0;
  }

  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA5A4();
  }

  *(*(a1 + 32) + 176) = 1;
  v6 = *(a1 + 32);

  return [v6 _update];
}

void sub_1000E6D8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000E6E20;
  v2[3] = &unk_1008CF250;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _helpersClientPairingSucceeded:1 completion:v2];
}

void sub_1000E6E20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    [*(a1 + 32) _sessionHandlePairingSucceededResponse:*(a1 + 40)];
    goto LABEL_7;
  }

  if (dword_1009707D0 <= 60)
  {
    v6 = v3;
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1000EA740();
LABEL_7:
      v4 = v6;
    }
  }
}

void sub_1000E6EB4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v23 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA780();
  }

  [*(a1 + 32) passwordPickerStart:v23 bundleID:v16 localizedAppName:v17 unlocalizedAppName:v18 associatedDomains:v19 appIconData:v20 deviceName:v21 completion:v22];
}

void sub_1000E7330(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKeyedSubscript:*(a1 + 40)];
  [*(a1 + 32) _proximityChanged:v2];
}

id sub_1000E76AC(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqual:@"-pw"];
  v3 = *(a1 + 40);
  if (v2)
  {
    return [v3 passwordPickerStart:0 bundleID:0 localizedAppName:0 unlocalizedAppName:0 associatedDomains:0 appIconData:0 deviceName:0 completion:&stru_1008CFFF0];
  }

  v5 = *(a1 + 48);

  return [v3 _uiStart:v5 extraInfo:0];
}

void sub_1000E7740(id a1, NSString *a2, NSString *a3, NSError *a4)
{
  v8 = a2;
  v6 = a3;
  v7 = a4;
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

id sub_1000E7914(uint64_t a1)
{
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA9AC();
  }

  v2 = *(a1 + 32);
  v3 = v2[29];
  if (v3)
  {
    [v2 _uiStart:v3 extraInfo:0];
    v2 = *(a1 + 32);
  }

  return [v2 _deactivateUIDelayTimer];
}

void sub_1000E7C00(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = *(a1 + 32);
  if (isKindOfClass)
  {
    v9 = [v11 user];
    v10 = [v11 password];
    (*(v8 + 16))(v8, v9, v10, v5);
  }

  else
  {
    if (v5)
    {
      (*(v8 + 16))(v8, 0, 0, v5);
      goto LABEL_7;
    }

    v9 = NSErrorWithOSStatusF();
    (*(v8 + 16))(v8, 0, 0, v9);
  }

LABEL_7:
}

void sub_1000E7E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E7E80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E7E98(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (dword_1009707D0 <= 90 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EAA18();
    }
  }

  else if (a2)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 272);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E7FE0;
    block[3] = &unk_1008CE900;
    block[4] = v7;
    v10 = v6;
    v11 = *(a1 + 48);
    dispatch_async(v8, block);
  }

  else if (dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EAA58();
  }

  [*(*(*(a1 + 56) + 8) + 40) invalidate];
}

Class sub_1000E82F0()
{
  if (qword_100989C70 != -1)
  {
    sub_1000EAA74();
  }

  result = objc_getClass("SFAutoFillHelperProxy");
  qword_100989C68 = result;
  off_100970840 = sub_1000E8344;
  return result;
}

Class sub_1000E837C()
{
  if (qword_100989C88 != -1)
  {
    sub_1000EAA88();
  }

  result = objc_getClass("ACAccountStore");
  qword_100989C80 = result;
  off_100970848 = sub_1000E83D0;
  return result;
}

uint64_t sub_1000E9B50(uint64_t a1)
{
  *(*(a1 + 32) + 264);
  *(a1 + 40);
  return LogPrintF();
}

void sub_1000E9C04(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

uint64_t sub_1000EA448(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_100019C6C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C6C();
    }
  }

  return result;
}

void sub_1000EA49C()
{
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_100019C6C();
  }
}

uint64_t sub_1000EA4FC(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_100019C6C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C6C();
    }
  }

  return result;
}

uint64_t sub_1000EA5F8(int a1, NSErrorUserInfoKey *a2, const __CFString **a3, uint64_t *a4)
{
  if (a1 > 60)
  {
    return 1;
  }

  if (a1 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *a2 = NSLocalizedDescriptionKey;
  v7 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v8 = @"?";
  *a4 = v7;
  if (v7)
  {
    v8 = v7;
  }

  *a3 = v8;
  v9 = [NSDictionary dictionaryWithObjects:a3 forKeys:a2 count:1];
  v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6705 userInfo:v9];
  LogPrintF();

  return 0;
}

uint64_t sub_1000EB004(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 uniqueIdentifier];
  v9 = v7;
  v10 = v9;
  if (v7)
  {
    v11 = [v9 effectiveIdentifier];
    if ([v11 isEqual:v8])
    {

LABEL_5:
      v15 = [v5 idsIdentifier];

      if (v15)
      {
        v16 = v10;
LABEL_14:

        goto LABEL_15;
      }

      v19 = [v10 idsDeviceIdentifier];
      [v5 setIdsIdentifier:v19];
      v16 = v10;
LABEL_13:

      goto LABEL_14;
    }

    v12 = [v10 mediaSystemIdentifier];
    v13 = [v12 UUIDString];
    v14 = [v13 isEqual:v8];

    if (v14)
    {
      goto LABEL_5;
    }
  }

  if (NSStringLooksLikeBTAddress())
  {
    v16 = SFDataFromHexString();
    if (v16)
    {
      v17 = [v5 bleDevice];
      v18 = [v17 advertisementFields];
      v19 = [v18 objectForKeyedSubscript:@"bdAddr"];

      if (v19 && ([v19 isEqualToData:v16] & 1) != 0)
      {
        goto LABEL_13;
      }
    }
  }

  v20 = [v5 name];
  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = [v6 name];
  if (!v21)
  {

    goto LABEL_26;
  }

  v22 = v21;
  v23 = [v5 name];
  v24 = [v6 name];
  v25 = [v23 isEqual:v24];

  if ((v25 & 1) == 0)
  {
LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

LABEL_15:
  if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5C74(v5);
  }

  v20 = 1;
LABEL_27:

  return v20;
}

void sub_1000EC160(id a1)
{
  v1 = objc_alloc_init(SDProxHandoffAgent);
  v2 = qword_100989CA0;
  qword_100989CA0 = v1;
}

id sub_1000EC270(uint64_t a1)
{
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F60AC();
  }

  v2 = *(a1 + 32);

  return [v2 prefsChanged];
}

uint64_t sub_1000ECB94(uint64_t result)
{
  v1 = result;
  if (dword_1009708B0 <= 40)
  {
    if (dword_1009708B0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1000F62F4(v1);
    }
  }

  *(*(v1 + 32) + 280) = *(v1 + 40);
  return result;
}

id sub_1000ECC08(uint64_t a1)
{
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F637C();
  }

  [*(a1 + 32) _commonCallCountChanged];
  v2 = *(a1 + 32);

  return [v2 _update];
}

void sub_1000EF784(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1009708B0 <= 60 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6CD4();
    }
  }

  else if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F6D14();
  }

  [*(a1 + 32) _update];
}

void sub_1000F032C(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    v6 = &unk_1007F4D87;
    v7 = v8;
    v5 = a3;
    LogPrintF();
  }

  [*(a1 + 32) _bleUpdateMappingAndNearby];
}

void sub_1000F03E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F7070();
  }

  [*(a1 + 32) _bleUpdateMappingAndNearby];
}

void sub_1000F0464(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F70B0();
  }

  [*(a1 + 32) _bleUpdateMappingAndNearby];
}

uint64_t sub_1000F0AB0(uint64_t a1)
{
  v1 = a1 + 32;
  result = [*(*(a1 + 32) + 152) containsObject:*(a1 + 40)];
  if (result)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F7204((v1 + 8), v1);
    }

    v3 = *v1;

    return [v3 _commonShouldAdvertiseChanged];
  }

  else if (dword_1009708B0 <= 90)
  {
    if (dword_1009708B0 != -1)
    {
      return sub_1000F71C0((v1 + 8));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000F71C0((v1 + 8));
    }
  }

  return result;
}

uint64_t sub_1000F282C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F2844(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v12 + 1) + 8 * v6) clinkDevice];
        v8 = [v7 mediaRouteIdentifier];

        if (v8)
        {
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F78F0();
          }

          v9 = [*(a1 + 32) deviceEnteredNearbyHandler];

          if (v9)
          {
            v10 = [*(a1 + 32) deviceEnteredNearbyHandler];
            (v10)[2](v10, v8);
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v11 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v4 = v11;
    }

    while (v11);
  }
}

void sub_1000F2A80(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceWillTriggerHandler];
  if (v2)
  {
    v3 = *(*(a1 + 40) + 120);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000F2B18;
    v4[3] = &unk_1008D0190;
    v4[4] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void sub_1000F2B18(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 state] == 12;
  v5 = v8;
  if (v4)
  {
    v6 = [v8 clinkDevice];
    v7 = [v6 mediaRouteIdentifier];

    if (v7)
    {
      if (dword_1009708B0 < 31 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F7930();
      }

      (*(*(a1 + 32) + 16))();
    }

    v5 = v8;
  }
}

void sub_1000F2CC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1009708B0 <= 60 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F798C();
    }
  }

  else if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F79CC();
  }

  [*(a1 + 32) _update];
}

id sub_1000F3A70(void *a1)
{
  result = [*(a1[4] + 144) handleNotificationWasDismissed:a1[5] reason:a1[6]];
  if ((a1[6] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = a1[4];

    return [v3 _throttleEventDidOccur];
  }

  return result;
}

void sub_1000F4274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F428C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v7 = [v14 effectiveID];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = *(a1 + 32);
  v10 = v7;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_7;
  }

  if (!v11)
  {

    goto LABEL_9;
  }

  v13 = [v10 isEqual:v11];

  if (v13)
  {
LABEL_7:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }

LABEL_9:
}

void sub_1000F4538(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 setAttachmentURL:0];
  [v4 setState:10];
  [v4 setNextState:0];
  [v4 setNotificationInfo:0];
  [*(a1 + 32) _uiStopIfNeeded:v4 reason:0];
}

void sub_1000F5578(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  [*(a1 + 32) _bleActionDeviceChanged:v2];
}

Class sub_1000F5AF8()
{
  if (qword_100989CB0 != -1)
  {
    sub_1000F7FFC();
  }

  result = objc_getClass("TUCallCenter");
  qword_100989CA8 = result;
  off_100970920 = sub_100020404;
  return result;
}

Class sub_1000F5B78()
{
  if (qword_100989CB0 != -1)
  {
    sub_1000F7FFC();
  }

  result = objc_getClass("TUMutableRoute");
  qword_100989CC0 = result;
  off_100970928 = sub_1000F5BCC;
  return result;
}

void sub_1000F5BD8(int *a1, int a2)
{
  v14 = [a1 name];
  v4 = sub_100035C98(a1[5]);
  v5 = sub_100035C98(a2);
  sub_100035D64(v5, v6, v7, v8, v9, v10, v11, v12, v13, v4, v5, v14);
  LogPrintF();
}

void sub_1000F5C74(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void sub_1000F5CE4(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1000F5D40(void *a1, int a2)
{
  v13 = [a1 name];
  v3 = sub_100035C98(a2);
  sub_100035D64(v3, v4, v5, v6, v7, v8, v9, v10, v11, v3, v12, v13);
  LogPrintF();
}

void sub_1000F5DC4(int *a1, int a2)
{
  v14 = [a1 name];
  v4 = sub_100035C98(a1[5]);
  v5 = sub_100035C98(a2);
  sub_100035D64(v5, v6, v7, v8, v9, v10, v11, v12, v13, v4, v5, v14);
  LogPrintF();
}

uint64_t sub_1000F6034(uint64_t a1)
{
  if ((a1 - 1) <= 3)
  {
    v1 = *(&off_1008D0358 + a1 - 1);
  }

  return LogPrintF();
}

uint64_t sub_1000F62F4(uint64_t a1)
{
  *(*(a1 + 32) + 280);
  *(a1 + 40);
  return LogPrintF();
}

void sub_1000F646C(void *a1, int a2)
{
  v13 = sub_100035C98([a1 state]);
  v3 = sub_100035C98(a2);
  sub_100035D64(v3, v4, v5, v6, v7, v8, v9, v10, v11, v3, v12, v13);
  LogPrintF();
}

void sub_1000F6A04(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  LogPrintF();
}

uint64_t sub_1000F6B50(_BYTE *a1, uint64_t a2)
{
  *a1;
  [*(a2 + 168) systemUIFlags];
  return LogPrintF();
}

void sub_1000F6EA8(void *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = [a1 name];
  if (v3 <= 0xE)
  {
    v5 = off_1008D02E0[a2];
  }

  v6 = v4;
  LogPrintF();
}

void sub_1000F6F3C(void *a1)
{
  v1 = [a1 effectiveIdentifier];
  LogPrintF();
}

void sub_1000F6FC4(void *a1)
{
  v1 = [a1 model];
  LogPrintF();
}

uint64_t sub_1000F7204(id *a1, uint64_t a2)
{
  [*a1 shouldAdvertise];
  *(*a2 + 89);
  return LogPrintF();
}

uint64_t sub_1000F778C(uint64_t a1)
{
  if ((a1 - 1) <= 3)
  {
    v1 = *(&off_1008D0358 + a1 - 1);
  }

  return LogPrintF();
}

uint64_t sub_1000F7B2C(uint64_t a1)
{
  if ((a1 - 1) <= 3)
  {
    v1 = *(&off_1008D0358 + a1 - 1);
  }

  return LogPrintF();
}

void sub_1000F7D3C(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  LogPrintF();
}

void sub_1000F8054(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100989CD0;
  qword_100989CD0 = v1;
}

void sub_1000F8618(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 80));
  _Unwind_Resume(a1);
}

void sub_1000F8668(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Rapport found person %@", &v7, 0xCu);
    }

    [WeakRetained addOrUpdateNodesForPerson:v3 withChanges:0];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"com.apple.sharingd.RapportChanged" object:0 userInfo:0];
  }
}

void sub_1000F8770(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000FA708(v5, a3, v7);
    }

    [WeakRetained addOrUpdateNodesForPerson:v5 withChanges:a3];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"com.apple.sharingd.RapportChanged" object:0 userInfo:0];
  }
}

void sub_1000F8828(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Rapport lost person %@", &v7, 0xCu);
    }

    [WeakRetained removeNodesForPerson:v3];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"com.apple.sharingd.RapportChanged" object:0 userInfo:0];
  }
}

void sub_1000F892C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained[3] statusFlags])
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    [v3 updateUltraWideBandStateTo:v2];
    WeakRetained = v3;
  }
}

void sub_1000F8988(id a1)
{
  v1 = airdrop_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Rapport people discovery interrupted", v2, 2u);
  }
}

void sub_1000F89F0(id a1)
{
  v1 = airdrop_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Rapport people discovery invalidated", v2, 2u);
  }
}

void sub_1000F8A58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = airdrop_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000FA7CC();
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(*(a1 + 32) + 24) discoveredPeople];
    v8[0] = 67109120;
    v8[1] = [v6 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Rapport people discovery activated. Already discovered people %d", v8, 8u);
  }

  v7 = [*(*(a1 + 32) + 24) statusChangedHandler];

  if (v7)
  {
    v5 = [*(*(a1 + 32) + 24) statusChangedHandler];
    (*(v5 + 16))();
LABEL_8:
  }
}

void sub_1000F91C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v4];

  v6 = *(a1 + 32);
  if ([objc_opt_class() deviceIsEligibleForAirDrop:v3])
  {
    if (v5)
    {
      if ((*(a1 + 40) & 8) != 0)
      {
        v7 = *(a1 + 32);
        [objc_opt_class() updateRangingMeasurementForDevice:v3 inNode:v5];
      }
    }

    else
    {
      v9 = [*(a1 + 32) createSFNodeFromMyRPDevice:v3];
      v10 = airdrop_log();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412546;
          v13 = v9;
          v14 = 2112;
          v15 = v3;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SDRapportBrowser: Adding SFNode %@ for %@", &v12, 0x16u);
        }

        [*(*(a1 + 32) + 16) setObject:v9 forKeyedSubscript:v4];
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000FA910();
        }
      }
    }
  }

  else if (v5)
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SDRapportBrowser: Removing SFNode %@ for %@", &v12, 0x16u);
    }

    [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:v4];
  }
}

void sub_1000FA708(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = NSPrintF();
  *buf = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Rapport person %@ changed %@", buf, 0x16u);
}

uint64_t SDAutoUnlockAuthPromptImageDataReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v34 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34 & 0x7F) << v23;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v29) = 0;
            goto LABEL_42;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + 20) = v29;
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadData();
        v22 = *(a1 + 8);
        *(a1 + 8) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v33 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v33 & 0x7F) << v14;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_46;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_46:
        *(a1 + 16) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000FB830(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"com.apple.sharingd.AirDropUnpublished" object:*(a1 + 32) userInfo:0];

  v3 = *(a1 + 32);

  return [v3 updateServerState];
}

id *sub_1000FDA40(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] foundDevice:a2];
  }

  return result;
}

id sub_1000FE110(uint64_t a1)
{
  [*(a1 + 32) stop];
  v2 = *(a1 + 32);

  return [v2 updateServerState];
}

void sub_1000FE75C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "BTLE discovered duplicate hashes %@ rssi %@", &v3, 0x16u);
}

void sub_1000FE858()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FE894()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FE8D0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FE90C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t SDAutoUnlockSessionConfirmationACKReadFrom(uint64_t a1, void *a2)
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

void sub_1000FFA84(uint64_t a1, uint64_t a2, os_log_t log)
{
  if ((a1 - 1) > 0xE)
  {
    v3 = @"?";
  }

  else
  {
    v3 = off_1008D0530[a1 - 1];
  }

  v4 = 138412802;
  v5 = v3;
  v6 = 1024;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SDAirDropListener UNHANDLED EVENT %@ [%d] %@", &v4, 0x1Cu);
}

void sub_1000FFC54(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = @"en0";
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IP Address = %@, Interface = %@", &v2, 0x16u);
}

id sub_100100498(uint64_t a1)
{
  if (!*(*(a1 + 32) + 168))
  {
    v2 = +[SDProximityController sharedController];
    v3 = *(a1 + 32);
    v4 = *(v3 + 168);
    *(v3 + 168) = v2;
  }

  if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
  {
    sub_100104290();
  }

  [*(a1 + 32) _reportProgress:10];
  v5 = *(a1 + 32);

  return [v5 _run];
}

void *sub_1001005AC(void *result)
{
  if ((*(result[4] + 129) & 1) == 0)
  {
    v2 = result;
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001042AC();
    }

    *(v2[4] + 129) = 1;
    v3 = v2[4];

    return [v3 _invalidate];
  }

  return result;
}

void *sub_100100AA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _bleScannerProxPairingDeviceFound:a2];
  }

  return result;
}

void *sub_100100AC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _bleScannerProxPairingDeviceFound:a2];
  }

  return result;
}

void sub_100100ADC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 24))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104360();
      }

      [*(*(a1 + 40) + 24) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 24);
      *(v5 + 24) = 0;

      goto LABEL_7;
    }

    if (dword_100970AB0 <= 30)
    {
      v8 = 0;
      if (dword_100970AB0 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
      {
        sub_1001043A0();
LABEL_7:
        v4 = v8;
      }
    }
  }
}

void *sub_100100E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[2])
  {
    return [result _bleScannerNearbyInfoDeviceFound:a2];
  }

  return result;
}

void *sub_100100E1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[2])
  {
    return [result _bleScannerNearbyInfoDeviceFound:a2];
  }

  return result;
}

void sub_100100E38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001043F4();
      }

      [*(*(a1 + 40) + 16) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 16);
      *(v5 + 16) = 0;

      goto LABEL_7;
    }

    if (dword_100970AB0 <= 30)
    {
      v8 = 0;
      if (dword_100970AB0 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
      {
        sub_100104434();
LABEL_7:
        v4 = v8;
      }
    }
  }
}

void sub_1001010C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104488();
      }

      [*(*(a1 + 40) + 8) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_100970AB0 <= 30)
    {
      v8 = 0;
      if (dword_100970AB0 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
      {
        sub_1001044C8();
LABEL_7:
        v4 = v8;
      }
    }
  }
}

void sub_10010158C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 112))
  {
    v8 = v3;
    if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_100104544();
    }

    [*(*(a1 + 40) + 112) invalidate];
    v4 = *(a1 + 40);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;

    *(*(a1 + 40) + 84) = 3;
    v6 = *(a1 + 40);
    if (v8)
    {
      [v6 _reportError:v8];
    }

    else
    {
      v7 = NSErrorF();
      [v6 _reportError:v7];
    }

    v3 = v8;
  }
}

uint64_t sub_100101690(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 112) && dword_100970AB0 <= 90)
  {
    if (dword_100970AB0 != -1)
    {
      return sub_100104584();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100104584();
    }
  }

  return result;
}

uint64_t sub_1001016E8(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 112) && dword_100970AB0 <= 90)
  {
    if (dword_100970AB0 != -1)
    {
      return sub_1001045A0();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001045A0();
    }
  }

  return result;
}

void *sub_100101740(void *result)
{
  v2 = result[5];
  if (result[4] == *(v2 + 112) && *(v2 + 84) == 1)
  {
    v3 = result;
    *(v2 + 84) = 4;
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001045BC();
    }

    v4 = v3[5];

    return [v4 _run];
  }

  return result;
}

void sub_1001017D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 112))
  {
    v7 = v3;
    v4 = v3;
    if (v4)
    {
      if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001045D8();
      }

      [*(*(a1 + 40) + 112) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 112);
      *(v5 + 112) = 0;

      *(*(a1 + 40) + 84) = 3;
      [*(a1 + 40) _reportError:v4];
    }

    else if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_100104618();
    }

    v3 = v7;
  }
}

void sub_100101A20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 112))
  {
    v5 = v3;
    v4 = v3;
    if (v4)
    {
      if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104650();
      }

      *(*(a1 + 40) + 104) = 3;
      [*(a1 + 40) _reportError:v4];
    }

    else
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104690();
      }

      [*(a1 + 40) _reportProgressTriggeredDevice:210];
      *(*(a1 + 40) + 104) = 4;
      [*(a1 + 40) _run];
    }

    v3 = v5;
  }
}

void sub_100101D94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 112))
  {
    if (v3)
    {
      if (dword_100970AB0 > 90)
      {
LABEL_9:
        [*(a1 + 40) _reportProgressTriggeredDevice:220];
        v5 = *(a1 + 48);
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_100101EC4;
        v6[3] = &unk_1008D0610;
        v7 = *(a1 + 32);
        [v7 sendRequestID:@"_shAu" options:0 request:v5 responseHandler:v6];
        goto LABEL_10;
      }

      if (dword_100970AB0 != -1 || _LogCategory_Initialize())
      {
        sub_1001046E4();
      }
    }

    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_100104724(a1);
    }

    goto LABEL_9;
  }

LABEL_10:
}

void *sub_100101EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[14])
  {
    return [result _runGuestiOSShareAudioProcessResponse:a4 error:a2];
  }

  return result;
}

void sub_100102054(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = (a1 + 5);
  if (a1[4] == *(a1[5] + 112))
  {
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001047E8(v6);
    }

    objc_storeStrong((a1[5] + 88), a2);
    v17 = 0;
    v9 = a1[6];
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    v11 = a1[5];
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (*(a1[5] + 40))
    {
      v13 = a1[6];
      *(a1[5] + 48) = CFDictionaryGetInt64Ranged();
      v14 = a1[6];
      *(a1[5] + 64) = CFDictionaryGetInt64Ranged();
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104854((a1 + 5));
      }

      *(*v8 + 30) = 4;
      [*v8 _run];
    }

    else
    {
      if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001048A4(&v17);
      }

      *(*v8 + 30) = 3;
      v15 = *v8;
      v16 = NSErrorF();
      [v15 _reportError:v16];
    }
  }
}

void sub_1001024B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 56))
  {
    v5 = v3;
    v4 = v3;
    if (v4)
    {
      if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_10010492C();
      }

      *(*(a1 + 40) + 52) = 3;
      [*(a1 + 40) _reportError:v4];
    }

    else
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_10010496C();
      }

      *(*(a1 + 40) + 52) = 4;
      [*(a1 + 40) _reportProgressTriggeredDevice:310];
      [*(a1 + 40) _run];
    }

    v3 = v5;
  }
}

id sub_1001032C0(uint64_t a1)
{
  if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
  {
    sub_100105050();
  }

  v2 = *(a1 + 32);

  return [v2 _pickableRoutesChanged];
}

void *sub_100103B58(void *result)
{
  v1 = result;
  if (dword_100970AB0 <= 30)
  {
    if (dword_100970AB0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_100105288();
    }
  }

  v2 = v1[4];
  if (*(v2 + 32) == 1)
  {
    *(v2 + 32) = 4;
    v3 = v1[4];

    return [v3 _run];
  }

  return result;
}

Class sub_100103D08()
{
  if (qword_100989D08 != -1)
  {
    sub_1001052A4();
  }

  result = objc_getClass("AVSystemController");
  qword_100989D00 = result;
  off_100970B20[0] = sub_100103D5C;
  return result;
}

id sub_100103D94()
{
  if (qword_100989D18 != -1)
  {
    sub_1001052B8();
  }

  v1 = qword_100989CE0;

  return v1;
}

void sub_100103DD8(id a1)
{
  if (qword_100989D08 != -1)
  {
    sub_1001052A4();
  }

  v1 = dlsym(qword_100989D10, "AVSystemController_PickableRoutesDidChangeNotification");
  if (v1)
  {
    objc_storeStrong(&qword_100989CE0, *v1);
  }

  off_100970B28 = sub_100103E40;
}

id sub_100103E4C()
{
  if (qword_100989D20 != -1)
  {
    sub_1001052CC();
  }

  v1 = qword_100989CF8;

  return v1;
}

void sub_100103E90(id a1)
{
  if (qword_100989D08 != -1)
  {
    sub_1001052A4();
  }

  v1 = dlsym(qword_100989D10, "AVSystemController_SubscribeToNotificationsAttribute");
  if (v1)
  {
    objc_storeStrong(&qword_100989CF8, *v1);
  }

  off_100970B30 = sub_100103EF8;
}

id sub_100103F04()
{
  if (qword_100989D28 != -1)
  {
    sub_1001052E0();
  }

  v1 = qword_100989CD8;

  return v1;
}

void sub_100103F48(id a1)
{
  if (qword_100989D08 != -1)
  {
    sub_1001052A4();
  }

  v1 = dlsym(qword_100989D10, "AVSystemController_PickableRoutesAttribute");
  if (v1)
  {
    objc_storeStrong(&qword_100989CD8, *v1);
  }

  off_100970B38 = sub_100103FB0;
}

id sub_100103FBC()
{
  if (qword_100989D30 != -1)
  {
    sub_1001052F4();
  }

  v1 = qword_100989CE8;

  return v1;
}

void sub_100104000(id a1)
{
  if (qword_100989D08 != -1)
  {
    sub_1001052A4();
  }

  v1 = dlsym(qword_100989D10, "AVSystemController_RouteDescriptionKey_RouteCurrentlyPicked");
  if (v1)
  {
    objc_storeStrong(&qword_100989CE8, *v1);
  }

  off_100970B40[0] = sub_100104068;
}

id sub_100104074()
{
  if (qword_100989D38 != -1)
  {
    sub_100105308();
  }

  v1 = qword_100989CF0;

  return v1;
}

void sub_1001040B8(id a1)
{
  if (qword_100989D08 != -1)
  {
    sub_1001052A4();
  }

  v1 = dlsym(qword_100989D10, "AVSystemController_RouteDescriptionKey_RouteUID");
  if (v1)
  {
    objc_storeStrong(&qword_100989CF0, *v1);
  }

  off_100970B48 = sub_100104120;
}

void sub_1001047E8(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

uint64_t sub_100104854(uint64_t a1)
{
  v3 = *(*a1 + 64);
  v2 = *(*a1 + 40);
  return LogPrintF();
}

uint64_t sub_100104A84(uint64_t result)
{
  if (dword_100970AB0 <= 10)
  {
    v1 = result;
    if (dword_100970AB0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(v1 + 192);
      return LogPrintF();
    }
  }

  return result;
}

void sub_100104B18()
{
  if (dword_100970AB0 <= 10)
  {
    sub_100019C80();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100104B90()
{
  if (dword_100970AB0 <= 10)
  {
    sub_100019C80();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100104C08()
{
  if (dword_100970AB0 <= 10)
  {
    sub_100019C80();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100104C80()
{
  if (dword_100970AB0 <= 10)
  {
    sub_100019C80();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100104CF8()
{
  if (dword_100970AB0 <= 10)
  {
    sub_100019C80();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100104D70()
{
  if (dword_100970AB0 <= 50)
  {
    sub_100019C80();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

uint64_t sub_100104E04()
{
  if (dword_100970AB0 <= 10)
  {
    if (dword_100970AB0 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_100104ED4()
{
  if (dword_100970AB0 <= 90)
  {
    sub_100019C80();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100104F54()
{
  if (dword_100970AB0 <= 90)
  {
    sub_100019C80();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

uint64_t sub_100104FD0()
{
  if (dword_100970AB0 <= 10)
  {
    if (dword_100970AB0 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_100105AB4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 transfer];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Create destination for %@ failed %@", &v6, 0x16u);
}

uint64_t SDUnlockStashKeyExchangeRequestReadFrom(uint64_t a1, void *a2)
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

void sub_1001067A8(NSObject *a1, int a2, uint64_t a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = a4;
  dispatch_assert_queue_V2(v8[5]);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (dword_100970B50 <= 60 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
      {
        sub_100106D8C();
      }

      goto LABEL_24;
    }

    if (a2 != 3)
    {
      goto LABEL_14;
    }

    if (dword_100970B50 <= 60 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
    {
      sub_100106D4C();
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (dword_100970B50 <= 30 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
        {
          sub_100106DAC();
        }

LABEL_24:
        v8[4] = 0;
        *(v8 + 8) = 0;
        BTSessionDetachWithQueue();
        CFRelease(v8);
        goto LABEL_25;
      }

LABEL_14:
      if (dword_100970B50 <= 40 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_25;
    }

    if (dword_100970B50 <= 30 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
    {
      sub_100106DEC();
    }

    v8[4] = a1;
    *(v8 + 8) = 0;
    [(dispatch_queue_t *)v8 requestEngravingInfo];
  }

LABEL_25:

  objc_autoreleasePoolPop(v7);
}

void sub_100106988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a6;
  dispatch_assert_queue_V2(v9[5]);
  v8 = [NSData dataWithBytes:a4 length:a5];
  if (dword_100970B50 <= 30 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
  {
    sub_100106E2C();
  }

  [(dispatch_queue_t *)v9 handleEngravingData:v8];
}

void sub_10010726C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] != -10814)
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001077B8(a1, v7, v8);
      }
    }
  }

  else
  {
    [*(a1 + 32) setAppLink:v5];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1001076A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001076D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained transfer];
  v2 = [v1 completedURLs];
  v3 = [WeakRetained openURLs:v2];

  v4 = [WeakRetained completionHandler];
  (v4)[2](v4, v3, 0, 1);
}

void sub_1001077B8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = NSStringFromSelector(*(a1 + 56));
  v7 = *(a1 + 40);
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@ Failed to generate app link for %@ (%@)", &v8, 0x20u);
}

uint64_t SDAuthenticationPairingResponseReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = 16;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_46;
          }

          v14 = PBReaderReadData();
          v15 = 32;
        }

LABEL_49:
        v31 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_83;
      }

      if (v13 == 6)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 52) |= 1u;
        while (1)
        {
          v47 = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v47 & 0x7F) << v32;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v34;
        }

LABEL_75:
        v44 = 8;
LABEL_82:
        *(a1 + v44) = v29;
        goto LABEL_83;
      }

      if (v13 != 7)
      {
LABEL_46:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_83;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 52) |= 8u;
      while (1)
      {
        v50 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v50 & 0x7F) << v16;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_77;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_77:
      *(a1 + 48) = v22;
LABEL_83:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 52) |= 4u;
      while (1)
      {
        v49 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v49 & 0x7F) << v23;
        if ((v49 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_71;
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

LABEL_71:
      v44 = 44;
      goto LABEL_82;
    }

    if (v13 == 2)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      *(a1 + 52) |= 2u;
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
          v29 = 0;
          goto LABEL_81;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v40;
      }

LABEL_81:
      v44 = 40;
      goto LABEL_82;
    }

    if (v13 != 3)
    {
      goto LABEL_46;
    }

    v14 = PBReaderReadString();
    v15 = 24;
    goto LABEL_49;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100108C78(void *a1)
{
  v1 = a1;
  memset(v6, 0, 14);
  if ([v1 length])
  {
    v2 = [v1 length];
    if (v2 >= 0xE)
    {
      v3 = 14;
    }

    else
    {
      v3 = v2;
    }

    [v1 getBytes:v6 length:v3];
  }

  else
  {
    v4 = handoff_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10010948C(v1, v4);
    }
  }

  return v6[0];
}

id sub_100108D20(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = a2;
  v7 = WORD2(a2);
  v2 = 5;
  while (!*(&v5 + v2))
  {
    if (++v2 == 14)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3 = [NSData dataWithBytes:&v5 + 5 length:9, v5];
LABEL_6:

  return v3;
}

id sub_100108D9C(unint64_t a1, uint64_t a2, int a3)
{
  v5 = objc_opt_new();
  v6 = [NSNumber numberWithInteger:a1 & 1];
  [v5 setObject:v6 forKeyedSubscript:SFActivityAdvertiserOptionVersionKey];

  v7 = [NSNumber numberWithInteger:(a1 >> 1) & 3];
  [v5 setObject:v7 forKeyedSubscript:SFActivityAdvertiserOptionMinorVersionKey];

  v8 = [NSNumber numberWithBool:(a1 >> 3) & 1];
  [v5 setObject:v8 forKeyedSubscript:SFActivityAdvertiserOptionFlagCopyPasteKey];

  if ((a1 & 0x100000000) != 0)
  {
    v9 = off_100970BC0();
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:v9];
  }

  if (a3)
  {
    v10 = off_100970BC8();
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:v10];
  }

  return v5;
}

id sub_100108EE8(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_opt_new();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 uniqueIDOverride];
  [v2 setUniqueID:v3];

  v4 = [v1 modelIdentifier];
  [v2 setModelIdentifier:v4];

  v5 = [v1 productName];
  [v2 setProductName:v5];

  v6 = [v1 productVersion];
  [v2 setProductVersion:v6];

  v7 = [v1 productBuildVersion];
  [v2 setProductBuildVersion:v7];

  v8 = [v1 name];
  [v2 setName:v8];

  v9 = [v1 enclosureColor];
  [v2 setEnclosureColor:v9];

  [v2 setDefaultPairedDevice:{objc_msgSend(v1, "isDefaultPairedDevice")}];

  return v2;
}

void sub_10010903C(int a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v14[0] = @"type";
    v6 = a3;
    v7 = [NSNumber numberWithInt:0];
    v15[0] = v7;
    v14[1] = @"success";
    v8 = [NSNumber numberWithBool:a2];
    v15[1] = v8;
    v14[2] = @"timeSinceLastRequest";
    v9 = [NSNumber numberWithLong:0];
    v15[2] = v9;
    v14[3] = @"errorCode";
    v10 = [NSNumber numberWithLong:a4];
    v11 = v10;
    v14[4] = @"errorDomain";
    v12 = &stru_1008EFBD0;
    if (v6)
    {
      v12 = v6;
    }

    v15[3] = v10;
    v15[4] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];

    SFMetricsLog();
  }
}

void sub_1001091AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = @"oldKeyPresent";
  v7 = [NSNumber numberWithBool:a1];
  v13[0] = v7;
  v12[1] = @"oldKeyCounter";
  v8 = [NSNumber numberWithLong:a2];
  v13[1] = v8;
  v12[2] = @"newKeyCounter";
  v9 = [NSNumber numberWithLong:a3];
  v13[2] = v9;
  v12[3] = @"timeBetweenKeyCreations";
  v10 = [NSNumber numberWithLong:a4];
  v13[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  SFMetricsLog();
}

id sub_1001092F0()
{
  if (qword_100989D50 != -1)
  {
    sub_100109528();
  }

  v1 = qword_100989D40;

  return v1;
}

void sub_100109334(id a1)
{
  if (qword_100989D58 != -1)
  {
    sub_10010953C();
  }

  v1 = dlsym(qword_100989D60, "UAUserActivityIsForPairedDeviceOptionKey");
  if (v1)
  {
    objc_storeStrong(&qword_100989D40, *v1);
  }

  off_100970BC0 = sub_10010939C;
}

id sub_1001093D4()
{
  if (qword_100989D68 != -1)
  {
    sub_100109550();
  }

  v1 = qword_100989D48;

  return v1;
}

void sub_100109418(id a1)
{
  if (qword_100989D58 != -1)
  {
    sub_10010953C();
  }

  v1 = dlsym(qword_100989D60, "UAUserActivityIsHighPriorityOptionKey");
  if (v1)
  {
    objc_storeStrong(&qword_100989D48, *v1);
  }

  off_100970BC8 = sub_100109480;
}

void sub_10010948C(void *a1, NSObject *a2)
{
  v3 = 134218240;
  v4 = [a1 length];
  v5 = 2048;
  v6 = 14;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Ignoring advertisment data as it is of incorrect size %lu, expected %zu", &v3, 0x16u);
}

void sub_1001095D0(id a1)
{
  v1 = qword_100989D70;
  qword_100989D70 = &off_10090FFE0;
}

void sub_10010A1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010A218(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained notifyDelegate];
}

void sub_10010A5C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10010A5E8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained notifyDelegate];
}

id sub_10010B7A0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 notifyDelegate];
}

id sub_10010B8BC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 notifyDelegate];
}

id sub_10010BA54(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 notifyDelegate];
}

id sub_10010BB70(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 notifyDelegate];
}

id sub_10010BD54(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 notifyDelegate];
}

void sub_10010BEA8(uint64_t a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010BF58;
  v4[3] = &unk_1008D0868;
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  [v2 listEligibleDevicesFor:v3 completionHandler:v4];
}

void sub_10010C184(void *a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 enableFor:a1[8] deviceID:a1[4] passcode:a1[5] sessionID:a1[6] delegate:a1[7]];
}

void sub_10010C35C(void *a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 requestEnablementFor:a1[7] deviceID:a1[4] sessionID:a1[5] delegate:a1[6]];
}

void sub_10010C530(void *a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 disableFor:a1[7] idsDeviceID:a1[4] sessionID:a1[5] delegate:a1[6]];
}

void sub_10010C704(void *a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 canAuthenticateFor:a1[7] options:a1[4] sessionID:a1[5] delegate:a1[6]];
}

void sub_10010C8D8(void *a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 authenticateFor:a1[7] sessionID:a1[4] options:a1[5] delegate:a1[6]];
}

void sub_10010CA3C(uint64_t a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 cancel:*(a1 + 32)];
}

void sub_10010CBC0(uint64_t a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 registerForApprovalRequestsFor:*(a1 + 40) delegate:*(a1 + 32)];
}

void sub_10010CCFC(uint64_t a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 addAuthenticationStateChangesObserver:*(a1 + 32) identifier:*(a1 + 40)];
}

void sub_10010CE18(uint64_t a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 removeAuthenticationStateChangesObserverFor:*(a1 + 32)];
}

void sub_10010CFC0(void *a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 reportApprovalResultWithAcmToken:a1[4] error:a1[5] sessionID:a1[6]];
}

void sub_10010D124(uint64_t a1)
{
  v2 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v2 getEnabledAuthenticationTypesWithCompletionHandler:*(a1 + 32)];
}

void sub_10010D858(void *a1, NSObject *a2)
{
  v3 = [a1 bundleID];
  v4 = +[NSXPCConnection currentConnection];
  v5 = 138412802;
  v6 = v3;
  v7 = 1024;
  v8 = [v4 processIdentifier];
  v9 = 2112;
  v10 = @"com.apple.private.sharing.unlock-manager";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client (%@-%d) does not have unlock manager entitlement = %@", &v5, 0x1Cu);
}

const __CFString *sub_10010DF6C(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"?";
  }

  else
  {
    return *(&off_1008D0978 + a1 - 1);
  }
}

void sub_10010E240()
{
  v1[0] = 136315394;
  sub_100008934();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s transferIdentifier: %@", v1, 0x16u);
}

void sub_10010E2C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SDAirDropListener didReceiveError %@", &v2, 0xCu);
}

void sub_10010E338()
{
  v3[0] = 138412802;
  sub_100008934();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "SDNetworkOperationCallBack (event = %@, recordID = %@ , error = %@)", v3, 0x20u);
}

void sub_10010E3C4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = a1;
  v6 = 138412802;
  v7 = sub_10010DF6C(a1);
  v8 = 1024;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "SDNetworkOperationDelegate UNHANDLED EVENT %@ [%d] %@", &v6, 0x1Cu);
}

void sub_10010E478(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [a2 objectForKeyedSubscript:kSFOperationBytesCopiedKey];
  [v6 doubleValue];
  v8 = v7;
  v9 = [a2 objectForKeyedSubscript:kSFOperationTotalBytesKey];
  [v9 doubleValue];
  v11 = 138412802;
  v12 = @"Progress";
  v13 = 2112;
  v14 = a1;
  v15 = 2048;
  v16 = v8 / v10;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "SDNetworkOperationCallBack (event = %@, recordID = %@, progress = %f)", &v11, 0x20u);
}

uint64_t SDAutoUnlockDeviceRegistrationStepReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if (v13 != 2)
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
        *(a1 + 28) |= 2u;
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
        v30 = 24;
        goto LABEL_49;
      }

      v21 = PBReaderReadData();
      v22 = *(a1 + 16);
      *(a1 + 16) = v21;

LABEL_50:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(a1 + 28) |= 1u;
    while (1)
    {
      v33 = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v25 |= (v33 & 0x7F) << v23;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v11 = v24++ >= 9;
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
      v20 = v25;
    }

LABEL_44:
    v30 = 8;
LABEL_49:
    *(a1 + v30) = v20;
    goto LABEL_50;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDUnlockDisableReadFrom(uint64_t a1, void *a2)
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

void sub_10010F888(void *a1)
{
  v1 = a1;
  v190 = 0;
  v191 = &v190;
  v192 = 0x2020000000;
  v193 = 0;
  v2 = SDAutoUnlockManagerMetricSuccessKey;
  v3 = [v1 objectForKeyedSubscript:SDAutoUnlockManagerMetricSuccessKey];
  [v3 BOOLValue];

  v4 = SDAutoUnlockManagerMetricErrorCodeKey;
  v5 = [v1 objectForKeyedSubscript:SDAutoUnlockManagerMetricErrorCodeKey];
  [v5 integerValue];

  v6 = *(v191 + 24);
  v7 = v1;
  v8 = [v7 objectForKeyedSubscript:@"SDAutoUnlockBypassMetricLog"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Logging AutoUnlock attempt results bypassed.", buf, 2u);
    }

    goto LABEL_124;
  }

  v11 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricBluetoothKeyDeviceDiscoveryKey];
  [v11 doubleValue];
  v186 = v12;

  v13 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricBluetoothProxyDeviceDiscoveryKey];
  [v13 doubleValue];
  v184 = v14;

  v15 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricBluetoothProxyConnectionKey];
  [v15 doubleValue];
  v182 = v16;

  v17 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricBluetoothKeyConnectionKey];
  [v17 doubleValue];
  v180 = v18;

  v19 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricPrewarmTimeKey];
  [v19 doubleValue];
  v173 = v20;

  v21 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricBluetoothAWDLExchangeKey];
  [v21 doubleValue];
  v178 = v22;

  v23 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricBluetoothKeyRequestExchangeKey];
  [v23 doubleValue];
  v175 = v24;

  v25 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricBluetoothTokenExchangeKey];
  [v25 doubleValue];
  v171 = v26;

  v27 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricAWDLBringUpKey];
  [v27 doubleValue];
  v168 = v28;

  v29 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricAWDLPeerFoundKey];
  [v29 doubleValue];
  v31 = v30;

  v32 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricAWDLRangingKey];
  [v32 doubleValue];
  v34 = v33;

  v35 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricDisplayWaitKey];
  [v35 doubleValue];
  v37 = v36;

  v38 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricClamshellWaitKey];
  [v38 doubleValue];
  v40 = v39;

  v41 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricBluetoothConfirmationKey];
  [v41 doubleValue];
  v43 = v42;

  v44 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricAttemptTimeKey];
  [v44 doubleValue];
  v46 = v45;

  v47 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricTimeKey];
  [v47 doubleValue];
  v49 = v48;

  v50 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricCancelTimeKey];
  [v50 doubleValue];
  v163 = v51;

  v52 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricDistanceKey];
  [v52 doubleValue];
  v165 = v53;

  v54 = +[SDStatusMonitor sharedMonitor];
  v189 = [v54 lastDarkWakeDate];

  if (v189)
  {
    v55 = +[NSDate date];
    [v55 timeIntervalSinceDate:v189];
    v57 = v56;

    v58 = v57;
    if (v57 != -1 && v58 >= 100)
    {
      v59 = log10(v58);
      v60 = __exp10((2 - vcvtpd_s64_f64(v59)));
      v58 = (round(v60 * v58) / v60);
    }
  }

  else
  {
    v58 = -1;
  }

  v61 = auto_unlock_log();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v189;
    *&buf[12] = 2048;
    *&buf[14] = v58;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Last dark wake (date: %@, rounded seconds: %lld)", buf, 0x16u);
  }

  v62 = SDAutoUnlockManagerMetricTimeSinceLastWakeKey;
  v63 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricTimeSinceLastWakeKey];
  if ([v63 integerValue])
  {
    v64 = [v7 objectForKeyedSubscript:v62];
    v65 = [v64 integerValue];

    if (v65 != -1)
    {
      if (v65 >= 100)
      {
        v66 = log10(v65);
        v67 = __exp10((2 - vcvtpd_s64_f64(v66)));
        v65 = (round(v67 * v65) / v67);
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  v65 = 0xFFFFFFFFLL;
LABEL_17:
  v68 = auto_unlock_log();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v65;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Rounded time since last wake %d", buf, 8u);
  }

  v194[0] = @"deviceModel";
  v69 = SDAutoUnlockManagerMetricKeyDeviceModelKey;
  v177 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricKeyDeviceModelKey];
  if (v177)
  {
    v70 = [v7 objectForKeyedSubscript:v69];
  }

  else
  {
    v70 = &stru_1008EFBD0;
  }

  v137 = v70;
  *buf = v70;
  v194[1] = @"proxyModel";
  v71 = SDAutoUnlockManagerMetricProxyDeviceModelKey;
  v170 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceModelKey];
  if (v170)
  {
    v72 = [v7 objectForKeyedSubscript:v71];
  }

  else
  {
    v72 = &stru_1008EFBD0;
  }

  v136 = v72;
  *&buf[8] = v72;
  v194[2] = @"usingProxy";
  v73 = SDAutoUnlockManagerMetricUsingProxyDeviceKey;
  v188 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricUsingProxyDeviceKey];
  if (v188)
  {
    v74 = [v7 objectForKeyedSubscript:v73];
  }

  else
  {
    v74 = &off_10090BB68;
  }

  v135 = v74;
  *&buf[16] = v74;
  v194[3] = @"bleKeyDiscoveryTime";
  v161 = [NSNumber numberWithUnsignedInt:(v186 * 1000.0)];
  v196 = v161;
  v194[4] = @"bleProxyDiscoveryTime";
  v160 = [NSNumber numberWithUnsignedInt:(v184 * 1000.0)];
  v197 = v160;
  v194[5] = @"bleProxyConnectionTime";
  v159 = [NSNumber numberWithUnsignedInt:(v182 * 1000.0)];
  v198 = v159;
  v194[6] = @"bleKeyConnectionTime";
  v158 = [NSNumber numberWithUnsignedInt:(v180 * 1000.0)];
  v199 = v158;
  v194[7] = @"bleAWDLInfoXTime";
  v157 = [NSNumber numberWithUnsignedInt:(v178 * 1000.0)];
  v200 = v157;
  v194[8] = @"bleKeyReqXTime";
  v156 = [NSNumber numberWithUnsignedInt:(v175 * 1000.0)];
  v201 = v156;
  v194[9] = @"bleAuthTokXTime";
  v155 = [NSNumber numberWithUnsignedInt:(v171 * 1000.0)];
  v202 = v155;
  v194[10] = @"awdlBringUpTime";
  v154 = [NSNumber numberWithUnsignedInt:(v168 * 1000.0)];
  v203 = v154;
  v194[11] = @"awdlPeerDiscoveryTime";
  v153 = [NSNumber numberWithUnsignedInt:(v31 * 1000.0)];
  v204 = v153;
  v194[12] = @"awdlRangingTime";
  v152 = [NSNumber numberWithUnsignedInt:(v34 * 1000.0)];
  v205 = v152;
  v194[13] = @"displayWaitTime";
  v151 = [NSNumber numberWithUnsignedInt:(v37 * 1000.0)];
  v206 = v151;
  v194[14] = @"clamshellWaitTime";
  v150 = [NSNumber numberWithUnsignedInt:(v40 * 1000.0)];
  v207 = v150;
  v194[15] = @"bleConfTime";
  v149 = [NSNumber numberWithUnsignedInt:(v43 * 1000.0)];
  v208 = v149;
  v194[16] = @"totalUnlockTime";
  v148 = [NSNumber numberWithUnsignedInt:(v49 * 1000.0)];
  v209 = v148;
  v194[17] = @"prewarmTime";
  v147 = [NSNumber numberWithUnsignedInt:(v173 * 1000.0)];
  v210 = v147;
  v194[18] = @"attemptTime";
  v146 = [NSNumber numberWithUnsignedInt:(v46 * 1000.0)];
  v211 = v146;
  v194[19] = @"success";
  v169 = [v7 objectForKeyedSubscript:v2];
  if (v169)
  {
    v75 = [v7 objectForKeyedSubscript:v2];
  }

  else
  {
    v75 = &off_10090BB68;
  }

  v134 = v75;
  v212 = v75;
  v194[20] = @"errorType";
  v76 = SDAutoUnlockManagerMetricErrorTypeKey;
  v176 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricErrorTypeKey];
  if (v176)
  {
    v77 = [v7 objectForKeyedSubscript:v76];
  }

  else
  {
    v77 = &off_10090BB80;
  }

  v133 = v77;
  v213 = v77;
  v194[21] = @"errorDomain";
  v78 = SDAutoUnlockManagerMetricErrorDomainKey;
  v167 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricErrorDomainKey];
  if (v167)
  {
    v79 = [v7 objectForKeyedSubscript:v78];
  }

  else
  {
    v79 = &stru_1008EFBD0;
  }

  v132 = v79;
  v214 = v79;
  v194[22] = @"errorCode";
  v179 = [v7 objectForKeyedSubscript:v4];
  if (v179)
  {
    v80 = [v7 objectForKeyedSubscript:v4];
  }

  else
  {
    v80 = &off_10090BB80;
  }

  v131 = v80;
  v215 = v80;
  v194[23] = @"distance";
  v145 = [NSNumber numberWithUnsignedInt:(v165 * 100.0)];
  v216 = v145;
  v194[24] = @"keyRSSI";
  v81 = SDAutoUnlockManagerMetricKeyDeviceRSSIKey;
  v166 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricKeyDeviceRSSIKey];
  if (v166)
  {
    v82 = [v7 objectForKeyedSubscript:v81];
  }

  else
  {
    v82 = &off_10090BB80;
  }

  v130 = v82;
  v217 = v82;
  v194[25] = @"proxyRSSI";
  v83 = SDAutoUnlockManagerMetricProxyDeviceRSSIKey;
  v174 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceRSSIKey];
  v84 = &off_10090BB80;
  if (v174)
  {
    v84 = [v7 objectForKeyedSubscript:v83];
  }

  v129 = v84;
  v218 = v84;
  v194[26] = @"withinRange";
  v85 = SDAutoUnlockManagerMetricWithinRangeKey;
  v185 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricWithinRangeKey];
  if (v185)
  {
    v86 = [v7 objectForKeyedSubscript:v85];
  }

  else
  {
    v86 = &off_10090BB68;
  }

  v128 = v86;
  v219 = v86;
  v194[27] = @"attemptPrewarmed";
  v144 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricPrewarmKey];
  v87 = v144;
  if (!v144)
  {
    v87 = &off_10090BB80;
  }

  v220 = v87;
  v194[28] = @"detectedMask";
  v143 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricMaskKey];
  v88 = v143;
  if (!v143)
  {
    v88 = &off_10090BB80;
  }

  v221 = v88;
  v194[29] = @"usingTool";
  v89 = SDAutoUnlockManagerMetricUsingToolKey;
  v183 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricUsingToolKey];
  if (v183)
  {
    v90 = [v7 objectForKeyedSubscript:v89];
  }

  else
  {
    v90 = &off_10090BB68;
  }

  v127 = v90;
  v222 = v90;
  v194[30] = @"cancelTime";
  v142 = [NSNumber numberWithUnsignedInt:(v163 * 1000.0)];
  v223 = v142;
  v194[31] = @"clamshellClosed";
  v141 = [NSNumber numberWithBool:0];
  v224 = v141;
  v194[32] = @"btConnectedDevices";
  v91 = SDAutoUnlockManagerMetricConnectedBluetoothDevicesKey;
  v164 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricConnectedBluetoothDevicesKey];
  if (v164)
  {
    v92 = [v7 objectForKeyedSubscript:v91];
  }

  else
  {
    v92 = &off_10090BB68;
  }

  v126 = v92;
  v225 = v92;
  v194[33] = @"lastWake";
  v172 = [v7 objectForKeyedSubscript:v62];
  if (v172)
  {
    v93 = [NSNumber numberWithInt:v65];
  }

  else
  {
    v93 = &off_10090BB68;
  }

  v125 = v93;
  v226 = v93;
  v194[34] = @"lastSleepType";
  v94 = SDAutoUnlockManagerMetricLastSleepTypeKey;
  v181 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricLastSleepTypeKey];
  if (v181)
  {
    v95 = [v7 objectForKeyedSubscript:v94];
  }

  else
  {
    v95 = &off_10090BB68;
  }

  v124 = v95;
  v227 = v95;
  v194[35] = @"externalDisplay";
  v140 = [NSNumber numberWithBool:v6];
  v228 = v140;
  v194[36] = @"lastDarkWake";
  v139 = [NSNumber numberWithLongLong:v58];
  v229 = v139;
  v194[37] = @"cancelReason";
  v96 = SDAutoUnlockManagerMetricCancelReasonKey;
  v162 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricCancelReasonKey];
  if (v162)
  {
    v97 = [v7 objectForKeyedSubscript:v96];
  }

  else
  {
    v97 = &off_10090BB68;
  }

  v230 = v97;
  v194[38] = @"attemptType";
  v98 = SDAutoUnlockManagerMetricAttemptTypeKey;
  v187 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricAttemptTypeKey];
  if (v187)
  {
    v99 = [v7 objectForKeyedSubscript:v98];
  }

  else
  {
    v99 = &off_10090BB68;
  }

  v123 = v99;
  v231 = v99;
  v194[39] = @"watchBuildVersion";
  v138 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricWatchBuildVersionKey];
  v100 = v138;
  if (!v138)
  {
    v100 = &stru_1008EFBD0;
  }

  v232 = v100;
  v194[40] = @"watchOSVersion";
  v101 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricWatchOSVersionKey];
  v102 = v101;
  if (v101)
  {
    v103 = v101;
  }

  else
  {
    v103 = &stru_1008EFBD0;
  }

  v233 = v103;
  v194[41] = @"autoRelock";
  v104 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricAutoRelockKey];
  v105 = v104;
  if (v104)
  {
    v106 = v104;
  }

  else
  {
    v106 = &__kCFBooleanFalse;
  }

  v234 = v106;
  v194[42] = @"manualRelock";
  v107 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricManualRelockKey];
  v108 = v107;
  if (v107)
  {
    v109 = v107;
  }

  else
  {
    v109 = &__kCFBooleanFalse;
  }

  v235 = v109;
  v194[43] = @"autoRelockWindowExpired";
  v110 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricAutoRelockWindowExpiredKey];
  v111 = v110;
  if (v110)
  {
    v112 = v110;
  }

  else
  {
    v112 = &__kCFBooleanFalse;
  }

  v236 = v112;
  v194[44] = @"autoRelockTimerCanceled";
  v113 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricAutoRelockTimerCanceledKey];
  v114 = v113;
  v115 = &off_10090BB80;
  if (v113)
  {
    v115 = v113;
  }

  v237 = v115;
  v194[45] = @"unintentionalAttempt";
  v116 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricUnintentionalAttemptKey];
  v117 = v116;
  if (v116)
  {
    v118 = v116;
  }

  else
  {
    v118 = &off_10090BB68;
  }

  v238 = v118;
  v194[46] = @"periocularStatus";
  v119 = [v7 objectForKeyedSubscript:SDAutoUnlockManagerMetricPeriocularStatus];
  v120 = v119;
  v121 = &off_10090BB80;
  if (v119)
  {
    v121 = v119;
  }

  v239 = v121;
  v122 = [NSDictionary dictionaryWithObjects:buf forKeys:v194 count:47];
  SFMetricsLog();

  if (v187)
  {
  }

  if (v162)
  {
  }

  if (v181)
  {
  }

  if (v172)
  {
  }

  if (v164)
  {
  }

  if (v183)
  {
  }

  if (v185)
  {
  }

  if (v174)
  {
  }

  if (v166)
  {
  }

  if (v179)
  {
  }

  if (v167)
  {
  }

  if (v176)
  {
  }

  if (v169)
  {
  }

  if (v188)
  {
  }

  if (v170)
  {
  }

  if (v177)
  {
  }

  v10 = v189;
LABEL_124:

  _Block_object_dispose(&v190, 8);
}

void sub_100110D88(void *a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, void *a6, unsigned int a7, unsigned int a8, double a9, double a10, void *a11, unsigned __int8 a12, unsigned int a13, unsigned __int8 a14, unsigned int a15, unsigned __int8 a16, unsigned __int8 a17, unsigned int a18, unsigned int a19, unsigned int a20, unsigned int a21, void *a22, void *a23, unsigned __int8 a24, unsigned __int8 a25)
{
  v30 = a1;
  v31 = a2;
  v32 = a6;
  v33 = a11;
  v76 = a22;
  v75 = a23;
  v77 = v33;
  if (v33 && (+[NSDate date](NSDate, "date"), v34 = objc_claimAutoreleasedReturnValue(), [v34 timeIntervalSinceDate:v33], v36 = v35, v34, v36))
  {
    v37 = log10(v36);
    v38 = __exp10((2 - vcvtpd_s64_f64(v37)));
    v39 = (round(v38 * v36) / v38);
  }

  else
  {
    v39 = 0;
  }

  v74 = v30;
  if (v30)
  {
    v40 = v30;
  }

  else
  {
    v40 = &stru_1008EFBD0;
  }

  v78[0] = @"deviceModel";
  v78[1] = @"companionModel";
  v73 = v31;
  if (v31)
  {
    v41 = v31;
  }

  else
  {
    v41 = &stru_1008EFBD0;
  }

  v79[0] = v40;
  v79[1] = v41;
  v78[2] = @"deviceLocked";
  v72 = [NSNumber numberWithBool:a3];
  v79[2] = v72;
  v78[3] = @"keyRequestXTime";
  v71 = [NSNumber numberWithUnsignedInt:(a9 * 1000.0)];
  v79[3] = v71;
  v78[4] = @"tokenXTime";
  v69 = [NSNumber numberWithUnsignedInt:(a10 * 1000.0)];
  v79[4] = v69;
  v78[5] = @"success";
  v68 = [NSNumber numberWithBool:a4];
  v79[5] = v68;
  v78[6] = @"errorType";
  v42 = [NSNumber numberWithUnsignedInt:a5];
  v64 = v42;
  v70 = v32;
  if (v32)
  {
    v43 = v32;
  }

  else
  {
    v43 = &stru_1008EFBD0;
  }

  v79[6] = v42;
  v79[7] = v43;
  v78[7] = @"errorDomain";
  v78[8] = @"errorCode";
  v61 = [NSNumber numberWithUnsignedInt:a7];
  v79[8] = v61;
  v78[9] = @"watchExistedInUnlockList";
  v59 = [NSNumber numberWithBool:a8];
  v79[9] = v59;
  v78[10] = @"timeIntervalSinceLastWatch";
  v55 = [NSNumber numberWithUnsignedLongLong:v39];
  v79[10] = v55;
  v78[11] = @"upsell";
  v56 = [NSNumber numberWithBool:a12];
  v79[11] = v56;
  v78[12] = @"responseTimeout";
  v57 = [NSNumber numberWithUnsignedInt:a13];
  v79[12] = v57;
  v78[13] = @"responseServer";
  v62 = [NSNumber numberWithBool:a14];
  v79[13] = v62;
  v78[14] = @"messageTimeout";
  v65 = [NSNumber numberWithUnsignedInt:a15];
  v79[14] = v65;
  v78[15] = @"messageServer";
  v66 = [NSNumber numberWithBool:a16];
  v79[15] = v66;
  v78[16] = @"setupRetry";
  v44 = [NSNumber numberWithBool:a17];
  v79[16] = v44;
  v78[17] = @"macOldLTKSyncStatus";
  v45 = [NSNumber numberWithInt:a18];
  v79[17] = v45;
  v78[18] = @"macNewLTKSyncStatus";
  v46 = [NSNumber numberWithInt:a19];
  v79[18] = v46;
  v78[19] = @"watchOldLTKSyncStatus";
  v47 = [NSNumber numberWithInt:a20];
  v79[19] = v47;
  v78[20] = @"watchNewLTKSyncStatus";
  v48 = [NSNumber numberWithInt:a21];
  v49 = v48;
  if (v76)
  {
    v50 = v76;
  }

  else
  {
    v50 = &stru_1008EFBD0;
  }

  v79[20] = v48;
  v79[21] = v50;
  v78[21] = @"watchBuildVersion";
  v78[22] = @"watchOSVersion";
  if (v75)
  {
    v51 = v75;
  }

  else
  {
    v51 = &stru_1008EFBD0;
  }

  v79[22] = v51;
  v78[23] = @"receivedSetupACK";
  v52 = [NSNumber numberWithBool:a24];
  v79[23] = v52;
  v78[24] = @"receivedTokenACK";
  v53 = [NSNumber numberWithBool:a25];
  v79[24] = v53;
  v54 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:25];
  SFMetricsLog();
}

id sub_10011137C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v3 = [v1 objectForKeyedSubscript:@"AWDL_INFO_SUPPORTED_CHANNEL_FLAGS"];
    [v2 setChannelFlags:{objc_msgSend(v3, "integerValue")}];

    v4 = [v1 objectForKeyedSubscript:@"AWDL_INFO_ASSISTED_DISCOVERY_METRIC"];
    [v2 setDiscoveryMetric:{objc_msgSend(v4, "integerValue")}];

    v5 = [v1 objectForKeyedSubscript:@"AWDL_IF_MAC_ADDRESS"];
    [v2 setMacAddress:v5];

    v6 = [v1 objectForKeyedSubscript:@"AWDL_INFO_PEER_MASTER_CHANNEL"];
    [v2 setMasterChannel:{objc_msgSend(v6, "integerValue")}];

    v7 = [v1 objectForKeyedSubscript:@"AWDL_INFO_PREFERRED_CHANNEL"];
    [v2 setPreferredChannel:{objc_msgSend(v7, "integerValue")}];

    v8 = [v1 objectForKeyedSubscript:@"AWDL_INFO_EXT"];

    [v2 setExtraInfoData:v8];
    v9 = [v2 data];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1001114F4(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [[SDAutoUnlockWiFiAWDLInfo alloc] initWithData:v1];

  v4 = [NSNumber numberWithUnsignedInt:[(SDAutoUnlockWiFiAWDLInfo *)v3 channelFlags]];
  [v2 setObject:v4 forKeyedSubscript:@"AWDL_INFO_SUPPORTED_CHANNEL_FLAGS"];

  v5 = [NSNumber numberWithUnsignedInt:[(SDAutoUnlockWiFiAWDLInfo *)v3 discoveryMetric]];
  [v2 setObject:v5 forKeyedSubscript:@"AWDL_INFO_ASSISTED_DISCOVERY_METRIC"];

  v6 = [(SDAutoUnlockWiFiAWDLInfo *)v3 macAddress];
  [v2 setObject:v6 forKeyedSubscript:@"AWDL_IF_MAC_ADDRESS"];

  v7 = [NSNumber numberWithUnsignedInt:[(SDAutoUnlockWiFiAWDLInfo *)v3 masterChannel]];
  [v2 setObject:v7 forKeyedSubscript:@"AWDL_INFO_PEER_MASTER_CHANNEL"];

  v8 = [NSNumber numberWithUnsignedInt:[(SDAutoUnlockWiFiAWDLInfo *)v3 preferredChannel]];
  [v2 setObject:v8 forKeyedSubscript:@"AWDL_INFO_PREFERRED_CHANNEL"];

  v9 = [(SDAutoUnlockWiFiAWDLInfo *)v3 extraInfoData];
  [v2 setObject:v9 forKeyedSubscript:@"AWDL_INFO_EXT"];

  v10 = [v2 copy];

  return v10;
}

uint64_t sub_10011173C()
{
  v0 = SFAutoUnlockManagerAutoUnlockTestModeDefault;
  if (sub_10000C1F8(SFAutoUnlockManagerAutoUnlockTestModeDefault, 0))
  {
    return 1;
  }

  v2 = getuid();
  v3 = sub_1001117EC(v2);
  v4 = [v3 objectForKeyedSubscript:v0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = [v4 isEqual:@"1"];
  }

  v1 = v5;

  return v1;
}

id sub_1001117EC(uint64_t a1)
{
  v2 = sub_10000C2C4(SFAutoUnlockManagerAutoUnlockTestModeDictionary);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [NSString stringWithFormat:@"%u", a1];
    v4 = [v2 objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1001118D4()
{
  v0 = SFAutoUnlockManagerAutoUnlockTestModeDuration;
  v1 = sub_10000C2C4(SFAutoUnlockManagerAutoUnlockTestModeDuration);
  if (!v1)
  {
    v2 = getuid();
    v3 = sub_1001117EC(v2);
    v4 = [v3 objectForKeyedSubscript:v0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v1 = v5;
  }

  return v1;
}

uint64_t sub_100111978()
{
  v0 = SFAutoUnlockManagerAutoUnlockTestModeShouldFail;
  if (sub_10000C1F8(SFAutoUnlockManagerAutoUnlockTestModeShouldFail, 0))
  {
    return 1;
  }

  v2 = getuid();
  v3 = sub_1001117EC(v2);
  v4 = [v3 objectForKeyedSubscript:v0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = [v4 isEqual:@"1"];
  }

  v1 = v5;

  return v1;
}

id sub_100111A28()
{
  v0 = SFAutoUnlockManagerAutoUnlockTestModeFailureString;
  v1 = sub_10000C2C4(SFAutoUnlockManagerAutoUnlockTestModeFailureString);
  if (!v1)
  {
    v2 = getuid();
    v3 = sub_1001117EC(v2);
    v4 = [v3 objectForKeyedSubscript:v0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v1 = v5;
  }

  return v1;
}

id sub_100111ACC()
{
  v0 = SFAutoUnlockManagerAutoUnlockTestModePassword;
  v1 = sub_10000C2C4(SFAutoUnlockManagerAutoUnlockTestModePassword);
  if (!v1)
  {
    v2 = getuid();
    v3 = sub_1001117EC(v2);
    v4 = [v3 objectForKeyedSubscript:v0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v1 = v5;
  }

  return v1;
}

uint64_t sub_100111B70()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    return sub_10000C1F8(@"AUConnectionCacheEnabled", 0) != 0;
  }

  return result;
}

void sub_100111BA4(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (a1)
    {
      v3 = @"YES";
    }

    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating in progress state in dynamic store: %@", buf, 0xCu);
  }

  v4 = sub_10001F124(0);
  v5 = [v4 mutableCopy];

  v6 = SFAutoUnlockDynamicStoreInProgressKey;
  v7 = [v5 objectForKeyedSubscript:SFAutoUnlockDynamicStoreInProgressKey];
  v8 = v7;
  if (!v7 || [v7 BOOLValue] != a1)
  {
    v9 = [NSNumber numberWithBool:a1];
    [v5 setObject:v9 forKeyedSubscript:v6];

    if (!SCDynamicStoreSetValue(0, SFAutoUnlockDynamicStoreSharingDomainKey, v5))
    {
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100113780();
      }
    }
  }

  v11 = SFAutoUnlockDynamicStoreInProgressPath;
  v12 = sub_10001F124(SFAutoUnlockDynamicStoreInProgressPath);
  v13 = [v12 mutableCopy];

  v14 = [NSString stringWithFormat:@"%d", getuid()];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (!v15 || [v15 BOOLValue] != a1)
  {
    v16 = [NSNumber numberWithBool:a1];
    [v13 setObject:v16 forKeyedSubscript:v14];

    if (!SCDynamicStoreSetValue(0, v11, v13))
    {
      v17 = auto_unlock_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100113780();
      }
    }
  }
}

id sub_100111E28(void *a1)
{
  v2 = [NSNumber numberWithInteger:*a1];
  v3 = [v2 stringValue];

  v4 = [NSNumber numberWithInteger:a1[1]];
  v5 = [v4 stringValue];

  v6 = [NSString stringWithFormat:@".%@", v5];
  v7 = [v3 stringByAppendingString:v6];

  if (a1[2] >= 1)
  {
    v8 = [NSNumber numberWithInteger:?];
    v9 = [v8 stringValue];

    v10 = [NSString stringWithFormat:@".%@", v9];
    v11 = [v7 stringByAppendingString:v10];

    v7 = v11;
  }

  return v7;
}

NSString *sub_100111F74(uint64_t a1)
{
  v1 = @"Trigger";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    v1 = @"Attempt";
  }

  return [NSString stringWithFormat:@"AutoUnlock-%@", v1];
}

id sub_100111FE0(char *a1, void *a2, void *a3, id a4)
{
  v7 = a2;
  v8 = a3;
  v9 = +[IDSServerBag sharedInstance];
  v10 = [v9 objectForKey:v7];

  v11 = +[IDSServerBag sharedInstance];
  v12 = [v11 objectForKey:v8];

  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = auto_unlock_log();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:
      v18 = 0;
      goto LABEL_16;
    }

    v23 = 134218754;
    v24 = a4;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v12;
    v19 = "Using default value for timeout (default value: %ld, timeout key: %@, server timeout: %@, timeout percentage %@)";
    v20 = v17;
    v21 = 42;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, &v23, v21);
    goto LABEL_15;
  }

  v13 = auto_unlock_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    v24 = v7;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDS server bag contains keys (timeout key: %@, server timeout: %@, timeout percentage %@)", &v23, 0x20u);
  }

  v14 = [v12 integerValue];
  v15 = arc4random_uniform(0x64u);
  v16 = v15;
  if (v14 > 0x64 || v14 <= v15)
  {
    v17 = auto_unlock_log();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v23 = 134217984;
    v24 = v16;
    v19 = "Using default timeout (random number: %ld)";
    v20 = v17;
    v21 = 12;
    goto LABEL_14;
  }

  a4 = [v10 integerValue];
  v17 = auto_unlock_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Using server timeout (random number: %ld)", &v23, 0xCu);
  }

  v18 = 1;
LABEL_16:

  if (a1)
  {
    *a1 = v18;
  }

  return a4;
}

double sub_1001122DC()
{
  v0 = 0.0;
  if (!IOPMGetLastWakeTime())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v2 = auto_unlock_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0, 0];
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Last machine wake date %@", buf, 0xCu);
    }

    v0 = Current - 0.0;
  }

  return v0;
}

BOOL sub_1001123D8(void *a1)
{
  v1 = sub_100112424(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intValue] > 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100112424(void *a1)
{
  v1 = [a1 componentsSeparatedByString:{@", "}];
  if ([v1 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v2 rangeOfString:@"Watch"];
    if (v4)
    {
      v5 = [v2 substringFromIndex:&v3[v4]];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

id sub_1001124F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100112424(a1);
  v5 = [v4 isEqualToString:@"1"];

  v6 = [NSCharacterSet characterSetWithCharactersInString:@"#"];
  v7 = [v3 stringByRemovingCharactersFromSet:v6];

  v8 = [v7 integerValue] - 5;
  if (v5)
  {
    if (v8 >= 6)
    {
      goto LABEL_7;
    }

    v9 = &off_1008D0A58;
  }

  else
  {
    if (v8 >= 0xA)
    {
      goto LABEL_7;
    }

    v9 = &off_1008D0A88;
  }

  v10 = v9[v8];
LABEL_7:
  v11 = SFLocalizedStringForKey();

  return v11;
}

id sub_1001125EC(void *a1)
{
  v1 = a1;
  v2 = sub_10000C1F8(@"AUAlwaysShowModelDescription", 0);
  v3 = objc_opt_new();
  if ([v1 count])
  {
    v4 = 0;
    v5 = &NSURLAuthenticationMethodServerTrust_ptr;
    v53 = v1;
    v50 = v2;
    v49 = v3;
    do
    {
      v6 = [v1 objectAtIndexedSubscript:v4];
      v7 = v6;
      if (v2)
      {
        v8 = [v6 modelIdentifier];
        v9 = [v7 enclosureColor];
        v10 = sub_1001124F4(v8, v9);

        v11 = [v7 modelIdentifier];
        v63 = 0;
        v64 = 0;
        sub_100112BE8(v11, &v64, &v63);
        v12 = v64;
        v13 = v63;

        if ([(__CFString *)v13 length])
        {
          v14 = [v5[266] stringWithFormat:@", %@", v13];
        }

        else
        {
          v14 = &stru_1008EFBD0;
        }

        if ([(__CFString *)v12 length])
        {
          v46 = [v5[266] stringWithFormat:@", %@", v12];
        }

        else
        {
          v46 = &stru_1008EFBD0;
        }

        v47 = [v5[266] stringWithFormat:@"(%@%@%@)", v10, v14, v46];
        [v7 setModelDescription:v47];

        [v3 addObject:v7];
        v1 = v53;
      }

      else
      {
        v51 = v4;
        while ([v1 count] > ++v4)
        {
          v15 = [v1 objectAtIndexedSubscript:v4];
          v16 = [v7 name];
          v17 = [v15 name];
          v18 = [v16 isEqualToString:v17];

          if (v18)
          {
            v19 = [v7 modelIdentifier];
            v20 = [v7 enclosureColor];
            v21 = sub_1001124F4(v19, v20);

            v22 = v21;
            v23 = [v15 modelIdentifier];
            v24 = [v15 enclosureColor];
            v25 = sub_1001124F4(v23, v24);

            v26 = v25;
            v58 = v22;
            if ([v22 isEqualToString:v26])
            {
              v27 = [v7 modelIdentifier];
              v62 = 0;
              v61 = 0;
              sub_100112BE8(v27, &v62, &v61);
              v55 = v62;
              v28 = v61;

              v29 = [v15 modelIdentifier];
              v59 = 0;
              v60 = 0;
              sub_100112BE8(v29, &v60, &v59);
              v56 = v60;
              v30 = v59;

              if ([(__CFString *)v28 length])
              {
                v31 = [NSString stringWithFormat:@", %@", v28];
              }

              else
              {
                v31 = &stru_1008EFBD0;
              }

              if ([(__CFString *)v30 length])
              {
                v34 = [NSString stringWithFormat:@", %@", v30];
              }

              else
              {
                v34 = &stru_1008EFBD0;
              }

              v32 = [v22 stringByAppendingString:v31];

              v33 = [v26 stringByAppendingString:v34];

              v57 = [(__CFString *)v31 isEqualToString:v34];
              v54 = v34;
              if (v57)
              {
                if ([(__CFString *)v55 length])
                {
                  v35 = [NSString stringWithFormat:@", %@", v55];
                }

                else
                {
                  v35 = &stru_1008EFBD0;
                }

                v52 = v31;

                if ([(__CFString *)v56 length])
                {
                  v37 = [NSString stringWithFormat:@", %@", v56];
                }

                else
                {
                  v37 = &stru_1008EFBD0;
                }

                v38 = [v32 stringByAppendingString:v35];

                v39 = [v33 stringByAppendingString:v37];

                v32 = v38;
                v33 = v39;
                v36 = v37;
                v31 = v52;
                v1 = v53;
              }

              else
              {
                v35 = v55;
                v36 = v56;
              }
            }

            else
            {
              v57 = 0;
              v32 = v22;
              v33 = v26;
            }

            v40 = [v7 modelDescription];
            v41 = [v40 length];
            v42 = [v32 length];

            if (v41 < v42)
            {
              [v7 setModelDescription:v32];
            }

            v43 = [v15 modelDescription];
            v44 = [v43 length];
            v45 = [v33 length];

            if (v44 < v45)
            {
              [v15 setModelDescription:v33];
            }

            if (v57)
            {

              break;
            }
          }
        }

        v3 = v49;
        [v49 addObject:v7];
        v2 = v50;
        v4 = v51;
        v5 = &NSURLAuthenticationMethodServerTrust_ptr;
      }

      ++v4;
    }

    while ([v1 count] > v4);
  }

  return v3;
}

void sub_100112BE8(void *a1, __CFString **a2, __CFString **a3)
{
  v5 = a1;
  if (qword_100989D88 != -1)
  {
    sub_1001137F8();
  }

  v6 = [qword_100989D80 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  if ((v7 - 1) > 7)
  {
    v9 = &stru_1008EFBD0;
  }

  else
  {
    v8 = *(&off_1008D0AD8 + (v7 - 1));
    v9 = SFLocalizedStringForKey();
  }

  if ([v5 hasPrefix:{@"Watch5, "}])
  {
    v10 = SFMinorWatchHardwareVersion();
    if ((v10 - 1) < 4 || (v10 - 9) < 4)
    {
LABEL_27:
      v13 = SFLocalizedStringForKey();
      goto LABEL_29;
    }
  }

  else if ([v5 hasPrefix:{@"Watch6, "}])
  {
    v11 = SFMinorWatchHardwareVersion();
    if ((v11 - 1) < 4 || (v11 - 6) < 4 || (v11 - 10) < 4 || (v11 - 14) < 4 || v11 == 18)
    {
      goto LABEL_27;
    }
  }

  else if ([v5 hasPrefix:{@"Watch7, "}])
  {
    v12 = SFMinorWatchHardwareVersion();
    if ((v12 - 1) < 4 || v12 == 5 || (v12 & 0xFFFFFFFC) == 8)
    {
      goto LABEL_27;
    }
  }

  v13 = &stru_1008EFBD0;
LABEL_29:
  if ([(__CFString *)v13 length])
  {
    v14 = v13;
  }

  else
  {
    v15 = [UTType _typeWithDeviceModelCode:v5];
    v16 = [v15 localizedDescription];

    v14 = [v16 stringByReplacingOccurrencesOfString:@"Apple Watch " withString:&stru_1008EFBD0];

    v17 = auto_unlock_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Pulling series from UTType: %@", buf, 0xCu);
    }
  }

  v18 = _LSCreateDeviceTypeIdentifierWithModelCode();
  v19 = auto_unlock_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v63 = v18;
    v64 = 2112;
    v65 = v5;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "UTI %@ for modelIdentifier %@", buf, 0x16u);
  }

  if (v18)
  {
    v20 = [(__CFString *)v18 componentsSeparatedByString:@"-"];
    if ([(__CFString *)v9 length])
    {
      v50 = v9;
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (!v22)
      {
        goto LABEL_54;
      }

      v23 = v22;
      v46 = v14;
      v48 = a2;
      v51 = v9;
      v24 = *v57;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v57 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v56 + 1) + 8 * i);
          if ([v26 containsString:@"mm"])
          {
            if ([v26 containsString:@"38"])
            {
              a2 = v48;
              v9 = v51;
              v14 = v46;
            }

            else
            {
              v9 = v51;
              v14 = v46;
              if (([v26 containsString:@"42"] & 1) == 0)
              {
                a2 = v48;
                goto LABEL_54;
              }

              a2 = v48;
            }

            v27 = SFLocalizedStringForKey();

            v9 = v27;
            goto LABEL_54;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      a2 = v48;
      v9 = v51;
      v14 = v46;
LABEL_54:
      v50 = v9;
    }

    v28 = a3;
    v29 = UTTypeCopyDescription(v18);
    v30 = auto_unlock_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Description %@", buf, 0xCu);
    }

    v31 = +[NSCharacterSet whitespaceCharacterSet];
    v32 = [(__CFString *)v29 componentsSeparatedByCharactersInSet:v31];

    if (![(__CFString *)v14 length])
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v33 = v32;
      v34 = [v33 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (!v34)
      {
        goto LABEL_76;
      }

      v35 = v34;
      v47 = v14;
      v49 = a2;
      v45 = v28;
      v36 = 0;
      v37 = *v53;
      while (2)
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v53 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v52 + 1) + 8 * j);
          if (v36)
          {
            if ([*(*(&v52 + 1) + 8 * j) containsString:@"1"])
            {
              v28 = v45;
              v14 = v47;
              a2 = v49;
            }

            else
            {
              v28 = v45;
              v14 = v47;
              if (([v39 containsString:@"2"] & 1) == 0 && (objc_msgSend(v39, "containsString:", @"3") & 1) == 0 && (objc_msgSend(v39, "containsString:", @"4") & 1) == 0 && (objc_msgSend(v39, "containsString:", @"5") & 1) == 0 && (objc_msgSend(v39, "containsString:", @"6") & 1) == 0)
              {
                a2 = v49;
                goto LABEL_76;
              }

              a2 = v49;
            }

            v40 = SFLocalizedStringForKey();

            v14 = v40;
            goto LABEL_76;
          }

          v36 = [*(*(&v52 + 1) + 8 * j) containsString:@"Series"];
        }

        v35 = [v33 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }

      v28 = v45;
      v14 = v47;
      a2 = v49;
LABEL_76:
    }

    a3 = v28;
    v9 = v50;
  }

  v41 = auto_unlock_log();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v63 = v9;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Watch Size %@", buf, 0xCu);
  }

  v42 = auto_unlock_log();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v63 = v14;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Series %@", buf, 0xCu);
  }

  if (a2)
  {
    v43 = v9;
    *a2 = v9;
  }

  if (a3)
  {
    v44 = v14;
    *a3 = v14;
  }
}

id sub_1001133CC(void *a1)
{
  v3[0] = 0;
  v3[1] = 0;
  [a1 getUUIDBytes:v3];
  v1 = [NSData dataWithBytes:v3 length:16];

  return v1;
}

void sub_100113448(void *a1)
{
  v1 = a1;
  v4 = +[BMStreams discoverabilitySignal];
  v2 = [v4 source];
  v3 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:v1 bundleID:@"com.apple.sharingd" context:0];

  [v2 sendEvent:v3];
}

id sub_1001134F0(uint64_t a1)
{
  v17[0] = @"com.apple.faceid.face-covering.detected";
  v17[1] = @"com.apple.faceid.any-face-covering.detected";
  v2 = [NSArray arrayWithObjects:v17 count:2];
  v3 = [_DKQuery predicateForEventsWithStringValueInValues:v2];

  v4 = +[_DKKnowledgeStore knowledgeStore];
  v5 = +[_DKSystemEventStreams discoverabilitySignalsStream];
  v16 = v5;
  v6 = [NSArray arrayWithObjects:&v16 count:1];
  v7 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:0];
  v15 = v7;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [_DKEventQuery eventQueryWithPredicate:v3 eventStreams:v6 offset:0 limit:a1 sortDescriptors:v8];

  if (v9)
  {
    v14 = 0;
    v10 = [v4 executeQuery:v9 error:&v14];
    v11 = v14;
    if (v11)
    {
      v12 = auto_unlock_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10011380C(v11, v12);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1001136F0(id a1)
{
  v1 = qword_100989D80;
  qword_100989D80 = &off_10090E8F8;
}

void sub_100113708()
{
  SCError();
  sub_100019D64();
  sub_100008948(&_mh_execute_header, v0, v1, "Failed to set global enabled state %d", v2, v3, v4, v5, v6);
}

void sub_100113780()
{
  SCError();
  sub_100019D64();
  sub_100008948(&_mh_execute_header, v0, v1, "Failed to set in progress state %d", v2, v3, v4, v5, v6);
}

void sub_10011380C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching mask detected events: %@", &v2, 0xCu);
}

uint64_t SDUnlockLockStateUpdatedReadFrom(uint64_t a1, void *a2)
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

void sub_100114BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100114BD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerImport];
}

Class sub_100115170()
{
  if (qword_100989D98 != -1)
  {
    sub_1001151FC();
  }

  result = objc_getClass("EKEventStore");
  qword_100989D90 = result;
  off_100970DB0[0] = sub_1001151C4;
  return result;
}

void sub_1001152B0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100989DA8;
  qword_100989DA8 = v1;
}

void sub_1001155B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001F0530(5.0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100116F24;
  v6[3] = &unk_1008D0C00;
  v6[4] = a2;
  v6[5] = a3;
  dispatch_after(v5, &_dispatch_main_q, v6);
}

void sub_100116480(uint64_t a1)
{
  v2 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 32)];
  if (*(a1 + 40))
  {
    [*(a1 + 48) addIconPropertiesWithImage:SFScaleAndRotateImage() toFakeTransferData:v2];
  }

  [*(*(a1 + 48) + 24) askEventForRecordID:*(a1 + 56) withResults:v2];
}

id sub_10011650C(uint64_t a1)
{
  [*(a1 + 32) _publish];
  [*(a1 + 32) setSf_transferState:3];
  [*(a1 + 32) setTotalUnitCount:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setCompletedUnitCount:0];
}

void sub_100116560(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64) * v2;
  v4 = vcvtps_s32_f32(*(a1 + 84) - (*(a1 + 88) * v2));
  [*(a1 + 32) setCompletedUnitCount:v3];
  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithInteger:v4];
  [v5 setUserInfoObject:v6 forKey:NSProgressEstimatedTimeRemainingKey];

  v7 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 40)];
  [*(a1 + 48) addProgressPropertiesWithBytesCopied:v3 totalBytes:*(a1 + 72) timeRemaining:v4 filesCopied:0 toFakeTransferData:v7];
  [*(*(a1 + 48) + 24) progressEventForRecordID:*(a1 + 56) withResults:v7];
}

void sub_100116650(uint64_t a1)
{
  [*(a1 + 32) setCompletedUnitCount:*(a1 + 72)];
  [*(a1 + 32) setSf_transferState:6];
  v2 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 40)];
  [*(a1 + 48) addProgressPropertiesWithBytesCopied:*(a1 + 72) totalBytes:*(a1 + 72) timeRemaining:0 filesCopied:0 toFakeTransferData:?];
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 48) replaceItemsWithItems:*(a1 + 56) inFakeTransferData:v2];
  }

  [*(*(a1 + 48) + 24) finishedEventForRecordID:*(a1 + 64) withResults:v2];
}

void sub_100116904(uint64_t a1)
{
  usleep(((*(a1 + 40) * 1000.0) * 1000.0));
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100116A1C;
  v9 = sub_100116A2C;
  v10 = dispatch_semaphore_create(1);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100116A34;
  v2[3] = &unk_1008D0BB8;
  v3 = *(a1 + 32);
  v4 = &v5;
  dispatch_async(&_dispatch_main_q, v2);
  dispatch_semaphore_wait(v6[5], 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&v5, 8);
}

uint64_t sub_100116A1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100116A34(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v2);
}

void sub_100116F24(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v8 = [v1 stringByReplacingOccurrencesOfString:@"com.apple.sharingd.fake.transfer." withString:&stru_1008EFBD0];
  v3 = [v8 componentsSeparatedByString:@"."];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 integerValue];

  v6 = [v3 objectAtIndexedSubscript:1];
  v7 = [v6 integerValue];

  [v2 startFakeTransferInCategory:v5 ofType:v7];
}

void sub_100117000(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "startFakeTransferInCategory fakeTransfer %ld.%ld itemSources is nil", &v3, 0x16u);
}

void sub_100117088(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "startFakeTransferWithItems createDirectoryAtURL failed %@", &v2, 0xCu);
}

void sub_100117144(id a1)
{
  qword_100989DC0 = CFBundleGetBundleWithIdentifier(@"com.apple.Sharing");
  if (!qword_100989DC0)
  {
    v1 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/Sharing.framework", kCFURLPOSIXPathStyle, 1u);
    if (v1)
    {
      v2 = v1;
      qword_100989DC0 = CFBundleCreate(0, v1);

      CFRelease(v2);
    }
  }
}

CFStringRef sub_1001171D0(const __CFString *cf, CFStringRef tableName)
{
  if (qword_100989DB8 != -1)
  {
    sub_1001188B4();
  }

  v4 = qword_100989DC0;
  if (qword_100989DC0)
  {

    return CFBundleCopyLocalizedString(v4, cf, cf, tableName);
  }

  else
  {
    v6 = CFGetAllocator(cf);

    return CFStringCreateCopy(v6, cf);
  }
}

__CFSet *sub_10011725C(const __CFAllocator *a1, CFIndex a2, CFBagRef theBag)
{
  if (!theBag)
  {
    return 0;
  }

  Count = CFBagGetCount(theBag);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  __chkstk_darwin(Count);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v9, v8);
  CFBagGetValues(theBag, v9);
  Mutable = CFSetCreateMutable(a1, a2, &kCFTypeSetCallBacks);
  if (v7 >= 1)
  {
    do
    {
      v11 = *v9++;
      CFSetSetValue(Mutable, v11);
      --v7;
    }

    while (v7);
  }

  return Mutable;
}

void sub_100117364(CFMutableDictionaryRef theDict, const void *key, const void *value)
{
  if (value)
  {
    CFDictionarySetValue(theDict, key, value);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, key);
  }
}

uint64_t sub_100117370(const void *a1)
{
  if (CFEqual(a1, kSFNodeProtocolAFP))
  {
    return 548;
  }

  if (CFEqual(a1, kSFNodeProtocolSMB))
  {
    return 445;
  }

  if (CFEqual(a1, kSFNodeProtocolVNC))
  {
    return 5900;
  }

  if (CFEqual(a1, kSFNodeProtocolODisk) || CFEqual(a1, kSFNodeProtocolWebDAV))
  {
    return 80;
  }

  if (CFEqual(a1, kSFNodeProtocolWebDAVS))
  {
    return 443;
  }

  if (CFEqual(a1, kSFNodeProtocolNFS))
  {
    return 2049;
  }

  if (CFEqual(a1, kSFNodeProtocolFTP))
  {
    return 21;
  }

  if (CFEqual(a1, kSFNodeProtocolFTPS))
  {
    return 990;
  }

  if (CFEqual(a1, kSFNodeProtocolHTTP))
  {
    return 80;
  }

  if (CFEqual(a1, kSFNodeProtocolHTTPS))
  {
    return 443;
  }

  if (CFEqual(a1, kSFNodeProtocolADisk))
  {
    return 548;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

const __CFURL *sub_1001174F4(const void *a1, const __CFString *a2, const __CFString *a3, __CFString *MutableCopy, int a5, const __CFString *a6, const __CFDictionary *a7, int a8)
{
  if (CFEqual(a1, kSFNodeProtocolWebDAV) || CFEqual(a1, kSFNodeProtocolODisk))
  {
    v16 = &kSFNodeProtocolHTTP;
LABEL_4:
    v17 = *v16;
    goto LABEL_5;
  }

  v38 = kSFNodeProtocolAirDrop;
  CFEqual(a1, kSFNodeProtocolAirDrop);
  if (CFEqual(a1, kSFNodeProtocolWebDAVS) || (v17 = a1, CFEqual(a1, v38)))
  {
    v16 = &kSFNodeProtocolHTTPS;
    goto LABEL_4;
  }

LABEL_5:
  v18 = sub_100117370(a1);
  if (a2)
  {
    a2 = CFURLCreateStringByAddingPercentEscapes(0, a2, 0, @";:@?/", 0x8000100u);
  }

  if (a3)
  {
    a3 = CFURLCreateStringByAddingPercentEscapes(0, a3, 0, @";:@?/", 0x8000100u);
  }

  if (CFStringHasPrefix(MutableCopy, @"[") && CFStringHasSuffix(MutableCopy, @"]"))
  {
    Length = CFStringGetLength(MutableCopy);
    MutableCopy = CFStringCreateMutableCopy(0, Length, MutableCopy);
    v45.length = CFStringGetLength(MutableCopy);
    v45.location = 0;
    CFStringFindAndReplace(MutableCopy, @"%", @"%25", v45, 0);
  }

  else if (MutableCopy)
  {
    MutableCopy = CFURLCreateStringByAddingPercentEscapes(0, MutableCopy, 0, @";:@?/", 0x8000100u);
  }

  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%@://", v17);
  if (!a2)
  {
    if (!a3)
    {
      v21 = 1;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  CFStringAppend(Mutable, a2);
  if (a3)
  {
LABEL_18:
    CFStringAppendFormat(Mutable, 0, @":%@", a3);
    v21 = 0;
    goto LABEL_19;
  }

  v21 = 1;
LABEL_19:
  CFStringAppend(Mutable, @"@");
LABEL_20:
  CFStringAppend(Mutable, MutableCopy);
  if (a5 >= 1 && v18 != a5)
  {
    CFStringAppendFormat(Mutable, 0, @":%ld", a5);
  }

  if (a6)
  {
    if (CFStringHasPrefix(a6, @"/"))
    {
      v44.length = CFStringGetLength(a6) - 1;
      v44.location = 1;
      v22 = CFStringCreateWithSubstring(0, a6, v44);
    }

    else
    {
      v22 = CFRetain(a6);
    }

    v23 = v22;
    if (v22)
    {
      v24 = CFURLCreateStringByAddingPercentEscapes(0, v22, 0, 0, 0x8000100u);
    }

    else
    {
      v24 = 0;
    }

    CFStringAppendFormat(Mutable, 0, @"/%@", v24);
    CFRelease(v23);
    CFRelease(v24);
  }

  if (a7)
  {
    Count = CFDictionaryGetCount(a7);
    if (Count)
    {
      v26 = Count;
      v40 = v21;
      v41 = a3;
      v42 = a8;
      v39 = &v39;
      __chkstk_darwin(Count);
      v28 = (&v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v28, v27);
      v29 = CFStringCreateMutable(0, 0);
      CFDictionaryGetKeysAndValues(a7, v28, 0);
      v30 = v26 - 1;
      if (v26 >= 1)
      {
        while (1)
        {
          v31 = *v28;
          Value = CFDictionaryGetValue(a7, *v28);
          CFStringAppendFormat(v29, 0, @"%@=%@", v31, Value);
          if (!v30)
          {
            break;
          }

          CFStringAppend(v29, @"&");
          --v30;
          ++v28;
        }
      }

      CFStringAppendFormat(Mutable, 0, @"?%@", v29);
      CFRelease(v29);
      a8 = v42;
      a3 = v41;
      LOBYTE(v21) = v40;
    }
  }

  v33 = CFURLCreateWithString(0, Mutable, 0);
  v34 = v33;
  if (a8)
  {
    error = 0;
    if (!CFURLSetResourcePropertyForKey(v33, kCFURLIsDirectoryKey, kCFBooleanTrue, &error))
    {
      v35 = v21;
      v36 = utilities_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1001188C8(&error, v36);
      }

      CFRelease(error);
      LOBYTE(v21) = v35;
    }
  }

  CFRelease(Mutable);
  CFRelease(MutableCopy);
  if (a2)
  {
    CFRelease(a2);
  }

  if ((v21 & 1) == 0)
  {
    CFRelease(a3);
  }

  return v34;
}

CGImageRef sub_100117A14(const __CFData *a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, kCGImageSourceTypeIdentifierHint, kUTTypeJPEG2000);
    CFDictionarySetValue(v5, kCGImageSourceFailForDataNotMatchingHint, kCFBooleanTrue);
  }

  v6 = CGImageSourceCreateWithData(a1, v5);
  if (v6)
  {
    v7 = v6;
    if (!CGImageSourceGetCount(v6))
    {
      v13 = utilities_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1001189E0();
      }

      goto LABEL_21;
    }

    if (a2)
    {
      Type = CGImageSourceGetType(v7);
      if (!CFEqual(Type, kUTTypeJPEG2000))
      {
        v14 = utilities_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1001189AC();
        }

        goto LABEL_21;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      if (!ImageAtIndex)
      {
        v10 = utilities_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100118978();
        }

LABEL_21:
        v12 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      if (!ImageAtIndex)
      {
        v15 = utilities_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100118944();
        }

        goto LABEL_21;
      }
    }

    v12 = ImageAtIndex;
LABEL_22:
    CFRelease(v7);
    goto LABEL_23;
  }

  v11 = utilities_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100118A14();
  }

  v12 = 0;
LABEL_23:
  CFRelease(v5);
  return v12;
}

CGImageRef sub_100117BD4(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFURLGetTypeID())
  {
    v3 = CGImageSourceCreateWithURL(a1, 0);
  }

  else
  {
    if (v2 != CFDataGetTypeID())
    {
      goto LABEL_8;
    }

    v3 = CGImageSourceCreateWithData(a1, 0);
  }

  v4 = v3;
  if (v3)
  {
    if (CGImageSourceGetCount(v3))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
    }

    else
    {
      v7 = utilities_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100118A48();
      }

      ImageAtIndex = 0;
    }

    CFRelease(v4);
    return ImageAtIndex;
  }

LABEL_8:
  v6 = utilities_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100118A7C();
  }

  return 0;
}

__CFData *sub_100117CB4(void *a1, uint64_t a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v4, 0);
  valuePtr = a2;
  v6 = CFDictionaryCreateMutable(v4, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a2)
  {
    v7 = CFNumberCreate(v4, kCFNumberLongType, &valuePtr);
    v8 = &kCGImageDestinationRequestedFileSize;
  }

  else
  {
    v14 = 1065353216;
    v7 = CFNumberCreate(v4, kCFNumberFloatType, &v14);
    v8 = &kCGImageDestinationLossyCompressionQuality;
  }

  CFDictionarySetValue(v6, *v8, v7);
  CFRelease(v7);
  v9 = CGImageDestinationCreateWithData(Mutable, kUTTypeJPEG2000, 1uLL, 0);
  if (v9)
  {
    v10 = v9;
    CGImageDestinationAddImage(v9, a1, v6);
    if (!CGImageDestinationFinalize(v10))
    {
      v11 = utilities_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100118AB0();
      }

      CFRelease(Mutable);
      Mutable = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v12 = utilities_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100118AE4();
    }
  }

  CFRelease(v6);
  return Mutable;
}

__CFData *sub_100117E28(uint64_t a1, uint64_t a2)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v4 = DeviceRGB;
    v5 = CGImageCreateByMatchingToColorSpace();
    if (v5)
    {
      v6 = v5;
      Width = CGImageGetWidth(v5);
      Height = CGImageGetHeight(v6);
      if (Width > 0x21C || Height >= 0x21D)
      {
        Thumb = CGImageCreateThumb();
      }

      else
      {
        Thumb = CFRetain(v6);
      }

      v13 = Thumb;
      if (Thumb)
      {
        v11 = sub_100117CB4(Thumb, a2);
        CFRelease(v13);
      }

      else
      {
        v14 = utilities_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100118B18();
        }

        v11 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v12 = utilities_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100118B4C();
      }

      v11 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v10 = utilities_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100118B80();
    }

    return 0;
  }

  return v11;
}

uint64_t sub_100117F58()
{
  v0 = qword_100989DC8;
  if (!qword_100989DC8)
  {
    if (SFDeviceIsVirtualMachine())
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_10000C1F8(@"EnableDemoMode", 0);
    }

    v2 = sub_10000C1F8(@"BrowseAllInterfaces", v1);
    v3 = &kCFBooleanTrue;
    if (!v2)
    {
      v3 = &kCFBooleanFalse;
    }

    v0 = *v3;
    qword_100989DC8 = *v3;
  }

  return CFBooleanGetValue(v0);
}

uint64_t sub_100117FF0()
{
  v0 = qword_100989DD0;
  if (!qword_100989DD0)
  {
    v1 = sub_10000C1F8(@"EnableDirectIP", 0);
    v2 = &kCFBooleanTrue;
    if (!v1)
    {
      v2 = &kCFBooleanFalse;
    }

    v0 = *v2;
    qword_100989DD0 = *v2;
  }

  return CFBooleanGetValue(v0);
}

BOOL sub_100118058(CFTypeRef cf1, CFTypeRef cf2)
{
  if (cf1 && cf2)
  {
    if (!CFEqual(cf1, cf2))
    {
      return 1;
    }
  }

  else if (cf1 && !cf2)
  {
    return 1;
  }

  return cf2 && cf1 == 0;
}

uint64_t sub_1001180B4(const __CFString *a1, uint64_t a2)
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
      CFNumberGetValue(v4, kCFNumberLongType, &valuePtr);
    }

    else
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFStringGetTypeID())
      {
        valuePtr = CFStringGetIntValue(v4);
      }
    }

    CFRelease(v4);
    return valuePtr;
  }

  return v2;
}

BOOL sub_10011814C(const __CFString *a1)
{
  CFRetain(a1);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v5 = sub_100118268;
  v6 = &unk_1008D0D00;
  v7 = a1;
  if (CFEqual(a1, @"1"))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (CFStringCompare(a1, @"true", 1uLL))
    {
      v2 = 1;
      if (CFStringCompare(a1, @"yes", 1uLL))
      {
        v2 = 1;
        if (CFStringCompare(a1, @"y", 1uLL))
        {
          v2 = CFStringCompare(a1, @"on", 1uLL) == kCFCompareEqualTo;
        }
      }
    }
  }

  v5(v4);
  return v2;
}

CFStringRef sub_100118278(const __CFAllocator *a1)
{
  memset(&v4, 0, sizeof(v4));
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  gettimeofday(&v3, 0);
  localtime_r(&v3.tv_sec, &v4);
  return CFStringCreateWithFormat(a1, 0, @"%02d:%02d:%02d.%03d", v4.tm_hour, v4.tm_min, v4.tm_sec, (v3.tv_usec / 1000));
}

const __CFString *sub_10011830C()
{
  v0 = sub_10000C2C4(@"AlternateService");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v1))
      {
        v3 = @"_airdrop-alt._tcp.";
      }

      else
      {
        v3 = @"_airdrop._tcp.";
      }

      goto LABEL_16;
    }

    v6 = CFGetTypeID(v1);
    if (v6 == CFStringGetTypeID())
    {
      if (CFEqual(v1, @"1"))
      {
        v3 = @"_airdrop-alt._tcp.";
LABEL_16:
        CFRelease(v1);
        return v3;
      }

      if (!CFEqual(v1, @"0"))
      {
        if (CFStringGetLength(v1) < 8)
        {
          v7 = CFRetain(v1);
        }

        else
        {
          v11.location = 0;
          v11.length = 7;
          v7 = CFStringCreateWithSubstring(0, v1, v11);
        }

        v8 = v7;
        v9 = CFStringCreateWithFormat(0, 0, @"_airdrop-%@._tcp.", v7);
        v3 = CFAutorelease(v9);
        CFRelease(v8);
        goto LABEL_16;
      }
    }

    v3 = @"_airdrop._tcp.";
    goto LABEL_16;
  }

  if (!sub_10000C1F8(@"EnableDemoMode", 0))
  {
    return @"_airdrop._tcp.";
  }

  v4 = CFStringCreateWithFormat(0, 0, @"_airdrop-%@._tcp.", @"demo");

  return CFAutorelease(v4);
}

CFArrayRef sub_1001184AC()
{
  v14 = @"_adisk._tcp.";
  v15 = @"_afpovertcp._tcp.";
  v16 = @"_smb._tcp.";
  v17 = @"_rfb._tcp.";
  v18 = @"_odisk._tcp.";
  v19 = @"_http._tcp.";
  v20 = sub_10011830C();
  v21 = @"_file._tcp.";
  v22 = @"_netbios._udp.";
  v23 = @"_workgroups._udp.";
  v24 = @"_nwnode._tcp.";
  v0 = kSFNodeProtocolAFP;
  values = kSFNodeProtocolADisk;
  v4 = kSFNodeProtocolAFP;
  v1 = kSFNodeProtocolSMB;
  v5 = kSFNodeProtocolSMB;
  v6 = kSFNodeProtocolVNC;
  v7 = kSFNodeProtocolODisk;
  v8 = kSFNodeProtocolHTTP;
  v9 = kSFNodeProtocolAirDrop;
  v10 = kSFNodeProtocolFile;
  v11 = kSFNodeProtocolNetBIOS;
  v12 = kSFNodeProtocolWorkgroups;
  v13 = kSFNodeProtocolNWNode;
  if (sub_10000C1F8(@"PreferSMBFileSharing", 0))
  {
    v15 = @"_smb._tcp.";
    v16 = @"_afpovertcp._tcp.";
    v4 = v1;
    v5 = v0;
  }

  qword_100989DE8 = CFArrayCreate(0, &values, 11, &kCFTypeArrayCallBacks);
  result = CFArrayCreate(0, &v14, 11, &kCFTypeArrayCallBacks);
  qword_100989DE0 = result;
  return result;
}

const void *sub_100118668(void *key)
{
  if (qword_100989DF0 != -1)
  {
    sub_100118BB4();
  }

  v2 = qword_100989DF8;

  return CFDictionaryGetValue(v2, key);
}

CFDictionaryRef sub_1001186C0()
{
  if (qword_100989DD8 != -1)
  {
    sub_100118BC8();
  }

  v0 = qword_100989DE0;
  v1 = qword_100989DE8;
  Count = CFArrayGetCount(qword_100989DE0);
  v3 = CFArrayGetCount(v1);
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v5, v4);
  __chkstk_darwin(v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  v11.location = 0;
  v11.length = Count;
  CFArrayGetValues(v0, v11, v5);
  v12.location = 0;
  v12.length = v3;
  CFArrayGetValues(v1, v12, v8);
  qword_100989DF8 = CFDictionaryCreate(kCFAllocatorDefault, v8, v5, Count, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  result = CFDictionaryCreate(kCFAllocatorDefault, v5, v8, v3, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_100989E00 = result;
  return result;
}

const void *sub_10011885C(void *key)
{
  if (qword_100989DF0 != -1)
  {
    sub_100118BDC();
  }

  v2 = qword_100989E00;

  return CFDictionaryGetValue(v2, key);
}

void sub_1001188C8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "createURL: CFURLSetResourcePropertyForKey %@", &v3, 0xCu);
}

uint64_t SDAuthenticationPrePairingRequestReadFrom(uint64_t a1, void *a2)
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
        v27 = PBReaderReadString();
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