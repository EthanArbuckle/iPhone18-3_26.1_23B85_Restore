@interface NSString
+ (id)parsedFromData:(id)data error:(id *)error;
- (id)serializeWithError:(id *)error;
@end

@implementation NSString

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [NSString alloc];
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];

  v9 = [v6 initWithBytes:bytes length:v8 encoding:4];
  v10 = v9;
  if (error && !v9)
  {
    *error = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"TLV data is not UTF8 encoded" suggestion:0 underlyingError:0];
  }

  return v10;
}

- (id)serializeWithError:(id *)error
{
  v4 = [(NSString *)self dataUsingEncoding:4 allowLossyConversion:0];
  v5 = v4;
  if (error && !v4)
  {
    *error = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"TLV data cannot be UTF8 encoded" suggestion:0 underlyingError:0];
  }

  return v5;
}

@end