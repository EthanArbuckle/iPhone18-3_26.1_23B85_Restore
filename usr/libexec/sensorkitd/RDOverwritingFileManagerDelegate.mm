@interface RDOverwritingFileManagerDelegate
- (BOOL)fileManager:(id)manager shouldCopyItemAtURL:(id)l toURL:(id)rL;
- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error copyingItemAtURL:(id)l toURL:(id)rL;
@end

@implementation RDOverwritingFileManagerDelegate

- (BOOL)fileManager:(id)manager shouldCopyItemAtURL:(id)l toURL:(id)rL
{
  v8 = 0;
  if ([manager fileExistsAtPath:objc_msgSend(rL isDirectory:{"path", manager, l), &v8}] && (v8 & 1) == 0)
  {
    [manager removeItemAtURL:rL error:0];
  }

  return 1;
}

- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error copyingItemAtURL:(id)l toURL:(id)rL
{
  v8 = 0;
  if ([manager fileExistsAtPath:objc_msgSend(rL isDirectory:{"path", manager, error, l), &v8}] && objc_msgSend(error, "code") == 516)
  {
    return v8 & 1;
  }

  else
  {
    return 0;
  }
}

@end