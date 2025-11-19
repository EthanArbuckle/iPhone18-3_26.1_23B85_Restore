@interface BTVCPacketControl
- (BTVCPacketControl)initWithParams:(id)a3 response:(BOOL)a4;
- (id)getCurrentPacket;
- (void)_activate;
- (void)_cleanupQueuedPacket:(int)a3;
- (void)_invalidate;
- (void)_processQueuedPacket;
- (void)_update;
- (void)activate;
- (void)activateDirect;
- (void)cleanupQueuedPacket:(int)a3;
- (void)completeCurrentPacket:(id)a3;
- (void)dealloc;
- (void)didReceiveData:(id)a3;
- (void)didSendPacket:(id)a3 error:(id)a4;
- (void)invalidate;
- (void)refreshCompleteTimeoutTimer;
- (void)sendPacket:(id)a3 completion:(id)a4;
- (void)sendPacketDirect:(id)a3 completion:(id)a4;
- (void)setDispatchQueue:(id)a3;
- (void)update;
@end

@implementation BTVCPacketControl

- (BTVCPacketControl)initWithParams:(id)a3 response:(BOOL)a4
{
  v7 = a3;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[BTVCPacketControl initWithParams:response:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BTVCPacketControl:%s\n", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = BTVCPacketControl;
  v9 = [(BTVCPacketControl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, a3);
    v10->_responseIsNeeded = a4;
    v10->_packetCompleteTimeoutSeconds = 0.0;
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BTVCPacketControl;
  [(BTVCPacketControl *)&v2 dealloc];
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = v4;

    objc_sync_exit(obj);
  }
}

- (void)activate
{
  v2 = self;
  objc_sync_enter(v2);
  v2->_activateCalled = 1;
  dispatchQueue = v2->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10064C954;
  block[3] = &unk_100ADF820;
  block[4] = v2;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(v2);
}

- (void)activateDirect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = self;
  objc_sync_enter(v3);
  v3->_activateCalled = 1;
  objc_sync_exit(v3);

  [(BTVCPacketControl *)v3 _activate];
}

- (void)_activate
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activate\n", v6, 2u);
  }

  if (!self->_packetSendQueue)
  {
    v4 = objc_alloc_init(NSMutableArray);
    packetSendQueue = self->_packetSendQueue;
    self->_packetSendQueue = v4;
  }

  [(BTVCPacketControl *)self _processQueuedPacket];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10064CAC0;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating\n", buf, 2u);
    }

    self->_invalidateCalled = 1;
    completeTimeoutTimer = self->_completeTimeoutTimer;
    if (completeTimeoutTimer)
    {
      v5 = completeTimeoutTimer;
      dispatch_source_cancel(v5);
      v6 = self->_completeTimeoutTimer;
      self->_completeTimeoutTimer = 0;
    }

    [(BTVCPacketControl *)self _cleanupQueuedPacket:4294960573];
    packetSendQueue = self->_packetSendQueue;
    self->_packetSendQueue = 0;

    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Invalidated\n", v9, 2u);
    }
  }
}

- (void)update
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10064CC40;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);

  [(BTVCPacketControl *)self _processQueuedPacket];
}

- (void)sendPacket:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10064CD48;
  block[3] = &unk_100AEAFA0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)sendPacketDirect:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[BTVCPacketControl sendPacketDirect:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s\n", &v11, 0xCu);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(BTVCPacket);
    [(BTVCPacket *)v9 setPacket:v6];
    [(BTVCPacket *)v9 setCompletion:v7];
    packetCompleteTimeoutSeconds = self->_packetCompleteTimeoutSeconds;
    if (packetCompleteTimeoutSeconds != 0.0)
    {
      [(BTVCPacket *)v9 setCompleteTimeoutSeconds:packetCompleteTimeoutSeconds + CFAbsoluteTimeGetCurrent()];
    }

    [(NSMutableArray *)self->_packetSendQueue addObject:v9];
    [(BTVCPacketControl *)self _processQueuedPacket];
  }
}

- (void)completeCurrentPacket:(id)a3
{
  currentPacket = self->_currentPacket;
  self->_currentPacket = 0;

  [(BTVCPacketControl *)self update];
}

- (id)getCurrentPacket
{
  currentPacket = self->_currentPacket;
  if (currentPacket)
  {
    currentPacket = [currentPacket packet];
    v2 = vars8;
  }

  return currentPacket;
}

- (void)_processQueuedPacket
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[BTVCPacketControl _processQueuedPacket]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", &v11, 0xCu);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(BTVCPacketControl *)self refreshCompleteTimeoutTimer];
  if (!self->_currentPacket)
  {
    goto LABEL_7;
  }

  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[BTVCPacketControl _processQueuedPacket]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s _currentPacket is not nil \n", &v11, 0xCu);
  }

  if (!self->_currentPacket)
  {
LABEL_7:
    v5 = [(NSMutableArray *)self->_packetSendQueue firstObject];
    currentPacket = self->_currentPacket;
    self->_currentPacket = v5;

    if (self->_currentPacket)
    {
      goto LABEL_11;
    }

    v7 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[BTVCPacketControl _processQueuedPacket]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s _currentPacket is nil \n", &v11, 0xCu);
    }

    if (self->_currentPacket)
    {
LABEL_11:
      [(NSMutableArray *)self->_packetSendQueue removeObjectAtIndex:0];
      v8 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[BTVCPacketControl _processQueuedPacket]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s sendData \n", &v11, 0xCu);
      }

      sendingPacket = self->_sendingPacket;
      if (sendingPacket)
      {
        v10 = [(BTVCPacket *)self->_currentPacket packet];
        sendingPacket[2](sendingPacket, v10);
      }
    }
  }
}

- (void)cleanupQueuedPacket:(int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10064D1F8;
  v4[3] = &unk_100ADF920;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_cleanupQueuedPacket:(int)a3
{
  v26 = self;
  currentPacket = self->_currentPacket;
  if (currentPacket)
  {
    v10 = [(BTVCPacket *)currentPacket completion];

    if (v10)
    {
      obj = [(BTVCPacket *)v26->_currentPacket completion];
      v4 = [(BTVCPacket *)v26->_currentPacket packet];
      if (a3)
      {
        v36 = NSLocalizedDescriptionKey;
        v11 = [NSString stringWithUTF8String:DebugGetErrorString()];
        v3 = v11;
        v12 = @"?";
        if (v11)
        {
          v12 = v11;
        }

        v37 = v12;
        v5 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1, v26];
        v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:a3 userInfo:v5];
      }

      else
      {
        v13 = 0;
      }

      obj[2](obj, v4, v13);
      if (a3)
      {
      }
    }

    v14 = v26->_currentPacket;
    v26->_currentPacket = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obja = v26->_packetSendQueue;
  v15 = [(NSMutableArray *)obja countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v15)
  {
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(obja);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [v18 completion];
        v20 = v19 == 0;

        if (!v20)
        {
          v21 = [v18 completion];
          v22 = [v18 packet];
          if (a3)
          {
            v33 = NSLocalizedDescriptionKey;
            v23 = [NSString stringWithUTF8String:DebugGetErrorString()];
            v4 = v23;
            v24 = @"?";
            if (v23)
            {
              v24 = v23;
            }

            v34 = v24;
            v6 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:a3 userInfo:v6];
            v25 = v7;
          }

          else
          {
            v25 = 0;
          }

          (v21)[2](v21, v22, v25);
          if (a3)
          {
          }
        }
      }

      v15 = [(NSMutableArray *)obja countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v15);
  }

  [(NSMutableArray *)v26->_packetSendQueue removeAllObjects];
}

- (void)didSendPacket:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[BTVCPacketControl didSendPacket:error:]";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s packet %@", &v18, 0x16u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  currentPacket = self->_currentPacket;
  if (currentPacket)
  {
    v10 = [(BTVCPacket *)currentPacket completion];
    v11 = v10 == 0;

    v12 = qword_100BCEA70;
    v13 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v18 = 136315138;
        v19 = "[BTVCPacketControl didSendPacket:error:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s no completion function", &v18, 0xCu);
      }
    }

    else
    {
      if (v13)
      {
        v18 = 136315138;
        v19 = "[BTVCPacketControl didSendPacket:error:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s completion function", &v18, 0xCu);
      }

      v14 = [(BTVCPacket *)self->_currentPacket completion];
      v15 = (v14)[2](v14, v6, v7);

      if ((v15 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v17 = self->_currentPacket;
    self->_currentPacket = 0;

    goto LABEL_14;
  }

  v16 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_100856474(v16);
  }

LABEL_14:
  [(BTVCPacketControl *)self _processQueuedPacket];
}

- (void)didReceiveData:(id)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);

  [(BTVCPacketControl *)self _processQueuedPacket];
}

- (void)refreshCompleteTimeoutTimer
{
  if (self->_packetCompleteTimeoutSeconds != 0.0)
  {
    completeTimeoutTimer = self->_completeTimeoutTimer;
    if (completeTimeoutTimer)
    {
      v4 = completeTimeoutTimer;
      dispatch_source_cancel(v4);
      v5 = self->_completeTimeoutTimer;
      self->_completeTimeoutTimer = 0;
    }

    if (self->_currentPacket || [(NSMutableArray *)self->_packetSendQueue count])
    {
      Current = CFAbsoluteTimeGetCurrent();
      currentPacket = self->_currentPacket;
      v8 = 0.0;
      if (currentPacket)
      {
        [(BTVCPacket *)currentPacket completeTimeoutSeconds];
        v9 = self->_currentPacket;
        if (v10 >= Current)
        {
          [(BTVCPacket *)v9 completeTimeoutSeconds];
          v8 = v16 - Current;
        }

        else
        {
          v11 = [(BTVCPacket *)v9 completion];

          if (v11)
          {
            v12 = [(BTVCPacket *)self->_currentPacket completion];
            v13 = [(BTVCPacket *)self->_currentPacket packet];
            v14 = CBErrorF();
            (v12)[2](v12, v13, v14);
          }

          v15 = self->_currentPacket;
          self->_currentPacket = 0;
        }
      }

      v17 = [(NSMutableArray *)self->_packetSendQueue count];
      if (v17 - 1 >= 0)
      {
        v18 = v17;
        do
        {
          v19 = [(NSMutableArray *)self->_packetSendQueue objectAtIndex:--v18];
          v20 = v19;
          if (v19)
          {
            [v19 completeTimeoutSeconds];
            if (v21 >= Current)
            {
              if (v8 == 0.0 || ([v20 completeTimeoutSeconds], v8 >= v26 - Current))
              {
                [v20 completeTimeoutSeconds];
                v8 = v27 - Current;
              }
            }

            else
            {
              v22 = [v20 completion];

              if (v22)
              {
                v23 = [v20 completion];
                v24 = [v20 packet];
                v25 = CBErrorF();
                (v23)[2](v23, v24, v25);
              }

              [(NSMutableArray *)self->_packetSendQueue removeObjectAtIndex:v18];
            }
          }
        }

        while (v18 > 0);
      }

      if (v8 != 0.0)
      {
        v28 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
        v29 = self->_completeTimeoutTimer;
        self->_completeTimeoutTimer = v28;

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10064DBB0;
        v30[3] = &unk_100AE0B60;
        v30[4] = v28;
        v30[5] = self;
        dispatch_source_set_event_handler(v28, v30);
        CUDispatchTimerSet();
        dispatch_activate(v28);
      }
    }
  }
}

@end