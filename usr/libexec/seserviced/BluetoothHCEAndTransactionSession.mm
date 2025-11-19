@interface BluetoothHCEAndTransactionSession
+ (void)startFirstApproachForKeyWithIdentifier:(id)a3;
- (BluetoothHCEAndTransactionSession)initWithDelegate:(id)a3;
- (id)readAPDU;
- (id)sendAPDU:(id)a3;
- (void)dealloc;
- (void)endSession;
- (void)pairingEndedWithResult:(id)a3;
- (void)startHceEmulation;
- (void)startTransactionEmulationForKeyWithIdentifier:(id)a3;
- (void)stopHceEmulation;
- (void)stopTransactionEmulation;
@end

@implementation BluetoothHCEAndTransactionSession

- (BluetoothHCEAndTransactionSession)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BluetoothHCEAndTransactionSession;
  v5 = [(BluetoothHCEAndTransactionSession *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->delegate, v4);
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

- (void)startTransactionEmulationForKeyWithIdentifier:(id)a3
{
  v3 = a3;
  v5 = +[_TtC10seserviced21AlishaPairingExternal shared];
  v4 = [v3 hexStringAsData];

  [v5 startTransactionEmulationFor:v4];
}

- (void)stopTransactionEmulation
{
  v2 = +[_TtC10seserviced21AlishaPairingExternal shared];
  [v2 stopTransactionEmulation];
}

- (void)pairingEndedWithResult:(id)a3
{
  v3 = a3;
  v4 = +[_TtC10seserviced21AlishaPairingExternal shared];
  [v4 pairingEndedWithError:v3];
}

- (void)endSession
{
  v2 = +[_TtC10seserviced21AlishaPairingExternal shared];
  [v2 endSession];
}

- (id)readAPDU
{
  v2 = +[_TtC10seserviced21AlishaPairingExternal shared];
  v3 = [v2 readAPDU];

  return v3;
}

- (id)sendAPDU:(id)a3
{
  v3 = a3;
  v4 = +[_TtC10seserviced21AlishaPairingExternal shared];
  v5 = [v4 sendAPDU:v3];

  return v5;
}

+ (void)startFirstApproachForKeyWithIdentifier:(id)a3
{
  v3 = a3;
  v5 = +[_TtC10seserviced21AlishaPairingExternal shared];
  v4 = [v3 hexStringAsData];

  [v5 requestFirstApproachFor:v4];
}

@end