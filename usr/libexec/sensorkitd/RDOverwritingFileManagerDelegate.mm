@interface RDOverwritingFileManagerDelegate
- (BOOL)fileManager:(id)a3 shouldCopyItemAtURL:(id)a4 toURL:(id)a5;
- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 copyingItemAtURL:(id)a5 toURL:(id)a6;
@end

@implementation RDOverwritingFileManagerDelegate

- (BOOL)fileManager:(id)a3 shouldCopyItemAtURL:(id)a4 toURL:(id)a5
{
  v8 = 0;
  if ([a3 fileExistsAtPath:objc_msgSend(a5 isDirectory:{"path", a3, a4), &v8}] && (v8 & 1) == 0)
  {
    [a3 removeItemAtURL:a5 error:0];
  }

  return 1;
}

- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 copyingItemAtURL:(id)a5 toURL:(id)a6
{
  v8 = 0;
  if ([a3 fileExistsAtPath:objc_msgSend(a6 isDirectory:{"path", a3, a4, a5), &v8}] && objc_msgSend(a4, "code") == 516)
  {
    return v8 & 1;
  }

  else
  {
    return 0;
  }
}

@end