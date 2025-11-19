@interface NSData
- (id)sha256;
@end

@implementation NSData

- (id)sha256
{
  memset(v4, 0, sizeof(v4));
  v2 = CC_SHA256([(NSData *)self bytes:0], [(NSData *)self length], v4);
  if (v2)
  {
    v2 = [NSData dataWithBytes:v4 length:32];
  }

  return v2;
}

@end