@interface NSUUID
- (vector<unsigned)_niServerBytesVector;
@end

@implementation NSUUID

- (vector<unsigned)_niServerBytesVector
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  sub_100009838(&retstr->__begin_, 0x10uLL);
  return [(NSUUID *)self getUUIDBytes:retstr->__begin_];
}

@end