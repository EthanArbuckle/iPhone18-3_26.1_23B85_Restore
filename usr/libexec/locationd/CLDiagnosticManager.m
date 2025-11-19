@interface CLDiagnosticManager
- (BOOL)fileManager:(id)a3 shouldCopyItemAtURL:(id)a4 toURL:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CLDiagnosticManager)init;
- (NSURL)mobileCrashReporterPath;
- (id)pathForDate:(id)a3 withBasePath:(id)a4;
- (void)beginService;
- (void)copyRegisteredFilesWithHandler:(id)a3;
- (void)endService;
- (void)registerFileForCollection:(id)a3;
- (void)unregisterFileForCollection:(id)a3;
@end

@implementation CLDiagnosticManager

- (CLDiagnosticManager)init
{
  v3.receiver = self;
  v3.super_class = CLDiagnosticManager;
  return [(CLDiagnosticManager *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLDiagnosticManagerServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLDiagnosticManagerClientProtocol];
}

- (void)beginService
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#diagnosticManager beginService", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194BEE0();
  }

  self->_registeredFiles = objc_opt_new();
  v4 = objc_opt_new();
  self->_fileManager = v4;
  [(NSFileManager *)v4 setDelegate:self];
  v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.locationd.diagnostic"];
  self->_listener = v5;
  [(NSXPCListener *)v5 setDelegate:self];
  -[NSXPCListener _setQueue:](self->_listener, "_setQueue:", [objc_msgSend(-[CLDiagnosticManager universe](self "universe")]);
  [(NSXPCListener *)self->_listener resume];
}

- (void)endService
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#diagnosticManager endService", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194BFBC();
  }

  self->_fileManager = 0;
  [(NSXPCListener *)self->_listener invalidate];

  self->_listener = 0;
  self->_registeredFiles = 0;
}

- (void)registerFileForCollection:(id)a3
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Add file to #diagnosticManager: %{public}@", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194C098();
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else if (a3)
  {
LABEL_7:
    [(NSMutableSet *)[(CLDiagnosticManager *)self registeredFiles] addObject:a3];
    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10194C180();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Trying to register a nil NSURL", &v7, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10194C1A8();
  }
}

- (void)unregisterFileForCollection:(id)a3
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Remove file to #diagnosticManager: %{public}@", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194C28C();
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else if (a3)
  {
LABEL_7:
    [(NSMutableSet *)[(CLDiagnosticManager *)self registeredFiles] removeObject:a3];
    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10194C180();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Trying to unregister a nil NSURL", &v7, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10194C374();
  }
}

- (void)copyRegisteredFilesWithHandler:(id)a3
{
  v5 = [(CLDiagnosticManager *)self pathForDate:+[NSDate withBasePath:"date"], [(CLDiagnosticManager *)self mobileCrashReporterPath]];
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v25 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Client requested #diagnosticManager file copy to dest: %@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194C458();
  }

  v23 = 0;
  [(NSFileManager *)[(CLDiagnosticManager *)self fileManager] createDirectoryAtURL:v5 withIntermediateDirectories:0 attributes:0 error:0];
  v17 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(CLDiagnosticManager *)self registeredFiles];
  v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v19 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v16 = a3;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [v5 URLByAppendingPathComponent:{objc_msgSend(v11, "lastPathComponent")}];
        if (qword_1025D47A0 != -1)
        {
          sub_10194C180();
        }

        v13 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v25 = v11;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "diagnosticManager trying to copy file: %@", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10194C540(&v32, v11, &v33);
        }

        [(NSFileManager *)[(CLDiagnosticManager *)self fileManager] copyItemAtURL:v11 toURL:v12 error:&v23];
        if (v23)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10194C180();
          }

          v14 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289794;
            *v25 = 0;
            *&v25[4] = 2082;
            *&v25[6] = "";
            v26 = 2114;
            v27 = v11;
            v28 = 2114;
            v29 = v12;
            v30 = 2114;
            v31 = v23;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Failed to copy diagnostic file, srcURL:%{public, location:escape_only}@, dstURL:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x30u);
          }
        }

        else
        {
          [v17 addObject:v12];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v19 objects:v34 count:16];
    }

    while (v8);
    v15 = v23;
    a3 = v16;
  }

  else
  {
    v15 = 0;
  }

  (*(a3 + 2))(a3, v17, v15);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#diagnosticManager received new XPC Connection request", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194C658();
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else if (a4)
  {
LABEL_7:
    v7 = [a4 valueForEntitlement:@"com.apple.locationd.diagnostic"];
    if (v7)
    {
      v8 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10082BB58;
        v18[3] = &unk_102447418;
        v18[4] = self;
        [a4 setInterruptionHandler:v18];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10082BC08;
        v17[3] = &unk_102447418;
        v17[4] = self;
        [a4 setInvalidationHandler:v17];
        [a4 _setQueue:{objc_msgSend(objc_msgSend(-[CLDiagnosticManager universe](self, "universe"), "silo"), "queue")}];
        [a4 setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___CLDiagnosticManagerXPCServerInterface)}];
        [a4 setExportedObject:self];
        [(CLDiagnosticManager *)self setConnection:a4];
        [a4 resume];
        if (qword_1025D47A0 != -1)
        {
          sub_10194C180();
        }

        v9 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v20 = a4;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#diagnosticManager Resuming XPC Connection: %@", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10194C734();
        }

        LOBYTE(v10) = 1;
        return v10;
      }
    }

    if (qword_1025D4790 != -1)
    {
      sub_10194C81C();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v12 = [a4 processIdentifier];
      *buf = 68289538;
      *v20 = 0;
      *&v20[4] = 2082;
      *&v20[6] = "";
      v21 = 2082;
      v22 = "com.apple.locationd.diagnostic";
      v23 = 1026;
      v24 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#diagnosticManager missing entitlement, entitlement:%{public, location:escape_only}s, pid:%{public}d}", buf, 0x22u);
      if (qword_1025D4790 != -1)
      {
        sub_10194C81C();
      }
    }

    v13 = qword_1025D4798;
    v10 = os_signpost_enabled(qword_1025D4798);
    if (v10)
    {
      v14 = [a4 processIdentifier];
      *buf = 68289538;
      *v20 = 0;
      *&v20[4] = 2082;
      *&v20[6] = "";
      v21 = 2082;
      v22 = "com.apple.locationd.diagnostic";
      v23 = 1026;
      v24 = v14;
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#diagnosticManager missing entitlement", "{msg%{public}.0s:#diagnosticManager missing entitlement, entitlement:%{public, location:escape_only}s, pid:%{public}d}", buf, 0x22u);
LABEL_24:
      LOBYTE(v10) = 0;
      return v10;
    }

    return v10;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10194C180();
  }

  v15 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Why didn't we get a connection?", buf, 2u);
  }

  v10 = sub_10000A100(121, 0);
  if (v10)
  {
    sub_10194C844();
    goto LABEL_24;
  }

  return v10;
}

- (BOOL)fileManager:(id)a3 shouldCopyItemAtURL:(id)a4 toURL:(id)a5
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 138412546;
    *(__p.__r_.__value_.__r.__words + 4) = a4;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2112;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = a5;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#diagnosticManager fileManager asking if should copy from %@ to %@", &__p, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194CAE0(a4);
  }

  sub_100565518(0, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v9 = [NSURL URLWithString:[NSString stringWithUTF8String:p_p]];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = [objc_msgSend(a4 "absoluteString")];
  if ((v10 & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10194C180();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = a4;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Trying to move a file that is not in our cache directory: %@", &__p, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194CBF4();
    }
  }

  return v10;
}

- (NSURL)mobileCrashReporterPath
{
  if (qword_10265A538 != -1)
  {
    sub_10194CCEC();
  }

  return qword_10265A530;
}

- (id)pathForDate:(id)a3 withBasePath:(id)a4
{
  if (qword_10265A548 != -1)
  {
    sub_10194CD00();
  }

  v6 = [qword_10265A540 stringFromDate:a3];

  return [a4 URLByAppendingPathComponent:v6];
}

@end