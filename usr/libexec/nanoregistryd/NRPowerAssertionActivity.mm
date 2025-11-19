@interface NRPowerAssertionActivity
+ (NRPowerAssertionActivity)activityWithName:(id)a3;
+ (void)addActivityGroup:(id)a3;
+ (void)renameAssertionWithSuffix:(id)a3;
- (NRPowerAssertionActivity)initWithName:(id)a3;
- (void)dealloc;
@end

@implementation NRPowerAssertionActivity

+ (void)addActivityGroup:(id)a3
{
  v3 = a3;
  v4 = +[NRPowerAssertion sharedInstance];
  [v4 addActivityGroup:v3];
}

+ (void)renameAssertionWithSuffix:(id)a3
{
  v3 = a3;
  v4 = +[NRPowerAssertion sharedInstance];
  [v4 renameAssertionWithSuffix:v3];
}

+ (NRPowerAssertionActivity)activityWithName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithName:v4];

  return v5;
}

- (NRPowerAssertionActivity)initWithName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NRPowerAssertionActivity;
  v5 = [(NRPowerAssertionActivity *)&v11 init];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = +[NRPowerAssertion sharedInstance];
  v7 = [v6 addActivityWithName:v4];
  uuid = v5->_uuid;
  v5->_uuid = v7;

  if (!v5->_uuid)
  {
    v9 = 0;
  }

  else
  {
LABEL_3:
    v9 = v5;
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NRPowerAssertion sharedInstance];
  [v3 removeActivityWithUUID:self->_uuid];

  v4.receiver = self;
  v4.super_class = NRPowerAssertionActivity;
  [(NRPowerAssertionActivity *)&v4 dealloc];
}

@end