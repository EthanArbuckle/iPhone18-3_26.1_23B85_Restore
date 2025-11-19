@interface CKKSCuttlefishAdapter
- (CKKSCuttlefishAdapter)initWithConnection:(id)a3;
- (void)fetchCurrentItem:(id)a3 items:(id)a4 reply:(id)a5;
- (void)fetchPCSIdentityByKey:(id)a3 pcsservices:(id)a4 reply:(id)a5;
- (void)fetchRecoverableTLKShares:(id)a3 peerID:(id)a4 contextID:(id)a5 altDSID:(id)a6 flowID:(id)a7 deviceSessionID:(id)a8 canSendMetrics:(BOOL)a9 reply:(id)a10;
@end

@implementation CKKSCuttlefishAdapter

- (void)fetchRecoverableTLKShares:(id)a3 peerID:(id)a4 contextID:(id)a5 altDSID:(id)a6 flowID:(id)a7 deviceSessionID:(id)a8 canSendMetrics:(BOOL)a9 reply:(id)a10
{
  v16 = a5;
  v17 = a10;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a4;
  v22 = a3;
  v23 = [(CKKSCuttlefishAdapter *)self cuttlefishXPCWrapper];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000AB2FC;
  v26[3] = &unk_1003365F8;
  v27 = v16;
  v28 = v17;
  v24 = v16;
  v25 = v17;
  [v23 fetchRecoverableTLKSharesWithSpecificUser:v22 peerID:v21 altDSID:v20 flowID:v19 deviceSessionID:v18 canSendMetrics:a9 reply:v26];
}

- (void)fetchPCSIdentityByKey:(id)a3 pcsservices:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(CKKSCuttlefishAdapter *)self cuttlefishXPCWrapper];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AB60C;
  v14[3] = &unk_100336710;
  v15 = v8;
  v16 = v9;
  v12 = v8;
  v13 = v9;
  [v11 fetchPCSIdentityByPublicKeyWithSpecificUser:v10 pcsservices:v12 reply:v14];
}

- (void)fetchCurrentItem:(id)a3 items:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(CKKSCuttlefishAdapter *)self cuttlefishXPCWrapper];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AB868;
  v14[3] = &unk_100336710;
  v15 = v8;
  v16 = v9;
  v12 = v8;
  v13 = v9;
  [v11 fetchCurrentItemWithSpecificUser:v10 items:v12 reply:v14];
}

- (CKKSCuttlefishAdapter)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKKSCuttlefishAdapter;
  v5 = [(CKKSCuttlefishAdapter *)&v9 init];
  if (v5)
  {
    v6 = [[CuttlefishXPCWrapper alloc] initWithCuttlefishXPCConnection:v4];
    cuttlefishXPCWrapper = v5->_cuttlefishXPCWrapper;
    v5->_cuttlefishXPCWrapper = v6;
  }

  return v5;
}

@end