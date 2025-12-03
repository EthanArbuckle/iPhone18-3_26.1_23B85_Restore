@interface OTControlCLI
+ (id)annotateStatus:(id)status;
- (OTControlCLI)initWithOTControl:(id)control;
- (int)checkAndPrintEscrowRecords:(id)records error:(id)error json:(BOOL)json;
- (int)checkCustodianRecoveryKeyWithArguments:(id)arguments uuidString:(id)string timeout:(double)timeout;
- (int)checkInheritanceKeyWithArguments:(id)arguments uuidString:(id)string timeout:(double)timeout;
- (int)checkRecoveryKeyWithArguments:(id)arguments;
- (int)createCustodianRecoveryKeyWithArguments:(id)arguments uuidString:(id)string json:(BOOL)json timeout:(double)timeout;
- (int)createInheritanceKeyWithArguments:(id)arguments uuidString:(id)string json:(BOOL)json timeout:(double)timeout;
- (int)createInheritanceKeyWithClaimTokenAndWrappingKey:(id)key uuidString:(id)string claimToken:(id)token wrappingKey:(id)wrappingKey json:(BOOL)json timeout:(double)timeout;
- (int)depart:(id)depart;
- (int)disableWalrusWithArguments:(id)arguments timeout:(double)timeout;
- (int)disableWebAccessWithArguments:(id)arguments timeout:(double)timeout;
- (int)enableWalrusWithArguments:(id)arguments timeout:(double)timeout;
- (int)enableWebAccessWithArguments:(id)arguments timeout:(double)timeout;
- (int)escrowCheck:(id)check json:(BOOL)json;
- (int)fetchAccountSettingsWithArguments:(id)arguments json:(BOOL)json;
- (int)fetchAllBottles:(id)bottles control:(id)control overrideEscrowCache:(BOOL)cache;
- (int)fetchTotalTrustedPeersWithArguments:(id)arguments json:(BOOL)json;
- (int)fetchTrustedFullPeersWithArguments:(id)arguments json:(BOOL)json;
- (int)fetchUserControllableViewsSyncStatus:(id)status;
- (int)generateInheritanceKeyWithArguments:(id)arguments json:(BOOL)json timeout:(double)timeout;
- (int)icscRepairResetWithArguments:(id)arguments json:(BOOL)json;
- (int)joinWithCustodianRecoveryKeyWithArguments:(id)arguments wrappingKey:(id)key wrappedKey:(id)wrappedKey uuidString:(id)string timeout:(double)timeout;
- (int)joinWithInheritanceKeyWithArguments:(id)arguments wrappingKey:(id)key wrappedKey:(id)wrappedKey uuidString:(id)string timeout:(double)timeout;
- (int)joinWithRecoveryKeyWithArguments:(id)arguments recoveryKey:(id)key;
- (int)performSilentEscrowRecovery:(id)recovery appleID:(id)d secret:(id)secret;
- (int)preflightJoinWithCustodianRecoveryKeyWithArguments:(id)arguments wrappingKey:(id)key wrappedKey:(id)wrappedKey uuidString:(id)string timeout:(double)timeout;
- (int)preflightJoinWithInheritanceKeyWithArguments:(id)arguments wrappingKey:(id)key wrappedKey:(id)wrappedKey uuidString:(id)string timeout:(double)timeout;
- (int)preflightJoinWithRecoveryKeyWithArguments:(id)arguments recoveryKey:(id)key;
- (int)printAccountMetadataWithArguments:(id)arguments json:(BOOL)json;
- (int)recoverUsingBottleID:(id)d entropy:(id)entropy arguments:(id)arguments control:(id)control;
- (int)recreateInheritanceKeyWithArguments:(id)arguments uuidString:(id)string wrappingKey:(id)key wrappedKey:(id)wrappedKey claimToken:(id)token json:(BOOL)json timeout:(double)timeout;
- (int)refetchCKKSPolicy:(id)policy;
- (int)removeCustodianRecoveryKeyWithArguments:(id)arguments uuidString:(id)string timeout:(double)timeout;
- (int)removeInheritanceKeyWithArguments:(id)arguments uuidString:(id)string timeout:(double)timeout;
- (int)removeRecoveryKeyWithArguments:(id)arguments;
- (int)rerollWithArguments:(id)arguments json:(BOOL)json;
- (int)resetOctagon:(id)octagon idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s isDBRv2:(BOOL)rv2 timeout:(double)timeout;
- (int)setMachineIDOverride:(id)override machineID:(id)d json:(BOOL)json;
- (int)setRecoveryKeyWithArguments:(id)arguments;
- (int)signIn:(id)in;
- (int)signOut:(id)out;
- (int)simulateReceivePush:(id)push json:(BOOL)json;
- (int)simulateReceiveTDLChangePush:(id)push json:(BOOL)json;
- (int)startOctagonStateMachine:(id)machine;
- (int)status:(id)status json:(BOOL)json;
- (int)storeInheritanceKeyWithArguments:(id)arguments wrappingKey:(id)key wrappedKey:(id)wrappedKey uuidString:(id)string timeout:(double)timeout;
- (int)tapToRadar:(id)radar description:(id)description radar:(id)a5;
- (int)tlkRecoverability:(id)recoverability;
- (void)printCRKWithPeer:(id)peer information:(id)information prefix:(id)prefix;
- (void)printPeer:(id)peer prefix:(id)prefix;
- (void)printPeers:(id)peers egoPeerID:(id)d informationOnPeers:(id)onPeers informationOnCRKs:(id)ks;
@end

@implementation OTControlCLI

- (int)fetchTrustedFullPeersWithArguments:(id)arguments json:(BOOL)json
{
  argumentsCopy = arguments;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  control = [(OTControlCLI *)self control];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005378;
  v10[3] = &unk_1000247C0;
  jsonCopy = json;
  v10[4] = &v12;
  [control trustedFullPeers:argumentsCopy reply:v10];

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (int)fetchTotalTrustedPeersWithArguments:(id)arguments json:(BOOL)json
{
  argumentsCopy = arguments;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  control = [(OTControlCLI *)self control];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005B60;
  v10[3] = &unk_1000247C0;
  jsonCopy = json;
  v10[4] = &v12;
  [control totalTrustedPeers:argumentsCopy reply:v10];

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (int)icscRepairResetWithArguments:(id)arguments json:(BOOL)json
{
  argumentsCopy = arguments;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  control = [(OTControlCLI *)self control];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005DCC;
  v10[3] = &unk_100024660;
  jsonCopy = json;
  v10[4] = &v12;
  [control icscRepairReset:argumentsCopy reply:v10];

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (int)rerollWithArguments:(id)arguments json:(BOOL)json
{
  argumentsCopy = arguments;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  control = [(OTControlCLI *)self control];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005FF4;
  v10[3] = &unk_100024660;
  jsonCopy = json;
  v10[4] = &v12;
  [control reroll:argumentsCopy reply:v10];

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (int)printAccountMetadataWithArguments:(id)arguments json:(BOOL)json
{
  argumentsCopy = arguments;
  control = [(OTControlCLI *)self control];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000061C0;
  v9[3] = &unk_100024798;
  jsonCopy = json;
  [control getAccountMetadata:argumentsCopy reply:v9];

  return 1;
}

- (int)setMachineIDOverride:(id)override machineID:(id)d json:(BOOL)json
{
  overrideCopy = override;
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  control = [(OTControlCLI *)self control];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006428;
  v13[3] = &unk_100024660;
  jsonCopy = json;
  v13[4] = &v15;
  [control setMachineIDOverride:overrideCopy machineID:dCopy reply:v13];

  v11 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (int)fetchAccountSettingsWithArguments:(id)arguments json:(BOOL)json
{
  argumentsCopy = arguments;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  control = [(OTControlCLI *)self control];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006914;
  v10[3] = &unk_100024778;
  jsonCopy = json;
  v10[4] = &v12;
  [control fetchAccountSettings:argumentsCopy reply:v10];

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (int)disableWalrusWithArguments:(id)arguments timeout:(double)timeout
{
  argumentsCopy = arguments;
  v6 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -86;
  v7 = objc_alloc_init(OTAccountSettings);
  v8 = objc_alloc_init(OTWalrus);
  [v8 setEnabled:0];
  [v7 setWalrus:v8];
  v14 = v8;
  v9 = v21;
  do
  {
    *(v9 + 24) = 0;
    control = [(OTControlCLI *)self control];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100006D68;
    v16[3] = &unk_100024510;
    v11 = v6;
    v17 = v11;
    v18 = &v20;
    v19 = &v24;
    [control setAccountSetting:argumentsCopy setting:v7 reply:v16];

    v9 = v21;
  }

  while ((v21[3] & 1) != 0);
  v12 = *(v25 + 6);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (int)enableWalrusWithArguments:(id)arguments timeout:(double)timeout
{
  argumentsCopy = arguments;
  v6 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -86;
  v7 = objc_alloc_init(OTAccountSettings);
  v8 = objc_alloc_init(OTWalrus);
  [v8 setEnabled:1];
  [v7 setWalrus:v8];
  v14 = v8;
  v9 = v21;
  do
  {
    *(v9 + 24) = 0;
    control = [(OTControlCLI *)self control];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000702C;
    v16[3] = &unk_100024510;
    v11 = v6;
    v17 = v11;
    v18 = &v20;
    v19 = &v24;
    [control setAccountSetting:argumentsCopy setting:v7 reply:v16];

    v9 = v21;
  }

  while ((v21[3] & 1) != 0);
  v12 = *(v25 + 6);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (int)enableWebAccessWithArguments:(id)arguments timeout:(double)timeout
{
  argumentsCopy = arguments;
  v6 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -86;
  v7 = objc_alloc_init(OTAccountSettings);
  v8 = objc_alloc_init(OTWebAccess);
  [v8 setEnabled:1];
  [v7 setWebAccess:v8];
  v14 = v8;
  v9 = v21;
  do
  {
    *(v9 + 24) = 0;
    control = [(OTControlCLI *)self control];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000072F0;
    v16[3] = &unk_100024510;
    v11 = v6;
    v17 = v11;
    v18 = &v20;
    v19 = &v24;
    [control setAccountSetting:argumentsCopy setting:v7 reply:v16];

    v9 = v21;
  }

  while ((v21[3] & 1) != 0);
  v12 = *(v25 + 6);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (int)disableWebAccessWithArguments:(id)arguments timeout:(double)timeout
{
  argumentsCopy = arguments;
  v6 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -86;
  v7 = objc_alloc_init(OTAccountSettings);
  v8 = objc_alloc_init(OTWebAccess);
  [v8 setEnabled:0];
  [v7 setWebAccess:v8];
  v14 = v8;
  v9 = v21;
  do
  {
    *(v9 + 24) = 0;
    control = [(OTControlCLI *)self control];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000075B4;
    v16[3] = &unk_100024510;
    v11 = v6;
    v17 = v11;
    v18 = &v20;
    v19 = &v24;
    [control setAccountSetting:argumentsCopy setting:v7 reply:v16];

    v9 = v21;
  }

  while ((v21[3] & 1) != 0);
  v12 = *(v25 + 6);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (int)createInheritanceKeyWithClaimTokenAndWrappingKey:(id)key uuidString:(id)string claimToken:(id)token wrappingKey:(id)wrappingKey json:(BOOL)json timeout:(double)timeout
{
  keyCopy = key;
  stringCopy = string;
  tokenCopy = token;
  wrappingKeyCopy = wrappingKey;
  if (stringCopy)
  {
    v15 = [[NSUUID alloc] initWithUUIDString:stringCopy];
    if (!v15)
    {
      v16 = 1;
      fwrite("bad format for inheritanceUUID\n", 0x1FuLL, 1uLL, __stderrp);
      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = -86;
  v18 = [[NSData alloc] initWithBase64EncodedString:wrappingKeyCopy options:0];
  if (v18)
  {
    v19 = [[NSData alloc] initWithBase64EncodedString:tokenCopy options:0];
    if (v19)
    {
      v23 = wrappingKeyCopy;
      v20 = v33;
      do
      {
        *(v20 + 24) = 0;
        control = [(OTControlCLI *)self control];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100007968;
        v27[3] = &unk_100024750;
        v28 = v17;
        v29 = &v32;
        v30 = &v36;
        jsonCopy = json;
        [control createInheritanceKey:keyCopy uuid:v15 claimTokenData:v19 wrappingKeyData:v18 reply:v27];

        v20 = v33;
      }

      while ((v33[3] & 1) != 0);
      v16 = *(v37 + 6);
      wrappingKeyCopy = v23;
    }

    else
    {
      v16 = 1;
      fwrite("bad base64 data for claimToken\n", 0x1FuLL, 1uLL, __stderrp);
    }
  }

  else
  {
    v16 = 1;
    fwrite("bad base64 data for wrappingKey\n", 0x20uLL, 1uLL, __stderrp);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

LABEL_14:
  return v16;
}

- (int)recreateInheritanceKeyWithArguments:(id)arguments uuidString:(id)string wrappingKey:(id)key wrappedKey:(id)wrappedKey claimToken:(id)token json:(BOOL)json timeout:(double)timeout
{
  argumentsCopy = arguments;
  stringCopy = string;
  keyCopy = key;
  wrappedKeyCopy = wrappedKey;
  tokenCopy = token;
  if (stringCopy)
  {
    v20 = [[NSUUID alloc] initWithUUIDString:stringCopy];
    if (!v20)
    {
      v21 = 1;
      fwrite("bad format for inheritanceUUID\n", 0x1FuLL, 1uLL, __stderrp);
      goto LABEL_20;
    }
  }

  else
  {
    v20 = 0;
  }

  v36 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 1;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = -86;
  v22 = [[NSData alloc] initWithBase64EncodedString:keyCopy options:0];
  if (v22)
  {
    v23 = [[NSData alloc] initWithBase64EncodedString:wrappedKeyCopy options:0];
    if (v23)
    {
      v24 = [[NSData alloc] initWithBase64EncodedString:tokenCopy options:0];
      if (v24)
      {
        v34 = v23;
        v35 = v22;
        v33 = objc_alloc_init(NSUUID);
        v43 = 0;
        v25 = [[OTInheritanceKey alloc] initWithWrappedKeyData:v23 wrappingKeyData:v22 claimTokenData:v24 uuid:v33 error:&v43];
        v26 = v43;
        v32 = v26;
        if (v25)
        {
          v27 = v45;
          do
          {
            *(v27 + 24) = 0;
            control = [(OTControlCLI *)self control];
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_100008000;
            v38[3] = &unk_100024750;
            v39 = v36;
            v40 = &v44;
            v41 = &v48;
            jsonCopy = json;
            [control recreateInheritanceKey:argumentsCopy uuid:v20 oldIK:v25 reply:v38];

            v27 = v45;
          }

          while ((v45[3] & 1) != 0);
          v21 = *(v49 + 6);
        }

        else
        {
          v29 = __stderrp;
          v30 = [v26 description];
          fprintf(v29, "failed to create OTInheritanceKey: %s\n", [v30 UTF8String]);

          v21 = 1;
        }

        v23 = v34;
        v22 = v35;
      }

      else
      {
        v21 = 1;
        fwrite("bad base64 data for claimToken\n", 0x1FuLL, 1uLL, __stderrp);
      }
    }

    else
    {
      v21 = 1;
      fwrite("bad base64 data for wrappedKey\n", 0x1FuLL, 1uLL, __stderrp);
    }
  }

  else
  {
    v21 = 1;
    fwrite("bad base64 data for wrappingKey\n", 0x20uLL, 1uLL, __stderrp);
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

LABEL_20:
  return v21;
}

- (int)checkInheritanceKeyWithArguments:(id)arguments uuidString:(id)string timeout:(double)timeout
{
  argumentsCopy = arguments;
  stringCopy = string;
  v10 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -86;
  v11 = [[NSUUID alloc] initWithUUIDString:stringCopy];
  if (v11)
  {
    v16 = stringCopy;
    v12 = v22;
    do
    {
      *(v12 + 24) = 0;
      control = [(OTControlCLI *)self control];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100008318;
      v17[3] = &unk_1000246D8;
      v18 = v10;
      v19 = &v21;
      v20 = &v25;
      [control checkInheritanceKey:argumentsCopy uuid:v11 reply:v17];

      v12 = v22;
    }

    while ((v22[3] & 1) != 0);
    v14 = *(v26 + 6);
    stringCopy = v16;
  }

  else
  {
    v14 = 1;
    fwrite("bad format for inheritanceUUID\n", 0x1FuLL, 1uLL, __stderrp);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (int)removeInheritanceKeyWithArguments:(id)arguments uuidString:(id)string timeout:(double)timeout
{
  argumentsCopy = arguments;
  stringCopy = string;
  v10 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -86;
  v11 = [[NSUUID alloc] initWithUUIDString:stringCopy];
  if (v11)
  {
    v16 = stringCopy;
    v12 = v22;
    do
    {
      *(v12 + 24) = 0;
      control = [(OTControlCLI *)self control];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100008624;
      v17[3] = &unk_100024510;
      v18 = v10;
      v19 = &v21;
      v20 = &v25;
      [control removeInheritanceKey:argumentsCopy uuid:v11 reply:v17];

      v12 = v22;
    }

    while ((v22[3] & 1) != 0);
    v14 = *(v26 + 6);
    stringCopy = v16;
  }

  else
  {
    v14 = 1;
    fwrite("bad format for inheritanceUUID\n", 0x1FuLL, 1uLL, __stderrp);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (int)preflightJoinWithInheritanceKeyWithArguments:(id)arguments wrappingKey:(id)key wrappedKey:(id)wrappedKey uuidString:(id)string timeout:(double)timeout
{
  argumentsCopy = arguments;
  keyCopy = key;
  wrappedKeyCopy = wrappedKey;
  stringCopy = string;
  v16 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = -86;
  v17 = [[NSData alloc] initWithBase64EncodedString:keyCopy options:0];
  if (v17)
  {
    v18 = [[NSData alloc] initWithBase64EncodedString:wrappedKeyCopy options:0];
    if (v18)
    {
      v19 = [[NSUUID alloc] initWithUUIDString:stringCopy];
      v20 = v19;
      if (v19)
      {
        v30 = v19;
        v35 = 0;
        v21 = [[OTInheritanceKey alloc] initWithWrappedKeyData:v18 wrappingKeyData:v17 uuid:v19 error:&v35];
        v22 = v35;
        v29 = v22;
        if (v21)
        {
          v23 = v37;
          do
          {
            *(v23 + 24) = 0;
            control = [(OTControlCLI *)self control];
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_100008A54;
            v31[3] = &unk_100024510;
            v32 = v16;
            v33 = &v36;
            v34 = &v40;
            [control preflightJoinWithInheritanceKey:argumentsCopy inheritanceKey:v21 reply:v31];

            v23 = v37;
          }

          while ((v37[3] & 1) != 0);
          v25 = *(v41 + 6);
        }

        else
        {
          v26 = __stderrp;
          v27 = [v22 description];
          fprintf(v26, "failed to create OTInheritanceKey: %s\n", [v27 UTF8String]);

          v25 = 1;
        }

        v20 = v30;
      }

      else
      {
        v25 = 1;
        fwrite("bad format for inheritanceUUID\n", 0x1FuLL, 1uLL, __stderrp);
      }
    }

    else
    {
      v25 = 1;
      fwrite("bad base64 data for wrappedKey\n", 0x1FuLL, 1uLL, __stderrp);
    }
  }

  else
  {
    v25 = 1;
    fwrite("bad base64 data for wrappingKey\n", 0x20uLL, 1uLL, __stderrp);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v25;
}

- (int)joinWithInheritanceKeyWithArguments:(id)arguments wrappingKey:(id)key wrappedKey:(id)wrappedKey uuidString:(id)string timeout:(double)timeout
{
  argumentsCopy = arguments;
  keyCopy = key;
  wrappedKeyCopy = wrappedKey;
  stringCopy = string;
  v16 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = -86;
  v17 = [[NSData alloc] initWithBase64EncodedString:keyCopy options:0];
  if (v17)
  {
    v18 = [[NSData alloc] initWithBase64EncodedString:wrappedKeyCopy options:0];
    if (v18)
    {
      v19 = [[NSUUID alloc] initWithUUIDString:stringCopy];
      v20 = v19;
      if (v19)
      {
        v30 = v19;
        v35 = 0;
        v21 = [[OTInheritanceKey alloc] initWithWrappedKeyData:v18 wrappingKeyData:v17 uuid:v19 error:&v35];
        v22 = v35;
        v29 = v22;
        if (v21)
        {
          v23 = v37;
          do
          {
            *(v23 + 24) = 0;
            control = [(OTControlCLI *)self control];
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_100008E84;
            v31[3] = &unk_100024510;
            v32 = v16;
            v33 = &v36;
            v34 = &v40;
            [control joinWithInheritanceKey:argumentsCopy inheritanceKey:v21 reply:v31];

            v23 = v37;
          }

          while ((v37[3] & 1) != 0);
          v25 = *(v41 + 6);
        }

        else
        {
          v26 = __stderrp;
          v27 = [v22 description];
          fprintf(v26, "failed to create OTInheritanceKey: %s\n", [v27 UTF8String]);

          v25 = 1;
        }

        v20 = v30;
      }

      else
      {
        v25 = 1;
        fwrite("bad format for inheritanceUUID\n", 0x1FuLL, 1uLL, __stderrp);
      }
    }

    else
    {
      v25 = 1;
      fwrite("bad base64 data for wrappedKey\n", 0x1FuLL, 1uLL, __stderrp);
    }
  }

  else
  {
    v25 = 1;
    fwrite("bad base64 data for wrappingKey\n", 0x20uLL, 1uLL, __stderrp);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v25;
}

- (int)storeInheritanceKeyWithArguments:(id)arguments wrappingKey:(id)key wrappedKey:(id)wrappedKey uuidString:(id)string timeout:(double)timeout
{
  argumentsCopy = arguments;
  keyCopy = key;
  wrappedKeyCopy = wrappedKey;
  stringCopy = string;
  v16 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -86;
  v17 = [[NSData alloc] initWithBase64EncodedString:keyCopy options:0];
  if (v17)
  {
    v18 = [[NSData alloc] initWithBase64EncodedString:wrappedKeyCopy options:0];
    if (v18)
    {
      v19 = [[NSUUID alloc] initWithUUIDString:stringCopy];
      v20 = v19;
      if (v19)
      {
        v29 = v19;
        v34 = 0;
        v21 = [[OTInheritanceKey alloc] initWithWrappedKeyData:v18 wrappingKeyData:v17 uuid:v19 error:&v34];
        v22 = v34;
        v28 = v22;
        if (v21)
        {
          v23 = v36;
          do
          {
            *(v23 + 24) = 0;
            control = [(OTControlCLI *)self control];
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_100009268;
            v30[3] = &unk_100024510;
            v31 = v16;
            v32 = &v35;
            v33 = &v39;
            [control storeInheritanceKey:argumentsCopy ik:v21 reply:v30];

            v23 = v36;
          }

          while ((v36[3] & 1) != 0);
          v25 = *(v40 + 6);
        }

        else
        {
          v26 = [v22 description];
          printf("failed to create OTInheritanceKey: %s\n", [v26 UTF8String]);

          v25 = 1;
        }

        v20 = v29;
      }

      else
      {
        puts("bad format for inheritanceUUID");
        v25 = 1;
      }
    }

    else
    {
      puts("bad base64 data for wrappedKey");
      v25 = 1;
    }
  }

  else
  {
    puts("bad base64 data for wrappingKey");
    v25 = 1;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v25;
}

- (int)generateInheritanceKeyWithArguments:(id)arguments json:(BOOL)json timeout:(double)timeout
{
  argumentsCopy = arguments;
  v9 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -86;
  v10 = &v20;
  do
  {
    *(v10 + 24) = 0;
    control = [(OTControlCLI *)self control];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000094C8;
    v15[3] = &unk_100024750;
    v12 = v9;
    v16 = v12;
    v17 = &v20;
    v18 = &v24;
    jsonCopy = json;
    [control generateInheritanceKey:argumentsCopy uuid:0 reply:v15];

    v10 = v21;
  }

  while ((v21[3] & 1) != 0);
  v13 = *(v25 + 6);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v13;
}

- (int)createInheritanceKeyWithArguments:(id)arguments uuidString:(id)string json:(BOOL)json timeout:(double)timeout
{
  argumentsCopy = arguments;
  stringCopy = string;
  if (stringCopy)
  {
    v11 = [[NSUUID alloc] initWithUUIDString:stringCopy];
    if (!v11)
    {
      v12 = 1;
      fwrite("bad format for inheritanceUUID\n", 0x1FuLL, 1uLL, __stderrp);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -86;
  v14 = &v24;
  do
  {
    *(v14 + 24) = 0;
    control = [(OTControlCLI *)self control];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000097E0;
    v19[3] = &unk_100024750;
    v16 = v13;
    v20 = v16;
    v21 = &v24;
    v22 = &v28;
    jsonCopy = json;
    [control createInheritanceKey:argumentsCopy uuid:v11 reply:v19];

    v14 = v25;
  }

  while ((v25[3] & 1) != 0);
  v12 = *(v29 + 6);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

LABEL_8:
  return v12;
}

- (int)preflightJoinWithRecoveryKeyWithArguments:(id)arguments recoveryKey:(id)key
{
  argumentsCopy = arguments;
  keyCopy = key;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  control = [(OTControlCLI *)self control];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009A24;
  v11[3] = &unk_100024728;
  v9 = keyCopy;
  v12 = v9;
  v13 = &v14;
  [control preflightRecoverOctagonUsingRecoveryKey:argumentsCopy recoveryKey:v9 reply:v11];

  LODWORD(control) = *(v15 + 6);
  _Block_object_dispose(&v14, 8);

  return control;
}

- (int)checkRecoveryKeyWithArguments:(id)arguments
{
  makeConfigurationContext = [arguments makeConfigurationContext];
  v12 = 0;
  v4 = [OTClique isRecoveryKeySet:makeConfigurationContext error:&v12];
  v5 = v12;
  v6 = v5;
  if (v5)
  {
    v7 = __stderrp;
    v8 = [v5 description];
    fprintf(v7, "check recovery key failed: %s\n", [v8 UTF8String]);

    v9 = 1;
  }

  else
  {
    v10 = "not set";
    if (v4)
    {
      v10 = "set";
    }

    printf("recovery key is %s\n", v10);
    v9 = v4 ^ 1;
  }

  return v9;
}

- (int)joinWithRecoveryKeyWithArguments:(id)arguments recoveryKey:(id)key
{
  argumentsCopy = arguments;
  keyCopy = key;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  control = [(OTControlCLI *)self control];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009CFC;
  v11[3] = &unk_100024700;
  v9 = keyCopy;
  v12 = v9;
  v13 = &v14;
  [control joinWithRecoveryKey:argumentsCopy recoveryKey:v9 reply:v11];

  LODWORD(control) = *(v15 + 6);
  _Block_object_dispose(&v14, 8);

  return control;
}

- (int)setRecoveryKeyWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v16 = 0;
  v5 = SecRKCreateRecoveryKeyString();
  v6 = 0;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = __stderrp;
    v11 = [v6 description];
    fprintf(v10, "failed to create recovery key: %s\n", [v11 UTF8String]);

    v9 = *(v18 + 6);
  }

  else
  {
    control = [(OTControlCLI *)self control];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100009F38;
    v13[3] = &unk_100024700;
    v14 = v5;
    v15 = &v17;
    [control createRecoveryKey:argumentsCopy recoveryKey:v14 reply:v13];

    v9 = *(v18 + 6);
  }

  _Block_object_dispose(&v17, 8);
  return v9;
}

- (int)removeRecoveryKeyWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  control = [(OTControlCLI *)self control];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A0DC;
  v7[3] = &unk_1000244C0;
  v7[4] = &v8;
  [control removeRecoveryKey:argumentsCopy reply:v7];

  LODWORD(control) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return control;
}

- (int)checkCustodianRecoveryKeyWithArguments:(id)arguments uuidString:(id)string timeout:(double)timeout
{
  argumentsCopy = arguments;
  stringCopy = string;
  v10 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -86;
  v11 = [[NSUUID alloc] initWithUUIDString:stringCopy];
  if (v11)
  {
    v16 = stringCopy;
    v12 = v22;
    do
    {
      *(v12 + 24) = 0;
      control = [(OTControlCLI *)self control];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000A374;
      v17[3] = &unk_1000246D8;
      v18 = v10;
      v19 = &v21;
      v20 = &v25;
      [control checkCustodianRecoveryKey:argumentsCopy uuid:v11 reply:v17];

      v12 = v22;
    }

    while ((v22[3] & 1) != 0);
    v14 = *(v26 + 6);
    stringCopy = v16;
  }

  else
  {
    v14 = 1;
    fwrite("bad format for custodianUUID\n", 0x1DuLL, 1uLL, __stderrp);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (int)removeCustodianRecoveryKeyWithArguments:(id)arguments uuidString:(id)string timeout:(double)timeout
{
  argumentsCopy = arguments;
  stringCopy = string;
  v10 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -86;
  v11 = [[NSUUID alloc] initWithUUIDString:stringCopy];
  if (v11)
  {
    v16 = stringCopy;
    v12 = v22;
    do
    {
      *(v12 + 24) = 0;
      control = [(OTControlCLI *)self control];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000A680;
      v17[3] = &unk_100024510;
      v18 = v10;
      v19 = &v21;
      v20 = &v25;
      [control removeCustodianRecoveryKey:argumentsCopy uuid:v11 reply:v17];

      v12 = v22;
    }

    while ((v22[3] & 1) != 0);
    v14 = *(v26 + 6);
    stringCopy = v16;
  }

  else
  {
    v14 = 1;
    fwrite("bad format for custodianUUID\n", 0x1DuLL, 1uLL, __stderrp);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (int)preflightJoinWithCustodianRecoveryKeyWithArguments:(id)arguments wrappingKey:(id)key wrappedKey:(id)wrappedKey uuidString:(id)string timeout:(double)timeout
{
  argumentsCopy = arguments;
  keyCopy = key;
  wrappedKeyCopy = wrappedKey;
  stringCopy = string;
  v16 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = -86;
  v17 = [[NSData alloc] initWithBase64EncodedString:keyCopy options:0];
  if (v17)
  {
    v18 = [[NSData alloc] initWithBase64EncodedString:wrappedKeyCopy options:0];
    if (v18)
    {
      v19 = [[NSUUID alloc] initWithUUIDString:stringCopy];
      v20 = v19;
      if (v19)
      {
        v30 = v19;
        v35 = 0;
        v21 = [[OTCustodianRecoveryKey alloc] initWithWrappedKey:v18 wrappingKey:v17 uuid:v19 error:&v35];
        v22 = v35;
        v29 = v22;
        if (v21)
        {
          v23 = v37;
          do
          {
            *(v23 + 24) = 0;
            control = [(OTControlCLI *)self control];
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_10000AAB0;
            v31[3] = &unk_100024510;
            v32 = v16;
            v33 = &v36;
            v34 = &v40;
            [control preflightJoinWithCustodianRecoveryKey:argumentsCopy custodianRecoveryKey:v21 reply:v31];

            v23 = v37;
          }

          while ((v37[3] & 1) != 0);
          v25 = *(v41 + 6);
        }

        else
        {
          v26 = __stderrp;
          v27 = [v22 description];
          fprintf(v26, "failed to create OTCustodianRecoveryKey: %s\n", [v27 UTF8String]);

          v25 = 1;
        }

        v20 = v30;
      }

      else
      {
        v25 = 1;
        fwrite("bad format for custodianUUID\n", 0x1DuLL, 1uLL, __stderrp);
      }
    }

    else
    {
      v25 = 1;
      fwrite("bad base64 data for wrappedKey\n", 0x1FuLL, 1uLL, __stderrp);
    }
  }

  else
  {
    v25 = 1;
    fwrite("bad base64 data for wrappingKey\n", 0x20uLL, 1uLL, __stderrp);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v25;
}

- (int)joinWithCustodianRecoveryKeyWithArguments:(id)arguments wrappingKey:(id)key wrappedKey:(id)wrappedKey uuidString:(id)string timeout:(double)timeout
{
  argumentsCopy = arguments;
  keyCopy = key;
  wrappedKeyCopy = wrappedKey;
  stringCopy = string;
  v16 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = -86;
  v17 = [[NSData alloc] initWithBase64EncodedString:keyCopy options:0];
  if (v17)
  {
    v18 = [[NSData alloc] initWithBase64EncodedString:wrappedKeyCopy options:0];
    if (v18)
    {
      v19 = [[NSUUID alloc] initWithUUIDString:stringCopy];
      v20 = v19;
      if (v19)
      {
        v30 = v19;
        v35 = 0;
        v21 = [[OTCustodianRecoveryKey alloc] initWithWrappedKey:v18 wrappingKey:v17 uuid:v19 error:&v35];
        v22 = v35;
        v29 = v22;
        if (v21)
        {
          v23 = v37;
          do
          {
            *(v23 + 24) = 0;
            control = [(OTControlCLI *)self control];
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_10000AEE0;
            v31[3] = &unk_100024510;
            v32 = v16;
            v33 = &v36;
            v34 = &v40;
            [control joinWithCustodianRecoveryKey:argumentsCopy custodianRecoveryKey:v21 reply:v31];

            v23 = v37;
          }

          while ((v37[3] & 1) != 0);
          v25 = *(v41 + 6);
        }

        else
        {
          v26 = __stderrp;
          v27 = [v22 description];
          fprintf(v26, "failed to create OTCustodianRecoveryKey: %s\n", [v27 UTF8String]);

          v25 = 1;
        }

        v20 = v30;
      }

      else
      {
        v25 = 1;
        fwrite("bad format for custodianUUID\n", 0x1DuLL, 1uLL, __stderrp);
      }
    }

    else
    {
      v25 = 1;
      fwrite("bad base64 data for wrappedKey\n", 0x1FuLL, 1uLL, __stderrp);
    }
  }

  else
  {
    v25 = 1;
    fwrite("bad base64 data for wrappingKey\n", 0x20uLL, 1uLL, __stderrp);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v25;
}

- (int)createCustodianRecoveryKeyWithArguments:(id)arguments uuidString:(id)string json:(BOOL)json timeout:(double)timeout
{
  argumentsCopy = arguments;
  stringCopy = string;
  if (stringCopy)
  {
    v11 = [[NSUUID alloc] initWithUUIDString:stringCopy];
    if (!v11)
    {
      v12 = 1;
      fwrite("bad format for custodianUUID\n", 0x1DuLL, 1uLL, __stderrp);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -86;
  v14 = &v24;
  do
  {
    *(v14 + 24) = 0;
    control = [(OTControlCLI *)self control];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000B1C4;
    v19[3] = &unk_1000246B0;
    v16 = v13;
    v20 = v16;
    v21 = &v24;
    v22 = &v28;
    jsonCopy = json;
    [control createCustodianRecoveryKey:argumentsCopy uuid:v11 reply:v19];

    v14 = v25;
  }

  while ((v25[3] & 1) != 0);
  v12 = *(v29 + 6);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

LABEL_8:
  return v12;
}

- (int)fetchUserControllableViewsSyncStatus:(id)status
{
  statusCopy = status;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  control = [(OTControlCLI *)self control];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B624;
  v7[3] = &unk_100024688;
  v7[4] = &v8;
  [control fetchUserControllableViewsSyncStatus:statusCopy reply:v7];

  LODWORD(control) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return control;
}

- (int)tapToRadar:(id)radar description:(id)description radar:(id)a5
{
  radarCopy = radar;
  descriptionCopy = description;
  v10 = a5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  control = [(OTControlCLI *)self control];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B9CC;
  v13[3] = &unk_1000244C0;
  v13[4] = &v14;
  [control tapToRadar:radarCopy description:descriptionCopy radar:v10 reply:v13];

  LODWORD(control) = *(v15 + 6);
  _Block_object_dispose(&v14, 8);

  return control;
}

- (int)refetchCKKSPolicy:(id)policy
{
  policyCopy = policy;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  control = [(OTControlCLI *)self control];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BB60;
  v7[3] = &unk_1000244C0;
  v7[4] = &v8;
  [control refetchCKKSPolicy:policyCopy reply:v7];

  LODWORD(control) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return control;
}

- (int)simulateReceiveTDLChangePush:(id)push json:(BOOL)json
{
  pushCopy = push;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  control = [(OTControlCLI *)self control];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000BCFC;
  v10[3] = &unk_100024660;
  jsonCopy = json;
  v10[4] = &v12;
  [control simulateReceiveTDLChangePush:pushCopy reply:v10];

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (int)simulateReceivePush:(id)push json:(BOOL)json
{
  pushCopy = push;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  control = [(OTControlCLI *)self control];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000BF24;
  v10[3] = &unk_100024660;
  jsonCopy = json;
  v10[4] = &v12;
  [control simulateReceivePush:pushCopy reply:v10];

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (int)escrowCheck:(id)check json:(BOOL)json
{
  checkCopy = check;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  control = [(OTControlCLI *)self control];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C150;
  v10[3] = &unk_100024638;
  jsonCopy = json;
  v10[4] = &v12;
  [control escrowCheck:checkCopy isBackgroundCheck:0 reply:v10];

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (int)fetchAllBottles:(id)bottles control:(id)control overrideEscrowCache:(BOOL)cache
{
  cacheCopy = cache;
  bottlesCopy = bottles;
  controlCopy = control;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_100005028;
  v35[4] = sub_100005038;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100005028;
  v33 = sub_100005038;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100005028;
  v27 = sub_100005038;
  v28 = 0;
  v9 = dispatch_semaphore_create(0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000C874;
  v17[3] = &unk_100024588;
  if (cacheCopy)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v19 = &v37;
  v20 = v35;
  v21 = &v29;
  v22 = &v23;
  v11 = v9;
  v18 = v11;
  [controlCopy fetchAllViableBottles:bottlesCopy source:v10 reply:v17];
  v12 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "findOptimalBottleIDsWithContextData failed to fetch bottles\n", v16, 2u);
    }

    v14 = 1;
  }

  else
  {
    [v30[5] enumerateObjectsUsingBlock:&stru_1000245C8];
    [v24[5] enumerateObjectsUsingBlock:&stru_1000245E8];
    v14 = *(v38 + 6);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v37, 8);

  return v14;
}

- (int)recoverUsingBottleID:(id)d entropy:(id)entropy arguments:(id)arguments control:(id)control
{
  dCopy = d;
  entropyCopy = entropy;
  argumentsCopy = arguments;
  controlCopy = control;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v13 = dispatch_semaphore_create(0);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000CC1C;
  v19[3] = &unk_100024560;
  v22 = &v23;
  v14 = dCopy;
  v20 = v14;
  v15 = v13;
  v21 = v15;
  [controlCopy restoreFromBottle:argumentsCopy entropy:entropyCopy bottleID:v14 reply:v19];
  v16 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v15, v16))
  {
    fwrite("timed out waiting for restore/recover\n", 0x26uLL, 1uLL, __stderrp);
  }

  v17 = *(v24 + 6);

  _Block_object_dispose(&v23, 8);
  return v17;
}

- (int)status:(id)status json:(BOOL)json
{
  jsonCopy = json;
  statusCopy = status;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v23 = 0;
  v7 = [[SecAsyncPiper alloc] initWithError:&v23];
  v8 = v23;
  v9 = v8;
  if (v8)
  {
    if (jsonCopy)
    {
      v28 = @"error";
      v10 = [v8 description];
      v29 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      sub_1000054EC(v11);
    }

    else
    {
      v15 = __stderrp;
      v10 = [v8 description];
      v16 = v10;
      fprintf(v15, "Error fetching status: %s\n", [v10 UTF8String]);
    }

    v14 = *(v25 + 6);
  }

  else
  {
    control = [(OTControlCLI *)self control];
    xpcFd = [v7 xpcFd];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000CF28;
    v18[3] = &unk_100024538;
    v22 = jsonCopy;
    selfCopy = self;
    v21 = &v24;
    v19 = v7;
    [control status:statusCopy xpcFd:xpcFd reply:v18];

    v14 = *(v25 + 6);
  }

  _Block_object_dispose(&v24, 8);
  return v14;
}

- (int)tlkRecoverability:(id)recoverability
{
  recoverabilityCopy = recoverability;
  v4 = [OTClique alloc];
  makeConfigurationContext = [recoverabilityCopy makeConfigurationContext];
  v6 = [v4 initWithContextData:makeConfigurationContext];

  if (v6)
  {
    makeConfigurationContext2 = [recoverabilityCopy makeConfigurationContext];
    v54 = 0;
    v8 = [OTClique fetchAllEscrowRecords:makeConfigurationContext2 error:&v54];
    v9 = v54;

    if (!v8 || v9)
    {
      v33 = __stderrp;
      v10 = [v9 description];
      fprintf(v33, "Failed to fetch escrow records: %s.\n", [v10 UTF8String]);
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v10 = v8;
      v43 = [v10 countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v43)
      {
        v36 = v8;
        v37 = recoverabilityCopy;
        v11 = *v51;
        v40 = v6;
        v41 = 1;
        v38 = *v51;
        v39 = v10;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v51 != v11)
            {
              objc_enumerationMutation(v10);
            }

            v13 = *(*(&v50 + 1) + 8 * i);
            v49 = 0;
            v14 = [v6 tlkRecoverabilityForEscrowRecord:v13 error:&v49];
            v15 = v49;
            if (v14 && ([v14 count] ? (v16 = v15 == 0) : (v16 = 0), v16))
            {
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              recordId2 = v14;
              v26 = [recordId2 countByEnumeratingWithState:&v45 objects:v55 count:16];
              if (v26)
              {
                v27 = v26;
                v42 = v15;
                v28 = *v46;
                do
                {
                  for (j = 0; j != v27; j = j + 1)
                  {
                    if (*v46 != v28)
                    {
                      objc_enumerationMutation(recordId2);
                    }

                    v30 = *(*(&v45 + 1) + 8 * j);
                    recordId = [v13 recordId];
                    printf("%s has recoverable view: %s\n", [recordId UTF8String], objc_msgSend(v30, "UTF8String"));
                  }

                  v27 = [recordId2 countByEnumeratingWithState:&v45 objects:v55 count:16];
                }

                while (v27);
                v41 = 0;
                v10 = v39;
                v6 = v40;
                v11 = v38;
                v15 = v42;
              }

              else
              {
                v41 = 0;
              }
            }

            else
            {
              v44 = v14;
              v17 = __stderrp;
              recordId2 = [v13 recordId];
              uTF8String = [recordId2 UTF8String];
              [v15 description];
              v20 = v11;
              v21 = v6;
              v22 = v10;
              v24 = v23 = v15;
              uTF8String2 = [v24 UTF8String];
              v25 = v17;
              v14 = v44;
              fprintf(v25, "%s Failed TLK recoverability check: %s\n", uTF8String, uTF8String2);

              v15 = v23;
              v10 = v22;
              v6 = v21;
              v11 = v20;
            }
          }

          v43 = [v10 countByEnumeratingWithState:&v50 objects:v56 count:16];
        }

        while (v43);
        v8 = v36;
        recoverabilityCopy = v37;
        v9 = 0;
        v32 = v41;
        goto LABEL_30;
      }
    }

    v32 = 1;
LABEL_30:

    goto LABEL_31;
  }

  v32 = 1;
  fwrite("Failed to create clique\n", 0x18uLL, 1uLL, __stderrp);
LABEL_31:

  return v32;
}

- (int)performSilentEscrowRecovery:(id)recovery appleID:(id)d secret:(id)secret
{
  recoveryCopy = recovery;
  secretCopy = secret;
  dCopy = d;
  v10 = objc_alloc_init(OTICDPRecordContext);
  v11 = objc_alloc_init(OTCDPRecoveryInformation);
  [v10 setCdpInfo:v11];

  cdpInfo = [v10 cdpInfo];
  [cdpInfo setRecoverySecret:secretCopy];

  cdpInfo2 = [v10 cdpInfo];
  [cdpInfo2 setContainsIcdpData:1];

  cdpInfo3 = [v10 cdpInfo];
  [cdpInfo3 setSilentRecoveryAttempt:1];

  cdpInfo4 = [v10 cdpInfo];
  [cdpInfo4 setUsesMultipleIcsc:1];

  v16 = objc_alloc_init(OTEscrowAuthenticationInformation);
  [v10 setAuthInfo:v16];

  authInfo = [v10 authInfo];
  [authInfo setAuthenticationAppleid:dCopy];

  v18 = sub_100004E60(dCopy, 0);

  authInfo2 = [v10 authInfo];
  [authInfo2 setAuthenticationPassword:v18];

  makeConfigurationContext = [recoveryCopy makeConfigurationContext];
  v31 = 0;
  v21 = [OTClique fetchEscrowRecords:makeConfigurationContext error:&v31];
  v22 = v31;

  if (!v21 || v22)
  {
    v26 = __stderrp;
    v24 = [v22 description];
    fprintf(v26, "Failed to fetch escrow records: %s.\n", [v24 UTF8String]);
LABEL_8:
    v25 = 1;
    goto LABEL_9;
  }

  makeConfigurationContext2 = [recoveryCopy makeConfigurationContext];
  v30 = 0;
  v24 = [OTClique performSilentEscrowRecovery:makeConfigurationContext2 cdpContext:v10 allRecords:v21 error:&v30];
  v22 = v30;

  if (!v24 || v22)
  {
    v27 = __stderrp;
    v28 = [v22 description];
    fprintf(v27, "Escrow recovery failed: %s\n", [v28 UTF8String]);

    goto LABEL_8;
  }

  puts("Successfully performed escrow recovery.");
  v25 = 0;
LABEL_9:

  return v25;
}

- (int)checkAndPrintEscrowRecords:(id)records error:(id)error json:(BOOL)json
{
  jsonCopy = json;
  recordsCopy = records;
  errorCopy = error;
  v9 = errorCopy;
  if (!recordsCopy || errorCopy)
  {
    if (jsonCopy)
    {
      v56 = @"error";
      v34 = [errorCopy description];
      v57 = v34;
      v35 = 1;
      v36 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      sub_1000054EC(v36);
    }

    else
    {
      v37 = __stderrp;
      v38 = [errorCopy description];
      fprintf(v37, "fetching escrow records failed: %s\n", [v38 UTF8String]);

      v35 = 1;
    }
  }

  else
  {
    v44 = jsonCopy;
    if (!jsonCopy)
    {
      v10 = [recordsCopy count];
      v11 = [recordsCopy count];
      v12 = "s";
      if (v11 == 1)
      {
        v12 = "";
      }

      printf("Successfully fetched %lu record%s.\n", v10, v12);
    }

    v13 = +[NSMutableArray array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v45 = recordsCopy;
    obj = recordsCopy;
    v14 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v53;
      do
      {
        v17 = 0;
        do
        {
          if (*v53 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v52 + 1) + 8 * v17);
          escrowInformationMetadata = [v18 escrowInformationMetadata];
          peerInfo = [escrowInformationMetadata peerInfo];
          if (!peerInfo)
          {

LABEL_17:
            recordId = [v18 recordId];
LABEL_18:
            v29 = recordId;
            [v13 addObject:recordId];

            goto LABEL_19;
          }

          v21 = peerInfo;
          escrowInformationMetadata2 = [v18 escrowInformationMetadata];
          peerInfo2 = [escrowInformationMetadata2 peerInfo];
          bytes = [peerInfo2 bytes];

          if (!bytes)
          {
            goto LABEL_17;
          }

          v51 = 0;
          escrowInformationMetadata3 = [v18 escrowInformationMetadata];
          peerInfo3 = [escrowInformationMetadata3 peerInfo];
          v27 = SOSPeerInfoCreateFromData();

          if (v27)
          {
            recordId = SOSPeerInfoGetPeerID();
            goto LABEL_18;
          }

          v30 = __stderrp;
          v31 = [v51 description];
          fprintf(v30, "Failed SOSPeerInfoCreateFromData: %s\n", [v31 UTF8String]);

LABEL_19:
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v32 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
        v15 = v32;
      }

      while (v32);
    }

    if (v44)
    {
      v59 = @"escrowRecords";
      v60 = v13;
      v33 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      sub_1000054EC(v33);
      recordsCopy = v45;
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v33 = v13;
      v39 = [v33 countByEnumeratingWithState:&v47 objects:v58 count:16];
      recordsCopy = v45;
      if (v39)
      {
        v40 = v39;
        v41 = *v48;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v48 != v41)
            {
              objc_enumerationMutation(v33);
            }

            printf("fetched record id: %s\n", [*(*(&v47 + 1) + 8 * i) UTF8String]);
          }

          v40 = [v33 countByEnumeratingWithState:&v47 objects:v58 count:16];
        }

        while (v40);
      }
    }

    v35 = 0;
    v9 = 0;
  }

  return v35;
}

- (void)printPeers:(id)peers egoPeerID:(id)d informationOnPeers:(id)onPeers informationOnCRKs:(id)ks
{
  peersCopy = peers;
  dCopy = d;
  onPeersCopy = onPeers;
  ksCopy = ks;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [peersCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(peersCopy);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [onPeersCopy objectForKeyedSubscript:v17];
        if (v18)
        {
          if ([v17 isEqualToString:dCopy])
          {
            selfCopy2 = self;
            v20 = v18;
            v21 = @"    Self: ";
          }

          else
          {
            selfCopy2 = self;
            v20 = v18;
            v21 = @"    Peer: ";
          }

          [(OTControlCLI *)selfCopy2 printPeer:v20 prefix:v21];
        }

        else
        {
          v22 = [ksCopy objectForKeyedSubscript:v17];
          if (v22)
          {
            [(OTControlCLI *)self printCRKWithPeer:v17 information:v22 prefix:@"    CRK: "];
          }

          else
          {
            printf("    Peer:  %s; further information missing\n", [v17 UTF8String]);
          }
        }
      }

      v14 = [peersCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }
}

- (void)printCRKWithPeer:(id)peer information:(id)information prefix:(id)prefix
{
  peerCopy = peer;
  prefixCopy = prefix;
  informationCopy = information;
  v9 = [informationCopy objectForKeyedSubscript:@"uuid"];
  v10 = [informationCopy objectForKeyedSubscript:@"kind"];

  if (prefixCopy)
  {
    uTF8String = [prefixCopy UTF8String];
  }

  else
  {
    uTF8String = "";
  }

  uTF8String2 = [peerCopy UTF8String];
  uTF8String3 = [v9 UTF8String];
  if (v10)
  {
    uTF8String4 = [v10 UTF8String];
  }

  else
  {
    uTF8String4 = "-";
  }

  printf("%s%s uuid: %s kind: %s\n", uTF8String, uTF8String2, uTF8String3, uTF8String4);
}

- (void)printPeer:(id)peer prefix:(id)prefix
{
  prefixCopy = prefix;
  peerCopy = peer;
  v6 = [peerCopy objectForKeyedSubscript:@"peerID"];
  v7 = [peerCopy objectForKeyedSubscript:@"permanentInfo"];
  v8 = [v7 objectForKeyedSubscript:@"model_id"];

  v9 = [peerCopy objectForKeyedSubscript:@"permanentInfo"];
  v17 = [v9 objectForKeyedSubscript:@"epoch"];

  v10 = [peerCopy objectForKeyedSubscript:@"stableInfo"];
  v11 = [v10 objectForKeyedSubscript:@"device_name"];

  v12 = [peerCopy objectForKeyedSubscript:@"stableInfo"];
  v13 = [v12 objectForKeyedSubscript:@"serial_number"];

  v14 = [peerCopy objectForKeyedSubscript:@"stableInfo"];

  v15 = [v14 objectForKeyedSubscript:@"os_version"];

  if (prefixCopy)
  {
    uTF8String = [prefixCopy UTF8String];
  }

  else
  {
    uTF8String = "";
  }

  printf("%s%s hw:'%s' name:'%s' serial: '%s' os:'%s' epoch:%d\n", uTF8String, [v6 UTF8String], objc_msgSend(v8, "UTF8String"), objc_msgSend(v11, "UTF8String"), objc_msgSend(v13, "UTF8String"), objc_msgSend(v15, "UTF8String"), objc_msgSend(v17, "intValue"));
}

- (int)resetOctagon:(id)octagon idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s isDBRv2:(BOOL)rv2 timeout:(double)timeout
{
  sCopy = s;
  octagonCopy = octagon;
  contextCopy = context;
  passwordCopy = password;
  v22 = [NSDate dateWithTimeIntervalSinceNow:timeout];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = -86;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100005028;
  v38 = sub_100005038;
  v39 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_100005028;
  v32[4] = sub_100005038;
  v33 = 0;
  control = [(OTControlCLI *)self control];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000F358;
  v31[3] = &unk_1000244E8;
  v31[4] = &v34;
  v31[5] = v32;
  [control fetchAccountWideSettingsWithForceFetch:1 arguments:octagonCopy reply:v31];

  if ([v35[5] hasWalrus])
  {
    walrus = [v35[5] walrus];
    enabled = [walrus enabled];
  }

  else
  {
    enabled = 0;
  }

  v16 = v41;
  do
  {
    *(v16 + 24) = 0;
    control2 = [(OTControlCLI *)self control];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000F3E0;
    v27[3] = &unk_100024510;
    v18 = v22;
    v28 = v18;
    v29 = &v40;
    v30 = &v44;
    BYTE1(v21) = enabled;
    LOBYTE(v21) = rv2;
    [control2 resetAndEstablish:octagonCopy resetReason:1 idmsTargetContext:contextCopy idmsCuttlefishPassword:passwordCopy notifyIdMS:sCopy accountSettings:0 isGuitarfish:v21 accountIsW:v27 reply:?];

    v16 = v41;
  }

  while ((v41[3] & 1) != 0);
  v19 = *(v45 + 6);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v19;
}

- (int)depart:(id)depart
{
  departCopy = depart;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  control = [(OTControlCLI *)self control];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000F690;
  v14[3] = &unk_1000244C0;
  v14[4] = &v15;
  [control leaveClique:departCopy reply:v14];

  v6 = [AAFAnalyticsEventSecurity alloc];
  altDSID = [departCopy altDSID];
  flowID = [departCopy flowID];
  deviceSessionID = [departCopy deviceSessionID];
  LOBYTE(v13) = 1;
  v10 = [v6 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameOctagonTrustLost testsAreEnabled:0 canSendMetrics:v13 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v11 = [NSError errorWithDomain:kSecurityRTCErrorDomain code:7 description:@"CLI invoked departure"];
  [v10 sendMetricWithResult:1 error:v11];

  LODWORD(v11) = *(v16 + 6);
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (int)signOut:(id)out
{
  outCopy = out;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  control = [(OTControlCLI *)self control];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F824;
  v7[3] = &unk_1000244C0;
  v7[4] = &v8;
  [control appleAccountSignedOut:outCopy reply:v7];

  LODWORD(control) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return control;
}

- (int)signIn:(id)in
{
  inCopy = in;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  control = [(OTControlCLI *)self control];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F9B8;
  v7[3] = &unk_1000244C0;
  v7[4] = &v8;
  [control appleAccountSignedIn:inCopy reply:v7];

  LODWORD(control) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return control;
}

- (int)startOctagonStateMachine:(id)machine
{
  machineCopy = machine;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  control = [(OTControlCLI *)self control];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000FB4C;
  v7[3] = &unk_1000244C0;
  v7[4] = &v8;
  [control startOctagonStateMachine:machineCopy reply:v7];

  LODWORD(control) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return control;
}

- (OTControlCLI)initWithOTControl:(id)control
{
  controlCopy = control;
  v9.receiver = self;
  v9.super_class = OTControlCLI;
  v6 = [(OTControlCLI *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_control, control);
  }

  return v7;
}

+ (id)annotateStatus:(id)status
{
  statusCopy = status;
  v4 = [NSMutableDictionary dictionaryWithDictionary:statusCopy];
  v5 = [v4 objectForKeyedSubscript:@"contextDump"];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextDump"];
    v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

    [v4 setObject:v7 forKeyedSubscript:@"contextDump"];
    v8 = [v7 objectForKeyedSubscript:@"self"];

    if (v8)
    {
      v9 = [v7 objectForKeyedSubscript:@"self"];
      v10 = [v9 objectForKeyedSubscript:@"dynamicInfo"];

      if (v10)
      {
        v11 = [v9 objectForKeyedSubscript:@"dynamicInfo"];
        v12 = [v11 objectForKeyedSubscript:@"included"];
        if (v12)
        {
          v13 = [NSSet alloc];
          v14 = [v11 objectForKeyedSubscript:@"included"];
          v34 = [v13 initWithArray:v14];
        }

        else
        {
          v34 = objc_alloc_init(NSSet);
        }

        v16 = [v11 objectForKeyedSubscript:@"excluded"];
        if (v16)
        {
          v17 = [NSSet alloc];
          v18 = [v11 objectForKeyedSubscript:@"excluded"];
          v19 = [v17 initWithArray:v18];
        }

        else
        {
          v19 = objc_alloc_init(NSSet);
        }

        v20 = [v7 objectForKeyedSubscript:@"custodian_recovery_keys"];

        if (v20)
        {
          v30 = v9;
          v32 = v4;
          v33 = statusCopy;
          v21 = +[NSMutableArray array];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v31 = v7;
          v22 = [v7 objectForKeyedSubscript:@"custodian_recovery_keys"];
          v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v36;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v36 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = [NSMutableDictionary dictionaryWithDictionary:*(*(&v35 + 1) + 8 * i)];
                v28 = [v27 objectForKeyedSubscript:@"peerID"];
                if ([v34 containsObject:v28])
                {
                  [v27 setObject:&__kCFBooleanTrue forKeyedSubscript:@"trusted_by_self"];
                }

                if ([v19 containsObject:v28])
                {
                  [v27 setObject:&__kCFBooleanTrue forKeyedSubscript:@"distrusted_by_self"];
                }

                [v21 addObject:v27];
              }

              v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
            }

            while (v24);
          }

          v7 = v31;
          [v31 setObject:v21 forKeyedSubscript:@"custodian_recovery_keys"];
          v4 = v32;
          v15 = v32;

          statusCopy = v33;
          v9 = v30;
        }

        else
        {
          v15 = statusCopy;
        }
      }

      else
      {
        v15 = statusCopy;
      }
    }

    else
    {
      v15 = statusCopy;
    }
  }

  else
  {
    v15 = statusCopy;
  }

  return v15;
}

@end