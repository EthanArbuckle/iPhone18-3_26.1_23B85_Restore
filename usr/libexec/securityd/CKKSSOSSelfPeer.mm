@interface CKKSSOSSelfPeer
- (BOOL)matchesPeer:(id)peer;
- (BOOL)shouldHaveView:(id)view;
- (CKKSSOSSelfPeer)initWithSOSPeerID:(id)d encryptionKey:(id)key signingKey:(id)signingKey viewList:(id)list;
- (NSString)description;
- (NSString)peerID;
- (_SFECPublicKey)publicEncryptionKey;
- (_SFECPublicKey)publicSigningKey;
@end

@implementation CKKSSOSSelfPeer

- (BOOL)shouldHaveView:(id)view
{
  viewCopy = view;
  viewList = [(CKKSSOSSelfPeer *)self viewList];
  v6 = [viewList containsObject:viewCopy];

  return v6;
}

- (BOOL)matchesPeer:(id)peer
{
  peerCopy = peer;
  peerID = [(CKKSSOSSelfPeer *)self peerID];
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

  peerID3 = [(CKKSSOSSelfPeer *)self peerID];
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
  spid = [(CKKSSOSSelfPeer *)self spid];
  v3 = [NSString stringWithFormat:@"%@%@", @"spid-", spid];

  return v3;
}

- (_SFECPublicKey)publicSigningKey
{
  signingKey = [(CKKSSOSSelfPeer *)self signingKey];
  publicKey = [signingKey publicKey];

  return publicKey;
}

- (_SFECPublicKey)publicEncryptionKey
{
  encryptionKey = [(CKKSSOSSelfPeer *)self encryptionKey];
  publicKey = [encryptionKey publicKey];

  return publicKey;
}

- (CKKSSOSSelfPeer)initWithSOSPeerID:(id)d encryptionKey:(id)key signingKey:(id)signingKey viewList:(id)list
{
  dCopy = d;
  keyCopy = key;
  signingKeyCopy = signingKey;
  listCopy = list;
  v18.receiver = self;
  v18.super_class = CKKSSOSSelfPeer;
  v14 = [(CKKSSOSSelfPeer *)&v18 init];
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

    objc_storeStrong(&v14->_encryptionKey, key);
    objc_storeStrong(&v14->_signingKey, signingKey);
    objc_storeStrong(&v14->_viewList, list);
  }

  return v14;
}

- (NSString)description
{
  peerID = [(CKKSSOSSelfPeer *)self peerID];
  publicEncryptionKey = [(CKKSSOSSelfPeer *)self publicEncryptionKey];
  keyData = [publicEncryptionKey keyData];
  publicEncryptionKey2 = [(CKKSSOSSelfPeer *)self publicEncryptionKey];
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
  publicSigningKey = [(CKKSSOSSelfPeer *)self publicSigningKey];
  keyData3 = [publicSigningKey keyData];
  publicSigningKey2 = [(CKKSSOSSelfPeer *)self publicSigningKey];
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
  viewList = [(CKKSSOSSelfPeer *)self viewList];
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<CKKSSOSSelfPeer(%@): pubEnc:%@ pubSign:%@ views:%d>", peerID, v9, v16, [viewList count]);

  return v18;
}

@end