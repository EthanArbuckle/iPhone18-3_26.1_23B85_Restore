@interface MCProvisioningProfileJanitor
+ (id)sharedJanitor;
- (MCProvisioningProfileJanitor)init;
- (void)didUnenrollFromMDM;
- (void)syncMCTrustedCodeSigningIdentities:(id)a3;
- (void)updateMISTrustAndValidateApps:(id)a3 validateManagedApps:(BOOL)a4 completion:(id)a5;
@end

@implementation MCProvisioningProfileJanitor

- (MCProvisioningProfileJanitor)init
{
  v12.receiver = self;
  v12.super_class = MCProvisioningProfileJanitor;
  v2 = [(MCProvisioningProfileJanitor *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MCProvisioningProfileJanitor work queue", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = [MDMProvisioningProfileTrust alloc];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("MIS Validate UPP queue", v7);
    v9 = [v6 initWithValidationQueue:v8];
    profileTrust = v2->_profileTrust;
    v2->_profileTrust = v9;
  }

  return v2;
}

+ (id)sharedJanitor
{
  if (qword_100136BA0 != -1)
  {
    sub_1000C2AFC();
  }

  v3 = qword_100136B98;

  return v3;
}

- (void)updateMISTrustAndValidateApps:(id)a3 validateManagedApps:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-UpdateMISTrustValidateApps"];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068138;
  block[3] = &unk_10011C950;
  block[4] = self;
  v16 = v8;
  v19 = a4;
  v17 = v10;
  v18 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(workQueue, block);
}

- (void)syncMCTrustedCodeSigningIdentities:(id)a3
{
  v3 = a3;
  v4 = +[MDMProvisioningProfileTrust allTrustedSignerIdentities];
  if (v4)
  {
    v5 = [v3 isEqualToSet:v4];
    v6 = _MCLogObjects[11];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v14 = 138412290;
        v15 = v3;
        v8 = "MCProvisioningProfileJanitor maintaining MC signers: %@";
        v9 = v6;
        v10 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v9, v10, v8, &v14, 0xCu);
      }
    }

    else
    {
      if (v7)
      {
        v14 = 138412290;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MCProvisioningProfileJanitor syncing MIS signers to MC: %@", &v14, 0xCu);
      }

      v12 = +[MCRestrictionManagerWriter sharedManager];
      v13 = [v4 allObjects];
      [v12 setUnionValues:v13 forSetting:MCFeatureTrustedCodeSigningIdentities sender:@"MCProvisioningProfileJanitor.syncMCTrustedCodeSigningIdentities:"];
    }
  }

  else
  {
    v11 = _MCLogObjects[2];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v3;
      v8 = "MCProvisioningProfileJanitor skipping signer sync after MIS enumeration failed. Maintaining MC signers: %@";
      v9 = v11;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }
}

- (void)didUnenrollFromMDM
{
  v3 = [(MCProvisioningProfileJanitor *)self profileTrust];
  [v3 didUnenrollFromMDM];

  [(MCProvisioningProfileJanitor *)self syncMCTrustedCodeSigningIdentities:0];
}

@end