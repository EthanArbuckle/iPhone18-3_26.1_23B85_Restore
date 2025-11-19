@interface TransparencyIDSRegistrationData
- (id)metricsTimeToCreate;
- (id)validateSignature:(id)a3 withPublicKey:(id)a4;
@end

@implementation TransparencyIDSRegistrationData

- (id)validateSignature:(id)a3 withPublicKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TransparencyIDSRegistrationData *)self publicKey];

  if (v8)
  {
    [(TransparencyIDSRegistrationData *)self signature];

    v9 = [(TransparencyIDSRegistrationData *)self publicKey];
    v10 = [v7 isEqual:v9];

    if (v10)
    {
      v11 = [(TransparencyIDSRegistrationData *)self tbsKTIDSRegistrationData];
      v12 = [(TransparencyIDSRegistrationData *)self signature];
      v13 = [v6 verifyData:v11 signature:v12 accountPublicKeyInfo:v7 error:0];

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
  v3 = [(TransparencyIDSRegistrationData *)self createdAt];

  if (v3)
  {
    v4 = [(TransparencyIDSRegistrationData *)self signedAt];

    if (v4)
    {
      v5 = [(TransparencyIDSRegistrationData *)self signedAt];
      [(TransparencyIDSRegistrationData *)self createdAt];
    }

    else
    {
      v5 = [(TransparencyIDSRegistrationData *)self createdAt];
      +[NSDate date];
    }
    v6 = ;
    [v5 timeIntervalSinceDate:v6];
    v3 = [NSNumber numberWithDouble:?];
  }

  return v3;
}

@end