@interface HSConnection
+ (unsigned)portForServiceName:(id)a3;
@end

@implementation HSConnection

+ (unsigned)portForServiceName:(id)a3
{
  v8[0] = off_100014C38;
  v8[1] = off_100014C40;
  v9[0] = &off_100011F08;
  v9[1] = &off_100011F20;
  v8[2] = off_100014C48;
  v9[2] = &off_100011F38;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  v5 = [v4 objectForKey:v3];

  v6 = [v5 integerValue];
  return v6;
}

@end