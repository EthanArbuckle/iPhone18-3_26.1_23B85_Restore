@interface NSFileHandle
- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length;
@end

@implementation NSFileHandle

- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length
{
  v5 = [NSData dataWithBytes:bytes length:length];
  LOBYTE(self) = [(NSFileHandle *)self uarpWriteData:v5 error:0];

  return self;
}

@end