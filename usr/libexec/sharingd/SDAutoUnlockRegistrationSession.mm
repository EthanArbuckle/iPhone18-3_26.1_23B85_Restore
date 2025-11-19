@interface SDAutoUnlockRegistrationSession
- (id)description;
- (void)invalidate;
- (void)notifyDelegateWithError:(id)a3;
@end

@implementation SDAutoUnlockRegistrationSession

- (void)notifyDelegateWithError:(id)a3
{
  v4 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registration session notifying delegate with error: %@", &v9, 0xCu);
  }

  v6 = [(SDAutoUnlockPairingSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SDAutoUnlockPairingSession *)self delegate];
    [v8 session:self didCompleteWithError:v4];
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(SDAutoUnlockPairingSession *)self deviceID];
  v6 = [(SDAutoUnlockPairingSession *)self sessionID];
  v7 = [NSString stringWithFormat:@"<%@: %p deviceID=%@ sessionID=%@>", v4, self, v5, v6];

  return v7;
}

- (void)invalidate
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockRegistrationSession;
  [(SDAutoUnlockPairingSession *)&v7 invalidate];
  v3 = [(SDAutoUnlockPairingSession *)self aksSession];
  v4 = [v3 resetSession];

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
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