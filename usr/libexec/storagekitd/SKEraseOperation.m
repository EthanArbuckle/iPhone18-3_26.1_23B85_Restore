@interface SKEraseOperation
- (BOOL)run;
- (SKEraseOperation)initWithEraser:(id)a3 withCompletionBlock:(id)a4;
- (void)finished;
@end

@implementation SKEraseOperation

- (SKEraseOperation)initWithEraser:(id)a3 withCompletionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SKEraseOperation;
  v9 = [(SKManagerOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eraser, a3);
    v11 = [v8 copy];
    callbackBlock = v10->_callbackBlock;
    v10->_callbackBlock = v11;
  }

  return v10;
}

- (BOOL)run
{
  eraser = self->_eraser;
  if (eraser)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_100017F24;
    v25 = sub_100017F34;
    v26 = 0;
    obj = 0;
    v4 = [(SKEraserProtocol *)eraser createStateMachineWithError:&obj];
    objc_storeStrong(&v26, obj);
    fsm = self->_fsm;
    self->_fsm = v4;

    if (self->_fsm)
    {
      objc_initWeak(&location, self);
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100017F3C;
      v16 = &unk_100049328;
      objc_copyWeak(&v18, &location);
      v17 = &v21;
      v6 = objc_retainBlock(&v13);
      eraseBlock = self->eraseBlock;
      self->eraseBlock = v6;

      objc_storeWeak(&self->weakEraseBlock, v6);
      v8 = [SKDaemonManager sharedManager:v13];
      [v8 syncAllDisksWithCompletionBlock:self->eraseBlock];

      v9 = self->_operationError == 0;
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      objc_storeStrong(&self->_operationError, v22[5]);
      [(SKEraseOperation *)self finished];
      v9 = 0;
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    operationError = self->_operationError;
    self->_operationError = v10;

    [(SKEraseOperation *)self finished];
    return 0;
  }

  return v9;
}

- (void)finished
{
  self->_hasFinished = 1;
  v3 = sub_10000BFD0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SKDisk *)self->_resultingDisk mountPoint];
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Erase Complete, Mount Point: %@", buf, 0xCu);
  }

  v5 = +[SKDaemonManager sharedManager];
  v6 = [v5 _recacheSyncDisk:self->_resultingDisk];
  resultingDisk = self->_resultingDisk;
  self->_resultingDisk = v6;

  v8 = [(SKManagerOperation *)self validateWithRecachedDisk:self->_resultingDisk error:self->_operationError];
  operationError = self->_operationError;
  self->_operationError = v8;

  v10 = sub_10000BFD0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(SKDisk *)self->_resultingDisk mountPoint];
    *buf = 138412290;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Recache Complete, Mount Point: %@", buf, 0xCu);
  }

  v12 = self->_resultingDisk;
  v13 = self->_operationError;
  (*(self->_callbackBlock + 2))();
  v14.receiver = self;
  v14.super_class = SKEraseOperation;
  [(SKManagerOperation *)&v14 finished];
}

@end