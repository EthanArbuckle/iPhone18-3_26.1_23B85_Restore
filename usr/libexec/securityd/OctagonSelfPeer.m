@interface OctagonSelfPeer
- (BOOL)matchesPeer:(id)a3;
- (NSString)description;
- (OctagonSelfPeer)initWithPeerID:(id)a3 signingIdentity:(id)a4 encryptionIdentity:(id)a5;
- (_SFECKeyPair)encryptionKey;
- (_SFECKeyPair)signingKey;
- (_SFECPublicKey)publicEncryptionKey;
- (_SFECPublicKey)publicSigningKey;
@end

@implementation OctagonSelfPeer

- (BOOL)matchesPeer:(id)a3
{
  v4 = [a3 peerID];
  v5 = [(OctagonSelfPeer *)self peerID];
  v6 = v5 | v4;

  if (v6)
  {
    v8 = [(OctagonSelfPeer *)self peerID];
    v7 = [v8 isEqualToString:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (_SFECKeyPair)signingKey
{
  v2 = [(OctagonSelfPeer *)self signingIdentity];
  v3 = [v2 keyPair];

  return v3;
}

- (_SFECKeyPair)encryptionKey
{
  v2 = [(OctagonSelfPeer *)self encryptionIdentity];
  v3 = [v2 keyPair];

  return v3;
}

- (_SFECPublicKey)publicSigningKey
{
  v2 = [(OctagonSelfPeer *)self signingIdentity];
  v3 = [v2 publicKey];

  return v3;
}

- (_SFECPublicKey)publicEncryptionKey
{
  v2 = [(OctagonSelfPeer *)self encryptionIdentity];
  v3 = [v2 publicKey];

  return v3;
}

- (NSString)description
{
  v2 = [(OctagonSelfPeer *)self peerID];
  v3 = [NSString stringWithFormat:@"<OctagonSelfPeer: %@>", v2];

  return v3;
}

- (OctagonSelfPeer)initWithPeerID:(id)a3 signingIdentity:(id)a4 encryptionIdentity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OctagonSelfPeer;
  v12 = [(OctagonSelfPeer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_peerID, a3);
    objc_storeStrong(&v13->_signingIdentity, a4);
    objc_storeStrong(&v13->_encryptionIdentity, a5);
  }

  return v13;
}

@end