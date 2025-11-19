@interface NSFileHandle
- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4;
@end

@implementation NSFileHandle

- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4
{
  v5 = [NSData dataWithBytes:a3 length:a4];
  LOBYTE(self) = [(NSFileHandle *)self uarpWriteData:v5 error:0];

  return self;
}

@end