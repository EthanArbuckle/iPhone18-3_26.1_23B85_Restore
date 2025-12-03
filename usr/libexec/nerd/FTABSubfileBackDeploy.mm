@interface FTABSubfileBackDeploy
- (FTABSubfileBackDeploy)initWithTag:(id)tag data:(id)data;
- (FTABSubfileBackDeploy)initWithTag:(id)tag dataPointer:(const void *)pointer dataLength:(unsigned int)length;
- (id)generateHashSHA256;
- (id)generateHashSHA384;
- (id)generateHashSHA512;
@end

@implementation FTABSubfileBackDeploy

- (FTABSubfileBackDeploy)initWithTag:(id)tag dataPointer:(const void *)pointer dataLength:(unsigned int)length
{
  tagCopy = tag;
  v13.receiver = self;
  v13.super_class = FTABSubfileBackDeploy;
  v9 = [(FTABSubfileBackDeploy *)&v13 init];
  if (v9)
  {
    v10 = [tagCopy copy];
    tag = v9->_tag;
    v9->_tag = v10;

    v9->_dataPointer = pointer;
    v9->_dataLength = length;
  }

  return v9;
}

- (FTABSubfileBackDeploy)initWithTag:(id)tag data:(id)data
{
  tagCopy = tag;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = FTABSubfileBackDeploy;
  v8 = [(FTABSubfileBackDeploy *)&v14 init];
  if (v8)
  {
    v9 = [tagCopy copy];
    tag = v8->_tag;
    v8->_tag = v9;

    v11 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v11;

    v8->_dataPointer = [(NSData *)v8->_data bytes];
    v8->_dataLength = [(NSData *)v8->_data length];
  }

  return v8;
}

- (id)generateHashSHA256
{
  memset(&v5, 0, sizeof(v5));
  CC_SHA256_Init(&v5);
  CC_SHA256_Update(&v5, self->_dataPointer, self->_dataLength);
  CC_SHA256_Final(md, &v5);
  v3 = [NSData dataWithBytes:md length:32];

  return v3;
}

- (id)generateHashSHA384
{
  memset(&v5, 0, sizeof(v5));
  CC_SHA384_Init(&v5);
  CC_SHA384_Update(&v5, self->_dataPointer, self->_dataLength);
  CC_SHA384_Final(md, &v5);
  v3 = [NSData dataWithBytes:md length:48];

  return v3;
}

- (id)generateHashSHA512
{
  memset(&v5, 0, sizeof(v5));
  CC_SHA512_Init(&v5);
  CC_SHA512_Update(&v5, self->_dataPointer, self->_dataLength);
  CC_SHA512_Final(md, &v5);
  v3 = [NSData dataWithBytes:md length:64];

  return v3;
}

@end