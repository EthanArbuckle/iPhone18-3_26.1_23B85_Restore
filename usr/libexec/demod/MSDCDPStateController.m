@interface MSDCDPStateController
- (BOOL)isCDPEnabled;
- (BOOL)isCDPManateeAvailable;
- (BOOL)isRecoveryKeyAvailable:(id *)a3;
- (MSDCDPStateController)initWithAuthenticationResults:(id)a3;
- (MSDCDPStateController)initWithCDPContext:(id)a3;
- (id)generateRecoveryKeyWithError:(id *)a3;
- (id)initForPrimaryiCloudAccount;
- (void)dealloc;
@end

@implementation MSDCDPStateController

- (id)initForPrimaryiCloudAccount
{
  v3 = +[CDPContext contextForPrimaryAccount];
  if (v3)
  {
    self = [(MSDCDPStateController *)self initWithCDPContext:v3];
    v4 = self;
  }

  else
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5728(v5);
    }

    v4 = 0;
  }

  return v4;
}

- (MSDCDPStateController)initWithAuthenticationResults:(id)a3
{
  v4 = a3;
  v5 = [[CDPContext alloc] initWithAuthenticationResults:v4];

  v6 = [(MSDCDPStateController *)self initWithCDPContext:v5];
  return v6;
}

- (MSDCDPStateController)initWithCDPContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSDCDPStateController;
  v5 = [(MSDCDPStateController *)&v8 init];
  if (v5)
  {
    v6 = [[CDPStateController alloc] initWithContext:v4];
    [(MSDCDPStateController *)v5 setCdpController:v6];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(MSDCDPStateController *)self cdpController];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = MSDCDPStateController;
  [(MSDCDPStateController *)&v4 dealloc];
}

- (BOOL)isCDPEnabled
{
  v2 = [(MSDCDPStateController *)self cdpController];
  v3 = [v2 context];
  v4 = [v3 dsid];
  v5 = [v4 stringValue];

  if (v5)
  {
    v6 = [CDPAccount isICDPEnabledForDSID:v5];
  }

  else
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E576C(v7);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)isCDPManateeAvailable
{
  v2 = [(MSDCDPStateController *)self cdpController];
  v8 = 0;
  v3 = [v2 isManateeAvailable:&v8];
  v4 = v8;

  if ((v3 & 1) == 0)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 localizedDescription];
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CDP manatee is NOT available because: %{public}@", buf, 0xCu);
    }
  }

  return v3;
}

- (BOOL)isRecoveryKeyAvailable:(id *)a3
{
  v4 = [(MSDCDPStateController *)self cdpController];
  v10 = 0;
  v5 = [v4 isRecoveryKeyAvailableWithError:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E57B0(v6);
    }
  }

  if (a3)
  {
    v8 = v6;
    *a3 = v6;
  }

  return v5;
}

- (id)generateRecoveryKeyWithError:(id *)a3
{
  v4 = [(MSDCDPStateController *)self cdpController];
  v10 = 0;
  v5 = [v4 generateRandomRecoveryKey:&v10];
  v6 = v10;

  if (!v5)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5838(v6);
    }
  }

  if (a3)
  {
    v8 = v6;
    *a3 = v6;
  }

  return v5;
}

@end