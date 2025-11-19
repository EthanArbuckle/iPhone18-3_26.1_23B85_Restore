@interface HAPTLVParser
+ (id)parserWithData:(id)a3;
- (HAPTLVParser)initWithData:(id)a3;
- (id)parseResponseForArray:(unint64_t)a3;
- (id)parseResponseForData:(unint64_t)a3;
- (id)parseResponseForNumber:(unint64_t)a3;
- (id)parseResponseForString:(unint64_t)a3;
- (id)parseResponseForUInt16:(unint64_t)a3;
- (id)parseResponseForUInt8:(unint64_t)a3;
- (id)parseResponseForUUID:(unint64_t)a3;
@end

@implementation HAPTLVParser

+ (id)parserWithData:(id)a3
{
  v3 = a3;
  v4 = [[HAPTLVParser alloc] initWithData:v3];

  return v4;
}

- (HAPTLVParser)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HAPTLVParser;
  v6 = [(HAPTLVParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tlvData, a3);
  }

  return v7;
}

- (id)parseResponseForData:(unint64_t)a3
{
  [(NSData *)self->_tlvData bytes];
  [(NSData *)self->_tlvData length];
  v5 = TLV8Get();
  if (v5)
  {
    v6 = [[NSError alloc] initWithDomain:NSOSStatusErrorDomain code:v5 userInfo:0];
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(0);
      *buf = 138543874;
      v12 = v8;
      v13 = 2048;
      v14 = a3;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse data for TLV: %tu %@", buf, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    v9 = [NSData dataWithBytes:0 length:0];
  }

  return v9;
}

- (id)parseResponseForNumber:(unint64_t)a3
{
  [(NSData *)self->_tlvData bytes];
  [(NSData *)self->_tlvData length];
  v4 = [NSNumber numberWithLongLong:TLV8GetUInt64()];

  return v4;
}

- (id)parseResponseForUInt8:(unint64_t)a3
{
  v3 = [(HAPTLVParser *)self parseResponseForData:a3];
  if ([v3 length] == 1)
  {
    v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v3 bytes]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)parseResponseForUInt16:(unint64_t)a3
{
  v3 = [(HAPTLVParser *)self parseResponseForData:a3];
  if ([v3 length] == 2)
  {
    v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", *[v3 bytes]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)parseResponseForString:(unint64_t)a3
{
  v3 = [(HAPTLVParser *)self parseResponseForData:a3];
  if (v3)
  {
    v4 = [[NSString alloc] initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)parseResponseForUUID:(unint64_t)a3
{
  v3 = [(HAPTLVParser *)self parseResponseForData:a3];
  if ([v3 length])
  {
    v4 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v3, "bytes")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)parseResponseForArray:(unint64_t)a3
{
  [(NSData *)self->_tlvData bytes];
  [(NSData *)self->_tlvData length];
  v5 = +[NSMutableArray array];
  for (i = TLV8Get(); !i; i = TLV8Get())
  {
    v7 = [NSData dataWithBytes:0 length:0];
    [v5 addObject:v7];
  }

  if (!v5)
  {
    v8 = [[NSError alloc] initWithDomain:NSOSStatusErrorDomain code:i userInfo:0];
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_10007FAFC(0);
      *buf = 138543874;
      v13 = v10;
      v14 = 2048;
      v15 = a3;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse array for TLV: %tu %@", buf, 0x20u);
    }
  }

  return v5;
}

@end