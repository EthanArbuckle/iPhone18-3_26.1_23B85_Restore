@interface CKKSActualPeer
- (BOOL)matchesPeer:(id)peer;
- (BOOL)shouldHaveView:(id)view;
- (CKKSActualPeer)initWithCoder:(id)coder;
- (CKKSActualPeer)initWithPeerID:(id)d encryptionPublicKey:(id)key signingPublicKey:(id)publicKey viewList:(id)list;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSActualPeer

- (CKKSActualPeer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CKKSActualPeer;
  v5 = [(CKKSActualPeer *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerID"];
    peerID = v5->_peerID;
    v5->_peerID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionKey"];
    if (v8)
    {
      v9 = [_SFECPublicKey keyWithSubjectPublicKeyInfo:v8];
      publicEncryptionKey = v5->_publicEncryptionKey;
      v5->_publicEncryptionKey = v9;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signingKey"];
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
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"viewList"];
    viewList = v5->_viewList;
    v5->_viewList = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  peerID = [(CKKSActualPeer *)self peerID];
  [coderCopy encodeObject:peerID forKey:@"peerID"];

  publicEncryptionKey = [(CKKSActualPeer *)self publicEncryptionKey];
  encodeSubjectPublicKeyInfo = [publicEncryptionKey encodeSubjectPublicKeyInfo];
  [coderCopy encodeObject:encodeSubjectPublicKeyInfo forKey:@"encryptionKey"];

  publicSigningKey = [(CKKSActualPeer *)self publicSigningKey];
  encodeSubjectPublicKeyInfo2 = [publicSigningKey encodeSubjectPublicKeyInfo];
  [coderCopy encodeObject:encodeSubjectPublicKeyInfo2 forKey:@"signingKey"];

  viewList = [(CKKSActualPeer *)self viewList];
  [coderCopy encodeObject:viewList forKey:@"viewList"];
}

- (BOOL)shouldHaveView:(id)view
{
  viewCopy = view;
  viewList = [(CKKSActualPeer *)self viewList];
  v6 = [viewList containsObject:viewCopy];

  return v6;
}

- (BOOL)matchesPeer:(id)peer
{
  peerCopy = peer;
  peerID = [(CKKSActualPeer *)self peerID];
  if (!peerID)
  {
    peerID2 = [peerCopy peerID];
    if (!peerID2)
    {
      v9 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  peerID3 = [(CKKSActualPeer *)self peerID];
  peerID4 = [peerCopy peerID];
  v9 = [peerID3 isEqualToString:peerID4];

  if (!peerID)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (CKKSActualPeer)initWithPeerID:(id)d encryptionPublicKey:(id)key signingPublicKey:(id)publicKey viewList:(id)list
{
  dCopy = d;
  keyCopy = key;
  publicKeyCopy = publicKey;
  listCopy = list;
  v18.receiver = self;
  v18.super_class = CKKSActualPeer;
  v15 = [(CKKSActualPeer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_peerID, d);
    objc_storeStrong(&v16->_publicEncryptionKey, key);
    objc_storeStrong(&v16->_publicSigningKey, publicKey);
    objc_storeStrong(&v16->_viewList, list);
  }

  return v16;
}

- (NSString)description
{
  peerID = [(CKKSActualPeer *)self peerID];
  publicEncryptionKey = [(CKKSActualPeer *)self publicEncryptionKey];
  keyData = [publicEncryptionKey keyData];
  publicEncryptionKey2 = [(CKKSActualPeer *)self publicEncryptionKey];
  keyData2 = [publicEncryptionKey2 keyData];
  v7 = [keyData2 length];

  if (v7 >= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  v9 = [keyData subdataWithRange:{0, v8}];
  publicSigningKey = [(CKKSActualPeer *)self publicSigningKey];
  keyData3 = [publicSigningKey keyData];
  publicSigningKey2 = [(CKKSActualPeer *)self publicSigningKey];
  keyData4 = [publicSigningKey2 keyData];
  v14 = [keyData4 length];

  if (v14 >= 0x10)
  {
    v15 = 16;
  }

  else
  {
    v15 = v14;
  }

  v16 = [keyData3 subdataWithRange:{0, v15}];
  viewList = [(CKKSActualPeer *)self viewList];
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<CKKSActualPeer(%@): pubEnc:%@ pubSign:%@ views:%d>", peerID, v9, v16, [viewList count]);

  return v18;
}

@end