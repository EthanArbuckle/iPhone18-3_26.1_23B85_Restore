@interface OctagonSelfPeer
- (BOOL)matchesPeer:(id)peer;
- (NSString)description;
- (OctagonSelfPeer)initWithPeerID:(id)d signingIdentity:(id)identity encryptionIdentity:(id)encryptionIdentity;
- (_SFECKeyPair)encryptionKey;
- (_SFECKeyPair)signingKey;
- (_SFECPublicKey)publicEncryptionKey;
- (_SFECPublicKey)publicSigningKey;
@end

@implementation OctagonSelfPeer

- (BOOL)matchesPeer:(id)peer
{
  peerID = [peer peerID];
  peerID2 = [(OctagonSelfPeer *)self peerID];
  v6 = peerID2 | peerID;

  if (v6)
  {
    peerID3 = [(OctagonSelfPeer *)self peerID];
    v7 = [peerID3 isEqualToString:peerID];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (_SFECKeyPair)signingKey
{
  signingIdentity = [(OctagonSelfPeer *)self signingIdentity];
  keyPair = [signingIdentity keyPair];

  return keyPair;
}

- (_SFECKeyPair)encryptionKey
{
  encryptionIdentity = [(OctagonSelfPeer *)self encryptionIdentity];
  keyPair = [encryptionIdentity keyPair];

  return keyPair;
}

- (_SFECPublicKey)publicSigningKey
{
  signingIdentity = [(OctagonSelfPeer *)self signingIdentity];
  publicKey = [signingIdentity publicKey];

  return publicKey;
}

- (_SFECPublicKey)publicEncryptionKey
{
  encryptionIdentity = [(OctagonSelfPeer *)self encryptionIdentity];
  publicKey = [encryptionIdentity publicKey];

  return publicKey;
}

- (NSString)description
{
  peerID = [(OctagonSelfPeer *)self peerID];
  v3 = [NSString stringWithFormat:@"<OctagonSelfPeer: %@>", peerID];

  return v3;
}

- (OctagonSelfPeer)initWithPeerID:(id)d signingIdentity:(id)identity encryptionIdentity:(id)encryptionIdentity
{
  dCopy = d;
  identityCopy = identity;
  encryptionIdentityCopy = encryptionIdentity;
  v15.receiver = self;
  v15.super_class = OctagonSelfPeer;
  v12 = [(OctagonSelfPeer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_peerID, d);
    objc_storeStrong(&v13->_signingIdentity, identity);
    objc_storeStrong(&v13->_encryptionIdentity, encryptionIdentity);
  }

  return v13;
}

@end