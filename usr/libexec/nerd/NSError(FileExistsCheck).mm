@interface NSError(FileExistsCheck)
- (BOOL)isFileExistsError;
@end

@implementation NSError(FileExistsCheck)

- (BOOL)isFileExistsError
{
  domain = [(NSError *)self domain];
  if ([domain isEqualToString:NSPOSIXErrorDomain])
  {
    v4 = [(NSError *)self code]== 17;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end