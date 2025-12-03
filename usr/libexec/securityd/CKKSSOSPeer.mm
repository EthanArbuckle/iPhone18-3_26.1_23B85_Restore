@interface CKKSSOSPeer
- (BOOL)matchesPeer:(id)peer;
- (BOOL)shouldHaveView:(id)view;
- (CKKSSOSPeer)initWithCoder:(id)coder;
- (CKKSSOSPeer)initWithSOSPeerID:(id)d encryptionPublicKey:(id)key signingPublicKey:(id)publicKey viewList:(id)list;
- (NSString)description;
- (NSString)peerID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSSOSPeer

- (CKKSSOSPeer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CKKSSOSPeer;
  v5 = [(CKKSSOSPeer *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spid"];
    spid = v5->_spid;
    v5->_spid = v6;

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
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  spid = [(CKKSSOSPeer *)self spid];
  [coderCopy encodeObject:spid forKey:@"spid"];

  publicEncryptionKey = [(CKKSSOSPeer *)self publicEncryptionKey];
  encodeSubjectPublicKeyInfo = [publicEncryptionKey encodeSubjectPublicKeyInfo];
  [coderCopy encodeObject:encodeSubjectPublicKeyInfo forKey:@"encryptionKey"];

  publicSigningKey = [(CKKSSOSPeer *)self publicSigningKey];
  encodeSubjectPublicKeyInfo2 = [publicSigningKey encodeSubjectPublicKeyInfo];
  [coderCopy encodeObject:encodeSubjectPublicKeyInfo2 forKey:@"signingKey"];
}

- (BOOL)shouldHaveView:(id)view
{
  viewCopy = view;
  viewList = [(CKKSSOSPeer *)self viewList];
  v6 = [viewList containsObject:viewCopy];

  return v6;
}

- (BOOL)matchesPeer:(id)peer
{
  peerCopy = peer;
  peerID = [(CKKSSOSPeer *)self peerID];
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

  peerID3 = [(CKKSSOSPeer *)self peerID];
  peerID4 = [peerCopy peerID];
  v9 = [peerID3 isEqualToString:peerID4];

  if (!peerID)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (NSString)peerID
{
  spid = [(CKKSSOSPeer *)self spid];
  v3 = [NSString stringWithFormat:@"%@%@", @"spid-", spid];

  return v3;
}

- (CKKSSOSPeer)initWithSOSPeerID:(id)d encryptionPublicKey:(id)key signingPublicKey:(id)publicKey viewList:(id)list
{
  dCopy = d;
  keyCopy = key;
  publicKeyCopy = publicKey;
  listCopy = list;
  v18.receiver = self;
  v18.super_class = CKKSSOSPeer;
  v14 = [(CKKSSOSPeer *)&v18 init];
  if (v14)
  {
    if ([dCopy hasPrefix:@"spid-"])
    {
      v15 = [dCopy substringFromIndex:{objc_msgSend(@"spid-", "length")}];
    }

    else
    {
      v15 = dCopy;
    }

    spid = v14->_spid;
    v14->_spid = v15;

    objc_storeStrong(&v14->_publicEncryptionKey, key);
    objc_storeStrong(&v14->_publicSigningKey, publicKey);
    objc_storeStrong(&v14->_viewList, list);
  }

  return v14;
}

- (NSString)description
{
  peerID = [(CKKSSOSPeer *)self peerID];
  publicEncryptionKey = [(CKKSSOSPeer *)self publicEncryptionKey];
  keyData = [publicEncryptionKey keyData];
  publicEncryptionKey2 = [(CKKSSOSPeer *)self publicEncryptionKey];
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
  publicSigningKey = [(CKKSSOSPeer *)self publicSigningKey];
  keyData3 = [publicSigningKey keyData];
  publicSigningKey2 = [(CKKSSOSPeer *)self publicSigningKey];
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
  viewList = [(CKKSSOSPeer *)self viewList];
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<CKKSSOSPeer(%@): pubEnc:%@ pubSign:%@ views:%d>", peerID, v9, v16, [viewList count]);

  return v18;
}

@end