@interface NEMurmurHash3
+ (unsigned)hash:(id)a3 seed:(unsigned int)a4;
+ (unsigned)hashWithString:(const char *)a3 seed:(unsigned int)a4;
@end

@implementation NEMurmurHash3

+ (unsigned)hashWithString:(const char *)a3 seed:(unsigned int)a4
{
  v7 = strlen(a3);

  return sub_100013EFC(a1, a3, v7, a4);
}

+ (unsigned)hash:(id)a3 seed:(unsigned int)a4
{
  v6 = a3;
  v7 = sub_100013EFC(a1, [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4), a4);

  return v7;
}

@end