@interface HAPFirmwareUpdateStateWrapper
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPFirmwareUpdateStateWrapper)init;
- (HAPFirmwareUpdateStateWrapper)initWithValue:(int64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPFirmwareUpdateStateWrapper

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPFirmwareUpdateStateWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPFirmwareUpdateStateWrapper *)v6 parseFromData:v5 error:&v11];
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

- (HAPFirmwareUpdateStateWrapper)init
{
  v3.receiver = self;
  v3.super_class = HAPFirmwareUpdateStateWrapper;
  result = [(HAPFirmwareUpdateStateWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

- (HAPFirmwareUpdateStateWrapper)initWithValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HAPFirmwareUpdateStateWrapper;
  result = [(HAPFirmwareUpdateStateWrapper *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 length])
  {
    if (!a4)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v9 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];
    v8 = 0;
    goto LABEL_7;
  }

  v11 = 0;
  v7 = sub_100021790([v6 bytes], objc_msgSend(v6, "length"), &v11);
  v8 = v11 == 0;
  if (!v11)
  {
    [(HAPFirmwareUpdateStateWrapper *)self setValue:v7];
    goto LABEL_10;
  }

  if (a4)
  {
    v9 = sub_100041618(v11);
LABEL_7:
    *a4 = v9;
  }

LABEL_10:

  return v8;
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HAPFirmwareUpdateStateWrapper *)self value];

  return sub_100021858(v3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPFirmwareUpdateStateWrapper allocWithZone:a3];
  v5 = [(HAPFirmwareUpdateStateWrapper *)self value];

  return [(HAPFirmwareUpdateStateWrapper *)v4 initWithValue:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPFirmwareUpdateStateWrapper *)self value];
      v7 = [(HAPFirmwareUpdateStateWrapper *)v5 value];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v2 = HAPFirmwareUpdateStateAsString([(HAPFirmwareUpdateStateWrapper *)self value]);
  v3 = [NSString stringWithFormat:@"<HAPFirmwareUpdateStateWrapper value=%@>", v2];

  return v3;
}

@end