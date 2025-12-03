@interface OSIDNDMonitor
- (BOOL)isDNDModeConsidered:(id)considered;
- (OSIDNDMonitor)init;
- (id)scheduledDNDEndDate;
@end

@implementation OSIDNDMonitor

- (OSIDNDMonitor)init
{
  v6.receiver = self;
  v6.super_class = OSIDNDMonitor;
  v2 = [(OSIDNDMonitor *)&v6 init];
  if (v2)
  {
    v3 = [DNDStateService serviceForClientIdentifier:@"ospredictiond"];
    service = v2->_service;
    v2->_service = v3;
  }

  return v2;
}

- (BOOL)isDNDModeConsidered:(id)considered
{
  activeModeConfiguration = [considered activeModeConfiguration];
  if ([activeModeConfiguration dimsLockScreen] == 2)
  {
    v4 = 1;
  }

  else
  {
    mode = [activeModeConfiguration mode];
    if ([mode semanticType] == 1)
    {
      v4 = 1;
    }

    else
    {
      mode2 = [activeModeConfiguration mode];
      v4 = [mode2 semanticType] == 0;
    }
  }

  return v4;
}

- (id)scheduledDNDEndDate
{
  service = self->_service;
  v10 = 0;
  v4 = [(DNDStateService *)service queryCurrentStateWithError:&v10];
  v5 = v4;
  userVisibleTransitionDate2 = 0;
  if (!v10)
  {
    userVisibleTransitionDate = [v4 userVisibleTransitionDate];
    if ([v5 isActive] && -[OSIDNDMonitor isDNDModeConsidered:](self, "isDNDModeConsidered:", v5) && (objc_msgSend(v5, "userVisibleTransitionLifetimeType") == 4 || objc_msgSend(v5, "userVisibleTransitionLifetimeType") == 2 || !objc_msgSend(v5, "userVisibleTransitionLifetimeType")) && (objc_msgSend(userVisibleTransitionDate, "timeIntervalSinceNow"), v8 < 36000.0))
    {
      userVisibleTransitionDate2 = [v5 userVisibleTransitionDate];
    }

    else
    {
      userVisibleTransitionDate2 = 0;
    }
  }

  return userVisibleTransitionDate2;
}

@end