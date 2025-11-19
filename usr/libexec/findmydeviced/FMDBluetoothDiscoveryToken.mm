@interface FMDBluetoothDiscoveryToken
- (BOOL)isDiscoveryActive;
- (BOOL)isEqual:(id)a3;
- (FMDBluetoothDiscoveryToken)init;
- (FMDBluetoothDiscoveryTokenDelegate)delegate;
- (NSString)description;
- (unint64_t)hash;
- (void)startDiscoveryForDuration:(double)a3;
- (void)stopDiscovery;
@end

@implementation FMDBluetoothDiscoveryToken

- (FMDBluetoothDiscoveryToken)init
{
  v5.receiver = self;
  v5.super_class = FMDBluetoothDiscoveryToken;
  v2 = [(FMDBluetoothDiscoveryToken *)&v5 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    [(FMDBluetoothDiscoveryToken *)v2 setUuid:v3];
  }

  return v2;
}

- (void)startDiscoveryForDuration:(double)a3
{
  v4 = [NSDate dateWithTimeIntervalSinceNow:a3];
  [(FMDBluetoothDiscoveryToken *)self setEndDate:v4];

  v5 = [(FMDBluetoothDiscoveryToken *)self delegate];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      [v6 discoveryRequestedStart:self];
    }
  }

  _objc_release_x2();
}

- (void)stopDiscovery
{
  v3 = [(FMDBluetoothDiscoveryToken *)self delegate];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v4 discoveryRequestedStop:self];
    }
  }

  _objc_release_x2();
}

- (BOOL)isDiscoveryActive
{
  v3 = [(FMDBluetoothDiscoveryToken *)self delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 isDiscoveryActive:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  v2 = self;
  v3 = [(FMDBluetoothDiscoveryToken *)v2 endDate];
  v4 = [NSString stringWithFormat:@"%p-%@", v2, v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(FMDBluetoothDiscoveryToken *)self hash];
      v7 = [(FMDBluetoothDiscoveryToken *)v5 hash];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(FMDBluetoothDiscoveryToken *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (FMDBluetoothDiscoveryTokenDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end