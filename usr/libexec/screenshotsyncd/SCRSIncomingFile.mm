@interface SCRSIncomingFile
- (SCRSIncomingFile)initWithIDSURL:(id)l;
- (void)dealloc;
- (void)unlinkURL;
@end

@implementation SCRSIncomingFile

- (SCRSIncomingFile)initWithIDSURL:(id)l
{
  lCopy = l;
  v23.receiver = self;
  v23.super_class = SCRSIncomingFile;
  v5 = [(SCRSIncomingFile *)&v23 init];
  if (v5)
  {
    v6 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v6;

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [lCopy fileSystemRepresentation]);
    pathExtension = [v8 pathExtension];
    stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];
    pathExtension2 = [stringByDeletingPathExtension pathExtension];

    if ([pathExtension2 length] && (objc_msgSend(pathExtension2, "isEqualToString:", pathExtension) & 1) == 0)
    {
      v12 = pathExtension2;

      pathExtension = v12;
    }

    v13 = +[NSUUID UUID];
    uUIDString = [v13 UUIDString];
    v15 = [pathExtension length];
    v16 = @".";
    if (!v15)
    {
      v16 = &stru_100004340;
    }

    v17 = [NSString stringWithFormat:@"incoming-%@%@%@", uUIDString, v16, pathExtension];

    v18 = NSTemporaryDirectory();
    v19 = [v18 stringByAppendingPathComponent:v17];

    link([v8 fileSystemRepresentation], objc_msgSend(v19, "fileSystemRepresentation"));
    v20 = [NSURL fileURLWithPath:v19 isDirectory:0];
    URL = v5->_URL;
    v5->_URL = v20;
  }

  return v5;
}

- (void)dealloc
{
  [(SCRSIncomingFile *)self unlinkURL];
  transaction = self->_transaction;
  self->_transaction = 0;

  v4.receiver = self;
  v4.super_class = SCRSIncomingFile;
  [(SCRSIncomingFile *)&v4 dealloc];
}

- (void)unlinkURL
{
  URL = self->_URL;
  if (URL)
  {
    unlink([(NSURL *)URL fileSystemRepresentation]);
    v4 = self->_URL;
    self->_URL = 0;
  }
}

@end