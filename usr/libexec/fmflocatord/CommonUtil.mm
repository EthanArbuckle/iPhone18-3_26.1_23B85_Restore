@interface CommonUtil
+ (id)stringForFourCC:(unsigned int)c;
+ (id)stringForLocationType:(int)type;
+ (id)userInfoFrom:(id)from;
+ (void)handleAlertAction:(id)action;
@end

@implementation CommonUtil

+ (id)stringForFourCC:(unsigned int)c
{
  v6 = bswap32(c) >> 16;
  v5[1] = BYTE2(c);
  v5[0] = HIBYTE(c);
  v7 = 0;
  v3 = [NSString stringWithCString:v5 encoding:4];

  return v3;
}

+ (id)stringForLocationType:(int)type
{
  v4 = type - 1;
  if (type - 1) < 0xA && ((0x3EFu >> v4))
  {
    return *(&off_10005DBB8 + v4);
  }

  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100037D3C(type, v6);
  }

  return @"Unknown";
}

+ (void)handleAlertAction:(id)action
{
  if (action)
  {
    actionCopy = action;
    v8 = [actionCopy objectForKeyedSubscript:@"url"];
    v4 = [actionCopy objectForKeyedSubscript:@"sensitive"];

    bOOLValue = [v4 BOOLValue];
    v6 = +[LSApplicationWorkspace defaultWorkspace];
    v7 = v6;
    if (bOOLValue)
    {
      [v6 openSensitiveURL:v8 withOptions:0];
    }

    else
    {
      [v6 openURL:v8 configuration:0 completionHandler:0];
    }
  }
}

+ (id)userInfoFrom:(id)from
{
  v3 = xpc_dictionary_get_value(from, "UserInfo");
  v4 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end