@interface NEMurmurHash3
+ (unsigned)hash:(id)hash seed:(unsigned int)seed;
+ (unsigned)hashWithString:(const char *)string seed:(unsigned int)seed;
@end

@implementation NEMurmurHash3

+ (unsigned)hashWithString:(const char *)string seed:(unsigned int)seed
{
  v7 = strlen(string);

  return sub_100013EFC(self, string, v7, seed);
}

+ (unsigned)hash:(id)hash seed:(unsigned int)seed
{
  hashCopy = hash;
  v7 = sub_100013EFC(self, [hashCopy UTF8String], objc_msgSend(hashCopy, "lengthOfBytesUsingEncoding:", 4), seed);

  return v7;
}

@end