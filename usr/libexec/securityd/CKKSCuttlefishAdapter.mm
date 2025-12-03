@interface CKKSCuttlefishAdapter
- (CKKSCuttlefishAdapter)initWithConnection:(id)connection;
- (void)fetchCurrentItem:(id)item items:(id)items reply:(id)reply;
- (void)fetchPCSIdentityByKey:(id)key pcsservices:(id)pcsservices reply:(id)reply;
- (void)fetchRecoverableTLKShares:(id)shares peerID:(id)d contextID:(id)iD altDSID:(id)sID flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)self0;
@end

@implementation CKKSCuttlefishAdapter

- (void)fetchRecoverableTLKShares:(id)shares peerID:(id)d contextID:(id)iD altDSID:(id)sID flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)self0
{
  iDCopy = iD;
  replyCopy = reply;
  sessionIDCopy = sessionID;
  flowIDCopy = flowID;
  sIDCopy = sID;
  dCopy = d;
  sharesCopy = shares;
  cuttlefishXPCWrapper = [(CKKSCuttlefishAdapter *)self cuttlefishXPCWrapper];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000AB2FC;
  v26[3] = &unk_1003365F8;
  v27 = iDCopy;
  v28 = replyCopy;
  v24 = iDCopy;
  v25 = replyCopy;
  [cuttlefishXPCWrapper fetchRecoverableTLKSharesWithSpecificUser:sharesCopy peerID:dCopy altDSID:sIDCopy flowID:flowIDCopy deviceSessionID:sessionIDCopy canSendMetrics:metrics reply:v26];
}

- (void)fetchPCSIdentityByKey:(id)key pcsservices:(id)pcsservices reply:(id)reply
{
  pcsservicesCopy = pcsservices;
  replyCopy = reply;
  keyCopy = key;
  cuttlefishXPCWrapper = [(CKKSCuttlefishAdapter *)self cuttlefishXPCWrapper];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AB60C;
  v14[3] = &unk_100336710;
  v15 = pcsservicesCopy;
  v16 = replyCopy;
  v12 = pcsservicesCopy;
  v13 = replyCopy;
  [cuttlefishXPCWrapper fetchPCSIdentityByPublicKeyWithSpecificUser:keyCopy pcsservices:v12 reply:v14];
}

- (void)fetchCurrentItem:(id)item items:(id)items reply:(id)reply
{
  itemsCopy = items;
  replyCopy = reply;
  itemCopy = item;
  cuttlefishXPCWrapper = [(CKKSCuttlefishAdapter *)self cuttlefishXPCWrapper];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AB868;
  v14[3] = &unk_100336710;
  v15 = itemsCopy;
  v16 = replyCopy;
  v12 = itemsCopy;
  v13 = replyCopy;
  [cuttlefishXPCWrapper fetchCurrentItemWithSpecificUser:itemCopy items:v12 reply:v14];
}

- (CKKSCuttlefishAdapter)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CKKSCuttlefishAdapter;
  v5 = [(CKKSCuttlefishAdapter *)&v9 init];
  if (v5)
  {
    v6 = [[CuttlefishXPCWrapper alloc] initWithCuttlefishXPCConnection:connectionCopy];
    cuttlefishXPCWrapper = v5->_cuttlefishXPCWrapper;
    v5->_cuttlefishXPCWrapper = v6;
  }

  return v5;
}

@end