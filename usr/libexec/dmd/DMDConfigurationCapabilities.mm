@interface DMDConfigurationCapabilities
+ (id)supportedActivationTypes;
+ (id)supportedAssetTypes;
+ (id)supportedCommandTypes;
+ (id)supportedConfigurationTypes;
+ (id)supportedDeclarationTypes;
+ (id)supportedEventTypes;
+ (id)supportedMessageTypes;
+ (id)supportedPredicateTypes;
@end

@implementation DMDConfigurationCapabilities

+ (id)supportedCommandTypes
{
  if (qword_1000FEFF8 != -1)
  {
    sub_10007E7C0();
  }

  v3 = qword_1000FEFF0;

  return v3;
}

+ (id)supportedDeclarationTypes
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025C94;
  block[3] = &unk_1000CE018;
  block[4] = a1;
  if (qword_1000FF008 != -1)
  {
    dispatch_once(&qword_1000FF008, block);
  }

  v2 = qword_1000FF000;

  return v2;
}

+ (id)supportedAssetTypes
{
  if (qword_1000FF018 != -1)
  {
    sub_10007E7D4();
  }

  v3 = qword_1000FF010;

  return v3;
}

+ (id)supportedConfigurationTypes
{
  if (qword_1000FF028 != -1)
  {
    sub_10007E7E8();
  }

  v3 = qword_1000FF020;

  return v3;
}

+ (id)supportedEventTypes
{
  if (qword_1000FF038 != -1)
  {
    sub_10007E7FC();
  }

  v3 = qword_1000FF030;

  return v3;
}

+ (id)supportedActivationTypes
{
  if (qword_1000FF048 != -1)
  {
    sub_10007E810();
  }

  v3 = qword_1000FF040;

  return v3;
}

+ (id)supportedPredicateTypes
{
  if (qword_1000FF058 != -1)
  {
    sub_10007E824();
  }

  v3 = qword_1000FF050;

  return v3;
}

+ (id)supportedMessageTypes
{
  if (qword_1000FF068 != -1)
  {
    sub_10007E838();
  }

  v3 = qword_1000FF060;

  return v3;
}

@end