@interface UARPHashMachine
- (BOOL)finalizeHash;
- (BOOL)updateHash:(id)a3;
- (UARPHashMachine)initWithAlgorithm:(int64_t)a3;
@end

@implementation UARPHashMachine

- (UARPHashMachine)initWithAlgorithm:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = UARPHashMachine;
  v4 = [(UARPHashMachine *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_hashAlgorithm = a3;
    switch(a3)
    {
      case 3:
        CC_SHA512_Init(&v4->_context512);
        break;
      case 2:
        CC_SHA384_Init(&v4->_context384);
        break;
      case 1:
        CC_SHA256_Init(&v4->_context256);
        break;
      default:
        v6 = 0;
        goto LABEL_9;
    }
  }

  v6 = v5;
LABEL_9:

  return v6;
}

- (BOOL)updateHash:(id)a3
{
  v4 = a3;
  v5 = v4;
  hashAlgorithm = self->_hashAlgorithm;
  switch(hashAlgorithm)
  {
    case 3:
      CC_SHA512_Update(&self->_context512, [v4 bytes], objc_msgSend(v4, "length"));
      break;
    case 2:
      CC_SHA384_Update(&self->_context384, [v4 bytes], objc_msgSend(v4, "length"));
      break;
    case 1:
      CC_SHA256_Update(&self->_context256, [v4 bytes], objc_msgSend(v4, "length"));
      break;
  }

  return 1;
}

- (BOOL)finalizeHash
{
  hashAlgorithm = self->_hashAlgorithm;
  switch(hashAlgorithm)
  {
    case 3:
      CC_SHA512_Final(md, &self->_context512);
      v4 = 64;
      goto LABEL_7;
    case 2:
      CC_SHA384_Final(md, &self->_context384);
      v4 = 48;
      goto LABEL_7;
    case 1:
      CC_SHA256_Final(md, &self->_context256);
      v4 = 32;
LABEL_7:
      v5 = [NSData dataWithBytes:md length:v4];
      hashValue = self->_hashValue;
      self->_hashValue = v5;

      break;
  }

  return 1;
}

@end