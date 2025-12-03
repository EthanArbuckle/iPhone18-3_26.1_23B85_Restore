@interface TrustedPeersHelperCustodianRecoveryKey
- (TrustedPeersHelperCustodianRecoveryKey)initWithCoder:(id)coder;
- (TrustedPeersHelperCustodianRecoveryKey)initWithUUID:(id)d encryptionKey:(id)key signingKey:(id)signingKey recoveryString:(id)string salt:(id)salt kind:(int)kind;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TrustedPeersHelperCustodianRecoveryKey

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(TrustedPeersHelperCustodianRecoveryKey *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  encryptionKey = [(TrustedPeersHelperCustodianRecoveryKey *)self encryptionKey];
  [coderCopy encodeObject:encryptionKey forKey:@"encryptionKey"];

  signingKey = [(TrustedPeersHelperCustodianRecoveryKey *)self signingKey];
  [coderCopy encodeObject:signingKey forKey:@"signingKey"];

  recoveryString = [(TrustedPeersHelperCustodianRecoveryKey *)self recoveryString];
  [coderCopy encodeObject:recoveryString forKey:@"recoveryString"];

  salt = [(TrustedPeersHelperCustodianRecoveryKey *)self salt];
  [coderCopy encodeObject:salt forKey:@"salt"];

  [coderCopy encodeInt32:-[TrustedPeersHelperCustodianRecoveryKey kind](self forKey:{"kind"), @"kind"}];
}

- (TrustedPeersHelperCustodianRecoveryKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = TrustedPeersHelperCustodianRecoveryKey;
  v5 = [(TrustedPeersHelperCustodianRecoveryKey *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionKey"];
    encryptionKey = v5->_encryptionKey;
    v5->_encryptionKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signingKey"];
    signingKey = v5->_signingKey;
    v5->_signingKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recoveryString"];
    recoveryString = v5->_recoveryString;
    v5->_recoveryString = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
    salt = v5->_salt;
    v5->_salt = v14;

    v5->_kind = [coderCopy decodeInt32ForKey:@"kind"];
  }

  return v5;
}

- (id)description
{
  uuid = [(TrustedPeersHelperCustodianRecoveryKey *)self uuid];
  kind = [(TrustedPeersHelperCustodianRecoveryKey *)self kind];
  if (kind >= 3)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", kind];
  }

  else
  {
    v5 = off_1003448E8[kind];
  }

  v6 = [NSString stringWithFormat:@"<CustodianRecoveryKey: %@, (%@)>", uuid, v5];

  return v6;
}

- (TrustedPeersHelperCustodianRecoveryKey)initWithUUID:(id)d encryptionKey:(id)key signingKey:(id)signingKey recoveryString:(id)string salt:(id)salt kind:(int)kind
{
  dCopy = d;
  keyCopy = key;
  signingKeyCopy = signingKey;
  stringCopy = string;
  saltCopy = salt;
  v23.receiver = self;
  v23.super_class = TrustedPeersHelperCustodianRecoveryKey;
  v18 = [(TrustedPeersHelperCustodianRecoveryKey *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, d);
    objc_storeStrong(&v19->_encryptionKey, key);
    objc_storeStrong(&v19->_signingKey, signingKey);
    objc_storeStrong(&v19->_recoveryString, string);
    objc_storeStrong(&v19->_salt, salt);
    v19->_kind = kind;
  }

  return v19;
}

@end