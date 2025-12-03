@interface CKKSTLKShareRecord
+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync error:(id *)error;
+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d resync:(BOOL)resync error:(id *)error;
+ (id)allFor:(id)for contextID:(id)d keyUUID:(id)iD zoneID:(id)zoneID error:(id *)error;
+ (id)allForUUID:(id)d contextID:(id)iD zoneID:(id)zoneID error:(id *)error;
+ (id)allInZone:(id)zone contextID:(id)d error:(id *)error;
+ (id)countsWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fromDatabase:(id)database contextID:(id)d receiverPeerID:(id)iD senderPeerID:(id)peerID zoneID:(id)zoneID error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)share:(id)share contextID:(id)d as:(id)as to:(id)to epoch:(int64_t)epoch poisoned:(int64_t)poisoned error:(id *)error;
+ (id)tryFromDatabase:(id)database contextID:(id)d receiverPeerID:(id)iD senderPeerID:(id)peerID zoneID:(id)zoneID error:(id *)error;
+ (id)tryFromDatabaseFromCKRecordID:(id)d contextID:(id)iD error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesCKRecord:(id)record;
- (BOOL)signatureVerifiesWithPeerSet:(id)set error:(id *)error;
- (BOOL)verifySignature:(id)signature verifyingPeer:(id)peer error:(id *)error;
- (CKKSTLKShareRecord)initWithShare:(id)share contextID:(id)d zoneID:(id)iD encodedCKRecord:(id)record;
- (NSData)signature;
- (NSData)wrappedTLK;
- (NSString)senderPeerID;
- (NSString)tlkUUID;
- (id)CKRecordName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataForSigning;
- (id)description;
- (id)init:(id)init contextID:(id)d sender:(id)sender receiver:(id)receiver curve:(int64_t)curve version:(unint64_t)version epoch:(int64_t)epoch poisoned:(int64_t)self0 zoneID:(id)self1 encodedCKRecord:(id)self2;
- (id)initForKey:(id)key contextID:(id)d senderPeerID:(id)iD recieverPeerID:(id)peerID receiverEncPublicKeySPKI:(id)i curve:(int64_t)curve version:(unint64_t)version epoch:(int64_t)self0 poisoned:(int64_t)self1 wrappedKey:(id)self2 signature:(id)self3 zoneID:(id)self4 encodedCKRecord:(id)self5;
- (id)recoverTLK:(id)k trustedPeers:(id)peers error:(id *)error;
- (id)signRecord:(id)record error:(id *)error;
- (id)sqlValues;
- (id)updateCKRecord:(id)record zoneID:(id)d;
- (id)whereClauseToFindSelf;
- (int64_t)epoch;
- (int64_t)poisoned;
- (void)setFromCKRecord:(id)record;
@end

@implementation CKKSTLKShareRecord

- (id)sqlValues
{
  v44[0] = @"uuid";
  share = [(CKKSTLKShareRecord *)self share];
  tlkUUID = [share tlkUUID];
  v45[0] = tlkUUID;
  v44[1] = @"contextID";
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v45[1] = contextID;
  v44[2] = @"senderpeerid";
  share2 = [(CKKSTLKShareRecord *)self share];
  senderPeerID = [share2 senderPeerID];
  v45[2] = senderPeerID;
  v44[3] = @"recvpeerid";
  share3 = [(CKKSTLKShareRecord *)self share];
  receiverPeerID = [share3 receiverPeerID];
  v45[3] = receiverPeerID;
  v44[4] = @"recvpubenckey";
  share4 = [(CKKSTLKShareRecord *)self share];
  receiverPublicEncryptionKeySPKI = [share4 receiverPublicEncryptionKeySPKI];
  v5 = [receiverPublicEncryptionKeySPKI base64EncodedStringWithOptions:0];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = +[NSNull null];
  }

  v7 = v6;

  v36 = v7;
  v45[4] = v7;
  v44[5] = @"poisoned";
  share5 = [(CKKSTLKShareRecord *)self share];
  v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [share5 poisoned]);
  v45[5] = v34;
  v44[6] = @"epoch";
  share6 = [(CKKSTLKShareRecord *)self share];
  v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [share6 epoch]);
  v45[6] = v32;
  v44[7] = @"curve";
  share7 = [(CKKSTLKShareRecord *)self share];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [share7 curve]);
  v45[7] = v9;
  v44[8] = @"version";
  share8 = [(CKKSTLKShareRecord *)self share];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [share8 version]);
  v45[8] = v11;
  v44[9] = @"wrappedkey";
  share9 = [(CKKSTLKShareRecord *)self share];
  wrappedTLK = [share9 wrappedTLK];
  v14 = [wrappedTLK base64EncodedStringWithOptions:0];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v45[9] = v16;
  v44[10] = @"signature";
  share10 = [(CKKSTLKShareRecord *)self share];
  signature = [share10 signature];
  v19 = [signature base64EncodedStringWithOptions:0];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = +[NSNull null];
  }

  v21 = v20;

  v45[10] = v21;
  v44[11] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];

  if (zoneName)
  {
    v24 = zoneName;
  }

  else
  {
    v24 = +[NSNull null];
  }

  v25 = v24;

  v45[11] = v25;
  v44[12] = @"ckrecord";
  encodedCKRecord = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v27 = [encodedCKRecord base64EncodedStringWithOptions:0];

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = +[NSNull null];
  }

  v29 = v28;

  v45[12] = v29;
  v30 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:13];

  return v30;
}

- (id)whereClauseToFindSelf
{
  v14[0] = @"uuid";
  share = [(CKKSTLKShareRecord *)self share];
  tlkUUID = [share tlkUUID];
  v15[0] = tlkUUID;
  v14[1] = @"contextID";
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v15[1] = contextID;
  v14[2] = @"senderpeerid";
  share2 = [(CKKSTLKShareRecord *)self share];
  senderPeerID = [share2 senderPeerID];
  v15[2] = senderPeerID;
  v14[3] = @"recvpeerid";
  share3 = [(CKKSTLKShareRecord *)self share];
  receiverPeerID = [share3 receiverPeerID];
  v15[3] = receiverPeerID;
  v14[4] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];
  v15[4] = zoneName;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];

  return v12;
}

- (void)setFromCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v5 = [recordType isEqualToString:@"tlkshare"];

  if ((v5 & 1) == 0)
  {
    recordType2 = [recordCopy recordType];
    v26 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordType2, @"devicestate"];
    v27 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v26 userInfo:0];
    v28 = v27;

    objc_exception_throw(v27);
  }

  selfCopy = self;
  [(CKKSCKRecordHolder *)self setStoredCKRecord:recordCopy];
  v6 = [recordCopy objectForKeyedSubscript:@"receiverPublicEncryptionKey"];
  if (v6 && (v7 = v6, +[NSNull null](NSNull, "null"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, (v9 & 1) == 0))
  {
    v10 = [NSData alloc];
    v11 = [recordCopy objectForKeyedSubscript:@"receiverPublicEncryptionKey"];
    v39 = [v10 initWithBase64EncodedString:v11 options:0];
  }

  else
  {
    v39 = 0;
  }

  v12 = [CKKSTLKShare alloc];
  v38 = [recordCopy objectForKeyedSubscript:@"parentkeyref"];
  recordID = [v38 recordID];
  recordName = [recordID recordName];
  v14 = [recordCopy objectForKeyedSubscript:@"sender"];
  v33 = [recordCopy objectForKeyedSubscript:@"receiver"];
  v36 = [recordCopy objectForKeyedSubscript:@"curve"];
  longValue = [v36 longValue];
  v35 = [recordCopy objectForKeyedSubscript:@"version"];
  longValue2 = [v35 longValue];
  v34 = [recordCopy objectForKeyedSubscript:@"epoch"];
  longValue3 = [v34 longValue];
  v32 = [recordCopy objectForKeyedSubscript:@"poisoned"];
  longValue4 = [v32 longValue];
  v17 = [NSData alloc];
  v29 = [recordCopy objectForKeyedSubscript:@"wrappedkey"];
  v18 = [v17 initWithBase64EncodedString:v29 options:0];
  v19 = [NSData alloc];
  v20 = [recordCopy objectForKeyedSubscript:@"signature"];
  v21 = [v19 initWithBase64EncodedString:v20 options:0];
  recordID2 = [recordCopy recordID];
  zoneID = [recordID2 zoneID];
  v24 = [(CKKSTLKShare *)v12 initForKey:recordName senderPeerID:v14 recieverPeerID:v33 receiverEncPublicKeySPKI:v39 curve:longValue version:longValue2 epoch:longValue3 poisoned:longValue4 wrappedKey:v18 signature:v21 zoneID:zoneID];
  [(CKKSTLKShareRecord *)selfCopy setShare:v24];
}

- (BOOL)matchesCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v6 = [recordType isEqualToString:@"tlkshare"];

  if (!v6)
  {
    goto LABEL_4;
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  cKRecordName = [(CKKSTLKShareRecord *)self CKRecordName];
  v10 = [recordName isEqualToString:cKRecordName];

  if (v10)
  {
    v11 = [CKKSTLKShareRecord alloc];
    contextID = [(CKKSCKRecordHolder *)self contextID];
    v13 = [(CKKSCKRecordHolder *)v11 initWithCKRecord:recordCopy contextID:contextID];

    v14 = [(CKKSTLKShareRecord *)self isEqual:v13];
  }

  else
  {
LABEL_4:
    v14 = 0;
  }

  return v14;
}

- (id)updateCKRecord:(id)record zoneID:(id)d
{
  recordCopy = record;
  dCopy = d;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  cKRecordName = [(CKKSTLKShareRecord *)self CKRecordName];
  v11 = [recordName isEqualToString:cKRecordName];

  if ((v11 & 1) == 0)
  {
    recordID2 = [recordCopy recordID];
    recordName2 = [recordID2 recordName];
    cKRecordName2 = [(CKKSTLKShareRecord *)self CKRecordName];
    v45 = [NSString stringWithFormat:@"CKRecord name (%@) was not %@", recordName2, cKRecordName2];
    v46 = [NSException exceptionWithName:@"WrongCKRecordNameException" reason:v45 userInfo:0];
    v47 = v46;

    goto LABEL_8;
  }

  recordType = [recordCopy recordType];
  v13 = [recordType isEqualToString:@"tlkshare"];

  if ((v13 & 1) == 0)
  {
    recordID2 = [recordCopy recordType];
    v48 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordID2, @"tlkshare"];
    v46 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v48 userInfo:0];
    v49 = v46;

LABEL_8:
    objc_exception_throw(v46);
  }

  share = [(CKKSTLKShareRecord *)self share];
  senderPeerID = [share senderPeerID];
  [recordCopy setObject:senderPeerID forKeyedSubscript:@"sender"];

  share2 = [(CKKSTLKShareRecord *)self share];
  receiverPeerID = [share2 receiverPeerID];
  [recordCopy setObject:receiverPeerID forKeyedSubscript:@"receiver"];

  share3 = [(CKKSTLKShareRecord *)self share];
  receiverPublicEncryptionKeySPKI = [share3 receiverPublicEncryptionKeySPKI];
  v20 = [receiverPublicEncryptionKeySPKI base64EncodedStringWithOptions:0];
  [recordCopy setObject:v20 forKeyedSubscript:@"receiverPublicEncryptionKey"];

  share4 = [(CKKSTLKShareRecord *)self share];
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [share4 curve]);
  [recordCopy setObject:v22 forKeyedSubscript:@"curve"];

  share5 = [(CKKSTLKShareRecord *)self share];
  v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [share5 version]);
  [recordCopy setObject:v24 forKeyedSubscript:@"version"];

  share6 = [(CKKSTLKShareRecord *)self share];
  v26 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [share6 epoch]);
  [recordCopy setObject:v26 forKeyedSubscript:@"epoch"];

  share7 = [(CKKSTLKShareRecord *)self share];
  v28 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [share7 poisoned]);
  [recordCopy setObject:v28 forKeyedSubscript:@"poisoned"];

  v29 = [CKReference alloc];
  v30 = [CKRecordID alloc];
  share8 = [(CKKSTLKShareRecord *)self share];
  tlkUUID = [share8 tlkUUID];
  v33 = [v30 initWithRecordName:tlkUUID zoneID:dCopy];
  v34 = [v29 initWithRecordID:v33 action:CKReferenceActionValidate];
  [recordCopy setObject:v34 forKeyedSubscript:@"parentkeyref"];

  share9 = [(CKKSTLKShareRecord *)self share];
  wrappedTLK = [share9 wrappedTLK];
  v37 = [wrappedTLK base64EncodedStringWithOptions:0];
  [recordCopy setObject:v37 forKeyedSubscript:@"wrappedkey"];

  share10 = [(CKKSTLKShareRecord *)self share];
  signature = [share10 signature];
  v40 = [signature base64EncodedStringWithOptions:0];
  [recordCopy setObject:v40 forKeyedSubscript:@"signature"];

  return recordCopy;
}

- (id)CKRecordName
{
  share = [(CKKSTLKShareRecord *)self share];
  tlkUUID = [share tlkUUID];
  share2 = [(CKKSTLKShareRecord *)self share];
  receiverPeerID = [share2 receiverPeerID];
  share3 = [(CKKSTLKShareRecord *)self share];
  senderPeerID = [share3 senderPeerID];
  v9 = [NSString stringWithFormat:@"tlkshare-%@::%@::%@", tlkUUID, receiverPeerID, senderPeerID];

  return v9;
}

- (id)recoverTLK:(id)k trustedPeers:(id)peers error:(id *)error
{
  peersCopy = peers;
  kCopy = k;
  share = [(CKKSTLKShareRecord *)self share];
  storedCKRecord = [(CKKSCKRecordHolder *)self storedCKRecord];
  v12 = [share recoverTLK:kCopy trustedPeers:peersCopy ckrecord:storedCKRecord error:error];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    share = [(CKKSTLKShareRecord *)self share];
    share2 = [v5 share];

    v8 = [share isEqual:share2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  share = [(CKKSTLKShareRecord *)self share];
  v7 = [share copyWithZone:zone];
  contextID = [(CKKSCKRecordHolder *)self contextID];
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  encodedCKRecord = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v11 = [v5 initWithShare:v7 contextID:contextID zoneID:zoneID encodedCKRecord:encodedCKRecord];

  return v11;
}

- (BOOL)signatureVerifiesWithPeerSet:(id)set error:(id *)error
{
  setCopy = set;
  share = [(CKKSTLKShareRecord *)self share];
  storedCKRecord = [(CKKSCKRecordHolder *)self storedCKRecord];
  LOBYTE(error) = [share signatureVerifiesWithPeerSet:setCopy ckrecord:storedCKRecord error:error];

  return error;
}

- (BOOL)verifySignature:(id)signature verifyingPeer:(id)peer error:(id *)error
{
  peerCopy = peer;
  signatureCopy = signature;
  share = [(CKKSTLKShareRecord *)self share];
  storedCKRecord = [(CKKSCKRecordHolder *)self storedCKRecord];
  LOBYTE(error) = [share verifySignature:signatureCopy verifyingPeer:peerCopy ckrecord:storedCKRecord error:error];

  return error;
}

- (id)signRecord:(id)record error:(id *)error
{
  recordCopy = record;
  share = [(CKKSTLKShareRecord *)self share];
  storedCKRecord = [(CKKSCKRecordHolder *)self storedCKRecord];
  v9 = [share signRecord:recordCopy ckrecord:storedCKRecord error:error];

  return v9;
}

- (id)dataForSigning
{
  share = [(CKKSTLKShareRecord *)self share];
  storedCKRecord = [(CKKSCKRecordHolder *)self storedCKRecord];
  v5 = [share dataForSigning:storedCKRecord];

  return v5;
}

- (NSData)signature
{
  share = [(CKKSTLKShareRecord *)self share];
  signature = [share signature];

  return signature;
}

- (NSData)wrappedTLK
{
  share = [(CKKSTLKShareRecord *)self share];
  wrappedTLK = [share wrappedTLK];

  return wrappedTLK;
}

- (int64_t)poisoned
{
  share = [(CKKSTLKShareRecord *)self share];
  poisoned = [share poisoned];

  return poisoned;
}

- (int64_t)epoch
{
  share = [(CKKSTLKShareRecord *)self share];
  epoch = [share epoch];

  return epoch;
}

- (NSString)senderPeerID
{
  share = [(CKKSTLKShareRecord *)self share];
  senderPeerID = [share senderPeerID];

  return senderPeerID;
}

- (NSString)tlkUUID
{
  share = [(CKKSTLKShareRecord *)self share];
  tlkUUID = [share tlkUUID];

  return tlkUUID;
}

- (id)description
{
  contextID = [(CKKSCKRecordHolder *)self contextID];
  share = [(CKKSTLKShareRecord *)self share];
  tlkUUID = [share tlkUUID];
  share2 = [(CKKSTLKShareRecord *)self share];
  receiverPeerID = [share2 receiverPeerID];
  share3 = [(CKKSTLKShareRecord *)self share];
  senderPeerID = [share3 senderPeerID];
  storedCKRecord = [(CKKSCKRecordHolder *)self storedCKRecord];
  modificationDate = [storedCKRecord modificationDate];
  v12 = [NSString stringWithFormat:@"<CKKSTLKShare[%@](%@): recv:%@ send:%@ mod:%@>", contextID, tlkUUID, receiverPeerID, senderPeerID, modificationDate];

  return v12;
}

- (id)initForKey:(id)key contextID:(id)d senderPeerID:(id)iD recieverPeerID:(id)peerID receiverEncPublicKeySPKI:(id)i curve:(int64_t)curve version:(unint64_t)version epoch:(int64_t)self0 poisoned:(int64_t)self1 wrappedKey:(id)self2 signature:(id)self3 zoneID:(id)self4 encodedCKRecord:(id)self5
{
  keyCopy = key;
  iDCopy = iD;
  peerIDCopy = peerID;
  iCopy = i;
  wrappedKeyCopy = wrappedKey;
  signatureCopy = signature;
  zoneIDCopy = zoneID;
  v32.receiver = self;
  v32.super_class = CKKSTLKShareRecord;
  v27 = [(CKKSCKRecordHolder *)&v32 initWithCKRecordType:@"tlkshare" encodedCKRecord:record contextID:d zoneID:zoneIDCopy];
  if (v27)
  {
    v28 = [[CKKSTLKShare alloc] initForKey:keyCopy senderPeerID:iDCopy recieverPeerID:peerIDCopy receiverEncPublicKeySPKI:iCopy curve:curve version:version epoch:epoch poisoned:poisoned wrappedKey:wrappedKeyCopy signature:signatureCopy zoneID:zoneIDCopy];
    share = v27->_share;
    v27->_share = v28;
  }

  return v27;
}

- (id)init:(id)init contextID:(id)d sender:(id)sender receiver:(id)receiver curve:(int64_t)curve version:(unint64_t)version epoch:(int64_t)epoch poisoned:(int64_t)self0 zoneID:(id)self1 encodedCKRecord:(id)self2
{
  initCopy = init;
  senderCopy = sender;
  receiverCopy = receiver;
  iDCopy = iD;
  v26.receiver = self;
  v26.super_class = CKKSTLKShareRecord;
  v22 = [(CKKSCKRecordHolder *)&v26 initWithCKRecordType:@"tlkshare" encodedCKRecord:record contextID:d zoneID:iDCopy];
  if (v22)
  {
    v23 = [[CKKSTLKShare alloc] init:initCopy sender:senderCopy receiver:receiverCopy curve:curve version:version epoch:epoch poisoned:poisoned zoneID:iDCopy];
    share = v22->_share;
    v22->_share = v23;
  }

  return v22;
}

- (CKKSTLKShareRecord)initWithShare:(id)share contextID:(id)d zoneID:(id)iD encodedCKRecord:(id)record
{
  shareCopy = share;
  v15.receiver = self;
  v15.super_class = CKKSTLKShareRecord;
  v12 = [(CKKSCKRecordHolder *)&v15 initWithCKRecordType:@"tlkshare" encodedCKRecord:record contextID:d zoneID:iD];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_share, share);
  }

  return v13;
}

+ (id)countsWithContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1001D3B64;
  v22 = sub_1001D3B74;
  v23 = 0;
  sqlTable = [objc_opt_class() sqlTable];
  v25[0] = dCopy;
  v24[0] = @"contextID";
  v24[1] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v11 = zoneName;
  if (zoneName)
  {
    v12 = zoneName;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  v25[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D3B7C;
  v17[3] = &unk_100344498;
  v17[4] = &v18;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v14 columns:&off_1003659D0 groupBy:0 orderBy:0 limit:-1 processRow:v17 error:error];

  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v15;
}

+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d resync:(BOOL)resync error:(id *)error
{
  deletedCopy = deleted;
  dCopy = d;
  zoneID = [(__CFString *)deletedCopy zoneID];
  zoneName = [zoneID zoneName];
  v12 = sub_100019104(@"ckksshare", zoneName);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v24 = @"tlkshare";
    v25 = 2112;
    v26 = deletedCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CloudKit notification: deleted tlk share record(%@): %@", buf, 0x16u);
  }

  v22 = 0;
  v13 = [CKKSTLKShareRecord tryFromDatabaseFromCKRecordID:deletedCopy contextID:dCopy error:&v22];

  v14 = v22;
  v21 = v14;
  [v13 deleteFromDatabase:&v21];
  v15 = v21;

  if (v15)
  {
    zoneID2 = [(__CFString *)deletedCopy zoneID];
    zoneName2 = [zoneID2 zoneName];
    v18 = sub_100019104(@"ckksshare", zoneName2);

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = deletedCopy;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CK notification: Couldn't delete deleted TLKShare: %@ %@", buf, 0x16u);
    }

    if (error)
    {
      v19 = v15;
      *error = v15;
    }
  }

  return v15 == 0;
}

+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync error:(id *)error
{
  changedCopy = changed;
  dCopy = d;
  v10 = [(CKKSCKRecordHolder *)[CKKSTLKShareRecord alloc] initWithCKRecord:changedCopy contextID:dCopy];

  v19 = 0;
  v11 = [(CKKSSQLDatabaseObject *)v10 saveToDatabase:&v19];
  v12 = v19;
  if (v12)
  {
    v11 = 0;
  }

  if ((v11 & 1) == 0)
  {
    recordID = [changedCopy recordID];
    zoneID = [recordID zoneID];
    zoneName = [zoneID zoneName];
    v16 = sub_100019104(@"ckksshare", zoneName);

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Couldn't save new TLK share to database: %@ %@", buf, 0x16u);
    }

    if (error)
    {
      v17 = v12;
      *error = v12;
    }
  }

  return v11;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v4 = [CKRecordZoneID alloc];
  v5 = [rowCopy objectForKeyedSubscript:@"ckzone"];
  asString = [v5 asString];
  v34 = [v4 initWithZoneName:asString ownerName:CKCurrentUserDefaultName];

  v7 = [rowCopy objectForKeyedSubscript:@"curve"];
  asNSInteger = [v7 asNSInteger];

  v8 = [rowCopy objectForKeyedSubscript:@"version"];
  asNSInteger2 = [v8 asNSInteger];

  v10 = [CKKSTLKShareRecord alloc];
  v32 = [rowCopy objectForKeyedSubscript:@"uuid"];
  asString2 = [v32 asString];
  v31 = [rowCopy objectForKeyedSubscript:@"contextID"];
  asString3 = [v31 asString];
  v28 = [rowCopy objectForKeyedSubscript:@"senderpeerid"];
  asString4 = [v28 asString];
  v27 = [rowCopy objectForKeyedSubscript:@"recvpeerid"];
  asString5 = [v27 asString];
  v26 = [rowCopy objectForKeyedSubscript:@"recvpubenckey"];
  asBase64DecodedData = [v26 asBase64DecodedData];
  v24 = [rowCopy objectForKeyedSubscript:@"epoch"];
  asNSInteger3 = [v24 asNSInteger];
  v21 = [rowCopy objectForKeyedSubscript:@"poisoned"];
  asNSInteger4 = [v21 asNSInteger];
  v13 = [rowCopy objectForKeyedSubscript:@"wrappedkey"];
  asBase64DecodedData2 = [v13 asBase64DecodedData];
  v15 = [rowCopy objectForKeyedSubscript:@"signature"];
  asBase64DecodedData3 = [v15 asBase64DecodedData];
  v17 = [rowCopy objectForKeyedSubscript:@"ckrecord"];

  asBase64DecodedData4 = [v17 asBase64DecodedData];
  v30 = [(CKKSTLKShareRecord *)v10 initForKey:asString2 contextID:asString3 senderPeerID:asString4 recieverPeerID:asString5 receiverEncPublicKeySPKI:asBase64DecodedData curve:asNSInteger version:asNSInteger2 epoch:asNSInteger3 poisoned:asNSInteger4 wrappedKey:asBase64DecodedData2 signature:asBase64DecodedData3 zoneID:v34 encodedCKRecord:asBase64DecodedData4];

  return v30;
}

+ (id)tryFromDatabaseFromCKRecordID:(id)d contextID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v60 = 0;
  v10 = [NSRegularExpression regularExpressionWithPattern:@"^tlkshare-(?<uuid>[0-9A-Fa-f-]*)::(?<receiver>.*)::(?<sender>.*)$" options:1 error:&v60];
  v11 = v60;
  v12 = v11;
  if (!v11)
  {
    recordName = [dCopy recordName];
    recordName2 = [dCopy recordName];
    v17 = [v10 firstMatchInString:recordName options:0 range:{0, objc_msgSend(recordName2, "length")}];

    if (v17)
    {
      selfCopy = self;
      recordName3 = [dCopy recordName];
      v19 = [v17 rangeWithName:@"uuid"];
      v21 = [recordName3 substringWithRange:{v19, v20}];

      recordName4 = [dCopy recordName];
      v23 = [v17 rangeWithName:@"receiver"];
      v25 = [recordName4 substringWithRange:{v23, v24}];

      recordName5 = [dCopy recordName];
      v58 = v17;
      v27 = [v17 rangeWithName:@"sender"];
      v29 = [recordName5 substringWithRange:{v27, v28}];

      v61[0] = @"uuid";
      v30 = v21;
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = +[NSNull null];
      }

      v35 = v32;

      v55 = v35;
      v62[0] = v35;
      v61[1] = @"contextID";
      v36 = iDCopy;
      v37 = v36;
      v59 = iDCopy;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = +[NSNull null];
      }

      v39 = v38;

      v62[1] = v39;
      v61[2] = @"recvpeerid";
      v40 = v25;
      v34 = v40;
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = +[NSNull null];
      }

      v42 = v41;
      v54 = v39;
      v56 = v31;

      v62[2] = v42;
      v61[3] = @"senderpeerid";
      v43 = v29;
      v44 = v43;
      v53 = v42;
      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = +[NSNull null];
      }

      v46 = v45;

      v62[3] = v46;
      v61[4] = @"ckzone";
      zoneID = [dCopy zoneID];
      zoneName = [zoneID zoneName];

      if (zoneName)
      {
        v49 = zoneName;
      }

      else
      {
        v49 = +[NSNull null];
      }

      v50 = v49;

      v62[4] = v50;
      v51 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:5];
      v14 = [selfCopy tryFromDatabaseWhere:v51 error:error];

      v17 = v58;
      recordName6 = v56;
    }

    else
    {
      if (!error)
      {
        v14 = 0;
        goto LABEL_25;
      }

      v59 = iDCopy;
      recordName6 = [dCopy recordName];
      v34 = [NSString stringWithFormat:@"Couldn't parse '%@' as a TLKShare ID", recordName6];
      [NSError errorWithDomain:@"CKKSErrorDomain" code:22 description:v34];
      *error = v14 = 0;
    }

    iDCopy = v59;
LABEL_25:

    goto LABEL_26;
  }

  if (error)
  {
    v13 = v11;
    v14 = 0;
    *error = v12;
  }

  else
  {
    v14 = 0;
  }

LABEL_26:

  return v14;
}

+ (id)allInZone:(id)zone contextID:(id)d error:(id *)error
{
  zoneCopy = zone;
  v20[0] = @"contextID";
  dCopy = d;
  v10 = dCopy;
  if (dCopy)
  {
    v11 = dCopy;
  }

  else
  {
    v11 = +[NSNull null];
  }

  v12 = v11;

  v20[1] = @"ckzone";
  v21[0] = v12;
  zoneName = [zoneCopy zoneName];
  v14 = zoneName;
  if (zoneName)
  {
    v15 = zoneName;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v21[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [self allWhere:v17 error:error];

  return v18;
}

+ (id)allForUUID:(id)d contextID:(id)iD zoneID:(id)zoneID error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  zoneIDCopy = zoneID;
  v28[0] = @"uuid";
  v13 = dCopy;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v29[0] = v16;
  v28[1] = @"contextID";
  v17 = iDCopy;
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = +[NSNull null];
  }

  v20 = v19;

  v29[1] = v20;
  v28[2] = @"ckzone";
  zoneName = [zoneIDCopy zoneName];
  v22 = zoneName;
  if (zoneName)
  {
    v23 = zoneName;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v29[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v26 = [self allWhere:v25 error:error];

  return v26;
}

+ (id)allFor:(id)for contextID:(id)d keyUUID:(id)iD zoneID:(id)zoneID error:(id *)error
{
  forCopy = for;
  dCopy = d;
  iDCopy = iD;
  zoneIDCopy = zoneID;
  v31[0] = @"recvpeerid";
  v16 = forCopy;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = +[NSNull null];
  }

  v19 = v18;

  v32[0] = v19;
  v31[1] = @"contextID";
  v20 = dCopy;
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = +[NSNull null];
  }

  v23 = v22;

  v32[1] = v23;
  v32[2] = iDCopy;
  v31[2] = @"uuid";
  v31[3] = @"ckzone";
  zoneName = [zoneIDCopy zoneName];
  v25 = zoneName;
  if (zoneName)
  {
    v26 = zoneName;
  }

  else
  {
    v26 = +[NSNull null];
  }

  v27 = v26;

  v32[3] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
  v29 = [self allWhere:v28 error:error];

  return v29;
}

+ (id)tryFromDatabase:(id)database contextID:(id)d receiverPeerID:(id)iD senderPeerID:(id)peerID zoneID:(id)zoneID error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  iDCopy = iD;
  peerIDCopy = peerID;
  zoneIDCopy = zoneID;
  v45[0] = @"uuid";
  v17 = databaseCopy;
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = +[NSNull null];
  }

  v20 = v19;

  v46[0] = v20;
  v45[1] = @"contextID";
  v21 = dCopy;
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v46[1] = v24;
  v45[2] = @"recvpeerid";
  v25 = iDCopy;
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = +[NSNull null];
  }

  v28 = v27;
  v41 = v24;

  v46[2] = v28;
  v45[3] = @"senderpeerid";
  v29 = peerIDCopy;
  v30 = v29;
  v42 = v20;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = +[NSNull null];
  }

  v32 = v31;

  v46[3] = v32;
  v45[4] = @"ckzone";
  v33 = zoneIDCopy;
  zoneName = [zoneIDCopy zoneName];
  v35 = zoneName;
  if (zoneName)
  {
    v36 = zoneName;
  }

  else
  {
    v36 = +[NSNull null];
  }

  v37 = v36;

  v46[4] = v37;
  v38 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
  v39 = [self tryFromDatabaseWhere:v38 error:error];

  return v39;
}

+ (id)fromDatabase:(id)database contextID:(id)d receiverPeerID:(id)iD senderPeerID:(id)peerID zoneID:(id)zoneID error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  iDCopy = iD;
  peerIDCopy = peerID;
  zoneIDCopy = zoneID;
  v45[0] = @"uuid";
  v17 = databaseCopy;
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = +[NSNull null];
  }

  v20 = v19;

  v46[0] = v20;
  v45[1] = @"contextID";
  v21 = dCopy;
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v46[1] = v24;
  v45[2] = @"recvpeerid";
  v25 = iDCopy;
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = +[NSNull null];
  }

  v28 = v27;
  v41 = v24;

  v46[2] = v28;
  v45[3] = @"senderpeerid";
  v29 = peerIDCopy;
  v30 = v29;
  v42 = v20;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = +[NSNull null];
  }

  v32 = v31;

  v46[3] = v32;
  v45[4] = @"ckzone";
  v33 = zoneIDCopy;
  zoneName = [zoneIDCopy zoneName];
  v35 = zoneName;
  if (zoneName)
  {
    v36 = zoneName;
  }

  else
  {
    v36 = +[NSNull null];
  }

  v37 = v36;

  v46[4] = v37;
  v38 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
  v39 = [self fromDatabaseWhere:v38 error:error];

  return v39;
}

+ (id)share:(id)share contextID:(id)d as:(id)as to:(id)to epoch:(int64_t)epoch poisoned:(int64_t)poisoned error:(id *)error
{
  shareCopy = share;
  dCopy = d;
  asCopy = as;
  toCopy = to;
  uuid = [shareCopy uuid];
  peerID = [toCopy peerID];
  peerID2 = [asCopy peerID];
  zoneID = [shareCopy zoneID];
  v35 = 0;
  v20 = dCopy;
  v34 = [CKKSTLKShareRecord tryFromDatabase:uuid contextID:dCopy receiverPeerID:peerID senderPeerID:peerID2 zoneID:zoneID error:&v35];
  v21 = v35;

  if (v21)
  {
    zoneID2 = [shareCopy zoneID];
    zoneName = [zoneID2 zoneName];
    v24 = sub_100019104(@"ckksshare", zoneName);

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v37 = shareCopy;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "couldn't load old share for %@: %@", buf, 0x16u);
    }

    if (error)
    {
      v25 = v21;
      v26 = 0;
      *error = v21;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v27 = [CKKSTLKShare share:shareCopy as:asCopy to:toCopy epoch:epoch poisoned:poisoned error:error];
    if (v27)
    {
      v28 = [CKKSTLKShareRecord alloc];
      zoneID3 = [shareCopy zoneID];
      encodedCKRecord = [v34 encodedCKRecord];
      v26 = [(CKKSTLKShareRecord *)v28 initWithShare:v27 contextID:v20 zoneID:zoneID3 encodedCKRecord:encodedCKRecord];
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

@end