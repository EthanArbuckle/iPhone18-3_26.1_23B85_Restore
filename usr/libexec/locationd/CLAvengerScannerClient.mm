@interface CLAvengerScannerClient
- (void)dealloc;
- (void)onAggressiveScanStarted;
@end

@implementation CLAvengerScannerClient

- (void)dealloc
{
  self->_centralManager = 0;

  self->_controller = 0;
  self->_reconciler = 0;

  self->_avengerPowerAssertion = 0;
  v3.receiver = self;
  v3.super_class = CLAvengerScannerClient;
  [(CLAvengerScannerClient *)&v3 dealloc];
}

- (void)onAggressiveScanStarted
{
  [(CLAvengerScannerClient *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(CLAvengerScannerClient *)self delegate];

    [(CLAvengerScannerClientDelegateProtocol *)delegate onAggressiveScanStarted];
  }
}

@end