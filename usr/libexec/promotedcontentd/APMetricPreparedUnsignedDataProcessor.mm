@interface APMetricPreparedUnsignedDataProcessor
- (APMetricStoringEC)storage;
- (void)_processNextFile:(id)file completionHandler:(id)handler;
- (void)_signFile:(id)file usingSigningAuthority:(id)authority completionHandler:(id)handler;
@end

@implementation APMetricPreparedUnsignedDataProcessor

- (void)_processNextFile:(id)file completionHandler:(id)handler
{
  fileCopy = file;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8 = [APSigningAuthority alloc];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 initWithPoolName:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003282EC;
  v14[3] = &unk_10047E458;
  objc_copyWeak(&v17, &location);
  v12 = fileCopy;
  v15 = v12;
  v13 = handlerCopy;
  v16 = v13;
  [v11 setupWithCompletion:1 completion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_signFile:(id)file usingSigningAuthority:(id)authority completionHandler:(id)handler
{
  fileCopy = file;
  authorityCopy = authority;
  handlerCopy = handler;
  v11 = os_transaction_create();
  metricsFileManager = [(APMetricPreparedUnsignedDataProcessor *)self metricsFileManager];
  v33 = 0;
  v13 = [metricsFileManager fileForReadingAtKeyPath:fileCopy error:&v33];
  v14 = v33;

  if (!v14)
  {
    nextObject = [v13 nextObject];
    v17 = nextObject;
    if (nextObject)
    {
      v32 = 0;
      v18 = [nextObject buildSignatureUsingSigning:authorityCopy error:&v32];
      v19 = v32;
      if (v19 || ([v17 signature], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length"), v22, !v23))
      {
        APSimulateCrashNoKillProcess();
      }

      else
      {
        v24 = [APMetricStorage_private signedPathFromUnsigned:fileCopy];
        metricsFileManager2 = [(APMetricPreparedUnsignedDataProcessor *)self metricsFileManager];
        v31 = 0;
        v29 = v24;
        v26 = [metricsFileManager2 fileForWritingAtKeyPath:v24 error:&v31];
        v27 = v31;

        v30 = v27;
        [v26 addObject:v17 error:&v30];
        v19 = v30;

        [v26 close];
        if (self && self->_fileProcessedBlock)
        {
          (*(self->_fileProcessedBlock + 2))();
        }

        if (v19)
        {
          metricsFileManager3 = APLogForCategory();
          if (os_log_type_enabled(metricsFileManager3, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v35 = v19;
            _os_log_impl(&_mh_execute_header, metricsFileManager3, OS_LOG_TYPE_ERROR, "Failed to save a file: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          metricsFileManager3 = [(APMetricPreparedUnsignedDataProcessor *)self metricsFileManager];
          [metricsFileManager3 removeObjectAtPath:fileCopy error:0];
        }
      }

      v14 = v19;
      if (!handlerCopy)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v20 = APLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v35 = fileCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to read data from %{public}@", buf, 0xCu);
      }

      metricsFileManager4 = [(APMetricPreparedUnsignedDataProcessor *)self metricsFileManager];
      [metricsFileManager4 removeObjectAtPath:fileCopy error:0];

      v19 = 0;
      v14 = 0;
      if (!handlerCopy)
      {
        goto LABEL_24;
      }
    }

    handlerCopy[2](handlerCopy);
    v14 = v19;
LABEL_24:

    goto LABEL_25;
  }

  v15 = APLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to open metrics data file: %{public}@", buf, 0xCu);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_25:
}

- (APMetricStoringEC)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

@end