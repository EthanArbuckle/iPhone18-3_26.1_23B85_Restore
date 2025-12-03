@interface NRConcurrentPipeManager
- (id)newIDSPairingToUUID:(id)d pairingUUID:(id)iD oobKey:(id)key withExtensiblePairingDelegate:(id)delegate withDelegate:(id)withDelegate;
- (void)createResource;
@end

@implementation NRConcurrentPipeManager

- (id)newIDSPairingToUUID:(id)d pairingUUID:(id)iD oobKey:(id)key withExtensiblePairingDelegate:(id)delegate withDelegate:(id)withDelegate
{
  dCopy = d;
  iDCopy = iD;
  keyCopy = key;
  delegateCopy = delegate;
  withDelegateCopy = withDelegate;
  uuid = self->_uuid;
  if (uuid && ![(NSUUID *)uuid isEqual:dCopy])
  {
    v19 = 0;
  }

  else
  {
    objc_storeStrong(&self->_uuid, d);
    objc_storeStrong(&self->_oobKey, key);
    objc_storeWeak(&self->_epDelegate, delegateCopy);
    objc_storeStrong(&self->_pairingID, iD);
    v19 = [(EPResourceManager *)self newResourceWithDelegate:withDelegateCopy];
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
    selfCopy2 = self;
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

    selfCopy2 = self;
    v4 = 2;
  }

  [(EPResourceManager *)selfCopy2 setAvailability:v4 withError:idsPairingFailureError];
}

@end