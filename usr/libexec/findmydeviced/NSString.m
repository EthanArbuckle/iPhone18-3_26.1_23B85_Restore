@interface NSString
+ (NSString)stringWithFourCC:(unsigned int)a3;
+ (id)sanitizedHexString:(id)a3;
- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4;
- (NSString)fmd_localizedString;
- (NSString)initWithFMDCoder:(id)a3 error:(id *)a4;
- (id)fmd_localizedStringInTable:(id)a3;
@end

@implementation NSString

+ (NSString)stringWithFourCC:(unsigned int)a3
{
  v6 = bswap32(a3) >> 16;
  v5[1] = BYTE2(a3);
  v5[0] = HIBYTE(a3);
  v7 = 0;
  v3 = [NSString stringWithCString:v5 encoding:4];

  return v3;
}

+ (id)sanitizedHexString:(id)a3
{
  v3 = a3;
  v4 = [NSCharacterSet characterSetWithCharactersInString:@"01234567890ABCDEFabcdef"];
  v5 = [v4 invertedSet];

  v6 = [v3 componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 componentsJoinedByString:&stru_1002DCE08];

  return v7;
}

- (NSString)fmd_localizedString
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedStringForKey:self value:&stru_1002DCE08 table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fmd_localizedStringInTable:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedStringForKey:self value:&stru_1002DCE08 table:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSString objectType];
  [v5 encodeString:self forKey:v6];

  return 1;
}

- (NSString)initWithFMDCoder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSString objectType];
  v8 = [v6 decodeStringForKey:v7];

  if (v8)
  {
    self = [(NSString *)self initWithString:v8];
    a4 = self;
  }

  else if (a4)
  {
    v11 = NSLocalizedFailureReasonErrorKey;
    v12 = @"Key FM.String not found.";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a4 = [NSError errorWithDomain:@"FMStringErrorDomain" code:0 userInfo:v9];

    a4 = 0;
  }

  return a4;
}

@end