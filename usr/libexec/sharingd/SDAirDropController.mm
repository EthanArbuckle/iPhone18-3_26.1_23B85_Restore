@interface SDAirDropController
- (SDAirDropController)init;
- (SDAirDropControllerDelegate)delegate;
- (void)addObservers;
- (void)configureSettingsForAirDrop;
- (void)dealloc;
- (void)presentEnableRadiosAlertForBluetooth:(BOOL)a3 andWLAN:(BOOL)a4;
- (void)removeObservers;
- (void)setProperty:(void *)a3 forKey:(id)a4;
- (void)setStatusAndNotify;
- (void)start;
- (void)stop;
@end

@implementation SDAirDropController

- (void)stop
{
  if (self->_started)
  {
    self->_started = 0;
    [(SDAirDropController *)self removeObservers];
  }
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)dealloc
{
  [(SDAirDropController *)self stop];
  v3.receiver = self;
  v3.super_class = SDAirDropController;
  [(SDAirDropController *)&v3 dealloc];
}

- (SDAirDropController)init
{
  v9.receiver = self;
  v9.super_class = SDAirDropController;
  v2 = [(SDAirDropController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_started = 0;
    v4 = objc_opt_new();
    properties = v3->_properties;
    v3->_properties = v4;

    v6 = +[SDStatusMonitor sharedMonitor];
    monitor = v3->_monitor;
    v3->_monitor = v6;
  }

  return v3;
}

- (void)configureSettingsForAirDrop
{
  v3 = [(SDStatusMonitor *)self->_monitor bluetoothEnabled];
  v4 = v3;
  v5 = v3 ^ 1;
  v6 = [(SDStatusMonitor *)self->_monitor wirelessEnabled];
  v7 = v6;
  v8 = v6 ^ 1;
  if ((v5 & 1) != 0 || v8)
  {
    if ([(SDStatusMonitor *)self->_monitor deviceSupportsWAPI])
    {

      [(SDAirDropController *)self presentEnableRadiosAlertForBluetooth:v5 andWLAN:v8];
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        [(SDStatusMonitor *)self->_monitor setWirelessEnabled:1];
      }

      if ((v4 & 1) == 0)
      {
        monitor = self->_monitor;

        [(SDStatusMonitor *)monitor setBluetoothEnabled:1];
      }
    }
  }
}

- (void)presentEnableRadiosAlertForBluetooth:(BOOL)a3 andWLAN:(BOOL)a4
{
  if (!self->_radiosUserNotification)
  {
    v4 = a4;
    v7 = objc_opt_new();
    radiosUserNotification = self->_radiosUserNotification;
    self->_radiosUserNotification = v7;

    v9 = SFLocalizedStringForKey();
    [(SFUserAlert *)self->_radiosUserNotification setTitle:v9];

    if (a3 || v4)
    {
      v10 = SFLocalizedStringForKey();
      [(SFUserAlert *)self->_radiosUserNotification setMessage:v10];
    }

    v11 = SFLocalizedStringForKey();
    [(SFUserAlert *)self->_radiosUserNotification setDefaultButtonTitle:v11];

    v12 = SFLocalizedStringForKey();
    [(SFUserAlert *)self->_radiosUserNotification setAlternateButtonTitle:v12];

    objc_initWeak(&location, self->_radiosUserNotification);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002701B4;
    v17[3] = &unk_1008D6628;
    v19 = v4;
    v20 = a3;
    objc_copyWeak(&v18, &location);
    v17[4] = self;
    [(SFUserAlert *)self->_radiosUserNotification setResponseHandler:v17];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002702F4;
    v15[3] = &unk_1008D6650;
    objc_copyWeak(&v16, &location);
    v15[4] = self;
    [(SFUserAlert *)self->_radiosUserNotification setErrorHandler:v15];
    v13 = airdrop_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asking user to enable radios", v14, 2u);
    }

    [(SFUserAlert *)self->_radiosUserNotification present];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)setProperty:(void *)a3 forKey:(id)a4
{
  v6 = a4;
  properties = self->_properties;
  v12 = v6;
  if (a3)
  {
    [(NSMutableDictionary *)properties setObject:a3 forKeyedSubscript:v6];
    v8 = [v12 isEqual:kSFOperationDiscoverableModeKey];
    v9 = v12;
    if (!v8)
    {
      goto LABEL_13;
    }

    if (CFEqual(a3, kSFOperationDiscoverableModeContactsOnly))
    {
      v10 = sub_1000929B4();
      v9 = v12;
      if (v10)
      {
        goto LABEL_13;
      }

      v11 = sub_10009268C();
    }

    else
    {
      if (!CFEqual(a3, kSFOperationDiscoverableModeEveryone))
      {
LABEL_11:
        [(SDStatusMonitor *)self->_monitor setDiscoverableMode:a3];
        goto LABEL_12;
      }

      v11 = sub_1000929B4();
    }

    v9 = v12;
    if (v11)
    {
      goto LABEL_13;
    }

    [(SDAirDropController *)self configureSettingsForAirDrop];
    goto LABEL_11;
  }

  [(NSMutableDictionary *)properties removeObjectForKey:v6];
LABEL_12:
  v9 = v12;
LABEL_13:
}

- (void)setStatusAndNotify
{
  [(NSMutableDictionary *)self->_properties setObject:&__kCFBooleanFalse forKeyedSubscript:kSFOperationLegacyDeviceKey];
  [(NSMutableDictionary *)self->_properties setObject:&__kCFBooleanFalse forKeyedSubscript:kSFOperationLegacyModeEnabledKey];
  [(NSMutableDictionary *)self->_properties setObject:&__kCFBooleanFalse forKeyedSubscript:kSFOperationLegacyModeSettableKey];
  v3 = [(SDStatusMonitor *)self->_monitor discoverableMode];
  [(NSMutableDictionary *)self->_properties setObject:v3 forKeyedSubscript:kSFOperationDiscoverableModeKey];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002705B8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.AppleIDChanged" object:0];
  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.DiscoverableModeChanged" object:0];
}

- (void)start
{
  if (!self->_started)
  {
    self->_started = 1;
    [(SDAirDropController *)self addObservers];

    [(SDAirDropController *)self setStatusAndNotify];
  }
}

- (SDAirDropControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end