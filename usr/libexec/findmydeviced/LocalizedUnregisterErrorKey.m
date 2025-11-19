@interface LocalizedUnregisterErrorKey
- (LocalizedUnregisterErrorKey)initWithUnregisterError:(int64_t)a3 context:(unint64_t)a4 deviceClass:(int64_t)a5;
- (NSString)okButtonKey;
- (id)deviceTypeStringForDeviceClass:(int64_t)a3;
- (id)errorContextStringForDisableContext:(unint64_t)a3;
- (id)errorTypeString;
- (id)keyForType:(id)a3;
@end

@implementation LocalizedUnregisterErrorKey

- (LocalizedUnregisterErrorKey)initWithUnregisterError:(int64_t)a3 context:(unint64_t)a4 deviceClass:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = LocalizedUnregisterErrorKey;
  v8 = [(LocalizedUnregisterErrorKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(LocalizedUnregisterErrorKey *)v8 setResponseErrorType:a3];
    [(LocalizedUnregisterErrorKey *)v9 setContext:a4];
    [(LocalizedUnregisterErrorKey *)v9 setDeviceClass:a5];
  }

  return v9;
}

- (NSString)okButtonKey
{
  v3 = [(LocalizedUnregisterErrorKey *)self errorContextStringForDisableContext:[(LocalizedUnregisterErrorKey *)self context]];
  v4 = [(LocalizedUnregisterErrorKey *)self errorTypeString];
  v5 = [NSString stringWithFormat:@"%@_%@_%@", v3, v4, @"OK_BUTTON"];

  return v5;
}

- (id)keyForType:(id)a3
{
  v4 = a3;
  v5 = [(LocalizedUnregisterErrorKey *)self deviceTypeStringForDeviceClass:[(LocalizedUnregisterErrorKey *)self deviceClass]];
  v6 = [(LocalizedUnregisterErrorKey *)self errorContextStringForDisableContext:[(LocalizedUnregisterErrorKey *)self context]];
  v7 = [(LocalizedUnregisterErrorKey *)self errorTypeString];
  v8 = v7;
  if (v5)
  {
    [NSString stringWithFormat:@"%@_%@_%@_%@", v6, v7, v5, v4];
  }

  else
  {
    [NSString stringWithFormat:@"%@_%@_%@", v6, v7, v4, v11];
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

- (id)errorContextStringForDisableContext:(unint64_t)a3
{
  if (a3 - 1 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_1002CE058 + a3 - 1);
  }
}

- (id)deviceTypeStringForDeviceClass:(int64_t)a3
{
  if (a3 > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_1002CE090 + a3);
  }
}

@end