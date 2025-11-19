@interface BTVCLinkClient
+ (id)sharedClient;
- (BTVCLinkClient)init;
- (id)addBTVCBonjourLinkDelegate:(id)a3;
- (void)btvcBonjourLink:(id)a3 didConnectToPeer:(id)a4 parameters:(id)a5 role:(int64_t)a6 error:(id)a7;
- (void)btvcBonjourLink:(id)a3 didDeferAdvertisingType:(int64_t)a4;
- (void)btvcBonjourLink:(id)a3 didDisconnectFromPeer:(id)a4 parameters:(id)a5 error:(id)a6;
- (void)btvcBonjourLink:(id)a3 didDiscoverType:(int64_t)a4 withData:(id)a5 fromPeer:(id)a6 peerInfo:(id)a7;
- (void)btvcBonjourLink:(id)a3 didFailToStartAdvertisingOfType:(int64_t)a4 withError:(id)a5;
- (void)btvcBonjourLink:(id)a3 didFailToStartScanningForType:(int64_t)a4 WithError:(id)a5;
- (void)btvcBonjourLink:(id)a3 didLosePeer:(id)a4 type:(int64_t)a5;
- (void)btvcBonjourLink:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5;
- (void)btvcBonjourLink:(id)a3 didSendData:(id)a4 toPeer:(id)a5 error:(id)a6;
- (void)btvcBonjourLink:(id)a3 didStartAdvertisingType:(int64_t)a4;
- (void)btvcBonjourLink:(id)a3 didStartScanningForType:(int64_t)a4;
- (void)btvcBonjourLink:(id)a3 didStopAdvertisingType:(int64_t)a4 withError:(id)a5;
- (void)btvcBonjourLinkDidUpdateState:(id)a3;
- (void)removeBTVCBonjourLinkDelegate:(id)a3;
@end

@implementation BTVCLinkClient

+ (id)sharedClient
{
  if (qword_100B6D308 != -1)
  {
    sub_100821B14();
  }

  v3 = qword_100B6D310;

  return v3;
}

- (BTVCLinkClient)init
{
  v5.receiver = self;
  v5.super_class = BTVCLinkClient;
  v2 = [(BTVCLinkClient *)&v5 init];
  if (v2)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "[BTVCLinkClient init]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
  }

  return v2;
}

- (id)addBTVCBonjourLinkDelegate:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[BTVCLinkClient addBTVCBonjourLinkDelegate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  if (!v6->_btvcBonjourLink)
  {
    v7 = [[BTVCBonjourLink alloc] initWithDelegate:v6 queue:v6->_dispatchQueue];
    btvcBonjourLink = v6->_btvcBonjourLink;
    v6->_btvcBonjourLink = v7;
  }

  btvcBonjourLinkDelegates = v6->_btvcBonjourLinkDelegates;
  if (!btvcBonjourLinkDelegates)
  {
    v10 = objc_alloc_init(NSMutableSet);
    v11 = v6->_btvcBonjourLinkDelegates;
    v6->_btvcBonjourLinkDelegates = v10;

    btvcBonjourLinkDelegates = v6->_btvcBonjourLinkDelegates;
  }

  [(NSMutableSet *)btvcBonjourLinkDelegates addObject:v4];
  v12 = v6->_btvcBonjourLink;
  objc_sync_exit(v6);

  return v12;
}

- (void)removeBTVCBonjourLinkDelegate:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[BTVCLinkClient removeBTVCBonjourLinkDelegate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  [(NSMutableSet *)v6->_btvcBonjourLinkDelegates removeObject:v4];
  if (![(NSMutableSet *)v6->_btvcBonjourLinkDelegates count])
  {
    v7 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[BTVCLinkClient removeBTVCBonjourLinkDelegate:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Invalidate BTVCBonjourLink", &v9, 0xCu);
    }

    [(BTVCBonjourLink *)v6->_btvcBonjourLink invalidate];
    btvcBonjourLink = v6->_btvcBonjourLink;
    v6->_btvcBonjourLink = 0;
  }

  objc_sync_exit(v6);
}

- (void)btvcBonjourLinkDidUpdateState:(id)a3
{
  v12 = a3;
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[BTVCLinkClient btvcBonjourLinkDidUpdateState:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableSet *)v5->_btvcBonjourLinkDelegates allObjects];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 dispatchQueue];
          if (v11 == v5->_dispatchQueue)
          {
            [v10 btvcBonjourLinkDidUpdateState:v12];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1003841CC;
            block[3] = &unk_100AE0B60;
            block[4] = v10;
            v14 = v12;
            dispatch_async(v11, block);
          }
        }

        else
        {
          v11 = 0;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)btvcBonjourLink:(id)a3 didStartAdvertisingType:(int64_t)a4
{
  v15 = a3;
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[BTVCLinkClient btvcBonjourLink:didStartAdvertisingType:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [(NSMutableSet *)v7->_btvcBonjourLinkDelegates allObjects];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 dispatchQueue];
          if (v14 == v8->_dispatchQueue)
          {
            [v13 btvcBonjourLink:v15 didStartAdvertisingType:a4];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100384480;
            block[3] = &unk_100AE25C8;
            block[4] = v13;
            v17 = v15;
            v18 = a4;
            dispatch_async(v14, block);
          }
        }

        else
        {
          v14 = 0;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)btvcBonjourLink:(id)a3 didStopAdvertisingType:(int64_t)a4 withError:(id)a5
{
  v15 = a3;
  v16 = a5;
  v8 = self;
  objc_sync_enter(v8);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(NSMutableSet *)v8->_btvcBonjourLinkDelegates allObjects];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 dispatchQueue];
          if (v14 == v8->_dispatchQueue)
          {
            [v13 btvcBonjourLink:v15 didStopAdvertisingType:a4 withError:v16];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100384714;
            block[3] = &unk_100AEE758;
            block[4] = v13;
            v18 = v15;
            v20 = a4;
            v19 = v16;
            dispatch_async(v14, block);
          }
        }

        else
        {
          v14 = 0;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)btvcBonjourLink:(id)a3 didDeferAdvertisingType:(int64_t)a4
{
  v14 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [(NSMutableSet *)v6->_btvcBonjourLinkDelegates allObjects];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v12 dispatchQueue];
          if (v13 == v7->_dispatchQueue)
          {
            [v12 btvcBonjourLink:v14 didDeferAdvertisingType:a4];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100384974;
            block[3] = &unk_100AE25C8;
            block[4] = v12;
            v16 = v14;
            v17 = a4;
            dispatch_async(v13, block);
          }
        }

        else
        {
          v13 = 0;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
}

- (void)btvcBonjourLink:(id)a3 didFailToStartAdvertisingOfType:(int64_t)a4 withError:(id)a5
{
  v15 = a3;
  v16 = a5;
  v8 = self;
  objc_sync_enter(v8);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(NSMutableSet *)v8->_btvcBonjourLinkDelegates allObjects];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 dispatchQueue];
          if (v14 == v8->_dispatchQueue)
          {
            [v13 btvcBonjourLink:v15 didFailToStartAdvertisingOfType:a4 withError:v16];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100384C08;
            block[3] = &unk_100AEE758;
            block[4] = v13;
            v18 = v15;
            v20 = a4;
            v19 = v16;
            dispatch_async(v14, block);
          }
        }

        else
        {
          v14 = 0;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)btvcBonjourLink:(id)a3 didStartScanningForType:(int64_t)a4
{
  v14 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [(NSMutableSet *)v6->_btvcBonjourLinkDelegates allObjects];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v12 dispatchQueue];
          if (v13 == v7->_dispatchQueue)
          {
            [v12 btvcBonjourLink:v14 didStartScanningForType:a4];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100384E68;
            block[3] = &unk_100AE25C8;
            block[4] = v12;
            v16 = v14;
            v17 = a4;
            dispatch_async(v13, block);
          }
        }

        else
        {
          v13 = 0;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
}

- (void)btvcBonjourLink:(id)a3 didFailToStartScanningForType:(int64_t)a4 WithError:(id)a5
{
  v15 = a3;
  v16 = a5;
  v8 = self;
  objc_sync_enter(v8);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(NSMutableSet *)v8->_btvcBonjourLinkDelegates allObjects];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 dispatchQueue];
          if (v14 == v8->_dispatchQueue)
          {
            [v13 btvcBonjourLink:v15 didFailToStartScanningForType:a4 WithError:v16];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1003850FC;
            block[3] = &unk_100AEE758;
            block[4] = v13;
            v18 = v15;
            v20 = a4;
            v19 = v16;
            dispatch_async(v14, block);
          }
        }

        else
        {
          v14 = 0;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)btvcBonjourLink:(id)a3 didDiscoverType:(int64_t)a4 withData:(id)a5 fromPeer:(id)a6 peerInfo:(id)a7
{
  v20 = a3;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v12 = self;
  objc_sync_enter(v12);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v12;
  v13 = [(NSMutableSet *)v12->_btvcBonjourLinkDelegates allObjects];
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = *v33;
    v19 = v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          v18 = [v17 dispatchQueue];
          if (v18 == obj->_dispatchQueue)
          {
            [v17 btvcBonjourLink:v20 didDiscoverType:a4 withData:v21 fromPeer:v22 peerInfo:v23];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            v26[0] = sub_1003853FC;
            v26[1] = &unk_100AEE780;
            v26[2] = v17;
            v27 = v20;
            v31 = a4;
            v28 = v21;
            v29 = v22;
            v30 = v23;
            dispatch_async(v18, block);
          }
        }

        else
        {
          v18 = 0;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  objc_sync_exit(obj);
}

- (void)btvcBonjourLink:(id)a3 didLosePeer:(id)a4 type:(int64_t)a5
{
  v15 = a3;
  v16 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(NSMutableSet *)v8->_btvcBonjourLinkDelegates allObjects];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 dispatchQueue];
          if (v14 == v8->_dispatchQueue)
          {
            [v13 btvcBonjourLink:v15 didLosePeer:v16 type:a5];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100385690;
            block[3] = &unk_100AEE758;
            block[4] = v13;
            v18 = v15;
            v19 = v16;
            v20 = a5;
            dispatch_async(v14, block);
          }
        }

        else
        {
          v14 = 0;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)btvcBonjourLink:(id)a3 didConnectToPeer:(id)a4 parameters:(id)a5 role:(int64_t)a6 error:(id)a7
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a7;
  v11 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[BTVCLinkClient btvcBonjourLink:didConnectToPeer:parameters:role:error:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12 = self;
  objc_sync_enter(v12);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = [(NSMutableSet *)v12->_btvcBonjourLinkDelegates allObjects];
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = *v33;
    v19 = v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          v18 = [v17 dispatchQueue];
          if (v18 == v12->_dispatchQueue)
          {
            [v17 btvcBonjourLink:v21 didConnectToPeer:v22 parameters:v23 role:a6 error:v24];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            v26[0] = sub_1003859DC;
            v26[1] = &unk_100AEE780;
            v26[2] = v17;
            v27 = v21;
            v28 = v22;
            v29 = v23;
            v31 = a6;
            v30 = v24;
            dispatch_async(v18, block);
          }
        }

        else
        {
          v18 = 0;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  objc_sync_exit(v12);
}

- (void)btvcBonjourLink:(id)a3 didDisconnectFromPeer:(id)a4 parameters:(id)a5 error:(id)a6
{
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v10 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[BTVCLinkClient btvcBonjourLink:didDisconnectFromPeer:parameters:error:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11 = self;
  objc_sync_enter(v11);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v11;
  v12 = [(NSMutableSet *)v11->_btvcBonjourLinkDelegates allObjects];
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v15 = *v34;
    *&v14 = 136315138;
    v22 = v14;
    do
    {
      v16 = 0;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v33 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          v18 = [v17 dispatchQueue];
          dispatchQueue = obj->_dispatchQueue;
          v20 = qword_100BCEA70;
          v21 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
          if (v18 == dispatchQueue)
          {
            if (v21)
            {
              *buf = v22;
              v39 = "[BTVCLinkClient btvcBonjourLink:didDisconnectFromPeer:parameters:error:]";
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: 1", buf, 0xCu);
            }

            [v17 btvcBonjourLink:v23 didDisconnectFromPeer:v24 parameters:v25 error:{v26, v22}];
          }

          else
          {
            if (v21)
            {
              *buf = v22;
              v39 = "[BTVCLinkClient btvcBonjourLink:didDisconnectFromPeer:parameters:error:]";
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: 2", buf, 0xCu);
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100385DD4;
            block[3] = &unk_100AEE7A8;
            block[4] = v17;
            v29 = v23;
            v30 = v24;
            v31 = v25;
            v32 = v26;
            dispatch_async(v18, block);
          }
        }

        else
        {
          v18 = 0;
        }

        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  objc_sync_exit(obj);
}

- (void)btvcBonjourLink:(id)a3 didSendData:(id)a4 toPeer:(id)a5 error:(id)a6
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v10 = self;
  objc_sync_enter(v10);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [(NSMutableSet *)v10->_btvcBonjourLinkDelegates allObjects];
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = *v29;
    v17 = v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = [v15 dispatchQueue];
          if (v16 == v10->_dispatchQueue)
          {
            [v15 btvcBonjourLink:v18 didSendData:v19 toPeer:v20 error:v21];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            v23[0] = sub_1003860BC;
            v23[1] = &unk_100AEE7A8;
            v23[2] = v15;
            v24 = v18;
            v25 = v19;
            v26 = v20;
            v27 = v21;
            dispatch_async(v16, block);
          }
        }

        else
        {
          v16 = 0;
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  objc_sync_exit(v10);
}

- (void)btvcBonjourLink:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v8 = self;
  objc_sync_enter(v8);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v9 = [(NSMutableSet *)v8->_btvcBonjourLinkDelegates allObjects];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v12 = *v29;
    *&v11 = 136315138;
    v19 = v11;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 dispatchQueue];
          dispatchQueue = obj->_dispatchQueue;
          v17 = qword_100BCEA70;
          v18 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
          if (v15 == dispatchQueue)
          {
            if (v18)
            {
              *buf = v19;
              v33 = "[BTVCLinkClient btvcBonjourLink:didReceiveData:fromPeer:]";
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: 1", buf, 0xCu);
            }

            [v14 btvcBonjourLink:v20 didReceiveData:v21 fromPeer:{v22, v19}];
          }

          else
          {
            if (v18)
            {
              *buf = v19;
              v33 = "[BTVCLinkClient btvcBonjourLink:didReceiveData:fromPeer:]";
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: 2", buf, 0xCu);
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100386434;
            block[3] = &unk_100AEE7D0;
            block[4] = v14;
            v25 = v20;
            v26 = v21;
            v27 = v22;
            dispatch_async(v15, block);
          }
        }

        else
        {
          v15 = 0;
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  objc_sync_exit(obj);
}

@end