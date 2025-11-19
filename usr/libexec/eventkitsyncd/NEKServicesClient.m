@interface NEKServicesClient
+ (id)log;
- (BOOL)_copyFilesWithPrefix:(id)a3 fromSource:(id)a4 toDiagnosticExtension:(id)a5;
- (NEKServicesClient)initWithConnection:(id)a3 andEnvironment:(id)a4;
- (id)_syncReport;
- (id)_tempDiagnosticExtDirectoryForDbWithPrefix:(id)a3;
- (id)_tempDiagnosticExtDirectoryForFilesWithPrefix:(id)a3;
- (void)dumpDiagnosticsWithCompletion:(id)a3;
@end

@implementation NEKServicesClient

+ (id)log
{
  if (qword_1000D17D0 != -1)
  {
    sub_100070FC8();
  }

  v3 = qword_1000D17D8;

  return v3;
}

- (NEKServicesClient)initWithConnection:(id)a3 andEnvironment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = NEKServicesClient;
  v9 = [(NEKServicesClient *)&v15 init];
  if (v9)
  {
    v10 = +[NEKServicesClient log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "initializing", v14, 2u);
    }

    v11 = [[EKSSLogger alloc] initWithString:@"NEKServicesClient logger initialized"];
    logger = v9->_logger;
    v9->_logger = v11;

    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v9->_environment, a4);
  }

  return v9;
}

- (void)dumpDiagnosticsWithCompletion:(id)a3
{
  logger = self->_logger;
  v5 = a3;
  [(EKSSLogger *)logger timestampLogForString:@"Starting diagnostic dump"];
  v6 = [(NEKEnvironment *)self->_environment tinyStore];
  v7 = [v6 asDictionary];

  [(EKSSLogger *)self->_logger timestampLogForString:@"Adding duplicate and drift diagnostics [iOS only]"];
  v8 = [(NEKServicesClient *)self _syncReport];
  v9 = [v8 objectForKey:@"Duplicates"];
  [v7 setObject:v9 forKeyedSubscript:@"Duplicates"];

  v10 = [v8 objectForKey:@"Drift"];
  [v7 setObject:v10 forKeyedSubscript:@"Drift"];

  [(EKSSLogger *)self->_logger timestampLogForString:@"Encoding diagnostic data to JSON"];
  v24 = 0;
  v11 = [NSJSONSerialization dataWithJSONObject:v7 options:11 error:&v24];
  v12 = v24;
  v13 = self->_logger;
  v14 = [NSString stringWithFormat:@"JSON encoding complete with error: %@", v12];
  [(EKSSLogger *)v13 timestampLogForString:v14];

  v15 = EKSSDiagnosticsDirectory();
  v16 = [v15 URLByAppendingPathComponent:@"Companion-DiagnosticData.txt"];

  v17 = self->_logger;
  v18 = [NSString stringWithFormat:@"Writing diagnostics to URL: %@", v16];
  [(EKSSLogger *)v17 timestampLogForString:v18];

  v23 = v12;
  [v11 writeToURL:v16 options:0x10000000 error:&v23];
  v19 = v23;

  v20 = self->_logger;
  v21 = [NSString stringWithFormat:@"Writing diagnostics complete with error: %@", v19];
  [(EKSSLogger *)v20 timestampLogForString:v21];

  [(EKSSLogger *)self->_logger timestampLogForString:@"Copying RecordMap database files"];
  v22 = [(NEKServicesClient *)self _tempDiagnosticExtDirectoryForDbWithPrefix:@"RecordMap"];
  [(EKSSLogger *)self->_logger timestampLogForString:@"Diagnostic dump completed"];
  v5[2](v5, v16, v22, self->_logger);
}

- (id)_syncReport
{
  [(EKSSLogger *)self->_logger timestampLogForString:@"Diagnostics opening syncReport"];
  v3 = +[NEKAnalyticsReporter syncReportFilePath];
  v4 = [NSData dataWithContentsOfFile:v3];
  v16[0] = @"Duplicates";
  v16[1] = @"Drift";
  v17[0] = @"NULL";
  v17[1] = @"NULL";
  v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  if (v4)
  {
    v15 = 0;
    v6 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v15];
    v7 = v15;
    logger = self->_logger;
    v9 = [NSString stringWithFormat:@"Sync report loaded with error: %@", v7];
    [(EKSSLogger *)logger timestampLogForString:v9];

    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;
  }

  else
  {
    v12 = self->_logger;
    v13 = [NSString stringWithFormat:@"Sync report not found at path: %@", v3];
    [(EKSSLogger *)v12 timestampLogForString:v13];

    v11 = v5;
  }

  return v11;
}

- (id)_tempDiagnosticExtDirectoryForDbWithPrefix:(id)a3
{
  v4 = a3;
  v5 = [(NEKEnvironment *)self->_environment dbFileManager];

  if (!v5)
  {
    [(EKSSLogger *)self->_logger timestampLogForString:@"dbFileManager is nil, skipping database file copy"];
    v10 = 0;
    goto LABEL_10;
  }

  v6 = [(NEKEnvironment *)self->_environment dbFileManager];
  v7 = [v6 syncStateDBPathFor:&stru_1000B7928];

  v8 = [NSURL fileURLWithPath:v7];
  if (!v8)
  {
    logger = self->_logger;
    v9 = [NSString stringWithFormat:@"dbDirectory not found for path: %@", v7];
    [(EKSSLogger *)logger timestampLogForString:v9];
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = [(NEKServicesClient *)self _tempDiagnosticExtDirectoryForFilesWithPrefix:v4];
  if (!v9 || ![(NEKServicesClient *)self _copyFilesWithPrefix:v4 fromSource:v8 toDiagnosticExtension:v9])
  {
    goto LABEL_8;
  }

  v9 = v9;
  v10 = v9;
LABEL_9:

LABEL_10:

  return v10;
}

- (id)_tempDiagnosticExtDirectoryForFilesWithPrefix:(id)a3
{
  v4 = [NSString stringWithFormat:@"Companion-%@", a3];
  v5 = EKSSDiagnosticsDirectory();
  v6 = [v5 URLByAppendingPathComponent:v4];

  v7 = +[NSFileManager defaultManager];
  [v7 removeItemAtURL:v6 error:0];
  v18 = 0;
  v8 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v18];
  v9 = v18;
  v10 = v9;
  logger = self->_logger;
  if (v8)
  {
    v12 = [v6 path];
    v13 = [NSString stringWithFormat:@"Created tempDir: %@", v12];
    [(EKSSLogger *)logger timestampLogForString:v13];

    v14 = v6;
  }

  else
  {
    v15 = [v9 localizedDescription];
    v16 = [NSString stringWithFormat:@"Failed to create tempDir: %@", v15];
    [(EKSSLogger *)logger timestampLogForString:v16];

    v14 = 0;
  }

  return v14;
}

- (BOOL)_copyFilesWithPrefix:(id)a3 fromSource:(id)a4 toDiagnosticExtension:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSFileManager defaultManager];
  v43 = v9;
  v12 = [v9 path];
  v51 = 0;
  v13 = [v11 contentsOfDirectoryAtPath:v12 error:&v51];
  v14 = v51;

  v45 = self;
  logger = self->_logger;
  if (!v13)
  {
    v34 = [v14 localizedDescription];
    v35 = [NSString stringWithFormat:@"Failed to read sourceDirectory contents: %@", v34];
    [(EKSSLogger *)logger timestampLogForString:v35];

    v13 = 0;
LABEL_21:

    [v11 removeItemAtURL:v10 error:0];
    v33 = 0;
    goto LABEL_22;
  }

  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Found [%lu] items in sourceDirectory", [v13 count]);
  [(EKSSLogger *)logger timestampLogForString:v16];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (!v18)
  {

LABEL_20:
    v36 = v45->_logger;
    v34 = [NSString stringWithFormat:@"No [%@] files were copied, cleaning up temp directory", v8];
    [(EKSSLogger *)v36 timestampLogForString:v34];
    goto LABEL_21;
  }

  v19 = v18;
  v41 = 0;
  v42 = v11;
  v20 = *v48;
  v40 = v17;
  v38 = v13;
  v39 = *v48;
  do
  {
    v21 = 0;
    v44 = v19;
    do
    {
      if (*v48 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v47 + 1) + 8 * v21);
      if ([v22 hasPrefix:v8])
      {
        v23 = v10;
        v24 = [v10 URLByAppendingPathComponent:v22];
        [v42 removeItemAtURL:v24 error:0];
        v25 = [v43 URLByAppendingPathComponent:v22];
        v46 = v14;
        v26 = [v42 copyItemAtURL:v25 toURL:v24 error:&v46];
        v27 = v46;

        v28 = v45->_logger;
        if (v26)
        {
          v29 = [NSString stringWithFormat:@"Copied: %@", v22];
          [(EKSSLogger *)v28 timestampLogForString:v29];

          ++v41;
        }

        else
        {
          v31 = [v27 localizedDescription];
          v32 = [NSString stringWithFormat:@"Failed to copy %@: %@", v22, v31];
          [(EKSSLogger *)v28 timestampLogForString:v32];
        }

        v14 = v27;
        v10 = v23;
        v20 = v39;
        v17 = v40;
        v19 = v44;
      }

      else
      {
        v30 = v45->_logger;
        v24 = [NSString stringWithFormat:@"Ignored: %@", v22];
        [(EKSSLogger *)v30 timestampLogForString:v24];
      }

      v21 = v21 + 1;
    }

    while (v19 != v21);
    v19 = [v17 countByEnumeratingWithState:&v47 objects:v52 count:16];
  }

  while (v19);

  if (!v41)
  {
    v11 = v42;
    v13 = v38;
    goto LABEL_20;
  }

  v33 = 1;
  v11 = v42;
  v13 = v38;
LABEL_22:

  return v33;
}

@end