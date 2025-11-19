@interface OSIntelligenceDefines
+ (id)chargingUserDefaults;
+ (id)inactivityUserDefaults;
+ (id)lastLockUserDefaults;
@end

@implementation OSIntelligenceDefines

+ (id)chargingUserDefaults
{
  if (qword_1000B6AC8 != -1)
  {
    sub_10005E3D8();
  }

  v3 = qword_1000B6AC0;

  return v3;
}

+ (id)inactivityUserDefaults
{
  if (qword_1000B6AA8 != -1)
  {
    sub_10005E3B0();
  }

  v3 = qword_1000B6AA0;

  return v3;
}

+ (id)lastLockUserDefaults
{
  if (qword_1000B6AB8 != -1)
  {
    sub_10005E3C4();
  }

  v3 = qword_1000B6AB0;

  return v3;
}

@end