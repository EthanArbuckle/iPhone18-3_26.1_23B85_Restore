@interface HAPTLVNumberValueBase
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPTLVNumberValueBase)init;
- (HAPTLVNumberValueBase)initWithValue:(id)a3;
- (id)_parseFromData:(const char *)a3 length:(unint64_t)a4 status:(int *)a5;
- (id)_serialize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPTLVNumberValueBase

- (HAPTLVNumberValueBase)init
{
  v3.receiver = self;
  v3.super_class = HAPTLVNumberValueBase;
  return [(HAPTLVNumberValueBase *)&v3 init];
}

- (HAPTLVNumberValueBase)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HAPTLVNumberValueBase;
  v6 = [(HAPTLVNumberValueBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v10 = 0;
    v7 = -[HAPTLVNumberValueBase _parseFromData:length:status:](self, "_parseFromData:length:status:", [v6 bytes], objc_msgSend(v6, "length"), &v10);
    v8 = v10 == 0;
    if (v10)
    {
      if (a4)
      {
        *a4 = sub_100041618(v10);
      }
    }

    else
    {
      [(HAPTLVNumberValueBase *)self setValue:v7];
    }
  }

  else if (a4)
  {
    [NSError hmfErrorWithCode:3];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_parseFromData:(const char *)a3 length:(unint64_t)a4 status:(int *)a5
{
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"%@ is unavailable", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)serializeWithError:(id *)a3
{
  if (a3 && ([(HAPTLVNumberValueBase *)self value], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v7 = [NSError hmfErrorWithCode:8];
    v8 = v7;
    v6 = 0;
    *a3 = v7;
  }

  else
  {
    v6 = [(HAPTLVNumberValueBase *)self _serialize];
  }

  return v6;
}

- (id)_serialize
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPTLVNumberValueBase allocWithZone:a3];
  v5 = [(HAPTLVNumberValueBase *)self value];
  v6 = [(HAPTLVNumberValueBase *)v4 initWithValue:v5];

  return v6;
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
      v6 = [(HAPTLVNumberValueBase *)self value];
      v7 = [(HAPTLVNumberValueBase *)v5 value];

      v8 = [v6 isEqualToNumber:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end