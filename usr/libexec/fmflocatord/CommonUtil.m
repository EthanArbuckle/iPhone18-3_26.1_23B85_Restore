@interface CommonUtil
+ (id)stringForFourCC:(unsigned int)a3;
+ (id)stringForLocationType:(int)a3;
+ (id)userInfoFrom:(id)a3;
+ (void)handleAlertAction:(id)a3;
@end

@implementation CommonUtil

+ (id)stringForFourCC:(unsigned int)a3
{
  v6 = bswap32(a3) >> 16;
  v5[1] = BYTE2(a3);
  v5[0] = HIBYTE(a3);
  v7 = 0;
  v3 = [NSString stringWithCString:v5 encoding:4];

  return v3;
}

+ (id)stringForLocationType:(int)a3
{
  v4 = a3 - 1;
  if (a3 - 1) < 0xA && ((0x3EFu >> v4))
  {
    return *(&off_10005DBB8 + v4);
  }

  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100037D3C(a3, v6);
  }

  return @"Unknown";
}

+ (void)handleAlertAction:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v8 = [v3 objectForKeyedSubscript:@"url"];
    v4 = [v3 objectForKeyedSubscript:@"sensitive"];

    v5 = [v4 BOOLValue];
    v6 = +[LSApplicationWorkspace defaultWorkspace];
    v7 = v6;
    if (v5)
    {
      [v6 openSensitiveURL:v8 withOptions:0];
    }

    else
    {
      [v6 openURL:v8 configuration:0 completionHandler:0];
    }
  }
}

+ (id)userInfoFrom:(id)a3
{
  v3 = xpc_dictionary_get_value(a3, "UserInfo");
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