@interface FMDFMIPAccount
- (id)authToken;
- (void)applyPropertiesFromACAccount:(id)a3;
- (void)copyInfoFromAccount:(id)a3;
@end

@implementation FMDFMIPAccount

- (void)applyPropertiesFromACAccount:(id)a3
{
  v48 = [a3 fmipAccountInfoWithTokens:1];
  v4 = [(FMDAccount *)self username];
  v5 = [v48 objectForKeyedSubscript:off_100313398];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v48 objectForKeyedSubscript:off_100313398];
    [(FMDAccount *)self setUsername:v7];
  }

  v8 = [(FMDFMIPAccount *)self dsid];
  v9 = [v48 objectForKeyedSubscript:off_1003133A0];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v48 objectForKeyedSubscript:off_1003133A0];
    [(FMDFMIPAccount *)self setDsid:v11];
  }

  v12 = [(FMDFMIPAccount *)self adsid];
  v13 = [v48 objectForKeyedSubscript:off_1003133A8];
  v14 = [v12 isEqualToString:v13];

  if ((v14 & 1) == 0)
  {
    v15 = [v48 objectForKeyedSubscript:off_1003133A8];
    [(FMDFMIPAccount *)self setAdsid:v15];
  }

  v16 = [(FMDFMIPAccount *)self fmipAuthToken];
  v17 = [v48 objectForKeyedSubscript:off_1003133B0];
  v18 = [v16 isEqualToString:v17];

  if ((v18 & 1) == 0)
  {
    v19 = [v48 objectForKeyedSubscript:off_1003133B0];
    [(FMDFMIPAccount *)self setFmipAuthToken:v19];
  }

  v20 = [(FMDFMIPAccount *)self iCloudAuthToken];
  v21 = [v48 objectForKeyedSubscript:off_1003133B8];
  v22 = [v20 isEqualToString:v21];

  if ((v22 & 1) == 0)
  {
    v23 = [v48 objectForKeyedSubscript:off_1003133B8];
    [(FMDFMIPAccount *)self setICloudAuthToken:v23];
  }

  v24 = [(FMDFMIPAccount *)self appleAccountIdentifier];
  v25 = [v48 objectForKeyedSubscript:off_1003133C0];
  v26 = [v24 isEqualToString:v25];

  if ((v26 & 1) == 0)
  {
    v27 = [v48 objectForKeyedSubscript:off_1003133C0];
    [(FMDFMIPAccount *)self setAppleAccountIdentifier:v27];
  }

  v28 = [(FMDAccount *)self serverHost];
  v29 = [v48 objectForKeyedSubscript:off_1003133C8];
  v30 = [v28 isEqualToString:v29];

  if ((v30 & 1) == 0)
  {
    v31 = [v48 objectForKeyedSubscript:off_1003133C8];
    [(FMDAccount *)self setServerHost:v31];
  }

  v32 = [(FMDAccount *)self serverProtocolScheme];
  v33 = [v48 objectForKeyedSubscript:off_1003133D0];
  v34 = [v32 isEqualToString:v33];

  if ((v34 & 1) == 0)
  {
    v35 = [v48 objectForKeyedSubscript:off_1003133D0];
    [(FMDAccount *)self setServerProtocolScheme:v35];
  }

  v36 = [(FMDAccount *)self apsEnvironment];
  v37 = [v48 objectForKeyedSubscript:off_1003133D8];
  v38 = [v36 isEqualToString:v37];

  if ((v38 & 1) == 0)
  {
    v39 = [v48 objectForKeyedSubscript:off_1003133D8];
    [(FMDAccount *)self setApsEnvironment:v39];
  }

  v40 = [(FMDFMIPAccount *)self extAccessoryConfigURL];
  v41 = [v48 objectForKeyedSubscript:off_1003133E0];
  v42 = [v40 isEqualToString:v41];

  if ((v42 & 1) == 0)
  {
    v43 = [v48 objectForKeyedSubscript:off_1003133E0];
    [(FMDFMIPAccount *)self setExtAccessoryConfigURL:v43];
  }

  v44 = [(FMDFMIPAccount *)self accessoryPairingURL];
  v45 = [v48 objectForKeyedSubscript:off_1003133E8];
  v46 = [v44 isEqualToString:v45];

  if ((v46 & 1) == 0)
  {
    v47 = [v48 objectForKeyedSubscript:off_1003133E8];
    [(FMDFMIPAccount *)self setAccessoryPairingURL:v47];
  }
}

- (id)authToken
{
  v3 = [(FMDFMIPAccount *)self fmipAuthToken];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FMDFMIPAccount *)self iCloudAuthToken];
  }

  v6 = v5;

  return v6;
}

- (void)copyInfoFromAccount:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FMDFMIPAccount;
  [(FMDAccount *)&v11 copyInfoFromAccount:v4];
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [v5 dsid];
    [(FMDFMIPAccount *)self setDsid:v6];

    v7 = [v5 appleAccountIdentifier];
    [(FMDFMIPAccount *)self setAppleAccountIdentifier:v7];

    v8 = [v5 iCloudAuthToken];
    [(FMDFMIPAccount *)self setICloudAuthToken:v8];

    v9 = [v5 fmipAuthToken];
    [(FMDFMIPAccount *)self setFmipAuthToken:v9];

    if ([v5 fmipEnableContext])
    {
      -[FMDFMIPAccount setFmipEnableContext:](self, "setFmipEnableContext:", [v5 fmipEnableContext]);
    }

    v10 = [v5 lastLoggedInDsid];
    [(FMDFMIPAccount *)self setLastLoggedInDsid:v10];

    -[FMDFMIPAccount setLowBatteryLocateEnabled:](self, "setLowBatteryLocateEnabled:", [v5 lowBatteryLocateEnabled]);
  }
}

@end