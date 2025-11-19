@interface CLAvengerScannerClientObjectDiscoveryData
- (BOOL)beepOnMoveHigh;
- (void)dealloc;
@end

@implementation CLAvengerScannerClientObjectDiscoveryData

- (BOOL)beepOnMoveHigh
{
  v3 = [(NSData *)self->_reserved length];
  if (v3)
  {
    v5 = 0;
    [(NSData *)self->_reserved getBytes:&v5 length:1];
    LODWORD(v3) = (v5 >> 2) & 1;
  }

  return v3;
}

- (void)dealloc
{
  self->_address = 0;

  self->_advertisementData = 0;
  self->_reserved = 0;

  self->_scanDate = 0;
  self->_channel = 0;

  self->_scanCore = 0;
  self->_protocolID = 0;
  v3.receiver = self;
  v3.super_class = CLAvengerScannerClientObjectDiscoveryData;
  [(CLAvengerScannerClientObjectDiscoveryData *)&v3 dealloc];
}

@end