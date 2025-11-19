@interface APMetricPreparedUnsignedDataProcessor
- (APMetricStoringEC)storage;
- (void)_processNextFile:(id)a3 completionHandler:(id)a4;
- (void)_signFile:(id)a3 usingSigningAuthority:(id)a4 completionHandler:(id)a5;
@end

@implementation APMetricPreparedUnsignedDataProcessor

- (void)_processNextFile:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = v6;
  v15 = v12;
  v13 = v7;
  v16 = v13;
  [v11 setupWithCompletion:1 completion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_signFile:(id)a3 usingSigningAuthority:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  v12 = [(APMetricPreparedUnsignedDataProcessor *)self metricsFileManager];
  v33 = 0;
  v13 = [v12 fileForReadingAtKeyPath:v8 error:&v33];
  v14 = v33;

  if (!v14)
  {
    v16 = [v13 nextObject];
    v17 = v16;
    if (v16)
    {
      v32 = 0;
      v18 = [v16 buildSignatureUsingSigning:v9 error:&v32];
      v19 = v32;
      if (v19 || ([v17 signature], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length"), v22, !v23))
      {
        APSimulateCrashNoKillProcess();
      }

      else
      {
        v24 = [APMetricStorage_private signedPathFromUnsigned:v8];
        v25 = [(APMetricPreparedUnsignedDataProcessor *)self metricsFileManager];
        v31 = 0;
        v29 = v24;
        v26 = [v25 fileForWritingAtKeyPath:v24 error:&v31];
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
          v28 = APLogForCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v35 = v19;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to save a file: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v28 = [(APMetricPreparedUnsignedDataProcessor *)self metricsFileManager];
          [v28 removeObjectAtPath:v8 error:0];
        }
      }

      v14 = v19;
      if (!v10)
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
        v35 = v8;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to read data from %{public}@", buf, 0xCu);
      }

      v21 = [(APMetricPreparedUnsignedDataProcessor *)self metricsFileManager];
      [v21 removeObjectAtPath:v8 error:0];

      v19 = 0;
      v14 = 0;
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    v10[2](v10);
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

  if (v10)
  {
    v10[2](v10);
  }

LABEL_25:
}

- (APMetricStoringEC)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

@end