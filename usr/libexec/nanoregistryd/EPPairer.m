@interface EPPairer
- (BOOL)isClassicDevice;
- (EPPairer)initWithDevice:(id)a3 withDelegate:(id)a4 pairerList:(id)a5;
- (id)initBase;
- (id)pairer:(id)a3 newEndpointWithDelegate:(id)a4;
- (void)dealloc;
- (void)invalidateWithError:(id)a3;
- (void)pairer:(id)a3 completedWithError:(id)a4;
- (void)pairer:(id)a3 requestWithType:(int64_t)a4 passkey:(id)a5;
- (void)pairerDidBeginToPair:(id)a3;
- (void)respondWithType:(int64_t)a3 accept:(BOOL)a4 data:(id)a5;
- (void)update;
@end

@implementation EPPairer

- (id)initBase
{
  v9.receiver = self;
  v9.super_class = EPPairer;
  v2 = [(EPPairer *)&v9 init];
  if (v2)
  {
    v3 = sub_1000A9948();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = sub_1000A9948();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138412546;
        v11 = v7;
        v12 = 2048;
        v13 = v2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "init %@[%p]", buf, 0x16u);
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_1000A9948();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000A9948();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412546;
      v10 = v7;
      v11 = 2048;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dealloc %@[%p]", buf, 0x16u);
    }
  }

  [(EPPairerList *)self->_pairerList removePairer:self];
  v8.receiver = self;
  v8.super_class = EPPairer;
  [(EPPairer *)&v8 dealloc];
}

- (EPPairer)initWithDevice:(id)a3 withDelegate:(id)a4 pairerList:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(EPPairer *)self initBase];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 6, a3);
    objc_storeStrong(&v13->_delegate, a4);
    objc_storeStrong(&v13->_pairerList, a5);
    v14 = +[EPFactory sharedFactory];
    v15 = [v14 agentManager];
    v16 = [v15 newAgentWithDelegate:v13 fromCentral:{objc_msgSend(v9, "isPeripheral")}];
    agent = v13->_agent;
    v13->_agent = v16;

    if (([v9 isPeripheral] & 1) == 0)
    {
      delegate = v13->_delegate;
      if (objc_opt_respondsToSelector())
      {
        v19 = +[EPFactory queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10005E19C;
        block[3] = &unk_100175660;
        v22 = v13;
        dispatch_async(v19, block);
      }
    }
  }

  return v13;
}

- (BOOL)isClassicDevice
{
  v3 = [(EPDevice *)self->_device info];
  if ([v3 hasClassicDevice])
  {
    v4 = self->_type == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)respondWithType:(int64_t)a3 accept:(BOOL)a4 data:(id)a5
{
  v8 = a5;
  v9 = sub_1000A98C0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = sub_1000A98C0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ExtensiblePair EPPairer respondWithType:accept:data: called", v13, 2u);
    }
  }

  self->_shouldRespond = 1;
  self->_type = a3;
  self->_accept = a4;
  data = self->_data;
  self->_data = v8;

  [(EPPairer *)self update];
}

- (void)update
{
  if (self->_shouldRespond)
  {
    if ([(EPPairer *)self isClassicDevice])
    {
      self->_shouldRespond = 0;
      v3 = +[EPFactory queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005E5D0;
      block[3] = &unk_100175660;
      block[4] = self;
      dispatch_async(v3, block);
LABEL_4:

      return;
    }

    if ([(EPResource *)self->_agent availability]== 1)
    {
      v20 = [(EPDevice *)self->_device pairingConnector];
      if ([v20 availability] == 1)
      {
        v4 = [(EPDevice *)self->_device pipe];
        if ([v4 availability] == 1)
        {
          v5 = [(EPDevice *)self->_device pairingPhase];

          if (v5 == 3)
          {
            self->_shouldRespond = 0;
            v6 = sub_1000A98C0();
            v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

            if (v7)
            {
              v8 = sub_1000A98C0();
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                v9 = [(EPDevice *)self->_device info];
                v10 = [v9 peer];
                v11 = [v10 identifier];
                v12 = [v11 UUIDString];
                v13 = [EPDevice stringFromCBPairingType:self->_type];
                v14 = v13;
                v15 = @"NO";
                v16 = !self->_accept;
                data = self->_data;
                *buf = 138413058;
                if (!v16)
                {
                  v15 = @"YES";
                }

                v23 = v12;
                v24 = 2112;
                v25 = v13;
                v26 = 2112;
                v27 = v15;
                v28 = 2112;
                v29 = data;
                _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPairingAgent respondToPairingRequest:%@ type:%@ accept:%@ data:%@", buf, 0x2Au);
              }
            }

            v3 = [(EPPairingAgent *)self->_agent agent];
            v18 = [(EPDevice *)self->_device info];
            v19 = [v18 peer];
            [v3 respondToPairingRequest:v19 type:self->_type accept:self->_accept data:self->_data];

            goto LABEL_4;
          }

          return;
        }
      }
    }
  }
}

- (void)invalidateWithError:(id)a3
{
  v4 = a3;
  v5 = sub_1000A98C0();
  v6 = v5;
  if (v4)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = sub_1000A98C0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001007F8(v4, v8);
      }

LABEL_8:
    }
  }

  else
  {
    v9 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v8 = sub_1000A98C0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ExtensiblePair EPPairer invalidateWithError: called with no error", v10, 2u);
      }

      goto LABEL_8;
    }
  }

  [(EPDevice *)self->_device cancelPairingWithError:v4];
}

- (id)pairer:(id)a3 newEndpointWithDelegate:(id)a4
{
  v5 = a4;
  v6 = sub_1000A98C0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = sub_1000A98C0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      delegate = self->_delegate;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = self->_delegate;
      v15 = 138412802;
      v16 = self;
      v17 = 2112;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling pairer:newEndpointWithDelegate: with pairer %@ on %@[%p]", &v15, 0x20u);
    }
  }

  v13 = [(EPPairerDelegate *)self->_delegate pairer:self newEndpointWithDelegate:v5];

  return v13;
}

- (void)pairer:(id)a3 completedWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000A98C0();
  v9 = v8;
  if (v7)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = sub_1000A98C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100100870(self, v7, v11);
      }

LABEL_8:
    }
  }

  else
  {
    v12 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v11 = sub_1000A98C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        delegate = self->_delegate;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = self->_delegate;
        v18 = 138412802;
        v19 = self;
        v20 = 2112;
        v21 = v15;
        v22 = 2048;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling pairer:completedWithError: with pairer %@ on %@[%p] with no error", &v18, 0x20u);
      }

      goto LABEL_8;
    }
  }

  [(EPPairerDelegate *)self->_delegate pairer:self completedWithError:v7];
  v17 = self->_delegate;
  self->_delegate = 0;
}

- (void)pairer:(id)a3 requestWithType:(int64_t)a4 passkey:(id)a5
{
  v7 = a5;
  v8 = sub_1000A98C0();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = sub_1000A98C0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      delegate = self->_delegate;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = self->_delegate;
      v15 = [EPDevice stringFromCBPairingType:a4];
      v16 = 138413314;
      v17 = self;
      v18 = 2112;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling pairer:requestWithType: with pairer %@ on %@[%p] with type %@ passkey %@", &v16, 0x34u);
    }
  }

  [(EPPairerDelegate *)self->_delegate pairer:self requestWithType:a4 passkey:v7];
}

- (void)pairerDidBeginToPair:(id)a3
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v5 = sub_1000A98C0();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = sub_1000A98C0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_delegate;
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = self->_delegate;
        v12 = 138412802;
        v13 = self;
        v14 = 2112;
        v15 = v10;
        v16 = 2048;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Calling pairerDidBeginToPair: with pairer %@ on %@[%p]", &v12, 0x20u);
      }
    }

    [(EPPairerDelegate *)self->_delegate pairerDidBeginToPair:self];
  }
}

@end