@interface PersonIDSaltGenerator
+ (id)randomSalt;
@end

@implementation PersonIDSaltGenerator

+ (id)randomSalt
{
  v2 = [NSData rem_dataWithRandomBytesWithLength:16];

  return v2;
}

@end