@interface CLAvengerScannerClientController
- (BOOL)performTemporaryAggressiveScan;
- (void)dealloc;
@end

@implementation CLAvengerScannerClientController

- (void)dealloc
{
  if (qword_1025D47E0 != -1)
  {
    sub_1002862D0();
  }

  v3 = qword_1025D47E8;
  if (os_log_type_enabled(qword_1025D47E8, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [(NSString *)self->_clientIdentifier UTF8String];
    *buf = 68289282;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = uTF8String;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Ending scan, ClientId:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  [(CLAvengerScannerClientController *)self submitClientRequestsEvent:&off_102551B88 client:self->_clientIdentifier scanType:[NSString stringWithUTF8String:"StopMonitor"]];
  objc_storeWeak(&self->_delegate, 0);

  self->_centralManager = 0;
  self->_reconciler = 0;
  objc_storeWeak(&self->_powerAssertionDelegate, 0);

  self->_clientIdentifier = 0;
  v5.receiver = self;
  v5.super_class = CLAvengerScannerClientController;
  [(CLAvengerScannerClientController *)&v5 dealloc];
}

- (BOOL)performTemporaryAggressiveScan
{
  if ([CLAvengerScannerClientController isDefaultScanType:self->_currentUseCase]&& self->_centralManagerPoweredOn)
  {
    [(CLAvengerScannerClientController *)self startScanningWithUseCase:65547];
    [(CLAvengerScannerClientController *)self submitClientRequestsEvent:&off_102551B88 client:self->_clientIdentifier scanType:[NSString stringWithUTF8String:"Aggressive"]];
    return 1;
  }

  else
  {
    if (qword_1025D47E0 != -1)
    {
      sub_1002862D0();
    }

    v4 = qword_1025D47E8;
    v5 = os_log_type_enabled(qword_1025D47E8, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      uTF8String = [(NSString *)self->_clientIdentifier UTF8String];
      v7 = sub_101435100(self->_currentUseCase);
      centralManagerPoweredOn = self->_centralManagerPoweredOn;
      v9[0] = 68289794;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = uTF8String;
      v14 = 2082;
      v15 = v7;
      v16 = 1026;
      v17 = centralManagerPoweredOn;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Not starting aggressives scan due to invalid state, ClientId:%{public, location:escape_only}s, CurrentUseCase:%{public, location:escape_only}s, PoweredOn:%{public}hhd}", v9, 0x2Cu);
      return 0;
    }
  }

  return result;
}

@end