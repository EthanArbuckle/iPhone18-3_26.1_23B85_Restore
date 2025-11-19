@interface RPPrivateDaemon
+ (id)sharedPrivateDaemon;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RPPrivateDaemon)init;
- (id)descriptionWithLevel:(int)a3;
- (void)_invalidate;
- (void)_invalidated;
- (void)_processAnnouncementPtr:(const char *)a3 end:(const char *)a4;
- (void)_processAnswerPtr:(const char *)a3 end:(const char *)a4;
- (void)_processPacketPtr:(const char *)a3 end:(const char *)a4;
- (void)_processProbePtr:(const char *)a3 end:(const char *)a4;
- (void)_processQueryPtr:(const char *)a3 end:(const char *)a4;
- (void)_processResponsePtr:(const char *)a3 end:(const char *)a4;
- (void)_update;
- (void)_xpcConnectionInvalidated:(id)a3;
- (void)activate;
- (void)addAdvertiser:(id)a3 completion:(id)a4;
- (void)addDiscovery:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)removeAdvertiser:(id)a3 completion:(id)a4;
- (void)removeDiscovery:(id)a3 completion:(id)a4;
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

- (id)descriptionWithLevel:(int)a3
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
          v11 = [v9 xpcCnx];
          v18 = [v11 processIdentifier];
          NSAppendPrintF();
          v10 = v4;

          v4 = v11;
        }

        v12 = [v9 activatedAdvertiser];
        if (v12)
        {
          v18 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v13 = v10;

          v10 = v13;
        }

        v14 = [v9 activatedDiscovery];
        if (v14)
        {
          v18 = CUDescriptionWithLevel();
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

- (void)_processPacketPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 <= 0)
  {
    sub_100126B10();
    return;
  }

  v5 = *a3;
  v4 = a3 + 1;
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

- (void)_processProbePtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 <= 31 || a4 - a3 - 32 <= 3)
  {
    sub_100126BD0();
  }

  else if (a4 - (a3 + 36) <= 63)
  {
    sub_100126B70();
  }

  else if (dword_1001D4A70 <= 30)
  {
    v4 = *(a3 + 8);
    if (dword_1001D4A70 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_processResponsePtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 <= 31)
  {
    sub_100126C90();
  }

  else if (a4 - (a3 + 32) <= 95)
  {
    sub_100126C30();
  }

  else if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_processAnnouncementPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 <= 31 || a4 - a3 - 32 <= 3)
  {
    sub_100126D50();
  }

  else if (a4 - (a3 + 36) <= 63)
  {
    sub_100126CF0();
  }

  else if (dword_1001D4A70 <= 30)
  {
    v4 = *(a3 + 8);
    if (dword_1001D4A70 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)_processQueryPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 <= 31)
  {
    sub_100126DB0(dword_1001D4A70 < 31, dword_1001D4A70);
  }

  else if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_processAnswerPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 <= 31)
  {
    sub_100126E04(dword_1001D4A70 < 31, dword_1001D4A70);
  }

  else if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)addAdvertiser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A44A4;
  block[3] = &unk_1001AEC08;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)removeAdvertiser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4628;
  block[3] = &unk_1001AEC08;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)addDiscovery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4848;
  block[3] = &unk_1001AEC08;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)removeDiscovery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A49CC;
  block[3] = &unk_1001AEC08;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(RPPrivateXPCConnection);
  [(RPPrivateXPCConnection *)v6 setDaemon:self];
  [(RPPrivateXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  [(RPPrivateXPCConnection *)v6 setXpcCnx:v5];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  [v5 _setQueue:self->_dispatchQueue];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPPrivateDiscoveryXPCDaemonInterface];
  [v5 setExportedInterface:v10];

  [v5 setExportedObject:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A4CD0;
  v13[3] = &unk_1001AB488;
  v13[4] = self;
  v13[5] = v6;
  [v5 setInvalidationHandler:v13];
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPPrivateDiscoveryXPCClientInterface];
  [v5 setRemoteObjectInterface:v11];

  [v5 resume];
  if (dword_1001D4A70 <= 20 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_100126E58(v5);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (dword_1001D4A70 <= 20)
  {
    if (dword_1001D4A70 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100126E9C(v4);
      v4 = v6;
    }
  }

  [v4 xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
  [(RPPrivateDaemon *)self _update];
}

@end