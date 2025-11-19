@interface SMCSensorExchangeHelper
+ (id)sharedInstance;
- (SMCSensorExchangeHelper)init;
- (void)updateCLTMChargingPolicy:(unint64_t)a3;
- (void)updateCLTMMobileChargingPolicy:(unint64_t)a3;
- (void)updateCLTMThermalPolicy:(unint64_t)a3;
- (void)updateInductiveChargingPowerPolicy:(unint64_t)a3;
- (void)updateSMCDebugKey:(id)a3 withState:(BOOL)a4;
@end

@implementation SMCSensorExchangeHelper

+ (id)sharedInstance
{
  if (qword_100036BC8 != -1)
  {
    sub_100018D04();
  }

  v3 = qword_100036BD0;

  return v3;
}

- (SMCSensorExchangeHelper)init
{
  v6.receiver = self;
  v6.super_class = SMCSensorExchangeHelper;
  v2 = [(SMCSensorExchangeHelper *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerexperienced", "smcsensorexchange");
    v4 = qword_100036BD8;
    qword_100036BD8 = v3;

    LODWORD(xmmword_100036CF0) = 260;
  }

  return v2;
}

- (void)updateCLTMChargingPolicy:(unint64_t)a3
{
  v4 = sub_100001600();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BED8;
  block[3] = &unk_10002C960;
  block[4] = a3;
  dispatch_async(v4, block);
}

- (void)updateCLTMMobileChargingPolicy:(unint64_t)a3
{
  v4 = sub_100001600();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C2AC;
  block[3] = &unk_10002C960;
  block[4] = a3;
  dispatch_async(v4, block);
}

- (void)updateSMCDebugKey:(id)a3 withState:(BOOL)a4
{
  v5 = a3;
  v6 = sub_100001600();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C4A0;
  v8[3] = &unk_10002C988;
  v9 = v5;
  v10 = a4;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)updateCLTMThermalPolicy:(unint64_t)a3
{
  v4 = sub_100001600();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C6D4;
  block[3] = &unk_10002C960;
  block[4] = a3;
  dispatch_async(v4, block);
}

- (void)updateInductiveChargingPowerPolicy:(unint64_t)a3
{
  v4 = sub_100001600();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C88C;
  block[3] = &unk_10002C960;
  block[4] = a3;
  dispatch_async(v4, block);
}

@end