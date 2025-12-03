@interface HAPTLVFloatNumberValue
+ (id)parsedFromData:(id)data error:(id *)error;
- (id)_parseFromData:(const char *)data length:(unint64_t)length status:(int *)status;
- (id)_serialize;
- (id)description;
@end

@implementation HAPTLVFloatNumberValue

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPTLVFloatNumberValue);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPTLVNumberValueBase *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (id)_parseFromData:(const char *)data length:(unint64_t)length status:(int *)status
{
  if (length == 4)
  {
    LODWORD(v7) = *data;
    v8 = [NSNumber numberWithFloat:v7, v5];
    goto LABEL_3;
  }

  v8 = 0;
  if (!status)
  {
LABEL_3:

    return v8;
  }

  *status = -6705;

  return v8;
}

- (id)_serialize
{
  value = [(HAPTLVNumberValueBase *)self value];
  [value floatValue];
  v6 = v3;

  v4 = [NSData dataWithBytes:&v6 length:4];

  return v4;
}

- (id)description
{
  value = [(HAPTLVNumberValueBase *)self value];
  [value floatValue];
  v4 = [NSString stringWithFormat:@"<HAPTLVFloatNumberValue value=%f>", v3];

  return v4;
}

@end