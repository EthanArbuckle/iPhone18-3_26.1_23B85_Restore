void sub_100001AA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setupShieldLifecycleMonitorForCurrentSession];
    WeakRetained = v2;
  }
}

void sub_100001EA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = 138543874;
    v14 = WeakRetained;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Session Interrupted (%{public}@ %{public}@)", &v13, 0x20u);
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    objc_sync_enter(v11);
    v12 = v11[8];
    if (v12)
    {
      (*(v12 + 16))();
    }

    objc_sync_exit(v11);
  }
}

void sub_100001FC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setupShieldLifecycleMonitorForCurrentSession];
    WeakRetained = v2;
  }
}

void sub_100002298(id a1)
{
  qword_100021B20 = objc_alloc_init(CCDShieldUILifeCycleManager);

  _objc_release_x1();
}

void sub_1000026F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained activeSession];

    WeakRetained = v5;
    if (v2)
    {
      if (!v5[1])
      {
        [v5 _acquireLockScreenAssertion];
        WeakRetained = v5;
      }

      if (!WeakRetained[2])
      {
        [v5 _acquireAppSwitcherAssertion];
        WeakRetained = v5;
      }

      if (!WeakRetained[3])
      {
        [v5 _acquireAlwaysOnDisplayAssertion];
        WeakRetained = v5;
      }

      *(WeakRetained + 72) = 1;
      v3 = [v5 activeSession];
      v4 = [v3 bundleIdentifier];
      [v5 _setSystemStatusAttributionStatus:v4];

      WeakRetained = v5;
    }
  }
}

uint64_t sub_100002970(uint64_t a1)
{
  [*(a1 + 32) _releaseLockScreenAssertion];
  [*(a1 + 32) _releaseAppSwitcherAssertion];
  [*(a1 + 32) _releaseAlwaysOnDisplayAssertion];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100003094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000030BC(id a1)
{
  v2 = +[NSBundle mainBundle];
  v1 = [v2 bundleIdentifier];
  AVCapturePrewarm();
}

void sub_10000311C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      v5 = [WeakRetained activeSession];
      v10 = 138543874;
      v11 = v4;
      v12 = 2080;
      v13 = "[CCDShieldUILifeCycleManager _launchShieldForDeviceIdentifier:name:model:skipPlacementStep:isDedicated:micOnly:statusHandler:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s session interrupted active session %@", &v10, 0x20u);
    }

    v6 = WeakRetained;
    objc_sync_enter(v6);
    if ([*(v6 + 5) willTerminate])
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        dispatch_semaphore_signal(v7);
        v8 = *(v6 + 8);
        *(v6 + 8) = 0;
      }

      objc_sync_exit(v6);
    }

    else
    {
      objc_sync_exit(v6);

      v9 = [v6 activeSession];

      if (v9)
      {
        [v6 notifyShieldStatus:-2001];
      }
    }
  }
}

void sub_1000035F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = CMContinuityCaptureLog();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10001103C(a1, v4, v7);
      }

      [WeakRetained notifyShieldStatus:-2002];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully launched %@", &v10, 0xCu);
      }

      [WeakRetained notifyShieldStatus:0];
      v9 = [WeakRetained activeSession];
      [v9 setupShieldLifecycleMonitorForCurrentSession];
    }
  }
}

void sub_100003B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  _Block_object_dispose((v33 - 144), 8);
  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

void sub_100003B8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_loadWeakRetained((a1 + 56));
      *buf = 138544130;
      v16 = v9;
      v17 = 2080;
      v18 = "[CCDShieldUILifeCycleManager _forceTerminateShieldIfApplicableWithBundleID:completion:completionTimeoutInSec:]_block_invoke";
      v19 = 2114;
      v20 = v5;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Session Interrupted (%{public}@ %{public}@)", buf, 0x2Au);
    }

    v10 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003CF4;
    block[3] = &unk_10001C830;
    v12 = *(a1 + 40);
    v11 = v12;
    v14 = v12;
    dispatch_async(v10, block);
  }
}

uint64_t sub_100003CF4(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_100003D20(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((v1 + 48));
      v4 = 138543362;
      v5 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ *** Should never happen, we even failed to exit due to force termination ***", &v4, 0xCu);
    }

    *(*(*(v1 + 40) + 8) + 24) = 1;
    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

void sub_100003ED4(uint64_t a1)
{
  [*(a1 + 32) _releaseLockScreenAssertion];
  [*(a1 + 32) _releaseAppSwitcherAssertion];
  [*(a1 + 32) _releaseAlwaysOnDisplayAssertion];
  v2 = [*(*(a1 + 32) + 40) bundleIdentifier];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4)
  {
    [v4 invalidate];
    v3 = *(a1 + 32);
  }

  *(v3 + 72) = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004030;
  v12[3] = &unk_10001C808;
  v7 = v5;
  v13 = v7;
  [v6 _forceTerminateShieldIfApplicableWithBundleID:v2 completion:v12 completionTimeoutInSec:2];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(a1 + 32);
  if (v8[5])
  {
    [v8 willChangeValueForKey:@"activeSession"];
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    v10 = *(a1 + 32);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    objc_sync_exit(v9);
    [*(a1 + 32) didChangeValueForKey:@"activeSession"];
  }
}

void sub_100004124(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSession];

  if (v2)
  {
    [*(*(a1 + 32) + 40) setWillTerminate:1];
    [*(a1 + 32) _releaseLockScreenAssertion];
    [*(a1 + 32) _releaseAppSwitcherAssertion];
    [*(a1 + 32) _releaseAlwaysOnDisplayAssertion];
    v3 = dispatch_time(0, 2000000000);
    v4 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    [v4 tearDownShieldUI];

    v5 = dispatch_semaphore_create(0);
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    objc_storeStrong((*(a1 + 32) + 64), v5);
    objc_sync_exit(v6);

    if (dispatch_semaphore_wait(v5, v3))
    {
      v7 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        *buf = 138412546;
        v21 = v8;
        v22 = 2080;
        v23 = "[CCDShieldUILifeCycleManager tearDownShield]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ %s termination didn't complete within 5 sec", buf, 0x16u);
      }

      v9 = dispatch_semaphore_create(0);
      v10 = *(a1 + 32);
      v11 = [v10[5] bundleIdentifier];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000445C;
      v18[3] = &unk_10001C808;
      v5 = v9;
      v19 = v5;
      [v10 _forceTerminateShieldIfApplicableWithBundleID:v11 completion:v18 completionTimeoutInSec:2];

      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    }

    *(*(a1 + 32) + 72) = 0;
    [*(*(a1 + 32) + 40) invalidate];
    [*(a1 + 32) willChangeValueForKey:@"activeSession"];
    v12 = *(a1 + 32);
    objc_sync_enter(v12);
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    objc_sync_exit(v12);
    [*(a1 + 32) didChangeValueForKey:@"activeSession"];
    v15 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138412546;
      v21 = v16;
      v22 = 2080;
      v23 = "[CCDShieldUILifeCycleManager tearDownShield]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ %s completed", buf, 0x16u);
    }
  }

  else
  {
    v5 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412546;
      v21 = v17;
      v22 = 2080;
      v23 = "[CCDShieldUILifeCycleManager tearDownShield]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %s no active session", buf, 0x16u);
    }
  }
}

void sub_1000045E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004604(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000110E0(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[6];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000046D8;
    block[3] = &unk_10001C808;
    block[4] = v6;
    dispatch_async(v7, block);
  }
}

void sub_1000046D8(uint64_t a1)
{
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

void sub_100004974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000049A0(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 2, a2);
  }
}

void sub_100004A08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004AC0;
    v7[3] = &unk_10001C8F8;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_100004AC0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  else
  {
    v5 = *(a1 + 40);

    [v5 invalidate];
  }
}

void sub_100004DE0(uint64_t a1)
{
  v3 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 addObserver:WeakRetained forKeyPath:CMContinuityCaptureCallStateKVOKey options:3 context:0];
}

void sub_10000513C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = +[CCDShieldUILifeCycleManager sharedInstance];
    v4 = [v3 activeSession];
    v5 = [v4 pauseStateSolver];
    [v5 resumeForEvent:*(a1 + 40)];

    [v6 _resolveUserPauseState];
    WeakRetained = v6;
  }
}

void sub_100005290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    BoolAnswer = AVGestaltGetBoolAnswer();
    v4 = [WeakRetained[11] lockScreenInLayout];
    v5 = v4;
    v6 = *(a1 + 48);
    if (v6)
    {
      if (v6 == 2)
      {
        v7 = BoolAnswer | v4 ^ 1;
        v8 = @"CMContinuityCapturePauseEventShieldObscuredOnLockScreen";
      }

      else if (v6 == 1)
      {
        v7 = ((BoolAnswer | v4) & 1) != 0 || SBSGetScreenLockStatus() != 0;
        v8 = @"CMContinuityCapturePauseEventShieldBackgrounded";
      }

      else
      {
        v7 = 0;
        v8 = @"Unknown";
      }
    }

    else
    {
      v7 = 0;
      v8 = @"CMContinuityCapturePauseEventUserPressedPause";
    }

    v9 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v15 = 138544898;
      v16 = v10;
      v17 = 2080;
      v18 = "[CMContinuityCaptureDServer pauseSessionForEvent:]_block_invoke";
      v19 = 1024;
      v20 = v11;
      v21 = 2112;
      v22 = v8;
      v23 = 1024;
      v24 = v7 & 1;
      v25 = 1024;
      v26 = v5;
      v27 = 1024;
      v28 = BoolAnswer;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s event:%d, eventName:%@, ignoreEvent:%d, lockScreenInLayout:%d,  localDeviceSupportsContinuityCaptureMultitasking:%d", &v15, 0x38u);
    }

    if ((v7 & 1) == 0)
    {
      v12 = +[CCDShieldUILifeCycleManager sharedInstance];
      v13 = [v12 activeSession];
      v14 = [v13 pauseStateSolver];
      [v14 pauseForEvent:*(a1 + 48)];

      [WeakRetained _resolveUserPauseState];
    }
  }
}

void sub_100005634(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = [v3 sessionID];
    }

    else
    {
      v4 = 0;
    }

    v5 = [WeakRetained[1] compositeDevice];

    if (v5)
    {
      [CMContinuityCaptureRemoteCompositeDevice setWombatMode:0];
    }

    v6 = [*(a1 + 32) deviceIdentifier];
    [*(a1 + 40) _exitSessionIfApplicableForDeviceIdentifier:v6 exitReason:*(a1 + 48)];
    v7 = WeakRetained[1];
    if (v7)
    {
      v8 = [v7 currentSessionID];
    }

    else
    {
      v8 = 0;
    }

    v9 = WeakRetained;
    objc_sync_enter(v9);
    *(v9 + 160) = 0;
    objc_sync_exit(v9);

    v10 = [*(a1 + 32) configuration];
    v11 = [v10 micOnly];

    if (v11)
    {
      [v9 _teardownSingShieldUIIfNeeded];
    }

    else
    {
      [v9 _teardownShieldUI];
    }

    v12 = [WeakRetained[1] compositeDevice];
    if (v12)
    {
      v13 = *(a1 + 64);

      if (v13 == 1)
      {
        v14 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_loadWeakRetained((a1 + 56));
          v16 = [WeakRetained[1] compositeDevice];
          *buf = 138543874;
          v37 = v15;
          v38 = 2080;
          v39 = "[CMContinuityCaptureDServer disconnectSession:reason:]_block_invoke";
          v40 = 2112;
          v41 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ %s disconnect during active session for %@", buf, 0x20u);
        }

        v17 = [WeakRetained[1] compositeDevice];
        [v17 postEvent:kCMContinuityCaptureEventUserDisconnect entity:0 data:0];
      }
    }

    if (v6 && *(a1 + 64) == 1)
    {
      v18 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_loadWeakRetained((a1 + 56));
        *buf = 138544130;
        v37 = v19;
        v38 = 2080;
        v39 = "[CMContinuityCaptureDServer disconnectSession:reason:]_block_invoke";
        v40 = 2112;
        v41 = v6;
        v42 = 2048;
        v43 = v8;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ %s disconnect during headless state for %@ currentSessionID %llx", buf, 0x2Au);
      }

      v29 = ContinuityCaptureRapportClientMessageTypeKey;
      v30 = ContinuityCaptureRapportClientEventNameKey;
      v33 = &off_10001D358;
      v34 = kCMContinuityCaptureEventUserDisconnect;
      v21 = *(a1 + 40);
      v20 = *(a1 + 48);
      v31 = ContinuityCaptureRapportClientUserDisconnectReasonKey;
      v32 = ContinuityCaptureRapportClientShieldSessionIDKey;
      v22 = @"Unknown";
      if (v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = @"Unknown";
      }

      if (v4)
      {
        v22 = v4;
      }

      v24 = [NSNumber numberWithUnsignedLongLong:v8, v29, v30, v31, v32, ContinuityCaptureRapportClientTransportSessionIDKey, v33, v34, v23, v22];
      v35 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v29 count:5];
      v26 = [*(a1 + 32) configuration];
      [v21 relayMessage:v25 toDeviceWithIdentifier:v6 andModel:{objc_msgSend(v26, "clientDeviceModel")}];
    }

    if (!WeakRetained[1] && [v9[7] count])
    {
      v27 = kCMContinuityCaptureEventCaptureSessionEnded;
      v28 = [v9[7] firstObject];
      [v9 postEvent:v27 toSession:v28];

      [v9[7] removeObjectAtIndex:0];
    }
  }
}

void sub_100005B40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _skipPlacementStepIfApplicable];
    WeakRetained = v2;
  }
}

void sub_100005CCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = +[CCDShieldUILifeCycleManager sharedInstance];
    [v3 prepareForPullConversation:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void sub_100005F70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (_os_feature_enabled_impl())
    {
      v3 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ bootstrapping sing session from prox path; getting mediaRouteIdentifier from rapport device", &v18, 0xCu);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v4 = [WeakRetained[8] activeDevices];
      v5 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v24;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v24 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v23 + 1) + 8 * i);
            v10 = [v9 mediaRouteIdentifier];
            if (v10)
            {
              v11 = v10;
              v12 = [v9 compareWithDeviceIdentifier:*(a1 + 32)];

              if (v12)
              {
                v15 = CMContinuityCaptureLog();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = [v9 mediaRouteIdentifier];
                  v18 = 138543618;
                  v19 = WeakRetained;
                  v20 = 2112;
                  v21 = v16;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ found rapport device for sing media route endpoint: %@", &v18, 0x16u);
                }

                v17 = [v9 mediaRouteIdentifier];
                [WeakRetained setupSingSessionWithMediaRouteIdentifier:v17 remoteDisplayIdentifier:*(a1 + 32)];

                goto LABEL_22;
              }
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v13 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100011780();
      }

      v14 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
      [v14 presentShieldError:1 userInfo:0];
    }

    else
    {
      [WeakRetained _launchShieldUIForDeviceIdentifier:*(a1 + 32) name:@"Music" model:2 skipPlacementStep:1 isDedicated:0 micOnly:1];
      v14 = [*(a1 + 40) absoluteString];
      [WeakRetained _joinGroupSessionWithURLString:v14];
    }
  }

LABEL_22:
}

void sub_10000636C(uint64_t a1)
{
  [*(a1 + 32) _launchShieldUIForDeviceIdentifier:*(a1 + 40) name:@"Music" model:2 skipPlacementStep:1 isDedicated:0 micOnly:1];
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100006424;
  v3[3] = &unk_10001CA10;
  v3[4] = v2;
  v4 = *(a1 + 48);
  [v2 _checkMusicAccount:v3];
}

void sub_100006424(uint64_t a1, uint64_t a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v10 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000117BC(a1);
      }

      v4 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
      v5 = v4;
      v6 = 3;
      goto LABEL_16;
    }

    if (a2 != 4)
    {
LABEL_12:
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000065CC;
      v11[3] = &unk_10001C9E8;
      v11[4] = v9;
      v12 = v8;
      [v9 _endpointToMediaRemoteIdentifier:v12 completion:v11];

      return;
    }

LABEL_9:
    v7 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001183C(a1);
    }

    v4 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    v5 = v4;
    v6 = 1;
    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (a2 != 2)
  {
    goto LABEL_12;
  }

  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000117FC(a1);
  }

  v4 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
  v5 = v4;
  v6 = 2;
LABEL_16:
  [v4 presentShieldError:v6 userInfo:0];
}

void sub_1000065CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001187C(a1);
    }

    v6 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    [v6 presentShieldError:1 userInfo:0];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully endpointed to mediaRouteIdentifier: %{public}@", &v9, 0x16u);
    }

    [*(a1 + 32) _updateLocalParticipantInfo];
  }
}

void sub_1000067D4(uint64_t a1, uint64_t a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v12 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000117BC(a1);
      }

      v4 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
      v5 = v4;
      v6 = 3;
      goto LABEL_19;
    }

    if (a2 != 4)
    {
      goto LABEL_12;
    }

LABEL_9:
    v7 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001183C(a1);
    }

    v4 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    v5 = v4;
    v6 = 1;
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v3 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000117FC(a1);
    }

    v4 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    v5 = v4;
    v6 = 2;
LABEL_19:
    [v4 presentShieldError:v6 userInfo:0];
    goto LABEL_20;
  }

LABEL_12:
  v5 = [MRGroupSessionToken tokenForJoinURLString:*(a1 + 40)];
  if (v5)
  {
    v8 = +[NSUUID UUID];
    objc_storeStrong((*(a1 + 32) + 168), v8);
    v9 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ attempting to join group session with token: %@ requestID: %@", buf, 0x20u);
    }

    v14 = *(a1 + 32);
    v11 = v8;
    MRGroupSessionJoinSessionWithToken();
  }

  else
  {
    v13 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000118D4(a1, (a1 + 40));
    }

    v11 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    [v11 presentShieldError:1 userInfo:0];
  }

LABEL_20:
}

void sub_100006A88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006B60;
  v12[3] = &unk_10001CA60;
  v12[4] = v8;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void sub_100006F20(void *a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1[4] + 32));
  v4 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    v6 = [v3 error];
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "completed endpoint to %@ action with error %@", &v15, 0x16u);
  }

  v7 = [v3 error];

  v8 = a1[4];
  if (v7)
  {
    v9 = *(v8 + 144);
    *(v8 + 144) = 0;

    v10 = a1[4];
    v11 = *(v10 + 152);
    *(v10 + 152) = 0;

    v12 = 0;
    v8 = a1[4];
  }

  else
  {
    v12 = 1;
  }

  *(v8 + 161) = v12;
  v13 = a1[6];
  if (v13)
  {
    v14 = [v3 error];
    (*(v13 + 16))(v13, v14);
  }
}

void sub_10000737C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000073B4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100007458;
  v2[3] = &unk_10001C998;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

void sub_100007458(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100011924();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000074E8(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(a1 + 6);
    v7 = v6[4];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000075D4;
    v8[3] = &unk_10001CB00;
    v9 = a1[4];
    v10 = v4;
    v11 = v6;
    v12 = a1[5];
    dispatch_async(v7, v8);
  }
}

void sub_1000075D4(uint64_t a1)
{
  if ([*(a1 + 32) disarm])
  {
    if (*(a1 + 40))
    {
      v2 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100011960(a1, (a1 + 40));
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v3 = +[ICMediaUserStateCenter shared];
      v4 = [v3 activeUserState];

      v5 = CMContinuityCaptureLog();
      v6 = v5;
      if (v4)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 48);
          v8 = 138543362;
          v9 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ got ICMediaUser activeUserState, retrying checking music account", &v8, 0xCu);
        }

        [*(a1 + 48) _checkMusicAccount:*(a1 + 56)];
      }

      else
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1000119B0(a1);
        }

        (*(*(a1 + 56) + 16))();
      }
    }
  }
}

void sub_100007834(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100007858(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100007910;
    v7[3] = &unk_10001C8F8;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_100007910(uint64_t a1)
{
  v2 = (a1 + 32);
  objc_storeStrong((*(a1 + 32) + 176), *(a1 + 40));
  v3 = v2[1];
  v4 = CMContinuityCaptureLog();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000119F0(v2);
    }

    v16 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    [v16 presentShieldError:2 userInfo:0];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = +[CCDShieldUILifeCycleManager sharedInstance];
    v9 = [v8 activeSession];
    v20 = 138543874;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ updating local participant info to %@ with active session %@", &v20, 0x20u);
  }

  v10 = +[CCDShieldUILifeCycleManager sharedInstance];
  v11 = [v10 activeSession];

  if (v11)
  {
    v12 = *(a1 + 40);
    v13 = +[CCDShieldUILifeCycleManager sharedInstance];
    v14 = [v13 activeSession];
    v15 = [v14 configuration];
    [v15 setParticipantInfo:v12];

    v16 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    v17 = +[CCDShieldUILifeCycleManager sharedInstance];
    v18 = [v17 activeSession];
    v19 = [v18 configuration];
    [v16 updateClientsWithConfiguration:v19];

LABEL_9:
  }
}

void sub_100007DD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007EA4;
  block[3] = &unk_10001CB78;
  v9 = v4;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

void sub_100007EA4(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100011A80(v2);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = +[ICMediaUserStateCenter shared];
    v5 = [v4 activeUserState];

    if (v5)
    {
      [*(a1 + 40) _fetchLocalParticipantInfo:*(a1 + 48)];
    }

    else
    {
      v6 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100011AC0(v6);
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_10000817C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000819C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000081B4(uint64_t a1)
{
  v2 = +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100008414(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _relayMessage:*(a1 + 32) toDeviceWithIdentifier:*(a1 + 40) andModel:*(a1 + 56)];
    WeakRetained = v3;
  }
}

void sub_1000086F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100008724(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    *buf = 138543618;
    v25 = WeakRetained;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ companion link activation %@", buf, 0x16u);
  }

  if (!v3 || ![v3 code])
  {
    v6 = objc_loadWeakRetained((a1 + 64));
    if (!v6)
    {
LABEL_14:

      goto LABEL_15;
    }

    v7 = [[NSMutableDictionary alloc] initWithDictionary:*(a1 + 40)];
    v8 = +[CCDShieldUILifeCycleManager sharedInstance];
    v9 = [v8 activeSession];
    if (v9)
    {
      v10 = v9;
      v11 = +[CCDShieldUILifeCycleManager sharedInstance];
      v12 = [v11 activeSession];
      v13 = [v12 sessionID];

      if (!v13)
      {
LABEL_11:
        v16 = GestaltCopyAnswer();
        if (v16)
        {
          [v7 setObject:v16 forKeyedSubscript:RPOptionSenderModelID];
        }

        v17 = CMContinuityCaptureGetCurrentTimeString();
        [v7 setObject:v17 forKeyedSubscript:ContinuityCaptureRapportClientEventOriginTimeInNativeClockKey];

        v18 = *(a1 + 48);
        v19 = ContinuityCaptureCompanionSessionEventID;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100008A00;
        v20[3] = &unk_10001CC18;
        objc_copyWeak(&v23, (a1 + 64));
        v21 = *(a1 + 56);
        v22 = *(a1 + 32);
        [v18 sendEventID:v19 event:v7 options:0 completion:v20];

        objc_destroyWeak(&v23);
        goto LABEL_14;
      }

      v8 = +[CCDShieldUILifeCycleManager sharedInstance];
      v14 = [v8 activeSession];
      v15 = [v14 sessionID];
      [v7 setObject:v15 forKeyedSubscript:ContinuityCaptureRapportClientShieldSessionIDKey];
    }

    goto LABEL_11;
  }

  dispatch_semaphore_signal(*(a1 + 32));
LABEL_15:
}

void sub_100008A00(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 48));
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Message sent to device %{public}@ with error %@", &v8, 0x20u);
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }
}

void sub_100008B90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = +[CCDShieldUILifeCycleManager sharedInstance];
      v6 = [v5 activeSession];
      v14 = 138543618;
      v15 = v4;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ shield disconnected currently status:%{public}@", &v14, 0x16u);
    }

    v7 = +[CCDShieldUILifeCycleManager sharedInstance];
    v8 = [v7 activeSession];

    if (v8)
    {
      v9 = +[CCDShieldUILifeCycleManager sharedInstance];
      v10 = [v9 activeSession];
      v11 = [v10 configuration];
      v12 = [v11 clientDeviceModel];

      if (v12 == 2)
      {
        [WeakRetained disconnectSession:1 reason:kCMContinuityCaptureSessionExitReasonShieldDisconnected];
      }

      else
      {
        [WeakRetained teardownShieldUI];
      }

      [WeakRetained teardownSession];
      v13 = +[CCDShieldUILifeCycleManager sharedInstance];
      [v13 shieldDidDisconnect];

      [*(a1 + 32) leaveWranglerIfActive];
    }
  }
}

void sub_100008EF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = +[CCDShieldUILifeCycleManager sharedInstance];
    v4 = [v3 activeSession];
    v5 = [v4 pauseStateSolver];
    [v5 incomingCallStatusUpdated:*(a1 + 48)];

    v6 = +[CCDShieldUILifeCycleManager sharedInstance];
    v7 = [v6 activeSession];
    v8 = [v7 configuration];
    v9 = [v8 clientDeviceModel];

    if (v9 == 1)
    {
      v10 = *(a1 + 32);
    }

    else
    {
      v10 = &__NSDictionary0__struct;
    }

    v11 = v10;
    if (*(a1 + 49) == 1 && (*(a1 + 48) & 1) != 0)
    {
      v12 = &kCMContinuityCaptureControlIncomingCall;
    }

    else
    {
      v12 = &kCMContinuityCaptureControlIncomingCallComplete;
    }

    v13 = [v14[1] compositeDevice];
    [v13 postEvent:*v12 entity:4 data:v11];

    WeakRetained = v14;
  }
}

void sub_10000927C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained[1] compositeDevice];

    WeakRetained = v8;
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = [v8[1] compositeDevice];
      v6 = v5;
      v7 = &kCMContinuityCaptureEventActiveCallStart;
      if (!v4)
      {
        v7 = &kCMContinuityCaptureEventActiveCallEnd;
      }

      [v5 postEvent:*v7 entity:0 data:0];

      WeakRetained = v8;
    }
  }
}

void sub_1000094B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138543874;
    v7 = WeakRetained;
    v8 = 2080;
    v9 = "[CMContinuityCaptureDServer activate]_block_invoke";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s completion error %{public}@ ", &v6, 0x20u);
  }
}

void sub_100009578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] activateWithCompletion:*(a1 + 32)];
    [v3[3] activateWithCompletion:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100009684(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] invalidate];
    [v2[3] invalidate];
    WeakRetained = v2;
  }
}

void sub_1000097F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _launchShieldUIForDeviceIdentifier:*(a1 + 32) name:*(a1 + 40) model:*(a1 + 56) skipPlacementStep:*(a1 + 64) isDedicated:*(a1 + 65) micOnly:*(a1 + 66)];
    WeakRetained = v3;
  }
}

void sub_100009A14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 56) != 2)
    {
      [WeakRetained callActive:{objc_msgSend(WeakRetained, "activeCallSession")}];
    }

    v4 = +[CCDShieldUILifeCycleManager sharedInstance];
    v5 = [v4 activeSession];

    if (v5)
    {
      v6 = [NSNumber numberWithBool:*(a1 + 64)];
      v7 = +[CCDShieldUILifeCycleManager sharedInstance];
      v8 = [v7 activeSession];
      v9 = [v8 configuration];
      [v9 setPlacementStepSkipped:v6];

      v10 = *(a1 + 65);
      v11 = +[CCDShieldUILifeCycleManager sharedInstance];
      v12 = [v11 activeSession];
      v13 = [v12 configuration];
      [v13 setMicOnly:v10];

      v14 = *(a1 + 32);
      v15 = +[CCDShieldUILifeCycleManager sharedInstance];
      v16 = [v15 activeSession];
      v17 = [v16 configuration];
      [v17 setRemoteDisplayIdentifier:v14];

      v18 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
      v19 = +[CCDShieldUILifeCycleManager sharedInstance];
      v20 = [v19 activeSession];
      v21 = [v20 configuration];
      [v18 updateClientsWithConfiguration:v21];
    }

    else
    {
      v22 = v3[4];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100009C98;
      block[3] = &unk_10001CCE0;
      objc_copyWeak(v28, (a1 + 48));
      v26 = *(a1 + 32);
      v23 = *(a1 + 40);
      v24 = *(a1 + 56);
      v27 = v23;
      v28[1] = v24;
      v29 = *(a1 + 64);
      v30 = *(a1 + 66);
      v31 = *(a1 + 65);
      dispatch_async(v22, block);

      objc_destroyWeak(v28);
    }
  }
}

void sub_100009C98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 48));
      *buf = 138543618;
      v18 = v4;
      v19 = 2080;
      v20 = "[CMContinuityCaptureDServer _launchShieldUIForDeviceIdentifier:name:model:skipPlacementStep:isDedicated:micOnly:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009EBC;
    block[3] = &unk_10001C6E0;
    objc_copyWeak(&v16, (a1 + 48));
    dispatch_async(&_dispatch_main_q, block);
    v5 = +[CCDShieldUILifeCycleManager sharedInstance];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 65);
    v11 = *(a1 + 66);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100009F94;
    v12[3] = &unk_10001CD08;
    objc_copyWeak(&v14, (a1 + 48));
    v13 = *(a1 + 32);
    [v5 launchShieldForDeviceIdentifier:v6 name:v7 model:v8 skipPlacementStep:v9 isDedicated:v10 micOnly:v11 statusHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
  }
}

void sub_100009E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 40));
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_100009EBC(uint64_t a1)
{
  v2 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 addObserver:WeakRetained];

  v4 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  [v4 holdIdleSleepAssertionForReason:&stru_10001D200];

  v6 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v6 addObserver:v5 forKeyPath:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey options:3 context:0];
}

void sub_100009F94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == -2002)
  {
    v13 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_100011B04(a1);
    }

    v14 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    v23[0] = kContinuityCaptureNotificationKeyTitle;
    v23[1] = kContinuityCaptureNotificationKeyBody;
    v24[0] = @"ALERT_SHIELD_CONNECT_FAILED_TITLE";
    v24[1] = @"ALERT_SHIELD_CONNECT_FAILED_DESCRIPTION";
    v23[2] = kContinuityCaptureNotificationKeyButtonTitle;
    v24[2] = @"OK";
    v15 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
    [v14 scheduleNotification:12 data:v15];

    goto LABEL_10;
  }

  if (!a3)
  {
    v7 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v9 = *(a1 + 32);
      *buf = 138412802;
      v28 = WeakRetained;
      v29 = 2114;
      v30 = v6;
      v31 = 2114;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ [shieldSession:%{public}@] (CMContinuityCapture)Shields are up! for device %{public}@", buf, 0x20u);
    }

    v10 = objc_loadWeakRetained((a1 + 40));
    if (v10)
    {
      v11 = v10;
      v12 = v10[4];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000A274;
      block[3] = &unk_10001C6E0;
      objc_copyWeak(&v26, (a1 + 40));
      dispatch_async(v12, block);
      objc_destroyWeak(&v26);
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (v5 && a3 == -2001)
  {
    v11 = +[CCDShieldUILifeCycleManager sharedInstance];
    v16 = [v11 activeSession];
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = v16;
    v18 = +[CCDShieldUILifeCycleManager sharedInstance];
    v19 = [v18 activeSession];
    v20 = [v19 isEqual:v6];

    if (v20)
    {
      v21 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_100011B84(a1);
      }

      v22 = objc_loadWeakRetained((a1 + 40));
      if (v22)
      {
        v14 = v22;
        [v22 shieldDidDisconnect];
LABEL_10:
      }
    }
  }

LABEL_20:
}

void sub_10000A274(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[112] == 1)
    {
      v4 = +[CCDShieldUILifeCycleManager sharedInstance];
      v5 = [v4 activeSession];
      v6 = [v5 pauseStateSolver];
      v7 = [v6 isUserPauseStored];

      if (v7)
      {
        v8 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_loadWeakRetained((a1 + 32));
          v16 = 138543362;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Stream was in user pause state , potentially a crash recovery", &v16, 0xCu);
        }

        v3[112] = 0;
        v10 = +[CCDShieldUILifeCycleManager sharedInstance];
        v11 = [v10 activeSession];
        v12 = [v11 pauseStateSolver];
        [v12 pauseForEvent:0];

        v13 = +[CCDShieldUILifeCycleManager sharedInstance];
        v14 = [v13 activeSession];
        v15 = [v14 pauseStateSolver];
        [v15 saveUserPauseState:0];

        [v3 _resolveUserPauseState];
      }
    }
  }
}

void sub_10000A4A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _teardownShieldUI];
    WeakRetained = v2;
  }
}

void sub_10000A6AC(uint64_t a1)
{
  v2 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  [v2 releaseCurrentIdleSleepAssertion];

  v3 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 removeObserver:WeakRetained];

  v6 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v6 removeObserver:v5 forKeyPath:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey context:0];
}

void sub_10000A8BC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) compositeDevice];
  [v2 removeObserver:*(a1 + 32) forKeyPath:CMContinuityCaptureRemoteCompositeStateKVOKey context:0];
}

void sub_10000ABF8(uint64_t a1, int a2)
{
  DeviceClass = GestaltGetDeviceClass();
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = +[CCDShieldUILifeCycleManager sharedInstance];
    v8 = [v7 activeSession];
    v12 = 138544130;
    v13 = v6;
    v14 = 1024;
    v15 = a2;
    v16 = 2114;
    v17 = v8;
    v18 = 1024;
    v19 = DeviceClass == 3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ incomingStreamRequestHandler stream:%d activeSession %{public}@ isOniPad %d", &v12, 0x22u);
  }

  if (a2)
  {
    v9 = +[CCDShieldUILifeCycleManager sharedInstance];
    v10 = [v9 activeSession];

    if (v10)
    {
      if (DeviceClass != 3)
      {
        v11 = +[CCDShieldUILifeCycleManager sharedInstance];
        [v11 bringShieldUIProcessToForegroundIfApplicable];
      }
    }
  }
}

void sub_10000B00C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10000B040(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = *(a1 + 32);
    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = 138544130;
    v9 = WeakRetained;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ event %{public}@ dispatched to session %{public}@ with error %@", &v8, 0x2Au);
  }
}

void sub_10000BEA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:*(a1 + 32) ofObject:*(a1 + 40) change:*(a1 + 48) context:*(a1 + 64)];
    WeakRetained = v3;
  }
}

void sub_10000CAB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 5);
    if (v4)
    {
      dispatch_block_cancel(v4);
    }

    v5 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Teardown Session", &v7, 0xCu);
    }

    [v3 teardownSession];
  }
}

void sub_10000D6D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_10000D71C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained((a1 + 32));
      v16 = 138543874;
      v17 = v8;
      v18 = 1024;
      v19 = a2;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Session state changed to %d for device %{public}@", &v16, 0x1Cu);
    }

    if (!a2)
    {
      v9 = +[CCDShieldUILifeCycleManager sharedInstance];
      v10 = [v9 activeSession];
      if (v10)
      {
        v11 = v10;
        v12 = +[CCDShieldUILifeCycleManager sharedInstance];
        v13 = [v12 activeSession];
        v14 = [v13 configuration];
        v15 = [v14 clientDeviceModel];

        if (v15 == 2)
        {
          [WeakRetained disconnectSession:1 reason:kCMContinuityCaptureSessionExitReasonStreamSessionStopped];
        }
      }

      else
      {
      }
    }
  }
}

void sub_10000D894(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = WeakRetained;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ RPRemoteDisplayDiscovery dedicatedDeviceChanged: %@", &v18, 0x16u);
    }

    v6 = [v3 idsDeviceIdentifier];
    v7 = +[CCDShieldUILifeCycleManager sharedInstance];
    v8 = [v7 activeSession];
    v9 = [v8 deviceIdentifier];
    v10 = [v6 isEqual:v9];
    v11 = +[CCDShieldUILifeCycleManager sharedInstance];
    v12 = [v11 activeSession];
    v13 = [v12 configuration];
    [v13 setIsDedicated:v10];

    v14 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    v15 = +[CCDShieldUILifeCycleManager sharedInstance];
    v16 = [v15 activeSession];
    v17 = [v16 configuration];
    [v14 updateClientsWithConfiguration:v17];
  }
}

void sub_10000DA54(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = WeakRetained;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ RPRemoteDisplayDiscovery activateWithCompletion error %@", &v6, 0x16u);
    }
  }
}

void sub_10000DEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v38 - 144));
  _Unwind_Resume(a1);
}

void sub_10000DF04(uint64_t a1)
{
  v2 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Client Invalidated", &v4, 0xCu);
  }
}

void sub_10000DF90(uint64_t a1)
{
  v2 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Rapport Client Interrupted", &v4, 0xCu);
  }
}

void sub_10000E01C(uint64_t a1)
{
  v2 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [*(a1 + 32) errorFlags];
    v5 = 138412546;
    v6 = WeakRetained;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Client ErrorChange, newError %llu", &v5, 0x16u);
  }
}

void sub_10000E0C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (CMContinityCaptureDebugLogEnabled())
    {
      v8 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_loadWeakRetained((a1 + 32));
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = v6;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ Client Event %@ Option %@", buf, 0x20u);
      }
    }

    dispatch_assert_queue_not_V2(WeakRetained[4]);
    v9 = WeakRetained[4];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000E244;
    v11[3] = &unk_10001CDF8;
    v12 = v6;
    v13 = v5;
    objc_copyWeak(&v15, (a1 + 32));
    v14 = WeakRetained;
    dispatch_async_and_wait(v9, v11);
    objc_destroyWeak(&v15);
  }
}

void sub_10000E244(id *a1)
{
  v2 = RPOptionSenderModelID;
  v3 = [a1[4] objectForKeyedSubscript:RPOptionSenderModelID];
  if (v3)
  {
  }

  else
  {
    v4 = [a1[5] objectForKeyedSubscript:v2];

    if (!v4)
    {
      v8 = 0;
      goto LABEL_7;
    }
  }

  v5 = [a1[4] objectForKeyedSubscript:v2];
  v6 = 4;
  if (!v5)
  {
    v6 = 5;
  }

  v7 = [a1[v6] objectForKeyedSubscript:v2];
  v8 = CMContinuityCaptureDeviceModelFromModelString();

LABEL_7:
  v9 = a1[4];
  if (v9)
  {
    v10 = RPOptionSenderDeviceName;
    v11 = [v9 objectForKeyedSubscript:RPOptionSenderDeviceName];
    if (v11)
    {
      v12 = [a1[4] objectForKeyedSubscript:v10];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[4];
  if (v13)
  {
    v14 = RPOptionSenderIDSDeviceID;
    v15 = [v13 objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
    if (v15)
    {
      v16 = [a1[4] objectForKeyedSubscript:v14];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = a1[4];
  if (v17)
  {
    v18 = RPOptionSenderSessionPairingID;
    v19 = [v17 objectForKeyedSubscript:RPOptionSenderSessionPairingID];
    if (v19)
    {
      v20 = [a1[4] objectForKeyedSubscript:v18];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_opt_new();
  v22 = v21;
  if (v16)
  {
    [v21 setObject:v16 forKeyedSubscript:RPOptionSenderIDSDeviceID];
  }

  if (v20)
  {
    [v22 setObject:v20 forKeyedSubscript:RPOptionSenderSessionPairingID];
  }

  v23 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    *buf = 138413058;
    v111 = WeakRetained;
    v112 = 2114;
    v113 = v22;
    v114 = 2114;
    *v115 = v12;
    *&v115[8] = 1024;
    LODWORD(v116) = v8;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ senderIdentifiers %{public}@ name %{public}@ model %d", buf, 0x26u);
  }

  v25 = a1[5];
  if (v25)
  {
    v26 = ContinuityCaptureRapportClientMessageTypeKey;
    v27 = [v25 objectForKeyedSubscript:ContinuityCaptureRapportClientMessageTypeKey];

    if (v27)
    {
      v28 = [a1[5] objectForKeyedSubscript:v26];
      v29 = [v28 integerValue];

      if (v29 <= 3)
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v60 = CMContinuityCaptureLog();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = objc_loadWeakRetained(a1 + 7);
              v62 = [a1[5] objectForKeyedSubscript:ContinuityCaptureRapportClientUserDisconnectReasonKey];
              v63 = [a1[5] objectForKeyedSubscript:ContinuityCaptureRapportClientShieldSessionIDKey];
              v108 = +[CCDShieldUILifeCycleManager sharedInstance];
              v64 = [v108 activeSession];
              *buf = 138544386;
              v111 = v61;
              v112 = 2114;
              v113 = v16;
              v114 = 2114;
              *v115 = v62;
              *&v115[8] = 2114;
              v116 = v63;
              v117 = 2114;
              v118 = v64;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}@ User Disconnect from Host %{public}@ reason %{public}@ shieldSessionID %{public}@ activeSession %{public}@", buf, 0x34u);
            }

            v65 = [v22 allValues];
            v66 = +[CCDShieldUILifeCycleManager sharedInstance];
            v67 = [v66 activeSession];
            v68 = [v67 deviceIdentifier];
            v109 = [v65 containsObject:v68];

            v69 = +[CCDShieldUILifeCycleManager sharedInstance];
            v70 = [v69 activeSession];
            v71 = [v70 sessionID];
            if (v71)
            {
              v72 = ContinuityCaptureRapportClientShieldSessionIDKey;
              v73 = [a1[5] objectForKeyedSubscript:ContinuityCaptureRapportClientShieldSessionIDKey];
              if (v73)
              {
                v105 = v73;
                [a1[5] objectForKeyedSubscript:v72];
                v74 = v102 = v69;
                v100 = +[CCDShieldUILifeCycleManager sharedInstance];
                v75 = [v100 activeSession];
                v76 = [v75 sessionID];
                v99 = [v74 containsString:v76];

                v69 = v102;
                v73 = v105;
                v77 = v99 ^ 1;
              }

              else
              {
                v77 = 1;
              }
            }

            else
            {
              v77 = 1;
            }

            v92 = +[CCDShieldUILifeCycleManager sharedInstance];
            v93 = [v92 activeSession];

            if (v93)
            {
              if (!(v77 & 1 | ((v109 & 1) == 0)))
              {
                v94 = a1[6];
                v95 = [a1[5] objectForKeyedSubscript:ContinuityCaptureRapportClientUserDisconnectReasonKey];
                [v94 disconnectSession:0 reason:v95];

                [a1[6] teardownSession];
              }
            }

            else
            {
              v96 = +[CCDShieldUILifeCycleManager sharedInstance];
              [v96 forceShieldUITerminationIfApplicable];
            }
          }

          else if (v29 == 3)
          {
            v30 = *(a1[6] + 1);
            if (v30)
            {
              v31 = [v30 compositeDevice];

              if (v31)
              {
                v32 = [a1[5] objectForKeyedSubscript:ContinuityCaptureRapportClientEventNameKey];
                v33 = [a1[5] objectForKeyedSubscript:ContinuityCaptureRapportClientEventEntityTypeKey];
                v34 = [a1[5] objectForKeyedSubscript:ContinuityCaptureRapportClientEventDataKey];
                v35 = CMContinuityCaptureLog();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = objc_loadWeakRetained(a1 + 7);
                  *buf = 138544130;
                  v111 = v36;
                  v112 = 2114;
                  v113 = v32;
                  v114 = 2114;
                  *v115 = v33;
                  *&v115[8] = 2114;
                  v116 = v34;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ User Event %{public}@ entity %{public}@ data %{public}@", buf, 0x2Au);
                }

                if (v32)
                {
                  if (v33)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v37 = [v32 containsString:kCMContinuityCaptureEventStateMismatched];
                        v38 = a1[6];
                        if (v37)
                        {
                          [v38 _resolveUserPauseState];
                          v39 = [*(a1[6] + 1) compositeDevice];
                          v40 = [[NSError alloc] initWithDomain:@"ContinuityCapture" code:-1012 userInfo:0];
                          [v39 connectionInterrupted:v40 forDevice:0];
                        }

                        else
                        {
                          v39 = [v38[1] compositeDevice];
                          v97 = [v33 unsignedIntValue];
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v98 = v34;
                          }

                          else
                          {
                            v98 = 0;
                          }

                          [v39 postEvent:v32 entity:v97 data:v98];
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_104;
        }

        UserPreferenceDisabled = FigContinuityCaptureGetUserPreferenceDisabled();
        v44 = UserPreferenceDisabled;
        if (UserPreferenceDisabled)
        {
          v104 = UserPreferenceDisabled;
          v107 = v12;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v45 = [v22 allValues];
          v46 = [v45 countByEnumeratingWithState:&v120 objects:v119 count:16];
          v47 = kCMContinuityCaptureSessionExitReasonUserDisabled;
          if (v46)
          {
            v48 = v46;
            v49 = *v121;
            do
            {
              for (i = 0; i != v48; i = i + 1)
              {
                if (*v121 != v49)
                {
                  objc_enumerationMutation(v45);
                }

                [a1[6] _exitSessionIfApplicableForDeviceIdentifier:*(*(&v120 + 1) + 8 * i) exitReason:v47];
              }

              v48 = [v45 countByEnumeratingWithState:&v120 objects:v119 count:16];
            }

            while (v48);
          }

          [a1[6] disconnectSession:1 reason:v47];
          v51 = v16;
          v12 = v107;
          v44 = v104;
          if (v8 != 2)
          {
            v52 = v51;
            if ((v104 & 1) == 0)
            {
LABEL_85:
              v106 = v52;
              v85 = [*(a1[6] + 10) dedicatedDevice];
              v86 = [v85 idsDeviceIdentifier];
              v87 = [v86 isEqual:v16];

              v88 = [a1[5] objectForKeyedSubscript:ContinuityCaptureRapportClientShieldLaunchDataKey];
              v83 = v88;
              LOBYTE(v52) = v87;
              if (v88)
              {
                LOBYTE(v52) = v87;
                if ([v88 length]== 2)
                {
                  LOWORD(v52) = *[v83 bytes];
                }
              }

              v103 = v87;
              v89 = [*(a1[6] + 10) discoverySessionStartReason];
              v90 = CMContinuityCaptureLog();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                v101 = objc_loadWeakRetained(a1 + 7);
                *buf = 138544386;
                v111 = v101;
                v112 = 2114;
                v113 = v106;
                v114 = 1024;
                *v115 = v52 & 1;
                *&v115[4] = 1024;
                *&v115[6] = v103;
                LOWORD(v116) = 1024;
                *(&v116 + 2) = v89 == 3;
                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%{public}@ Launch shield ui event for %{public}@ skipPlacementStep %d isDedicated %d micOnly %d", buf, 0x28u);
              }

              v91 = v52 & 1;
              v52 = v106;
              [a1[6] launchShieldUIForDeviceIdentifier:v106 name:v12 model:v8 skipPlacementStep:v91 isDedicated:v103 micOnly:v89 == 3];
LABEL_91:

              goto LABEL_104;
            }

LABEL_81:
            v83 = CMContinuityCaptureLog();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              v84 = objc_loadWeakRetained(a1 + 7);
              *buf = 138543874;
              v111 = v84;
              v112 = 2114;
              v113 = v22;
              v114 = 1024;
              *v115 = v44;
              _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%{public}@ Disregard launch shield UI event for %{public}@ userDisabledContinuityCapture %d", buf, 0x1Cu);
            }

            goto LABEL_91;
          }
        }

        else
        {
          v80 = v16;
          if (v8 != 2)
          {
            v52 = v80;
            goto LABEL_85;
          }
        }

        v52 = [*(a1[6] + 10) peerDeviceIdentifier];

        v81 = [v22 allValues];
        v82 = [v81 containsObject:v52];

        if ([*(a1[6] + 10) currentState] == 1 && v82 && ((v44 ^ 1) & 1) != 0)
        {
          goto LABEL_85;
        }

        goto LABEL_81;
      }

      switch(v29)
      {
        case 4:
          v53 = [v22 allValues];
          v54 = +[CCDShieldUILifeCycleManager sharedInstance];
          v55 = [v54 activeSession];
          v56 = [v55 deviceIdentifier];
          v57 = [v53 containsObject:v56];

          if (v57)
          {
            v58 = CMContinuityCaptureLog();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = objc_loadWeakRetained(a1 + 7);
              *buf = 138543618;
              v111 = v59;
              v112 = 2114;
              v113 = v16;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ Skip placement step from Host %{public}@", buf, 0x16u);
            }

            [a1[6] _skipPlacementStepIfApplicable];
          }

          break;
        case 5:
          v78 = CMContinuityCaptureLog();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            v79 = objc_loadWeakRetained(a1 + 7);
            *buf = 138543362;
            v111 = v79;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ Query camera capabilities", buf, 0xCu);
          }

          [a1[6] postCameraCapabilitiesToDeviceWithIdentifier:v16 andModel:v8];
          break;
        case 8:
          v41 = CMContinuityCaptureLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = objc_loadWeakRetained(a1 + 7);
            *buf = 138543874;
            v111 = v42;
            v112 = 2080;
            v113 = "[CMContinuityCaptureDServer setupSidebandRPClient]_block_invoke";
            v114 = 2114;
            *v115 = v16;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ %s update system state from Host %{public}@", buf, 0x20u);
          }

          [a1[6] updateSystemStateForDeviceIdentifier:v16 andModel:v8];
          break;
      }
    }
  }

LABEL_104:
}

void sub_10000EF54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138543618;
    v7 = WeakRetained;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ activate cc client, error %@", &v6, 0x16u);
  }
}

void sub_10000F348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v37 + 40));
  objc_destroyWeak(&a36);
  objc_destroyWeak((v40 - 144));
  _Unwind_Resume(a1);
}

void sub_10000F388(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      v16 = 138543362;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Firing session clear out block", &v16, 0xCu);
    }

    v5 = *(WeakRetained + 5);
    *(WeakRetained + 5) = 0;

    v6 = +[CCDShieldUILifeCycleManager sharedInstance];
    v7 = [v6 activeSession];
    if (v7)
    {
      v8 = v7;
      v9 = +[CCDShieldUILifeCycleManager sharedInstance];
      v10 = [v9 activeSession];
      v11 = [v10 configuration];
      v12 = [v11 clientDeviceModel];

      if (v12 != 2)
      {
        [WeakRetained teardownShieldUI];
      }
    }

    else
    {
    }

    [WeakRetained teardownSession];
    if ([*(WeakRetained + 7) count])
    {
      v13 = [*(WeakRetained + 7) firstObject];
      [WeakRetained postEvent:kCMContinuityCaptureEventCaptureSessionEnded toSession:v13];
      v14 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_loadWeakRetained((a1 + 32));
        v16 = 138543618;
        v17 = v15;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Activate pending connection %{public}@", &v16, 0x16u);
      }

      [*(WeakRetained + 7) removeObjectAtIndex:0];
    }
  }
}

void sub_10000F588(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[4]);
    v4 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_loadWeakRetained((a1 + 40));
      v14 = 138543362;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ server session interrupted", &v14, 0xCu);
    }

    v6 = [v3[1] displaySession];

    if (v6)
    {
      if (!v3[5] && v3[6])
      {
        v7 = objc_retainBlock(*(a1 + 32));
        v8 = v3[5];
        v3[5] = v7;

        v9 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_loadWeakRetained((a1 + 40));
          v11 = v3[6];
          v14 = 138543874;
          v15 = v10;
          v16 = 1024;
          v17 = 10;
          v18 = 2114;
          v19 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduling session to be cleared in %dsec. %{public}@", &v14, 0x1Cu);
        }

        v12 = dispatch_time(0, 10000000000);
        dispatch_after(v12, v3[4], v3[5]);
      }

      v13 = [v3[1] displaySession];
      [(dispatch_queue_t *)v3 resetCurrentSession:v13 added:0 completion:&stru_10001CE40];
    }
  }
}

void sub_10000F744(uint64_t a1)
{
  v2 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138543362;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ server session invalidated", &v4, 0xCu);
  }
}

void sub_10000F7D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(WeakRetained + 4));
    v9 = v8[5];
    if (v9)
    {
      dispatch_block_cancel(v9);
      v10 = v8[5];
      v8[5] = 0;
    }

    v11 = [v5 destinationDevice];
    v12 = [v11 model];
    v13 = CMContinuityCaptureDeviceModelFromModelString();

    v14 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_loadWeakRetained((a1 + 32));
      v16 = [v5 serviceType];
      v17 = 138544130;
      v18 = v15;
      v19 = 2114;
      v20 = v5;
      v21 = 2114;
      v22 = v16;
      v23 = 1024;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ session started for %{public}@ serviceType %{public}@ deviceModel %d", &v17, 0x26u);
    }

    [v8 resetCurrentSession:v5 added:1 completion:&stru_10001CE60];
    v6[2](v6, 0);
  }
}

void sub_10000F954(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v17 = 138543874;
    v18 = WeakRetained;
    v19 = 2114;
    *v20 = v5;
    *&v20[8] = 2114;
    *&v20[10] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ session ended for %{public}@ error %{public}@", &v17, 0x20u);
  }

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = v9;
  if (v9)
  {
    dispatch_assert_queue_V2(v9[4]);
    if (!v10[5])
    {
      v11 = v10[6];
      if (v11)
      {
        if ([v11 isEqual:v5])
        {
          v12 = objc_retainBlock(*(a1 + 32));
          v13 = v10[5];
          v10[5] = v12;

          v14 = CMContinuityCaptureLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_loadWeakRetained((a1 + 40));
            v17 = 138543874;
            v18 = v15;
            v19 = 1024;
            *v20 = 10;
            *&v20[4] = 2114;
            *&v20[6] = v5;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduling session to be cleared in %dsec. %{public}@", &v17, 0x1Cu);
          }

          v16 = dispatch_time(0, 10000000000);
          dispatch_after(v16, v10[4], v10[5]);
        }
      }
    }

    [(dispatch_queue_t *)v10 resetCurrentSession:v5 added:0 completion:&stru_10001CEA8];
  }
}

void sub_10000FDE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100011CDC(a1);
    }
  }
}

void sub_10000FF0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  v3 = +[CCDShieldUILifeCycleManager sharedInstance];
  v4 = [v3 activeSession];
  if (v4)
  {
    v5 = v4;
    v6 = +[CCDShieldUILifeCycleManager sharedInstance];
    v7 = [v6 activeSession];
    v8 = [v7 sessionID];

    if (v8)
    {
      v9 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_loadWeakRetained((a1 + 32));
        v11 = *(a1 + 40);
        v16 = 138543874;
        v17 = v10;
        v18 = 2080;
        v19 = "[CMContinuityCaptureDServer lockScreenLayoutMonitor:didUpdateLayoutWithShieldFrontMost:lockscreenInLayout:]_block_invoke";
        v20 = 1024;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@ %s lockScreenLayoutMonitor did receive update on lock screen shieldFrontMost:%d", &v16, 0x1Cu);
      }

      if (*(a1 + 40) == 1)
      {
        [WeakRetained resumeStreamingForEvent:2];
      }

      else
      {
        [WeakRetained pauseSessionForEvent:2];
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v12 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = +[CCDShieldUILifeCycleManager sharedInstance];
    v15 = [v14 activeSession];
    v16 = 138543618;
    v17 = v13;
    v18 = 2112;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ ignore layout monitor update for active session %@", &v16, 0x16u);
  }

LABEL_13:
}

void sub_10001020C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 identifier];
    v4 = [MRGroupSessionProvider remoteControlGroupSessionWithIdentifier:v3 delegate:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  objc_sync_enter(v5);
  v6 = *(a1 + 40);
  v7 = *(v6 + 136);
  *(v6 + 136) = v4;
  v8 = v4;

  objc_sync_exit(v5);
}

id sub_100010504(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = 0;

  objc_sync_exit(v2);
  [*(a1 + 32) _teardownSingShieldUIIfNeeded];
  v5 = *(a1 + 32);

  return [v5 teardownSession];
}

void sub_100010840(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000108DC;
  v7[3] = &unk_10001C8F8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1000108DC(uint64_t a1)
{
  v2 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) routeUID];
    v5 = *(a1 + 32);
    v6 = *(v5 + 144);
    v7 = [*(v5 + 152) routeUID];
    v17 = 138413058;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ active route did change to %@. Current singSessionID: %@. Current tracked route: %@", &v17, 0x2Au);
  }

  if (*(*(a1 + 32) + 144))
  {
    v8 = [*(a1 + 40) routeUID];
    v9 = [v8 containsString:*(*(a1 + 32) + 144)];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(v10 + 152);
      *(v10 + 152) = v11;
    }

    else
    {
      v13 = *(a1 + 32);
      if (*(v13 + 161) != 1)
      {
        return;
      }

      v14 = *(v13 + 144);
      *(v13 + 144) = 0;

      v15 = *(a1 + 32);
      v16 = *(v15 + 152);
      *(v15 + 152) = 0;

      *(*(a1 + 32) + 161) = 0;
      [*(a1 + 32) pauseSessionForEvent:0];
      v12 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
      [v12 presentShieldError:4 userInfo:0];
    }
  }
}

uint64_t start()
{
  v0 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "200.0.1";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "ccd start, log version:%s", &v16, 0xCu);
  }

  v1 = FigDispatchQueueCreateWithPriority();
  v2 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
    v16 = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@", &v16, 0xCu);
  }

  v4 = [[CMContinuityCaptureDServer alloc] initWithQueue:v1];
  v5 = qword_100021B28;
  qword_100021B28 = v4;

  [qword_100021B28 activate];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.continuitycapture.rapportlaunch", v6);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v7, &stru_10001CF60);
  if (qword_100021B28)
  {
    v8 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    [v8 startListeningWithDelegate:qword_100021B28];
  }

  else
  {
    v8 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100011D28(v8);
    }
  }

  if (FigGetCFPreferenceBooleanWithDefault())
  {
    v9 = [CMContinuityCaptureNWServer alloc];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.continuitycapture.localServer", v10);
    v12 = [v9 initWithQueue:v11];
    v13 = qword_100021B30;
    qword_100021B30 = v12;

    v14 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = qword_100021B30;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Hosting local server %@", &v16, 0xCu);
    }
  }

  CFRunLoopRun();

  return 0;
}

void sub_100010E24(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) != &_xpc_type_dictionary)
  {
    reply = CMContinuityCaptureLog();
    if (os_log_type_enabled(reply, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, reply, OS_LOG_TYPE_DEFAULT, "Received launch event from rapport %@", &v7, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    v5 = string;
    v6 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ccd stream event %s", &v7, 0xCu);
    }
  }

  if (xpc_dictionary_get_BOOL(v2, "replyRequired"))
  {
    reply = xpc_dictionary_create_reply(v2);
    if (reply)
    {
      xpc_dictionary_send_reply();
    }

    goto LABEL_11;
  }

LABEL_12:
}

void sub_100010F78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100010FBC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x20u);
}

void sub_100010FF0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to encode launchUIConfiguration for shield: %@", &v2, 0xCu);
}

void sub_10001103C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to launch %@ with error: %{public}@", &v4, 0x16u);
}

void sub_1000110E0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SBSSecureAppAssertion errorHandler: %{public}@", &v2, 0xCu);
}

void sub_1000117BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100010FA4();
  sub_100010F78(&_mh_execute_header, v2, v3, "%{public}@ display name not accepted for ICMediaUser activeUserState, bailing to Music", v4, v5, v6, v7, v8);
}

void sub_1000117FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100010FA4();
  sub_100010F78(&_mh_execute_header, v2, v3, "%{public}@ terms not accepted for ICMediaUser activeUserState, bailing to Music", v4, v5, v6, v7, v8);
}

void sub_10001183C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100010FA4();
  sub_100010F78(&_mh_execute_header, v2, v3, "%{public}@ could not load regulatory info", v4, v5, v6, v7, v8);
}

void sub_10001187C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100010F64();
  sub_100010F94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1000118D4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  sub_100010F64();
  sub_100010F94();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100011960(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 48);
  v3 = *a2;
  sub_100010F64();
  sub_100010F94();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000119B0(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_100010FA4();
  sub_100010F78(&_mh_execute_header, v2, v3, "%{public}@ unable to refresh ICMediaUser activeUserState when checking music account", v4, v5, v6, v7, v8);
}

void sub_1000119F0(uint64_t *a1)
{
  v1 = *a1;
  sub_100010FA4();
  sub_100010F78(&_mh_execute_header, v2, v3, "%{public}@ unable to retrieve local participant info, present music error", v4, v5, v6, v7, v8);
}

void sub_100011A30()
{
  sub_100010FB0();
  sub_100010F94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100011A80(uint64_t *a1)
{
  v1 = *a1;
  sub_100010FA4();
  sub_100010F78(&_mh_execute_header, v2, v3, "Error fetching user state: %@", v4, v5, v6, v7, v8);
}

void sub_100011B04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  sub_100010FB0();
  sub_100010FBC(&_mh_execute_header, v4, v5, "%@ [shieldSession:%{public}@] Shield failed to launch for %{public}@", v6, v7, v8, v9, v10);
}

void sub_100011B84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = +[CCDShieldUILifeCycleManager sharedInstance];
  v9 = [v2 activeSession];
  sub_100010FBC(&_mh_execute_header, v3, v4, "%@ [shieldSession:%{public}@] Shield Session %{public}@ aborted", v5, v6, v7, v8, 2u);
}

void sub_100011C30(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543874;
    v6 = a1;
    v7 = 2080;
    v8 = "[CMContinuityCaptureDServer _exitSessionIfApplicableForDeviceIdentifier:exitReason:]";
    v9 = 2112;
    v10 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ %s called with nil identifier for reason %@", &v5, 0x20u);
  }
}

void sub_100011CDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100010F64();
  sub_100010F94();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}