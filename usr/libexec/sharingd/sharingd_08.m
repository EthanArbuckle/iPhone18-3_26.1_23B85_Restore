Class sub_100231334()
{
  if (qword_10098A3B0 != -1)
  {
    sub_1002328A4();
  }

  result = objc_getClass("UMUserManager");
  qword_10098A3A8 = result;
  off_100972F98 = sub_100231388;
  return result;
}

Class sub_1002313C0()
{
  if (qword_10098A3C8 != -1)
  {
    sub_1002328B8();
  }

  result = objc_getClass("BLSBacklight");
  qword_10098A3C0 = result;
  off_100972FA0 = sub_100231414;
  return result;
}

Class sub_10023144C()
{
  if (qword_10098A3E0 != -1)
  {
    sub_1002328CC();
  }

  result = objc_getClass("AVSystemController");
  qword_10098A3D8 = result;
  off_100972FA8 = sub_1002314A0;
  return result;
}

id sub_1002314D8()
{
  if (qword_10098A3F0 != -1)
  {
    sub_1002328E0();
  }

  v1 = qword_10098A370;

  return v1;
}

void sub_10023151C(id a1)
{
  if (qword_10098A3E0 != -1)
  {
    sub_1002328CC();
  }

  v1 = dlsym(qword_10098A3E8, "AVSystemController_CarPlayIsConnectedAttribute");
  if (v1)
  {
    objc_storeStrong(&qword_10098A370, *v1);
  }

  off_100972FB0 = sub_100231584;
}

id sub_100231590()
{
  if (qword_10098A3F8 != -1)
  {
    sub_1002328F4();
  }

  v1 = qword_10098A368;

  return v1;
}

void sub_1002315D4(id a1)
{
  if (qword_10098A3E0 != -1)
  {
    sub_1002328CC();
  }

  v1 = dlsym(qword_10098A3E8, "AVSystemController_ServerConnectionDiedNotification");
  if (v1)
  {
    objc_storeStrong(&qword_10098A368, *v1);
  }

  off_100972FB8 = sub_10023163C;
}

id sub_100231648()
{
  if (qword_10098A400 != -1)
  {
    sub_100232908();
  }

  v1 = qword_10098A378;

  return v1;
}

void sub_10023168C(id a1)
{
  if (qword_10098A3E0 != -1)
  {
    sub_1002328CC();
  }

  v1 = dlsym(qword_10098A3E8, "AVSystemController_CarPlayIsConnectedDidChangeNotification");
  if (v1)
  {
    objc_storeStrong(&qword_10098A378, *v1);
  }

  off_100972FC0 = sub_1002316F4;
}

id sub_100231700()
{
  if (qword_10098A408 != -1)
  {
    sub_10023291C();
  }

  v1 = qword_10098A380;

  return v1;
}

void sub_100231744(id a1)
{
  if (qword_10098A3E0 != -1)
  {
    sub_1002328CC();
  }

  v1 = dlsym(qword_10098A3E8, "AVSystemController_SubscribeToNotificationsAttribute");
  if (v1)
  {
    objc_storeStrong(&qword_10098A380, *v1);
  }

  off_100972FC8 = sub_1002317AC;
}

id sub_1002317B8(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "currentLocalChanged", v4, 2u);
  }

  return [*(*(a1 + 32) + 520) scheduleOperation];
}

void sub_100231830()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023186C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002318A8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100231A24()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231A60()
{
  sub_10000883C();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100231ADC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100231BB4()
{
  sub_100019D64();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100231C30()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231C6C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231CA8()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100231D18()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231D54()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231D90()
{
  v5 = *__error();
  sub_100008860();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100231E18()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100231E88()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231EC4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231F00()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231F3C()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100231FC0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231FFC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100232038()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002320A8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100232118()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100232188()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1002321F8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100232268()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002322D8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100232348()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002323B8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100232428()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1002324AC()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100232530()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1002325B4()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100232624()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023273C(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = [a1 isScreenOnForBacklightState:a2];
  v5 = @"Off";
  if (v4)
  {
    v5 = @"On";
  }

  v6 = 138412290;
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Backlight didCompleteUpdatingScreenOnState to %@", &v6, 0xCu);
}

void sub_1002327E4()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100232854()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100232AEC(id a1)
{
  v1 = objc_alloc_init(SDUnlockKeyManager);
  v2 = qword_10098A410;
  qword_10098A410 = v1;
}

void sub_100233478(uint64_t a1)
{
  v2 = [*(a1 + 32) getWatchNameForTesting];
  v1 = +[SDHUDManager shared];
  [v1 postPairedUnlockBannerFor:v2 needsLockButton:0 needsUpdate:0];
}

void sub_1002334E8(uint64_t a1)
{
  v2 = [*(a1 + 32) getWatchNameForTesting];
  v1 = +[SDHUDManager shared];
  [v1 postPairedUnlockBannerFor:v2 needsLockButton:1 needsUpdate:1];
}

void sub_100233558(id a1, int a2)
{
  v2 = +[SDHUDManager shared];
  [v2 updatePairedUnlockBannerToUnlocked];
}

void sub_1002335A0(id a1, int a2)
{
  v2 = +[SDHUDManager shared];
  [v2 dismissPairedUnlockBanner];
}

void sub_100233A04(uint64_t a1)
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 pairedWatchWristState];

  if (v3 == 2)
  {
    if ([*(a1 + 32) needsOffWristBeforePairedUnlock])
    {
      v4 = paired_unlock_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Eligible for Paired Unlock after off wrist event", buf, 2u);
      }

      [*(a1 + 32) setNeedsOffWristBeforePairedUnlock:0];
    }

    v5 = [*(a1 + 32) delayedStartTimer];

    if (v5)
    {
      v6 = paired_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch off wrist while waiting to start Paired Unlock. Cancelling operation and dismissing banner", v7, 2u);
      }

      [*(a1 + 32) invalidateDelayedStartTimer];
      [*(a1 + 32) resetAndClearState];
    }
  }
}

void sub_100233B98(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Paired Unlock Banner dismissed", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 104))
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner dismissed while waiting for user response. Cancelling Paired Unlock", v12, 2u);
    }

    [*(a1 + 32) invalidateDelayedStartTimer];
    v5 = [*(a1 + 32) metrics];

    if (v5)
    {
      v6 = [*(a1 + 32) metrics];
      [v6 setFailureReason:16];
    }

    [*(a1 + 32) sendResetMessage:objc_msgSend(*(*(a1 + 32) + 128) reason:{"unlockSessionID"), 16}];
  }

  else
  {
    v7 = *(v3 + 68);
    v8 = paired_unlock_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 == 1)
    {
      if (v9)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dismissed while performing Paired Unlock. Cancelling or relocking watch if necessary", v11, 2u);
      }

      [*(a1 + 32) sendRelockRequestWithReset:1];
    }

    else
    {
      if (v9)
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Banner dismissed after Paired Unlock finished. Doing nothing according to policy.", v10, 2u);
      }
    }
  }
}

id sub_100233DD4(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Paired Unlock Banner lock button tapped. Disabling Paired unlock until watch off wrist or unlocked", buf, 2u);
  }

  [*(a1 + 32) setNeedsOffWristBeforePairedUnlock:1];
  v3 = [*(a1 + 32) delayedStartTimer];

  v4 = paired_unlock_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lock button tapped before starting Paired Unlock. Not starting Paired Unlock", v11, 2u);
    }

    [*(a1 + 32) invalidateDelayedStartTimer];
  }

  else
  {
    if (v5)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lock button tapped during or after Paired Unlock. Relocking watch if necessary", v10, 2u);
    }

    [*(a1 + 32) sendRelockRequestWithReset:1];
  }

  v6 = [*(a1 + 32) metrics];

  if (v6)
  {
    v7 = [*(a1 + 32) metrics];
    [v7 setRelockedWatch:1];

    v8 = [*(a1 + 32) metrics];
    [v8 setFailureReason:17];
  }

  return [*(a1 + 32) sendResetMessage:objc_msgSend(*(*(a1 + 32) + 128) reason:{"unlockSessionID"), 17}];
}

id sub_1002345A4(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Delayed start timer fired", v5, 2u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return [*(a1 + 32) invalidateDelayedStartTimer];
}

id sub_1002347BC(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Long-term key timer fired, resetting state", v4, 2u);
  }

  *(*(a1 + 32) + 67) = 0;
  [*(a1 + 32) releaseKeyBagAssertion];
  return [*(a1 + 32) abortDevicePairingWithReason:@"com.apple.sharingd.abort-reason.response.timeout"];
}

void sub_100234B14(uint64_t a1)
{
  [*(a1 + 32) setRemoteDeviceLocked:1];
  [*(a1 + 32) resetAndClearState];
  [*(a1 + 32) setSecurityManager:0];
  [*(a1 + 32) updateSecurityManager];
  v2 = *(*(a1 + 32) + 96);
  v3 = objc_opt_new();
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  if (v5 > 0.0 && ![*(a1 + 32) unlockingState])
  {
    v6 = paired_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Retrying unlock after switch", v9, 2u);
    }

    [*(a1 + 32) startUnlockIfNeeded];
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = 0;
  }
}

void sub_10023516C(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "State timer fired, assuming devices are not connected", v7, 2u);
  }

  v3 = *(a1 + 32);
  v4 = SFUnlockErrorDomian;
  v8 = NSLocalizedDescriptionKey;
  v9 = @"Remote never responded with state";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:v4 code:113 userInfo:v5];
  [v3 notifyUnlockStateWithState:0 error:v6];
}

void sub_10023556C(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return;
  }

  if (![*(a1 + 32) unlockEnabled])
  {
    v3 = *(a1 + 40);
    v7 = SFUnlockErrorDomian;
    v13 = NSLocalizedDescriptionKey;
    v14 = @"Paired Unlock disabled";
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = v7;
    v10 = 109;
LABEL_9:
    v12 = [NSError errorWithDomain:v9 code:v10 userInfo:v8];
    (*(v3 + 16))(v3, 0, v12);

    return;
  }

  v2 = [*(a1 + 32) initiateStashBagCreationWithManifest:0];
  v3 = *(a1 + 40);
  if (!v2)
  {
    v11 = SFUnlockErrorDomian;
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Could not initiate stash creation";
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = v11;
    v10 = 101;
    goto LABEL_9;
  }

  v4 = [*(a1 + 40) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  *(v5 + 144) = v4;
}

void sub_1002357F8(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    return;
  }

  if (![*(a1 + 32) unlockEnabled])
  {
    v3 = *(a1 + 48);
    v7 = SFUnlockErrorDomian;
    v13 = NSLocalizedDescriptionKey;
    v14 = @"Paired Unlock disabled";
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = v7;
    v10 = 109;
LABEL_9:
    v12 = [NSError errorWithDomain:v9 code:v10 userInfo:v8];
    (*(v3 + 16))(v3, 0, v12);

    return;
  }

  v2 = [*(a1 + 32) initiateStashBagCreationWithManifest:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (!v2)
  {
    v11 = SFUnlockErrorDomian;
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Could not initiate stash creation with manifest";
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = v11;
    v10 = 101;
    goto LABEL_9;
  }

  v4 = [*(a1 + 48) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  *(v5 + 144) = v4;
}

void sub_10023766C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 68);
  v3 = paired_unlock_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Telling watch to finish unlocking", buf, 2u);
    }

    [*(a1 + 32) sendSessionAuthenticationToken:*(a1 + 40) sessionID:{objc_msgSend(*(a1 + 48), "sessionID")}];
    v5 = paired_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preemptively assuming watch will succeed in unlock. Updating pill to Unlocked", v10, 2u);
    }

    v6 = +[SDHUDManager shared];
    [v6 updatePairedUnlockBannerToUnlocked];

    v7 = +[NSDate date];
    v8 = [*(a1 + 32) metricDates];
    [v8 setPillUpdated:v7];
  }

  else
  {
    if (v4)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempt cancelled. Not sending auth token. Dismissing banner just in case", v9, 2u);
    }

    v7 = +[SDHUDManager shared];
    [v7 dismissPairedUnlockBanner];
  }
}

id sub_1002383A4(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10023B058();
  }

  result = [*(a1 + 32) releaseKeyBagAssertion];
  v4 = *(a1 + 32);
  if (*(v4 + 67) == 1)
  {
    *(v4 + 67) = 0;
    [*(a1 + 32) invalidateLongTermKeyTimer];
    return [*(a1 + 32) abortDevicePairingWithReason:@"com.apple.sharingd.abort-reason.send.request"];
  }

  return result;
}

id sub_100238584(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10023B094();
  }

  return [*(a1 + 32) abortDevicePairingWithReason:@"com.apple.sharingd.abort-reason.send.response"];
}

id sub_100238B78(uint64_t a1)
{
  v2 = [*(a1 + 32) metrics];

  if (v2)
  {
    v3 = [*(a1 + 32) metrics];
    [v3 setFailureReason:24];
  }

  v4 = *(a1 + 32);

  return [v4 resetAndClearState];
}

void sub_100238D54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting state. Error: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) metrics];

  if (v5)
  {
    v6 = [*(a1 + 32) metrics];
    [v6 setFailureReason:24];
  }

  [*(a1 + 32) resetAndClearState];
}

void sub_100238F8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SFUnlockErrorDomian;
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Message failed to send";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [NSError errorWithDomain:v2 code:103 userInfo:v3];
  [v1 notifyStashStateWithError:v4];
}

void sub_1002391A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SFUnlockErrorDomian;
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Message failed to send";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [NSError errorWithDomain:v2 code:103 userInfo:v3];
  [v1 notifyStashStateWithError:v4];
}

void sub_100239398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10023B0D0();
  }

  v5 = *(a1 + 32);
  v6 = SFUnlockErrorDomian;
  v9 = NSLocalizedDescriptionKey;
  v10 = @"State request failed to send";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:103 userInfo:v7];
  [v5 notifyUnlockStateWithState:0 error:v8];
}

void sub_1002395EC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10023B140();
  }
}

void sub_10023A968()
{
  sub_100008A18();
  [v1 pairingCompatibilityState];
  [v0 deviceIsPaired];
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10023AA24()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AA60()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AA9C(void *a1)
{
  [a1 pairingCompatibilityState];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10023AB20()
{
  sub_100008A18();
  [v1 hasLongTermKey];
  v7 = [v0 longTermKey];
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10023ABE4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023AC54()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023ACC4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023AD34(void *a1, void *a2)
{
  [a1 unlockingState];
  [a2 hasKey];
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10023ADF4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AE30()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AE6C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AF1C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AF58()
{
  sub_100008A18();
  [v1 hasUnlockEnabled];
  [v0 unlockEnabled];
  [v0 hasPasscodeEnabled];
  [v0 passcodeEnabled];
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_10023B058()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023B094()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023B0D0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023B140()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023B1B0()
{
  sub_100008A18();
  [v1 unlockingState];
  v2 = *(v0 + 128);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10023B248()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023B2B8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023B2F4(int *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10023B3AC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023B3E8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023B424()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023BB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10023BB50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained completionHandler];
  v1[2](v1, 1, 0, 1);

  [WeakRetained openLinks];
}

void sub_10023BEB8(id a1)
{
  v1 = objc_alloc_init(SDUnlockLockManager);
  v2 = qword_10098A420;
  qword_10098A420 = v1;
}

void sub_10023C2F8(uint64_t a1)
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 deviceKeyBagState];

  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "keyBagLockStateChange: %ld", &v21, 0xCu);
  }

  v5 = +[SDStatusMonitor sharedMonitor];
  v6 = [v5 deviceKeyBagLocked];

  if (v6)
  {
    [*(a1 + 32) setLastUnlockedByPairedUnlock:0];
  }

  if ([*(a1 + 32) unlockEnabled])
  {
    v7 = +[SDStatusMonitor sharedMonitor];
    v8 = [v7 deviceKeyBagLocking];

    if (v8)
    {
      [*(a1 + 32) sendDeviceLockStateChanged:0];
      v9 = *(a1 + 32);
      v10 = 1;
LABEL_24:
      [v9 setSentLockedState:v10];
      return;
    }

    v12 = +[SDStatusMonitor sharedMonitor];
    v13 = [v12 deviceKeyBagDisabled];

    if (v13)
    {
      v14 = paired_unlock_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Passcode disabled", &v21, 2u);
      }

      [*(a1 + 32) disableUnlockPairing];
      [*(a1 + 32) sendDisableMessage];
      return;
    }

    v15 = +[SDStatusMonitor sharedMonitor];
    if ([v15 deviceKeyBagLocked])
    {
      v16 = [*(a1 + 32) sentLockedState];

      if ((v16 & 1) == 0)
      {
        [*(a1 + 32) sendDeviceLockStateChanged:0];
LABEL_23:
        v9 = *(a1 + 32);
        v10 = 0;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v17 = +[SDStatusMonitor sharedMonitor];
    v18 = [v17 deviceKeyBagUnlocked];

    if (v18)
    {
      [*(a1 + 32) sendDeviceLockStateChanged:1];
      if ([*(a1 + 32) lastUnlockedByPairedUnlock])
      {
        v19 = [*(a1 + 32) dailyMetrics];
        [v19 setSuccessfulAttempts:{objc_msgSend(v19, "successfulAttempts") + 1}];
      }

      v20 = [*(a1 + 32) dailyMetrics];
      [v20 setTotalUnlocks:{objc_msgSend(v20, "totalUnlocks") + 1}];
    }

    goto LABEL_23;
  }

  v11 = paired_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Paired unlock disabled not sending lock state", &v21, 2u);
  }
}

void sub_10023CAD8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dailyMetrics];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) unlockEnabled];

    if (v7)
    {
      v8 = [*(a1 + 32) dailyMetrics];
      v9 = [v8 totalAttempts];
      v10 = [*(a1 + 32) dailyMetrics];
      v11 = v9 - [v10 successfulAttempts];
      v12 = [*(a1 + 32) dailyMetrics];
      [v12 setFailedAttempts:v11];

      v13 = [*(a1 + 32) dailyMetrics];
      v14 = [v13 totalUnlocks];
      v15 = [*(a1 + 32) dailyMetrics];
      v16 = v14 - [v15 successfulAttempts];
      v17 = [*(a1 + 32) dailyMetrics];
      [v17 setPasscodeUnlocks:v16];

      v18 = +[SFAutoUnlockManager autoUnlockEnabled];
      v19 = [*(a1 + 32) dailyMetrics];
      [v19 setPhoneAutoUnlockEnabled:v18];

      v20 = [*(a1 + 32) idsController];
      v21 = [v20 activeIDSDevice];

      v22 = [v21 productBuildVersion];
      v23 = [*(a1 + 32) dailyMetrics];
      [v23 setPhoneSoftwareVersion:v22];

      v24 = [v21 modelIdentifier];
      v25 = [*(a1 + 32) dailyMetrics];
      [v25 setPhoneHardwareModel:v24];

      v26 = paired_unlock_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Submitting daily metrics", v29, 2u);
      }

      v27 = [*(a1 + 32) dailyMetrics];
      [v27 submitEvent];
    }
  }

  v28 = objc_alloc_init(SFPairedUnlockDailyEvent);
  [*(a1 + 32) setDailyMetrics:v28];

  v4[2](v4, 1);
}

id sub_10023D010(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Long-term key timer fired, resetting state", v4, 2u);
  }

  return [*(a1 + 32) resetLongTermKeyRequest];
}

void sub_10023D1F8(id *a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client enabling unlock", &v23, 2u);
  }

  v3 = a1[4];
  if (v3 && [v3 length] && a1[7])
  {
    if ([a1[5] isEqualToString:IDSDefaultPairedDevice])
    {
      v4 = [a1[6] idsController];
      v5 = [v4 hasDefaultDevice];

      if (v5)
      {
        v6 = [a1[4] copy];
        v7 = a1[6];
        v8 = v7[15];
        v7[15] = v6;

        v9 = [a1[7] copy];
        v10 = a1[6];
        v11 = v10[27];
        v10[27] = v9;

        *(a1[6] + 66) = 1;
        v12 = paired_unlock_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preventing exit for enable", &v23, 2u);
        }

        v13 = +[SDStatusMonitor sharedMonitor];
        [v13 addPreventExitForLocaleReason:@"SDUnlockSetupSessionPreventExitReason"];

        *(a1[6] + 70) = 1;
        [a1[6] enableUnlockForcingLTKTransfer:0];
        return;
      }
    }

    v21 = paired_unlock_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1002411FC(a1 + 5, a1);
    }

    v15 = a1[7];
    if (v15)
    {
      v22 = SFUnlockErrorDomian;
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Bad device identifier";
      v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v18 = v22;
      v19 = 104;
      goto LABEL_15;
    }
  }

  else
  {
    v14 = paired_unlock_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1002412C0(a1 + 4, a1, v14);
    }

    v15 = a1[7];
    if (v15)
    {
      v16 = SFUnlockErrorDomian;
      v24 = NSLocalizedDescriptionKey;
      v25 = @"Invalid password";
      v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v18 = v16;
      v19 = 112;
LABEL_15:
      v20 = [NSError errorWithDomain:v18 code:v19 userInfo:v17];
      v15[2](v15, 0, v20);
    }
  }
}

void sub_10023D94C(id a1)
{
  v1 = +[SDStatusMonitor sharedMonitor];
  [v1 removePreventExitForLocaleReason:@"SDUnlockSetupSessionPreventExitReason"];
}

void sub_10023F26C(uint64_t a1, int a2, int a3)
{
  v6 = +[NSDate now];
  v7 = [*(a1 + 32) metricDates];
  [v7 setMotionCheckEnded:v6];

  v8 = a3 ^ 1;
  if (((a2 ^ 1) & 1) != 0 || (v8 & 1) != 0 || ![*(a1 + 40) hasKey] || !objc_msgSend(*(a1 + 40), "hasUsingRecord"))
  {
    v14 = paired_unlock_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = @"NO";
      v17 = *(a1 + 40);
      if (a2)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *v21 = 138412802;
      *&v21[4] = v18;
      *&v21[12] = 2112;
      if (a3)
      {
        v16 = @"YES";
      }

      *&v21[14] = v16;
      v22 = 2112;
      v23 = v17;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Resetting (on wrist = %@, motion detected = %@, exchange request = %@)", v21, 0x20u);
    }

    if ((a2 & 1) != 0 || a3)
    {
      if ((v8 | a2) == 1)
      {
        if ((a2 ^ 1 | a3) == 1)
        {
          v15 = ![*(a1 + 40) hasKey] || (objc_msgSend(*(a1 + 40), "hasUsingRecord") & 1) == 0;
        }

        else
        {
          v15 = 6;
        }
      }

      else
      {
        v15 = 5;
      }
    }

    else
    {
      v15 = 7;
    }

    [*(a1 + 32) sendResetMessage:objc_msgSend(*(a1 + 40) reason:{"sessionID", *v21), v15}];
  }

  else
  {
    v9 = [*(a1 + 32) securityManager];
    [*(a1 + 32) setUnlockAuthSession:{objc_msgSend(v9, "unlockSessionAsOriginator:usingEscrow:escrowSecret:", 0, objc_msgSend(*(a1 + 40), "usingRecord"), 0)}];

    if (([*(a1 + 32) unlockAuthSession] & 0x8000000000000000) != 0)
    {
      v19 = paired_unlock_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100241BB4();
      }

      [*(a1 + 32) sendKeyExchangeResponse:0 sessionID:{objc_msgSend(*(a1 + 40), "sessionID")}];
      [*(a1 + 32) resetAndClearState];
    }

    else
    {
      v10 = [*(a1 + 32) securityManager];
      v11 = [*(a1 + 32) unlockAuthSession];
      v12 = [*(a1 + 40) key];
      v13 = [v10 stepWithAuthSession:v11 data:v12];

      if (v13)
      {
        [*(a1 + 32) sendKeyExchangeResponse:v13 sessionID:{objc_msgSend(*(a1 + 40), "sessionID")}];
        [*(a1 + 32) setWaitingForAuthToken:1];
      }

      else
      {
        v20 = paired_unlock_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100241BF0();
        }

        [*(a1 + 32) sendKeyExchangeResponse:0 sessionID:{objc_msgSend(*(a1 + 40), "sessionID")}];
        [*(a1 + 32) resetAndClearState];
      }
    }
  }
}

void sub_10023FCD0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100241DAC();
  }
}

id sub_10023FE74(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100241E1C();
  }

  [*(a1 + 32) invalidateLongTermKeyTimer];
  return [*(a1 + 32) resetLongTermKeyRequest];
}

void sub_100240030(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100241E58();
  }

  v5 = *(a1 + 32);
  v6 = SFUnlockErrorDomian;
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Failed to send to other device";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:106 userInfo:v7];
  [v5 notifyEnableStateWithError:v8];
}

void sub_1002402A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100241EC8();
  }

  v5 = *(a1 + 32);
  v6 = SFUnlockErrorDomian;
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Failed to send to other device";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:106 userInfo:v7];
  [v5 notifyEnableStateWithError:v8];
}

void sub_100240510(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100241F38();
  }

  v5 = *(a1 + 32);
  v6 = SFUnlockErrorDomian;
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Failed to send to other device";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:106 userInfo:v7];
  [v5 notifyEnableStateWithError:v8];
}

void sub_100240C64(id a1, NSError *a2)
{
  v2 = a2;
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100241FA8();
  }
}

void sub_100241184(uint64_t *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1002411FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = [*(a2 + 48) idsController];
  [v3 hasDefaultDevice];
  sub_10002FCEC();
  sub_100008860();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1002412C0(void *a1, uint64_t a2, os_log_t log)
{
  v3 = @"YES";
  if (*a1)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (!*(a2 + 56))
  {
    v3 = @"NO";
  }

  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid parameters (passcode = %@, handler = %@)", &v5, 0x16u);
}

void sub_100241370()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002413AC(void *a1, uint64_t a2)
{
  [a1 hasRequestID];
  v4 = [a1 requestID];
  v5 = *(a2 + 88);
  sub_10002FCEC();
  sub_100008860();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100241488(void *a1)
{
  [a1 hasLongTermKey];
  v2 = [a1 longTermKey];
  sub_100021F34();
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100241540()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10024157C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002415B8(void *a1)
{
  [a1 hasLongTermKey];
  v2 = [a1 longTermKey];
  sub_100021F34();
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100241670()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241720()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002417D0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10024180C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241848()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241884(void *a1, void *a2, NSObject *a3)
{
  if ([a1 hasToken])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [a1 token];
  v8 = [a2 securityManager];
  v9 = [v8 localLongTermKey];
  if (v9)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [a2 securityManager];
  v12 = [v11 remoteLongTermKey];
  v15 = 138413058;
  v16 = v6;
  sub_10002FCEC();
  v17 = v7;
  v18 = v13;
  v19 = v10;
  v20 = v13;
  v21 = v14;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Missing information for escrow session (has token = %@, token = %@, local long-term key = %@, remote long-term key = %@)", &v15, 0x2Au);
}

void sub_1002419D4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241A10()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241A80()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241ABC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241B78()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241BB4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241BF0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241C2C(void *a1)
{
  [a1 inPosition];
  [a1 waitingForAuthToken];
  sub_10002FCEC();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100241D00()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241D3C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241DAC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241E1C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241E58()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241EC8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241F38()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241FA8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t SDUnlockSessionAuthTokenReadFrom(uint64_t a1, void *a2)
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
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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

      if (v13 != 3)
      {
        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_65;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_59;
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

LABEL_59:
        v36 = 16;
        goto LABEL_64;
      }

      v34 = PBReaderReadData();
      v35 = *(a1 + 8);
      *(a1 + 8) = v34;

LABEL_65:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 28) |= 4u;
      while (1)
      {
        v41 = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v41 & 0x7F) << v28;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v30;
      }

LABEL_63:
      v36 = 24;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_40;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        v40 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v40 & 0x7F) << v14;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_55;
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

LABEL_55:
      v36 = 20;
    }

LABEL_64:
    *(a1 + v36) = v20;
    goto LABEL_65;
  }

  return [a2 hasError] ^ 1;
}

id sub_100243170(uint64_t a1)
{
  if (a1 >= 0x1A)
  {
    v2 = [NSString stringWithFormat:@"Unknown reason %hu", a1];
  }

  else
  {
    v2 = *(&off_1008D53D8 + a1);
  }

  return v2;
}

void sub_100243E8C(uint64_t a1)
{
  [*(a1 + 32) resetAndClearState];
  v2 = *(a1 + 32);
  v3 = [v2 securityManager];
  [v2 disableUnlockPairingForSecManager:v3];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = SFPairedUnlockStateChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
}

uint64_t sub_100244064(uint64_t a1)
{
  [*(a1 + 32) disableUnlockPairing];
  [*(a1 + 32) sendDisableMessage];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_100244324(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Session timer fired, resetting state", v6, 2u);
  }

  v3 = [*(a1 + 32) metrics];

  if (v3)
  {
    v4 = [*(a1 + 32) metrics];
    [v4 setFailureReason:19];
  }

  return [*(a1 + 32) resetAndClearState];
}

void sub_100244524(id a1, NSError *a2)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100245080();
  }
}

void sub_10024460C(id a1, NSError *a2)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1002450B4();
  }
}

void sub_1002451EC(id a1)
{
  v1 = objc_alloc_init(SDNearbyAgent);
  v2 = gSFNearbyAgent;
  gSFNearbyAgent = v1;
}

const char *sub_1002453D0(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return "?";
  }

  else
  {
    return off_1008D60A0[a1];
  }
}

const char *sub_1002453F4(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return "?";
  }

  else
  {
    return off_1008D5A20[a1];
  }
}

void sub_100245418(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 identity];

  if (v4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void *sub_10024581C(void *result)
{
  v2 = result[4];
  v3 = *(v2 + 952);
  if (*(result + 10) == v3)
  {
    return result;
  }

  v4 = result;
  if (dword_100973248 <= 40)
  {
    if (dword_100973248 != -1)
    {
LABEL_4:
      if (v3 <= 0xF)
      {
        v5 = off_1008D5A20[v3];
      }

      v7 = *(v4 + 10);
      if (v7 <= 0xF)
      {
        v8 = off_1008D5A20[v7];
      }

      LogPrintF();
      v2 = v4[4];
      goto LABEL_11;
    }

    v6 = _LogCategory_Initialize();
    v2 = v4[4];
    if (v6)
    {
      v3 = *(v2 + 952);
      goto LABEL_4;
    }
  }

LABEL_11:
  *(v2 + 952) = *(v4 + 10);
  v9 = v4[4];
  v10 = *(v9 + 88);
  *(v9 + 88) = 0;

  v11 = v4[4];

  return [v11 _update];
}

void *sub_10024599C(void *result)
{
  v2 = *(result + 40);
  v3 = result[4];
  if (v2 == *(v3 + 944))
  {
    return result;
  }

  v4 = result;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 == -1)
    {
      v5 = _LogCategory_Initialize();
      LOBYTE(v2) = *(v4 + 40);
      v3 = v4[4];
      if (!v5)
      {
        goto LABEL_6;
      }

      v7 = *(v3 + 944);
    }

    LogPrintF();
    LOBYTE(v2) = *(v4 + 40);
    v3 = v4[4];
  }

LABEL_6:
  *(v3 + 944) = v2;
  v6 = v4[4];

  return [v6 _update];
}

void *sub_100245AF8(void *result)
{
  v2 = *(result + 40);
  v3 = result[4];
  if (v2 == *(v3 + 945))
  {
    return result;
  }

  v4 = result;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 == -1)
    {
      v5 = _LogCategory_Initialize();
      LOBYTE(v2) = *(v4 + 40);
      v3 = v4[4];
      if (!v5)
      {
        goto LABEL_6;
      }

      v7 = *(v3 + 945);
    }

    LogPrintF();
    LOBYTE(v2) = *(v4 + 40);
    v3 = v4[4];
  }

LABEL_6:
  *(v3 + 945) = v2;
  v6 = v4[4];

  return [v6 _update];
}

void *sub_100245C54(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(v2 + 532);
  if (*(result + 40))
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3 - 1;
  }

  *(v2 + 532) = v4;
  v5 = result[4];
  v6 = *(v5 + 532);
  v7 = v6 != 0;
  if (*(v5 + 946) != v7)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 == -1)
      {
        v8 = _LogCategory_Initialize();
        v5 = v1[4];
        if (!v8)
        {
          goto LABEL_14;
        }

        v12 = *(v5 + 946);
      }

      LogPrintF();
      v5 = v1[4];
    }

LABEL_14:
    *(v5 + 946) = v7;
    v9 = v1[4];

    return [v9 _update];
  }

  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v10 = v1[4];
      v11 = *(v10 + 532);
      LOBYTE(v10) = *(v10 + 946);
      return LogPrintF();
    }
  }

  return result;
}

_DWORD *sub_100245E58(_DWORD *result)
{
  v2 = result[10];
  v3 = *(result + 4);
  if (v2 == *(v3 + 956))
  {
    return result;
  }

  v4 = result;
  if (dword_100973248 <= 20)
  {
    if (dword_100973248 == -1)
    {
      v5 = _LogCategory_Initialize();
      v2 = v4[10];
      v3 = *(v4 + 4);
      if (!v5)
      {
        goto LABEL_6;
      }

      v9 = *(v3 + 956);
    }

    LogPrintF();
    v2 = v4[10];
    v3 = *(v4 + 4);
  }

LABEL_6:
  *(v3 + 956) = v2;
  v6 = *(v4 + 4);
  v7 = *(v6 + 128);
  *(v6 + 128) = 0;

  v8 = *(v4 + 4);

  return [v8 _update];
}

_BYTE *sub_100245FA0(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    return [result _activate];
  }

  return result;
}

id sub_1002467F4(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 568);
  state64 = 0;
  notify_get_state(v2, &state64);
  *(*v1 + 70) = state64;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100262154(v1);
  }

  return [*v1 _update];
}

id sub_10024687C(uint64_t a1)
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_10026219C();
  }

  v2 = *(a1 + 32);

  return [v2 _bleAdvertisingAddressChanged];
}

id sub_1002468E4(uint64_t a1)
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002621B8();
  }

  v2 = *(a1 + 32);

  return [v2 _update];
}

uint64_t sub_10024694C(uint64_t result)
{
  v1 = result;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1002621D4();
    }
  }

  *(*(v1 + 32) + 692) = -1;
  return result;
}

id sub_1002469AC(uint64_t a1)
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002621F0();
  }

  v2 = *(a1 + 32);

  return [v2 _idsMeDeviceChanged];
}

id sub_100246A14(uint64_t a1)
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_10026220C();
  }

  *(*(a1 + 32) + 72) = -1;
  v2 = *(a1 + 32);

  return [v2 _update];
}

id sub_100246A88(uint64_t a1)
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100262228();
  }

  [*(a1 + 32) _updateCameraState];
  if ([*(a1 + 32) _shouldDeliverDonStateUpdates])
  {
    [*(a1 + 32) _updateDonState];
  }

  v2 = *(a1 + 32);

  return [v2 _update];
}

id sub_100246B0C(uint64_t a1)
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100262244();
  }

  v2 = *(a1 + 32);

  return [v2 _update];
}

id sub_100246B74(uint64_t a1)
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100262260();
  }

  v2 = *(a1 + 32);

  return [v2 _update];
}

void sub_100246BDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 976);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100246C50;
  block[3] = &unk_1008CDEA0;
  block[4] = v1;
  dispatch_async(v2, block);
}

id sub_100246C50(uint64_t a1)
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_10026227C();
  }

  *(*(a1 + 32) + 692) = -1;
  if ([*(a1 + 32) _shouldDeliverDonStateUpdates])
  {
    [*(a1 + 32) _updateDonState];
  }

  v2 = *(a1 + 32);

  return [v2 _update];
}

void sub_100246CD8(id a1, CUBluetoothDevice *a2, id a3)
{
  v8 = a2;
  v4 = a3;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100262298();
  }

  v5 = [SDHeadphoneEngravingRequest alloc];
  v6 = [(CUBluetoothDevice *)v8 addressString];
  v7 = [(SDHeadphoneEngravingRequest *)v5 initWithBluetoothAddress:v6];

  [(SDHeadphoneEngravingRequest *)v7 setCompletion:v4];
  [(SDHeadphoneEngravingRequest *)v7 start];
}

void *sub_10024743C(void *result)
{
  if (*(result[4] + 808))
  {
    v1 = result;
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002622F4();
    }

    v2 = v1[4];

    return [v2 _update];
  }

  return result;
}

void *sub_100247528(void *result)
{
  if (*(result[4] + 808))
  {
    v1 = result;
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262310();
    }

    v2 = v1[4];
    v3 = *(v2 + 408);
    *(v2 + 408) = 0;

    v4 = v1[4];

    return [v4 _update];
  }

  return result;
}

void *sub_100248EF0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[101];
  if (!v3)
  {
    return result;
  }

  if (dword_100973248 <= 40)
  {
    if (dword_100973248 == -1)
    {
      v4 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = result[101];
    }

    [v3 carplayConnected];
    LogPrintF();
    result = *(a1 + 32);
  }

LABEL_7:

  return [result _update];
}

void *sub_100249040(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[101];
  if (!v3)
  {
    return result;
  }

  if (dword_100973248 <= 40)
  {
    if (dword_100973248 == -1)
    {
      v4 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = result[101];
    }

    [v3 multipleUsersLoggedIn];
    LogPrintF();
    result = *(a1 + 32);
  }

LABEL_7:

  return [result _update];
}

id sub_1002491A8(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 808))
  {
    v2 = result;
    *(v1 + 44) = *(result + 40);
    [*(result + 4) _enhancedDiscoveryScreenChange:?];
    v3 = v2[4];

    return [v3 _update];
  }

  return result;
}

id sub_100249270(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  result = *(v1 + 808);
  if (result)
  {
    v4 = *(v1 + 56);
    *(*v2 + 56) = [result deviceUIUnlocked];
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262DF0(v2);
    }

    v5 = *v2;
    if ((v4 & 1) == 0 && *(v5 + 56) == 1)
    {
      *(v5 + 424) = 0;
      v5 = *v2;
    }

    return [v5 _update];
  }

  return result;
}

void *sub_1002493C0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[101];
  if (!v3)
  {
    return result;
  }

  if (dword_100973248 <= 40)
  {
    if (dword_100973248 == -1)
    {
      v4 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = result[101];
    }

    [v3 mediaAccessControlSetting];
    LogPrintF();
    result = *(a1 + 32);
  }

LABEL_7:

  return [result _update];
}

void *sub_1002494F8(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[101];
  if (!v3)
  {
    return result;
  }

  if (dword_100973248 <= 40)
  {
    if (dword_100973248 == -1)
    {
      v4 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = result[101];
    }

    v6 = [v3 pairedWatchWristState];
    LogPrintF();
    result = *(a1 + 32);
  }

LABEL_7:
  [result _idsMeDeviceChanged];
  v5 = *(a1 + 32);

  return [v5 _update];
}

uint64_t sub_10024965C(uint64_t a1)
{
  v3 = 0;
  [*(a1 + 32) _activityMonitorCurrentLevelAndNeedsPoll:0 recentUserActivity:&v3];
  return (*(*(a1 + 40) + 16))();
}

void sub_1002496C0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100262FE8();
        v3 = v5;
      }
    }
  }
}

void sub_10024973C(uint64_t a1)
{
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100263028();
  }

  v2 = *(*(a1 + 32) + 152);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = 0;
  }

  *(*(a1 + 32) + 112) = 0;
  [*(*(a1 + 32) + 136) invalidate];
  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  *(v6 + 136) = 0;
}

void sub_1002498B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (dword_1009731D8 <= 50)
  {
    if (dword_1009731D8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v10, v4))
    {
      sub_100263060();
      v3 = v10;
    }
  }

  v5 = *(a1 + 32);
  if (!v5[20])
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = *(a1 + 32);
    v8 = *(v7 + 160);
    *(v7 + 160) = v6;

    v3 = v10;
    v5 = *(a1 + 32);
  }

  [v5 _deviceDiscoveryBLEDeviceFound:v3 type:15];
  v9 = [v10 identifier];
  if (v9)
  {
    [*(*(a1 + 32) + 160) setObject:v10 forKeyedSubscript:v9];
  }
}

id sub_10024999C(uint64_t a1, uint64_t a2)
{
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002630A0();
  }

  v4 = *(a1 + 32);

  return [v4 _deviceDiscoveryBLEScanStateChanged:a2 type:15];
}

uint64_t sub_100249B98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100249BB0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([v7 sessionFlags] & 0x100) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

const char *sub_100249C34(int a1)
{
  result = "Invalid";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "ContinuityRemote";
      break;
    case 2:
      result = "iOSSetup";
      break;
    case 3:
      result = "Repair";
      break;
    case 4:
      result = "Setup2";
      break;
    case 5:
      result = "AudioTuning";
      break;
    case 6:
      result = "PasswordGranting";
      break;
    case 7:
      result = "PasswordSharing";
      break;
    case 8:
      result = "System";
      break;
    case 9:
      result = "AutoUnlock";
      break;
    case 10:
      result = "WHASetup";
      break;
    case 11:
      result = "AppleTVSetup";
      break;
    case 12:
      result = "DeviceDiagnostics";
      break;
    case 13:
      result = "RemoteAutoFill";
      break;
    case 14:
      result = "ApplePay";
      break;
    case 15:
      result = "CompanionLinkProx";
      break;
    case 16:
      result = "RemoteManagement";
      break;
    case 17:
      result = "RemoteAutoFillPong";
      break;
    case 18:
      result = "RemoteDisplay";
      break;
    case 19:
      result = "ContinuityKeyboard";
      break;
    case 20:
      result = "PhoneCallHandoff";
      break;
    case 21:
      result = "ShareAudio";
      break;
    case 22:
      result = "AuthenticateAccounts";
      break;
    case 23:
      goto LABEL_5;
    case 24:
      result = "HasInvitations";
      break;
    case 25:
      result = "AcceptedInvitation";
      break;
    default:
      if (a1 == 127)
      {
        result = "Debug";
      }

      else
      {
LABEL_5:
        result = "?";
      }

      break;
  }

  return result;
}

void sub_100249DAC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_1002633D4();
        v3 = v5;
      }
    }
  }
}

void *sub_10024A704(void *result)
{
  if (result[4] == *(result[5] + 224))
  {
    v2 = result;
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002634D4(v2);
    }

    v3 = *(*(v2 + 40) + 224);
    if (v3)
    {
      v4 = v3;
      dispatch_source_cancel(v4);
      v5 = *(v2 + 40);
      v6 = *(v5 + 224);
      *(v5 + 224) = 0;
    }

    v7 = *(v2 + 40);

    return [v7 _update];
  }

  return result;
}

const char *sub_10024ACD4(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "?";
  }

  else
  {
    return off_1008D5CF8[a1];
  }
}

void sub_10024BDE0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 90)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100263CBC();
        v3 = v5;
      }
    }
  }
}

void sub_10024BE6C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 90)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100263D70();
        v3 = v5;
      }
    }
  }
}

void sub_10024BEF8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 90)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100263E24();
        v3 = v5;
      }
    }
  }
}

void sub_10024BF84(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100263EBC();
  }

  v3 = [v4 identifier];
  if (v3)
  {
    [*(*(a1 + 32) + 240) removeObjectForKey:v3];
  }

  [*(a1 + 32) _deviceDiscoveryBLEDeviceLost:v4 type:16];
}

id sub_10024C038(uint64_t a1, uint64_t a2)
{
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100263EFC();
  }

  v4 = *(a1 + 32);

  return [v4 _deviceDiscoveryBLEScanStateChanged:a2 type:16];
}

id sub_10024C0B0(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 976));
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002640D4();
  }

  v4 = *(a1 + 32);

  return [v4 _deviceDiscoveryBLEScanStateChanged:a2 type:7];
}

void sub_10024C584(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_1002643DC();
        v3 = v5;
      }
    }
  }
}

void *sub_10024C800(void *result)
{
  if (*(result[4] + 808))
  {
    v1 = result;
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002644AC();
    }

    v2 = v1[4];

    return [v2 _update];
  }

  return result;
}

void sub_10024CF64(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) deviceFilter];
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_11;
  }

  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [v5 isEqual:v6];

    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264618(v2, (a1 + 40));
  }

  [*v2 setDeviceFilter:*(a1 + 40)];
LABEL_11:
  v9 = *(a1 + 104);
  if (v9 != [*(a1 + 32) changeFlags])
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264658(v2);
    }

    [*v2 setChangeFlags:*(a1 + 104)];
  }

  v10 = [*(a1 + 32) payloadFilterData];
  v11 = *(a1 + 48);
  v12 = v10;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_23;
  }

  if ((v12 != 0) == (v13 == 0))
  {

    goto LABEL_22;
  }

  v15 = [v12 isEqual:v13];

  if ((v15 & 1) == 0)
  {
LABEL_22:
    [*(a1 + 32) setPayloadFilterData:*(a1 + 48) mask:*(a1 + 48)];
  }

LABEL_23:
  v16 = *(a1 + 80);
  if (v16 != [*(a1 + 32) rssiThreshold])
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002646B0(v2, (a1 + 80));
    }

    [*v2 setRssiThreshold:*(a1 + 80)];
  }

  v17 = *(a1 + 108);
  if (v17 != [*(a1 + 32) scanCache])
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002646F0(v2);
    }

    [*v2 setScanCache:*(a1 + 108)];
  }

  v18 = *(a1 + 88);
  if (v18 != [*(a1 + 32) scanRate])
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264768(v2, (a1 + 88));
    }

    [*v2 setScanRate:*(a1 + 88)];
  }

  v19 = *(a1 + 96);
  if (v19 != [*(a1 + 32) rescanIntervalScreenOff])
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264954(v2);
    }

    [*v2 setRescanIntervalScreenOff:*(a1 + 96)];
  }

  v20 = [*(a1 + 32) trackedPeers];
  v21 = *(a1 + 56);
  v22 = v20;
  v23 = v21;
  v24 = v23;
  if (v22 == v23)
  {

    goto LABEL_53;
  }

  if ((v22 != 0) != (v23 == 0))
  {
    v25 = [v22 isEqual:v23];

    if (v25)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002649AC(v2, (a1 + 56));
  }

  [*v2 setTrackedPeers:*(a1 + 56)];
LABEL_53:
  v26 = [*(a1 + 32) useCases];
  v27 = *(a1 + 64);
  v32 = v26;
  v28 = v27;
  if (v32 == v28)
  {
  }

  else
  {
    if ((v32 != 0) != (v28 == 0))
    {
      v29 = [v32 isEqual:v28];

      if (v29)
      {
        return;
      }
    }

    else
    {
    }

    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002649EC(v2, a1, (a1 + 64));
    }

    v30 = *(a1 + 64);
    v31 = *v2;

    [v31 setUseCases:v30];
  }
}

void sub_10024EA30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264AEC();
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 976);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10024EB24;
    v9[3] = &unk_1008CE028;
    v9[4] = v7;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

id sub_10024EB24(uint64_t a1)
{
  *(*(a1 + 32) + 709) = [*(a1 + 40) isMounted];
  v2 = *(a1 + 32);

  return [v2 _cameraStateChanged];
}

void *sub_10024ED0C(void *result)
{
  v1 = result[4];
  if (*(v1 + 709) != 1)
  {
    return result;
  }

  v2 = *(v1 + 712);
  if (v2 == -1.0)
  {
    return result;
  }

  v3 = result;
  v4 = *(v1 + 712);
  if (*(v1 + 816) == 1)
  {
    v5 = *(v1 + 716);
    if (v5 == -1.0)
    {
      return result;
    }

    v4 = *(v1 + 712);
    if (v5 > v2)
    {
      v4 = *(v1 + 716);
    }
  }

  if (dword_100973248 <= 30)
  {
    if (dword_100973248 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v1 = v3[4];
      v8 = *(v1 + 712);
      v9 = *(v1 + 816);
    }

    v10 = *(v1 + 716);
    LogPrintF();
  }

LABEL_12:
  v6 = v4 < 0.0;
  if (v4 > 7.0)
  {
    v6 = 1;
  }

  *(v3[4] + 710) = v6;
  v7 = v3[4];

  return [v7 _updateCameraState];
}

void sub_10024F0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10024F0EC(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 isEqualToString:@"RLuxOutput"])
  {
    v6 = v5;
    v7 = [v6 objectForKeyedSubscript:@"status"];
    if ([v7 intValue])
    {
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100264C18();
      }
    }

    else
    {
      v11 = [v6 objectForKeyedSubscript:@"lux"];
      [v11 floatValue];
      *(*(a1 + 32) + 716) = v12;
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100264C58(a1 + 32);
      }

      [*(a1 + 32) _useLuxValue];
    }

    [*(*(a1 + 32) + 312) unregisterNotificationForKey:@"RLuxOutput"];
  }

  else if ([v13 isEqualToString:@"Lux"])
  {
    [v5 floatValue];
    v9 = *(a1 + 32);
    v8 = (a1 + 32);
    *(v9 + 712) = v10;
    [*(*v8 + 39) setProperty:&__kCFBooleanFalse forKey:@"ActivateALS"];
    [*(*v8 + 39) unregisterNotificationForKey:@"Lux"];
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264BCC(v8);
    }

    [*v8 _useLuxValue];
  }
}

id sub_10024F378(uint64_t a1)
{
  result = *(*(a1 + 32) + 880);
  if (result != -1)
  {
    state64 = 0;
    result = notify_get_state(result, &state64);
    if (state64 == 3)
    {
      return [*(a1 + 32) _notifyCameraConfigChange];
    }

    else if (state64 == 2)
    {
      return [*(a1 + 32) _checkConditionsForEnhancedDiscovery];
    }

    else if ((state64 & 0xFFFFFFFE) == 4)
    {
      [*(a1 + 32) _discoverySessionStateChange:state64 == 4];
      [*(a1 + 32) _checkConditionsForEnhancedDiscovery];
      return [*(a1 + 32) _cameraStateChanged];
    }
  }

  return result;
}

void sub_10024F7A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264D30(a1);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10024FA80;
    v16[3] = &unk_1008D5740;
    v13 = *(a1 + 40);
    v17 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v18 = v14;
    v19 = v15;
    [v13 sendRequestID:@"com.sharing.donState" request:&off_10090FE88 options:0 responseHandler:v16];

    v5 = v17;
    goto LABEL_18;
  }

  if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264CA4();
  }

  [*(a1 + 40) invalidate];
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) idsDeviceIdentifier];

    if (v4)
    {
      v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 48) + 976));
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10024FA74;
      handler[3] = &unk_1008CE028;
      handler[4] = *(a1 + 48);
      v21 = *(a1 + 32);
      dispatch_source_set_event_handler(v5, handler);
      SFDispatchTimerSet();
      if (!*(*(a1 + 48) + 520))
      {
        v6 = objc_alloc_init(NSMutableDictionary);
        v7 = *(a1 + 48);
        v8 = *(v7 + 520);
        *(v7 + 520) = v6;
      }

      v9 = [*(a1 + 32) idsDeviceIdentifier];
      v10 = [*(*(a1 + 48) + 520) objectForKeyedSubscript:v9];

      if (v10)
      {
        v11 = [*(*(a1 + 48) + 520) objectForKeyedSubscript:v9];
        v12 = v11;
        if (v11)
        {
          dispatch_source_cancel(v11);
        }

        [*(*(a1 + 48) + 520) setObject:0 forKeyedSubscript:v9];
      }

      [*(*(a1 + 48) + 520) setObject:v5 forKeyedSubscript:v9];
      dispatch_resume(v5);

LABEL_18:
    }
  }
}

void sub_10024FA80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264D74(a1);
    }

    [*(a1 + 40) invalidate];
  }

  else
  {
    v9 = [*(a1 + 32) idsDeviceIdentifier];
    if (v9)
    {
      if (!*(*(a1 + 48) + 496))
      {
        v10 = objc_alloc_init(NSMutableDictionary);
        v11 = *(a1 + 48);
        v12 = *(v11 + 496);
        *(v11 + 496) = v10;
      }

      v13 = [*(a1 + 32) model];
      [*(*(a1 + 48) + 496) setObject:v13 forKeyedSubscript:v9];
    }

    [*(a1 + 40) invalidate];
  }
}

void sub_10024FCFC(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 model];
  if (([v3 containsString:@"Watch"] & 1) == 0)
  {
    v4 = [v13 model];
    if (([v4 containsString:@"iPhone"] & 1) == 0)
    {
      v5 = [v13 model];
      if (([v5 containsString:@"Mac"] & 1) == 0)
      {
        v6 = [v13 model];
        if (([v6 containsString:@"iMac"] & 1) == 0)
        {
          v11 = [v13 model];
          v12 = [v11 containsString:@"iPad"];

          if ((v12 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_9;
        }
      }
    }
  }

LABEL_9:
  v7 = v13;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v8 = _LogCategory_Initialize(), v7 = v13, v8))
    {
      sub_100264DE4();
      v7 = v13;
    }
  }

  v9 = [v7 idsDeviceIdentifier];
  v10 = [*(*(a1 + 32) + 496) objectForKey:v9];

  if (!v10)
  {
    [*(a1 + 32) _deliverDonnedEventToDevice:v13 allowRetry:1];
  }

LABEL_15:
}

void sub_10024FEA8(uint64_t a1, void *a2)
{
  v3 = [a2 idsDeviceIdentifier];
  if (v3)
  {
    v4 = v3;
    [*(*(a1 + 32) + 496) removeObjectForKey:v3];
    v3 = v4;
  }
}

void sub_10024FF0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264E24();
    }

    [*(*(a1 + 32) + 16) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v3 = v6;
  }
}

void sub_100250028(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(RPCompanionLinkClient);
  [v7 setDispatchQueue:*(*(a1 + 32) + 976)];
  [v7 setUseCase:131100];
  v8 = [v6 containsString:@"Watch"];

  if (v8)
  {
    v9 = 6291712;
  }

  else
  {
    v9 = 0x800000000000CLL;
  }

  [v7 setControlFlags:v9];
  v10 = objc_alloc_init(RPCompanionLinkDevice);
  [v10 setIdentifier:v5];
  [v7 setDestinationDevice:v10];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100250198;
  v14[3] = &unk_1008D5790;
  v15 = v5;
  v16 = v7;
  v17 = *(a1 + 32);
  v18 = v10;
  v11 = v10;
  v12 = v7;
  v13 = v5;
  [v12 activateWithCompletion:v14];
}

void sub_100250198(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      v6 = a1[4];
      v7 = v3;
      LogPrintF();
    }

    [a1[5] invalidate];
    if (a1[4])
    {
      [*(a1[6] + 62) removeObjectForKey:?];
    }

    [a1[6] _invalidateActiveDeviceDiscoveryIfNeeded];
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264E64(a1);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100250324;
    v9[3] = &unk_1008D5740;
    v4 = a1[5];
    v10 = a1[4];
    v8 = *(a1 + 5);
    v5 = v8.i64[0];
    v11 = vextq_s8(v8, v8, 8uLL);
    [v4 sendRequestID:@"com.sharing.donState" request:&off_10090FEB0 options:0 responseHandler:v9];
  }
}

void sub_100250324(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    v12 = *(a1 + 32);
    v13 = v8;
    LogPrintF();
  }

  v9 = [*(*(a1 + 40) + 520) objectForKeyedSubscript:{*(a1 + 32), v12, v13}];

  if (v9)
  {
    v10 = [*(*(a1 + 40) + 520) objectForKeyedSubscript:*(a1 + 32)];
    v11 = v10;
    if (v10)
    {
      dispatch_source_cancel(v10);
    }

    [*(*(a1 + 40) + 520) setObject:0 forKeyedSubscript:*(a1 + 32)];
  }

  [*(a1 + 48) invalidate];
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 496) removeObjectForKey:?];
  }

  [*(a1 + 40) _invalidateActiveDeviceDiscoveryIfNeeded];
}

void sub_100250A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100250AB0(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 idsDeviceIdentifier];
  v4 = (a1 + 32);
  if ([*(a1 + 32) containsObject:v3])
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264EE8();
    }

    if ([v8 activityLevel] >= 7)
    {
      v5 = [v8 idsDeviceIdentifier];
      if (v5)
      {
        [*v4 removeObject:v5];
      }

      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100264F28((a1 + 32));
      }

      if (![*v4 count])
      {
        [*(*(a1 + 40) + 848) invalidate];
        v6 = *(a1 + 40);
        v7 = *(v6 + 848);
        *(v6 + 848) = 0;

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }
}

void sub_100250C04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264F7C();
    }

    [*(*(a1 + 32) + 848) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 848);
    *(v4 + 848) = 0;
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264FBC(a1);
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 976));
    v7 = *(a1 + 32);
    v8 = *(v7 + 840);
    *(v7 + 840) = v6;

    v9 = *(a1 + 32);
    v10 = *(v9 + 840);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100250D9C;
    handler[3] = &unk_1008D57E0;
    handler[4] = v9;
    v13 = *(a1 + 40);
    v11 = v13;
    v15 = v13;
    dispatch_source_set_event_handler(v10, handler);
    v12 = *(*(a1 + 32) + 840);
    SFDispatchTimerSet();
    dispatch_resume(*(*(a1 + 32) + 840));
  }
}

void sub_100250D9C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 840);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 840);
    *(v4 + 840) = 0;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265004(a1);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [NSUUID alloc];
          v13 = [v12 initWithUUIDString:{v11, v16}];
          [*(*(a1 + 32) + 504) removeObjectForKey:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [*(a1 + 32) _handleDonnedDevicesChanged];
    [*(*(a1 + 32) + 848) invalidate];
    v14 = *(a1 + 32);
    v15 = *(v14 + 848);
    *(v14 + 848) = 0;
  }
}

void sub_100251014(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 _handleDonStateReceivedRequest:a2 withOptions:a3];
  (*(v7 + 2))(v7, 0, 0, 0);
}

void sub_100251094(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 90)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_10026504C();
        v3 = v5;
      }
    }
  }
}

void sub_100251218(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _performTemporaryScan];
  objc_sync_exit(obj);
}

void sub_100251EDC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 bluetoothStateChangedHandler];

  if (v4)
  {
    v5 = [v6 bluetoothStateChangedHandler];
    v5[2](v5, *(a1 + 32));
  }
}

void sub_100254884(uint64_t a1)
{
  [*(a1 + 32) _checkConditionsForEnhancedDiscovery];
  v2 = *(*(a1 + 32) + 360);
  if (v2)
  {
    v5 = v2;
    dispatch_source_cancel(v5);
    v3 = *(a1 + 32);
    v4 = *(v3 + 360);
    *(v3 + 360) = 0;
  }
}

void sub_100255448(uint64_t a1)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = *(*(a1 + 32) + 488);
  v3 = [v2 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v37;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        if (([v10 discoveryFlags] & 0x10) != 0)
        {
          v7 |= [v10 overrideScreenOff];
        }

        if ([v10 discoveryFlags])
        {
          v6 |= [v10 overrideScreenOff];
        }

        if (([v10 discoveryFlags] & 2) != 0)
        {
          v5 |= [v10 overrideScreenOff];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
    LOBYTE(v6) = 0;
    LOBYTE(v7) = 0;
  }

  *(*(a1 + 32) + 449) = v7 & 1;
  *(*(a1 + 32) + 465) = v6 & 1;
  *(*(a1 + 32) + 481) = v5 & 1;
  v11 = [*(a1 + 40) discoveryFlags];
  v12 = v11;
  if ((v11 & 0x20) != 0)
  {
    v13 = [*(a1 + 32) idsBluetoothDeviceIDsForSharing];
LABEL_24:
    v14 = v13;
    [*(a1 + 40) setDeviceFilter:v13];

    goto LABEL_25;
  }

  if ((v11 & 0x100000) != 0)
  {
    v13 = [*(a1 + 32) _idsBluetoothDeviceIDsForMe];
    goto LABEL_24;
  }

  if ((v11 & 0x200000) != 0)
  {
    v13 = [*(a1 + 32) _idsBluetoothDeviceIDsForHomePods];
    goto LABEL_24;
  }

  if ((v11 & 0x1000000) != 0)
  {
    [*(a1 + 32) _unlockDeviceFilterChangedForRequest:*(a1 + 40)];
  }

LABEL_25:
  v15 = [*(a1 + 40) deviceFoundHandler];
  if (v15)
  {
  }

  else
  {
    v16 = [*(a1 + 40) deviceLostHandler];

    if (!v16)
    {
LABEL_30:
      v17 = 0;
      goto LABEL_34;
    }
  }

  if ((v12 & 0x10) != 0)
  {
    v18 = 440;
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_30;
    }

    v18 = 456;
  }

  v17 = *(*(a1 + 32) + v18);
LABEL_34:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * j);
        v25 = [v19 objectForKeyedSubscript:{v24, v32}];
        if (v25)
        {
          v26 = [*(a1 + 40) deviceFilter];
          if (v26 && (v27 = v26, [*(a1 + 40) deviceFilter], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "containsObject:", v24), v28, v27, (v29 & 1) == 0))
          {
            v30 = [*(a1 + 40) deviceLostHandler];
          }

          else
          {
            v30 = [*(a1 + 40) deviceFoundHandler];
          }

          v31 = v30;
          if (v30)
          {
            (*(v30 + 16))(v30, v25);
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v21);
  }

  [*(a1 + 32) _update];
}

void sub_100255FA0(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = NSPrintF();
  [v1 _deviceDiscoveryFastScanStop:v2 reset:0 reason:{v4, v3}];
}

void sub_100256830(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = [v7 rapportIdentifier];
  v9 = [v8 isEqual:a1[4]];

  if (v9 && ([v10 isEqual:a1[5]] & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *a4 = 1;
  }
}

const char *sub_100256F3C(unsigned int a1)
{
  if (a1 > 0x66)
  {
    return "?";
  }

  else
  {
    return off_1008D6168[a1];
  }
}

id sub_1002577A4(uint64_t a1)
{
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265DC4();
  }

  v2 = *(a1 + 32);

  return [v2 _identificationGetIdentities];
}

void sub_1002579A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 976);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100257A84;
  v10[3] = &unk_1008CE158;
  v11 = *(a1 + 40);
  v12 = v6;
  v13 = *(a1 + 32);
  v14 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_100257A84(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  if (*(a1 + 40))
  {
    if (dword_100973248 > 90)
    {
      return;
    }

    if (dword_100973248 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v16 = *(a1 + 40);
    }

    LogPrintF();
    return;
  }

  v2 = *(a1 + 48);
  v3 = *(v2 + 992);
  *(v2 + 992) = 0;

  *(*(a1 + 48) + 58) = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = *(a1 + 56);
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_26;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v43;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v43 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v42 + 1) + 8 * i);
      if ([v10 type] == 1)
      {
        v11 = *(a1 + 48);
        v12 = *(v11 + 984);
        if (v12)
        {
          v7 = [v12 compareWithRPIdentity:v10];
          v11 = *(a1 + 48);
        }

        else
        {
          v7 = 2048;
        }

        v13 = (v11 + 984);
        goto LABEL_19;
      }

      if ([v10 type] == 14)
      {
        v13 = (*(a1 + 48) + 992);
LABEL_19:
        objc_storeStrong(v13, v10);
        goto LABEL_20;
      }

      if ([v10 type] == 15)
      {
        *(*(a1 + 48) + 58) = 1;
      }

LABEL_20:
      v14 = *(a1 + 48);
      if (*(v14 + 984) && *(v14 + 992))
      {
        goto LABEL_26;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
  }

  while (v6);
LABEL_26:

  v15 = *(*(a1 + 48) + 984);
  if (v15)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1)
      {
        goto LABEL_29;
      }

      if (_LogCategory_Initialize())
      {
        v15 = *(*(a1 + 48) + 984);
LABEL_29:
        v36 = v7;
        v37 = &unk_1007F5508;
        v35 = v15;
        LogPrintF();
      }
    }
  }

  else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265E18();
  }

  v17 = *(*(a1 + 48) + 992);
  if (v17)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1)
      {
        goto LABEL_40;
      }

      if (_LogCategory_Initialize())
      {
        v17 = *(*(a1 + 48) + 992);
LABEL_40:
        v35 = v17;
        LogPrintF();
      }
    }
  }

  else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265E4C();
  }

  if (v7)
  {
    v18 = *(a1 + 48);
    v19 = *(v18 + 88);
    *(v18 + 88) = 0;

    v20 = *(a1 + 48);
    v21 = *(v20 + 960);
    *(v20 + 960) = 0;

    v22 = *(a1 + 48);
    v23 = *(v22 + 128);
    *(v22 + 128) = 0;
  }

  v24 = objc_alloc_init(NSMutableArray);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = *(a1 + 56);
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v38 + 1) + 8 * j);
        if ([v30 type] != 1 && objc_msgSend(v30, "type") != 14)
        {
          [v24 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v27);
  }

  v31 = [v24 copy];
  v32 = *(a1 + 48);
  v33 = *(v32 + 904);
  *(v32 + 904) = v31;

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265E80((a1 + 56));
  }

  [*(a1 + 48) _identificationReIdentify];
  [*(a1 + 48) _identificationCheckFlagsAndACL];
  [*(a1 + 48) _update];
  v34 = +[NSNotificationCenter defaultCenter];
  [v34 postNotificationName:off_1009731D0 object:0];
}

void sub_1002589E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 discoveryFlags];
  v5 = (v4 & ~*(a1 + 32));
  if (v5 != v4)
  {
    [v6 setDiscoveryFlags:v5];
    if (!v5)
    {
      [v6 setLastUpdateTicks:mach_absolute_time()];
    }
  }
}

void sub_10025AA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 64), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10025AA68(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[NSUUID alloc] initWithUUIDString:*(*(&v9 + 1) + 8 * v7)];
        if (v8)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10025C9D4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v6 = [v10 serviceType] == *(a1 + 48);
  v7 = v10;
  if (v6)
  {
    v8 = [v10 receivedFramePeerHandler];

    if (v8)
    {
      v9 = [v10 receivedFramePeerHandler];
      v9[2](v9, *(a1 + 49), *(a1 + 32), *(a1 + 40));
    }

    *a4 = 1;
    v7 = v10;
  }
}

void sub_10025D290(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v13 = a3;
  v6 = [v13 serviceType] == *(a1 + 48);
  v7 = v13;
  if (v6)
  {
    v8 = [v13 peerDevice];
    v9 = [v8 identifier];
    v10 = [v9 isEqual:*(a1 + 32)];

    v7 = v13;
    if (v10)
    {
      v11 = [v13 receivedFrameHandler];

      if (v11)
      {
        v12 = [v13 receivedFrameHandler];
        v12[2](v12, *(a1 + 49), *(a1 + 40));
      }

      *a4 = 1;
      v7 = v13;
    }
  }
}

void sub_10025D654(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 90)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_10026662C();
        v3 = v5;
      }
    }
  }
}

void sub_10025E0F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_100973248 <= 20)
  {
    v6 = v3;
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1002668EC(a1);
      v4 = v6;
    }
  }
}

void sub_10025E17C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_100973248 <= 20)
  {
    v6 = v3;
    if (dword_100973248 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100266938(a1);
      v4 = v6;
    }
  }
}

void sub_10025FD1C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([v8 serviceType] == 9)
  {
    v6 = [v8 receivedFramePeerHandler];

    if (v6)
    {
      v7 = [v8 receivedFramePeerHandler];
      v7[2](v7, 7, *(a1 + 32), *(a1 + 40));

      *a4 = 1;
    }
  }
}

id sub_10025FE34(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 488);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 discoveryFlags] & 0x1000000) != 0)
        {
          [*(a1 + 32) _unlockDeviceFilterChangedForRequest:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) _update];
}

id sub_1002602CC(id result)
{
  v1 = result;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_100266FB8(v1);
    }
  }

  v2 = *(v1 + 44);
  if ((v2 & 1) != 0 && (v3 = *(v1 + 32), (*(v1 + 40) & 1) != *(v3 + 858)))
  {
    *(v3 + 858) = *(v1 + 40) & 1;
    v4 = 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(v1 + 32);
  if (((*(v1 + 40) >> 1) & 1) != *(v5 + 860))
  {
    *(v5 + 860) = (*(v1 + 40) & 2) != 0;
    v4 = 1;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(v1 + 32);
    if (((*(v1 + 40) >> 2) & 1) != *(v6 + 857))
    {
      *(v6 + 857) = (*(v1 + 40) & 4) != 0;
      v4 = 1;
    }
  }

  if ((v2 & 8) != 0)
  {
    v7 = *(v1 + 32);
    if (((*(v1 + 40) >> 3) & 1) != *(v7 + 861))
    {
      *(v7 + 861) = (*(v1 + 40) & 8) != 0;
      v4 = 1;
    }
  }

  if ((v2 & 0x10) != 0)
  {
    v8 = *(v1 + 32);
    if (((*(v1 + 40) >> 4) & 1) != *(v8 + 856))
    {
      *(v8 + 856) = (*(v1 + 40) & 0x10) != 0;
      v4 = 1;
    }
  }

  if ((v2 & 0x20) != 0 && (v9 = *(v1 + 32), ((*(v1 + 40) >> 5) & 1) != *(v9 + 859)))
  {
    *(v9 + 859) = (*(v1 + 40) & 0x20) != 0;
  }

  else if (!v4)
  {
    return result;
  }

  v10 = *(v1 + 32);

  return [v10 _update];
}

void sub_1002605FC(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 32);
  v3 = [NSData dataWithBytes:&Current length:8];
  [v2 sendUnlockData:v3 toBLEDevice:*(a1 + 40) completion:&stru_1008D5950];
}

void sub_100260670(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_100973248 <= 50)
  {
    v5 = v2;
    if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_10026703C();
      v3 = v5;
    }
  }
}

void sub_1002606E8(uint64_t a1)
{
  [*(a1 + 32) stopUnlockBLEConnectionWithDevice:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 872);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 872);
    *(v4 + 872) = 0;
  }

  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_10026708C();
  }
}

void sub_100260D94(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100267134();
        v3 = v5;
      }
    }
  }
}

Class sub_100261548(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A448)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100261674;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D5990;
    v5 = 0;
    qword_10098A448 = _sl_dlopen();
  }

  if (!qword_10098A448)
  {
    sub_1002671F0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SSAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100267174();
  }

  qword_10098A440 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100261674(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10098A448 = result;
  return result;
}

Class sub_1002616E8(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A458)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100261814;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D59A8;
    v5 = 0;
    qword_10098A458 = _sl_dlopen();
  }

  if (!qword_10098A458)
  {
    sub_1002672EC(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100267270();
  }

  qword_10098A450 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100261814(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10098A458 = result;
  return result;
}

Class sub_100261888(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A468)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1002619B4;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D59C0;
    v5 = 0;
    qword_10098A468 = _sl_dlopen();
  }

  if (!qword_10098A468)
  {
    sub_1002673E8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("BrightnessSystemClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10026736C();
  }

  qword_10098A460 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1002619B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10098A468 = result;
  return result;
}

Class sub_100261A28(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A478)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100261B54;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D59D8;
    v5 = 0;
    qword_10098A478 = _sl_dlopen();
  }

  if (!qword_10098A478)
  {
    sub_1002674E4(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ANAnnounce");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100267468();
  }

  qword_10098A470 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100261B54(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10098A478 = result;
  return result;
}

uint64_t sub_100261F80(void *a1)
{
  [a1 BOOLForKey:@"hasDoneGenuineDeviceCheck"];
  sub_100261BD8();
  return LogPrintF();
}

uint64_t sub_1002620DC(void *a1)
{
  [a1 BOOLForKey:@"hasDoneGenuineDeviceCheck"];
  sub_100261BD8();
  return LogPrintF();
}

void sub_100262E50(void *a1)
{
  v1 = [a1 targetAuthTag];
  LogPrintF();
}

uint64_t sub_100263248(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  *(a3 + 176);
  [*a4 manateeAvailable];
  return LogPrintF();
}

uint64_t sub_100263518(char a1, unsigned __int8 a2, void *a3)
{
  if ((a1 - 5) <= 0x3Cu)
  {
    v4 = off_1008D5B10[(a1 - 5)];
  }

  sub_100249C34(a2);
  [a3 length];
  return LogPrintF();
}

uint64_t sub_1002635B8(unsigned __int8 a1, _DWORD *a2)
{
  if (dword_100973248 > 50)
  {
    return 1;
  }

  if (dword_100973248 != -1 || _LogCategory_Initialize())
  {
    sub_10024ACD4(a1);
    LogPrintF();
  }

  result = 0;
  *a2 = -6750;
  return result;
}

uint64_t sub_10026379C()
{
  if (dword_100973248 > 50)
  {
    return 1;
  }

  sub_100008A18();
  if (v1 != -1 || _LogCategory_Initialize())
  {
    LogPrintF();
  }

  result = 0;
  *v0 = -6750;
  return result;
}

uint64_t sub_100263830()
{
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1)
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

void sub_100263A2C()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  LogPrintF();
}

void sub_100263A8C()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  LogPrintF();
}

void sub_100263AEC()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  LogPrintF();
}

uint64_t sub_100263B8C(unsigned __int8 a1, unsigned __int8 a2, void *a3)
{
  sub_10024ACD4(a1);
  sub_100249C34(a2);
  [a3 length];
  return LogPrintF();
}

uint64_t sub_100263C0C(uint64_t result, void *a2, uint64_t a3, _DWORD *a4)
{
  if (dword_100973248 <= 60)
  {
    v6 = result;
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      sub_10024ACD4(v6);
      [a2 length];
      result = LogPrintF();
    }
  }

  *a4 = -6705;
  return result;
}

uint64_t sub_100263CBC()
{
  sub_100008A18();
  v2 = *(v1 + 56);
  if (v2 <= 0x41)
  {
    v3 = off_1008D5CF8[v2];
  }

  v4 = *(v0 + 57);
  sub_100249C34(*(v0 + 58));
  [*(v0 + 32) length];
  [*(v0 + 40) length];
  v6 = *(v0 + 48);
  return LogPrintF();
}

uint64_t sub_100263D70()
{
  sub_100008A18();
  v2 = *(v1 + 56);
  if (v2 <= 0x41)
  {
    v3 = off_1008D5CF8[v2];
  }

  v4 = *(v0 + 57);
  sub_100249C34(*(v0 + 58));
  [*(v0 + 32) length];
  [*(v0 + 40) length];
  v6 = *(v0 + 48);
  return LogPrintF();
}

uint64_t sub_100263E24()
{
  sub_100008A18();
  v2 = *(v1 + 48);
  if (v2 <= 0x41)
  {
    v3 = off_1008D5CF8[v2];
  }

  sub_100249C34(*(v0 + 49));
  [*(v0 + 32) length];
  v5 = *(v0 + 40);
  return LogPrintF();
}

void sub_100263F9C(void *a1)
{
  [a1 advertisementFields];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF();
}

void sub_100264004(void *a1)
{
  [a1 advertisementFields];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF();
}

void sub_10026406C(void *a1)
{
  [a1 advertisementFields];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF();
}

void sub_1002641C8(void *a1)
{
  [a1 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF();
}

uint64_t sub_100264290(uint64_t result)
{
  if (dword_100973248 <= 60)
  {
    v1 = result;
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      [v1 length];
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_100264358(uint64_t result)
{
  if (dword_100973248 <= 60)
  {
    v1 = result;
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      [v1 length];
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_100264438(uint64_t a1)
{
  [*(a1 + 808) wirelessCritical];
  sub_100261BD8();
  return LogPrintF();
}

uint64_t sub_1002644C8(void *a1)
{
  if ([a1 length] == 6)
  {
    [a1 bytes];
  }

  return LogPrintF();
}

uint64_t sub_100264534(void *a1)
{
  if ([a1 length] == 6)
  {
    [a1 bytes];
  }

  return LogPrintF();
}

uint64_t sub_1002645A0(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
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

uint64_t sub_100264658(uint64_t a1)
{
  [sub_100023FC4(a1) changeFlags];
  v3 = *v1;
  return LogPrintF();
}

uint64_t sub_1002646F0(uint64_t a1)
{
  [sub_100023FC4(a1) scanCache];
  *v1;
  return LogPrintF();
}

uint64_t sub_100264768(id *a1, void *a2)
{
  [*a1 scanRate];
  switch(*a2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
      return LogPrintF();
    default:
      *a2;
      break;
  }

  return LogPrintF();
}

uint64_t sub_100264954(uint64_t a1)
{
  [sub_100023FC4(a1) rescanIntervalScreenOff];
  v3 = *v1;
  return LogPrintF();
}

void sub_1002649EC(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  [*(a2 + 72) _useCasesToHexString:*a3];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF();
}

void sub_100264CA4()
{
  sub_100008A18();
  v2 = [*(v1 + 32) idsDeviceIdentifier];
  *(v0 + 56);
  v3 = v2;
  LogPrintF();
}

void sub_100264D74(uint64_t a1)
{
  v1 = [*(a1 + 32) idsDeviceIdentifier];
  LogPrintF();
}

uint64_t sub_10026516C()
{
  if (dword_100973248 <= 60)
  {
    if (dword_100973248 != -1)
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

uint64_t sub_100265228()
{
  sub_100008A18();
  [v0 length];
  return LogPrintF();
}

uint64_t sub_1002652BC(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C();
    }
  }

  return result;
}

uint64_t sub_100265314(unint64_t a1)
{
  if (a1 <= 5)
  {
    v1 = off_1008D5FC0[a1];
  }

  return LogPrintF();
}

uint64_t sub_100265528(void *a1)
{
  v1 = [a1 type];
  if (v1 <= 6)
  {
    v2 = off_1008D5FF0[v1];
  }

  return LogPrintF();
}

void sub_1002659F8()
{
  sub_100008A18();
  v3 = [v1 useCases];
  [v3 count];
  v2 = [v0 useCases];
  LogPrintF();
}

void sub_100265AA8(void *a1)
{
  [a1 bleDevice];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF();
}

void sub_100266008(void *a1)
{
  v1 = [a1 identifier];
  mach_absolute_time();
  UpTicksToMicroseconds();
  LogPrintF();
}

void sub_1002662B4()
{
  if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_100266328(void *a1, void *a2)
{
  v14 = [a1 identifier];
  v3 = [a2 identifier];
  sub_100261BFC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF();
}

void sub_1002663A4(void *a1)
{
  v1 = [a1 serviceUUID];
  LogPrintF();
}

uint64_t sub_10026662C()
{
  sub_100008A18();
  [*(v1 + 32) length];
  v3 = *(v0 + 40);
  return LogPrintF();
}

void sub_100266688(void *a1, void *a2)
{
  v14 = [a1 identifier];
  v3 = [a2 identifier];
  sub_100261BFC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF();
}

_DWORD *sub_100266744(_DWORD *result, uint64_t a2, void *a3)
{
  *result = -6708;
  if (dword_100973248 <= 60)
  {
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a3 = a2;
  return result;
}

_DWORD *sub_1002667C4(_DWORD *result)
{
  *result = -6708;
  if (dword_100973248 <= 60)
  {
    if (dword_100973248 != -1)
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

uint64_t sub_1002668EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100261BE8();
  return LogPrintF();
}

uint64_t sub_100266938(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100261BE8();
  return LogPrintF();
}

void sub_100266984(void *a1)
{
  v2 = [a1 peerDevice];
  v1 = [v2 identifier];
  LogPrintF();
}

void sub_100266A40(uint64_t a1, void *a2)
{
  v3 = [a2 peerDevice];
  v2 = [v3 identifier];
  LogPrintF();
}

void sub_100266B14(uint64_t a1, void *a2)
{
  v2 = [a2 peerDevice];
  v3 = [v2 identifier];
  LogPrintF();
}

uint64_t sub_100266C98(uint64_t result)
{
  v1 = result;
  if (dword_100973248 <= 60)
  {
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = -6705;
  return result;
}

void sub_100266D60(void *a1)
{
  v1 = [a1 sendDataQueue];
  [v1 count];
  LogPrintF();
}

uint64_t sub_100266DC4(uint64_t result)
{
  v1 = result;
  if (dword_100973248 <= 60)
  {
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = -6762;
  return result;
}

uint64_t sub_100266FB8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  return LogPrintF();
}

void sub_100267174()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getSSAccountStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNearbyAgent.m" lineNumber:89 description:{@"Unable to find class %s", "SSAccountStore"}];

  __break(1u);
}

void sub_1002671F0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *StoreServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNearbyAgent.m" lineNumber:87 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100267270()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getAKAccountManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNearbyAgent.m" lineNumber:82 description:{@"Unable to find class %s", "AKAccountManager"}];

  __break(1u);
}

void sub_1002672EC(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AuthKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNearbyAgent.m" lineNumber:80 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10026736C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getBrightnessSystemClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNearbyAgent.m" lineNumber:97 description:{@"Unable to find class %s", "BrightnessSystemClient"}];

  __break(1u);
}

void sub_1002673E8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *CoreBrightnessLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNearbyAgent.m" lineNumber:96 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100267468()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getANAnnounceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNearbyAgent.m" lineNumber:112 description:{@"Unable to find class %s", "ANAnnounce"}];

  __break(1u);
}

void sub_1002674E4(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AnnounceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNearbyAgent.m" lineNumber:110 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100267564(void *a1)
{
  v1 = a1;
  v13 = 0;
  if (v1)
  {
    if (dword_100973320 <= 30 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100268E6C();
    }

    v4 = sub_100268868(v1, &v13);
    v2 = v4;
    if (v13)
    {
      v3 = 0;
    }

    else
    {
      v3 = [v4 username];
      if (v3)
      {
        pthread_mutex_lock(&stru_100973390);
        [qword_10098A480 removeObjectForKey:v3];
        pthread_mutex_unlock(&stru_100973390);
        if (dword_100973320 <= 30 && (dword_100973320 != -1 || _LogCategory_Initialize()))
        {
          sub_100268EAC();
        }

        v5 = [v2 accountStore];
        v12 = 0;
        [v5 setCredential:0 forAccount:v2 serviceID:@"com.apple.gs.authagent.auth" error:&v12];
        v6 = v12;

        if (v6 && dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
        {
          v8 = v1;
          v9 = v6;
          LogPrintF();
        }

        v7 = [v2 accountStore];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100267854;
        v10[3] = &unk_1008CE090;
        v3 = v3;
        v11 = v3;
        [v7 saveAccount:v2 withCompletionHandler:v10];
      }

      else
      {
        v13 = 201201;
      }
    }

    if (v13 && dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (dword_100973320 <= 30 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100268EEC();
    }

    pthread_mutex_lock(&stru_100973390);
    [qword_10098A480 removeAllObjects];
    pthread_mutex_unlock(&stru_100973390);
    v2 = 0;
    v3 = 0;
    v13 = 0;
  }
}

void sub_100267854(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (dword_100973320 <= 30)
    {
      v10 = v5;
      if (dword_100973320 != -1 || (v7 = _LogCategory_Initialize(), v6 = v10, v7))
      {
        sub_100268F0C(a1);
LABEL_9:
        v6 = v10;
      }
    }
  }

  else if (dword_100973320 <= 90)
  {
    v10 = v5;
    if (dword_100973320 != -1 || (v8 = _LogCategory_Initialize(), v6 = v10, v8))
    {
      v9 = *(a1 + 32);
      LogPrintF();
      goto LABEL_9;
    }
  }
}

void sub_100267938(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
  }

  v9 = v8;
  v54[0] = 0;
  v36 = v6;
  v37 = v5;
  if (!v5)
  {
    v34 = 0;
    v35 = 0;
    v20 = 0;
    v19 = 0;
    v11 = 0;
    v18 = 0;
    v33 = -6705;
LABEL_50:
    v54[0] = v33;
    goto LABEL_51;
  }

  if (!v7)
  {
    v35 = 0;
    v18 = 0;
    v11 = 0;
    v19 = 0;
    v17 = 0;
    v13 = 0;
    v20 = 0;
    v21 = 0;
    v16 = 0;
    goto LABEL_44;
  }

  v10 = sub_100268868(v5, v54);
  v11 = [v10 username];
  if (!v11)
  {
    v11 = v5;
  }

  pthread_mutex_lock(&stru_100973390);
  v12 = [qword_10098A480 objectForKeyedSubscript:v11];
  v35 = v10;
  if (v12)
  {
    v13 = v12;
    v14 = [v12 objectForKeyedSubscript:@"altDSID"];
    v15 = [v13 objectForKeyedSubscript:@"gsToken"];
    if (dword_100973320 <= 40 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100268F50();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100268108;
    block[3] = &unk_1008D0E80;
    v53 = v7;
    v16 = v14;
    v51 = v16;
    v17 = v15;
    v52 = v17;
    dispatch_async(v9, block);

    pthread_mutex_unlock(&stru_100973390);
    v18 = 0;
    v19 = 0;
LABEL_13:
    v20 = 0;
    v21 = 0;
LABEL_44:
    v54[0] = 0;
    goto LABEL_45;
  }

  pthread_mutex_unlock(&stru_100973390);
  if (!v10)
  {
    v22 = 0;
LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  v22 = [v10 aa_altDSID];
  v23 = [v10 accountType];
  v24 = [v23 identifier];
  v25 = [v24 isEqualToString:ACAccountTypeIdentifierAppleIDAuthentication];

  if (!v25)
  {
    if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100268F90(v10);
    }

    goto LABEL_31;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100269004();
    }

    goto LABEL_31;
  }

  v26 = [v10 aida_tokenForService:@"com.apple.gs.authagent.auth"];
  v27 = v26;
  if (v22 && v26)
  {
    if (dword_100973320 <= 50 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_10026908C();
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100268124;
    v46[3] = &unk_1008D0E80;
    v49 = v7;
    v16 = v22;
    v47 = v16;
    v18 = v27;
    v48 = v18;
    dispatch_async(v9, v46);

    v19 = 0;
    v17 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
  {
    sub_100269044();
  }

LABEL_32:
  v19 = +[NSDate date];
  v28 = sub_1001BBD7C();
  [v19 timeIntervalSinceDate:v28];
  v30 = fabs(v29);

  v34 = v22;
  if (v30 <= 5.0)
  {
    v18 = v27;
    if (dword_100973320 <= 50 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_1002690CC();
    }

    v20 = 0;
    v33 = 201229;
    goto LABEL_50;
  }

  v31 = BYSetupAssistantNeedsToRun();
  if (!v31)
  {
LABEL_37:
    if (dword_100973320 <= 50 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100269140();
    }

    goto LABEL_40;
  }

  if (dword_100973320 <= 50)
  {
    if (dword_100973320 != -1 || _LogCategory_Initialize())
    {
      sub_10026910C();
    }

    goto LABEL_37;
  }

LABEL_40:
  v32 = v22;
  v18 = v27;
  v21 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v21 setServiceType:1];
  [v21 setServiceIdentifier:@"com.apple.gs.authagent.auth"];
  [v21 setUsername:v11];
  [v21 _setPassword:0];
  [v21 setAltDSID:v32];
  [v21 setIsUsernameEditable:0];
  if (v31)
  {
    [v21 setAuthenticationType:1];
  }

  [v21 setShouldUpdatePersistentServiceTokens:1];
  v20 = objc_alloc_init(AKAppleIDAuthenticationController);
  if (v21)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100268140;
    v41[3] = &unk_1008D64A8;
    v16 = v34;
    v42 = v16;
    v11 = v11;
    v43 = v11;
    v45 = v7;
    v44 = v9;
    [v20 authenticateWithContext:v21 completion:v41];

    v17 = 0;
    v13 = 0;
    goto LABEL_44;
  }

  v54[0] = -6762;
LABEL_51:
  if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v7)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1002685C0;
    v38[3] = &unk_1008D0BE0;
    v39 = v7;
    v40 = v54[0];
    dispatch_async(v9, v38);
  }

  v17 = 0;
  v13 = 0;
  v21 = 0;
  v16 = v34;
LABEL_45:
}

void sub_100268140(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v8 = [v5 objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
    if (!v8)
    {
      v8 = *(a1 + 32);
    }

    v9 = [v5 objectForKeyedSubscript:AKAuthenticationIDMSTokenKey];
    v10 = [v9 objectForKeyedSubscript:@"com.apple.gs.authagent.auth"];
    v11 = v10;
    if (v8)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (dword_100973320 > 90 || dword_100973320 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_32;
      }
    }

    else
    {
      pthread_mutex_lock(&stru_100973390);
      if (!qword_10098A480)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = qword_10098A480;
        qword_10098A480 = v13;
      }

      v30[0] = @"altDSID";
      v30[1] = @"gsToken";
      v31[0] = v8;
      v31[1] = v11;
      v15 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
      [qword_10098A480 setObject:v15 forKeyedSubscript:*(a1 + 40)];

      pthread_mutex_unlock(&stru_100973390);
      if (dword_100973320 > 50)
      {
        goto LABEL_32;
      }

      if (dword_100973320 != -1 || _LogCategory_Initialize())
      {
        v21 = *(a1 + 40);
        LogPrintF();
      }

      if (dword_100973320 > 10 || dword_100973320 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_32;
      }

      v22 = *(a1 + 40);
    }

    LogPrintF();
LABEL_32:
    v18 = *(a1 + 56);
    if (v18)
    {
      v19 = *(a1 + 48);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10026854C;
      v26[3] = &unk_1008D0E80;
      v29 = v18;
      v27 = v8;
      v28 = v11;
      dispatch_async(v19, v26);
    }

    goto LABEL_35;
  }

  if ([v6 code] == -7003)
  {
    sub_1001BBC60();
    sub_1001BBDD4();
  }

  if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
  {
    v20 = *(a1 + 40);
    LogPrintF();
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100268574;
    block[3] = &unk_1008CF578;
    v25 = v16;
    v24 = v7;
    dispatch_async(v17, block);

    v8 = v25;
LABEL_35:
  }
}

uint64_t sub_10026854C(void *a1)
{
  if (a1[4])
  {
    v1 = a1[5] == 0;
  }

  return (*(a1[6] + 16))(a1[6]);
}

uint64_t sub_100268574(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) code];
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

uint64_t sub_1002685E0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v21 = 0;
  if (![v5 count] || !v6)
  {
    v7 = 0;
    v8 = 0;
    v20 = -6705;
    goto LABEL_21;
  }

  if (SFAppleIDVerifyCertificateChainSync())
  {
    v8 = [v5 objectAtIndexedSubscript:0];

    if (v8)
    {
      v9 = SFAppleIDCommonNameForCertificate();
      v8 = 0;
      v21 = v9;
      if (!v9)
      {
        v10 = [v6 accountIdentifier];
        v11 = [v8 isEqualToString:v10];

        if (v11)
        {
          v21 = 0;
          v7 = 1;
          if (!a3)
          {
            goto LABEL_19;
          }

          goto LABEL_13;
        }

        sub_1002691C4(&v21);
      }

      v7 = 0;
      if (!a3)
      {
        goto LABEL_19;
      }

LABEL_13:
      v12 = v21;
      if (v21)
      {
        v22 = NSLocalizedDescriptionKey;
        v13 = [NSString stringWithUTF8String:DebugGetErrorString()];
        v14 = v13;
        v15 = @"?";
        if (v13)
        {
          v15 = v13;
        }

        v23 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v12 userInfo:v16];
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      *a3 = v17;

      goto LABEL_19;
    }

    v7 = 0;
    v20 = -6762;
LABEL_21:
    v21 = v20;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
  {
    sub_100269180(&v21);
  }

  v7 = 0;
  v8 = 0;
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_19:

  return v7;
}

void *sub_100268868(void *a1, int *a2)
{
  v3 = a1;
  if (!v3)
  {
    v5 = 0;
    v7 = 0;
    v11 = 0;
    v10 = 0;
    obj = 0;
    v9 = 0;
    v8 = 0;
    v25 = -6705;
    goto LABEL_44;
  }

  v4 = +[AKAccountManager sharedInstance];
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    v11 = 0;
LABEL_53:
    v10 = 0;
    goto LABEL_54;
  }

  v6 = [v4 appleIDAccountWithAppleID:v3];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    obj = 0;
    v10 = 0;
    v11 = 0;
LABEL_39:
    if (dword_100973320 <= 50 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v25 = 0;
    goto LABEL_44;
  }

  if (dword_100973320 <= 50 && (dword_100973320 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = [v5 store];
  v11 = v12;
  if (!v12)
  {
    v7 = 0;
    goto LABEL_53;
  }

  v10 = [v12 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierIDMS];
  if (!v10 || ([v11 accountsWithAccountType:v10], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = 0;
LABEL_54:
    obj = 0;
    v9 = 0;
    v8 = 0;
    v25 = 201204;
    goto LABEL_44;
  }

  v29 = v10;
  v30 = v11;
  v31 = a2;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v9 = 0;
    v16 = 0;
    v33 = *v39;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        v19 = [v5 aliasesForAccount:{v18, v28}];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v9 = v19;
        v20 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = v5;
          v23 = *v35;
LABEL_19:
          v24 = 0;
          while (1)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v9);
            }

            if (![*(*(&v34 + 1) + 8 * v24) caseInsensitiveCompare:v3])
            {
              break;
            }

            if (v21 == ++v24)
            {
              v21 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v21)
              {
                goto LABEL_19;
              }

              v5 = v22;
              goto LABEL_34;
            }
          }

          v5 = v22;
          v8 = [v22 altDSIDForAccount:v18];

          if (!v8)
          {
            if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
            {
              v28 = v18;
              LogPrintF();
            }

            v16 = 0;
            goto LABEL_34;
          }

          v7 = [v22 appleIDAccountWithAltDSID:v8];

          if (!v7)
          {
            v16 = v8;
            continue;
          }

          v11 = v30;
          a2 = v31;
          v10 = v29;
          goto LABEL_39;
        }

LABEL_34:
      }

      v15 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
    v16 = 0;
  }

  v7 = 0;
  v25 = 201204;
  v8 = v16;
  v11 = v30;
  a2 = v31;
  v10 = v29;
LABEL_44:
  if (a2)
  {
    *a2 = v25;
  }

  v26 = v7;

  return v7;
}

void sub_100268CD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:0];

    if (v4)
    {
      v5 = SFAppleIDCommonNameForCertificate();
      v6 = 0;
      if (!v5)
      {
        v7 = [*(a1 + 40) accountIdentifier];
        v8 = [v6 isEqualToString:v7];

        if ((v8 & 1) == 0 && dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = 0;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48));
}

void sub_100268F90(void *a1)
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  LogPrintF();
}

uint64_t sub_1002691C4(uint64_t result)
{
  v1 = result;
  if (dword_100973320 <= 90)
  {
    if (dword_100973320 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 201238;
  return result;
}

uint64_t SDAuthenticationRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v44) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        break;
      }

      if (v13 > 2)
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 64;
            break;
          case 4:
            v14 = PBReaderReadData();
            v15 = 40;
            break;
          case 5:
            v14 = PBReaderReadData();
            v15 = 48;
            break;
          default:
            goto LABEL_63;
        }

LABEL_62:
        v35 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_81;
      }

      if (v13 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 80) |= 0x10u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v44 & 0x7F) << v25;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_72;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_72:
        v37 = 76;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_63;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 80) |= 8u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v44 & 0x7F) << v18;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_68;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_68:
        v37 = 72;
      }

      *(a1 + v37) = v24;
LABEL_81:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        *(a1 + 80) |= 4u;
        v44 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:&v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v39 = v44;
        v40 = 24;
        goto LABEL_80;
      }

      if (v13 != 7)
      {
LABEL_63:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_81;
      }

      v14 = PBReaderReadData();
      v15 = 32;
    }

    else
    {
      if (v13 == 8)
      {
        *(a1 + 80) |= 2u;
        v44 = 0;
        v33 = [a2 position] + 8;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:&v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v39 = v44;
        v40 = 16;
LABEL_80:
        *(a1 + v40) = v39;
        goto LABEL_81;
      }

      if (v13 != 9)
      {
        if (v13 != 10)
        {
          goto LABEL_63;
        }

        *(a1 + 80) |= 1u;
        v44 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:&v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v39 = v44;
        v40 = 8;
        goto LABEL_80;
      }

      v14 = PBReaderReadString();
      v15 = 56;
    }

    goto LABEL_62;
  }

  return [a2 hasError] ^ 1;
}

void sub_10026B504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v19 - 128));
  _Unwind_Resume(a1);
}

void sub_10026B554(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained alertManager:*(*(a1 + 32) + 48) cancelingTransferWithRecordID:*(a1 + 40) withFailureReason:0];
}

id sub_10026B5B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _unpublish];

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 40);

  return [v4 setObject:0 forKeyedSubscript:v3];
}

void sub_10026B74C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 dispatchQueue];
  dispatch_assert_queue_V2(v4);

  [v5 transferWithIdentifierWasAccepted:*(a1 + 40)];
}

void sub_10026B908(void *a1, void *a2)
{
  v3 = a1[4];
  v5 = a2;
  v4 = [v3 dispatchQueue];
  dispatch_assert_queue_V2(v4);

  [v5 transferWithIdentifierWasDeclined:a1[5] withFailureReason:a1[6]];
}

void sub_10026BD44(uint64_t *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10026BDBC(uint64_t *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

uint64_t sub_10026BF28()
{
  result = _UISolariumEnabled();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

id sub_10026BF6C()
{
  v0 = qword_10098A488;
  if (!qword_10098A488)
  {
    v1 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = qword_10098A488;
    qword_10098A488 = v1;

    v0 = qword_10098A488;
  }

  return v0;
}

id _ShareSheetBundleIDFromAuditToken(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v1 = 0;
  }

  else
  {
    v1 = CPCopyBundleIdentifierFromAuditToken();
  }

  if (!v1)
  {
    NSLog(@"Cannot get bundle ID from audit token.");
  }

  return v1;
}

id share_sheet_log()
{
  if (qword_10098A4A8[0] != -1)
  {
    sub_10026C520();
  }

  v1 = qword_10098A4A0;

  return v1;
}

id magic_head_log()
{
  if (qword_10098A498 != -1)
  {
    sub_10026C534();
  }

  v1 = qword_10098A490;

  return v1;
}

void sub_10026C104(id a1)
{
  v1 = os_log_create("com.apple.sharing", "MagicHead");
  v2 = qword_10098A490;
  qword_10098A490 = v1;
}

void sub_10026C148(id a1)
{
  v1 = os_log_create("com.apple.ShareSheet", "ShareSheet");
  v2 = qword_10098A4A0;
  qword_10098A4A0 = v1;
}

id sub_10026C18C(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    v7 = &kSFNodeProtocolWebDAVS_ptr;
    v21 = *v29;
    v22 = v3;
    do
    {
      v8 = 0;
      v23 = v5;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 objectForKey:@"attachments"];
          v11 = v7[210];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v12 = v10;
            v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v25;
              do
              {
                for (i = 0; i != v14; i = i + 1)
                {
                  if (*v25 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v24 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v18 = [v17 objectForKey:@"registeredTypeIdentifiers"];
                    if (v18)
                    {
                      [v2 addObjectsFromArray:v18];
                    }
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v14);
            }

            v6 = v21;
            v3 = v22;
            v7 = &kSFNodeProtocolWebDAVS_ptr;
            v5 = v23;
          }
        }

        v8 = v8 + 1;
      }

      while (v8 != v5);
      v5 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  v19 = [v2 copy];

  return v19;
}

id sub_10026C400(void *a1)
{
  sub_10026C18C(a1);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (!SFIsImage())
        {

          v7 = 0;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = v1;
LABEL_11:

  return v7;
}

void sub_10026C804(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10026D2A0();
    }

    [*(a1 + 32) invalidateResponseTimer];
    v5 = *(a1 + 32);
    v6 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:151 userInfo:0];
    [v5 notifyDelegateWithError:v6];
  }
}

void sub_10026CC98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) invalidateResponseTimer];
    v3 = *(a1 + 32);
    v4 = SFAutoUnlockErrorDomain;
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Step failed";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:v4 code:151 userInfo:v5];
    [v3 notifyDelegateWithError:v6];
  }
}

id *sub_10026D15C(id *result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 == 504)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockMessageTypeRegistrationFinalize", v5, 2u);
    }

    [v1[4] invalidateResponseTimer];
    return [v1[4] handleFinalize:v1[5]];
  }

  else if (v2 == 502)
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockMessageTypeRegistrationResponse", buf, 2u);
    }

    [v1[4] invalidateResponseTimer];
    return [v1[4] handleInitialResponse:v1[5]];
  }

  return result;
}

void sub_10026E350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10026E378(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerImport];
}

void sub_10026E628(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 && v5)
  {
    if ([v5 success])
    {
      v8 = [v5 openAppURL];

      if (v8)
      {
        v9 = [v5 openAppURL];
        v17 = v9;
        v10 = [NSArray arrayWithObjects:&v17 count:1];
        v11 = [*(a1 + 32) transfer];
        [v11 setCompletedURLs:v10];

        if (+[SFAirDropUserDefaults_objc moveToAppEnabled](SFAirDropUserDefaults_objc, "moveToAppEnabled") && [v5 shouldOfferOpenAction])
        {
          v12 = [*(a1 + 32) updateTransferStateHandler];
          v12[2](v12, 7);
          v13 = 1;
LABEL_14:

          goto LABEL_15;
        }

        if ((+[SFAirDropUserDefaults_objc moveToAppEnabled](SFAirDropUserDefaults_objc, "moveToAppEnabled") & 1) == 0 && ([v5 shouldOfferOpenAction] & 1) == 0)
        {
          v14 = *(a1 + 32);
          v12 = [v5 openAppURL];
          v16 = v12;
          v15 = [NSArray arrayWithObjects:&v16 count:1];
          v13 = [v14 openURLs:v15];

          goto LABEL_14;
        }
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

LABEL_15:
    v7 = [*(a1 + 32) completionHandler];
    (v7)[2](v7, v13, [v5 shouldOfferOpenAction], objc_msgSend(v5, "shouldCleanupItems"));
    goto LABEL_16;
  }

  v7 = [*(a1 + 32) completionHandler];
  v7[2](v7, 0, 0, 1);
LABEL_16:
}

uint64_t sub_10026EBD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10026EBF0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v30 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v31 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v31)
  {
    v29 = *v34;
    v27 = v2;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v33 + 1) + 8 * i);
        v5 = [v4 pathExtension];
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v5, 0);
        if (SFIsPhotosAssetBundle())
        {
          v7 = [[PFAssetBundle alloc] initWithAssetBundleAtURL:v4];
          if (v7)
          {
            v8 = [PHAssetCreationRequest creationRequestForAssetFromAssetBundle:v7];
          }

          else
          {
            v10 = airdrop_log();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v4;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "PFAssetBundle initWithAssetBundleAtURL(%@) returned nil", buf, 0xCu);
            }

            v8 = 0;
          }

          if (*(a1 + 72) == 1)
          {
            v11 = *(a1 + 40);
            v32 = 0;
            v12 = [v7 writeDowngradedRepresentationToDirectory:v11 error:&v32];
            v13 = v32;
            if (v12)
            {
              [v2 addObject:v12];
            }

            else
            {
              v16 = airdrop_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v38 = v4;
                v39 = 2112;
                v40 = v13;
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to downgrade asset bundle %@ with error: %@", buf, 0x16u);
              }

              v2 = v27;
            }

            goto LABEL_38;
          }
        }

        else if (SFIsLivePhotos())
        {
          v7 = [[PFVideoComplement alloc] initWithBundleAtURL:v4];
          if (v7)
          {
            v8 = [PHAssetCreationRequest creationRequestForAssetFromVideoComplementBundle:v7];
          }

          else
          {
            v14 = airdrop_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v4;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "PFVideoComplement initWithBundleAtURL(%@) returned nil", buf, 0xCu);
            }

            v8 = 0;
          }

          if (*(a1 + 72) == 1)
          {
            v15 = [v7 videoPath];
            v13 = [NSURL fileURLWithPath:v15];

            if (v13)
            {
              [v2 addObject:v13];
LABEL_39:

              goto LABEL_40;
            }

            v12 = airdrop_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v4;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No video URL exists for Live Photo %@", buf, 0xCu);
            }

LABEL_38:

            goto LABEL_39;
          }
        }

        else
        {
          if (SFIsVideo())
          {
            v9 = 2;
            goto LABEL_22;
          }

          if (SFIsImage())
          {
            v9 = 1;
LABEL_22:
            v8 = +[PHAssetCreationRequest creationRequestForAsset];
            v7 = objc_alloc_init(PHAssetResourceCreationOptions);
            [v8 addResourceWithType:v9 fileURL:v4 options:v7];
            if (*(a1 + 72) == 1)
            {
              [v2 addObject:v4];
            }

            goto LABEL_40;
          }

          v7 = airdrop_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v38 = v4;
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Not a Photos type %@. Ignoring", buf, 0xCu);
          }

          v8 = 0;
        }

LABEL_40:

        [v8 setImportSessionID:*(a1 + 48)];
        v17 = [v8 placeholderForCreatedAsset];
        v18 = [v17 localIdentifier];
        [v30 addObject:v18];

        if (!*(*(*(a1 + 64) + 8) + 40))
        {
          v19 = [v8 placeholderForCreatedAsset];
          v20 = [v19 localIdentifier];
          v21 = [NSString stringWithFormat:@"photos://asset?albumname=camera-roll&identifier=%@", v20];

          v22 = [NSURL URLWithString:v21];
          v23 = *(*(a1 + 64) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v31);
  }

  v25 = [v2 copy];
  [*(a1 + 56) setUnprivatizedURLs:v25];

  v26 = [v30 copy];
  [*(a1 + 56) setAssetIdentifiers:v26];
}

void sub_10026F1CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = airdrop_log();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) count];
      v17[0] = 67109120;
      v17[1] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHPhotoLibrary performChanges reported success for %d items", v17, 8u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10026FCC4(v5, a1);
  }

  v9 = a2;
  if ((+[SFAirDropUserDefaults_objc moveToAppEnabled]& 1) == 0)
  {
    v10 = +[SDStatusMonitor sharedMonitor];
    v11 = [v10 systemUIFlags];

    v9 = (v11 & 0x3006) != 0;
    if (_os_feature_enabled_impl())
    {
      v9 = _os_feature_enabled_impl();
    }
  }

  v12 = [SDAirDropHandlerPhotosImportResult alloc];
  v13 = [*(a1 + 40) unprivatizedURLs];
  v14 = *(*(*(a1 + 56) + 8) + 40);
  v15 = [*(a1 + 40) assetIdentifiers];
  v16 = [(SDAirDropHandlerPhotosImportResult *)v12 initWithImportedFiles:v13 openAppURL:v14 assetIdentifiers:v15 success:a2 shouldOfferOpenAction:v9 shouldCleanupItems:1];

  (*(*(a1 + 48) + 16))();
}

void sub_10026F590(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = airdrop_log();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) count];
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHPhotoLibrary expunge reported success for %d items", v9, 8u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10026FD74(v5, a1);
  }
}

void sub_10026F970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10026F9B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained transfer];
  v3 = [v2 completedURLs];
  v4 = [v3 firstObject];

  if (v4)
  {
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    [WeakRetained openURLs:v5];
  }

  v6 = [WeakRetained completionHandler];
  v6[2](v6, 1, 0, 1);
}

void sub_10026FAB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained unprivatizedURLs];
  [WeakRetained launchMoveToAppShareSheetForFiles:v1];
}

void sub_10026FCC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_100008A34();
  sub_100019DC4(&_mh_execute_header, v3, v4, "PHPhotoLibrary performChanges failed with error %@ for items %@");
}

void sub_10026FD74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_100008A34();
  sub_100019DC4(&_mh_execute_header, v3, v4, "PHPhotoLibrary expunge failed with error %@ for assets %@");
}

void sub_100270180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1002701B4(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = airdrop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 49);
      v11[0] = 67109376;
      v11[1] = v4;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turning on AirDrop, turning on WLAN=%d, Bluetooth=%d", v11, 0xEu);
    }

    if (*(a1 + 48) == 1)
    {
      v6 = +[SDStatusMonitor sharedMonitor];
      [v6 setWirelessEnabled:1];
    }

    if (*(a1 + 49) == 1)
    {
      v7 = +[SDStatusMonitor sharedMonitor];
      [v7 setBluetoothEnabled:1];
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_1002702F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error presenting enable radios alert %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_1002705B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained airDropController:*(a1 + 32) didChange:*(*(a1 + 32) + 24)];
}

uint64_t SDAutoUnlockAuthPromptRequestReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v27 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_40:
          *(a1 + 32) = v23;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadData();
        v15 = 16;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100271888(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@: loadIconHandler is nil.", &v2, 0xCu);
}

id sub_1002721A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a4)
  {
    return [a10 notifyClient:a4];
  }

  else
  {
    return [a10 parseResults:a6 port:__rev16(a7) txtLen:a8 txtRecord:a9 interface:a3];
  }
}

id sub_1002729F8(uint64_t a1)
{
  v2 = +[SDAutoUnlockWiFiManager sharedManager];
  v3 = [*(a1 + 32) wifiRequest];
  [v2 cancelWiFiRequest:v3];

  v4 = *(a1 + 32);

  return [v4 setWifiRequest:0];
}

id sub_100272B30(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to complete attempt if necessary", buf, 2u);
  }

  [*(a1 + 32) setShouldWaitToCompleteUnlock:0];
  v3 = [*(a1 + 32) prewarmIdleStartDate];
  [v3 timeIntervalSinceNow];
  [*(a1 + 32) setPrewarmIdleTime:-v4];

  result = [*(a1 + 32) isWaitingToCompleteUnlock];
  if (result)
  {
    result = [*(a1 + 32) isAuthenticatingForSiri];
    if ((result & 1) == 0)
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Completing waiting unlock attempt", v7, 2u);
      }

      return [*(a1 + 32) consumeAuthTokenIfReady];
    }
  }

  return result;
}

void sub_100272CB8(uint64_t a1)
{
  if ([*(a1 + 32) isWaitingToCompleteUnlock])
  {
    v2 = auto_unlock_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Tearing down AWDL", v6, 2u);
    }

    [*(a1 + 32) cancelWiFiRequest];
    v3 = objc_alloc_init(SDAutoUnlockCleanUpAWDL);
    [(SDAutoUnlockCleanUpAWDL *)v3 setVersion:1];
    v4 = *(a1 + 32);
    v5 = [(SDAutoUnlockCleanUpAWDL *)v3 data];
    [v4 sendData:v5 type:15 completionHandler:&stru_1008D6670];
  }
}

void sub_100272D8C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10027B940();
    }
  }
}

id sub_100273278(uint64_t a1)
{
  v2 = +[SDAutoUnlockWiFiManager sharedManager];
  v3 = [*(a1 + 32) wifiRequest];
  [v2 cancelWiFiRequest:v3];

  v4 = *(a1 + 32);

  return [v4 setWifiRequest:0];
}

void sub_100274F58(uint64_t a1)
{
  v2 = [*(a1 + 32) autoUnlockDevice];
  v3 = [v2 supportsApproveIcon];

  if (v3)
  {
    [*(a1 + 32) setImageData:*(a1 + 40)];
    [*(a1 + 32) setImageHash:*(a1 + 48)];
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) deviceID];
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Image data updated (%@)", &v17, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = [v6 appName];
    [v6 sendAuthPromptRequestWithImageHash:v7 appName:v8];

    v9 = [*(a1 + 32) iconTransferStore];
    v10 = [*(a1 + 32) imageHash];
    v11 = [*(a1 + 32) deviceID];
    [*(a1 + 32) setImageDataAlreadyCached:{objc_msgSend(v9, "imageCachedForHash:device:", v10, v11)}];

    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) imageDataAlreadyCached];
      v14 = @"NO";
      if (v13)
      {
        v14 = @"YES";
      }

      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Image already cached: %@", &v17, 0xCu);
    }

    v15 = *(a1 + 32);
    v16 = [v15 imageData];
    [v15 sendAuthPromptImageDataIfReady:v16];
  }

  else
  {
    v16 = auto_unlock_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not updating icon, watch doesn't support icons", &v17, 2u);
    }
  }
}

void sub_100275244(uint64_t a1)
{
  *(*(a1 + 32) + 301) = *(a1 + 40);
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if ([*(a1 + 32) chosenDevice])
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = [*(a1 + 32) deviceID];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Chosen device updated: %@ (%@)", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [v5 imageData];
  [v5 sendAuthPromptImageDataIfReady:v6];
}

void sub_1002762D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002762F4(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Confirmation timer fired", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained notifyDelegateWithError:*(a1 + 32)];
}

id sub_1002764DC(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) rangingDisabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setInRange:1];
    [*(a1 + 32) setDistance:&off_100910608];
    v4 = *(a1 + 32);

    return [v4 handlePeerInRange];
  }

  v6 = [v3 wifiRequest];
  v7 = [v6 wifiRangingResults];
  [*(a1 + 32) setWifiRangingResults:v7];

  v8 = [*(a1 + 32) wifiRequest];
  v9 = [v8 wifiRangingError];
  v10 = [v9 domain];
  [*(a1 + 32) setWifiErrorDomain:v10];

  v11 = [*(a1 + 32) wifiRequest];
  v12 = [v11 wifiRangingError];
  [*(a1 + 32) setWifiRangingErrorCode:{objc_msgSend(v12, "code")}];

  v13 = +[NSDate date];
  v14 = [*(a1 + 32) rangingStart];
  [v13 timeIntervalSinceDate:v14];
  [*(a1 + 32) setRangingInterval:?];

  v15 = auto_unlock_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) wifiErrorDomain];
    v18 = *(a1 + 48);
    *buf = 138412802;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 1024;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "AWDL ranging results returned %@, domain: %@, error %d", buf, 0x1Cu);
  }

  if (*(a1 + 48))
  {
    goto LABEL_8;
  }

  if (![*(a1 + 32) peerInRange:*(a1 + 40)])
  {
    if (!*(a1 + 48))
    {
      return [*(a1 + 32) handlePeerOutOfRange];
    }

LABEL_8:
    [*(a1 + 32) setRangingTimedOut:1];
    [*(a1 + 32) setRangingErrorString:@"Ranging Timeout"];
    if ([*(a1 + 32) wifiRangingErrorCode])
    {
      v19 = [*(a1 + 32) rangingErrorString];
      v20 = -[NSObject stringByAppendingFormat:](v19, "stringByAppendingFormat:", @" (%ld)", [*(a1 + 32) wifiRangingErrorCode]);
      [*(a1 + 32) setRangingErrorString:v20];
    }

    else
    {
      v19 = auto_unlock_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10027B9EC();
      }
    }

    return [*(a1 + 32) handlePeerOutOfRange];
  }

  v21 = auto_unlock_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Peer in range", buf, 2u);
  }

  [*(a1 + 32) setInRange:1];
  return [*(a1 + 32) handlePeerInRange];
}

void sub_100278EDC(id a1, id a2)
{
  v2 = a2;
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting wifi request", v4, 2u);
  }

  v2[2](v2, 1);
}

void sub_100278F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) wifiRequest];
    *buf = 136315650;
    v15 = "[SDAutoUnlockLockSession startAWDL]_block_invoke";
    v16 = 2112;
    v17 = v6;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s AWDL started request:%@ error:%d", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (a3)
  {
    [WeakRetained invalidateResponseTimer];

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = SFAutoUnlockErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"AWDL network failed to start";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [NSError errorWithDomain:v9 code:192 userInfo:v10];
    [v8 notifyDelegateWithError:v11];
  }

  else
  {
    [WeakRetained handleAWDLUp];
  }
}

void sub_1002790F4(uint64_t a1, uint64_t a2)
{
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Peer found (awdl up same time : %@)", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlePeerFound:a2];
}

void sub_1002791D4(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ranging started", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleRangingStarted];
}

void sub_100279254(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ranging completed", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [v5 code];

  [WeakRetained handleRangingResults:v6 errorCode:v9];
}

void sub_100279310(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleWiFiRequestInvalidated];
}

void sub_100279AF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setAttemptError:v3];
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10027BF84();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }
  }
}

void sub_100279E08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) invalidateResponseTimer];
    v3 = *(a1 + 32);
    v4 = SFAutoUnlockErrorDomain;
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Auth prompt request failed";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:v4 code:200 userInfo:v5];
    [v3 notifyDelegateWithError:v6];
  }
}

void sub_10027A3DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error sending image data %@", buf, 0xCu);
    }

    [*(a1 + 32) invalidateResponseTimer];
    v5 = *(a1 + 32);
    v6 = SFAutoUnlockErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Image data message failed";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v6 code:202 userInfo:v7];
    [v5 notifyDelegateWithError:v8];
  }
}

void sub_10027A6C0(uint64_t a1)
{
  [*(a1 + 32) setErrorType:5];
  [*(a1 + 32) invalidateResponseTimer];
  v2 = *(a1 + 32);
  v3 = SFAutoUnlockErrorDomain;
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Exchange response failed";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5 = [NSError errorWithDomain:v3 code:103 userInfo:v4];
  [v2 notifyDelegateWithError:v5];
}

void sub_10027AB98(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    [*(a1 + 40) setAttemptError:?];
    [*(a1 + 40) invalidateConfirmationTimer];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
LABEL_7:
    [v4 notifyDelegateWithError:v5];
    goto LABEL_8;
  }

  v6 = *(a1 + 40);
  if (v3)
  {
    [v6 setAttemptError:v3];
    [*(a1 + 40) invalidateConfirmationTimer];
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error sending confirmation", v14, 2u);
    }

    [*(a1 + 40) lockKeyBagIfNeeded];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    goto LABEL_7;
  }

  v8 = [v6 canceled];
  v9 = *(a1 + 40);
  if (v8)
  {
    [v9 invalidateConfirmationTimer];
    v10 = SFAutoUnlockErrorDomain;
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Attempt Cancelled";
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [NSError errorWithDomain:v10 code:118 userInfo:v11];

    [*(a1 + 40) notifyDelegateWithError:v12];
  }

  else if ([v9 supportsConfirmationACK])
  {
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Waiting for confirmation ack", v14, 2u);
    }
  }

  else
  {
    [*(a1 + 40) handleConfirmationACK];
  }

LABEL_8:
}

void sub_10027B940()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027B9B0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027B9EC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BA28()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027BB0C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027BB7C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BBB8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BBF4(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 attemptType];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected attempt type: %d", v3, 8u);
}

void sub_10027BC80()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BCBC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027BD2C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BDDC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027BE4C(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Skip ranging is %d", v2, 8u);
}

void sub_10027BF48()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BF84()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027BFF4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027C030()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027C448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10027C470(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10027D5F4(a1);
  }
}

void sub_10027C694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10027C6B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10027D5F4(a1);
  }
}

void sub_10027CD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10027CD58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 onqueue_connectionInvalidated:v4];

    WeakRetained = v4;
  }
}

void sub_10027CFA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  dispatch_queue_set_specific(*(*(a1 + 40) + 32), "SDXPCDaemonConnection", v2, 0);
  [*(a1 + 48) invoke];
  dispatch_queue_set_specific(*(*(a1 + 40) + 32), "SDXPCDaemonConnection", 0, 0);

  CFRelease(v2);
}

void sub_10027D5F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained sd_description];
  sub_100008A4C();
  sub_1000088E8(&_mh_execute_header, v3, v4, "Failed to get remote object proxy for %@ (%@)", v5, v6, v7, v8, v9);
}

uint64_t sub_10027D6D8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009734F8);
  v1 = sub_10000C4AC(v0, qword_1009734F8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10027D7A0(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10027D900, 0, 0);
}

uint64_t sub_10027D900()
{
  v1 = v0;
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v2 = static NSUserDefaults.airdrop.getter();
  v3 = SFAirDropUserDefaults.overrideReceivedFilesPathiOS.getter();

  if (v3)
  {
    v5 = v0 + 31;
    v4 = v1[31];
    URL.init(fileURLWithPath:)();
    sub_10028088C(&qword_100974740, &qword_1007F6608);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = NSFileProtectionKey;
    *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v7 = NSFileProtectionKey;
    v8 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v9 = sub_10027FB0C(inited);
    swift_setDeallocating();
    sub_100005508(inited + 32, &qword_100974748, &qword_1007F6610);
    v10 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    sub_1003CDFEC(v9);

    type metadata accessor for FileAttributeKey(0);
    sub_100280C30(&qword_100974750, type metadata accessor for FileAttributeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v1[21] = 0;
    v15 = [v10 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:isa error:v1 + 21];

    v16 = v1[21];
    if (v15)
    {
      v17 = *(v1[28] + 32);
LABEL_7:
      v40 = v1[30];
      v39 = v1[31];
      v41 = v1[29];
      v42 = v1[26];
      v17(v1[22], *v5, v1[27]);
      v43 = v16;

      v44 = v1[1];
      goto LABEL_13;
    }

    v45 = v1[31];
LABEL_11:
    v48 = v1[27];
    v49 = v1[28];
    v50 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v49 + 8))(v45, v48);
    goto LABEL_12;
  }

  v18 = sub_1001F17F4();
  if (v18)
  {
    v5 = v0 + 30;
    v19 = v1[30];
    v21 = v1[28];
    v20 = v1[29];
    v22 = v1[26];
    v23 = v1[24];
    v24 = v1[25];
    v57 = v1[23];
    v58 = v1[27];
    v25 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = *(v21 + 32);
    v56(v19, v20, v58);
    v1[14] = 0xD000000000000011;
    v1[15] = 0x8000000100788A20;
    v26 = enum case for URL.DirectoryHint.isDirectory(_:);
    v59 = *(v24 + 104);
    v59(v22, enum case for URL.DirectoryHint.isDirectory(_:), v23);
    sub_10001229C();
    URL.append<A>(path:directoryHint:)();
    v27 = *(v24 + 8);
    v27(v22, v23);
    v1[16] = UUID.uuidString.getter();
    v1[17] = v28;
    v59(v22, v26, v23);
    URL.append<A>(path:directoryHint:)();
    v27(v22, v23);

    v1[18] = 0x73656C6946;
    v1[19] = 0xE500000000000000;
    v59(v22, v26, v23);
    URL.append<A>(path:directoryHint:)();
    v27(v22, v23);
    sub_10028088C(&qword_100974740, &qword_1007F6608);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_1007F5670;
    *(v29 + 32) = NSFileProtectionKey;
    *(v29 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v30 = NSFileProtectionKey;
    v31 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v32 = sub_10027FB0C(v29);
    swift_setDeallocating();
    sub_100005508(v29 + 32, &qword_100974748, &qword_1007F6610);
    v33 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v34);
    v36 = v35;
    sub_1003CDFEC(v32);

    type metadata accessor for FileAttributeKey(0);
    sub_100280C30(&qword_100974750, type metadata accessor for FileAttributeKey);
    v37 = Dictionary._bridgeToObjectiveC()().super.isa;

    v1[20] = 0;
    v38 = [v33 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:v37 error:v1 + 20];

    v16 = v1[20];
    if (v38)
    {
      v17 = v56;
      goto LABEL_7;
    }

    v45 = v1[30];
    goto LABEL_11;
  }

  v46 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100280C30(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v46 - 8) + 104))(v47, enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:), v46);
  swift_willThrow();
LABEL_12:
  v52 = v1[30];
  v51 = v1[31];
  v53 = v1[29];
  v54 = v1[26];

  v44 = v1[1];
LABEL_13:

  return v44();
}

id variable initialization expression of SDB389BubbleMonitor.bubbleScanner()
{
  v0 = objc_allocWithZone(SFDeviceDiscovery);

  return [v0 init];
}

id sub_10027E114(uint64_t *a1, SEL *a2)
{
  v2 = *a1;
  v3 = [objc_opt_self() *a2];

  return v3;
}

id variable initialization expression of SDAirDropService.bleController()
{
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A0CA0;

  return v1;
}

uint64_t variable initialization expression of SDAirDropService.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_100280C30(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_1002808D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of SDAirDropHashStoreCDB.reader()
{
  sub_1000276B4(0, &qword_100973C78, NSData_ptr);
  v0 = objc_allocWithZone(CUKeyValueStoreReader);
  swift_getObjCClassFromMetadata();

  return [v0 initWithKeyType:? valueType:?];
}

id variable initialization expression of SDB389SetupAgent.queue()
{
  v0 = CUMainQueue();

  return v0;
}

uint64_t sub_10027E4A0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

_DWORD *sub_10027E4F8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_10027E508()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10027E57C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10027E5C0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10027E638(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10027E6B8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_10027E6FC()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10027E760(uint64_t a1, uint64_t a2)
{
  v4 = sub_100280C30(&qword_1009744A0, type metadata accessor for SFAuthenticationErrorCode);

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10027E7DC()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10027E844()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10027E88C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10027E8E0(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974918, type metadata accessor for LAError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10027E94C(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974918, type metadata accessor for LAError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10027E9B8(void *a1, uint64_t a2)
{
  v4 = sub_100280C30(&qword_100974918, type metadata accessor for LAError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10027EA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100280C30(&qword_100974918, type metadata accessor for LAError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10027EAE8()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10027EB48(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974750, type metadata accessor for FileAttributeKey);
  v3 = sub_100280C30(&qword_100974998, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10027EC04(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974988, type metadata accessor for FileProtectionType);
  v3 = sub_100280C30(&qword_100974990, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10027ECC0(uint64_t a1)
{
  v2 = sub_100280C30(&qword_1009745F8, type metadata accessor for Name);
  v3 = sub_100280C30(&qword_100974600, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10027ED7C(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974608, type metadata accessor for URLResourceKey);
  v3 = sub_100280C30(&unk_100974610, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10027EE38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10027EE80(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974978, type metadata accessor for PFMediaCapabilitiesOutOfBandHintsKey);
  v3 = sub_100280C30(&qword_100974980, type metadata accessor for PFMediaCapabilitiesOutOfBandHintsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10027EF3C(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974920, type metadata accessor for LAError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10027EFA8(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974920, type metadata accessor for LAError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10027F014(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974918, type metadata accessor for LAError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10027F080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100280C30(&qword_100974918, type metadata accessor for LAError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10027F104()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10027F140()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10027F194()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10027F208(uint64_t *a1, uint64_t *a2)
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

void sub_10027F290()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for URL();
  isa = v54[-1].isa;
  v6 = *(isa + 8);
  v7 = __chkstk_darwin(v54);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v49 - v10;
  v12 = sub_1001F17F4();
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *&v59[0] = 0xD000000000000011;
    *(&v59[0] + 1) = 0x8000000100788A20;
    (*(v1 + 104))(v4, enum case for URL.DirectoryHint.isDirectory(_:), v0);
    sub_10001229C();
    URL.append<A>(path:directoryHint:)();
    (*(v1 + 8))(v4, v0);
    v52 = objc_opt_self();
    v14 = [v52 defaultManager];
    v51 = v11;
    URL.relativePath.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v14 enumeratorAtPath:v15];

    v53 = v16;
    if (v16)
    {
      v18 = (isa + 8);
      *&v17 = 136315138;
      v50 = v17;
      *&v17 = 136315394;
      v49 = v17;
      v19 = v51;
      while (1)
      {
        if ([v53 nextObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v57 = 0u;
          v58 = 0u;
        }

        v59[0] = v57;
        v59[1] = v58;
        if (!*(&v58 + 1))
        {
          (*v18)(v19, v54);

          sub_100005508(v59, &unk_1009746F0, &qword_1007F90B0);
          return;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v21 = v55;
        v22 = v56;
        if (qword_1009734F0 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_10000C4AC(v23, qword_1009734F8);

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *&v59[0] = v27;
          *v26 = v50;
          *(v26 + 4) = sub_10000C4E4(v21, v22, v59);
          _os_log_impl(&_mh_execute_header, v24, v25, "Removing stale AirDrop download %s", v26, 0xCu);
          sub_10000C60C(v27);
          v19 = v51;
        }

        v28 = [v52 defaultManager];
        URL.appendingPathComponent(_:)();
        URL._bridgeToObjectiveC()(v29);
        v31 = v30;
        (*v18)(v9, v54);
        *&v59[0] = 0;
        v32 = [v28 removeItemAtURL:v31 error:v59];

        if (v32)
        {
          v20 = *&v59[0];
        }

        else
        {
          v33 = *&v59[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();

          swift_errorRetain();
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            *&v59[0] = v38;
            *v36 = v49;
            v39 = sub_10000C4E4(v21, v22, v59);

            *(v36 + 4) = v39;
            *(v36 + 12) = 2112;
            swift_errorRetain();
            v40 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 14) = v40;
            *v37 = v40;
            _os_log_impl(&_mh_execute_header, v34, v35, "Failed to delete file %s %@", v36, 0x16u);
            sub_100005508(v37, &qword_100975400, &qword_1007F65D0);
            v19 = v51;

            sub_10000C60C(v38);
          }

          else
          {
          }
        }
      }

      (*v18)(v19, v54);
    }

    else
    {
      if (qword_1009734F0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000C4AC(v45, qword_1009734F8);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Failed to create enumerator for AirDropHashDB directory", v48, 2u);
      }

      (*(isa + 1))(v51, v54);
    }
  }

  else
  {
    if (qword_1009734F0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000C4AC(v41, qword_1009734F8);
    v54 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v54, v42, "Unable to get downloads real path failed to cleanup directory", v43, 2u);
    }

    v44 = v54;
  }
}