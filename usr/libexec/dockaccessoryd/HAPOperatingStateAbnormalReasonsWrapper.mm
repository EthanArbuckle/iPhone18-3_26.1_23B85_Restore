@interface HAPOperatingStateAbnormalReasonsWrapper
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPOperatingStateAbnormalReasonsWrapper)init;
- (HAPOperatingStateAbnormalReasonsWrapper)initWithValue:(unint64_t)value;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPOperatingStateAbnormalReasonsWrapper

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPOperatingStateAbnormalReasonsWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPOperatingStateAbnormalReasonsWrapper *)v6 parseFromData:dataCopy error:&v11];
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

- (HAPOperatingStateAbnormalReasonsWrapper)init
{
  v3.receiver = self;
  v3.super_class = HAPOperatingStateAbnormalReasonsWrapper;
  result = [(HAPOperatingStateAbnormalReasonsWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

- (HAPOperatingStateAbnormalReasonsWrapper)initWithValue:(unint64_t)value
{
  v5.receiver = self;
  v5.super_class = HAPOperatingStateAbnormalReasonsWrapper;
  result = [(HAPOperatingStateAbnormalReasonsWrapper *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (error)
  {
    *error = 0;
    if (![dataCopy length])
    {
      v8 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];
      v9 = 0;
LABEL_8:
      *error = v8;
      goto LABEL_11;
    }
  }

  else if (![dataCopy length])
  {
    v9 = 0;
    goto LABEL_11;
  }

  v12 = 0;
  v10 = sub_100021790([v7 bytes], objc_msgSend(v7, "length"), &v12);
  v9 = v12 == 0;
  if (!v12)
  {
    [(HAPOperatingStateAbnormalReasonsWrapper *)self setValue:v10];
    goto LABEL_11;
  }

  if (error)
  {
    v8 = sub_100041618(v12);
    goto LABEL_8;
  }

LABEL_11:

  return v9;
}

- (id)serializeWithError:(id *)error
{
  value = [(HAPOperatingStateAbnormalReasonsWrapper *)self value];

  return sub_100021858(value);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPOperatingStateAbnormalReasonsWrapper allocWithZone:zone];
  value = [(HAPOperatingStateAbnormalReasonsWrapper *)self value];

  return [(HAPOperatingStateAbnormalReasonsWrapper *)v4 initWithValue:value];
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
      value = [(HAPOperatingStateAbnormalReasonsWrapper *)self value];
      value2 = [(HAPOperatingStateAbnormalReasonsWrapper *)v5 value];

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
  v2 = HAPOperatingStateAbnormalReasonsAsString([(HAPOperatingStateAbnormalReasonsWrapper *)self value]);
  v3 = [NSString stringWithFormat:@"<HAPOperatingStateAbnormalReasonsWrapper value=%@>", v2];

  return v3;
}

@end