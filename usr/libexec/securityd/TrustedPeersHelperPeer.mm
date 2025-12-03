@interface TrustedPeersHelperPeer
- (TrustedPeersHelperPeer)initWithCoder:(id)coder;
- (TrustedPeersHelperPeer)initWithPeerID:(id)d signingSPKI:(id)i encryptionSPKI:(id)kI secureElementIdentity:(id)identity viewList:(id)list;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TrustedPeersHelperPeer

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  peerID = [(TrustedPeersHelperPeer *)self peerID];
  [coderCopy encodeObject:peerID forKey:@"peerID"];

  signingSPKI = [(TrustedPeersHelperPeer *)self signingSPKI];
  [coderCopy encodeObject:signingSPKI forKey:@"signingSPKI"];

  encryptionSPKI = [(TrustedPeersHelperPeer *)self encryptionSPKI];
  [coderCopy encodeObject:encryptionSPKI forKey:@"encryptionSPKI"];

  secureElementIdentity = [(TrustedPeersHelperPeer *)self secureElementIdentity];
  [coderCopy encodeObject:secureElementIdentity forKey:@"seIdentity"];

  viewList = [(TrustedPeersHelperPeer *)self viewList];
  [coderCopy encodeObject:viewList forKey:@"viewList"];
}

- (TrustedPeersHelperPeer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = TrustedPeersHelperPeer;
  v5 = [(TrustedPeersHelperPeer *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerID"];
    peerID = v5->_peerID;
    v5->_peerID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signingSPKI"];
    signingSPKI = v5->_signingSPKI;
    v5->_signingSPKI = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionSPKI"];
    encryptionSPKI = v5->_encryptionSPKI;
    v5->_encryptionSPKI = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seIdentity"];
    secureElementIdentity = v5->_secureElementIdentity;
    v5->_secureElementIdentity = v12;

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

- (id)description
{
  peerID = [(TrustedPeersHelperPeer *)self peerID];
  signingSPKI = [(TrustedPeersHelperPeer *)self signingSPKI];
  encryptionSPKI = [(TrustedPeersHelperPeer *)self encryptionSPKI];
  secureElementIdentity = [(TrustedPeersHelperPeer *)self secureElementIdentity];
  peerIdentifier = [secureElementIdentity peerIdentifier];
  v8 = [peerIdentifier base64EncodedStringWithOptions:0];
  viewList = [(TrustedPeersHelperPeer *)self viewList];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<TPHPeer: %@ %@ %@ se:%@ (%lu views)>", peerID, signingSPKI, encryptionSPKI, v8, [viewList count]);

  return v10;
}

- (TrustedPeersHelperPeer)initWithPeerID:(id)d signingSPKI:(id)i encryptionSPKI:(id)kI secureElementIdentity:(id)identity viewList:(id)list
{
  dCopy = d;
  iCopy = i;
  kICopy = kI;
  identityCopy = identity;
  listCopy = list;
  v21.receiver = self;
  v21.super_class = TrustedPeersHelperPeer;
  v17 = [(TrustedPeersHelperPeer *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_peerID, d);
    objc_storeStrong(&v18->_signingSPKI, i);
    objc_storeStrong(&v18->_encryptionSPKI, kI);
    objc_storeStrong(&v18->_secureElementIdentity, identity);
    objc_storeStrong(&v18->_viewList, list);
  }

  return v18;
}

@end