@interface HAPTLVFloatNumberValue
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (id)_parseFromData:(const char *)a3 length:(unint64_t)a4 status:(int *)a5;
- (id)_serialize;
- (id)description;
@end

@implementation HAPTLVFloatNumberValue

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPTLVFloatNumberValue);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPTLVNumberValueBase *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (id)_parseFromData:(const char *)a3 length:(unint64_t)a4 status:(int *)a5
{
  if (a4 == 4)
  {
    LODWORD(v7) = *a3;
    v8 = [NSNumber numberWithFloat:v7, v5];
    goto LABEL_3;
  }

  v8 = 0;
  if (!a5)
  {
LABEL_3:

    return v8;
  }

  *a5 = -6705;

  return v8;
}

- (id)_serialize
{
  v2 = [(HAPTLVNumberValueBase *)self value];
  [v2 floatValue];
  v6 = v3;

  v4 = [NSData dataWithBytes:&v6 length:4];

  return v4;
}

- (id)description
{
  v2 = [(HAPTLVNumberValueBase *)self value];
  [v2 floatValue];
  v4 = [NSString stringWithFormat:@"<HAPTLVFloatNumberValue value=%f>", v3];

  return v4;
}

@end