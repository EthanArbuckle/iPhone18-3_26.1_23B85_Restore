@interface NSData
+ (id)CAF_encodeCarDataFrom:(id)from error:(id *)error;
- (id)CAF_decodeCarData:(id *)data;
@end

@implementation NSData

+ (id)CAF_encodeCarDataFrom:(id)from error:(id *)error
{
  if (from)
  {
    Data = OPACKEncoderCreateData();
  }

  else
  {
    Data = 0;
  }

  return Data;
}

- (id)CAF_decodeCarData:(id *)data
{
  v3 = OPACKDecodeData();

  return v3;
}

@end