@interface SOSIntervalEvent
- (BOOL)checkDate;
- (SOSIntervalEvent)initWithDefaults:(id)defaults dateDescription:(id)description earliest:(double)earliest latest:(double)latest;
- (void)followup;
- (void)schedule;
@end

@implementation SOSIntervalEvent

- (SOSIntervalEvent)initWithDefaults:(id)defaults dateDescription:(id)description earliest:(double)earliest latest:(double)latest
{
  defaultsCopy = defaults;
  descriptionCopy = description;
  v18.receiver = self;
  v18.super_class = SOSIntervalEvent;
  v13 = [(SOSIntervalEvent *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_defaults, defaults);
    if (!v14->_defaults)
    {
      v15 = objc_alloc_init(NSUserDefaults);
      defaults = v14->_defaults;
      v14->_defaults = v15;
    }

    objc_storeStrong(&v14->_dateDescription, description);
    v14->_earliestDate = earliest;
    v14->_latestDate = latest;
    [(SOSIntervalEvent *)v14 schedule];
  }

  return v14;
}

- (void)schedule
{
  getDate = [(SOSIntervalEvent *)self getDate];
  if (!getDate)
  {
    [(SOSIntervalEvent *)self followup];
    getDate = 0;
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
  getDate = [(SOSIntervalEvent *)self getDate];
  v3 = getDate;
  v5 = 0;
  if (getDate)
  {
    [getDate timeIntervalSinceNow];
    if (v4 <= 0.0)
    {
      v5 = 1;
    }
  }

  return v5;
}

@end