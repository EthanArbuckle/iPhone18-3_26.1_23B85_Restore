@interface HAPNumberParser
- (HAPNumberParser)initWithTLVData:(id)data;
@end

@implementation HAPNumberParser

- (HAPNumberParser)initWithTLVData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = HAPNumberParser;
  v5 = [(HAPNumberParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [dataCopy getBytes:&v5->_decodedNumber length:8];
  }

  return v6;
}

@end