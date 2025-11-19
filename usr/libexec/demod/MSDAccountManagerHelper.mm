@interface MSDAccountManagerHelper
- (ACAccount)iCloudAccount;
- (ACAccount)iTunesAccount;
- (BOOL)_isAllowListedAccount:(id)a3 withAuthResults:(id)a4;
- (BOOL)forceiCloudKeychainToSyncWithServerAndError:(id *)a3;
- (BOOL)performiCloudAccountSignInWithContext:(id)a3 outError:(id *)a4;
- (BOOL)performiCloudAccountSignOutWithContext:(id)a3 outError:(id *)a4;
- (BOOL)performiTunesAccountSignInWithContext:(id)a3 outError:(id *)a4;
- (BOOL)performiTunesAccountSignOutWithContext:(id)a3 outError:(id *)a4;
- (MSDAccountManagerHelper)init;
- (id)_createTempAppleAccountFromAuthResults:(id)a3;
- (id)fetchiTunesiCloudAccountsInfo;
- (id)generateiCloudAccountRecoveryKeyWithError:(id *)a3;
- (id)getIdentityServicesID;
- (id)getListOfCloudPairedDevices;
- (void)_acceptiCloudTermsWithAuthResults:(id)a3 completionHandler:(id)a4;
- (void)_authenticateAccountWithContext:(id)a3 forService:(int64_t)a4 completionHandler:(id)a5;
- (void)_configureiCloudAccountFeatures:(id)a3 completionHandler:(id)a4;
- (void)_disableFindMyServiceUsingContext:(id)a3 completionHandler:(id)a4;
- (void)_enableFindMyServiceAndSendLastLocation:(BOOL)a3 completionHandler:(id)a4;
- (void)_forceIDSToSyncWithServer;
- (void)_forceiCloudKeychainToSyncWithServerAndCompletion:(id)a3;
- (void)_markiCloudAccountAsManagedAccount:(BOOL)a3 completionHandler:(id)a4;
- (void)_signInToAppleIDWithContext:(id)a3 forServices:(id)a4 usingAuthResults:(id)a5 completionHandler:(id)a6;
- (void)_signOutAppleIDForServices:(id)a3 completionHandler:(id)a4;
- (void)_waitForIDSOperationToQuiesceForAccount:(id)a3 forSignOut:(BOOL)a4;
- (void)signOutFlowController:(id)a3 disableFindMyDeviceForAccount:(id)a4 completion:(id)a5;
- (void)signOutFlowController:(id)a3 performWalrusValidationForAccount:(id)a4 completion:(id)a5;
- (void)signOutFlowController:(id)a3 showAlertWithTitle:(id)a4 message:(id)a5 completion:(id)a6;
- (void)signOutFlowController:(id)a3 signOutAccount:(id)a4 completion:(id)a5;
@end

@implementation MSDAccountManagerHelper

- (MSDAccountManagerHelper)init
{
  v8.receiver = self;
  v8.super_class = MSDAccountManagerHelper;
  v2 = [(MSDAccountManagerHelper *)&v8 init];
  if (v2)
  {
    v3 = +[ACAccountStore defaultStore];
    [(MSDAccountManagerHelper *)v2 setAccountStore:v3];

    v4 = [AIDAServiceOwnersManager alloc];
    v5 = [(MSDAccountManagerHelper *)v2 accountStore];
    v6 = [v4 initWithAccountStore:v5];
    [(MSDAccountManagerHelper *)v2 setServiceOwnersManager:v6];
  }

  return v2;
}

- (ACAccount)iCloudAccount
{
  v2 = [(MSDAccountManagerHelper *)self serviceOwnersManager];
  v3 = [v2 accountForService:AIDAServiceTypeCloud];

  return v3;
}

- (ACAccount)iTunesAccount
{
  v2 = [(MSDAccountManagerHelper *)self serviceOwnersManager];
  v3 = [v2 accountForService:AIDAServiceTypeStore];

  return v3;
}

- (id)fetchiTunesiCloudAccountsInfo
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  v4 = [(MSDAccountManagerHelper *)self iCloudAccount];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = [[MSDCDPStateController alloc] initForPrimaryiCloudAccount];
  v6 = [v4 username];
  [v3 setObject:v6 forKey:@"iCloud"];

  if (![v5 isCDPEnabled])
  {
    v10 = &off_10017AE88;
LABEL_6:
    [v3 setObject:v10 forKey:@"iCloudCDPState"];
    goto LABEL_7;
  }

  v16 = 0;
  v7 = [v5 isRecoveryKeyAvailable:&v16];
  v8 = v16;
  if (!v8)
  {
    if (v7)
    {
      v10 = &off_10017AE58;
    }

    else
    {
      v10 = &off_10017AE70;
    }

    goto LABEL_6;
  }

  v9 = v8;
  [v3 setObject:&off_10017AE40 forKey:@"iCloudCDPState"];

LABEL_7:
  if (([v5 isCDPManateeAvailable] & 1) == 0)
  {
    [v3 setObject:&__kCFBooleanTrue forKey:@"iCloudCDPRepairNeeded"];
  }

LABEL_10:
  v11 = [(MSDAccountManagerHelper *)self iTunesAccount];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 username];
    [v3 setObject:v13 forKey:@"iTunes"];
  }

  v14 = [NSDictionary dictionaryWithDictionary:v3];

  return v14;
}

- (BOOL)performiCloudAccountSignInWithContext:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_10000D254;
  v64 = sub_10000D264;
  v65 = dispatch_semaphore_create(0);
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_10000D254;
  v58 = sub_10000D264;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_10000D254;
  v52 = sub_10000D264;
  v53 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10000D26C;
  v47[3] = &unk_100169E18;
  v47[4] = &v54;
  v47[5] = &v48;
  v47[6] = &v60;
  [(MSDAccountManagerHelper *)self _authenticateAccountWithContext:v5 forService:1 completionHandler:v47];
  v6 = v61[5];
  v7 = dispatch_time(0, 200000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v38 = sub_100063A54();
    sub_1000C5DF0(v38);

    sub_1000C13D8(a4, 3727741043, @"Failed to authenticate account with server.", @"Operation timed out");
    v13 = 0;
    v9 = 0;
LABEL_41:
    v36 = 0;
    goto LABEL_23;
  }

  v8 = v49[5];
  if (v8)
  {
    v35 = [v8 localizedDescription];
    sub_1000C13D8(a4, 3727741043, @"Failed to authenticate account with server.", v35);
    v13 = 0;
    v9 = 0;
    goto LABEL_21;
  }

  v9 = [NSMutableArray arrayWithObject:AIDAServiceTypeCloud];
  v10 = [v5 features];
  v11 = [v10 objectForKey:@"com.apple.mobilestoredemo.FaceTime"];

  if (v11 && [v11 BOOLValue])
  {
    [v9 addObject:AIDAServiceTypeFaceTime];
  }

  v12 = [v5 features];
  v13 = [v12 objectForKey:@"com.apple.mobilestoredemo.iMessage"];

  if (v13 && [v13 BOOLValue])
  {
    [v9 addObject:AIDAServiceTypeMessages];
  }

  v14 = v55[5];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10000D310;
  v46[3] = &unk_100169E40;
  v46[4] = &v48;
  v46[5] = &v60;
  [(MSDAccountManagerHelper *)self _signInToAppleIDWithContext:v5 forServices:v9 usingAuthResults:v14 completionHandler:v46];
  v15 = v61[5];
  v16 = dispatch_time(0, 200000000000);
  if (dispatch_semaphore_wait(v15, v16))
  {
    v39 = sub_100063A54();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5E48();
    }

    v40 = 3727741046;
    v41 = @"Failed to sign in account service.";
    goto LABEL_40;
  }

  v17 = v49[5];
  if (v17)
  {
    if (![v17 aa_isAASignInErrorWithCode:-8010])
    {
      v35 = [v49[5] localizedDescription];
      sub_1000C13D8(a4, 3727741046, @"Failed to sign in account service.", v35);
      goto LABEL_21;
    }

    v18 = v55[5];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10000D378;
    v45[3] = &unk_100169E40;
    v45[4] = &v48;
    v45[5] = &v60;
    [(MSDAccountManagerHelper *)self _acceptiCloudTermsWithAuthResults:v18 completionHandler:v45];
    v19 = v61[5];
    v20 = dispatch_time(0, 200000000000);
    if (dispatch_semaphore_wait(v19, v20))
    {
      v39 = sub_100063A54();
      v40 = 3727741048;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1000C5E48();
      }

      v41 = @"Failed to accept account terms.";
      goto LABEL_40;
    }

    v21 = v49[5];
    if (v21)
    {
      v35 = [v21 localizedDescription];
      sub_1000C13D8(a4, 3727741048, @"Failed to accept account terms.", v35);
      goto LABEL_21;
    }
  }

  v22 = [v5 features];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10000D3E0;
  v44[3] = &unk_100169E40;
  v44[4] = &v48;
  v44[5] = &v60;
  [(MSDAccountManagerHelper *)self _configureiCloudAccountFeatures:v22 completionHandler:v44];

  v23 = v61[5];
  v24 = dispatch_time(0, 200000000000);
  if (dispatch_semaphore_wait(v23, v24))
  {
    v39 = sub_100063A54();
    v40 = 3727741049;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5E7C();
    }

    v41 = @"Failed to configure account features.";
LABEL_40:

    sub_1000C13D8(a4, v40, v41, @"Operation timed out");
    goto LABEL_41;
  }

  v25 = v49[5];
  if (v25)
  {
    v35 = [v25 localizedDescription];
    sub_1000C13D8(a4, 3727741049, @"Failed to configure account features.", v35);
    goto LABEL_21;
  }

  v26 = [v5 features];
  v27 = [v26 objectForKey:@"com.apple.mobilestoredemo.FindMyiPhone"];
  v28 = [v27 BOOLValue];

  v29 = [v5 features];
  v30 = [v29 objectForKey:@"com.apple.mobilestoredemo.SendLastLocation"];
  v31 = [v30 BOOLValue];

  if (v28)
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10000D448;
    v43[3] = &unk_100169E40;
    v43[4] = &v48;
    v43[5] = &v60;
    [(MSDAccountManagerHelper *)self _enableFindMyServiceAndSendLastLocation:v31 completionHandler:v43];
    v32 = v61[5];
    v33 = dispatch_time(0, 200000000000);
    if (!dispatch_semaphore_wait(v32, v33))
    {
      v34 = v49[5];
      if (!v34)
      {
        goto LABEL_19;
      }

      v35 = [v34 localizedDescription];
      sub_1000C13D8(a4, 3727741042, @"Cannot turn on Find My iPhone.", v35);
LABEL_21:
      v36 = 0;
      goto LABEL_22;
    }

    v39 = sub_100063A54();
    v40 = 3727741042;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5EB0();
    }

    v41 = @"Cannot turn on Find My iPhone.";
    goto LABEL_40;
  }

LABEL_19:
  v35 = [v5 username];
  [(MSDAccountManagerHelper *)self _waitForIDSOperationToQuiesceForAccount:v35 forSignOut:0];
  v36 = 1;
LABEL_22:

LABEL_23:
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  return v36;
}

- (BOOL)performiTunesAccountSignInWithContext:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10000D254;
  v40 = sub_10000D264;
  v41 = dispatch_semaphore_create(0);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10000D254;
  v34 = sub_10000D264;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000D254;
  v28 = sub_10000D264;
  v29 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000D8E4;
  v23[3] = &unk_100169E18;
  v23[4] = &v30;
  v23[5] = &v24;
  v23[6] = &v36;
  [(MSDAccountManagerHelper *)self _authenticateAccountWithContext:v6 forService:2 completionHandler:v23];
  v7 = v37[5];
  v8 = dispatch_time(0, 200000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v18 = sub_100063A54();
    v19 = 3727741043;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5EE4();
    }

    v20 = @"Failed to authenticate account with server.";
    goto LABEL_14;
  }

  v9 = v25[5];
  if (v9)
  {
    v21 = [v9 localizedDescription];
    sub_1000C13D8(a4, 3727741043, @"Failed to authenticate account with server.", v21);
LABEL_16:

    goto LABEL_17;
  }

  v42 = AIDAServiceTypeStore;
  v10 = [NSArray arrayWithObjects:&v42 count:1];
  v11 = v31[5];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000D988;
  v22[3] = &unk_100169E40;
  v22[4] = &v24;
  v22[5] = &v36;
  [(MSDAccountManagerHelper *)self _signInToAppleIDWithContext:v6 forServices:v10 usingAuthResults:v11 completionHandler:v22];

  v12 = v37[5];
  v13 = dispatch_time(0, 200000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5F18();
    }

    v19 = 3727741046;
    v20 = @"Failed to sign in account service.";
LABEL_14:

    sub_1000C13D8(a4, v19, v20, @"Operation timed out");
LABEL_17:
    v15 = 0;
    v16 = 0;
    goto LABEL_6;
  }

  v14 = v25[5];
  if (v14)
  {
    v21 = [v14 localizedDescription];
    sub_1000C13D8(a4, 3727741046, @"Failed to sign in account service.", v21);
    goto LABEL_16;
  }

  v15 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.MobileStore"];
  [v15 setBool:1 forKey:@"SKUIFamilySetupDisplayed"];
  [v15 synchronize];
  v16 = 1;
LABEL_6:
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v16;
}

- (BOOL)performiCloudAccountSignOutWithContext:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(MSDAccountManagerHelper *)self iCloudAccount];
  v8 = [v7 username];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10000D254;
  v33 = sub_10000D264;
  v34 = dispatch_semaphore_create(0);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000D254;
  v27 = sub_10000D264;
  v28 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000DD60;
  v22[3] = &unk_100169E40;
  v22[4] = &v23;
  v22[5] = &v29;
  [(MSDAccountManagerHelper *)self _disableFindMyServiceUsingContext:v6 completionHandler:v22];
  v9 = v30[5];
  v10 = dispatch_time(0, 200000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    v17 = sub_100063A54();
    v18 = 3727741042;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5F4C();
    }

    v19 = @"Cannot turn off Find My iPhone.";
    goto LABEL_14;
  }

  v11 = v24[5];
  if (v11)
  {
    v20 = [v11 localizedDescription];
    sub_1000C13D8(a4, 3727741042, @"Cannot turn off Find My iPhone.", v20);
LABEL_16:

    goto LABEL_17;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000DDC8;
  v21[3] = &unk_100169E40;
  v21[4] = &v23;
  v21[5] = &v29;
  [(MSDAccountManagerHelper *)self _signOutAppleIDForServices:0 completionHandler:v21];
  v12 = v30[5];
  v13 = dispatch_time(0, 200000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v17 = sub_100063A54();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5F80();
    }

    v18 = 3727741047;
    v19 = @"Failed to sign out account service.";
LABEL_14:

    sub_1000C13D8(a4, v18, v19, @"Operation timed out");
LABEL_17:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = v24[5];
  if (v14)
  {
    v20 = [v14 localizedDescription];
    sub_1000C13D8(a4, 3727741047, @"Failed to sign out account service.", v20);
    goto LABEL_16;
  }

  v15 = 1;
  [(MSDAccountManagerHelper *)self _waitForIDSOperationToQuiesceForAccount:v8 forSignOut:1];
LABEL_6:
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  return v15;
}

- (BOOL)performiTunesAccountSignOutWithContext:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10000D254;
  v25 = sub_10000D264;
  v26 = dispatch_semaphore_create(0);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000D254;
  v19 = sub_10000D264;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000E048;
  v14[3] = &unk_100169E40;
  v14[4] = &v15;
  v14[5] = &v21;
  [(MSDAccountManagerHelper *)self _signOutAppleIDForServices:0 completionHandler:v14];
  v7 = v22[5];
  v8 = dispatch_time(0, 200000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v12 = sub_100063A54();
    sub_1000C5FB4(v12);

    sub_1000C13D8(a4, 3727741047, @"Failed to sign out account service.", @"Operation timed out");
LABEL_7:
    v10 = 0;
    goto LABEL_4;
  }

  v9 = v16[5];
  if (v9)
  {
    v13 = [v9 localizedDescription];
    sub_1000C13D8(a4, 3727741047, @"Failed to sign out account service.", v13);

    goto LABEL_7;
  }

  v10 = 1;
LABEL_4:
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v10;
}

- (id)generateiCloudAccountRecoveryKeyWithError:(id *)a3
{
  v4 = [[MSDCDPStateController alloc] initForPrimaryiCloudAccount];
  v5 = v4;
  if (!v4)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000C600C();
    }

    sub_1000C1390(a3, 3727741051, @"Failed to setup recovery key for iCloud account.");
    goto LABEL_11;
  }

  if ([v4 isRecoveryKeyAvailable:0])
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "iCloud account already has recovery key created before!", buf, 2u);
    }
  }

  v13 = 0;
  v7 = [v5 generateRecoveryKeyWithError:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = v8;
    v10 = [v8 localizedDescription];
    sub_1000C13D8(a3, 3727741051, @"Failed to setup recovery key for iCloud account.", v10);

LABEL_11:
    v7 = 0;
  }

  return v7;
}

- (BOOL)forceiCloudKeychainToSyncWithServerAndError:(id *)a3
{
  v5 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000D254;
  v23 = sub_10000D264;
  v24 = 0;
  [(MSDAccountManagerHelper *)self _forceIDSToSyncWithServer];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000E3E8;
  v16 = &unk_100169E68;
  v18 = &v19;
  v6 = v5;
  v17 = v6;
  [(MSDAccountManagerHelper *)self _forceiCloudKeychainToSyncWithServerAndCompletion:&v13];
  v7 = dispatch_time(0, 200000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6040();
    }

    sub_1000C13D8(a3, 3727741050, @"Failed to synchronize account data with server.", @"Operation timed out");
  }

  else
  {
    v9 = v20[5];
    if (!v9)
    {
      v11 = 1;
      goto LABEL_8;
    }

    v10 = [v9 localizedDescription];
    sub_1000C13D8(a3, 3727741050, @"Failed to synchronize account data with server.", v10);
  }

  v11 = 0;
LABEL_8:

  _Block_object_dispose(&v19, 8);
  return v11;
}

- (void)_authenticateAccountWithContext:(id)a3 forService:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 username];
  v11 = [v8 password];
  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v10;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Authenticating account: %{public}@ for service: %ld", buf, 0x16u);
  }

  if (v9)
  {
    v13 = objc_alloc_init(AKAppleIDAuthenticationContext);
    [v13 setUsername:v10];
    [v13 setIsUsernameEditable:0];
    [v13 _setPassword:v11];
    [v13 setServiceType:a4];
    [v13 setAuthenticationType:0];
    v14 = [v8 recoveryKey];
    [v13 _setMasterKey:v14];

    v15 = objc_alloc_init(AKAppleIDAuthenticationController);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000E664;
    v16[3] = &unk_100169E90;
    v16[4] = self;
    v17 = v10;
    v18 = v11;
    v19 = v9;
    [v15 authenticateWithContext:v13 completion:v16];
  }
}

- (void)_signInToAppleIDWithContext:(id)a3 forServices:(id)a4 usingAuthResults:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000D254;
  v31 = sub_10000D264;
  v32 = 0;
  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Signing in to Apple ID for services: %{public}@", buf, 0xCu);
  }

  if (v13)
  {
    v15 = objc_alloc_init(MSDCDPFakeUIProvider);
    v16 = v28[5];
    v28[5] = v15;

    v17 = [v10 localSecret];
    [v28[5] setLocalSecret:v17];

    v18 = [v10 recoveryKey];
    [v28[5] setRecoveryKey:v18];

    v19 = objc_alloc_init(AIDAMutableServiceContext);
    [v19 setAuthenticationResults:v12];
    [v19 setCdpUiProvider:v28[5]];
    v20 = [[CDPContext alloc] initWithAuthenticationResults:v12];
    [(MSDAccountManagerHelper *)self setCdpContext:v20];

    if ([v10 resetCDP])
    {
      v21 = [(MSDAccountManagerHelper *)self cdpContext];
      [v21 set_forceReset:1];
    }

    v33 = AIDAServiceTypeCloud;
    v34 = self;
    v22 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v19 setSignInContexts:v22];

    v23 = [(MSDAccountManagerHelper *)self serviceOwnersManager];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000EB20;
    v24[3] = &unk_100169EB8;
    v25 = v13;
    v26 = &v27;
    [v23 signInToServices:v11 usingContext:v19 completion:v24];
  }

  _Block_object_dispose(&v27, 8);
}

- (id)_createTempAppleAccountFromAuthResults:(id)a3
{
  v4 = a3;
  v5 = [ACAccount alloc];
  v6 = [(MSDAccountManagerHelper *)self accountStore];
  v7 = [v6 aa_appleAccountType];
  v8 = [v5 initWithAccountType:v7];

  v9 = [v4 objectForKeyedSubscript:AKAuthenticationUsernameKey];
  v10 = [v4 objectForKeyedSubscript:AKAuthenticationDSIDKey];
  v11 = [v10 stringValue];

  [v8 setUsername:v9];
  [v8 setAccountProperty:v11 forKey:@"personID"];
  v12 = [v4 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  v13 = [v4 objectForKeyedSubscript:AKAuthenticationRawPasswordKey];

  v14 = [ACAccountCredential credentialWithPassword:v12];
  [v8 setCredential:v14];
  [v8 _aa_setRawPassword:v13];

  return v8;
}

- (void)_acceptiCloudTermsWithAuthResults:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSSet setWithObjects:AATermsEntryDevice, AATermsEntryWarranty, AATermsEntryPrivacy, AATermsEntryiCloud, AATermsEntryiTunes, AATermsEntryGameCenter, 0];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accepting iCloud terms...", buf, 2u);
  }

  if (v7)
  {
    v10 = [(MSDAccountManagerHelper *)self _createTempAppleAccountFromAuthResults:v6];
    if (v10)
    {
      v11 = v10;
      v12 = [[AAiCloudTermsStringRequest alloc] initWithAccount:v10 termsEntries:v8 preferPassword:1];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000F090;
      v15[3] = &unk_100169F08;
      v16 = v11;
      v17 = v7;
      v13 = v11;
      [v12 performRequestWithHandler:v15];
    }

    else
    {
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6170();
      }

      v12 = [NSError errorDomainMSDWithCode:3727744768 message:@"An error has occurred."];
      (*(v7 + 2))(v7, v12);
    }
  }
}

- (void)_signOutAppleIDForServices:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100063A54();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v24 = v6;
    v10 = "Signing out Apple ID for services: %{public}@";
    v11 = v8;
    v12 = 12;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v10 = "Signing out Apple ID for ALL services.";
    v11 = v8;
    v12 = 2;
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  if (v7)
  {
    v13 = objc_alloc_init(AIDAMutableServiceContext);
    v21 = AIDAServiceTypeCloud;
    v22 = self;
    v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v13 setSignOutContexts:v14];

    v15 = [(MSDAccountManagerHelper *)self serviceOwnersManager];
    if (v6)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000F574;
      v19[3] = &unk_100169F30;
      v16 = &v20;
      v20 = v7;
      [v15 signOutOfServices:v6 usingContext:v13 completion:v19];
    }

    else
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000F734;
      v17[3] = &unk_100169F58;
      v16 = &v18;
      v18 = v7;
      [v15 signOutOfAllServicesUsingContext:v13 completion:v17];
    }
  }
}

- (void)_markiCloudAccountAsManagedAccount:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting managed account state for iCloud account to: %{BOOL}d", buf, 8u);
  }

  if (v6)
  {
    v8 = [(MSDAccountManagerHelper *)self iCloudAccount];
    if (v8)
    {
      v9 = v8;
      if (v4)
      {
        v10 = @"DeKOTA";
      }

      else
      {
        v10 = 0;
      }

      [v8 setObject:v10 forKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];
      v12 = [(MSDAccountManagerHelper *)self accountStore];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000F9E4;
      v13[3] = &unk_100169F58;
      v14 = v6;
      [v12 saveAccount:v9 withCompletionHandler:v13];
    }

    else
    {
      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No iCloud account found on device.", buf, 2u);
      }

      (*(v6 + 2))(v6, 0);
    }
  }
}

- (void)_configureiCloudAccountFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Configuring iCloud account features: %{public}@", buf, 0xCu);
  }

  if (v7)
  {
    v9 = [(MSDAccountManagerHelper *)self iCloudAccount];
    if (v9)
    {
      v10 = v9;
      if (v6 && [v6 count])
      {
        v28 = self;
        v29 = v7;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v30 = v6;
        v11 = v6;
        v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (!v12)
        {
          goto LABEL_29;
        }

        v13 = v12;
        v14 = *v37;
        v31 = ACAccountDataclassSiri;
        while (1)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v36 + 1) + 8 * i);
            v17 = [v11 objectForKey:{v16, v28}];
            v18 = [v17 BOOLValue];
            v19 = sub_100063A54();
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
            if (v18)
            {
              if (v20)
              {
                *buf = 138543362;
                v42 = v16;
                v21 = v19;
                v22 = ">> Enabling iCloud account feature: %{public}@";
LABEL_17:
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
              }
            }

            else if (v20)
            {
              *buf = 138543362;
              v42 = v16;
              v21 = v19;
              v22 = ">> Disabling iCloud account feature: %{public}@";
              goto LABEL_17;
            }

            if (([v16 isEqualToString:@"com.apple.mobilestoredemo.FindMyiPhone"] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"com.apple.mobilestoredemo.SendLastLocation") & 1) == 0)
            {
              if ([v10 isProvisionedForDataclass:v16])
              {
                if ([v16 isEqualToString:v31])
                {
                  v23 = +[AFPreferences sharedPreferences];
                  [v23 setCloudSyncEnabled:{objc_msgSend(v17, "BOOLValue")}];
                }

                [v10 setEnabled:objc_msgSend(v17 forDataclass:{"BOOLValue"), v16}];
              }

              else
              {
                v24 = sub_100063A54();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  sub_1000C640C(&v34, v35, v24);
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (!v13)
          {
LABEL_29:

            v25 = [(MSDAccountManagerHelper *)v28 accountStore];
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_10000FEC8;
            v32[3] = &unk_100169F58;
            v7 = v29;
            v33 = v29;
            [v25 saveAccount:v10 withCompletionHandler:v32];

            v6 = v30;
            goto LABEL_36;
          }
        }
      }

      v26 = sub_100063A54();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No iCloud account features provided. Skip configuring anything!", buf, 2u);
      }

      (*(v7 + 2))(v7, 0);
    }

    else
    {
      v27 = sub_100063A54();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000C644C();
      }

      v10 = [NSError errorDomainMSDWithCode:3727744768 message:@"An error has occurred."];
      (*(v7 + 2))(v7, v10);
    }

LABEL_36:
  }
}

- (void)_enableFindMyServiceAndSendLastLocation:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[AAUIDeviceLocatorService sharedInstance];
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling 'Find My' service...", buf, 2u);
  }

  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100010088;
    v8[3] = &unk_100169FA8;
    v9 = v5;
    v10 = a3;
    [v6 enableInContext:3 completion:v8];
  }
}

- (void)_disableFindMyServiceUsingContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AAUIDeviceLocatorService sharedInstance];
  v9 = [(MSDAccountManagerHelper *)self iCloudAccount];
  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 username];
    *buf = 138543362;
    v28[0] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking 'Find My' service state for iCloud account: %{public}@", buf, 0xCu);
  }

  if (v7)
  {
    if (v9)
    {
      v12 = [v9 username];
      [v6 setUsername:v12];

      *&v13 = 67109376;
      v22 = v13;
      while (![v8 isStateKnown] || objc_msgSend(v8, "isChangingState"))
      {
        v14 = sub_100063A54();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v8 isStateKnown];
          v16 = [v8 isChangingState];
          *buf = v22;
          LODWORD(v28[0]) = v15;
          WORD2(v28[0]) = 1024;
          *(v28 + 6) = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Wait until 'Find My' service state is known (isStateKnown = %{BOOL}d) or finished changing (isChaningState = %{BOOL}d).", buf, 0xEu);
        }

        sleep(1u);
      }

      if (![v8 isStateKnown] || (objc_msgSend(v8, "isEnabled") & 1) != 0)
      {
        v17 = sub_100063A54();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "'Find My' service is still enabled. Disabling it now!", buf, 2u);
        }

        v18 = [v6 password];

        if (v18)
        {
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10001068C;
          v23[3] = &unk_10016A020;
          v26 = v7;
          v24 = v9;
          v25 = v8;
          [(MSDAccountManagerHelper *)self _authenticateAccountWithContext:v6 forService:0 completionHandler:v23];
        }

        else
        {
          v19 = sub_100063A54();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1000C65CC();
          }

          v20 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response." reason:@"No password for existing account."];
          (*(v7 + 2))(v7, v20);
        }

        goto LABEL_24;
      }

      v21 = sub_100063A54();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "'Find My' service is already disabled.", buf, 2u);
      }
    }

    (*(v7 + 2))(v7, 0);
  }

LABEL_24:
}

- (void)_waitForIDSOperationToQuiesceForAccount:(id)a3 forSignOut:(BOOL)a4
{
  v4 = a4;
  v39 = a3;
  v5 = @"registration";
  v37 = v4;
  if (v4)
  {
    v5 = @"deregistration";
  }

  v6 = v5;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wait for IDS %{public}@ to quiesce...", buf, 0xCu);
  }

  if (v39)
  {
    v8 = [[IDSAccountController alloc] initWithService:@"com.apple.private.alloy.mobilestoredemo.icloud"];
    if (v8)
    {
      v9 = v8;
      v36 = v6;
      v10 = 0;
      v11 = 0;
      v12 = 0.0;
      while (1)
      {
        v13 = v10;
        v14 = [v9 accounts];
        v10 = +[NSDate date];

        v15 = sub_100063A54();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v49 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found IDS accounts: %{public}@", buf, 0xCu);
        }

        if (v37)
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v16 = v14;
          v17 = [(__CFString *)v16 countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (!v17)
          {
LABEL_19:

            v21 = 1;
            goto LABEL_31;
          }

          v18 = v17;
          v19 = *v45;
LABEL_13:
          v20 = 0;
          while (1)
          {
            if (*v45 != v19)
            {
              objc_enumerationMutation(v16);
            }

            if ([*(*(&v44 + 1) + 8 * v20) isActive])
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = [(__CFString *)v16 countByEnumeratingWithState:&v44 objects:v53 count:16];
              if (v18)
              {
                goto LABEL_13;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v22 = v14;
          v23 = [(__CFString *)v22 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v41;
            v38 = v11;
            while (2)
            {
              v26 = v10;
              v27 = v9;
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v41 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v29 = *(*(&v40 + 1) + 8 * i);
                if ([v29 isActive])
                {
                  v30 = [v29 loginID];
                  v31 = [v30 isEqualToString:v39];

                  if (v31)
                  {

                    v21 = 1;
                    v9 = v27;
                    v10 = v26;
                    v11 = v38;
                    goto LABEL_31;
                  }
                }
              }

              v24 = [(__CFString *)v22 countByEnumeratingWithState:&v40 objects:v52 count:16];
              v9 = v27;
              v10 = v26;
              v11 = v38;
              if (v24)
              {
                continue;
              }

              break;
            }
          }
        }

        sleep(5u);
        v21 = 0;
LABEL_31:
        v32 = +[NSDate date];

        [v32 timeIntervalSinceDate:v10];
        v12 = v12 + v33;

        if ((v21 & 1) == 0)
        {
          v11 = v32;
          if (v12 < 60.0)
          {
            continue;
          }
        }

        v34 = sub_100063A54();
        v35 = v34;
        if (v21)
        {
          v6 = v36;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v49 = v36;
            v50 = 2048;
            v51 = v12;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "IDS %{public}@ finished after %f seconds.", buf, 0x16u);
          }
        }

        else
        {
          v6 = v36;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1000C6658();
          }
        }

        goto LABEL_43;
      }
    }

    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000C66D8();
    }
  }

  else
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No iCloud account signed in on device!", buf, 2u);
    }
  }

LABEL_43:
}

- (id)getIdentityServicesID
{
  v2 = IDSCopyLocalDeviceUniqueID();

  return v2;
}

- (id)getListOfCloudPairedDevices
{
  v2 = [(MSDAccountManagerHelper *)self iCloudAccount];

  if (v2)
  {
    v3 = +[NSMutableArray array];
    v4 = [[IDSAccountController alloc] initWithService:@"com.apple.private.alloy.mobilestoredemo.icloud"];
    v5 = v4;
    if (v4)
    {
      v28 = v4;
      [v4 accounts];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v6 = v37 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v35;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v35 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v34 + 1) + 8 * i);
            if ([v11 isActive])
            {
              v12 = [v11 loginID];
              v13 = [(MSDAccountManagerHelper *)self iCloudAccount];
              [v13 username];
              v15 = v14 = v6;
              v16 = [v12 isEqualToString:v15];

              v6 = v14;
              if (v16)
              {
                v32 = 0u;
                v33 = 0u;
                v30 = 0u;
                v31 = 0u;
                v17 = [v11 devices];
                v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v31;
                  do
                  {
                    for (j = 0; j != v19; j = j + 1)
                    {
                      if (*v31 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v22 = *(*(&v30 + 1) + 8 * j);
                      v23 = [v22 nsuuid];
                      if (v23)
                      {
                        v24 = v23;
                        v25 = [v22 supportsiCloudPairing];

                        if (v25)
                        {
                          v26 = [v22 uniqueID];
                          [v3 addObject:v26];
                        }
                      }
                    }

                    v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
                  }

                  while (v19);
                }

                goto LABEL_29;
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:

      v5 = v28;
    }

    else
    {
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000C66D8();
      }
    }
  }

  else
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6758();
    }

    v3 = 0;
  }

  return v3;
}

- (void)_forceiCloudKeychainToSyncWithServerAndCompletion:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10000D254;
  v22 = sub_10000D264;
  v23 = 0;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Forcing iCloud keychain to sync with server...", buf, 2u);
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = [(MSDAccountManagerHelper *)self iCloudAccount];
  if (!v6)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No iCloud account signed in on device!", buf, 2u);
    }

    v4[2](v4, 0);
LABEL_12:
    v8 = 0;
    v6 = 0;
    goto LABEL_13;
  }

  v17 = 0;
  v7 = [CKKSControl controlObject:&v17];
  v8 = v17;
  v9 = v19[5];
  v19[5] = v7;

  if (v8)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 localizedDescription];
      sub_1000C678C(v11, buf, v10);
    }

    (v4)[2](v4, v8);
  }

  else
  {
    v13 = v19[5];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100011710;
    v14[3] = &unk_10016A048;
    v15 = v4;
    v16 = &v18;
    [v13 rpcFetchAndProcessChanges:0 reply:v14];

    v8 = 0;
  }

LABEL_13:

  _Block_object_dispose(&v18, 8);
}

- (void)_forceIDSToSyncWithServer
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Forcing IDS to sync with server...", buf, 2u);
  }

  v4 = [(MSDAccountManagerHelper *)self iCloudAccount];
  if (v4)
  {
    v5 = [[IDSAccountController alloc] initWithService:@"com.apple.private.alloy.multiplex1"];
    if (v5)
    {
      v6 = v5;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [v5 enabledAccounts];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            v13 = sub_100063A54();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v19 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Kicking IDS account: %{public}@", buf, 0xCu);
            }

            IDSKickGetDependent();
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
        }

        while (v9);
      }

      sleep(0xAu);
    }

    else
    {
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6870();
      }
    }
  }

  else
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No iCloud account signed in on device!", buf, 2u);
    }
  }
}

- (BOOL)_isAllowListedAccount:(id)a3 withAuthResults:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:AKAuthenticationDemoAccountKey];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v6 BOOLValue])
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No 'demo account' flag set in IdMS auth response!", buf, 2u);
    }

    v23 = 0;
    v10 = [NSRegularExpression regularExpressionWithPattern:@"chnl_internal_[0-9]{1 options:2}@icloud.com" error:1, &v23];
    v11 = v23;
    if (!v10)
    {
      v19 = sub_100063A54();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000C68A4();
      }

      goto LABEL_44;
    }

    if (![v10 rangeOfFirstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}] && v12 == objc_msgSend(v5, "length"))
    {
      v13 = [v5 substringWithRange:{objc_msgSend(@"chnl_internal_", "length"), objc_msgSend(v5, "rangeOfString:", @"@icloud.com", "length")}];
      if ([v13 integerValue]>= 1 && [v13 integerValue]< 21)
      {
        v8 = 1;
LABEL_31:

        goto LABEL_32;
      }
    }

    v22 = v11;
    v14 = [NSRegularExpression regularExpressionWithPattern:@"(ars|channel|dekota)[0-9]+\\.[0-9]+@(icloud|me|mac)\\.com" options:1 error:&v22];
    v7 = v22;

    if (v14)
    {
      if (![v14 rangeOfFirstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}] && v15 == objc_msgSend(v5, "length"))
      {
        goto LABEL_26;
      }

      v21 = v7;
      v10 = [NSRegularExpression regularExpressionWithPattern:@"chnl\\.[0-9]{7}\\.[0-9]{3}@icloud\\.com" options:1 error:&v21];
      v11 = v21;

      if (!v10)
      {
        v19 = sub_100063A54();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000C68A4();
        }

        goto LABEL_44;
      }

      if (![v10 rangeOfFirstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}] && v16 == objc_msgSend(v5, "length"))
      {
        v8 = 1;
LABEL_32:
        v14 = v10;
        v7 = v11;
        goto LABEL_33;
      }

      v20 = v11;
      v14 = [NSRegularExpression regularExpressionWithPattern:@"chnl\\.[a-zA-Z0-9]{4}\\.[a-zA-Z0-9]{6}@icloud\\.com" options:1 error:&v20];
      v7 = v20;

      if (v14)
      {
        if (![v14 rangeOfFirstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}] && v17 == objc_msgSend(v5, "length"))
        {
LABEL_26:
          v8 = 1;
LABEL_33:

          goto LABEL_34;
        }

        v10 = v14;
        v11 = v7;
LABEL_28:
        v13 = sub_100063A54();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000C68D8();
        }

        v8 = 0;
        goto LABEL_31;
      }

      v19 = sub_100063A54();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000C68A4();
      }
    }

    else
    {
      v19 = sub_100063A54();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000C68A4();
      }
    }

    v11 = v7;
LABEL_44:

    v10 = 0;
    goto LABEL_28;
  }

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found 'demo account' flag in IdMS auth response!", buf, 2u);
  }

  v8 = 1;
LABEL_34:

  return v8;
}

- (void)signOutFlowController:(id)a3 showAlertWithTitle:(id)a4 message:(id)a5 completion:(id)a6
{
  v6 = a6;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[MSDAccountManagerHelper signOutFlowController:showAlertWithTitle:message:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: entered!", &v8, 0xCu);
  }

  v6[2](v6, 1);
}

- (void)signOutFlowController:(id)a3 performWalrusValidationForAccount:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDAccountManagerHelper signOutFlowController:performWalrusValidationForAccount:completion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: entered!", &v7, 0xCu);
  }

  v5[2](v5, 1, 0);
}

- (void)signOutFlowController:(id)a3 disableFindMyDeviceForAccount:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDAccountManagerHelper signOutFlowController:disableFindMyDeviceForAccount:completion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: entered!", &v7, 0xCu);
  }

  v5[2](v5, 1, 0);
}

- (void)signOutFlowController:(id)a3 signOutAccount:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[MSDAccountManagerHelper signOutFlowController:signOutAccount:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: entered!", buf, 0xCu);
  }

  v10 = [(MSDAccountManagerHelper *)self accountStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001223C;
  v12[3] = &unk_100169F58;
  v13 = v7;
  v11 = v7;
  [v10 removeAccount:v8 withDataclassActions:0 completion:v12];
}

@end