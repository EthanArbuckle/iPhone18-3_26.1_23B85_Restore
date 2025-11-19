@interface CKKSExternalKey
- (id)initWithViewName:(id)a3 tlk:(id)a4;
- (id)makeCKKSKey:(id)a3 contextID:(id)a4 error:(id *)a5;
- (id)makeFakeCKKSClassKey:(id)a3 contextID:(id)a4 zoneiD:(id)a5 error:(id *)a6;
@end

@implementation CKKSExternalKey

- (id)makeFakeCKKSClassKey:(id)a3 contextID:(id)a4 zoneiD:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [CKKSKey alloc];
  v13 = [(CKKSExternalKey *)self keyData];
  v14 = [(CKKSExternalKey *)self uuid];
  v15 = [NSString stringWithFormat:@"%@-fake-%@", v14, v11];
  v16 = [(CKKSExternalKey *)self parentKeyUUID];
  v17 = [(CKKSKey *)v12 initWithWrappedKeyData:v13 contextID:v10 uuid:v15 parentKeyUUID:v16 keyclass:v11 state:@"remote" zoneID:v9 encodedCKRecord:0 currentkey:0];

  return v17;
}

- (id)makeCKKSKey:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [CKKSKey alloc];
  v10 = [(CKKSExternalKey *)self keyData];
  v11 = [(CKKSExternalKey *)self uuid];
  v12 = [(CKKSExternalKey *)self parentKeyUUID];
  if (v12)
  {
    v13 = [(CKKSKey *)v9 initWithWrappedKeyData:v10 contextID:v8 uuid:v11 parentKeyUUID:v12 keyclass:@"tlk" state:@"remote" zoneID:v7 encodedCKRecord:0 currentkey:0];
  }

  else
  {
    v14 = [(CKKSExternalKey *)self uuid];
    v13 = [(CKKSKey *)v9 initWithWrappedKeyData:v10 contextID:v8 uuid:v11 parentKeyUUID:v14 keyclass:@"tlk" state:@"remote" zoneID:v7 encodedCKRecord:0 currentkey:0];
  }

  return v13;
}

- (id)initWithViewName:(id)a3 tlk:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 uuid];
  v9 = [v6 parentKeyUUID];
  v10 = [v6 wrappedKeyData];

  v11 = [(CKKSExternalKey *)self initWithView:v7 uuid:v8 parentTLKUUID:v9 keyData:v10];
  return v11;
}

@end