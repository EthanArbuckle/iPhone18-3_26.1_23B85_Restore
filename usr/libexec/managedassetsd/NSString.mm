@interface NSString
- (BOOL)isValidAssetHandle:(BOOL *)handle;
- (BOOL)isValidMetaDataString;
@end

@implementation NSString

- (BOOL)isValidAssetHandle:(BOOL *)handle
{
  if ([(NSString *)self length]== 36)
  {
    +[NSUUID UUID];
    v5 = [objc_claimAutoreleasedReturnValue() initWithUUIDString:self];
    v6 = v5;
  }

  else
  {
    if ([(NSString *)self length]!= 37 || [(NSString *)self characterAtIndex:0]!= 95)
    {
      return 0;
    }

    if (handle)
    {
      *handle = 1;
    }

    v8 = +[NSUUID UUID];
    v5 = [(NSString *)self substringFromIndex:1];
    v6 = [v8 initWithUUIDString:v5];
  }

  v7 = v6 != 0;

  return v7;
}

- (BOOL)isValidMetaDataString
{
  v3 = [(NSString *)self length];
  if (v3)
  {
    LOBYTE(v3) = [(NSString *)self length]< 0x100;
  }

  return v3;
}

@end