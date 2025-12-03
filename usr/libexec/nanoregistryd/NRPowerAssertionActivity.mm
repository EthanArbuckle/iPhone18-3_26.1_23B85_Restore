@interface NRPowerAssertionActivity
+ (NRPowerAssertionActivity)activityWithName:(id)name;
+ (void)addActivityGroup:(id)group;
+ (void)renameAssertionWithSuffix:(id)suffix;
- (NRPowerAssertionActivity)initWithName:(id)name;
- (void)dealloc;
@end

@implementation NRPowerAssertionActivity

+ (void)addActivityGroup:(id)group
{
  groupCopy = group;
  v4 = +[NRPowerAssertion sharedInstance];
  [v4 addActivityGroup:groupCopy];
}

+ (void)renameAssertionWithSuffix:(id)suffix
{
  suffixCopy = suffix;
  v4 = +[NRPowerAssertion sharedInstance];
  [v4 renameAssertionWithSuffix:suffixCopy];
}

+ (NRPowerAssertionActivity)activityWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithName:nameCopy];

  return v5;
}

- (NRPowerAssertionActivity)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = NRPowerAssertionActivity;
  v5 = [(NRPowerAssertionActivity *)&v11 init];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = +[NRPowerAssertion sharedInstance];
  v7 = [v6 addActivityWithName:nameCopy];
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