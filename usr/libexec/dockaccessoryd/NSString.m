@interface NSString
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (id)serializeWithError:(id *)a3;
@end

@implementation NSString

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [NSString alloc];
  v7 = [v5 bytes];
  v8 = [v5 length];

  v9 = [v6 initWithBytes:v7 length:v8 encoding:4];
  v10 = v9;
  if (a4 && !v9)
  {
    *a4 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"TLV data is not UTF8 encoded" suggestion:0 underlyingError:0];
  }

  return v10;
}

- (id)serializeWithError:(id *)a3
{
  v4 = [(NSString *)self dataUsingEncoding:4 allowLossyConversion:0];
  v5 = v4;
  if (a3 && !v4)
  {
    *a3 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"TLV data cannot be UTF8 encoded" suggestion:0 underlyingError:0];
  }

  return v5;
}

@end