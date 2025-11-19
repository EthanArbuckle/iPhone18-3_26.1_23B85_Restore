@interface CCDPauseStateSolver
- (BOOL)isUserPauseStored;
- (BOOL)resolvePauseState;
- (CCDPauseStateSolver)init;
- (void)dealloc;
- (void)incomingCallDeclinedStatusUpdated:(BOOL)a3;
- (void)incomingCallStatusUpdated:(BOOL)a3;
- (void)pauseForEvent:(int64_t)a3;
- (void)resumeForEvent:(int64_t)a3;
- (void)saveUserPauseState:(BOOL)a3;
- (void)sideButtonPressed;
- (void)sideButtonReleased;
@end

@implementation CCDPauseStateSolver

- (CCDPauseStateSolver)init
{
  v3.receiver = self;
  v3.super_class = CCDPauseStateSolver;
  result = [(CCDPauseStateSolver *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  [(CCDPauseStateSolver *)self saveUserPauseState:0];
  v3.receiver = self;
  v3.super_class = CCDPauseStateSolver;
  [(CCDPauseStateSolver *)&v3 dealloc];
}

- (void)incomingCallStatusUpdated:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_incomingCall = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)incomingCallDeclinedStatusUpdated:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_incomingCallDeclined = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)pauseForEvent:(int64_t)a3
{
  if (a3 <= 2)
  {
    v5 = qword_100014948[a3];
    os_unfair_lock_lock_with_options();
    *(&self->super.isa + v5) = 1;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)resumeForEvent:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    if (a3)
    {
      return;
    }

    p_lock = &self->_lock;
    os_unfair_lock_lock_with_options();
    self->_pauseButtonPressed = 0;
  }

  else
  {
    p_lock = &self->_lock;
    os_unfair_lock_lock_with_options();
  }

  self->_pauseForInactiveShield = 0;

  os_unfair_lock_unlock(p_lock);
}

- (void)saveUserPauseState:(BOOL)a3
{
  v3 = a3;
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Saving user pause %d", &v8, 0x12u);
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = &kCFBooleanTrue;
  if (!v3)
  {
    v7 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"com.apple.continuitycapture.userPressedPause", *v7, @"com.apple.cameracapture");
  CFPreferencesAppSynchronize(@"com.apple.cameracapture");
  objc_sync_exit(v6);
}

- (BOOL)isUserPauseStored
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = CFPreferencesCopyAppValue(@"com.apple.continuitycapture.userPressedPause", @"com.apple.cameracapture");
  if (v3)
  {
    v4 = v3 == kCFBooleanTrue;
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)sideButtonPressed
{
  os_unfair_lock_lock_with_options();
  *&self->_sideButtonPressed = 1;
  self->_pauseForInactiveShield = 0;
  os_unfair_lock_unlock(&self->_lock);

  [(CCDPauseStateSolver *)self saveUserPauseState:0];
}

- (void)sideButtonReleased
{
  os_unfair_lock_lock_with_options();
  self->_sideButtonPressed = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)resolvePauseState
{
  os_unfair_lock_lock_with_options();
  sideButtonPressed = self->_sideButtonPressed;
  pauseButtonPressed = self->_pauseButtonPressed;
  pauseForInactiveShield = self->_pauseForInactiveShield;
  incomingCallDeclined = self->_incomingCallDeclined;
  incomingCall = self->_incomingCall;
  os_unfair_lock_unlock(&self->_lock);
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136316418;
    v13 = "[CCDPauseStateSolver resolvePauseState]";
    v14 = 1024;
    v15 = sideButtonPressed;
    v16 = 1024;
    v17 = pauseButtonPressed;
    v18 = 1024;
    v19 = pauseForInactiveShield;
    v20 = 1024;
    v21 = incomingCallDeclined;
    v22 = 1024;
    v23 = incomingCall;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s _sideButtonPressed=%d, _pauseButtonPressed=%d, _pauseForInactiveShield=%d, _incomingCallDeclined=%d, _incomingCall=%d", &v12, 0x2Au);
  }

  if (!sideButtonPressed)
  {
    if (!incomingCallDeclined || pauseButtonPressed || pauseForInactiveShield)
    {
      v10 = pauseButtonPressed || pauseForInactiveShield;
      if (!pauseButtonPressed && !pauseForInactiveShield || pauseButtonPressed)
      {
        goto LABEL_11;
      }
    }

    else if (!incomingCall)
    {
      goto LABEL_10;
    }

LABEL_14:
    v10 = 1;
    return v10 & 1;
  }

  if (incomingCall)
  {
    goto LABEL_14;
  }

  v9 = +[CCDShieldUILifeCycleManager sharedInstance];
  [v9 bringShieldUIProcessToForegroundIfApplicable];

LABEL_10:
  v10 = 0;
LABEL_11:
  [(CCDPauseStateSolver *)self saveUserPauseState:v10 & 1];
  return v10 & 1;
}

@end