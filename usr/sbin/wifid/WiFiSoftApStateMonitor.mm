@interface WiFiSoftApStateMonitor
+ (id)sharedInstance;
- (BOOL)initState;
- (BOOL)isMisRecoveryAllowed;
- (WiFiSoftApStateMonitor)init;
- (id)stateDictionary;
- (void)initState:(id)state;
- (void)persistState;
- (void)resetState;
- (void)setMisEnabled:(BOOL)enabled;
- (void)setMisNanPublisherServiceName:(id)name;
@end

@implementation WiFiSoftApStateMonitor

+ (id)sharedInstance
{
  if (os_variant_is_recovery() & 1) != 0 || (os_variant_is_darwinos())
  {
    v2 = 0;
  }

  else
  {
    if (qword_100298448 != -1)
    {
      sub_100138068();
    }

    v2 = qword_100298440;
  }

  return v2;
}

- (WiFiSoftApStateMonitor)init
{
  v6.receiver = self;
  v6.super_class = WiFiSoftApStateMonitor;
  v2 = [(WiFiSoftApStateMonitor *)&v6 init];
  v2->_isStateValid = 0;
  misEnabledAt = v2->_misEnabledAt;
  v2->_misEnabledAt = 0;

  if (![(WiFiSoftApStateMonitor *)v2 initState])
  {

    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Initialization failed", "-[WiFiSoftApStateMonitor init]"}];
    }

    objc_autoreleasePoolPop(v4);
    return 0;
  }

  return v2;
}

- (void)initState:(id)state
{
  stateCopy = state;
  keyEnumerator = [stateCopy keyEnumerator];
  v5 = 0;
  nextObject = 0;
LABEL_2:
  v7 = v5;
  while (1)
  {
    v8 = nextObject;
    nextObject = [keyEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    if (objc_opt_respondsToSelector())
    {
      stringValue = [nextObject stringValue];
      v5 = [stateCopy objectForKey:stringValue];

      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([stringValue isEqualToString:@"misEnabledAt"])
          {
            p_misEnabledAt = &self->_misEnabledAt;
            goto LABEL_15;
          }

          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([stringValue isEqualToString:@"misNanPublisherServiceName"])
          {
            p_misEnabledAt = &self->_misNanServiceName;
LABEL_15:
            objc_storeStrong(p_misEnabledAt, v5);
          }

LABEL_16:

          goto LABEL_2;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([stringValue isEqualToString:@"isStateValid"])
          {
            self->_isStateValid = [v5 BOOLValue];
          }

          else if ([stringValue isEqualToString:@"misEnabled"])
          {
            self->_misEnabled = [v5 BOOLValue];
          }

          else if ([stringValue isEqualToString:@"misIsHidden"])
          {
            self->_misIsHidden = [v5 BOOLValue];
          }

          else if ([stringValue isEqualToString:@"misNanPublisherActive"])
          {
            self->_misNanPublisherActive = [v5 BOOLValue];
          }

          else
          {
            unsignedLongValue = [v5 unsignedLongValue];
            if ([stringValue isEqualToString:@"misChannel"])
            {
              self->_misChannel = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"misBandWidth"])
            {
              self->_misBandWidth = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"userPreferredBand"])
            {
              self->_userPreferredBand = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"misRecoveryAttempts"])
            {
              self->_recoveryAttempts = unsignedLongValue;
            }
          }

          goto LABEL_16;
        }

        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: unexpected value for %@", "-[WiFiSoftApStateMonitor initState:]", stringValue}];
        }
      }

      else
      {
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: value is null for %@", "-[WiFiSoftApStateMonitor initState:]", stringValue}];
        }
      }

      objc_autoreleasePoolPop(v11);
      goto LABEL_16;
    }
  }

  v13 = objc_autoreleasePoolPush();
  v14 = off_100298C40;
  if (off_100298C40)
  {
    v15 = [(WiFiSoftApStateMonitor *)self description];
    [v14 WFLog:3 message:{"%s: %@", "-[WiFiSoftApStateMonitor initState:]", v15}];
  }

  objc_autoreleasePoolPop(v13);
}

- (BOOL)initState
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 dictionaryForKey:@"WiFiMISState"];
    if (v5)
    {
      [(WiFiSoftApStateMonitor *)self initState:v5];
    }
  }

  return 1;
}

- (void)resetState
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Resetting SoftAP state", "-[WiFiSoftApStateMonitor resetState]"}];
  }

  objc_autoreleasePoolPop(v3);
  self->_isStateValid = 0;
  misEnabledAt = self->_misEnabledAt;
  self->_misEnabledAt = 0;

  self->_misIsHidden = 0;
  *&self->_misChannel = xmmword_1001CDFC0;
  self->_recoveryAttempts = 0;

  [(WiFiSoftApStateMonitor *)self persistState];
}

- (id)stateDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if (self->_isStateValid)
  {
    v4 = [NSNumber numberWithBool:self->_misEnabled];
    [v3 setObject:v4 forKeyedSubscript:@"misEnabled"];

    v5 = [NSNumber numberWithBool:self->_misIsHidden];
    [v3 setObject:v5 forKeyedSubscript:@"misIsHidden"];

    v6 = [NSNumber numberWithUnsignedInteger:self->_misChannel];
    [v3 setObject:v6 forKeyedSubscript:@"misChannel"];

    v7 = [NSNumber numberWithUnsignedInteger:self->_misBandWidth];
    [v3 setObject:v7 forKeyedSubscript:@"misBandWidth"];

    v8 = [NSNumber numberWithUnsignedInteger:self->_userPreferredBand];
    [v3 setObject:v8 forKeyedSubscript:@"userPreferredBand"];

    v9 = [NSNumber numberWithUnsignedInteger:self->_recoveryAttempts];
    [v3 setObject:v9 forKeyedSubscript:@"misRecoveryAttempts"];

    [v3 setObject:self->_misEnabledAt forKeyedSubscript:@"misEnabledAt"];
    v10 = [NSNumber numberWithBool:self->_misNanPublisherActive];
    [v3 setObject:v10 forKeyedSubscript:@"misNanPublisherActive"];

    [v3 setObject:self->_misNanServiceName forKeyedSubscript:@"misNanPublisherServiceName"];
    isStateValid = self->_isStateValid;
  }

  else
  {
    isStateValid = 0;
  }

  v12 = [NSNumber numberWithBool:isStateValid];
  [v3 setObject:v12 forKeyedSubscript:@"isStateValid"];

  return v3;
}

- (void)persistState
{
  stateDictionary = [(WiFiSoftApStateMonitor *)self stateDictionary];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setObject:stateDictionary forKey:@"WiFiMISState"];
}

- (BOOL)isMisRecoveryAllowed
{
  if (![(WiFiSoftApStateMonitor *)self isMisEnabled])
  {
    return 0;
  }

  recoveryAttempts = self->_recoveryAttempts;
  v4 = recoveryAttempts < 5;
  if (recoveryAttempts >= 5)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Max recovery attempts %lu reached, not allowing recovery", "-[WiFiSoftApStateMonitor isMisRecoveryAllowed]", self->_recoveryAttempts}];
    }

    objc_autoreleasePoolPop(v5);
  }

  v6 = +[NSDate date];
  [v6 timeIntervalSinceDate:self->_misEnabledAt];
  v8 = v7;

  if (v8 >= 10800.0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = off_100298C40;
    if (off_100298C40)
    {
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:self->_misEnabledAt];
      [v10 WFLog:3 message:{"%s MIS was enabled beyond the time window allowed for recovery: %f", "-[WiFiSoftApStateMonitor isMisRecoveryAllowed]", v12}];
    }

    objc_autoreleasePoolPop(v9);
    return 0;
  }

  return v4;
}

- (void)setMisEnabled:(BOOL)enabled
{
  if (enabled)
  {
    self->_misEnabled = 1;
    v4 = +[NSDate now];
    misEnabledAt = self->_misEnabledAt;
    self->_misEnabledAt = v4;

    self->_isStateValid = 1;
  }

  else
  {
    [(WiFiSoftApStateMonitor *)self resetState];
  }

  [(WiFiSoftApStateMonitor *)self persistState];
}

- (void)setMisNanPublisherServiceName:(id)name
{
  objc_storeStrong(&self->_misNanServiceName, name);

  [(WiFiSoftApStateMonitor *)self persistState];
}

@end