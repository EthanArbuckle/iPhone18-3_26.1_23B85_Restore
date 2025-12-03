@interface GTFileTransferOptions
- (GTFileTransferOptions)init;
- (GTFileTransferOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTFileTransferOptions

- (GTFileTransferOptions)init
{
  v3.receiver = self;
  v3.super_class = GTFileTransferOptions;
  result = [(GTFileTransferOptions *)&v3 init];
  if (result)
  {
    *&result->_chunkSize = xmmword_1000320A0;
  }

  return result;
}

- (GTFileTransferOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GTFileTransferOptions;
  v5 = [(GTFileTransferOptions *)&v7 init];
  if (v5)
  {
    v5->_chunkSize = [coderCopy decodeInt64ForKey:@"chunkSize"];
    v5->_compressionAlgorithm = [coderCopy decodeIntegerForKey:@"compressionAlgorithm"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  chunkSize = self->_chunkSize;
  coderCopy = coder;
  [coderCopy encodeInt64:chunkSize forKey:@"chunkSize"];
  [coderCopy encodeInteger:self->_compressionAlgorithm forKey:@"compressionAlgorithm"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setChunkSize:self->_chunkSize];
  [v4 setCompressionAlgorithm:self->_compressionAlgorithm];
  return v4;
}

@end