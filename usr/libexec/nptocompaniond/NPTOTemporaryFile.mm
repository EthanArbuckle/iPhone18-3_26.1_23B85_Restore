@interface NPTOTemporaryFile
- (NPTOTemporaryFile)initWithPathExtension:(id)extension;
- (void)dealloc;
@end

@implementation NPTOTemporaryFile

- (NPTOTemporaryFile)initWithPathExtension:(id)extension
{
  extensionCopy = extension;
  v14.receiver = self;
  v14.super_class = NPTOTemporaryFile;
  v5 = [(NPTOTemporaryFile *)&v14 init];
  if (v5)
  {
    v6 = NSTemporaryDirectory();
    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];
    v9 = [v6 stringByAppendingPathComponent:uUIDString];
    v10 = [v9 stringByAppendingPathExtension:extensionCopy];
    v11 = [NSURL fileURLWithPath:v10];
    URL = v5->_URL;
    v5->_URL = v11;
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtURL:self->_URL error:0];

  v4.receiver = self;
  v4.super_class = NPTOTemporaryFile;
  [(NPTOTemporaryFile *)&v4 dealloc];
}

@end