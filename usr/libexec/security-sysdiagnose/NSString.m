@interface NSString
- (void)writeToStdErr;
- (void)writeToStdOut;
@end

@implementation NSString

- (void)writeToStdErr
{
  v2 = [(NSString *)self UTF8String];
  v3 = __stderrp;

  fputs(v2, v3);
}

- (void)writeToStdOut
{
  v2 = [(NSString *)self UTF8String];
  v3 = __stdoutp;

  fputs(v2, v3);
}

@end