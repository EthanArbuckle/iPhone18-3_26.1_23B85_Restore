@interface NMSIncomingFile
- (NMSIncomingFile)initWithIDSURL:(id)l extensionOverride:(id)override;
- (id)description;
- (void)dealloc;
- (void)unlinkURL;
@end

@implementation NMSIncomingFile

- (NMSIncomingFile)initWithIDSURL:(id)l extensionOverride:(id)override
{
  lCopy = l;
  overrideCopy = override;
  v35.receiver = self;
  v35.super_class = NMSIncomingFile;
  v8 = [(NMSIncomingFile *)&v35 init];
  if (v8)
  {
    v9 = [[NPTOTransaction alloc] initWithDescription:@"com.apple.NanoPhotos.NanoMessagingService.NMSIncomingFile"];
    transaction = v8->_transaction;
    v8->_transaction = v9;

    v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [lCopy fileSystemRepresentation]);
    pathExtension = [v11 pathExtension];
    stringByDeletingPathExtension = [v11 stringByDeletingPathExtension];
    pathExtension2 = [stringByDeletingPathExtension pathExtension];

    if ([pathExtension2 length] && (objc_msgSend(pathExtension2, "isEqualToString:", pathExtension) & 1) == 0)
    {
      v15 = pathExtension2;

      pathExtension = v15;
    }

    if (overrideCopy)
    {
      v16 = overrideCopy;

      pathExtension = v16;
    }

    v17 = +[NSUUID UUID];
    uUIDString = [v17 UUIDString];
    v19 = [pathExtension length];
    v20 = @".";
    if (!v19)
    {
      v20 = &stru_10008C6E8;
    }

    v21 = [NSString stringWithFormat:@"incoming-%@%@%@", uUIDString, v20, pathExtension];

    v22 = NSTemporaryDirectory();
    v23 = [v22 stringByAppendingPathComponent:v21];

    v24 = sub_10000268C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v23;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Copying file %@ => %@", buf, 0x16u);
    }

    v25 = copyfile_state_alloc();
    if (copyfile([v11 fileSystemRepresentation], objc_msgSend(v23, "fileSystemRepresentation"), v25, 0xFu))
    {
      v34 = v21;
      v26 = lCopy;
      v27 = pathExtension2;
      v28 = overrideCopy;
      v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v30 = sub_10000268C();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v37 = v23;
        v38 = 2112;
        v39 = v11;
        v40 = 2112;
        v41 = v29;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to copy file %@ => %@ with error %@", buf, 0x20u);
      }

      overrideCopy = v28;
      pathExtension2 = v27;
      lCopy = v26;
      v21 = v34;
    }

    copyfile_state_free(v25);
    v31 = [NSURL fileURLWithPath:v23 isDirectory:0];
    URL = v8->_URL;
    v8->_URL = v31;
  }

  return v8;
}

- (void)dealloc
{
  [(NMSIncomingFile *)self unlinkURL];
  v3.receiver = self;
  v3.super_class = NMSIncomingFile;
  [(NMSIncomingFile *)&v3 dealloc];
}

- (void)unlinkURL
{
  if (self->_URL)
  {
    v3 = sub_10000268C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      URL = self->_URL;
      v8 = 138412290;
      v9 = URL;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unlinking %@", &v8, 0xCu);
    }

    if (unlink([(NSURL *)self->_URL fileSystemRepresentation]))
    {
      v5 = sub_10000268C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = self->_URL;
        v8 = 138412290;
        v9 = v7;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to unlink %@", &v8, 0xCu);
      }
    }

    v6 = self->_URL;
    self->_URL = 0;
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = NMSIncomingFile;
  v3 = [(NMSIncomingFile *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" url: %@", self->_URL];

  return v4;
}

@end