@interface KTDefaultTransparentDataDeps
+ (id)shared;
@end

@implementation KTDefaultTransparentDataDeps

+ (id)shared
{
  if (qword_10039C7F0 != -1)
  {
    sub_10025B000();
  }

  v3 = qword_10039C7E8;

  return v3;
}

@end