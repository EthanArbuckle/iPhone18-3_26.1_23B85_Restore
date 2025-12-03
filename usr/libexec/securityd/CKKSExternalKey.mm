@interface CKKSExternalKey
- (id)initWithViewName:(id)name tlk:(id)tlk;
- (id)makeCKKSKey:(id)key contextID:(id)d error:(id *)error;
- (id)makeFakeCKKSClassKey:(id)key contextID:(id)d zoneiD:(id)zoneiD error:(id *)error;
@end

@implementation CKKSExternalKey

- (id)makeFakeCKKSClassKey:(id)key contextID:(id)d zoneiD:(id)zoneiD error:(id *)error
{
  zoneiDCopy = zoneiD;
  dCopy = d;
  keyCopy = key;
  v12 = [CKKSKey alloc];
  keyData = [(CKKSExternalKey *)self keyData];
  uuid = [(CKKSExternalKey *)self uuid];
  keyCopy = [NSString stringWithFormat:@"%@-fake-%@", uuid, keyCopy];
  parentKeyUUID = [(CKKSExternalKey *)self parentKeyUUID];
  v17 = [(CKKSKey *)v12 initWithWrappedKeyData:keyData contextID:dCopy uuid:keyCopy parentKeyUUID:parentKeyUUID keyclass:keyCopy state:@"remote" zoneID:zoneiDCopy encodedCKRecord:0 currentkey:0];

  return v17;
}

- (id)makeCKKSKey:(id)key contextID:(id)d error:(id *)error
{
  keyCopy = key;
  dCopy = d;
  v9 = [CKKSKey alloc];
  keyData = [(CKKSExternalKey *)self keyData];
  uuid = [(CKKSExternalKey *)self uuid];
  parentKeyUUID = [(CKKSExternalKey *)self parentKeyUUID];
  if (parentKeyUUID)
  {
    v13 = [(CKKSKey *)v9 initWithWrappedKeyData:keyData contextID:dCopy uuid:uuid parentKeyUUID:parentKeyUUID keyclass:@"tlk" state:@"remote" zoneID:keyCopy encodedCKRecord:0 currentkey:0];
  }

  else
  {
    uuid2 = [(CKKSExternalKey *)self uuid];
    v13 = [(CKKSKey *)v9 initWithWrappedKeyData:keyData contextID:dCopy uuid:uuid parentKeyUUID:uuid2 keyclass:@"tlk" state:@"remote" zoneID:keyCopy encodedCKRecord:0 currentkey:0];
  }

  return v13;
}

- (id)initWithViewName:(id)name tlk:(id)tlk
{
  tlkCopy = tlk;
  nameCopy = name;
  uuid = [tlkCopy uuid];
  parentKeyUUID = [tlkCopy parentKeyUUID];
  wrappedKeyData = [tlkCopy wrappedKeyData];

  v11 = [(CKKSExternalKey *)self initWithView:nameCopy uuid:uuid parentTLKUUID:parentKeyUUID keyData:wrappedKeyData];
  return v11;
}

@end