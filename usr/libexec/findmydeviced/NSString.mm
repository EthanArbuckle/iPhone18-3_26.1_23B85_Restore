@interface NSString
+ (NSString)stringWithFourCC:(unsigned int)c;
+ (id)sanitizedHexString:(id)string;
- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error;
- (NSString)fmd_localizedString;
- (NSString)initWithFMDCoder:(id)coder error:(id *)error;
- (id)fmd_localizedStringInTable:(id)table;
@end

@implementation NSString

+ (NSString)stringWithFourCC:(unsigned int)c
{
  v6 = bswap32(c) >> 16;
  v5[1] = BYTE2(c);
  v5[0] = HIBYTE(c);
  v7 = 0;
  v3 = [NSString stringWithCString:v5 encoding:4];

  return v3;
}

+ (id)sanitizedHexString:(id)string
{
  stringCopy = string;
  v4 = [NSCharacterSet characterSetWithCharactersInString:@"01234567890ABCDEFabcdef"];
  invertedSet = [v4 invertedSet];

  v6 = [stringCopy componentsSeparatedByCharactersInSet:invertedSet];

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

- (id)fmd_localizedStringInTable:(id)table
{
  tableCopy = table;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedStringForKey:self value:&stru_1002DCE08 table:tableCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v6 = +[NSString objectType];
  [coderCopy encodeString:self forKey:v6];

  return 1;
}

- (NSString)initWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v7 = +[NSString objectType];
  v8 = [coderCopy decodeStringForKey:v7];

  if (v8)
  {
    self = [(NSString *)self initWithString:v8];
    error = self;
  }

  else if (error)
  {
    v11 = NSLocalizedFailureReasonErrorKey;
    v12 = @"Key FM.String not found.";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *error = [NSError errorWithDomain:@"FMStringErrorDomain" code:0 userInfo:v9];

    error = 0;
  }

  return error;
}

@end