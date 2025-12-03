@interface FMDFMIPAccount
- (id)authToken;
- (void)applyPropertiesFromACAccount:(id)account;
- (void)copyInfoFromAccount:(id)account;
@end

@implementation FMDFMIPAccount

- (void)applyPropertiesFromACAccount:(id)account
{
  v48 = [account fmipAccountInfoWithTokens:1];
  username = [(FMDAccount *)self username];
  v5 = [v48 objectForKeyedSubscript:off_100313398];
  v6 = [username isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v48 objectForKeyedSubscript:off_100313398];
    [(FMDAccount *)self setUsername:v7];
  }

  dsid = [(FMDFMIPAccount *)self dsid];
  v9 = [v48 objectForKeyedSubscript:off_1003133A0];
  v10 = [dsid isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v48 objectForKeyedSubscript:off_1003133A0];
    [(FMDFMIPAccount *)self setDsid:v11];
  }

  adsid = [(FMDFMIPAccount *)self adsid];
  v13 = [v48 objectForKeyedSubscript:off_1003133A8];
  v14 = [adsid isEqualToString:v13];

  if ((v14 & 1) == 0)
  {
    v15 = [v48 objectForKeyedSubscript:off_1003133A8];
    [(FMDFMIPAccount *)self setAdsid:v15];
  }

  fmipAuthToken = [(FMDFMIPAccount *)self fmipAuthToken];
  v17 = [v48 objectForKeyedSubscript:off_1003133B0];
  v18 = [fmipAuthToken isEqualToString:v17];

  if ((v18 & 1) == 0)
  {
    v19 = [v48 objectForKeyedSubscript:off_1003133B0];
    [(FMDFMIPAccount *)self setFmipAuthToken:v19];
  }

  iCloudAuthToken = [(FMDFMIPAccount *)self iCloudAuthToken];
  v21 = [v48 objectForKeyedSubscript:off_1003133B8];
  v22 = [iCloudAuthToken isEqualToString:v21];

  if ((v22 & 1) == 0)
  {
    v23 = [v48 objectForKeyedSubscript:off_1003133B8];
    [(FMDFMIPAccount *)self setICloudAuthToken:v23];
  }

  appleAccountIdentifier = [(FMDFMIPAccount *)self appleAccountIdentifier];
  v25 = [v48 objectForKeyedSubscript:off_1003133C0];
  v26 = [appleAccountIdentifier isEqualToString:v25];

  if ((v26 & 1) == 0)
  {
    v27 = [v48 objectForKeyedSubscript:off_1003133C0];
    [(FMDFMIPAccount *)self setAppleAccountIdentifier:v27];
  }

  serverHost = [(FMDAccount *)self serverHost];
  v29 = [v48 objectForKeyedSubscript:off_1003133C8];
  v30 = [serverHost isEqualToString:v29];

  if ((v30 & 1) == 0)
  {
    v31 = [v48 objectForKeyedSubscript:off_1003133C8];
    [(FMDAccount *)self setServerHost:v31];
  }

  serverProtocolScheme = [(FMDAccount *)self serverProtocolScheme];
  v33 = [v48 objectForKeyedSubscript:off_1003133D0];
  v34 = [serverProtocolScheme isEqualToString:v33];

  if ((v34 & 1) == 0)
  {
    v35 = [v48 objectForKeyedSubscript:off_1003133D0];
    [(FMDAccount *)self setServerProtocolScheme:v35];
  }

  apsEnvironment = [(FMDAccount *)self apsEnvironment];
  v37 = [v48 objectForKeyedSubscript:off_1003133D8];
  v38 = [apsEnvironment isEqualToString:v37];

  if ((v38 & 1) == 0)
  {
    v39 = [v48 objectForKeyedSubscript:off_1003133D8];
    [(FMDAccount *)self setApsEnvironment:v39];
  }

  extAccessoryConfigURL = [(FMDFMIPAccount *)self extAccessoryConfigURL];
  v41 = [v48 objectForKeyedSubscript:off_1003133E0];
  v42 = [extAccessoryConfigURL isEqualToString:v41];

  if ((v42 & 1) == 0)
  {
    v43 = [v48 objectForKeyedSubscript:off_1003133E0];
    [(FMDFMIPAccount *)self setExtAccessoryConfigURL:v43];
  }

  accessoryPairingURL = [(FMDFMIPAccount *)self accessoryPairingURL];
  v45 = [v48 objectForKeyedSubscript:off_1003133E8];
  v46 = [accessoryPairingURL isEqualToString:v45];

  if ((v46 & 1) == 0)
  {
    v47 = [v48 objectForKeyedSubscript:off_1003133E8];
    [(FMDFMIPAccount *)self setAccessoryPairingURL:v47];
  }
}

- (id)authToken
{
  fmipAuthToken = [(FMDFMIPAccount *)self fmipAuthToken];
  v4 = fmipAuthToken;
  if (fmipAuthToken)
  {
    iCloudAuthToken = fmipAuthToken;
  }

  else
  {
    iCloudAuthToken = [(FMDFMIPAccount *)self iCloudAuthToken];
  }

  v6 = iCloudAuthToken;

  return v6;
}

- (void)copyInfoFromAccount:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = FMDFMIPAccount;
  [(FMDAccount *)&v11 copyInfoFromAccount:accountCopy];
  if ([accountCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = accountCopy;
    dsid = [v5 dsid];
    [(FMDFMIPAccount *)self setDsid:dsid];

    appleAccountIdentifier = [v5 appleAccountIdentifier];
    [(FMDFMIPAccount *)self setAppleAccountIdentifier:appleAccountIdentifier];

    iCloudAuthToken = [v5 iCloudAuthToken];
    [(FMDFMIPAccount *)self setICloudAuthToken:iCloudAuthToken];

    fmipAuthToken = [v5 fmipAuthToken];
    [(FMDFMIPAccount *)self setFmipAuthToken:fmipAuthToken];

    if ([v5 fmipEnableContext])
    {
      -[FMDFMIPAccount setFmipEnableContext:](self, "setFmipEnableContext:", [v5 fmipEnableContext]);
    }

    lastLoggedInDsid = [v5 lastLoggedInDsid];
    [(FMDFMIPAccount *)self setLastLoggedInDsid:lastLoggedInDsid];

    -[FMDFMIPAccount setLowBatteryLocateEnabled:](self, "setLowBatteryLocateEnabled:", [v5 lowBatteryLocateEnabled]);
  }
}

@end