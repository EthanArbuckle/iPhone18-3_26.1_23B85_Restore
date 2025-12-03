@interface TransparencyIDSRegistrationData
- (id)metricsTimeToCreate;
- (id)validateSignature:(id)signature withPublicKey:(id)key;
@end

@implementation TransparencyIDSRegistrationData

- (id)validateSignature:(id)signature withPublicKey:(id)key
{
  signatureCopy = signature;
  keyCopy = key;
  publicKey = [(TransparencyIDSRegistrationData *)self publicKey];

  if (publicKey)
  {
    [(TransparencyIDSRegistrationData *)self signature];

    publicKey2 = [(TransparencyIDSRegistrationData *)self publicKey];
    v10 = [keyCopy isEqual:publicKey2];

    if (v10)
    {
      tbsKTIDSRegistrationData = [(TransparencyIDSRegistrationData *)self tbsKTIDSRegistrationData];
      signature = [(TransparencyIDSRegistrationData *)self signature];
      v13 = [signatureCopy verifyData:tbsKTIDSRegistrationData signature:signature accountPublicKeyInfo:keyCopy error:0];

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = @"signatureIncorrect";
      }
    }

    else
    {
      v14 = @"publicKeyMismatch";
    }
  }

  else
  {
    v14 = @"notSignedYet-publicKey";
  }

  return v14;
}

- (id)metricsTimeToCreate
{
  createdAt = [(TransparencyIDSRegistrationData *)self createdAt];

  if (createdAt)
  {
    signedAt = [(TransparencyIDSRegistrationData *)self signedAt];

    if (signedAt)
    {
      signedAt2 = [(TransparencyIDSRegistrationData *)self signedAt];
      [(TransparencyIDSRegistrationData *)self createdAt];
    }

    else
    {
      signedAt2 = [(TransparencyIDSRegistrationData *)self createdAt];
      +[NSDate date];
    }
    v6 = ;
    [signedAt2 timeIntervalSinceDate:v6];
    createdAt = [NSNumber numberWithDouble:?];
  }

  return createdAt;
}

@end