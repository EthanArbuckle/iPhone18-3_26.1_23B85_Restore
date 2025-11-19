@interface RPPrivateXPCConnection
- (BOOL)_entitledAndReturnError:(id *)a3;
- (void)xpcConnectionInvalidated;
- (void)xpcPrivateAdvertiserActivate:(id)a3 completion:(id)a4;
- (void)xpcPrivateAdvertiserUpdate:(id)a3 completion:(id)a4;
- (void)xpcPrivateDiscoveryActivate:(id)a3 completion:(id)a4;
- (void)xpcPrivateDiscoveryUpdate:(id)a3 completion:(id)a4;
@end

@implementation RPPrivateXPCConnection

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1001D4A70 <= 90 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_100126F00(p_xpcCnx);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else if (a3)
  {
LABEL_9:
    v9 = RPErrorF();
    v10 = v9;
    result = 0;
    *a3 = v9;
    return result;
  }

  return 0;
}

- (void)xpcConnectionInvalidated
{
  v3 = self->_activatedAdvertiser;
  if (v3)
  {
    if (dword_1001D4A70 < 31 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100126F50(&self->_xpcCnx);
    }

    if (!self->_direct)
    {
      [(RPPrivateAdvertiser *)v3 invalidate];
    }

    activatedAdvertiser = self->_activatedAdvertiser;
    self->_activatedAdvertiser = 0;
  }

  v5 = self->_activatedDiscovery;
  if (v5)
  {
    if (dword_1001D4A70 < 31 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100126F50(&self->_xpcCnx);
    }

    if (!self->_direct)
    {
      [(RPPrivateDiscovery *)v5 invalidate];
    }

    activatedDiscovery = self->_activatedDiscovery;
    self->_activatedDiscovery = 0;
  }

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;
}

- (void)xpcPrivateAdvertiserActivate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12 = 0;
  v9 = [(RPPrivateXPCConnection *)self _entitledAndReturnError:&v12];
  v10 = v12;
  v11 = v10;
  if (v9)
  {
    if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100126FA4(self);
    }

    objc_storeStrong(&self->_activatedAdvertiser, a3);
    v11 = 0;
  }

  (v8)[2](v8, v11);
}

- (void)xpcPrivateAdvertiserUpdate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(RPPrivateXPCConnection *)self _entitledAndReturnError:&v11];
  v9 = v11;
  v10 = v9;
  if (v8)
  {
    if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100126FF0(self);
    }

    v10 = 0;
  }

  (v7)[2](v7, v10);
}

- (void)xpcPrivateDiscoveryActivate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12 = 0;
  v9 = [(RPPrivateXPCConnection *)self _entitledAndReturnError:&v12];
  v10 = v12;
  v11 = v10;
  if (v9)
  {
    if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_10012703C(self);
    }

    objc_storeStrong(&self->_activatedDiscovery, a3);
    v11 = 0;
  }

  (v8)[2](v8, v11);
}

- (void)xpcPrivateDiscoveryUpdate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(RPPrivateXPCConnection *)self _entitledAndReturnError:&v11];
  v9 = v11;
  v10 = v9;
  if (v8)
  {
    if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
    {
      sub_100127088(self);
    }

    v10 = 0;
  }

  (v7)[2](v7, v10);
}

@end