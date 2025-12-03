@interface CARDNDAssertionTrap
- (BOOL)isActive;
- (CARAutomaticDNDStatus)preferences;
- (CARDNDAssertionTrap)initWithPreferences:(id)preferences;
- (CARDNDAssertionTrapDelegate)delegate;
- (NSString)activeAssertionsDebugString;
- (void)_mutateAssertionsCallingDelegate:(BOOL)delegate withBlock:(id)block;
- (void)releaseAllAssertions;
- (void)releaseAllTemporaryAssertions;
- (void)releaseAssertion:(int64_t)assertion;
- (void)takeAssertion:(int64_t)assertion;
@end

@implementation CARDNDAssertionTrap

- (CARDNDAssertionTrap)initWithPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = [(CARDNDAssertionTrap *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_preferences, preferencesCopy);
    v7 = +[NSUserDefaults standardUserDefaults];
    userDefaults = v6->_userDefaults;
    v6->_userDefaults = v7;

    userDefaults = [(CARDNDAssertionTrap *)v6 userDefaults];
    v6->_activeAssertions = [userDefaults integerForKey:@"CARDNDAssertionStateKey"];
  }

  return v6;
}

- (BOOL)isActive
{
  if ([(CARDNDAssertionTrap *)self hasAssertion:8])
  {
    preferences = [(CARDNDAssertionTrap *)self preferences];
    disableTimerTimestamp = [preferences disableTimerTimestamp];

    if (!disableTimerTimestamp || (+[NSDate date], v5 = objc_claimAutoreleasedReturnValue(), v6 = [CARAnalytics calendarUnitsOfType:64 fromDate:disableTimerTimestamp toDate:v5], v5, v6 >= 8))
    {
      self->_activeAssertions &= ~8uLL;
    }
  }

  return [(CARDNDAssertionTrap *)self activeAssertions]!= 0;
}

- (void)takeAssertion:(int64_t)assertion
{
  if (![(CARDNDAssertionTrap *)self hasAssertion:?])
  {
    v5 = CarDNDWDLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithInteger:assertion];
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Taking assertion trap for %@", buf, 0xCu);
    }

    if (assertion == 8)
    {
      v7 = +[NSDate date];
      preferences = [(CARDNDAssertionTrap *)self preferences];
      [preferences setDisableTimerTimestamp:v7];
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003D890;
  v9[3] = &unk_1000DE920;
  v9[4] = self;
  v9[5] = assertion;
  [(CARDNDAssertionTrap *)self _mutateAssertionsCallingDelegate:1 withBlock:v9];
}

- (void)releaseAssertion:(int64_t)assertion
{
  if ([(CARDNDAssertionTrap *)self hasAssertion:?])
  {
    v5 = CarDNDWDLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithInteger:assertion];
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Releasing assertion trap for %@", buf, 0xCu);
    }

    if (assertion == 8)
    {
      preferences = [(CARDNDAssertionTrap *)self preferences];
      [preferences setDisableTimerTimestamp:0];
    }
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003D9F4;
  v8[3] = &unk_1000DE920;
  v8[4] = self;
  v8[5] = assertion;
  [(CARDNDAssertionTrap *)self _mutateAssertionsCallingDelegate:1 withBlock:v8];
}

- (void)releaseAllAssertions
{
  v3 = CarDNDWDLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing all assertion traps.", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003DAE8;
  v5[3] = &unk_1000DD480;
  v5[4] = self;
  [(CARDNDAssertionTrap *)self _mutateAssertionsCallingDelegate:1 withBlock:v5];
  preferences = [(CARDNDAssertionTrap *)self preferences];
  [preferences setDisableTimerTimestamp:0];
}

- (void)releaseAllTemporaryAssertions
{
  v3 = CarDNDWDLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing all temporary assertions.", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003DBB8;
  v4[3] = &unk_1000DD480;
  v4[4] = self;
  [(CARDNDAssertionTrap *)self _mutateAssertionsCallingDelegate:0 withBlock:v4];
}

- (NSString)activeAssertionsDebugString
{
  if ([(CARDNDAssertionTrap *)self isActive])
  {
    v3 = objc_opt_new();
    if ([(CARDNDAssertionTrap *)self hasAssertion:4])
    {
      [v3 addObject:@"Airplane Mode"];
    }

    if ([(CARDNDAssertionTrap *)self hasAssertion:1])
    {
      [v3 addObject:@"CarPlay session"];
    }

    if ([(CARDNDAssertionTrap *)self hasAssertion:2])
    {
      [v3 addObject:@"User-disabled until end of drive"];
    }

    if ([(CARDNDAssertionTrap *)self hasAssertion:8])
    {
      [v3 addObject:@"8-minute hold"];
    }

    if ([(CARDNDAssertionTrap *)self hasAssertion:16])
    {
      [v3 addObject:@"System-disabled until end of drive"];
    }

    if ([(CARDNDAssertionTrap *)self hasAssertion:32])
    {
      [v3 addObject:@"Find My Device mode"];
    }

    v4 = [v3 componentsJoinedByString:{@", "}];
    v5 = [NSString stringWithFormat:@"Active assertions: %@", v4];
  }

  else
  {
    v5 = @"No active assertions.";
  }

  return v5;
}

- (void)_mutateAssertionsCallingDelegate:(BOOL)delegate withBlock:(id)block
{
  delegateCopy = delegate;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isActive = [(CARDNDAssertionTrap *)selfCopy isActive];
  blockCopy[2]();
  isActive2 = [(CARDNDAssertionTrap *)selfCopy isActive];
  userDefaults = [(CARDNDAssertionTrap *)selfCopy userDefaults];
  [userDefaults setInteger:-[CARDNDAssertionTrap activeAssertions](selfCopy forKey:{"activeAssertions"), @"CARDNDAssertionStateKey"}];

  if (delegateCopy && isActive2 | isActive)
  {
    delegate = [(CARDNDAssertionTrap *)selfCopy delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(CARDNDAssertionTrap *)selfCopy delegate];
      [delegate2 assertionTrap:selfCopy didBecomeActive:isActive2];
    }
  }

  objc_sync_exit(selfCopy);
}

- (CARAutomaticDNDStatus)preferences
{
  WeakRetained = objc_loadWeakRetained(&self->_preferences);

  return WeakRetained;
}

- (CARDNDAssertionTrapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end