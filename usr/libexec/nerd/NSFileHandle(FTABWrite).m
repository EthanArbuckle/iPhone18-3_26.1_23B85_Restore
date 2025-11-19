@interface NSFileHandle(FTABWrite)
- (BOOL)writeBytes:()FTABWrite length:;
@end

@implementation NSFileHandle(FTABWrite)

- (BOOL)writeBytes:()FTABWrite length:
{
  v5 = [NSData dataWithBytes:a3 length:a4];
  LOBYTE(self) = [(NSFileHandle *)self ftabWriteData:v5 error:0];

  return self;
}

@end