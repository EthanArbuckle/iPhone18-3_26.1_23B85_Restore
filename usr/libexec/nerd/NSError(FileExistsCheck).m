@interface NSError(FileExistsCheck)
- (BOOL)isFileExistsError;
@end

@implementation NSError(FileExistsCheck)

- (BOOL)isFileExistsError
{
  v3 = [(NSError *)self domain];
  if ([v3 isEqualToString:NSPOSIXErrorDomain])
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