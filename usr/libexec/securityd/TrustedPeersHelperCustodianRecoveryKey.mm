@interface TrustedPeersHelperCustodianRecoveryKey
- (TrustedPeersHelperCustodianRecoveryKey)initWithCoder:(id)a3;
- (TrustedPeersHelperCustodianRecoveryKey)initWithUUID:(id)a3 encryptionKey:(id)a4 signingKey:(id)a5 recoveryString:(id)a6 salt:(id)a7 kind:(int)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TrustedPeersHelperCustodianRecoveryKey

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(TrustedPeersHelperCustodianRecoveryKey *)self uuid];
  [v9 encodeObject:v4 forKey:@"uuid"];

  v5 = [(TrustedPeersHelperCustodianRecoveryKey *)self encryptionKey];
  [v9 encodeObject:v5 forKey:@"encryptionKey"];

  v6 = [(TrustedPeersHelperCustodianRecoveryKey *)self signingKey];
  [v9 encodeObject:v6 forKey:@"signingKey"];

  v7 = [(TrustedPeersHelperCustodianRecoveryKey *)self recoveryString];
  [v9 encodeObject:v7 forKey:@"recoveryString"];

  v8 = [(TrustedPeersHelperCustodianRecoveryKey *)self salt];
  [v9 encodeObject:v8 forKey:@"salt"];

  [v9 encodeInt32:-[TrustedPeersHelperCustodianRecoveryKey kind](self forKey:{"kind"), @"kind"}];
}

- (TrustedPeersHelperCustodianRecoveryKey)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TrustedPeersHelperCustodianRecoveryKey;
  v5 = [(TrustedPeersHelperCustodianRecoveryKey *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionKey"];
    encryptionKey = v5->_encryptionKey;
    v5->_encryptionKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signingKey"];
    signingKey = v5->_signingKey;
    v5->_signingKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recoveryString"];
    recoveryString = v5->_recoveryString;
    v5->_recoveryString = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
    salt = v5->_salt;
    v5->_salt = v14;

    v5->_kind = [v4 decodeInt32ForKey:@"kind"];
  }

  return v5;
}

- (id)description
{
  v3 = [(TrustedPeersHelperCustodianRecoveryKey *)self uuid];
  v4 = [(TrustedPeersHelperCustodianRecoveryKey *)self kind];
  if (v4 >= 3)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = off_1003448E8[v4];
  }

  v6 = [NSString stringWithFormat:@"<CustodianRecoveryKey: %@, (%@)>", v3, v5];

  return v6;
}

- (TrustedPeersHelperCustodianRecoveryKey)initWithUUID:(id)a3 encryptionKey:(id)a4 signingKey:(id)a5 recoveryString:(id)a6 salt:(id)a7 kind:(int)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = TrustedPeersHelperCustodianRecoveryKey;
  v18 = [(TrustedPeersHelperCustodianRecoveryKey *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, a3);
    objc_storeStrong(&v19->_encryptionKey, a4);
    objc_storeStrong(&v19->_signingKey, a5);
    objc_storeStrong(&v19->_recoveryString, a6);
    objc_storeStrong(&v19->_salt, a7);
    v19->_kind = a8;
  }

  return v19;
}

@end