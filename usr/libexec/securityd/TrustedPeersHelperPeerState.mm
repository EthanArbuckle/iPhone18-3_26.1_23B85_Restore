@interface TrustedPeersHelperPeerState
- (TrustedPeersHelperPeerState)initWithCoder:(id)a3;
- (TrustedPeersHelperPeerState)initWithPeerID:(id)a3 isPreapproved:(BOOL)a4 status:(unint64_t)a5 memberChanges:(BOOL)a6 unknownMachineIDs:(BOOL)a7 osVersion:(id)a8 walrus:(id)a9 webAccess:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TrustedPeersHelperPeerState

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TrustedPeersHelperPeerState *)self peerID];
  [v4 encodeObject:v5 forKey:@"peerID"];

  [v4 encodeBool:-[TrustedPeersHelperPeerState identityIsPreapproved](self forKey:{"identityIsPreapproved"), @"identityIsPreapproved"}];
  [v4 encodeInt64:-[TrustedPeersHelperPeerState peerStatus](self forKey:{"peerStatus"), @"peerStatus"}];
  [v4 encodeInt64:-[TrustedPeersHelperPeerState memberChanges](self forKey:{"memberChanges"), @"memberChanges"}];
  [v4 encodeInt64:-[TrustedPeersHelperPeerState unknownMachineIDsPresent](self forKey:{"unknownMachineIDsPresent"), @"unknownMachineIDs"}];
  v6 = [(TrustedPeersHelperPeerState *)self osVersion];
  [v4 encodeObject:v6 forKey:@"osVersion"];

  v7 = [(TrustedPeersHelperPeerState *)self walrus];
  [v4 encodeObject:v7 forKey:@"walrus"];

  v8 = [(TrustedPeersHelperPeerState *)self webAccess];
  [v4 encodeObject:v8 forKey:@"webAccess"];
}

- (TrustedPeersHelperPeerState)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TrustedPeersHelperPeerState;
  v5 = [(TrustedPeersHelperPeerState *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerID"];
    peerID = v5->_peerID;
    v5->_peerID = v6;

    v5->_identityIsPreapproved = [v4 decodeBoolForKey:@"identityIsPreapproved"];
    v5->_peerStatus = [v4 decodeInt64ForKey:@"peerStatus"];
    v5->_memberChanges = [v4 decodeInt64ForKey:@"memberChanges"] != 0;
    v5->_unknownMachineIDsPresent = [v4 decodeInt64ForKey:@"unknownMachineIDs"] != 0;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"walrus"];
    walrus = v5->_walrus;
    v5->_walrus = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webAccess"];
    webAccess = v5->_webAccess;
    v5->_webAccess = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [(TrustedPeersHelperPeerState *)self peerID];
  v4 = [(TrustedPeersHelperPeerState *)self identityIsPreapproved];
  [(TrustedPeersHelperPeerState *)self peerStatus];
  v5 = TPPeerStatusToString();
  if ([(TrustedPeersHelperPeerState *)self memberChanges])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(TrustedPeersHelperPeerState *)self unknownMachineIDsPresent])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(TrustedPeersHelperPeerState *)self osVersion];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"unknown";
  }

  v11 = [(TrustedPeersHelperPeerState *)self walrus];
  v12 = [(TrustedPeersHelperPeerState *)self webAccess];
  v13 = [NSString stringWithFormat:@"<TPHPeerState: %@ preapproved:%d status:%@ memberChanges: %@ unk. mIDs: %@ osVersion: %@ walrus: %@ webAccess: %@>", v3, v4, v5, v6, v7, v10, v11, v12];

  return v13;
}

- (TrustedPeersHelperPeerState)initWithPeerID:(id)a3 isPreapproved:(BOOL)a4 status:(unint64_t)a5 memberChanges:(BOOL)a6 unknownMachineIDs:(BOOL)a7 osVersion:(id)a8 walrus:(id)a9 webAccess:(id)a10
{
  v23 = a3;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v24.receiver = self;
  v24.super_class = TrustedPeersHelperPeerState;
  v18 = [(TrustedPeersHelperPeerState *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_peerID, a3);
    v19->_identityIsPreapproved = a4;
    v19->_peerStatus = a5;
    v19->_memberChanges = a6;
    v19->_unknownMachineIDsPresent = a7;
    objc_storeStrong(&v19->_osVersion, a8);
    objc_storeStrong(&v19->_walrus, a9);
    objc_storeStrong(&v19->_webAccess, a10);
  }

  return v19;
}

@end