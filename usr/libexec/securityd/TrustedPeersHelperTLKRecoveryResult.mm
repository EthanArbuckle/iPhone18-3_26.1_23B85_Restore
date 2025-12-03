@interface TrustedPeersHelperTLKRecoveryResult
- (TrustedPeersHelperTLKRecoveryResult)initWithCoder:(id)coder;
- (TrustedPeersHelperTLKRecoveryResult)initWithSuccessfulKeyUUIDs:(id)ds totalTLKSharesRecovered:(int64_t)recovered tlkRecoveryErrors:(id)errors;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TrustedPeersHelperTLKRecoveryResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  successfulKeysRecovered = [(TrustedPeersHelperTLKRecoveryResult *)self successfulKeysRecovered];
  [coderCopy encodeObject:successfulKeysRecovered forKey:@"keys"];

  [coderCopy encodeInt64:-[TrustedPeersHelperTLKRecoveryResult totalTLKSharesRecovered](self forKey:{"totalTLKSharesRecovered"), @"totalShares"}];
  tlkRecoveryErrors = [(TrustedPeersHelperTLKRecoveryResult *)self tlkRecoveryErrors];
  [coderCopy encodeObject:tlkRecoveryErrors forKey:@"errors"];
}

- (TrustedPeersHelperTLKRecoveryResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = TrustedPeersHelperTLKRecoveryResult;
  v5 = [(TrustedPeersHelperTLKRecoveryResult *)&v14 init];
  if (v5)
  {
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v15 count:2];
    v7 = [NSSet setWithArray:v6];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"keys"];
    successfulKeysRecovered = v5->_successfulKeysRecovered;
    v5->_successfulKeysRecovered = v8;

    v5->_totalTLKSharesRecovered = [coderCopy decodeInt64ForKey:@"totalShares"];
    v10 = +[SecXPCHelper safeErrorClasses];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"errors"];
    tlkRecoveryErrors = v5->_tlkRecoveryErrors;
    v5->_tlkRecoveryErrors = v11;
  }

  return v5;
}

- (id)description
{
  successfulKeysRecovered = [(TrustedPeersHelperTLKRecoveryResult *)self successfulKeysRecovered];
  v4 = [NSString stringWithFormat:@"<TLKRecoveryResult: %@ totalTLKSharesRecovered:%d>", successfulKeysRecovered, [(TrustedPeersHelperTLKRecoveryResult *)self totalTLKSharesRecovered]];

  return v4;
}

- (TrustedPeersHelperTLKRecoveryResult)initWithSuccessfulKeyUUIDs:(id)ds totalTLKSharesRecovered:(int64_t)recovered tlkRecoveryErrors:(id)errors
{
  dsCopy = ds;
  errorsCopy = errors;
  v14.receiver = self;
  v14.super_class = TrustedPeersHelperTLKRecoveryResult;
  v11 = [(TrustedPeersHelperTLKRecoveryResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_successfulKeysRecovered, ds);
    v12->_totalTLKSharesRecovered = recovered;
    objc_storeStrong(&v12->_tlkRecoveryErrors, errors);
  }

  return v12;
}

@end