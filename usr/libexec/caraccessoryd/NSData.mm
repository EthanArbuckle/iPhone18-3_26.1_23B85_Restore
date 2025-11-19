@interface NSData
+ (id)CAF_encodeCarDataFrom:(id)a3 error:(id *)a4;
- (id)CAF_decodeCarData:(id *)a3;
@end

@implementation NSData

+ (id)CAF_encodeCarDataFrom:(id)a3 error:(id *)a4
{
  if (a3)
  {
    Data = OPACKEncoderCreateData();
  }

  else
  {
    Data = 0;
  }

  return Data;
}

- (id)CAF_decodeCarData:(id *)a3
{
  v3 = OPACKDecodeData();

  return v3;
}

@end