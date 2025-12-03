@interface OctagonCKKSPeerAdapter
- (NSString)description;
- (OctagonCKKSPeerAdapter)initWithPeerID:(id)d specificUser:(id)user personaAdapter:(id)adapter cuttlefishXPC:(id)c;
- (id)currentState;
- (id)fetchIdentity:(id)identity error:(id *)error;
- (id)fetchSelfPeers:(id *)peers;
- (id)fetchTrustedPeers:(id *)peers;
- (void)registerForPeerChangeUpdates:(id)updates;
- (void)sendSelfPeerChangedUpdate;
- (void)sendTrustedPeerSetChangedUpdate;
@end

@implementation OctagonCKKSPeerAdapter

- (id)currentState
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000ABFE4;
  v13 = sub_1000ABFF4;
  v14 = 0;
  personaAdapter = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  specificUser = [(OctagonCKKSPeerAdapter *)self specificUser];
  personaUniqueString = [specificUser personaUniqueString];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000ABFFC;
  v8[3] = &unk_100344E90;
  v8[4] = self;
  v8[5] = &v9;
  [personaAdapter performBlockWithPersonaIdentifier:personaUniqueString block:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)sendTrustedPeerSetChangedUpdate
{
  personaAdapter = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  specificUser = [(OctagonCKKSPeerAdapter *)self specificUser];
  personaUniqueString = [specificUser personaUniqueString];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC10C;
  v6[3] = &unk_100346018;
  v6[4] = self;
  [personaAdapter performBlockWithPersonaIdentifier:personaUniqueString block:v6];
}

- (void)sendSelfPeerChangedUpdate
{
  personaAdapter = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  specificUser = [(OctagonCKKSPeerAdapter *)self specificUser];
  personaUniqueString = [specificUser personaUniqueString];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC264;
  v6[3] = &unk_100346018;
  v6[4] = self;
  [personaAdapter performBlockWithPersonaIdentifier:personaUniqueString block:v6];
}

- (void)registerForPeerChangeUpdates:(id)updates
{
  updatesCopy = updates;
  personaAdapter = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  specificUser = [(OctagonCKKSPeerAdapter *)self specificUser];
  personaUniqueString = [specificUser personaUniqueString];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AC3E4;
  v9[3] = &unk_100343E38;
  v9[4] = self;
  v10 = updatesCopy;
  v8 = updatesCopy;
  [personaAdapter performBlockWithPersonaIdentifier:personaUniqueString block:v9];
}

- (id)fetchTrustedPeers:(id *)peers
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000ABFE4;
  v15 = sub_1000ABFF4;
  v16 = 0;
  personaAdapter = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  specificUser = [(OctagonCKKSPeerAdapter *)self specificUser];
  personaUniqueString = [specificUser personaUniqueString];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AC594;
  v10[3] = &unk_1003472B0;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = peers;
  [personaAdapter performBlockWithPersonaIdentifier:personaUniqueString block:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)fetchSelfPeers:(id *)peers
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000ABFE4;
  v15 = sub_1000ABFF4;
  v16 = 0;
  personaAdapter = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  specificUser = [(OctagonCKKSPeerAdapter *)self specificUser];
  personaUniqueString = [specificUser personaUniqueString];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000ACB3C;
  v10[3] = &unk_1003472B0;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = peers;
  [personaAdapter performBlockWithPersonaIdentifier:personaUniqueString block:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)fetchIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000ABFE4;
  v21 = sub_1000ABFF4;
  v22 = 0;
  personaAdapter = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  specificUser = [(OctagonCKKSPeerAdapter *)self specificUser];
  personaUniqueString = [specificUser personaUniqueString];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000ACF48;
  v13[3] = &unk_1003472B0;
  v10 = identityCopy;
  v14 = v10;
  v15 = &v17;
  errorCopy = error;
  [personaAdapter performBlockWithPersonaIdentifier:personaUniqueString block:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (NSString)description
{
  peerID = [(OctagonCKKSPeerAdapter *)self peerID];
  v4 = [NSString stringWithFormat:@"<OctagonCKKSPeerAdapter: %@ e:%d>", peerID, [(OctagonCKKSPeerAdapter *)self essential]];

  return v4;
}

- (OctagonCKKSPeerAdapter)initWithPeerID:(id)d specificUser:(id)user personaAdapter:(id)adapter cuttlefishXPC:(id)c
{
  dCopy = d;
  userCopy = user;
  adapterCopy = adapter;
  cCopy = c;
  v21.receiver = self;
  v21.super_class = OctagonCKKSPeerAdapter;
  v15 = [(OctagonCKKSPeerAdapter *)&v21 init];
  if (v15)
  {
    dCopy = [NSString stringWithFormat:@"[OctagonCKKSPeerAdapter:%@]", dCopy];
    providerID = v15->_providerID;
    v15->_providerID = dCopy;

    objc_storeStrong(&v15->_peerID, d);
    objc_storeStrong(&v15->_specificUser, user);
    objc_storeStrong(&v15->_personaAdapter, adapter);
    objc_storeStrong(&v15->_cuttlefishXPCWrapper, c);
    v18 = [[CKKSListenerCollection alloc] initWithName:@"ckks-sos"];
    peerChangeListeners = v15->_peerChangeListeners;
    v15->_peerChangeListeners = v18;

    v15->_essential = 1;
  }

  return v15;
}

@end