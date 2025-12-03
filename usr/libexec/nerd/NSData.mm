@interface NSData
- (NSString)byteString;
@end

@implementation NSData

- (NSString)byteString
{
  v3 = +[NSMutableString string];
  bytes = [(NSData *)self bytes];
  if ([(NSData *)self length])
  {
    v5 = 0;
    do
    {
      [v3 appendFormat:@"%02x", bytes[v5++]];
    }

    while (v5 < [(NSData *)self length]);
  }

  v6 = [NSString stringWithString:v3];

  return v6;
}

@end