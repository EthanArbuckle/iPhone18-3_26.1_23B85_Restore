@interface NSData
- (id)checksumData;
- (void)checksum:(unsigned __int8)checksum[32];
- (void)checksumDataToChecksum:(unsigned __int8)checksum[32];
@end

@implementation NSData

- (id)checksumData
{
  [(NSData *)self checksum:v4];
  v2 = [NSData dataWithBytes:v4 length:32];

  return v2;
}

- (void)checksum:(unsigned __int8)checksum[32]
{
  *checksum = 0u;
  *(checksum + 1) = 0u;
  bytes = [(NSData *)self bytes];
  v6 = [(NSData *)self length];

  CC_SHA256(bytes, v6, checksum);
}

- (void)checksumDataToChecksum:(unsigned __int8)checksum[32]
{
  *checksum = 0u;
  *(checksum + 1) = 0u;
  [NSData getBytes:"getBytes:length:" length:?];
}

@end