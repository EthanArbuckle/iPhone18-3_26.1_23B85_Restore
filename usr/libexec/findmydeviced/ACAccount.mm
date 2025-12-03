@interface ACAccount
- (id)fmipAccountInfoForProactiveChanges;
- (id)fmipAccountInfoWithTokens:(BOOL)tokens;
- (id)fmwAccountInfoForProactiveChanges;
- (id)fmwAccountInfoWithTokens:(BOOL)tokens;
@end

@implementation ACAccount

- (id)fmipAccountInfoWithTokens:(BOOL)tokens
{
  tokensCopy = tokens;
  v5 = +[NSMutableDictionary dictionary];
  v6 = off_100313398;
  username = [(ACAccount *)self username];
  [v5 fm_safelyMapKey:v6 toObject:username];

  v8 = off_1003133A0;
  aa_personID = [(ACAccount *)self aa_personID];
  [v5 fm_safelyMapKey:v8 toObject:aa_personID];

  v10 = off_1003133A8;
  aa_altDSID = [(ACAccount *)self aa_altDSID];
  [v5 fm_safelyMapKey:v10 toObject:aa_altDSID];

  if (tokensCopy)
  {
    v12 = off_1003133B0;
    aa_fmipToken = [(ACAccount *)self aa_fmipToken];
    [v5 fm_safelyMapKey:v12 toObject:aa_fmipToken];

    v14 = off_1003133B8;
    aa_authToken = [(ACAccount *)self aa_authToken];
    [v5 fm_safelyMapKey:v14 toObject:aa_authToken];
  }

  v16 = off_1003133C0;
  identifier = [(ACAccount *)self identifier];
  [v5 fm_safelyMapKey:v16 toObject:identifier];

  dataclassProperties = [(ACAccount *)self dataclassProperties];
  v19 = [dataclassProperties objectForKeyedSubscript:@"com.apple.Dataclass.DeviceLocator"];

  v20 = off_1003133C8;
  v21 = [v19 objectForKeyedSubscript:@"hostname"];
  [v5 fm_safelyMapKey:v20 toObject:v21];

  [v5 fm_safelyMapKey:off_1003133D0 toObject:@"https"];
  v22 = off_1003133D8;
  v23 = [v19 objectForKeyedSubscript:@"apsEnv"];
  [v5 fm_safelyMapKey:v22 toObject:v23];

  v24 = [FMPreferencesUtil stringForKey:@"configURL" inDomain:kFMDNotBackedUpPrefDomain];
  if (v24)
  {
    v25 = off_1003133E0;
    v26 = v5;
    v27 = v24;
LABEL_5:
    [v26 fm_safelyMapKey:v25 toObject:v27];
    goto LABEL_8;
  }

  v28 = [v19 objectForKeyedSubscript:@"configURL"];

  v29 = off_1003133E0;
  if (!v28)
  {
    v27 = @"https://gateway.icloud.com/fmadminws/findkit";
    v26 = v5;
    v25 = off_1003133E0;
    goto LABEL_5;
  }

  v30 = [v19 objectForKeyedSubscript:@"configURL"];
  [v5 fm_safelyMapKey:v29 toObject:v30];

LABEL_8:
  v31 = [FMPreferencesUtil stringForKey:@"pairingURL" inDomain:kFMDNotBackedUpPrefDomain];
  if (v31)
  {
    v32 = off_1003133E8;
    v33 = v5;
    v34 = v31;
LABEL_10:
    [v33 fm_safelyMapKey:v32 toObject:v34];
    goto LABEL_13;
  }

  v35 = [v19 objectForKeyedSubscript:@"pairingURL"];

  v36 = off_1003133E8;
  if (!v35)
  {
    v34 = @"https://gateway.icloud.com/fmadminws";
    v33 = v5;
    v32 = off_1003133E8;
    goto LABEL_10;
  }

  v37 = [v19 objectForKeyedSubscript:@"pairingURL"];
  [v5 fm_safelyMapKey:v36 toObject:v37];

LABEL_13:
  v38 = [v5 copy];

  return v38;
}

- (id)fmipAccountInfoForProactiveChanges
{
  v2 = [(ACAccount *)self fmipAccountInfoWithTokens:0];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:off_1003133C0];
  v4 = [v3 copy];

  return v4;
}

- (id)fmwAccountInfoWithTokens:(BOOL)tokens
{
  tokensCopy = tokens;
  v5 = +[NSMutableDictionary dictionary];
  v6 = off_100313398;
  username = [(ACAccount *)self username];
  [v5 fm_safelyMapKey:v6 toObject:username];

  v8 = off_1003133A0;
  aa_personID = [(ACAccount *)self aa_personID];
  [v5 fm_safelyMapKey:v8 toObject:aa_personID];

  v10 = off_1003133A8;
  aa_altDSID = [(ACAccount *)self aa_altDSID];
  [v5 fm_safelyMapKey:v10 toObject:aa_altDSID];

  if (tokensCopy)
  {
    v12 = off_1003133B0;
    aa_fmipToken = [(ACAccount *)self aa_fmipToken];
    [v5 fm_safelyMapKey:v12 toObject:aa_fmipToken];
  }

  dataclassProperties = [(ACAccount *)self dataclassProperties];
  v15 = [dataclassProperties objectForKeyedSubscript:@"com.apple.Dataclass.DeviceLocator"];

  v16 = off_1003133C8;
  v17 = [v15 objectForKeyedSubscript:@"hostname"];
  [v5 fm_safelyMapKey:v16 toObject:v17];

  [v5 fm_safelyMapKey:off_1003133D0 toObject:@"https"];
  v18 = off_1003133D8;
  v19 = [v15 objectForKeyedSubscript:@"apsEnv"];
  [v5 fm_safelyMapKey:v18 toObject:v19];

  v20 = [v5 copy];

  return v20;
}

- (id)fmwAccountInfoForProactiveChanges
{
  v2 = [(ACAccount *)self fmipAccountInfoWithTokens:0];
  v3 = [v2 mutableCopy];

  v4 = [v3 copy];

  return v4;
}

@end