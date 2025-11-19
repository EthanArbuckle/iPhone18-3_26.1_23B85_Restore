@interface FMDFSWatcher
+ (id)monitorURL:(id)a3 action:(id)a4;
- (BOOL)start;
- (FMDFSWatcher)init;
- (FMDFSWatcher)initWithURL:(id)a3 action:(id)a4;
- (void)cancel;
- (void)directoryChanged;
- (void)fileDiscovered;
@end

@implementation FMDFSWatcher

- (FMDFSWatcher)init
{
  [(FMDFSWatcher *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FMDFSWatcher)initWithURL:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = FMDFSWatcher;
  v8 = [(FMDFSWatcher *)&v19 init];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 standardizedURL];
    v11 = CFURLCopyPath(v10);
    v12 = [(__CFString *)v11 hasSuffix:@"/"];
    CFRelease(v11);
    v18.receiver = v9;
    v18.super_class = FMDFSWatcher;
    v13 = [(FMDFSWatcher *)&v18 init];
    v14 = v13;
    if (v12)
    {
      [(FMDFSWatcher *)v13 setDirectoryURL:v10];
      [(FMDFSWatcher *)v14 setTargetFilename:0];
    }

    else
    {
      v15 = [(__CFURL *)v10 URLByDeletingLastPathComponent];
      [(FMDFSWatcher *)v14 setDirectoryURL:v15];

      v16 = [(__CFURL *)v10 lastPathComponent];
      [(FMDFSWatcher *)v14 setTargetFilename:v16];
    }

    [(FMDFSWatcher *)v14 setBlock:v7];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)start
{
  objc_initWeak(&location, self);
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FMDFSWatcher *)self directoryURL];
    v5 = [(FMDFSWatcher *)self targetFilename];
    *buf = 138412546;
    v37 = v4;
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting to watch for existence of %@/%@", buf, 0x16u);
  }

  v6 = [(FMDFSWatcher *)self directoryURL];
  v7 = [v6 path];
  v8 = v7;
  -[FMDFSWatcher setFd:](self, "setFd:", open([v7 fileSystemRepresentation], 0x8000));

  v9 = [(FMDFSWatcher *)self fd];
  if (v9 < 1)
  {
    v24 = sub_100002880();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(FMDFSWatcher *)self directoryURL];
      sub_10022DD64(v25, buf, v24);
    }

    v26 = sub_100002880();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(FMDFSWatcher *)self directoryURL];
      *v34 = 138412290;
      v35 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to open %@", v34, 0xCu);
    }
  }

  else
  {
    v10 = [(FMDFSWatcher *)self fd];
    v11 = dispatch_get_global_queue(0, 0);
    v12 = dispatch_source_create(&_dispatch_source_type_vnode, v10, 2uLL, v11);
    [(FMDFSWatcher *)self setDispatchSourceChange:v12];

    v13 = [(FMDFSWatcher *)self dispatchSourceChange];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001BEF48;
    handler[3] = &unk_1002D0B70;
    handler[4] = self;
    objc_copyWeak(&v32, &location);
    dispatch_source_set_event_handler(v13, handler);

    v14 = [(FMDFSWatcher *)self dispatchSourceChange];
    dispatch_resume(v14);

    v15 = sub_100002880();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(FMDFSWatcher *)self directoryURL];
      v17 = [v16 path];
      *buf = 138412290;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Started monitoring changes to directory: %@", buf, 0xCu);
    }

    v18 = dispatch_source_create(&_dispatch_source_type_vnode, [(FMDFSWatcher *)self fd], 0x61uLL, v11);
    [(FMDFSWatcher *)self setDispatchSourceAbort:v18];

    v19 = [(FMDFSWatcher *)self dispatchSourceAbort];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001BF02C;
    v29[3] = &unk_1002D0B70;
    v29[4] = self;
    objc_copyWeak(&v30, &location);
    dispatch_source_set_event_handler(v19, v29);

    v20 = [(FMDFSWatcher *)self dispatchSourceAbort];
    dispatch_resume(v20);

    v21 = sub_100002880();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(FMDFSWatcher *)self directoryURL];
      v23 = [v22 path];
      *buf = 138412290;
      v37 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Started monitoring for removal of directory: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
  }

  objc_destroyWeak(&location);
  return v9 > 0;
}

+ (id)monitorURL:(id)a3 action:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[FMDFSWatcher alloc] initWithURL:v6 action:v5];

  v8 = [(FMDFSWatcher *)v7 targetFilename];

  if (v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling directory changed on startup", v11, 2u);
    }

    [(FMDFSWatcher *)v7 directoryChanged];
  }

  if (![(FMDFSWatcher *)v7 triggered]&& ![(FMDFSWatcher *)v7 start])
  {
    [(FMDFSWatcher *)v7 cancel];

    v7 = 0;
  }

  return v7;
}

- (void)directoryChanged
{
  v3 = [(FMDFSWatcher *)self targetFilename];

  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [(FMDFSWatcher *)self directoryURL];
    v26 = 0;
    v6 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:0 error:&v26];
    v7 = v26;

    if (v7)
    {
      v8 = sub_100002880();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10022DDBC(self, v7, v8);
      }

      v9 = sub_100002880();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(FMDFSWatcher *)self directoryURL];
        *buf = 138412546;
        v28 = v10;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error while trying to read the contents of directory %@: %@", buf, 0x16u);
      }

      [(FMDFSWatcher *)self cancel];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = v6;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v22 + 1) + 8 * i) lastPathComponent];
            v17 = [(FMDFSWatcher *)self targetFilename];
            v18 = [v16 isEqualToString:v17];

            if (v18)
            {
              [(FMDFSWatcher *)self fileDiscovered];
              goto LABEL_22;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v31 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v11 = sub_100002880();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(FMDFSWatcher *)self targetFilename];
        *buf = 138412290;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "File was not found in the directory yet: %@", buf, 0xCu);
      }

LABEL_22:

      v6 = v21;
    }
  }

  else
  {
    v20 = [(FMDFSWatcher *)self block];
    v20[2]();
  }
}

- (void)fileDiscovered
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FMDFSWatcher *)self targetFilename];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Found file being watched: %@", &v6, 0xCu);
  }

  [(FMDFSWatcher *)self setTriggered:1];
  [(FMDFSWatcher *)self cancel];
  v5 = [(FMDFSWatcher *)self block];
  v5[2]();
}

- (void)cancel
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deinitializing watcher", v8, 2u);
  }

  v4 = [(FMDFSWatcher *)self dispatchSourceChange];

  if (v4)
  {
    v5 = [(FMDFSWatcher *)self dispatchSourceChange];
    dispatch_source_cancel(v5);

    [(FMDFSWatcher *)self setDispatchSourceChange:0];
  }

  v6 = [(FMDFSWatcher *)self dispatchSourceAbort];

  if (v6)
  {
    v7 = [(FMDFSWatcher *)self dispatchSourceAbort];
    dispatch_source_cancel(v7);

    [(FMDFSWatcher *)self setDispatchSourceAbort:0];
  }

  if ([(FMDFSWatcher *)self fd]>= 1)
  {
    close([(FMDFSWatcher *)self fd]);
    [(FMDFSWatcher *)self setFd:0];
  }
}

@end