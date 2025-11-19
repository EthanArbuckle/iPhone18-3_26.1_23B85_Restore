@interface NMSOutgoingFile
- (NMSOutgoingFile)init;
@end

@implementation NMSOutgoingFile

- (NMSOutgoingFile)init
{
  v3.receiver = self;
  v3.super_class = NMSOutgoingFile;
  result = [(NMSOutgoingFile *)&v3 init];
  if (result)
  {
    result->_priority = 2;
    *&result->_timeout = IDSMaxMessageTimeout;
  }

  return result;
}

@end