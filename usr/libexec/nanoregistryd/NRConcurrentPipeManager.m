@interface NRConcurrentPipeManager
- (id)newIDSPairingToUUID:(id)a3 pairingUUID:(id)a4 oobKey:(id)a5 withExtensiblePairingDelegate:(id)a6 withDelegate:(id)a7;
- (void)createResource;
@end

@implementation NRConcurrentPipeManager

- (id)newIDSPairingToUUID:(id)a3 pairingUUID:(id)a4 oobKey:(id)a5 withExtensiblePairingDelegate:(id)a6 withDelegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  uuid = self->_uuid;
  if (uuid && ![(NSUUID *)uuid isEqual:v13])
  {
    v19 = 0;
  }

  else
  {
    objc_storeStrong(&self->_uuid, a3);
    objc_storeStrong(&self->_oobKey, a5);
    objc_storeWeak(&self->_epDelegate, v16);
    objc_storeStrong(&self->_pairingID, a4);
    v19 = [(EPResourceManager *)self newResourceWithDelegate:v17];
  }

  return v19;
}

- (void)createResource
{
  v9.receiver = self;
  v9.super_class = NRConcurrentPipeManager;
  [(EPResourceManager *)&v9 createResource];
  if (self->_idsIsPaired)
  {
    v3 = self;
    v4 = 1;
    idsPairingFailureError = 0;
  }

  else
  {
    idsPairingFailureError = self->_idsPairingFailureError;
    if (!idsPairingFailureError)
    {
      WeakRetained = objc_loadWeakRetained(&self->_epDelegate);
      pairingID = self->_pairingID;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000B89DC;
      v8[3] = &unk_100178430;
      v8[4] = self;
      [WeakRetained createLocalPairingStore:pairingID andNotifyPairingBeginning:1 withBlock:v8];

      return;
    }

    v3 = self;
    v4 = 2;
  }

  [(EPResourceManager *)v3 setAvailability:v4 withError:idsPairingFailureError];
}

@end