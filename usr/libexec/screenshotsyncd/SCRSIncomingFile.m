@interface SCRSIncomingFile
- (SCRSIncomingFile)initWithIDSURL:(id)a3;
- (void)dealloc;
- (void)unlinkURL;
@end

@implementation SCRSIncomingFile

- (SCRSIncomingFile)initWithIDSURL:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SCRSIncomingFile;
  v5 = [(SCRSIncomingFile *)&v23 init];
  if (v5)
  {
    v6 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v6;

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v4 fileSystemRepresentation]);
    v9 = [v8 pathExtension];
    v10 = [v8 stringByDeletingPathExtension];
    v11 = [v10 pathExtension];

    if ([v11 length] && (objc_msgSend(v11, "isEqualToString:", v9) & 1) == 0)
    {
      v12 = v11;

      v9 = v12;
    }

    v13 = +[NSUUID UUID];
    v14 = [v13 UUIDString];
    v15 = [v9 length];
    v16 = @".";
    if (!v15)
    {
      v16 = &stru_100004340;
    }

    v17 = [NSString stringWithFormat:@"incoming-%@%@%@", v14, v16, v9];

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