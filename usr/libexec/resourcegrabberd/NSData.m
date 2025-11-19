@interface NSData
- (id)checksumData;
- (void)checksum:(unsigned __int8)a3[32];
- (void)checksumDataToChecksum:(unsigned __int8)a3[32];
@end

@implementation NSData

- (id)checksumData
{
  [(NSData *)self checksum:v4];
  v2 = [NSData dataWithBytes:v4 length:32];

  return v2;
}

- (void)checksum:(unsigned __int8)a3[32]
{
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v5 = [(NSData *)self bytes];
  v6 = [(NSData *)self length];

  CC_SHA256(v5, v6, a3);
}

- (void)checksumDataToChecksum:(unsigned __int8)a3[32]
{
  *a3 = 0u;
  *(a3 + 1) = 0u;
  [NSData getBytes:"getBytes:length:" length:?];
}

@end