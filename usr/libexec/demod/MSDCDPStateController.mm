@interface MSDCDPStateController
- (BOOL)isCDPEnabled;
- (BOOL)isCDPManateeAvailable;
- (BOOL)isRecoveryKeyAvailable:(id *)available;
- (MSDCDPStateController)initWithAuthenticationResults:(id)results;
- (MSDCDPStateController)initWithCDPContext:(id)context;
- (id)generateRecoveryKeyWithError:(id *)error;
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
    selfCopy = self;
  }

  else
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5728(v5);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (MSDCDPStateController)initWithAuthenticationResults:(id)results
{
  resultsCopy = results;
  v5 = [[CDPContext alloc] initWithAuthenticationResults:resultsCopy];

  v6 = [(MSDCDPStateController *)self initWithCDPContext:v5];
  return v6;
}

- (MSDCDPStateController)initWithCDPContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = MSDCDPStateController;
  v5 = [(MSDCDPStateController *)&v8 init];
  if (v5)
  {
    v6 = [[CDPStateController alloc] initWithContext:contextCopy];
    [(MSDCDPStateController *)v5 setCdpController:v6];
  }

  return v5;
}

- (void)dealloc
{
  cdpController = [(MSDCDPStateController *)self cdpController];
  [cdpController invalidate];

  v4.receiver = self;
  v4.super_class = MSDCDPStateController;
  [(MSDCDPStateController *)&v4 dealloc];
}

- (BOOL)isCDPEnabled
{
  cdpController = [(MSDCDPStateController *)self cdpController];
  context = [cdpController context];
  dsid = [context dsid];
  stringValue = [dsid stringValue];

  if (stringValue)
  {
    v6 = [CDPAccount isICDPEnabledForDSID:stringValue];
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
  cdpController = [(MSDCDPStateController *)self cdpController];
  v8 = 0;
  v3 = [cdpController isManateeAvailable:&v8];
  v4 = v8;

  if ((v3 & 1) == 0)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v4 localizedDescription];
      *buf = 138543362;
      v10 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CDP manatee is NOT available because: %{public}@", buf, 0xCu);
    }
  }

  return v3;
}

- (BOOL)isRecoveryKeyAvailable:(id *)available
{
  cdpController = [(MSDCDPStateController *)self cdpController];
  v10 = 0;
  v5 = [cdpController isRecoveryKeyAvailableWithError:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E57B0(v6);
    }
  }

  if (available)
  {
    v8 = v6;
    *available = v6;
  }

  return v5;
}

- (id)generateRecoveryKeyWithError:(id *)error
{
  cdpController = [(MSDCDPStateController *)self cdpController];
  v10 = 0;
  v5 = [cdpController generateRandomRecoveryKey:&v10];
  v6 = v10;

  if (!v5)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5838(v6);
    }
  }

  if (error)
  {
    v8 = v6;
    *error = v6;
  }

  return v5;
}

@end