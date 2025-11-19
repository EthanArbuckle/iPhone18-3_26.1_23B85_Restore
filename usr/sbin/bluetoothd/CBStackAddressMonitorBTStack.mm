@interface CBStackAddressMonitorBTStack
- (id)_dataWithBTAddress:(unint64_t)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)activate;
- (void)addressChanged:(BOOL)a3;
- (void)forceNonConnectableAddressReadAndUpdate:(unsigned __int8)a3;
- (void)invalidate;
@end

@implementation CBStackAddressMonitorBTStack

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    NSAppendPrintF_safe();
    v3 = 0;
  }

  v4 = CUPrintNSDataAddress();
  v5 = CUPrintNSDataAddress();
  v8 = CUPrintNSDataAddress();
  NSAppendPrintF_safe();
  v6 = v3;

  return v3;
}

- (void)activate
{
  if (!self->_addressChangedHandler)
  {
    sub_10080F69C();
    goto LABEL_11;
  }

  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
LABEL_11:
    v4 = sub_10080F684();
    sub_10017F28C(v4, v5);
    return;
  }

  dispatch_assert_queue_V2(dispatchQueue);
  if (!self->_addedMonitor)
  {
    os_unfair_lock_lock(&unk_100B557B0);
    if (!qword_100B557B8)
    {
      operator new();
    }

    sub_10017F28C(qword_100B557B8, self);
    os_unfair_lock_unlock(&unk_100B557B0);
    self->_addedMonitor = 1;
  }

  [(CBStackAddressMonitorBTStack *)self addressChanged:1];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_addedMonitor)
  {
    os_unfair_lock_lock(&unk_100B557B0);
    if (qword_100B557B8)
    {
      sub_10017F424(qword_100B557B8, self);
    }

    os_unfair_lock_unlock(&unk_100B557B0);
    self->_addedMonitor = 0;
  }

  addressChangedHandler = self->_addressChangedHandler;
  self->_addressChangedHandler = 0;

  v5 = objc_retainBlock(self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  if (v5)
  {
    v5[2]();
  }
}

- (void)addressChanged:(BOOL)a3
{
  if (self->_addedMonitor)
  {
    v3 = a3;
    if (qword_100B508B0 != -1)
    {
      sub_10080F6B4();
    }

    v5 = [(CBStackAddressMonitorBTStack *)self _dataWithBTAddress:*(off_100B508A8 + 36)];
    connectableAddressData = self->_connectableAddressData;
    v7 = v5;
    v8 = connectableAddressData;
    v9 = v8;
    v10 = v7 != v8;
    if (v7 == v8)
    {

      v12 = v7;
    }

    else
    {
      if ((v7 != 0) != (v8 == 0))
      {
        v11 = [(NSData *)v7 isEqual:v8];

        if (v11)
        {
          v10 = 0;
          goto LABEL_12;
        }
      }

      else
      {
      }

      v13 = v7;
      v12 = self->_connectableAddressData;
      self->_connectableAddressData = v13;
    }

LABEL_12:
    if (qword_100B508B0 != -1)
    {
      sub_10080F6B4();
    }

    v14 = [(CBStackAddressMonitorBTStack *)self _dataWithBTAddress:*(off_100B508A8 + 37)];
    nonConnectableAddressData = self->_nonConnectableAddressData;
    v16 = v14;
    v17 = nonConnectableAddressData;
    v18 = v17;
    if (v16 == v17)
    {

      v20 = v16;
    }

    else
    {
      if ((v16 != 0) != (v17 == 0))
      {
        v19 = [(NSData *)v16 isEqual:v17];

        if (v19)
        {
LABEL_22:
          if (qword_100B508B0 != -1)
          {
            sub_10080F6B4();
          }

          v22 = [(CBStackAddressMonitorBTStack *)self _dataWithBTAddress:*(off_100B508A8 + 39)];
          nonConnectableSecondaryAddressData = self->_nonConnectableSecondaryAddressData;
          v24 = v22;
          v25 = nonConnectableSecondaryAddressData;
          v26 = v25;
          if (v24 == v25)
          {

            if (!v3)
            {
LABEL_30:
              if (!v10)
              {
                goto LABEL_38;
              }

LABEL_35:
              v30 = objc_retainBlock(self->_addressChangedHandler);
              v31 = v30;
              if (v30)
              {
                (*(v30 + 2))(v30);
              }

              goto LABEL_38;
            }
          }

          else
          {
            if ((v24 != 0) != (v25 == 0))
            {
              v27 = [(NSData *)v24 isEqual:v25];

              if (v27)
              {
                if (v3)
                {
                  goto LABEL_34;
                }

                goto LABEL_30;
              }
            }

            else
            {
            }

            objc_storeStrong(&self->_nonConnectableSecondaryAddressData, v22);
            if (!v3)
            {
              goto LABEL_35;
            }
          }

LABEL_34:
          RandomBytes();
          v28 = [(CBStackAddressMonitorBTStack *)self _dataWithBTAddress:?];
          fakeNonConnectableAddressData = self->_fakeNonConnectableAddressData;
          self->_fakeNonConnectableAddressData = v28;

LABEL_38:
          return;
        }
      }

      else
      {
      }

      v21 = v16;
      v20 = self->_nonConnectableAddressData;
      self->_nonConnectableAddressData = v21;
      v10 = 1;
    }

    goto LABEL_22;
  }
}

- (void)forceNonConnectableAddressReadAndUpdate:(unsigned __int8)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_addedMonitor)
  {
    return;
  }

  v5 = [(CBStackAddressMonitorBTStack *)self _dataWithBTAddress:sub_10017F95C(v4, 1u)];
  nonConnectableAddressData = self->_nonConnectableAddressData;
  v12 = v5;
  v7 = nonConnectableAddressData;
  v8 = v7;
  if (v12 == v7)
  {

    v10 = v12;
  }

  else
  {
    if ((v12 != 0) != (v7 == 0))
    {
      v9 = [(NSData *)v12 isEqual:v7];

      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_nonConnectableAddressData, v5);
    v11 = objc_retainBlock(self->_addressChangedHandler);
    v10 = v11;
    if (v11)
    {
      (v11[2].super.isa)(v11);
    }
  }

LABEL_12:
}

- (id)_dataWithBTAddress:(unint64_t)a3
{
  if (a3)
  {
    v6[0] = BYTE5(a3);
    v6[1] = BYTE4(a3);
    v6[2] = BYTE3(a3);
    v6[3] = BYTE2(a3);
    v6[4] = BYTE1(a3);
    v6[5] = a3;
    v4 = [[NSData alloc] initWithBytes:v6 length:6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end