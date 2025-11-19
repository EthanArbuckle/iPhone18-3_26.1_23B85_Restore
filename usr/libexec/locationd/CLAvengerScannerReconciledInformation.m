@interface CLAvengerScannerReconciledInformation
- (id)initUnknown;
- (void)dealloc;
@end

@implementation CLAvengerScannerReconciledInformation

- (id)initUnknown
{
  v3.receiver = self;
  v3.super_class = CLAvengerScannerReconciledInformation;
  result = [(CLAvengerScannerReconciledInformation *)&v3 init];
  if (result)
  {
    *(result + 2) = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLAvengerScannerReconciledInformation;
  [(CLAvengerScannerReconciledInformation *)&v3 dealloc];
}

@end