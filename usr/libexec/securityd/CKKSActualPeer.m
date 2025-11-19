@interface CKKSActualPeer
- (BOOL)matchesPeer:(id)a3;
- (BOOL)shouldHaveView:(id)a3;
- (CKKSActualPeer)initWithCoder:(id)a3;
- (CKKSActualPeer)initWithPeerID:(id)a3 encryptionPublicKey:(id)a4 signingPublicKey:(id)a5 viewList:(id)a6;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSActualPeer

- (CKKSActualPeer)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKKSActualPeer;
  v5 = [(CKKSActualPeer *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerID"];
    peerID = v5->_peerID;
    v5->_peerID = v6;

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

    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v14 = [NSArray arrayWithObjects:v20 count:2];
    v15 = [NSSet setWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"viewList"];
    viewList = v5->_viewList;
    v5->_viewList = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKKSActualPeer *)self peerID];
  [v4 encodeObject:v5 forKey:@"peerID"];

  v6 = [(CKKSActualPeer *)self publicEncryptionKey];
  v7 = [v6 encodeSubjectPublicKeyInfo];
  [v4 encodeObject:v7 forKey:@"encryptionKey"];

  v8 = [(CKKSActualPeer *)self publicSigningKey];
  v9 = [v8 encodeSubjectPublicKeyInfo];
  [v4 encodeObject:v9 forKey:@"signingKey"];

  v10 = [(CKKSActualPeer *)self viewList];
  [v4 encodeObject:v10 forKey:@"viewList"];
}

- (BOOL)shouldHaveView:(id)a3
{
  v4 = a3;
  v5 = [(CKKSActualPeer *)self viewList];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)matchesPeer:(id)a3
{
  v5 = a3;
  v6 = [(CKKSActualPeer *)self peerID];
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

  v7 = [(CKKSActualPeer *)self peerID];
  v8 = [v5 peerID];
  v9 = [v7 isEqualToString:v8];

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (CKKSActualPeer)initWithPeerID:(id)a3 encryptionPublicKey:(id)a4 signingPublicKey:(id)a5 viewList:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CKKSActualPeer;
  v15 = [(CKKSActualPeer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_peerID, a3);
    objc_storeStrong(&v16->_publicEncryptionKey, a4);
    objc_storeStrong(&v16->_publicSigningKey, a5);
    objc_storeStrong(&v16->_viewList, a6);
  }

  return v16;
}

- (NSString)description
{
  v20 = [(CKKSActualPeer *)self peerID];
  v3 = [(CKKSActualPeer *)self publicEncryptionKey];
  v4 = [v3 keyData];
  v5 = [(CKKSActualPeer *)self publicEncryptionKey];
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
  v10 = [(CKKSActualPeer *)self publicSigningKey];
  v11 = [v10 keyData];
  v12 = [(CKKSActualPeer *)self publicSigningKey];
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
  v17 = [(CKKSActualPeer *)self viewList];
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<CKKSActualPeer(%@): pubEnc:%@ pubSign:%@ views:%d>", v20, v9, v16, [v17 count]);

  return v18;
}

@end