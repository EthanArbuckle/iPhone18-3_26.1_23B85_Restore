@interface OctagonCKKSPeerAdapter
- (NSString)description;
- (OctagonCKKSPeerAdapter)initWithPeerID:(id)a3 specificUser:(id)a4 personaAdapter:(id)a5 cuttlefishXPC:(id)a6;
- (id)currentState;
- (id)fetchIdentity:(id)a3 error:(id *)a4;
- (id)fetchSelfPeers:(id *)a3;
- (id)fetchTrustedPeers:(id *)a3;
- (void)registerForPeerChangeUpdates:(id)a3;
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
  v3 = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  v4 = [(OctagonCKKSPeerAdapter *)self specificUser];
  v5 = [v4 personaUniqueString];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000ABFFC;
  v8[3] = &unk_100344E90;
  v8[4] = self;
  v8[5] = &v9;
  [v3 performBlockWithPersonaIdentifier:v5 block:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)sendTrustedPeerSetChangedUpdate
{
  v3 = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  v4 = [(OctagonCKKSPeerAdapter *)self specificUser];
  v5 = [v4 personaUniqueString];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC10C;
  v6[3] = &unk_100346018;
  v6[4] = self;
  [v3 performBlockWithPersonaIdentifier:v5 block:v6];
}

- (void)sendSelfPeerChangedUpdate
{
  v3 = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  v4 = [(OctagonCKKSPeerAdapter *)self specificUser];
  v5 = [v4 personaUniqueString];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC264;
  v6[3] = &unk_100346018;
  v6[4] = self;
  [v3 performBlockWithPersonaIdentifier:v5 block:v6];
}

- (void)registerForPeerChangeUpdates:(id)a3
{
  v4 = a3;
  v5 = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  v6 = [(OctagonCKKSPeerAdapter *)self specificUser];
  v7 = [v6 personaUniqueString];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AC3E4;
  v9[3] = &unk_100343E38;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v5 performBlockWithPersonaIdentifier:v7 block:v9];
}

- (id)fetchTrustedPeers:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000ABFE4;
  v15 = sub_1000ABFF4;
  v16 = 0;
  v5 = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  v6 = [(OctagonCKKSPeerAdapter *)self specificUser];
  v7 = [v6 personaUniqueString];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AC594;
  v10[3] = &unk_1003472B0;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = a3;
  [v5 performBlockWithPersonaIdentifier:v7 block:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)fetchSelfPeers:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000ABFE4;
  v15 = sub_1000ABFF4;
  v16 = 0;
  v5 = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  v6 = [(OctagonCKKSPeerAdapter *)self specificUser];
  v7 = [v6 personaUniqueString];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000ACB3C;
  v10[3] = &unk_1003472B0;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = a3;
  [v5 performBlockWithPersonaIdentifier:v7 block:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)fetchIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000ABFE4;
  v21 = sub_1000ABFF4;
  v22 = 0;
  v7 = [(OctagonCKKSPeerAdapter *)self personaAdapter];
  v8 = [(OctagonCKKSPeerAdapter *)self specificUser];
  v9 = [v8 personaUniqueString];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000ACF48;
  v13[3] = &unk_1003472B0;
  v10 = v6;
  v14 = v10;
  v15 = &v17;
  v16 = a4;
  [v7 performBlockWithPersonaIdentifier:v9 block:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (NSString)description
{
  v3 = [(OctagonCKKSPeerAdapter *)self peerID];
  v4 = [NSString stringWithFormat:@"<OctagonCKKSPeerAdapter: %@ e:%d>", v3, [(OctagonCKKSPeerAdapter *)self essential]];

  return v4;
}

- (OctagonCKKSPeerAdapter)initWithPeerID:(id)a3 specificUser:(id)a4 personaAdapter:(id)a5 cuttlefishXPC:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = OctagonCKKSPeerAdapter;
  v15 = [(OctagonCKKSPeerAdapter *)&v21 init];
  if (v15)
  {
    v16 = [NSString stringWithFormat:@"[OctagonCKKSPeerAdapter:%@]", v11];
    providerID = v15->_providerID;
    v15->_providerID = v16;

    objc_storeStrong(&v15->_peerID, a3);
    objc_storeStrong(&v15->_specificUser, a4);
    objc_storeStrong(&v15->_personaAdapter, a5);
    objc_storeStrong(&v15->_cuttlefishXPCWrapper, a6);
    v18 = [[CKKSListenerCollection alloc] initWithName:@"ckks-sos"];
    peerChangeListeners = v15->_peerChangeListeners;
    v15->_peerChangeListeners = v18;

    v15->_essential = 1;
  }

  return v15;
}

@end