@interface CKKSSOSPeer
- (BOOL)matchesPeer:(id)a3;
- (BOOL)shouldHaveView:(id)a3;
- (CKKSSOSPeer)initWithCoder:(id)a3;
- (CKKSSOSPeer)initWithSOSPeerID:(id)a3 encryptionPublicKey:(id)a4 signingPublicKey:(id)a5 viewList:(id)a6;
- (NSString)description;
- (NSString)peerID;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSSOSPeer

- (CKKSSOSPeer)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CKKSSOSPeer;
  v5 = [(CKKSSOSPeer *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spid"];
    spid = v5->_spid;
    v5->_spid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionKey"];
    if (v8)
    {
      v9 = [_SFECPublicKey keyWithSubjectPublicKeyInfo:v8];
      publicEncryptionKey = v5->_publicEncryptionKey;
      v5->_publicEncryptionKey = v9;
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signingKey"];
    if (v11)
    {
      v12 = [_SFECPublicKey keyWithSubjectPublicKeyInfo:v11];
      publicSigningKey = v5->_publicSigningKey;
      v5->_publicSigningKey = v12;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKKSSOSPeer *)self spid];
  [v4 encodeObject:v5 forKey:@"spid"];

  v6 = [(CKKSSOSPeer *)self publicEncryptionKey];
  v7 = [v6 encodeSubjectPublicKeyInfo];
  [v4 encodeObject:v7 forKey:@"encryptionKey"];

  v9 = [(CKKSSOSPeer *)self publicSigningKey];
  v8 = [v9 encodeSubjectPublicKeyInfo];
  [v4 encodeObject:v8 forKey:@"signingKey"];
}

- (BOOL)shouldHaveView:(id)a3
{
  v4 = a3;
  v5 = [(CKKSSOSPeer *)self viewList];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)matchesPeer:(id)a3
{
  v5 = a3;
  v6 = [(CKKSSOSPeer *)self peerID];
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

  v7 = [(CKKSSOSPeer *)self peerID];
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
  v2 = [(CKKSSOSPeer *)self spid];
  v3 = [NSString stringWithFormat:@"%@%@", @"spid-", v2];

  return v3;
}

- (CKKSSOSPeer)initWithSOSPeerID:(id)a3 encryptionPublicKey:(id)a4 signingPublicKey:(id)a5 viewList:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = CKKSSOSPeer;
  v14 = [(CKKSSOSPeer *)&v18 init];
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

    objc_storeStrong(&v14->_publicEncryptionKey, a4);
    objc_storeStrong(&v14->_publicSigningKey, a5);
    objc_storeStrong(&v14->_viewList, a6);
  }

  return v14;
}

- (NSString)description
{
  v20 = [(CKKSSOSPeer *)self peerID];
  v3 = [(CKKSSOSPeer *)self publicEncryptionKey];
  v4 = [v3 keyData];
  v5 = [(CKKSSOSPeer *)self publicEncryptionKey];
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
  v10 = [(CKKSSOSPeer *)self publicSigningKey];
  v11 = [v10 keyData];
  v12 = [(CKKSSOSPeer *)self publicSigningKey];
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
  v17 = [(CKKSSOSPeer *)self viewList];
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<CKKSSOSPeer(%@): pubEnc:%@ pubSign:%@ views:%d>", v20, v9, v16, [v17 count]);

  return v18;
}

@end