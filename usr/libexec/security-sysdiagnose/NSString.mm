@interface NSString
- (void)writeToStdErr;
- (void)writeToStdOut;
@end

@implementation NSString

- (void)writeToStdErr
{
  uTF8String = [(NSString *)self UTF8String];
  v3 = __stderrp;

  fputs(uTF8String, v3);
}

- (void)writeToStdOut
{
  uTF8String = [(NSString *)self UTF8String];
  v3 = __stdoutp;

  fputs(uTF8String, v3);
}

@end