@interface BTVCLinkClient
+ (id)sharedClient;
- (BTVCLinkClient)init;
- (id)addBTVCBonjourLinkDelegate:(id)delegate;
- (void)btvcBonjourLink:(id)link didConnectToPeer:(id)peer parameters:(id)parameters role:(int64_t)role error:(id)error;
- (void)btvcBonjourLink:(id)link didDeferAdvertisingType:(int64_t)type;
- (void)btvcBonjourLink:(id)link didDisconnectFromPeer:(id)peer parameters:(id)parameters error:(id)error;
- (void)btvcBonjourLink:(id)link didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer peerInfo:(id)info;
- (void)btvcBonjourLink:(id)link didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error;
- (void)btvcBonjourLink:(id)link didFailToStartScanningForType:(int64_t)type WithError:(id)error;
- (void)btvcBonjourLink:(id)link didLosePeer:(id)peer type:(int64_t)type;
- (void)btvcBonjourLink:(id)link didReceiveData:(id)data fromPeer:(id)peer;
- (void)btvcBonjourLink:(id)link didSendData:(id)data toPeer:(id)peer error:(id)error;
- (void)btvcBonjourLink:(id)link didStartAdvertisingType:(int64_t)type;
- (void)btvcBonjourLink:(id)link didStartScanningForType:(int64_t)type;
- (void)btvcBonjourLink:(id)link didStopAdvertisingType:(int64_t)type withError:(id)error;
- (void)btvcBonjourLinkDidUpdateState:(id)state;
- (void)removeBTVCBonjourLinkDelegate:(id)delegate;
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

- (id)addBTVCBonjourLinkDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[BTVCLinkClient addBTVCBonjourLinkDelegate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_btvcBonjourLink)
  {
    v7 = [[BTVCBonjourLink alloc] initWithDelegate:selfCopy queue:selfCopy->_dispatchQueue];
    btvcBonjourLink = selfCopy->_btvcBonjourLink;
    selfCopy->_btvcBonjourLink = v7;
  }

  btvcBonjourLinkDelegates = selfCopy->_btvcBonjourLinkDelegates;
  if (!btvcBonjourLinkDelegates)
  {
    v10 = objc_alloc_init(NSMutableSet);
    v11 = selfCopy->_btvcBonjourLinkDelegates;
    selfCopy->_btvcBonjourLinkDelegates = v10;

    btvcBonjourLinkDelegates = selfCopy->_btvcBonjourLinkDelegates;
  }

  [(NSMutableSet *)btvcBonjourLinkDelegates addObject:delegateCopy];
  v12 = selfCopy->_btvcBonjourLink;
  objc_sync_exit(selfCopy);

  return v12;
}

- (void)removeBTVCBonjourLinkDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[BTVCLinkClient removeBTVCBonjourLinkDelegate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates removeObject:delegateCopy];
  if (![(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates count])
  {
    v7 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[BTVCLinkClient removeBTVCBonjourLinkDelegate:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Invalidate BTVCBonjourLink", &v9, 0xCu);
    }

    [(BTVCBonjourLink *)selfCopy->_btvcBonjourLink invalidate];
    btvcBonjourLink = selfCopy->_btvcBonjourLink;
    selfCopy->_btvcBonjourLink = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)btvcBonjourLinkDidUpdateState:(id)state
{
  stateCopy = state;
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[BTVCLinkClient btvcBonjourLinkDidUpdateState:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v10 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v10 btvcBonjourLinkDidUpdateState:stateCopy];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1003841CC;
            block[3] = &unk_100AE0B60;
            block[4] = v10;
            v14 = stateCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)btvcBonjourLink:(id)link didStartAdvertisingType:(int64_t)type
{
  linkCopy = link;
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[BTVCLinkClient btvcBonjourLink:didStartAdvertisingType:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = selfCopy;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v13 dispatchQueue];
          if (dispatchQueue == v8->_dispatchQueue)
          {
            [v13 btvcBonjourLink:linkCopy didStartAdvertisingType:type];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100384480;
            block[3] = &unk_100AE25C8;
            block[4] = v13;
            v17 = linkCopy;
            typeCopy = type;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)btvcBonjourLink:(id)link didStopAdvertisingType:(int64_t)type withError:(id)error
{
  linkCopy = link;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v13 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v13 btvcBonjourLink:linkCopy didStopAdvertisingType:type withError:errorCopy];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100384714;
            block[3] = &unk_100AEE758;
            block[4] = v13;
            v18 = linkCopy;
            typeCopy = type;
            v19 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
}

- (void)btvcBonjourLink:(id)link didDeferAdvertisingType:(int64_t)type
{
  linkCopy = link;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = selfCopy;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v12 dispatchQueue];
          if (dispatchQueue == v7->_dispatchQueue)
          {
            [v12 btvcBonjourLink:linkCopy didDeferAdvertisingType:type];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100384974;
            block[3] = &unk_100AE25C8;
            block[4] = v12;
            v16 = linkCopy;
            typeCopy = type;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
}

- (void)btvcBonjourLink:(id)link didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error
{
  linkCopy = link;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v13 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v13 btvcBonjourLink:linkCopy didFailToStartAdvertisingOfType:type withError:errorCopy];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100384C08;
            block[3] = &unk_100AEE758;
            block[4] = v13;
            v18 = linkCopy;
            typeCopy = type;
            v19 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
}

- (void)btvcBonjourLink:(id)link didStartScanningForType:(int64_t)type
{
  linkCopy = link;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = selfCopy;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v12 dispatchQueue];
          if (dispatchQueue == v7->_dispatchQueue)
          {
            [v12 btvcBonjourLink:linkCopy didStartScanningForType:type];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100384E68;
            block[3] = &unk_100AE25C8;
            block[4] = v12;
            v16 = linkCopy;
            typeCopy = type;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
}

- (void)btvcBonjourLink:(id)link didFailToStartScanningForType:(int64_t)type WithError:(id)error
{
  linkCopy = link;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v13 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v13 btvcBonjourLink:linkCopy didFailToStartScanningForType:type WithError:errorCopy];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1003850FC;
            block[3] = &unk_100AEE758;
            block[4] = v13;
            v18 = linkCopy;
            typeCopy = type;
            v19 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
}

- (void)btvcBonjourLink:(id)link didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer peerInfo:(id)info
{
  linkCopy = link;
  dataCopy = data;
  peerCopy = peer;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = selfCopy;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v14 = [allObjects countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v17 dispatchQueue];
          if (dispatchQueue == obj->_dispatchQueue)
          {
            [v17 btvcBonjourLink:linkCopy didDiscoverType:type withData:dataCopy fromPeer:peerCopy peerInfo:infoCopy];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            v26[0] = sub_1003853FC;
            v26[1] = &unk_100AEE780;
            v26[2] = v17;
            v27 = linkCopy;
            typeCopy = type;
            v28 = dataCopy;
            v29 = peerCopy;
            v30 = infoCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [allObjects countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  objc_sync_exit(obj);
}

- (void)btvcBonjourLink:(id)link didLosePeer:(id)peer type:(int64_t)type
{
  linkCopy = link;
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v13 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v13 btvcBonjourLink:linkCopy didLosePeer:peerCopy type:type];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100385690;
            block[3] = &unk_100AEE758;
            block[4] = v13;
            v18 = linkCopy;
            v19 = peerCopy;
            typeCopy = type;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
}

- (void)btvcBonjourLink:(id)link didConnectToPeer:(id)peer parameters:(id)parameters role:(int64_t)role error:(id)error
{
  linkCopy = link;
  peerCopy = peer;
  parametersCopy = parameters;
  errorCopy = error;
  v11 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[BTVCLinkClient btvcBonjourLink:didConnectToPeer:parameters:role:error:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v14 = [allObjects countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v17 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v17 btvcBonjourLink:linkCopy didConnectToPeer:peerCopy parameters:parametersCopy role:role error:errorCopy];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            v26[0] = sub_1003859DC;
            v26[1] = &unk_100AEE780;
            v26[2] = v17;
            v27 = linkCopy;
            v28 = peerCopy;
            v29 = parametersCopy;
            roleCopy = role;
            v30 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [allObjects countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  objc_sync_exit(selfCopy);
}

- (void)btvcBonjourLink:(id)link didDisconnectFromPeer:(id)peer parameters:(id)parameters error:(id)error
{
  linkCopy = link;
  peerCopy = peer;
  parametersCopy = parameters;
  errorCopy = error;
  v10 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[BTVCLinkClient btvcBonjourLink:didDisconnectFromPeer:parameters:error:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = selfCopy;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v13 = [allObjects countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v17 = *(*(&v33 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v17 dispatchQueue];
          dispatchQueue = obj->_dispatchQueue;
          v20 = qword_100BCEA70;
          v21 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
          if (dispatchQueue == dispatchQueue)
          {
            if (v21)
            {
              *buf = v22;
              v39 = "[BTVCLinkClient btvcBonjourLink:didDisconnectFromPeer:parameters:error:]";
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: 1", buf, 0xCu);
            }

            [v17 btvcBonjourLink:linkCopy didDisconnectFromPeer:peerCopy parameters:parametersCopy error:{errorCopy, v22}];
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
            v29 = linkCopy;
            v30 = peerCopy;
            v31 = parametersCopy;
            v32 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [allObjects countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  objc_sync_exit(obj);
}

- (void)btvcBonjourLink:(id)link didSendData:(id)data toPeer:(id)peer error:(id)error
{
  linkCopy = link;
  dataCopy = data;
  peerCopy = peer;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v12 = [allObjects countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v15 dispatchQueue];
          if (dispatchQueue == selfCopy->_dispatchQueue)
          {
            [v15 btvcBonjourLink:linkCopy didSendData:dataCopy toPeer:peerCopy error:errorCopy];
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            v23[0] = sub_1003860BC;
            v23[1] = &unk_100AEE7A8;
            v23[2] = v15;
            v24 = linkCopy;
            v25 = dataCopy;
            v26 = peerCopy;
            v27 = errorCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [allObjects countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  objc_sync_exit(selfCopy);
}

- (void)btvcBonjourLink:(id)link didReceiveData:(id)data fromPeer:(id)peer
{
  linkCopy = link;
  dataCopy = data;
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = selfCopy;
  allObjects = [(NSMutableSet *)selfCopy->_btvcBonjourLinkDelegates allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v28 objects:v34 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          dispatchQueue = [v14 dispatchQueue];
          dispatchQueue = obj->_dispatchQueue;
          v17 = qword_100BCEA70;
          v18 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
          if (dispatchQueue == dispatchQueue)
          {
            if (v18)
            {
              *buf = v19;
              v33 = "[BTVCLinkClient btvcBonjourLink:didReceiveData:fromPeer:]";
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: 1", buf, 0xCu);
            }

            [v14 btvcBonjourLink:linkCopy didReceiveData:dataCopy fromPeer:{peerCopy, v19}];
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
            v25 = linkCopy;
            v26 = dataCopy;
            v27 = peerCopy;
            dispatch_async(dispatchQueue, block);
          }
        }

        else
        {
          dispatchQueue = 0;
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [allObjects countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  objc_sync_exit(obj);
}

@end