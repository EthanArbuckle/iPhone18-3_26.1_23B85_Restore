@interface CKKSSOSSelfPeer
- (BOOL)matchesPeer:(id)a3;
- (BOOL)shouldHaveView:(id)a3;
- (CKKSSOSSelfPeer)initWithSOSPeerID:(id)a3 encryptionKey:(id)a4 signingKey:(id)a5 viewList:(id)a6;
- (NSString)description;
- (NSString)peerID;
- (_SFECPublicKey)publicEncryptionKey;
- (_SFECPublicKey)publicSigningKey;
@end

@implementation CKKSSOSSelfPeer

- (BOOL)shouldHaveView:(id)a3
{
  v4 = a3;
  v5 = [(CKKSSOSSelfPeer *)self viewList];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)matchesPeer:(id)a3
{
  v5 = a3;
  v6 = [(CKKSSOSSelfPeer *)self peerID];
  if (!v6)
  {
    v3 = [v5 peerID];
    if (!v3)
    {
      v9 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v7 = [(CKKSSOSSelfPeer *)self peerID];
  v8 = [v5 peerID];
  v9 = [v7 isEqualToString:v8];

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (NSString)peerID
{
  v2 = [(CKKSSOSSelfPeer *)self spid];
  v3 = [NSString stringWithFormat:@"%@%@", @"spid-", v2];

  return v3;
}

- (_SFECPublicKey)publicSigningKey
{
  v2 = [(CKKSSOSSelfPeer *)self signingKey];
  v3 = [v2 publicKey];

  return v3;
}

- (_SFECPublicKey)publicEncryptionKey
{
  v2 = [(CKKSSOSSelfPeer *)self encryptionKey];
  v3 = [v2 publicKey];

  return v3;
}

- (CKKSSOSSelfPeer)initWithSOSPeerID:(id)a3 encryptionKey:(id)a4 signingKey:(id)a5 viewList:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = CKKSSOSSelfPeer;
  v14 = [(CKKSSOSSelfPeer *)&v18 init];
  if (v14)
  {
    if ([v10 hasPrefix:@"spid-"])
    {
      v15 = [v10 substringFromIndex:{objc_msgSend(@"spid-", "length")}];
    }

    else
    {
      v15 = v10;
    }

    spid = v14->_spid;
    v14->_spid = v15;

    objc_storeStrong(&v14->_encryptionKey, a4);
    objc_storeStrong(&v14->_signingKey, a5);
    objc_storeStrong(&v14->_viewList, a6);
  }

  return v14;
}

- (NSString)description
{
  v20 = [(CKKSSOSSelfPeer *)self peerID];
  v3 = [(CKKSSOSSelfPeer *)self publicEncryptionKey];
  v4 = [v3 keyData];
  v5 = [(CKKSSOSSelfPeer *)self publicEncryptionKey];
  v6 = [v5 keyData];
  v7 = [v6 length];

  if (v7 >= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v4 subdataWithRange:{0, v8}];
  v10 = [(CKKSSOSSelfPeer *)self publicSigningKey];
  v11 = [v10 keyData];
  v12 = [(CKKSSOSSelfPeer *)self publicSigningKey];
  v13 = [v12 keyData];
  v14 = [v13 length];

  if (v14 >= 0x10)
  {
    v15 = 16;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v11 subdataWithRange:{0, v15}];
  v17 = [(CKKSSOSSelfPeer *)self viewList];
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<CKKSSOSSelfPeer(%@): pubEnc:%@ pubSign:%@ views:%d>", v20, v9, v16, [v17 count]);

  return v18;
}

@end