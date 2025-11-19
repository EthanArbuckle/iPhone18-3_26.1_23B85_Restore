@interface CBStackISOStreamBTStack
+ (BOOL)_configureStream:(id)a3 setup:(BOOL)a4 error:(id *)a5;
+ (BOOL)_processConfigRequest:(id)a3 error:(id *)a4;
+ (BOOL)_writeWithRequest:(id)a3 stream:(id)a4 error:(id *)a5;
+ (void)_processNextConfigRequest:(unsigned __int16)a3;
- (CBStackISOStreamBTStack)initWithConnectionHandle:(unsigned __int16)a3 dataPathDirection:(unsigned __int8)a4 dataPathID:(unsigned __int8)a5 dispatchQueue:(id)a6;
- (id)descriptionWithLevel:(int)a3;
- (void)_activateCompletedWithError:(id)a3;
- (void)_activateWithCompletion:(id)a3;
- (void)_completeReadRequest:(id)a3 error:(id)a4;
- (void)_completeWriteRequest:(id)a3 error:(id)a4;
- (void)_invalidate;
- (void)_invalidateCoreWithError:(id)a3;
- (void)_invalidated;
- (void)_receivedData:(id)a3 error:(id)a4;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)readWithRequest:(id)a3;
- (void)writeWithRequest:(id)a3;
@end

@implementation CBStackISOStreamBTStack

+ (BOOL)_configureStream:(id)a3 setup:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v22 = a3;
  v23 = 0;
  sub_1000216B4(&v23);
  if (byte_100B55350)
  {
LABEL_8:
    v8 = objc_alloc_init(CBStackISOStreamConfigRequest);
    [(CBStackISOStreamConfigRequest *)v8 setStream:v22];
    [(CBStackISOStreamConfigRequest *)v8 setSetup:v6];
    v9 = [v22 connectionHandle];
    v10 = [NSNumber numberWithUnsignedShort:v9];
    v11 = [qword_100B55338 objectForKeyedSubscript:v10];
    v12 = [v11 count];
    if (v12)
    {
      if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        v13 = "remove";
        if (v6)
        {
          v13 = "setup";
        }

        v20 = v9;
        v21 = v12;
        v19 = v13;
        LogPrintF_safe();
      }
    }

    else if (([a1 _processConfigRequest:v8 error:a5] & 1) == 0)
    {
      v14 = 0;
LABEL_22:

      goto LABEL_23;
    }

    if (!v11)
    {
      v11 = objc_alloc_init(NSMutableArray);
      v15 = qword_100B55338;
      if (!qword_100B55338)
      {
        v16 = objc_alloc_init(NSMutableDictionary);
        v17 = qword_100B55338;
        qword_100B55338 = v16;

        v15 = qword_100B55338;
      }

      [v15 setObject:v11 forKeyedSubscript:{v10, v19, v20, v21}];
    }

    [v11 addObject:{v8, v19, v20, v21}];
    v14 = 1;
    goto LABEL_22;
  }

  if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (!sub_100180250(sub_10014D2B4, sub_10014D520, off_100AE23D8))
  {
    byte_100B55350 = 1;
    goto LABEL_8;
  }

  if (a5)
  {
    CBErrorF();
    *a5 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
  sub_10002249C(&v23);

  return v14;
}

+ (BOOL)_processConfigRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 stream];
  v7 = [v6 connectionHandle];
  v8 = [NSNumber numberWithUnsignedShort:v7];
  v9 = [v6 dataPathDirection];
  if ([v5 setup])
  {
    if (v9 == 1)
    {
      v10 = [qword_100B55340 objectForKeyedSubscript:v8];

      if (v10)
      {
        if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        if (a4)
        {
LABEL_38:
          CBErrorF();
          *a4 = v17 = 0;
          goto LABEL_46;
        }

LABEL_45:
        v17 = 0;
        goto LABEL_46;
      }
    }

    v11 = [v6 dataPathID];
    v22 = v7;
    v23 = v9;
    v24 = v11;
    if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
    {
      v12 = "?";
      v13 = "C->H";
      if (v9 != 1)
      {
        v13 = "?";
      }

      if (!v9)
      {
        v13 = "H->C";
      }

      if (v11 != 255)
      {
        v12 = "Vendor";
      }

      if (!v11)
      {
        v12 = "HCI";
      }

      v20 = v13;
      v21 = v12;
      v19 = v7;
      LogPrintF_safe();
    }

    if (sub_1001802DC(&v22))
    {
      if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      if (a4)
      {
        *a4 = CBErrorF();
      }

      goto LABEL_45;
    }

    if (v9 == 1)
    {
      v14 = qword_100B55340;
      if (!qword_100B55340)
      {
        v15 = objc_alloc_init(NSMutableDictionary);
        v16 = qword_100B55340;
        qword_100B55340 = v15;

        v14 = qword_100B55340;
      }

      [v14 setObject:v6 forKeyedSubscript:{v8, v19, v20, v21}];
    }
  }

  else
  {
    if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    if (sub_1001804F4(v7, v9))
    {
      if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      if (a4)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  v17 = 1;
LABEL_46:

  return v17;
}

+ (void)_processNextConfigRequest:(unsigned __int16)a3
{
  v3 = a3;
  v9 = 0;
  sub_1000216B4(&v9);
  v5 = qword_100B55338;
  v6 = [NSNumber numberWithUnsignedShort:v3];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 firstObject];
  if (v8 && ([a1 _processConfigRequest:v8 error:0] & 1) == 0)
  {
    [v7 removeObjectAtIndex:0];
  }

  sub_10002249C(&v9);
}

+ (BOOL)_writeWithRequest:(id)a3 stream:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v16 = 0;
  sub_1000216B4(&v16);
  [v7 setStream:v8];
  v9 = [v7 data];
  v10 = [v9 length];
  if ([qword_100B55348 count])
  {
    if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
    {
      [v8 connectionHandle];
      LogPrintF_safe();
    }

LABEL_15:
    v14 = 1;
    goto LABEL_16;
  }

  [qword_100B55348 addObject:v7];
  if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    [v8 connectionHandle];
    LogPrintF_safe();
  }

  v11 = v8[29];
  v12 = [v9 bytes];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = "";
  }

  if (!sub_100180700(v11, v13, v10))
  {
    goto LABEL_15;
  }

  [qword_100B55348 removeObjectAtIndex:0];
  if (a5)
  {
    CBErrorF();
    *a5 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_16:

  sub_10002249C(&v16);
  return v14;
}

- (CBStackISOStreamBTStack)initWithConnectionHandle:(unsigned __int16)a3 dataPathDirection:(unsigned __int8)a4 dataPathID:(unsigned __int8)a5 dispatchQueue:(id)a6
{
  v11 = a6;
  v19.receiver = self;
  v19.super_class = CBStackISOStreamBTStack;
  v12 = [(CBStackISOStreamBTStack *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_connectionHandle = a3;
    v12->_dataPathDirection = a4;
    v12->_dataPathID = a5;
    objc_storeStrong(&v12->_dispatchQueue, a6);
    v14 = v13;
    objc_sync_enter(v14);
    if (!qword_100B55348)
    {
      v15 = objc_alloc_init(NSMutableArray);
      v16 = qword_100B55348;
      qword_100B55348 = v15;
    }

    objc_sync_exit(v14);

    v17 = v14;
  }

  return v13;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v16 = [objc_opt_class() description];
    CUAppendF();
    v4 = 0;
  }

  CUAppendF();
  v5 = v4;

  CUAppendF();
  v6 = v5;

  CUAppendF();
  v7 = v6;

  CUAppendF();
  v8 = v7;

  CUAppendF();
  v9 = v8;

  missedReads = self->_missedReads;
  CUAppendF();
  v10 = v9;

  [(NSMutableArray *)self->_readRequests count];
  CUAppendF();
  v11 = v10;

  CUAppendF();
  v12 = v11;

  v13 = &stru_100B0F9E0;
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;

  return v14;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014E41C;
  v7[3] = &unk_100AE23F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100042244;
  v20 = sub_1000425B4;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10014E6A4;
  v13[3] = &unk_100AE2420;
  v15 = &v16;
  v4 = a3;
  v14 = v4;
  v5 = objc_retainBlock(v13);
  if (self->_activateCalled || self->_invalidateCalled)
  {
    v10 = NSErrorF_safe();
    activateCompletion = v17[5];
    v17[5] = v10;
    goto LABEL_9;
  }

  self->_activateCalled = 1;
  if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    v11 = self;
    LogPrintF_safe();
  }

  v6 = (v17 + 5);
  obj = v17[5];
  v7 = [CBStackISOStreamBTStack _configureStream:self setup:1 error:&obj, v11];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    self->_setupState = 1;
    v8 = objc_retainBlock(v4);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = v8;
LABEL_9:
  }

  (v5[2])(v5);

  _Block_object_dispose(&v16, 8);
}

- (void)_activateCompletedWithError:(id)a3
{
  v8 = a3;
  if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintNSError();
    LogPrintF_safe();
  }

  if (v8)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  self->_setupState = v4;
  v5 = objc_retainBlock(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v5)
  {
    v5[2](v5, v8);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014E924;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  setupState = self->_setupState;
  if (setupState == 4 || setupState == 1)
  {
    v8 = 0;
    v5 = [CBStackISOStreamBTStack _configureStream:self setup:0 error:&v8];
    v6 = v8;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    self->_removeState = v7;
    if ((v5 & 1) == 0)
    {
      [(CBStackISOStreamBTStack *)self _invalidateCoreWithError:v6];
    }
  }

  else
  {

    [(CBStackISOStreamBTStack *)self _invalidateCoreWithError:0];
  }
}

- (void)_invalidateCoreWithError:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_readRequests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = CBErrorF();
        [(CBStackISOStreamBTStack *)self _completeReadRequest:v9 error:v10];
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  readRequests = self->_readRequests;
  self->_readRequests = 0;

  if (self->_removeState == 1)
  {
    if (v4)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    self->_removeState = v12;
  }

  if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    CUPrintNSError();
    v14 = v13 = self;
    LogPrintF_safe();
  }

  [(CBStackISOStreamBTStack *)self _invalidated:v13];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_outstandingWrites)
  {
    v5 = objc_retainBlock(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    readHandler = self->_readHandler;
    self->_readHandler = 0;

    if (v5)
    {
      v5[2]();
    }

    self->_invalidateDone = 1;
    if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)readWithRequest:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014EE44;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_receivedData:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->_readRequests popFirstObject];
  if (v7)
  {
    [(CBStackISOStreamBTStack *)self _completeReadRequest:v7 error:v6];
  }

  else
  {
    v8 = objc_retainBlock(self->_readHandler);
    if (v8)
    {
      if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        [v9 length];
        LogPrintF_safe();
      }

      v8[2](v8, v9, v6);
    }

    else
    {
      ++self->_missedReads;
      if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        [v9 length];
        LogPrintF_safe();
      }
    }
  }
}

- (void)_completeReadRequest:(id)a3 error:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    connectionHandle = self->_connectionHandle;
    v8 = [v16 data];
    v9 = [v8 length];
    missedReads = self->_missedReads;
    CUPrintNSError();
    v15 = v14 = missedReads;
    v12 = connectionHandle;
    v13 = v9;
    LogPrintF_safe();
  }

  [v16 setError:{v6, v12, v13, v14, v15}];
  [v16 setMissedReads:self->_missedReads];
  self->_missedReads = 0;
  v11 = [v16 completionHandler];
  [v16 setCompletionHandler:0];
  if (v11)
  {
    v11[2](v11);
  }
}

- (void)writeWithRequest:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014F36C;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_completeWriteRequest:(id)a3 error:(id)a4
{
  v16 = a3;
  v6 = a4;
  --self->_outstandingWrites;
  if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    connectionHandle = self->_connectionHandle;
    v8 = [v16 data];
    v9 = [v8 length];
    outstandingWrites = self->_outstandingWrites;
    CUPrintNSError();
    v15 = v14 = outstandingWrites;
    v12 = connectionHandle;
    v13 = v9;
    LogPrintF_safe();
  }

  [v16 setError:{v6, v12, v13, v14, v15}];
  v11 = [v16 completionHandler];
  [v16 setCompletionHandler:0];
  if (v11)
  {
    v11[2](v11);
  }

  [(CBStackISOStreamBTStack *)self _invalidated];
}

@end