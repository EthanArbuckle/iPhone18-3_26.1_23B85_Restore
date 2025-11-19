@interface TrustedPeersHelperTLKRecoveryResult
- (TrustedPeersHelperTLKRecoveryResult)initWithCoder:(id)a3;
- (TrustedPeersHelperTLKRecoveryResult)initWithSuccessfulKeyUUIDs:(id)a3 totalTLKSharesRecovered:(int64_t)a4 tlkRecoveryErrors:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TrustedPeersHelperTLKRecoveryResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TrustedPeersHelperTLKRecoveryResult *)self successfulKeysRecovered];
  [v4 encodeObject:v5 forKey:@"keys"];

  [v4 encodeInt64:-[TrustedPeersHelperTLKRecoveryResult totalTLKSharesRecovered](self forKey:{"totalTLKSharesRecovered"), @"totalShares"}];
  v6 = [(TrustedPeersHelperTLKRecoveryResult *)self tlkRecoveryErrors];
  [v4 encodeObject:v6 forKey:@"errors"];
}

- (TrustedPeersHelperTLKRecoveryResult)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TrustedPeersHelperTLKRecoveryResult;
  v5 = [(TrustedPeersHelperTLKRecoveryResult *)&v14 init];
  if (v5)
  {
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v15 count:2];
    v7 = [NSSet setWithArray:v6];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"keys"];
    successfulKeysRecovered = v5->_successfulKeysRecovered;
    v5->_successfulKeysRecovered = v8;

    v5->_totalTLKSharesRecovered = [v4 decodeInt64ForKey:@"totalShares"];
    v10 = +[SecXPCHelper safeErrorClasses];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"errors"];
    tlkRecoveryErrors = v5->_tlkRecoveryErrors;
    v5->_tlkRecoveryErrors = v11;
  }

  return v5;
}

- (id)description
{
  v3 = [(TrustedPeersHelperTLKRecoveryResult *)self successfulKeysRecovered];
  v4 = [NSString stringWithFormat:@"<TLKRecoveryResult: %@ totalTLKSharesRecovered:%d>", v3, [(TrustedPeersHelperTLKRecoveryResult *)self totalTLKSharesRecovered]];

  return v4;
}

- (TrustedPeersHelperTLKRecoveryResult)initWithSuccessfulKeyUUIDs:(id)a3 totalTLKSharesRecovered:(int64_t)a4 tlkRecoveryErrors:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TrustedPeersHelperTLKRecoveryResult;
  v11 = [(TrustedPeersHelperTLKRecoveryResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_successfulKeysRecovered, a3);
    v12->_totalTLKSharesRecovered = a4;
    objc_storeStrong(&v12->_tlkRecoveryErrors, a5);
  }

  return v12;
}

@end