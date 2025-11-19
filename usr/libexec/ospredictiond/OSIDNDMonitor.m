@interface OSIDNDMonitor
- (BOOL)isDNDModeConsidered:(id)a3;
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

- (BOOL)isDNDModeConsidered:(id)a3
{
  v3 = [a3 activeModeConfiguration];
  if ([v3 dimsLockScreen] == 2)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 mode];
    if ([v5 semanticType] == 1)
    {
      v4 = 1;
    }

    else
    {
      v6 = [v3 mode];
      v4 = [v6 semanticType] == 0;
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
  v6 = 0;
  if (!v10)
  {
    v7 = [v4 userVisibleTransitionDate];
    if ([v5 isActive] && -[OSIDNDMonitor isDNDModeConsidered:](self, "isDNDModeConsidered:", v5) && (objc_msgSend(v5, "userVisibleTransitionLifetimeType") == 4 || objc_msgSend(v5, "userVisibleTransitionLifetimeType") == 2 || !objc_msgSend(v5, "userVisibleTransitionLifetimeType")) && (objc_msgSend(v7, "timeIntervalSinceNow"), v8 < 36000.0))
    {
      v6 = [v5 userVisibleTransitionDate];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end