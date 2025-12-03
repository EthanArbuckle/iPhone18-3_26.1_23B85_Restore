@interface NSURL
+ (id)ps_URLWithPath:(const void *)path;
+ (id)ps_URLWithStlString:(const void *)string;
@end

@implementation NSURL

+ (id)ps_URLWithStlString:(const void *)string
{
  v3 = [NSString ps_stringWithSTL:string];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

+ (id)ps_URLWithPath:(const void *)path
{
  v4 = [NSString ps_stringWithSTL:?];
  sub_100002F5C(path, 0, &v7);
  v5 = [NSURL fileURLWithPath:v4 isDirectory:v7 == 3];

  return v5;
}

@end