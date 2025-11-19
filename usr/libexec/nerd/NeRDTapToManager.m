@interface NeRDTapToManager
+ (void)cleanDataVolumeIfNeeded;
+ (void)cleanFilesUnderFolder:(id)a3 logger:(id)a4;
- (BOOL)_queue_drawAnimation:(id)a3 withRefreshTime:(int)a4;
- (BOOL)draw:(id)a3 withDrawType:(int)a4;
- (BOOL)drawImageFromPath:(id)a3 withMapFromPath:(id)a4;
- (BOOL)setNeRDUIStepDisplayData:(int)a3 params:(char *)a4;
- (BOOL)suspendTTR;
- (id)initManagerWithCompletion:(id)a3 setupCompletion:(id)a4 commandCallback:(id)a5;
- (void)_queue_deregisterForButtonPress;
- (void)_setupKitServerEventHandler:(id)a3;
- (void)activate:(id)a3;
- (void)activateScreenOffTimer;
- (void)beginTapToSetup:(BOOL)a3;
- (void)deactivateScreenOffTimer;
- (void)dealloc;
- (void)endTapToSetup:(id)a3;
- (void)handleOSRMessage:(id)a3;
- (void)hidePassCodeHandler;
- (void)overallCompletionHandler:(id)a3;
- (void)resetStateOnUpdateError;
- (void)restartRecoveryAdvertisement;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)setupMangerToAwaitRedRingBypass;
- (void)showPassCodeHandler:(id)a3;
- (void)tapToManagerRegisterForButtonPress;
@end

@implementation NeRDTapToManager

- (BOOL)setNeRDUIStepDisplayData:(int)a3 params:(char *)a4
{
  if ([(NeRDTapToManager *)self fakeUI])
  {
    v7 = [(NeRDTapToManager *)self logger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Internal: Skipping call to setNeRDUIStepDisplayData per user preference", v10, 2u);
    }

    return 1;
  }

  else
  {

    return setNeRDUIStepDisplayData(a3, a4);
  }
}

- (void)showPassCodeHandler:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __40__NeRDTapToManager_showPassCodeHandler___block_invoke;
  v7[3] = &unk_100099400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(managerQueue, v7);
}

void __40__NeRDTapToManager_showPassCodeHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got request from sharing to display code %{public}@", &buf, 0xCu);
  }

  v5 = [*(a1 + 32) managerIsActive];
  v6 = [*(a1 + 32) logger];
  v7 = [v6 oslog];

  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "showPassCodeHandler set onFirstScreen NO", &buf, 2u);
    }

    [*(a1 + 32) setOnFirstScreen:0];
    [*(a1 + 32) deactivateScreenOffTimer];
    v9 = MGGetStringAnswer();
    if (v9)
    {
      v10 = v9;
      if (CFStringCompare(v9, @"AppleTV", 0))
      {
        if (CFStringCompare(v10, @"Watch", 0))
        {
          v11 = [*(a1 + 32) logger];
          v12 = [v11 oslog];

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unknown/supported device class..Showing generic UI", &buf, 2u);
          }
        }

        v13 = "Enter_passcode";
      }

      else
      {
        v13 = "iPhone_to_tv_passcode";
      }

      CFRelease(v10);
    }

    else
    {
      v14 = [*(a1 + 32) logger];
      v15 = [v14 oslog];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to get device class. Showing generic UI", &buf, 2u);
      }

      v13 = "Enter_passcode";
    }

    *&buf = v13;
    *(&buf + 1) = [*(a1 + 40) UTF8String];
    if (([*(a1 + 32) setNeRDUIStepDisplayData:6 params:&buf] & 1) == 0)
    {
      v16 = [*(a1 + 32) logger];
      v17 = [v16 oslog];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to show sharing pin to user!", v18, 2u);
      }
    }
  }

  else
  {
    if (v8)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manager is not active. Ignoring request to show code prompt", &buf, 2u);
    }
  }
}

- (void)hidePassCodeHandler
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__NeRDTapToManager_hidePassCodeHandler__block_invoke;
  block[3] = &unk_100099428;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

void __39__NeRDTapToManager_hidePassCodeHandler__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) logger];
  v2 = [v1 oslog];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Got request to stop showing passcode", v3, 2u);
  }
}

- (void)overallCompletionHandler:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __45__NeRDTapToManager_overallCompletionHandler___block_invoke;
  v7[3] = &unk_100099400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(managerQueue, v7);
}

void __45__NeRDTapToManager_overallCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OverallCompletionHandler invoked", buf, 2u);
  }

  v4 = [*(a1 + 32) managerIsActive];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 supportsOOBMessaging];
    v7 = [*(a1 + 32) logger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "overallCompletionHandler set onFirstScreen NO", buf, 2u);
    }

    [*(a1 + 32) setOnFirstScreen:0];
    [*(a1 + 32) deactivateScreenOffTimer];
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) logger];
    v11 = [v10 oslog];

    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (!v12)
      {
        goto LABEL_15;
      }

      v13 = *(a1 + 40);
      *buf = 138543362;
      v26 = v13;
      v14 = "Device setup failed: %{public}@";
      v15 = v11;
      v16 = 12;
    }

    else
    {
      if (!v12)
      {
        goto LABEL_15;
      }

      *buf = 0;
      v14 = "Device setup completed successfully";
      v15 = v11;
      v16 = 2;
    }

    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
LABEL_15:

    v19 = [*(a1 + 32) clientCompletion];

    if (v19)
    {
      v20 = [*(a1 + 32) clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __45__NeRDTapToManager_overallCompletionHandler___block_invoke_427;
      block[3] = &unk_100099450;
      v21 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v23 = v21;
      v24 = v6;
      dispatch_async(v20, block);
    }

    return;
  }

  v17 = [v5 logger];
  v18 = [v17 oslog];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Manager is not active. Ignoring request", buf, 2u);
  }
}

void __45__NeRDTapToManager_overallCompletionHandler___block_invoke_427(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invoking client completion", v5, 2u);
  }

  v4 = [*(a1 + 32) clientCompletion];
  v4[2](v4, *(a1 + 40), *(a1 + 48));
}

- (void)resetStateOnUpdateError
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__NeRDTapToManager_resetStateOnUpdateError__block_invoke;
  block[3] = &unk_100099428;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

id __43__NeRDTapToManager_resetStateOnUpdateError__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reset state on update error", v5, 2u);
  }

  [*(a1 + 32) setOldClient:1];
  [*(a1 + 32) setSupportsMessaging:1];
  [*(a1 + 32) setSupportsOOBMessaging:0];
  [*(a1 + 32) setSupportsSlowRoll:0];
  [*(a1 + 32) setSetupCompleted:0];
  return [*(a1 + 32) setConnectionValid:0];
}

- (void)activate:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __29__NeRDTapToManager_activate___block_invoke;
  v7[3] = &unk_100099400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(managerQueue, v7);
}

void __29__NeRDTapToManager_activate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SetupKit activate handler called", buf, 2u);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) logger];
  v6 = [v5 oslog];

  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to activate via setupkit: %{public}@", buf, 0xCu);
    }

    v9 = [*(a1 + 32) clientCompletion];

    if (v9)
    {
      v10 = [*(a1 + 32) clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __29__NeRDTapToManager_activate___block_invoke_428;
      block[3] = &unk_100099400;
      v11 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v41 = v11;
      dispatch_async(v10, block);
    }

    return;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setupkit successfully activated", buf, 2u);
  }

  [*(a1 + 32) setOldClient:1];
  [*(a1 + 32) setSupportsMessaging:1];
  [*(a1 + 32) setSupportsOOBMessaging:0];
  [*(a1 + 32) setSupportsSlowRoll:0];
  [*(a1 + 32) setSetupCompleted:0];
  [*(a1 + 32) setConnectionValid:0];
  [*(a1 + 32) setManagerIsActive:1];
  v12 = [*(a1 + 32) logger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "activate set managerIsActive YES", buf, 2u);
  }

  v14 = MGGetStringAnswer();
  if (!v14)
  {
    v18 = [*(a1 + 32) logger];
    v19 = [v18 oslog];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unable to get device class. Not showing UI", buf, 2u);
    }

    goto LABEL_21;
  }

  v15 = v14;
  if (CFStringCompare(v14, @"iPhone", 0))
  {
    if (CFStringCompare(v15, @"iPad", 0))
    {
      v16 = [*(a1 + 32) logger];
      v17 = [v16 oslog];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unknown/supported device class %{public}@..Not showing UI", buf, 0xCu);
      }

      CFRelease(v15);
LABEL_21:
      v20 = [*(a1 + 32) clientCompletion];

      if (!v20)
      {
        return;
      }

      v21 = [*(a1 + 32) clientQueue];
      v22 = v21;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = __29__NeRDTapToManager_activate___block_invoke_437;
      v39[3] = &unk_100099428;
      v39[4] = *(a1 + 32);
      v23 = v39;
      goto LABEL_33;
    }

    v24 = "tapToRecoverAnimation-ios/iPhone_to_iPad_animation";
  }

  else
  {
    v24 = "tapToRecoverAnimation-ios/iPhone_to_iPhone_animation";
  }

  CFRelease(v15);
  *buf = v24;
  setAnimationRefreshTime(42000, v25, v26, v27, v28, v29, v30, v31);
  v32 = [*(a1 + 32) setNeRDUIStepDisplayData:5 params:buf];
  v33 = [*(a1 + 32) logger];
  v34 = [v33 oslog];

  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  if (v32)
  {
    if (v35)
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "activate set onFirstScreen YES", v38, 2u);
    }

    [*(a1 + 32) setOnFirstScreen:1];
    [*(a1 + 32) setScreenOn:1];
    [*(a1 + 32) activateScreenOffTimer];
  }

  else
  {
    if (v35)
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Unable to show tap-to pairing UI\n", v38, 2u);
    }

    v36 = [*(a1 + 32) clientCompletion];

    if (v36)
    {
      v21 = [*(a1 + 32) clientQueue];
      v22 = v21;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = __29__NeRDTapToManager_activate___block_invoke_438;
      v37[3] = &unk_100099428;
      v37[4] = *(a1 + 32);
      v23 = v37;
LABEL_33:
      dispatch_async(v21, v23);
    }
  }
}

void __29__NeRDTapToManager_activate___block_invoke_428(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invoking client completion", v5, 2u);
  }

  v4 = [*(a1 + 32) clientCompletion];
  v4[2](v4, *(a1 + 40), 0);
}

void __29__NeRDTapToManager_activate___block_invoke_437(uint64_t a1)
{
  v3 = [NSError errorWithDomain:@"TapToManagerError" code:1 userInfo:0];
  v2 = [*(a1 + 32) clientCompletion];
  (v2)[2](v2, v3, 0);
}

void __29__NeRDTapToManager_activate___block_invoke_438(uint64_t a1)
{
  v3 = [NSError errorWithDomain:@"TapToManagerError" code:1 userInfo:0];
  v2 = [*(a1 + 32) clientCompletion];
  (v2)[2](v2, v3, 0);
}

- (BOOL)_queue_drawAnimation:(id)a3 withRefreshTime:(int)a4
{
  v6 = a3;
  v7 = [(NeRDTapToManager *)self logger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543618;
    v19 = v6;
    v20 = 1024;
    v21 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Displaying animation %{public}@ with refresh time %d", &v18, 0x12u);
  }

  setAnimationRefreshTime(a4, v9, v10, v11, v12, v13, v14, v15);
  v16 = [(NeRDTapToManager *)self _queue_draw:v6 withDrawType:5];

  return v16;
}

- (BOOL)draw:(id)a3 withDrawType:(int)a4
{
  v6 = a3;
  dispatch_assert_queue_not_V2(self->_managerQueue);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  managerQueue = self->_managerQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __38__NeRDTapToManager_draw_withDrawType___block_invoke;
  v10[3] = &unk_100099478;
  v11 = v6;
  v12 = &v14;
  v10[4] = self;
  v13 = a4;
  v8 = v6;
  dispatch_sync(managerQueue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

id __38__NeRDTapToManager_draw_withDrawType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_draw:*(a1 + 40) withDrawType:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

+ (void)cleanFilesUnderFolder:(id)a3 logger:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v31 = 0;
  v8 = [v7 contentsOfDirectoryAtPath:v5 error:&v31];
  v9 = v31;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v23 = v8;
      v24 = v10;
      v25 = v6;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v5 stringByAppendingPathComponent:{v17, v23, v24}];
          v26 = 0;
          v19 = [v7 removeItemAtPath:v18 error:&v26];
          v20 = v26;

          if ((v19 & 1) == 0)
          {
            v21 = [v25 oslog];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v5 stringByAppendingPathComponent:v17];
              *buf = 138543618;
              v34 = v22;
              v35 = 2114;
              v36 = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed removing %{public}@, error:%{public}@", buf, 0x16u);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
      v6 = v25;
      v8 = v23;
      v10 = v24;
    }
  }

  else
  {
    v12 = [v6 oslog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v34 = v5;
      v35 = 2114;
      v36 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Couldn't get any files for  %{public}@, error:%{public}@", buf, 0x16u);
    }
  }
}

+ (void)cleanDataVolumeIfNeeded
{
  if (cleanDataVolumeIfNeeded_loggerOnce != -1)
  {
    +[NeRDTapToManager cleanDataVolumeIfNeeded];
  }

  v2 = dispatch_get_global_queue(25, 0);
  dispatch_async(v2, &__block_literal_global_445);
}

void __43__NeRDTapToManager_cleanDataVolumeIfNeeded__block_invoke(id a1)
{
  cleanDataVolumeIfNeeded_logger = [[SUCoreLog alloc] initWithCategory:@"NeRDSpaceClean"];

  _objc_release_x1();
}

void __43__NeRDTapToManager_cleanDataVolumeIfNeeded__block_invoke_2(id a1)
{
  bzero(&v25, 0x878uLL);
  statfs("/private/var", &v25);
  v1 = v25.f_bavail * v25.f_bsize;
  v2 = [cleanDataVolumeIfNeeded_logger oslog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf.f_bsize = 134218240;
    *&buf.f_iosize = v1;
    WORD2(buf.f_blocks) = 2048;
    *(&buf.f_blocks + 6) = vcvtd_n_f64_u64(v1, 0x14uLL);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Free space available on nerd data volume: %llu bytes(%f MB)", &buf, 0x16u);
  }

  if (v1 >> 20 <= 0xE)
  {
    v3 = [cleanDataVolumeIfNeeded_logger oslog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not enough free space, will try to clean", &buf, 2u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [&off_1000A7E28 countByEnumeratingWithState:&v15 objects:v24 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v16;
      *&v5 = 138543362;
      v14 = v5;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(&off_1000A7E28);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          v10 = [cleanDataVolumeIfNeeded_logger oslog];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = v14;
            *&buf.f_iosize = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to clean %{public}@", &buf, 0xCu);
          }

          [NeRDTapToManager cleanFilesUnderFolder:v9 logger:cleanDataVolumeIfNeeded_logger];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [&off_1000A7E28 countByEnumeratingWithState:&v15 objects:v24 count:16];
      }

      while (v6);
    }

    bzero(&buf, 0x878uLL);
    statfs("/private/var", &buf);
    f_bavail = buf.f_bavail;
    f_bsize = buf.f_bsize;
    v13 = [cleanDataVolumeIfNeeded_logger oslog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 134218240;
      v20 = f_bavail * f_bsize;
      v21 = 2048;
      v22 = vcvtd_n_f64_u64(f_bavail * f_bsize, 0x14uLL);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Done cleaning, free space: %llu bytes(%f MB)", v19, 0x16u);
    }
  }
}

- (void)_setupKitServerEventHandler:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke;
  v7[3] = &unk_100099400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(managerQueue, v7);
}

void __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) eventType];
    *buf = 67240192;
    *v69 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got event %{public}d from setupKit", buf, 8u);
  }

  v5 = [*(a1 + 32) supportsOOBMessaging];
  v6 = [*(a1 + 40) error];

  if (v6)
  {
    v7 = [*(a1 + 32) logger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) error];
      *buf = 138543362;
      *v69 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got error from SetupKit: %{public}@", buf, 0xCu);
    }

    v10 = [*(a1 + 32) clientCompletion];

    if (v10)
    {
      v11 = [*(a1 + 32) clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke_460;
      block[3] = &unk_100099450;
      v12 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v66 = v12;
      v67 = v5;
      dispatch_async(v11, block);
    }

    return;
  }

  v13 = [*(a1 + 40) eventType];
  if (v13 <= 40)
  {
    if (v13 == 20)
    {
      v32 = [*(a1 + 32) logger];
      v33 = [v32 oslog];

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Remote device setup complete", buf, 2u);
      }

      [*(a1 + 32) setShowingSetup:0];
      v34 = [*(a1 + 32) setupCompletion];

      v35 = *(a1 + 32);
      if (v34)
      {
        v36 = [v35 clientQueue];
        v37 = v36;
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke_463;
        v62[3] = &unk_1000994E0;
        v62[4] = *(a1 + 32);
        v63 = v5;
        v38 = v62;
      }

      else
      {
        if ([v35 supportsMessaging])
        {
          return;
        }

        v57 = [*(a1 + 32) clientCompletion];

        if (!v57)
        {
          return;
        }

        v36 = [*(a1 + 32) clientQueue];
        v37 = v36;
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke_464;
        v60[3] = &unk_1000994E0;
        v60[4] = *(a1 + 32);
        v61 = v5;
        v38 = v60;
      }

LABEL_37:
      dispatch_async(v36, v38);

      return;
    }

    if (v13 == 30)
    {
      v50 = [*(a1 + 32) logger];
      v51 = [v50 oslog];

      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Invalidation event", buf, 2u);
      }

      v52 = [*(a1 + 32) invalidationSemaphore];
      dispatch_semaphore_signal(v52);
      goto LABEL_45;
    }

    if (v13 != 40)
    {
LABEL_31:
      v39 = [*(a1 + 32) logger];
      v20 = [v39 oslog];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [*(a1 + 40) eventType];
        *buf = 67109120;
        *v69 = v40;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unsupported event received from setupKit: %d", buf, 8u);
      }

      goto LABEL_41;
    }

    v21 = [*(a1 + 32) logger];
    v22 = [v21 oslog];

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "connection started", buf, 2u);
    }

    +[NeRDTapToManager cleanDataVolumeIfNeeded];
    [*(a1 + 32) setShowingPIN:0];
    [*(a1 + 32) setShowingSetup:1];
    [*(a1 + 32) setConnectionValid:1];
  }

  else
  {
    if (v13 > 139)
    {
      if (v13 == 140)
      {
        v48 = [*(a1 + 32) logger];
        v49 = [v48 oslog];

        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "AuthCompletionHandler called with success", buf, 2u);
        }

        v20 = [*(a1 + 32) managerQueue];
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke_462;
        v64[3] = &unk_100099428;
        v64[4] = *(a1 + 32);
        dispatch_async(v20, v64);
        goto LABEL_41;
      }

      if (v13 == 300)
      {
        v20 = *(a1 + 40);
        v23 = [*(a1 + 32) logger];
        v24 = [v23 oslog];

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v20 basicConfig];
          *buf = 138543362;
          *v69 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Remote device sent config: %{public}@", buf, 0xCu);
        }

        v26 = [v20 basicConfig];
        v27 = [v26 objectForKeyedSubscript:@"NeRDSupportsMessaging"];
        [*(a1 + 32) setSupportsMessaging:{objc_msgSend(v27, "BOOLValue")}];

        v28 = [v20 basicConfig];
        v29 = [v28 objectForKeyedSubscript:@"NeRDSupportsOOBMessaging"];
        [*(a1 + 32) setSupportsOOBMessaging:{objc_msgSend(v29, "BOOLValue")}];

        v30 = [v20 basicConfig];
        v31 = [v30 objectForKeyedSubscript:@"NeRDSupportsSlowRoll"];
        [*(a1 + 32) setSupportsSlowRoll:{objc_msgSend(v31, "BOOLValue")}];

        [*(a1 + 32) setSupportsEACS:0];
        [*(a1 + 32) setOldClient:{objc_msgSend(*(a1 + 32), "supportsMessaging") ^ 1}];
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    if (v13 != 41)
    {
      if (v13 == 110)
      {
        v14 = [*(a1 + 32) logger];
        v15 = [v14 oslog];

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Got request to present code", buf, 2u);
        }

        v16 = *(a1 + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = *(a1 + 32);
          v18 = *(a1 + 40);
          [v17 setShowingPIN:1];
          v19 = *(a1 + 32);
          v20 = [v18 password];
          [v19 showPassCodeHandler:v20];

LABEL_41:
          return;
        }

        v56 = [*(a1 + 32) logger];
        v52 = [v56 oslog];

        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Unexpected event class for AuthenticationRequest event", buf, 2u);
        }

LABEL_45:

        return;
      }

      goto LABEL_31;
    }

    v41 = [*(a1 + 32) logger];
    v42 = [v41 oslog];

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [*(a1 + 32) setupCompleted];
      v44 = [*(a1 + 32) clientCompletion];
      v45 = objc_retainBlock(v44);
      *buf = 67109378;
      *v69 = v43;
      *&v69[4] = 2114;
      *&v69[6] = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "connection ended, self.setupCompleted:%d self.clientCompletion:%{public}@", buf, 0x12u);
    }

    [*(a1 + 32) setConnectionValid:0];
    v46 = [*(a1 + 32) setupCompleted];
    v47 = *(a1 + 32);
    if (v46)
    {
      v36 = [v47 clientQueue];
      v37 = v36;
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke_465;
      v58[3] = &unk_1000994E0;
      v58[4] = *(a1 + 32);
      v59 = v5;
      v38 = v58;
      goto LABEL_37;
    }

    if ([v47 showingSetup] && !objc_msgSend(*(a1 + 32), "oldClient") || objc_msgSend(*(a1 + 32), "showingPIN") && objc_msgSend(*(a1 + 32), "oldClient"))
    {
      v53 = [*(a1 + 32) logger];
      v54 = [v53 oslog];

      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [*(a1 + 32) oldClient];
        *buf = 67109120;
        *v69 = v55;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "connection ended, still in setup, old client:%d, activate", buf, 8u);
      }

      [*(a1 + 32) activate:0];
    }
  }
}

void __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke_460(uint64_t a1)
{
  v3 = [*(a1 + 32) clientCompletion];
  v2 = [*(a1 + 40) error];
  v3[2](v3, v2, *(a1 + 48));
}

id __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke_462(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AuthCompletionHandler set onFirstScreen NO", buf, 2u);
  }

  [*(a1 + 32) setOnFirstScreen:0];
  [*(a1 + 32) deactivateScreenOffTimer];
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Displaying spinner", v14, 2u);
  }

  setAnimationRefreshTime(25000, v6, v7, v8, v9, v10, v11, v12);
  return [*(a1 + 32) setNeRDUIStepDisplayData:3 params:0];
}

void __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke_463(uint64_t a1)
{
  [*(a1 + 32) setSetupCompleted:1];
  v2 = [*(a1 + 32) setupCompletion];
  (v2)[2](v2, [*(a1 + 32) oldClient]);

  if (([*(a1 + 32) supportsMessaging] & 1) == 0)
  {
    v3 = [*(a1 + 32) clientCompletion];

    if (v3)
    {
      v4 = [*(a1 + 32) logger];
      v5 = [v4 oslog];

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No messaging support, remote device setup complete", v7, 2u);
      }

      v6 = [*(a1 + 32) clientCompletion];
      v6[2](v6, 0, *(a1 + 40));

      [*(a1 + 32) setClientCompletion:0];
    }
  }
}

id __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke_464(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No messaging support, remote device setup complete", v6, 2u);
  }

  v4 = [*(a1 + 32) clientCompletion];
  v4[2](v4, 0, *(a1 + 40));

  return [*(a1 + 32) setClientCompletion:0];
}

void __48__NeRDTapToManager__setupKitServerEventHandler___block_invoke_465(uint64_t a1)
{
  v2 = [*(a1 + 32) clientCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) clientCompletion];
    v3[2](v3, 0, *(a1 + 40));

    v4 = *(a1 + 32);

    [v4 setClientCompletion:0];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NeRDTapToManager;
  [(NeRDTapToManager *)&v2 dealloc];
}

- (id)initManagerWithCompletion:(id)a3 setupCompletion:(id)a4 commandCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v61.receiver = self;
  v61.super_class = NeRDTapToManager;
  v11 = [(NeRDTapToManager *)&v61 init];
  if (!v11)
  {
    goto LABEL_39;
  }

  v12 = [[SUCoreLog alloc] initWithCategory:@"NeRDSharingManager"];
  [(NeRDTapToManager *)v11 setLogger:v12];

  v13 = dispatch_queue_create("com.apple.nerd.TapToManagerSharingOperationsQueue", 0);
  operationsQueue = v11->_operationsQueue;
  v11->_operationsQueue = v13;

  v15 = dispatch_queue_create("com.apple.nerd.TapToManagerMainQueue", 0);
  managerQueue = v11->_managerQueue;
  v11->_managerQueue = v15;

  v17 = dispatch_queue_create("com.apple.nerd.TapToManagerInvalidationQueue", 0);
  invalidationQueue = v11->_invalidationQueue;
  v11->_invalidationQueue = v17;

  v19 = dispatch_queue_create("com.apple.nerd.TapToManagerClientCallbackQueue", 0);
  clientQueue = v11->_clientQueue;
  v11->_clientQueue = v19;

  v21 = [(NeRDTapToManager *)v11 logger];
  v22 = [v21 oslog];

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "init managerIsActive NO", buf, 2u);
  }

  v11->_managerIsActive = 0;
  v11->_registeredForButtonPress = 0;
  v11->_bypassCodeEntered = 0;
  v23 = dispatch_semaphore_create(0);
  invalidationSemaphore = v11->_invalidationSemaphore;
  v11->_invalidationSemaphore = v23;

  v25 = objc_alloc_init(SKSetupServer);
  server = v11->_server;
  v11->_server = v25;

  [(SKSetupServer *)v11->_server setSetupType:1];
  [(SKSetupServer *)v11->_server setSkipWifi:0];
  v64[0] = @"NeRDVersionKey";
  v27 = [NSNumber numberWithInteger:2];
  v65[0] = v27;
  v65[1] = @"NeRDIntentRecovery";
  v64[1] = @"NeRDIntent";
  v64[2] = @"NeRDSupportsMessaging";
  v65[2] = &__kCFBooleanTrue;
  v65[3] = &__kCFBooleanTrue;
  v64[3] = @"NeRDSupportsOOBMessaging";
  v64[4] = @"NeRDSupportsSlowRoll";
  v65[4] = &__kCFBooleanTrue;
  v28 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:5];
  [(SKSetupServer *)v11->_server setServerConfig:v28];

  [(SKSetupServer *)v11->_server setDispatchQueue:v11->_operationsQueue];
  [(SKSetupServer *)v11->_server setPasswordType:2];
  [(SKSetupServer *)v11->_server setConditionalPersistent:1];
  v11->_serverWasActivated = 0;
  v11->_supportsMessaging = 1;
  v11->_oldClient = 1;
  if (MGGetBoolAnswer())
  {
    v29 = MSUCopyEnvInfoForNeRD();
    v30 = v29;
    if (v29)
    {
      v31 = [v29 objectForKeyedSubscript:@"TTRCodeOverride"];
      if (v31)
      {
        v32 = +[NSCharacterSet decimalDigitCharacterSet];
        v33 = [v32 invertedSet];

        if (-[NSObject length](v31, "length") == 6 && (-[NSObject stringByTrimmingCharactersInSet:](v31, "stringByTrimmingCharactersInSet:", v33), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 isEqualToString:v31], v34, v35))
        {
          v36 = [(NeRDTapToManager *)v11 logger];
          v37 = [v36 oslog];

          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v63 = v31;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Setting tap-to-recover code to %{public}@", buf, 0xCu);
          }

          [(SKSetupServer *)v11->_server setPassword:v31];
        }

        else
        {
          v39 = [(NeRDTapToManager *)v11 logger];
          v40 = [v39 oslog];

          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v63 = v31;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Invalid value passed in for tap-to-recover code override: %{public}@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v38 = [(NeRDTapToManager *)v11 logger];
      v31 = [v38 oslog];

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No BootedOSState dict found", buf, 2u);
      }
    }

    v41 = [(NeRDTapToManager *)v11 logger];
    v42 = [v41 oslog];

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "checking auth-tag override", buf, 2u);
    }

    v43 = copy_nvram_variable(@"nerd-auth-tag");
    v44 = v43;
    if (!v43)
    {
      goto LABEL_31;
    }

    v45 = CFGetTypeID(v43);
    if (v45 == CFDataGetTypeID())
    {
      v46 = [v44 copy];
    }

    else
    {
      v47 = CFGetTypeID(v44);
      if (v47 != CFStringGetTypeID())
      {
LABEL_26:
        v49 = [(SKSetupServer *)v11->_server authTagOverride];

        if (v49)
        {
          v50 = [(NeRDTapToManager *)v11 logger];
          v51 = [v50 oslog];

          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v63 = v44;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "found auth-tag override %{public}@", buf, 0xCu);
          }
        }

        CFRelease(v44);
LABEL_31:

        goto LABEL_32;
      }

      v46 = [v44 dataUsingEncoding:4];
    }

    v48 = v46;
    [(SKSetupServer *)v11->_server setAuthTagOverride:v46];

    goto LABEL_26;
  }

LABEL_32:
  objc_initWeak(buf, v11);
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = __78__NeRDTapToManager_initManagerWithCompletion_setupCompletion_commandCallback___block_invoke;
  v59[3] = &unk_100099508;
  objc_copyWeak(&v60, buf);
  [(SKSetupServer *)v11->_server setEventHandler:v59];
  if (v8)
  {
    v52 = objc_retainBlock(v8);
    clientCompletion = v11->_clientCompletion;
    v11->_clientCompletion = v52;
  }

  if (v9)
  {
    v54 = objc_retainBlock(v9);
    setupCompletion = v11->_setupCompletion;
    v11->_setupCompletion = v54;
  }

  if (v10)
  {
    v56 = objc_retainBlock(v10);
    commandCallback = v11->_commandCallback;
    v11->_commandCallback = v56;
  }

  [(NeRDTapToManager *)v11 setHidEventSystem:0];
  objc_destroyWeak(&v60);
  objc_destroyWeak(buf);
LABEL_39:

  return v11;
}

void __78__NeRDTapToManager_initManagerWithCompletion_setupCompletion_commandCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupKitServerEventHandler:v3];
}

- (void)restartRecoveryAdvertisement
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__NeRDTapToManager_restartRecoveryAdvertisement__block_invoke;
  block[3] = &unk_100099428;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

id __48__NeRDTapToManager_restartRecoveryAdvertisement__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asking setupKit server to resume advertising", v6, 2u);
  }

  v4 = [*(a1 + 32) server];
  [v4 reset];

  return [*(a1 + 32) activate:0];
}

- (void)_queue_deregisterForButtonPress
{
  if ([(NeRDTapToManager *)self registeredForButtonPress])
  {
    v3 = [(NeRDTapToManager *)self logger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling HIDEventSystemClose by %p\n", &v7, 0xCu);
    }

    if ([(NeRDTapToManager *)self hidEventSystem])
    {
      [(NeRDTapToManager *)self hidEventSystem];
      IOHIDEventSystemClose();
      CFRelease([(NeRDTapToManager *)self hidEventSystem]);
      [(NeRDTapToManager *)self setHidEventSystem:0];
    }

    [(NeRDTapToManager *)self setRegisteredForButtonPress:0];
  }

  else if ([(NeRDTapToManager *)self hidEventSystem])
  {
    v5 = [(NeRDTapToManager *)self logger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Releasing HIDEventSystem by %p\n", &v7, 0xCu);
    }

    CFRelease([(NeRDTapToManager *)self hidEventSystem]);
    [(NeRDTapToManager *)self setHidEventSystem:0];
  }
}

- (void)endTapToSetup:(id)a3
{
  v4 = a3;
  managerQueue = self->_managerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __34__NeRDTapToManager_endTapToSetup___block_invoke;
  v7[3] = &unk_100099580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(managerQueue, v7);
}

void __34__NeRDTapToManager_endTapToSetup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) supportsOOBMessaging];
  if ([*(a1 + 32) lastCommand] == 2 || objc_msgSend(*(a1 + 32), "lastCommand") == 3)
  {
    v3 = [*(a1 + 32) logger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not enabling OOB messaging on EACS/Reboot command", buf, 2u);
    }

    v2 = 0;
  }

  v5 = [*(a1 + 32) managerIsActive];
  v6 = [*(a1 + 32) logger];
  v7 = [v6 oslog];

  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "endTapToSetup set managerIsActive NO", buf, 2u);
    }

    [*(a1 + 32) setManagerIsActive:0];
    [*(a1 + 32) deactivateScreenOffTimer];
    [*(a1 + 32) _queue_deregisterForButtonPress];
    v9 = [*(a1 + 32) logger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling invalidate on SetupKit server", buf, 2u);
    }

    v11 = [*(a1 + 32) server];
    [v11 invalidate];

    v12 = [*(a1 + 32) invalidationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __34__NeRDTapToManager_endTapToSetup___block_invoke_489;
    block[3] = &unk_100099558;
    v13 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v20 = v13;
    v21 = v2;
    dispatch_async(v12, block);

    v14 = v20;
    goto LABEL_16;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Invalidate called when manager is not active. Nothing to do", buf, 2u);
  }

  if (*(a1 + 40))
  {
    v15 = [*(a1 + 32) clientQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __34__NeRDTapToManager_endTapToSetup___block_invoke_491;
    v16[3] = &unk_100099530;
    v17 = *(a1 + 40);
    v18 = v2;
    dispatch_async(v15, v16);

    v14 = v17;
LABEL_16:
  }
}

void __34__NeRDTapToManager_endTapToSetup___block_invoke_489(uint64_t a1)
{
  v2 = [*(a1 + 32) invalidationSemaphore];
  v3 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v2, v3);

  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidation completed successfully", buf, 2u);
  }

  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) clientQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __34__NeRDTapToManager_endTapToSetup___block_invoke_490;
    v7[3] = &unk_100099530;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    dispatch_async(v6, v7);
  }
}

- (BOOL)drawImageFromPath:(id)a3 withMapFromPath:(id)a4
{
  v4 = [(NeRDTapToManager *)self logger:a3];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[NeRDTapToManager drawImageFromPath:withMapFromPath:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s not supported in this environment", &v7, 0xCu);
  }

  return 0;
}

- (void)setupMangerToAwaitRedRingBypass
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__NeRDTapToManager_setupMangerToAwaitRedRingBypass__block_invoke;
  block[3] = &unk_100099428;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

void __51__NeRDTapToManager_setupMangerToAwaitRedRingBypass__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) logger];
  v2 = [v1 oslog];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "redRing not supported here\n", v3, 2u);
  }
}

- (void)handleOSRMessage:(id)a3
{
  v4 = a3;
  v5 = [(NeRDTapToManager *)self logger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Got OSR message %{public}@", &v15, 0xCu);
  }

  if (![(NeRDTapToManager *)self setupCompleted])
  {
    v7 = [(NeRDTapToManager *)self logger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setup not completed, is this a bug?", &v15, 2u);
    }
  }

  v9 = [(NeRDTapToManager *)self commandCallback];

  if (v9)
  {
    v10 = [v4 objectForKeyedSubscript:@"NeRDCommand"];
    if ([v10 isEqual:@"NeRDCommandRecover"])
    {
      [(NeRDTapToManager *)self setLastCommand:1];
      v11 = [(NeRDTapToManager *)self commandCallback];
      isa = v11[2].isa;
    }

    else if ([v10 isEqual:@"NeRDOOBCommandSelectSU"])
    {
      [(NeRDTapToManager *)self setLastCommand:4];
      v11 = [(NeRDTapToManager *)self commandCallback];
      isa = v11[2].isa;
    }

    else if ([v10 isEqual:@"NeRDCommandEACS"])
    {
      [(NeRDTapToManager *)self setLastCommand:2];
      v11 = [(NeRDTapToManager *)self commandCallback];
      isa = v11[2].isa;
    }

    else
    {
      if (![v10 isEqual:@"NeRDCommandReboot"])
      {
        v14 = [(NeRDTapToManager *)self logger];
        v11 = [v14 oslog];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543362;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unknown command %{public}@", &v15, 0xCu);
        }

        goto LABEL_15;
      }

      [(NeRDTapToManager *)self setLastCommand:3];
      v11 = [(NeRDTapToManager *)self commandCallback];
      isa = v11[2].isa;
    }

    isa();
LABEL_15:

    goto LABEL_16;
  }

  v13 = [(NeRDTapToManager *)self logger];
  v10 = [v13 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "command callback is missing, is this a bug?", &v15, 2u);
  }

LABEL_16:
}

- (void)beginTapToSetup:(BOOL)a3
{
  managerQueue = self->_managerQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __36__NeRDTapToManager_beginTapToSetup___block_invoke;
  v4[3] = &unk_1000994E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(managerQueue, v4);
}

void __36__NeRDTapToManager_beginTapToSetup___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) managerIsActive])
  {
    v2 = [*(a1 + 32) logger];
    v3 = [v2 oslog];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Manager is already active. Nothing to do", buf, 2u);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) server];
    [v5 setSetupType:1];

    v6 = [*(a1 + 32) server];
    [v6 setSkipWifi:0];

    if (v4 == 1)
    {
      v19[0] = @"NeRDVersionKey";
      v7 = [NSNumber numberWithInteger:2];
      v20[0] = v7;
      v20[1] = @"NeRDIntentRecoveryMenu";
      v19[1] = @"NeRDIntent";
      v19[2] = @"NeRDSupportsMessaging";
      v20[2] = &__kCFBooleanTrue;
      v20[3] = &__kCFBooleanTrue;
      v19[3] = @"NeRDSupportsOOBMessaging";
      v19[4] = @"NeRDSupportsSlowRoll";
      v20[4] = &__kCFBooleanTrue;
      v19[5] = @"NeRDSupportsEACS";
      v8 = [NSNumber numberWithBool:0];
      v20[5] = v8;
      v19[6] = @"NeRDRecoveryDisabled";
      v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) recoveryDisabled]);
      v20[6] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:7];
      v11 = [*(a1 + 32) server];
      [v11 setServerConfig:v10];
    }

    else
    {
      v17[0] = @"NeRDVersionKey";
      v7 = [NSNumber numberWithInteger:2];
      v18[0] = v7;
      v18[1] = @"NeRDIntentRecovery";
      v17[1] = @"NeRDIntent";
      v17[2] = @"NeRDSupportsMessaging";
      v18[2] = &__kCFBooleanTrue;
      v18[3] = &__kCFBooleanTrue;
      v17[3] = @"NeRDSupportsOOBMessaging";
      v17[4] = @"NeRDSupportsSlowRoll";
      v18[4] = &__kCFBooleanTrue;
      v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
      v9 = [*(a1 + 32) server];
      [v9 setServerConfig:v8];
    }

    v12 = [*(a1 + 32) server];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __36__NeRDTapToManager_beginTapToSetup___block_invoke_492;
    v14[3] = &unk_1000995A8;
    v15 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __36__NeRDTapToManager_beginTapToSetup___block_invoke_3;
    v13[3] = &unk_1000995D0;
    v13[4] = v15;
    [v12 registerEventID:@"osrEventID" options:0 eventHandler:v14 completionHandler:v13];
  }
}

void __36__NeRDTapToManager_beginTapToSetup___block_invoke_492(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) managerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __36__NeRDTapToManager_beginTapToSetup___block_invoke_2;
  v7[3] = &unk_100099400;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __36__NeRDTapToManager_beginTapToSetup___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 logger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed registering for osr events", buf, 2u);
    }

    [*(a1 + 32) activate:v3];
  }

  else
  {
    v7 = [v4 useRedRingUI];
    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 setupMangerToAwaitRedRingBypass];
    }

    else
    {
      v9 = [v8 server];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __36__NeRDTapToManager_beginTapToSetup___block_invoke_494;
      v10[3] = &unk_1000995D0;
      v10[4] = *(a1 + 32);
      [v9 activateWithCompletion:v10];
    }
  }
}

void __36__NeRDTapToManager_beginTapToSetup___block_invoke_494(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 logger];
  v7 = [v6 oslog];

  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SetupKit server ActivateWithCompletion returned error. Not setting serverWasActivated", v9, 2u);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "beginTapToSetup setting serverWasActivated to YES", buf, 2u);
    }

    [*(a1 + 32) setServerWasActivated:1];
  }

  [*(a1 + 32) activate:v5];
}

- (void)tapToManagerRegisterForButtonPress
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __54__NeRDTapToManager_tapToManagerRegisterForButtonPress__block_invoke;
  block[3] = &unk_100099428;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

void __54__NeRDTapToManager_tapToManagerRegisterForButtonPress__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredForButtonPress];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 logger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No need to register for button press\n", &v21, 2u);
    }

    return;
  }

  if (![v3 hidEventSystem])
  {
    v6 = [*(a1 + 32) logger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v21 = 134217984;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "calling IOHIDEventSystemCreate for %p", &v21, 0xCu);
    }

    [*(a1 + 32) setHidEventSystem:IOHIDEventSystemCreate()];
  }

  v9 = [*(a1 + 32) hidEventSystem];
  v10 = *(a1 + 32);
  if (!v9)
  {
    v17 = [v10 logger];
    v14 = [v17 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v21 = 134217984;
      v22 = v18;
      v19 = "ERROR: HIDEventSystem object not allocated for %p";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v19, &v21, 0xCu);
    }

LABEL_19:

    return;
  }

  [v10 hidEventSystem];
  v11 = *(a1 + 32);
  v12 = IOHIDEventSystemOpen();
  v13 = [*(a1 + 32) logger];
  v14 = [v13 oslog];

  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (v15)
    {
      v20 = *(a1 + 32);
      v21 = 134217984;
      v22 = v20;
      v19 = "IOHIDEventSystemOpen failed for %p";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v15)
  {
    v16 = *(a1 + 32);
    v21 = 134217984;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registered %p for button events", &v21, 0xCu);
  }

  [*(a1 + 32) setRegisteredForButtonPress:1];
}

- (void)activateScreenOffTimer
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__NeRDTapToManager_activateScreenOffTimer__block_invoke;
  block[3] = &unk_100099428;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

void __42__NeRDTapToManager_activateScreenOffTimer__block_invoke(uint64_t a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __42__NeRDTapToManager_activateScreenOffTimer__block_invoke_2;
  v8[3] = &unk_1000995F8;
  v8[4] = *(a1 + 32);
  v2 = [NSTimer timerWithTimeInterval:1 repeats:v8 block:20.0];
  [*(a1 + 32) setUiTimer:v2];

  v3 = [*(a1 + 32) logger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134217984;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting up timer to turn off display for %p", buf, 0xCu);
  }

  v6 = +[NSRunLoop mainRunLoop];
  v7 = [*(a1 + 32) uiTimer];
  [v6 addTimer:v7 forMode:NSDefaultRunLoopMode];
}

void __42__NeRDTapToManager_activateScreenOffTimer__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) managerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__NeRDTapToManager_activateScreenOffTimer__block_invoke_3;
  block[3] = &unk_100099428;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

id __42__NeRDTapToManager_activateScreenOffTimer__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) onFirstScreen];
  if (result)
  {
    result = [*(a1 + 32) screenOn];
    if (result)
    {
      v3 = [*(a1 + 32) logger];
      v4 = [v3 oslog];

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 134217984;
        v7 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initial UI is active and timer has fired. Turning off screen for %p", &v6, 0xCu);
      }

      [*(a1 + 32) setScreenOn:0];
      [*(a1 + 32) setNeRDUIStepDisplayData:8 params:0];
      return [*(a1 + 32) tapToManagerRegisterForButtonPress];
    }
  }

  return result;
}

- (void)deactivateScreenOffTimer
{
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__NeRDTapToManager_deactivateScreenOffTimer__block_invoke;
  block[3] = &unk_100099428;
  block[4] = self;
  dispatch_async(managerQueue, block);
}

void __44__NeRDTapToManager_deactivateScreenOffTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uiTimer];
  if (v2 && (v3 = v2, [*(a1 + 32) uiTimer], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isValid"), v4, v3, v5))
  {
    v6 = [*(a1 + 32) logger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to deactivate timer for %p", &v12, 0xCu);
    }

    v9 = [*(a1 + 32) uiTimer];
    [v9 invalidate];

    [*(a1 + 32) setUiTimer:0];
  }

  else
  {
    v10 = [*(a1 + 32) logger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timer is not currently active. Nothing to do", &v12, 2u);
    }
  }
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  managerQueue = self->_managerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__NeRDTapToManager_sendMessage_completion___block_invoke;
  block[3] = &unk_100099698;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(managerQueue, block);
}

void __43__NeRDTapToManager_sendMessage_completion___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) managerIsActive] || (objc_msgSend(*(a1 + 32), "setupCompleted") & 1) == 0)
  {
    if (*(a1 + 48))
    {
      v2 = [*(a1 + 32) clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __43__NeRDTapToManager_sendMessage_completion___block_invoke_2;
      block[3] = &unk_100099620;
      v13 = *(a1 + 48);
      dispatch_async(v2, block);
    }
  }

  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) server];
    v4 = *(a1 + 40);
    v14 = SKOptionTimeoutSeconds;
    v15 = &off_1000A7E70;
    v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __43__NeRDTapToManager_sendMessage_completion___block_invoke_500;
    v10[3] = &unk_100099670;
    v6 = &v11;
    v7 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v11 = v7;
    [v3 sendEventID:@"osrEventID" eventMessage:v4 options:v5 completionHandler:v10];
  }

  else
  {
    if (!*(a1 + 48))
    {
      return;
    }

    v3 = [*(a1 + 32) clientQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __43__NeRDTapToManager_sendMessage_completion___block_invoke_3;
    v8[3] = &unk_100099620;
    v6 = &v9;
    v9 = *(a1 + 48);
    dispatch_async(v3, v8);
  }
}

void __43__NeRDTapToManager_sendMessage_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"TapToManagerError" code:2 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __43__NeRDTapToManager_sendMessage_completion___block_invoke_500(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) clientQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __43__NeRDTapToManager_sendMessage_completion___block_invoke_2_501;
    v5[3] = &unk_100099648;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (BOOL)suspendTTR
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managerQueue = self->_managerQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __30__NeRDTapToManager_suspendTTR__block_invoke;
  v5[3] = &unk_1000996C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(managerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __30__NeRDTapToManager_suspendTTR__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (v3)
  {
    v2[10] = 0;

    [*(a1 + 32) deactivateScreenOffTimer];
    [*(a1 + 32) _queue_deregisterForButtonPress];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v2 = *(a1 + 32);
  }

  v4 = [v2 logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating server to stop advertising", v8, 2u);
  }

  v6 = [*(a1 + 32) server];
  [v6 invalidate];

  [*(a1 + 32) setManagerIsActive:0];
  return [*(a1 + 32) _queue_draw:@"Enter_passcode" withDrawType:1];
}

@end