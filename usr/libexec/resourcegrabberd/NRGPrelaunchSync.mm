@interface NRGPrelaunchSync
- (NRGPrelaunchSync)init;
- (void)_prelaunchCompleted;
- (void)_progressChanged;
- (void)dealloc;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
@end

@implementation NRGPrelaunchSync

- (NRGPrelaunchSync)init
{
  v8.receiver = self;
  v8.super_class = NRGPrelaunchSync;
  v2 = [(NRGPrelaunchSync *)&v8 init];
  if (v2)
  {
    v3 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.nanoresourcegrabber.prelaunch"];
    pairedSyncCoordinator = v2->_pairedSyncCoordinator;
    v2->_pairedSyncCoordinator = v3;

    [(PSYSyncCoordinator *)v2->_pairedSyncCoordinator setDelegate:v2];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10000620C, @"com.apple.Carousel.Prelaunch.ProgressChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, sub_100006214, @"com.apple.Carousel.Prelaunch.EndDateChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.Carousel.Prelaunch.ProgressChanged", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.Carousel.Prelaunch.EndDateChanged", 0);
  v5.receiver = self;
  v5.super_class = NRGPrelaunchSync;
  [(NRGPrelaunchSync *)&v5 dealloc];
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v5 = a3;
  [@"com.apple.nanoresourcegrabber.pairedsync" UTF8String];
  v6 = os_transaction_create();
  syncTransaction = self->_syncTransaction;
  self->_syncTransaction = v6;

  self->_syncSessionActive = 1;
  v15 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel.Prelaunch"];
  +[NSDate timeIntervalSinceReferenceDate];
  [v15 setDouble:@"StartDate" forKey:?];
  v8 = [v15 synchronize];
  v9 = objc_alloc_init(NPSManager);
  v10 = [NSSet setWithObjects:@"StartDate", 0];
  [v9 synchronizeNanoDomain:@"com.apple.Carousel.Prelaunch" keys:v10];

  v11 = [v5 activeSyncSession];

  v12 = [v11 pairedDevice];
  v13 = [[NSUUID alloc] initWithUUIDString:@"15874345-3594-4D3F-9A28-BA2AEA650A0D"];
  v14 = [v12 supportsCapability:v13];

  if (v14)
  {
    [(NRGPrelaunchSync *)self _prelaunchCompleted];
  }
}

- (void)_progressChanged
{
  if (self->_syncSessionActive)
  {
    v7 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel.Prelaunch"];
    [v7 doubleForKey:@"Progress"];
    v5 = v4;
    v6 = [(PSYSyncCoordinator *)self->_pairedSyncCoordinator activeSyncSession];
    [v6 reportProgress:v5];
  }
}

- (void)_prelaunchCompleted
{
  if (self->_syncSessionActive)
  {
    self->_syncSessionActive = 0;
    v4 = [(PSYSyncCoordinator *)self->_pairedSyncCoordinator activeSyncSession];
    [v4 syncDidComplete];

    syncTransaction = self->_syncTransaction;
    self->_syncTransaction = 0;
  }
}

@end