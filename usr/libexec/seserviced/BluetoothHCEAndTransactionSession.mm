@interface BluetoothHCEAndTransactionSession
+ (void)startFirstApproachForKeyWithIdentifier:(id)identifier;
- (BluetoothHCEAndTransactionSession)initWithDelegate:(id)delegate;
- (id)readAPDU;
- (id)sendAPDU:(id)u;
- (void)dealloc;
- (void)endSession;
- (void)pairingEndedWithResult:(id)result;
- (void)startHceEmulation;
- (void)startTransactionEmulationForKeyWithIdentifier:(id)identifier;
- (void)stopHceEmulation;
- (void)stopTransactionEmulation;
@end

@implementation BluetoothHCEAndTransactionSession

- (BluetoothHCEAndTransactionSession)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = BluetoothHCEAndTransactionSession;
  v5 = [(BluetoothHCEAndTransactionSession *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->delegate, delegateCopy);
    v6->lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[_TtC10seserviced21AlishaPairingExternal shared];
  [v3 stopOwnerPairing];

  v4.receiver = self;
  v4.super_class = BluetoothHCEAndTransactionSession;
  [(BluetoothHCEAndTransactionSession *)&v4 dealloc];
}

- (void)startHceEmulation
{
  os_unfair_lock_lock(&self->lock);
  if (!self->isOwnerPairingRequested)
  {
    v3 = +[_TtC10seserviced21AlishaPairingExternal shared];
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    [v3 requestOwnerPairingWithSession:self delegate:WeakRetained];

    self->isOwnerPairingRequested = 1;
  }

  v5 = +[_TtC10seserviced21AlishaPairingExternal shared];
  [v5 startHceEmulation];

  os_unfair_lock_unlock(&self->lock);
}

- (void)stopHceEmulation
{
  v2 = +[_TtC10seserviced21AlishaPairingExternal shared];
  [v2 stopHceEmulation];
}

- (void)startTransactionEmulationForKeyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[_TtC10seserviced21AlishaPairingExternal shared];
  hexStringAsData = [identifierCopy hexStringAsData];

  [v5 startTransactionEmulationFor:hexStringAsData];
}

- (void)stopTransactionEmulation
{
  v2 = +[_TtC10seserviced21AlishaPairingExternal shared];
  [v2 stopTransactionEmulation];
}

- (void)pairingEndedWithResult:(id)result
{
  resultCopy = result;
  v4 = +[_TtC10seserviced21AlishaPairingExternal shared];
  [v4 pairingEndedWithError:resultCopy];
}

- (void)endSession
{
  v2 = +[_TtC10seserviced21AlishaPairingExternal shared];
  [v2 endSession];
}

- (id)readAPDU
{
  v2 = +[_TtC10seserviced21AlishaPairingExternal shared];
  readAPDU = [v2 readAPDU];

  return readAPDU;
}

- (id)sendAPDU:(id)u
{
  uCopy = u;
  v4 = +[_TtC10seserviced21AlishaPairingExternal shared];
  v5 = [v4 sendAPDU:uCopy];

  return v5;
}

+ (void)startFirstApproachForKeyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[_TtC10seserviced21AlishaPairingExternal shared];
  hexStringAsData = [identifierCopy hexStringAsData];

  [v5 requestFirstApproachFor:hexStringAsData];
}

@end