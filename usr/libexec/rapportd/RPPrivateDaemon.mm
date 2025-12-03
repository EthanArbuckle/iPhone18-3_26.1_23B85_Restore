@interface RPPrivateDaemon
+ (id)sharedPrivateDaemon;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RPPrivateDaemon)init;
- (id)descriptionWithLevel:(int)level;
- (void)_invalidate;
- (void)_invalidated;
- (void)_processAnnouncementPtr:(const char *)ptr end:(const char *)end;
- (void)_processAnswerPtr:(const char *)ptr end:(const char *)end;
- (void)_processPacketPtr:(const char *)ptr end:(const char *)end;
- (void)_processProbePtr:(const char *)ptr end:(const char *)end;
- (void)_processQueryPtr:(const char *)ptr end:(const char *)end;
- (void)_processResponsePtr:(const char *)ptr end:(const char *)end;
- (void)_update;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)addAdvertiser:(id)advertiser completion:(id)completion;
- (void)addDiscovery:(id)discovery completion:(id)completion;
- (void)invalidate;
- (void)removeAdvertiser:(id)advertiser completion:(id)completion;
- (void)removeDiscovery:(id)discovery completion:(id)completion;
@end

@implementation RPPrivateDaemon

+ (id)sharedPrivateDaemon
{
  if (qword_1001D6500 != -1)
  {
    sub_100126A68();
  }

  v3 = qword_1001D64F8;

  return v3;
}

- (RPPrivateDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPPrivateDaemon;
  v2 = [(RPPrivateDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    objc_storeStrong(&gRPPrivateDaemon, v3);
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  v24 = 0;
  v17 = [(NSMutableSet *)self->_xpcConnections count];
  NSAppendPrintF();
  v4 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_xpcConnections;
  v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v20 objects:v25 count:16, v17];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 direct])
        {
          NSAppendPrintF();
          v10 = v4;
        }

        else
        {
          xpcCnx = [v9 xpcCnx];
          processIdentifier = [xpcCnx processIdentifier];
          NSAppendPrintF();
          v10 = v4;

          v4 = xpcCnx;
        }

        activatedAdvertiser = [v9 activatedAdvertiser];
        if (activatedAdvertiser)
        {
          processIdentifier = CUDescriptionWithLevel();
          NSAppendPrintF();
          v13 = v10;

          v10 = v13;
        }

        activatedDiscovery = [v9 activatedDiscovery];
        if (activatedDiscovery)
        {
          processIdentifier = CUDescriptionWithLevel();
          NSAppendPrintF();
          v15 = v10;

          v10 = v15;
        }

        NSAppendPrintF();
        v4 = v10;
      }

      v6 = [(NSMutableSet *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A3C44;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A3D78;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v8 = v2;
    self->_invalidateCalled = 1;
    if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100126A98();
    }

    [(NSXPCListener *)self->_xpcListener invalidate:v3];
    xpcListener = self->_xpcListener;
    self->_xpcListener = 0;

    [(RPPrivateDaemon *)self _invalidated];
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcListener)
  {
    self->_invalidateDone = 1;
    if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100126AB4();
    }
  }
}

- (void)_update
{
  if (self->_prefPrivateDiscoveryEnabled)
  {
    [(RPPrivateDaemon *)self _ensureStarted];
  }

  else
  {
    [(RPPrivateDaemon *)self _ensureStopped];
  }
}

- (void)_processPacketPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr <= 0)
  {
    sub_100126B10();
    return;
  }

  v5 = *ptr;
  v4 = ptr + 1;
  v6 = v5 & 0x1F;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {

      [(RPPrivateDaemon *)self _processProbePtr:v4 end:?];
    }

    else
    {
      if (v6 != 2)
      {
LABEL_23:
        if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
        {
          sub_100126AD0();
        }

        return;
      }

      [(RPPrivateDaemon *)self _processResponsePtr:v4 end:?];
    }
  }

  else
  {
    switch(v6)
    {
      case 3u:

        [(RPPrivateDaemon *)self _processAnnouncementPtr:v4 end:?];
        break;
      case 4u:

        [(RPPrivateDaemon *)self _processQueryPtr:v4 end:?];
        break;
      case 5u:

        [(RPPrivateDaemon *)self _processAnswerPtr:v4 end:?];
        return;
      default:
        goto LABEL_23;
    }
  }
}

- (void)_processProbePtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr <= 31 || end - ptr - 32 <= 3)
  {
    sub_100126BD0();
  }

  else if (end - (ptr + 36) <= 63)
  {
    sub_100126B70();
  }

  else if (dword_1001D4A70 <= 30)
  {
    v4 = *(ptr + 8);
    if (dword_1001D4A70 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_processResponsePtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr <= 31)
  {
    sub_100126C90();
  }

  else if (end - (ptr + 32) <= 95)
  {
    sub_100126C30();
  }

  else if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_processAnnouncementPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr <= 31 || end - ptr - 32 <= 3)
  {
    sub_100126D50();
  }

  else if (end - (ptr + 36) <= 63)
  {
    sub_100126CF0();
  }

  else if (dword_1001D4A70 <= 30)
  {
    v4 = *(ptr + 8);
    if (dword_1001D4A70 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_processQueryPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr <= 31)
  {
    sub_100126DB0(dword_1001D4A70 < 31, dword_1001D4A70);
  }

  else if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_processAnswerPtr:(const char *)ptr end:(const char *)end
{
  if (end - ptr <= 31)
  {
    sub_100126E04(dword_1001D4A70 < 31, dword_1001D4A70);
  }

  else if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)addAdvertiser:(id)advertiser completion:(id)completion
{
  advertiserCopy = advertiser;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A44A4;
  block[3] = &unk_1001AEC08;
  block[4] = self;
  v12 = advertiserCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = advertiserCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)removeAdvertiser:(id)advertiser completion:(id)completion
{
  advertiserCopy = advertiser;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4628;
  block[3] = &unk_1001AEC08;
  block[4] = self;
  v12 = advertiserCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = advertiserCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)addDiscovery:(id)discovery completion:(id)completion
{
  discoveryCopy = discovery;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4848;
  block[3] = &unk_1001AEC08;
  block[4] = self;
  v12 = discoveryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = discoveryCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)removeDiscovery:(id)discovery completion:(id)completion
{
  discoveryCopy = discovery;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A49CC;
  block[3] = &unk_1001AEC08;
  block[4] = self;
  v12 = discoveryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = discoveryCopy;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = objc_alloc_init(RPPrivateXPCConnection);
  [(RPPrivateXPCConnection *)v6 setDaemon:self];
  [(RPPrivateXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  [(RPPrivateXPCConnection *)v6 setXpcCnx:connectionCopy];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPPrivateDiscoveryXPCDaemonInterface];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A4CD0;
  v13[3] = &unk_1001AB488;
  v13[4] = self;
  v13[5] = v6;
  [connectionCopy setInvalidationHandler:v13];
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPPrivateDiscoveryXPCClientInterface];
  [connectionCopy setRemoteObjectInterface:v11];

  [connectionCopy resume];
  if (dword_1001D4A70 <= 20 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_100126E58(connectionCopy);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v6 = invalidatedCopy;
  if (dword_1001D4A70 <= 20)
  {
    if (dword_1001D4A70 != -1 || (v5 = _LogCategory_Initialize(), invalidatedCopy = v6, v5))
    {
      sub_100126E9C(invalidatedCopy);
      invalidatedCopy = v6;
    }
  }

  [invalidatedCopy xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
  [(RPPrivateDaemon *)self _update];
}

@end