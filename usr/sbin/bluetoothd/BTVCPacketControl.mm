@interface BTVCPacketControl
- (BTVCPacketControl)initWithParams:(id)params response:(BOOL)response;
- (id)getCurrentPacket;
- (void)_activate;
- (void)_cleanupQueuedPacket:(int)packet;
- (void)_invalidate;
- (void)_processQueuedPacket;
- (void)_update;
- (void)activate;
- (void)activateDirect;
- (void)cleanupQueuedPacket:(int)packet;
- (void)completeCurrentPacket:(id)packet;
- (void)dealloc;
- (void)didReceiveData:(id)data;
- (void)didSendPacket:(id)packet error:(id)error;
- (void)invalidate;
- (void)refreshCompleteTimeoutTimer;
- (void)sendPacket:(id)packet completion:(id)completion;
- (void)sendPacketDirect:(id)direct completion:(id)completion;
- (void)setDispatchQueue:(id)queue;
- (void)update;
@end

@implementation BTVCPacketControl

- (BTVCPacketControl)initWithParams:(id)params response:(BOOL)response
{
  paramsCopy = params;
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
    objc_storeStrong(&v9->_dispatchQueue, params);
    v10->_responseIsNeeded = response;
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

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
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
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
  }
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10064C954;
  block[3] = &unk_100ADF820;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (void)activateDirect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  objc_sync_exit(selfCopy);

  [(BTVCPacketControl *)selfCopy _activate];
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

- (void)sendPacket:(id)packet completion:(id)completion
{
  packetCopy = packet;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10064CD48;
  block[3] = &unk_100AEAFA0;
  block[4] = self;
  v12 = packetCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = packetCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)sendPacketDirect:(id)direct completion:(id)completion
{
  directCopy = direct;
  completionCopy = completion;
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
    [(BTVCPacket *)v9 setPacket:directCopy];
    [(BTVCPacket *)v9 setCompletion:completionCopy];
    packetCompleteTimeoutSeconds = self->_packetCompleteTimeoutSeconds;
    if (packetCompleteTimeoutSeconds != 0.0)
    {
      [(BTVCPacket *)v9 setCompleteTimeoutSeconds:packetCompleteTimeoutSeconds + CFAbsoluteTimeGetCurrent()];
    }

    [(NSMutableArray *)self->_packetSendQueue addObject:v9];
    [(BTVCPacketControl *)self _processQueuedPacket];
  }
}

- (void)completeCurrentPacket:(id)packet
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
    firstObject = [(NSMutableArray *)self->_packetSendQueue firstObject];
    currentPacket = self->_currentPacket;
    self->_currentPacket = firstObject;

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
        packet = [(BTVCPacket *)self->_currentPacket packet];
        sendingPacket[2](sendingPacket, packet);
      }
    }
  }
}

- (void)cleanupQueuedPacket:(int)packet
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10064D1F8;
  v4[3] = &unk_100ADF920;
  v4[4] = self;
  packetCopy = packet;
  dispatch_async(dispatchQueue, v4);
}

- (void)_cleanupQueuedPacket:(int)packet
{
  selfCopy = self;
  currentPacket = self->_currentPacket;
  if (currentPacket)
  {
    completion = [(BTVCPacket *)currentPacket completion];

    if (completion)
    {
      obj = [(BTVCPacket *)selfCopy->_currentPacket completion];
      packet = [(BTVCPacket *)selfCopy->_currentPacket packet];
      if (packet)
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
        selfCopy = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1, selfCopy];
        v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:packet userInfo:selfCopy];
      }

      else
      {
        v13 = 0;
      }

      obj[2](obj, packet, v13);
      if (packet)
      {
      }
    }

    v14 = selfCopy->_currentPacket;
    selfCopy->_currentPacket = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obja = selfCopy->_packetSendQueue;
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
        completion2 = [v18 completion];
        v20 = completion2 == 0;

        if (!v20)
        {
          completion3 = [v18 completion];
          packet2 = [v18 packet];
          if (packet)
          {
            v33 = NSLocalizedDescriptionKey;
            v23 = [NSString stringWithUTF8String:DebugGetErrorString()];
            packet = v23;
            v24 = @"?";
            if (v23)
            {
              v24 = v23;
            }

            v34 = v24;
            v6 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:packet userInfo:v6];
            v25 = v7;
          }

          else
          {
            v25 = 0;
          }

          (completion3)[2](completion3, packet2, v25);
          if (packet)
          {
          }
        }
      }

      v15 = [(NSMutableArray *)obja countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v15);
  }

  [(NSMutableArray *)selfCopy->_packetSendQueue removeAllObjects];
}

- (void)didSendPacket:(id)packet error:(id)error
{
  packetCopy = packet;
  errorCopy = error;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[BTVCPacketControl didSendPacket:error:]";
    v20 = 2112;
    v21 = packetCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s packet %@", &v18, 0x16u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  currentPacket = self->_currentPacket;
  if (currentPacket)
  {
    completion = [(BTVCPacket *)currentPacket completion];
    v11 = completion == 0;

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

      completion2 = [(BTVCPacket *)self->_currentPacket completion];
      v15 = (completion2)[2](completion2, packetCopy, errorCopy);

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

- (void)didReceiveData:(id)data
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
          completion = [(BTVCPacket *)v9 completion];

          if (completion)
          {
            completion2 = [(BTVCPacket *)self->_currentPacket completion];
            packet = [(BTVCPacket *)self->_currentPacket packet];
            v14 = CBErrorF();
            (completion2)[2](completion2, packet, v14);
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
              completion3 = [v20 completion];

              if (completion3)
              {
                completion4 = [v20 completion];
                packet2 = [v20 packet];
                v25 = CBErrorF();
                (completion4)[2](completion4, packet2, v25);
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