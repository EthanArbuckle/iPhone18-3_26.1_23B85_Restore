@interface RPNearbyActionV2Advertiser
- (id)description;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)setTargetData:(id)a3;
@end

@implementation RPNearbyActionV2Advertiser

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = objc_alloc_init(off_1001D4808());
  actionV2Advertiser = self->_actionV2Advertiser;
  self->_actionV2Advertiser = v5;

  [(CBAdvertiser *)self->_actionV2Advertiser setDispatchQueue:self->_dispatchQueue];
  [(CBAdvertiser *)self->_actionV2Advertiser setNearbyActionV2Type:self->_nearbyActionType];
  if (self->_targetData)
  {
    [(CBAdvertiser *)self->_actionV2Advertiser setNearbyActionV2Flags:1];
    [(CBAdvertiser *)self->_actionV2Advertiser setNearbyActionV2TargetData:self->_targetData];
  }

  [(CBAdvertiser *)self->_actionV2Advertiser setAdvertiseRate:60];
  [(CBAdvertiser *)self->_actionV2Advertiser setLabel:@"CLink"];
  v7 = self->_actionV2Advertiser;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008FBB0;
  v9[3] = &unk_1001AC998;
  v10 = v4;
  v8 = v4;
  [(CBAdvertiser *)v7 activateWithCompletion:v9];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4798 <= 30 && (dword_1001D4798 != -1 || _LogCategory_Initialize()))
  {
    sub_100123D8C();
  }

  [(CBAdvertiser *)self->_actionV2Advertiser invalidate];
  actionV2Advertiser = self->_actionV2Advertiser;
  self->_actionV2Advertiser = 0;
}

- (void)setTargetData:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = self->_targetData;
  v7 = v5;
  v11 = v7;
  if (v6 == v7)
  {

LABEL_12:
    v9 = v11;
    goto LABEL_13;
  }

  if ((v7 == 0) == (v6 != 0))
  {

LABEL_7:
    if (dword_1001D4798 <= 30 && (dword_1001D4798 != -1 || _LogCategory_Initialize()))
    {
      targetData = self->_targetData;
      LogPrintF();
    }

    objc_storeStrong(&self->_targetData, a3);
    [(CBAdvertiser *)self->_actionV2Advertiser setNearbyActionV2TargetData:self->_targetData];
    goto LABEL_12;
  }

  v8 = [(NSData *)v6 isEqual:v7];

  v9 = v11;
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
}

- (id)description
{
  actionV2Advertiser = self->_actionV2Advertiser;
  NSAppendPrintF();
  v10 = 0;
  sub_10008FDDC(self->_nearbyActionType);
  NSAppendPrintF();
  v3 = v10;

  targetData = self->_targetData;
  if (targetData)
  {
    v5 = self->_targetData;
    v6 = targetData;
    NSAppendPrintF();
    v7 = v3;

    v3 = v7;
  }

  return v3;
}

@end