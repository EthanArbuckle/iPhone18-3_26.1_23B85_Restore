@interface SDAutoUnlockRegistrationSession
- (id)description;
- (void)invalidate;
- (void)notifyDelegateWithError:(id)error;
@end

@implementation SDAutoUnlockRegistrationSession

- (void)notifyDelegateWithError:(id)error
{
  errorCopy = error;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registration session notifying delegate with error: %@", &v9, 0xCu);
  }

  delegate = [(SDAutoUnlockPairingSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SDAutoUnlockPairingSession *)self delegate];
    [delegate2 session:self didCompleteWithError:errorCopy];
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
  sessionID = [(SDAutoUnlockPairingSession *)self sessionID];
  v7 = [NSString stringWithFormat:@"<%@: %p deviceID=%@ sessionID=%@>", v4, self, deviceID, sessionID];

  return v7;
}

- (void)invalidate
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockRegistrationSession;
  [(SDAutoUnlockPairingSession *)&v7 invalidate];
  aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
  resetSession = [aksSession resetSession];

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (resetSession)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reset Session: %@", buf, 0xCu);
  }

  [(SDAutoUnlockPairingSession *)self setDelegate:0];
}

@end