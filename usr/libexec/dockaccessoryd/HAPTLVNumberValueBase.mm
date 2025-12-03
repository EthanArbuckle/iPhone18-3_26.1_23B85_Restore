@interface HAPTLVNumberValueBase
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPTLVNumberValueBase)init;
- (HAPTLVNumberValueBase)initWithValue:(id)value;
- (id)_parseFromData:(const char *)data length:(unint64_t)length status:(int *)status;
- (id)_serialize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPTLVNumberValueBase

- (HAPTLVNumberValueBase)init
{
  v3.receiver = self;
  v3.super_class = HAPTLVNumberValueBase;
  return [(HAPTLVNumberValueBase *)&v3 init];
}

- (HAPTLVNumberValueBase)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = HAPTLVNumberValueBase;
  v6 = [(HAPTLVNumberValueBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v10 = 0;
    v7 = -[HAPTLVNumberValueBase _parseFromData:length:status:](self, "_parseFromData:length:status:", [dataCopy bytes], objc_msgSend(dataCopy, "length"), &v10);
    v8 = v10 == 0;
    if (v10)
    {
      if (error)
      {
        *error = sub_100041618(v10);
      }
    }

    else
    {
      [(HAPTLVNumberValueBase *)self setValue:v7];
    }
  }

  else if (error)
  {
    [NSError hmfErrorWithCode:3];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_parseFromData:(const char *)data length:(unint64_t)length status:(int *)status
{
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"%@ is unavailable", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)serializeWithError:(id *)error
{
  if (error && ([(HAPTLVNumberValueBase *)self value], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v7 = [NSError hmfErrorWithCode:8];
    v8 = v7;
    _serialize = 0;
    *error = v7;
  }

  else
  {
    _serialize = [(HAPTLVNumberValueBase *)self _serialize];
  }

  return _serialize;
}

- (id)_serialize
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPTLVNumberValueBase allocWithZone:zone];
  value = [(HAPTLVNumberValueBase *)self value];
  v6 = [(HAPTLVNumberValueBase *)v4 initWithValue:value];

  return v6;
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
      value = [(HAPTLVNumberValueBase *)self value];
      value2 = [(HAPTLVNumberValueBase *)v5 value];

      v8 = [value isEqualToNumber:value2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end