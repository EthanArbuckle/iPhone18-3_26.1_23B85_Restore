@interface SOSIntervalEvent
- (BOOL)checkDate;
- (SOSIntervalEvent)initWithDefaults:(id)a3 dateDescription:(id)a4 earliest:(double)a5 latest:(double)a6;
- (void)followup;
- (void)schedule;
@end

@implementation SOSIntervalEvent

- (SOSIntervalEvent)initWithDefaults:(id)a3 dateDescription:(id)a4 earliest:(double)a5 latest:(double)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = SOSIntervalEvent;
  v13 = [(SOSIntervalEvent *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_defaults, a3);
    if (!v14->_defaults)
    {
      v15 = objc_alloc_init(NSUserDefaults);
      defaults = v14->_defaults;
      v14->_defaults = v15;
    }

    objc_storeStrong(&v14->_dateDescription, a4);
    v14->_earliestDate = a5;
    v14->_latestDate = a6;
    [(SOSIntervalEvent *)v14 schedule];
  }

  return v14;
}

- (void)schedule
{
  v3 = [(SOSIntervalEvent *)self getDate];
  if (!v3)
  {
    [(SOSIntervalEvent *)self followup];
    v3 = 0;
  }
}

- (void)followup
{
  earliestDate = self->_earliestDate;
  latestDate = self->_latestDate;
  v5 = SOSCreateRandomDateBetweenNowPlus();
  [(NSUserDefaults *)self->_defaults setValue:v5 forKey:self->_dateDescription];
}

- (BOOL)checkDate
{
  v2 = [(SOSIntervalEvent *)self getDate];
  v3 = v2;
  v5 = 0;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    if (v4 <= 0.0)
    {
      v5 = 1;
    }
  }

  return v5;
}

@end