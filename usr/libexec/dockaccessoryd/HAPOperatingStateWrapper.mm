@interface HAPOperatingStateWrapper
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPOperatingStateWrapper)init;
- (HAPOperatingStateWrapper)initWithValue:(int64_t)value;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPOperatingStateWrapper

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPOperatingStateWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPOperatingStateWrapper *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPOperatingStateWrapper)init
{
  v3.receiver = self;
  v3.super_class = HAPOperatingStateWrapper;
  result = [(HAPOperatingStateWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

- (HAPOperatingStateWrapper)initWithValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = HAPOperatingStateWrapper;
  result = [(HAPOperatingStateWrapper *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  if (![dataCopy length])
  {
    if (!error)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v9 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];
    v8 = 0;
    goto LABEL_7;
  }

  v11 = 0;
  v7 = sub_100021790([dataCopy bytes], objc_msgSend(dataCopy, "length"), &v11);
  v8 = v11 == 0;
  if (!v11)
  {
    [(HAPOperatingStateWrapper *)self setValue:v7];
    goto LABEL_10;
  }

  if (error)
  {
    v9 = sub_100041618(v11);
LABEL_7:
    *error = v9;
  }

LABEL_10:

  return v8;
}

- (id)serializeWithError:(id *)error
{
  value = [(HAPOperatingStateWrapper *)self value];

  return sub_100021858(value);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPOperatingStateWrapper allocWithZone:zone];
  value = [(HAPOperatingStateWrapper *)self value];

  return [(HAPOperatingStateWrapper *)v4 initWithValue:value];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      value = [(HAPOperatingStateWrapper *)self value];
      value2 = [(HAPOperatingStateWrapper *)v5 value];

      v8 = value == value2;
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
  v2 = HAPOperatingStateAsString([(HAPOperatingStateWrapper *)self value]);
  v3 = [NSString stringWithFormat:@"<HAPOperatingStateWrapper value=%@>", v2];

  return v3;
}

@end