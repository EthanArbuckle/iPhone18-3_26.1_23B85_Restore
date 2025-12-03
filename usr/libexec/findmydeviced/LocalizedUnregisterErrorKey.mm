@interface LocalizedUnregisterErrorKey
- (LocalizedUnregisterErrorKey)initWithUnregisterError:(int64_t)error context:(unint64_t)context deviceClass:(int64_t)class;
- (NSString)okButtonKey;
- (id)deviceTypeStringForDeviceClass:(int64_t)class;
- (id)errorContextStringForDisableContext:(unint64_t)context;
- (id)errorTypeString;
- (id)keyForType:(id)type;
@end

@implementation LocalizedUnregisterErrorKey

- (LocalizedUnregisterErrorKey)initWithUnregisterError:(int64_t)error context:(unint64_t)context deviceClass:(int64_t)class
{
  v11.receiver = self;
  v11.super_class = LocalizedUnregisterErrorKey;
  v8 = [(LocalizedUnregisterErrorKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(LocalizedUnregisterErrorKey *)v8 setResponseErrorType:error];
    [(LocalizedUnregisterErrorKey *)v9 setContext:context];
    [(LocalizedUnregisterErrorKey *)v9 setDeviceClass:class];
  }

  return v9;
}

- (NSString)okButtonKey
{
  v3 = [(LocalizedUnregisterErrorKey *)self errorContextStringForDisableContext:[(LocalizedUnregisterErrorKey *)self context]];
  errorTypeString = [(LocalizedUnregisterErrorKey *)self errorTypeString];
  v5 = [NSString stringWithFormat:@"%@_%@_%@", v3, errorTypeString, @"OK_BUTTON"];

  return v5;
}

- (id)keyForType:(id)type
{
  typeCopy = type;
  v5 = [(LocalizedUnregisterErrorKey *)self deviceTypeStringForDeviceClass:[(LocalizedUnregisterErrorKey *)self deviceClass]];
  v6 = [(LocalizedUnregisterErrorKey *)self errorContextStringForDisableContext:[(LocalizedUnregisterErrorKey *)self context]];
  errorTypeString = [(LocalizedUnregisterErrorKey *)self errorTypeString];
  v8 = errorTypeString;
  if (v5)
  {
    [NSString stringWithFormat:@"%@_%@_%@_%@", v6, errorTypeString, v5, typeCopy];
  }

  else
  {
    [NSString stringWithFormat:@"%@_%@_%@", v6, errorTypeString, typeCopy, v11];
  }
  v9 = ;

  return v9;
}

- (id)errorTypeString
{
  if (([(LocalizedUnregisterErrorKey *)self responseErrorType]& 0x200) != 0)
  {
    v2 = @"NETWORK_ERROR";
  }

  else
  {
    v2 = @"GENERIC_ERROR";
  }

  return v2;
}

- (id)errorContextStringForDisableContext:(unint64_t)context
{
  if (context - 1 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_1002CE058 + context - 1);
  }
}

- (id)deviceTypeStringForDeviceClass:(int64_t)class
{
  if (class > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_1002CE090 + class);
  }
}

@end