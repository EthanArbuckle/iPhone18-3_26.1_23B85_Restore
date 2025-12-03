@interface HAPTLVSignedNumberValue
+ (id)parsedFromData:(id)data error:(id *)error;
- (id)_parseFromData:(const char *)data length:(unint64_t)length status:(int *)status;
- (id)_serialize;
- (id)description;
@end

@implementation HAPTLVSignedNumberValue

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPTLVSignedNumberValue);
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
  v5 = sub_100021484(data, length, status);

  return [NSNumber numberWithLongLong:v5];
}

- (id)_serialize
{
  value = [(HAPTLVNumberValueBase *)self value];
  v3 = sub_10002155C([value longLongValue]);

  return v3;
}

- (id)description
{
  value = [(HAPTLVNumberValueBase *)self value];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<HAPTLVSignedNumberValue value=%lld>", [value longLongValue]);

  return v3;
}

@end