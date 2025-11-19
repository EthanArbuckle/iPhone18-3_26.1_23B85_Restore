@interface CKKSTLKShareRecord
+ (BOOL)intransactionRecordChanged:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6;
+ (BOOL)intransactionRecordDeleted:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6;
+ (id)allFor:(id)a3 contextID:(id)a4 keyUUID:(id)a5 zoneID:(id)a6 error:(id *)a7;
+ (id)allForUUID:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)allInZone:(id)a3 contextID:(id)a4 error:(id *)a5;
+ (id)countsWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)fromDatabase:(id)a3 contextID:(id)a4 receiverPeerID:(id)a5 senderPeerID:(id)a6 zoneID:(id)a7 error:(id *)a8;
+ (id)fromDatabaseRow:(id)a3;
+ (id)share:(id)a3 contextID:(id)a4 as:(id)a5 to:(id)a6 epoch:(int64_t)a7 poisoned:(int64_t)a8 error:(id *)a9;
+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 receiverPeerID:(id)a5 senderPeerID:(id)a6 zoneID:(id)a7 error:(id *)a8;
+ (id)tryFromDatabaseFromCKRecordID:(id)a3 contextID:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesCKRecord:(id)a3;
- (BOOL)signatureVerifiesWithPeerSet:(id)a3 error:(id *)a4;
- (BOOL)verifySignature:(id)a3 verifyingPeer:(id)a4 error:(id *)a5;
- (CKKSTLKShareRecord)initWithShare:(id)a3 contextID:(id)a4 zoneID:(id)a5 encodedCKRecord:(id)a6;
- (NSData)signature;
- (NSData)wrappedTLK;
- (NSString)senderPeerID;
- (NSString)tlkUUID;
- (id)CKRecordName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataForSigning;
- (id)description;
- (id)init:(id)a3 contextID:(id)a4 sender:(id)a5 receiver:(id)a6 curve:(int64_t)a7 version:(unint64_t)a8 epoch:(int64_t)a9 poisoned:(int64_t)a10 zoneID:(id)a11 encodedCKRecord:(id)a12;
- (id)initForKey:(id)a3 contextID:(id)a4 senderPeerID:(id)a5 recieverPeerID:(id)a6 receiverEncPublicKeySPKI:(id)a7 curve:(int64_t)a8 version:(unint64_t)a9 epoch:(int64_t)a10 poisoned:(int64_t)a11 wrappedKey:(id)a12 signature:(id)a13 zoneID:(id)a14 encodedCKRecord:(id)a15;
- (id)recoverTLK:(id)a3 trustedPeers:(id)a4 error:(id *)a5;
- (id)signRecord:(id)a3 error:(id *)a4;
- (id)sqlValues;
- (id)updateCKRecord:(id)a3 zoneID:(id)a4;
- (id)whereClauseToFindSelf;
- (int64_t)epoch;
- (int64_t)poisoned;
- (void)setFromCKRecord:(id)a3;
@end

@implementation CKKSTLKShareRecord

- (id)sqlValues
{
  v44[0] = @"uuid";
  v43 = [(CKKSTLKShareRecord *)self share];
  v42 = [v43 tlkUUID];
  v45[0] = v42;
  v44[1] = @"contextID";
  v41 = [(CKKSCKRecordHolder *)self contextID];
  v45[1] = v41;
  v44[2] = @"senderpeerid";
  v40 = [(CKKSTLKShareRecord *)self share];
  v39 = [v40 senderPeerID];
  v45[2] = v39;
  v44[3] = @"recvpeerid";
  v38 = [(CKKSTLKShareRecord *)self share];
  v37 = [v38 receiverPeerID];
  v45[3] = v37;
  v44[4] = @"recvpubenckey";
  v3 = [(CKKSTLKShareRecord *)self share];
  v4 = [v3 receiverPublicEncryptionKeySPKI];
  v5 = [v4 base64EncodedStringWithOptions:0];

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
  v35 = [(CKKSTLKShareRecord *)self share];
  v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v35 poisoned]);
  v45[5] = v34;
  v44[6] = @"epoch";
  v33 = [(CKKSTLKShareRecord *)self share];
  v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v33 epoch]);
  v45[6] = v32;
  v44[7] = @"curve";
  v8 = [(CKKSTLKShareRecord *)self share];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v8 curve]);
  v45[7] = v9;
  v44[8] = @"version";
  v10 = [(CKKSTLKShareRecord *)self share];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v10 version]);
  v45[8] = v11;
  v44[9] = @"wrappedkey";
  v12 = [(CKKSTLKShareRecord *)self share];
  v13 = [v12 wrappedTLK];
  v14 = [v13 base64EncodedStringWithOptions:0];

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
  v17 = [(CKKSTLKShareRecord *)self share];
  v18 = [v17 signature];
  v19 = [v18 base64EncodedStringWithOptions:0];

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
  v22 = [(CKKSCKRecordHolder *)self zoneID];
  v23 = [v22 zoneName];

  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = +[NSNull null];
  }

  v25 = v24;

  v45[11] = v25;
  v44[12] = @"ckrecord";
  v26 = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v27 = [v26 base64EncodedStringWithOptions:0];

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
  v3 = [(CKKSTLKShareRecord *)self share];
  v4 = [v3 tlkUUID];
  v15[0] = v4;
  v14[1] = @"contextID";
  v5 = [(CKKSCKRecordHolder *)self contextID];
  v15[1] = v5;
  v14[2] = @"senderpeerid";
  v6 = [(CKKSTLKShareRecord *)self share];
  v7 = [v6 senderPeerID];
  v15[2] = v7;
  v14[3] = @"recvpeerid";
  v8 = [(CKKSTLKShareRecord *)self share];
  v9 = [v8 receiverPeerID];
  v15[3] = v9;
  v14[4] = @"ckzone";
  v10 = [(CKKSCKRecordHolder *)self zoneID];
  v11 = [v10 zoneName];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];

  return v12;
}

- (void)setFromCKRecord:(id)a3
{
  v41 = a3;
  v4 = [v41 recordType];
  v5 = [v4 isEqualToString:@"tlkshare"];

  if ((v5 & 1) == 0)
  {
    v25 = [v41 recordType];
    v26 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", v25, @"devicestate"];
    v27 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v26 userInfo:0];
    v28 = v27;

    objc_exception_throw(v27);
  }

  v40 = self;
  [(CKKSCKRecordHolder *)self setStoredCKRecord:v41];
  v6 = [v41 objectForKeyedSubscript:@"receiverPublicEncryptionKey"];
  if (v6 && (v7 = v6, +[NSNull null](NSNull, "null"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, (v9 & 1) == 0))
  {
    v10 = [NSData alloc];
    v11 = [v41 objectForKeyedSubscript:@"receiverPublicEncryptionKey"];
    v39 = [v10 initWithBase64EncodedString:v11 options:0];
  }

  else
  {
    v39 = 0;
  }

  v12 = [CKKSTLKShare alloc];
  v38 = [v41 objectForKeyedSubscript:@"parentkeyref"];
  v37 = [v38 recordID];
  v13 = [v37 recordName];
  v14 = [v41 objectForKeyedSubscript:@"sender"];
  v33 = [v41 objectForKeyedSubscript:@"receiver"];
  v36 = [v41 objectForKeyedSubscript:@"curve"];
  v31 = [v36 longValue];
  v35 = [v41 objectForKeyedSubscript:@"version"];
  v30 = [v35 longValue];
  v34 = [v41 objectForKeyedSubscript:@"epoch"];
  v15 = [v34 longValue];
  v32 = [v41 objectForKeyedSubscript:@"poisoned"];
  v16 = [v32 longValue];
  v17 = [NSData alloc];
  v29 = [v41 objectForKeyedSubscript:@"wrappedkey"];
  v18 = [v17 initWithBase64EncodedString:v29 options:0];
  v19 = [NSData alloc];
  v20 = [v41 objectForKeyedSubscript:@"signature"];
  v21 = [v19 initWithBase64EncodedString:v20 options:0];
  v22 = [v41 recordID];
  v23 = [v22 zoneID];
  v24 = [(CKKSTLKShare *)v12 initForKey:v13 senderPeerID:v14 recieverPeerID:v33 receiverEncPublicKeySPKI:v39 curve:v31 version:v30 epoch:v15 poisoned:v16 wrappedKey:v18 signature:v21 zoneID:v23];
  [(CKKSTLKShareRecord *)v40 setShare:v24];
}

- (BOOL)matchesCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqualToString:@"tlkshare"];

  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [v4 recordID];
  v8 = [v7 recordName];
  v9 = [(CKKSTLKShareRecord *)self CKRecordName];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [CKKSTLKShareRecord alloc];
    v12 = [(CKKSCKRecordHolder *)self contextID];
    v13 = [(CKKSCKRecordHolder *)v11 initWithCKRecord:v4 contextID:v12];

    v14 = [(CKKSTLKShareRecord *)self isEqual:v13];
  }

  else
  {
LABEL_4:
    v14 = 0;
  }

  return v14;
}

- (id)updateCKRecord:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordID];
  v9 = [v8 recordName];
  v10 = [(CKKSTLKShareRecord *)self CKRecordName];
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v42 = [v6 recordID];
    v43 = [v42 recordName];
    v44 = [(CKKSTLKShareRecord *)self CKRecordName];
    v45 = [NSString stringWithFormat:@"CKRecord name (%@) was not %@", v43, v44];
    v46 = [NSException exceptionWithName:@"WrongCKRecordNameException" reason:v45 userInfo:0];
    v47 = v46;

    goto LABEL_8;
  }

  v12 = [v6 recordType];
  v13 = [v12 isEqualToString:@"tlkshare"];

  if ((v13 & 1) == 0)
  {
    v42 = [v6 recordType];
    v48 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", v42, @"tlkshare"];
    v46 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v48 userInfo:0];
    v49 = v46;

LABEL_8:
    objc_exception_throw(v46);
  }

  v14 = [(CKKSTLKShareRecord *)self share];
  v15 = [v14 senderPeerID];
  [v6 setObject:v15 forKeyedSubscript:@"sender"];

  v16 = [(CKKSTLKShareRecord *)self share];
  v17 = [v16 receiverPeerID];
  [v6 setObject:v17 forKeyedSubscript:@"receiver"];

  v18 = [(CKKSTLKShareRecord *)self share];
  v19 = [v18 receiverPublicEncryptionKeySPKI];
  v20 = [v19 base64EncodedStringWithOptions:0];
  [v6 setObject:v20 forKeyedSubscript:@"receiverPublicEncryptionKey"];

  v21 = [(CKKSTLKShareRecord *)self share];
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 curve]);
  [v6 setObject:v22 forKeyedSubscript:@"curve"];

  v23 = [(CKKSTLKShareRecord *)self share];
  v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 version]);
  [v6 setObject:v24 forKeyedSubscript:@"version"];

  v25 = [(CKKSTLKShareRecord *)self share];
  v26 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v25 epoch]);
  [v6 setObject:v26 forKeyedSubscript:@"epoch"];

  v27 = [(CKKSTLKShareRecord *)self share];
  v28 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v27 poisoned]);
  [v6 setObject:v28 forKeyedSubscript:@"poisoned"];

  v29 = [CKReference alloc];
  v30 = [CKRecordID alloc];
  v31 = [(CKKSTLKShareRecord *)self share];
  v32 = [v31 tlkUUID];
  v33 = [v30 initWithRecordName:v32 zoneID:v7];
  v34 = [v29 initWithRecordID:v33 action:CKReferenceActionValidate];
  [v6 setObject:v34 forKeyedSubscript:@"parentkeyref"];

  v35 = [(CKKSTLKShareRecord *)self share];
  v36 = [v35 wrappedTLK];
  v37 = [v36 base64EncodedStringWithOptions:0];
  [v6 setObject:v37 forKeyedSubscript:@"wrappedkey"];

  v38 = [(CKKSTLKShareRecord *)self share];
  v39 = [v38 signature];
  v40 = [v39 base64EncodedStringWithOptions:0];
  [v6 setObject:v40 forKeyedSubscript:@"signature"];

  return v6;
}

- (id)CKRecordName
{
  v3 = [(CKKSTLKShareRecord *)self share];
  v4 = [v3 tlkUUID];
  v5 = [(CKKSTLKShareRecord *)self share];
  v6 = [v5 receiverPeerID];
  v7 = [(CKKSTLKShareRecord *)self share];
  v8 = [v7 senderPeerID];
  v9 = [NSString stringWithFormat:@"tlkshare-%@::%@::%@", v4, v6, v8];

  return v9;
}

- (id)recoverTLK:(id)a3 trustedPeers:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CKKSTLKShareRecord *)self share];
  v11 = [(CKKSCKRecordHolder *)self storedCKRecord];
  v12 = [v10 recoverTLK:v9 trustedPeers:v8 ckrecord:v11 error:a5];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKKSTLKShareRecord *)self share];
    v7 = [v5 share];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(CKKSTLKShareRecord *)self share];
  v7 = [v6 copyWithZone:a3];
  v8 = [(CKKSCKRecordHolder *)self contextID];
  v9 = [(CKKSCKRecordHolder *)self zoneID];
  v10 = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v11 = [v5 initWithShare:v7 contextID:v8 zoneID:v9 encodedCKRecord:v10];

  return v11;
}

- (BOOL)signatureVerifiesWithPeerSet:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSTLKShareRecord *)self share];
  v8 = [(CKKSCKRecordHolder *)self storedCKRecord];
  LOBYTE(a4) = [v7 signatureVerifiesWithPeerSet:v6 ckrecord:v8 error:a4];

  return a4;
}

- (BOOL)verifySignature:(id)a3 verifyingPeer:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CKKSTLKShareRecord *)self share];
  v11 = [(CKKSCKRecordHolder *)self storedCKRecord];
  LOBYTE(a5) = [v10 verifySignature:v9 verifyingPeer:v8 ckrecord:v11 error:a5];

  return a5;
}

- (id)signRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CKKSTLKShareRecord *)self share];
  v8 = [(CKKSCKRecordHolder *)self storedCKRecord];
  v9 = [v7 signRecord:v6 ckrecord:v8 error:a4];

  return v9;
}

- (id)dataForSigning
{
  v3 = [(CKKSTLKShareRecord *)self share];
  v4 = [(CKKSCKRecordHolder *)self storedCKRecord];
  v5 = [v3 dataForSigning:v4];

  return v5;
}

- (NSData)signature
{
  v2 = [(CKKSTLKShareRecord *)self share];
  v3 = [v2 signature];

  return v3;
}

- (NSData)wrappedTLK
{
  v2 = [(CKKSTLKShareRecord *)self share];
  v3 = [v2 wrappedTLK];

  return v3;
}

- (int64_t)poisoned
{
  v2 = [(CKKSTLKShareRecord *)self share];
  v3 = [v2 poisoned];

  return v3;
}

- (int64_t)epoch
{
  v2 = [(CKKSTLKShareRecord *)self share];
  v3 = [v2 epoch];

  return v3;
}

- (NSString)senderPeerID
{
  v2 = [(CKKSTLKShareRecord *)self share];
  v3 = [v2 senderPeerID];

  return v3;
}

- (NSString)tlkUUID
{
  v2 = [(CKKSTLKShareRecord *)self share];
  v3 = [v2 tlkUUID];

  return v3;
}

- (id)description
{
  v3 = [(CKKSCKRecordHolder *)self contextID];
  v4 = [(CKKSTLKShareRecord *)self share];
  v5 = [v4 tlkUUID];
  v6 = [(CKKSTLKShareRecord *)self share];
  v7 = [v6 receiverPeerID];
  v8 = [(CKKSTLKShareRecord *)self share];
  v9 = [v8 senderPeerID];
  v10 = [(CKKSCKRecordHolder *)self storedCKRecord];
  v11 = [v10 modificationDate];
  v12 = [NSString stringWithFormat:@"<CKKSTLKShare[%@](%@): recv:%@ send:%@ mod:%@>", v3, v5, v7, v9, v11];

  return v12;
}

- (id)initForKey:(id)a3 contextID:(id)a4 senderPeerID:(id)a5 recieverPeerID:(id)a6 receiverEncPublicKeySPKI:(id)a7 curve:(int64_t)a8 version:(unint64_t)a9 epoch:(int64_t)a10 poisoned:(int64_t)a11 wrappedKey:(id)a12 signature:(id)a13 zoneID:(id)a14 encodedCKRecord:(id)a15
{
  v20 = a3;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v32.receiver = self;
  v32.super_class = CKKSTLKShareRecord;
  v27 = [(CKKSCKRecordHolder *)&v32 initWithCKRecordType:@"tlkshare" encodedCKRecord:a15 contextID:a4 zoneID:v26];
  if (v27)
  {
    v28 = [[CKKSTLKShare alloc] initForKey:v20 senderPeerID:v21 recieverPeerID:v22 receiverEncPublicKeySPKI:v23 curve:a8 version:a9 epoch:a10 poisoned:a11 wrappedKey:v24 signature:v25 zoneID:v26];
    share = v27->_share;
    v27->_share = v28;
  }

  return v27;
}

- (id)init:(id)a3 contextID:(id)a4 sender:(id)a5 receiver:(id)a6 curve:(int64_t)a7 version:(unint64_t)a8 epoch:(int64_t)a9 poisoned:(int64_t)a10 zoneID:(id)a11 encodedCKRecord:(id)a12
{
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a11;
  v26.receiver = self;
  v26.super_class = CKKSTLKShareRecord;
  v22 = [(CKKSCKRecordHolder *)&v26 initWithCKRecordType:@"tlkshare" encodedCKRecord:a12 contextID:a4 zoneID:v21];
  if (v22)
  {
    v23 = [[CKKSTLKShare alloc] init:v18 sender:v19 receiver:v20 curve:a7 version:a8 epoch:a9 poisoned:a10 zoneID:v21];
    share = v22->_share;
    v22->_share = v23;
  }

  return v22;
}

- (CKKSTLKShareRecord)initWithShare:(id)a3 contextID:(id)a4 zoneID:(id)a5 encodedCKRecord:(id)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = CKKSTLKShareRecord;
  v12 = [(CKKSCKRecordHolder *)&v15 initWithCKRecordType:@"tlkshare" encodedCKRecord:a6 contextID:a4 zoneID:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_share, a3);
  }

  return v13;
}

+ (id)countsWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1001D3B64;
  v22 = sub_1001D3B74;
  v23 = 0;
  v9 = [objc_opt_class() sqlTable];
  v25[0] = v7;
  v24[0] = @"contextID";
  v24[1] = @"ckzone";
  v10 = [v8 zoneName];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
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
  [CKKSSQLDatabaseObject queryDatabaseTable:v9 where:v14 columns:&off_1003659D0 groupBy:0 orderBy:0 limit:-1 processRow:v17 error:a5];

  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v15;
}

+ (BOOL)intransactionRecordDeleted:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [(__CFString *)v8 zoneID];
  v11 = [v10 zoneName];
  v12 = sub_100019104(@"ckksshare", v11);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v24 = @"tlkshare";
    v25 = 2112;
    v26 = v8;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CloudKit notification: deleted tlk share record(%@): %@", buf, 0x16u);
  }

  v22 = 0;
  v13 = [CKKSTLKShareRecord tryFromDatabaseFromCKRecordID:v8 contextID:v9 error:&v22];

  v14 = v22;
  v21 = v14;
  [v13 deleteFromDatabase:&v21];
  v15 = v21;

  if (v15)
  {
    v16 = [(__CFString *)v8 zoneID];
    v17 = [v16 zoneName];
    v18 = sub_100019104(@"ckksshare", v17);

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CK notification: Couldn't delete deleted TLKShare: %@ %@", buf, 0x16u);
    }

    if (a6)
    {
      v19 = v15;
      *a6 = v15;
    }
  }

  return v15 == 0;
}

+ (BOOL)intransactionRecordChanged:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [(CKKSCKRecordHolder *)[CKKSTLKShareRecord alloc] initWithCKRecord:v8 contextID:v9];

  v19 = 0;
  v11 = [(CKKSSQLDatabaseObject *)v10 saveToDatabase:&v19];
  v12 = v19;
  if (v12)
  {
    v11 = 0;
  }

  if ((v11 & 1) == 0)
  {
    v13 = [v8 recordID];
    v14 = [v13 zoneID];
    v15 = [v14 zoneName];
    v16 = sub_100019104(@"ckksshare", v15);

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Couldn't save new TLK share to database: %@ %@", buf, 0x16u);
    }

    if (a6)
    {
      v17 = v12;
      *a6 = v12;
    }
  }

  return v11;
}

+ (id)fromDatabaseRow:(id)a3
{
  v3 = a3;
  v4 = [CKRecordZoneID alloc];
  v5 = [v3 objectForKeyedSubscript:@"ckzone"];
  v6 = [v5 asString];
  v34 = [v4 initWithZoneName:v6 ownerName:CKCurrentUserDefaultName];

  v7 = [v3 objectForKeyedSubscript:@"curve"];
  v29 = [v7 asNSInteger];

  v8 = [v3 objectForKeyedSubscript:@"version"];
  v9 = [v8 asNSInteger];

  v10 = [CKKSTLKShareRecord alloc];
  v32 = [v3 objectForKeyedSubscript:@"uuid"];
  v33 = [v32 asString];
  v31 = [v3 objectForKeyedSubscript:@"contextID"];
  v25 = [v31 asString];
  v28 = [v3 objectForKeyedSubscript:@"senderpeerid"];
  v23 = [v28 asString];
  v27 = [v3 objectForKeyedSubscript:@"recvpeerid"];
  v22 = [v27 asString];
  v26 = [v3 objectForKeyedSubscript:@"recvpubenckey"];
  v20 = [v26 asBase64DecodedData];
  v24 = [v3 objectForKeyedSubscript:@"epoch"];
  v11 = [v24 asNSInteger];
  v21 = [v3 objectForKeyedSubscript:@"poisoned"];
  v12 = [v21 asNSInteger];
  v13 = [v3 objectForKeyedSubscript:@"wrappedkey"];
  v14 = [v13 asBase64DecodedData];
  v15 = [v3 objectForKeyedSubscript:@"signature"];
  v16 = [v15 asBase64DecodedData];
  v17 = [v3 objectForKeyedSubscript:@"ckrecord"];

  v18 = [v17 asBase64DecodedData];
  v30 = [(CKKSTLKShareRecord *)v10 initForKey:v33 contextID:v25 senderPeerID:v23 recieverPeerID:v22 receiverEncPublicKeySPKI:v20 curve:v29 version:v9 epoch:v11 poisoned:v12 wrappedKey:v14 signature:v16 zoneID:v34 encodedCKRecord:v18];

  return v30;
}

+ (id)tryFromDatabaseFromCKRecordID:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v60 = 0;
  v10 = [NSRegularExpression regularExpressionWithPattern:@"^tlkshare-(?<uuid>[0-9A-Fa-f-]*)::(?<receiver>.*)::(?<sender>.*)$" options:1 error:&v60];
  v11 = v60;
  v12 = v11;
  if (!v11)
  {
    v15 = [v8 recordName];
    v16 = [v8 recordName];
    v17 = [v10 firstMatchInString:v15 options:0 range:{0, objc_msgSend(v16, "length")}];

    if (v17)
    {
      v57 = a1;
      v18 = [v8 recordName];
      v19 = [v17 rangeWithName:@"uuid"];
      v21 = [v18 substringWithRange:{v19, v20}];

      v22 = [v8 recordName];
      v23 = [v17 rangeWithName:@"receiver"];
      v25 = [v22 substringWithRange:{v23, v24}];

      v26 = [v8 recordName];
      v58 = v17;
      v27 = [v17 rangeWithName:@"sender"];
      v29 = [v26 substringWithRange:{v27, v28}];

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
      v36 = v9;
      v37 = v36;
      v59 = v9;
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
      v47 = [v8 zoneID];
      v48 = [v47 zoneName];

      if (v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = +[NSNull null];
      }

      v50 = v49;

      v62[4] = v50;
      v51 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:5];
      v14 = [v57 tryFromDatabaseWhere:v51 error:a5];

      v17 = v58;
      v33 = v56;
    }

    else
    {
      if (!a5)
      {
        v14 = 0;
        goto LABEL_25;
      }

      v59 = v9;
      v33 = [v8 recordName];
      v34 = [NSString stringWithFormat:@"Couldn't parse '%@' as a TLKShare ID", v33];
      [NSError errorWithDomain:@"CKKSErrorDomain" code:22 description:v34];
      *a5 = v14 = 0;
    }

    v9 = v59;
LABEL_25:

    goto LABEL_26;
  }

  if (a5)
  {
    v13 = v11;
    v14 = 0;
    *a5 = v12;
  }

  else
  {
    v14 = 0;
  }

LABEL_26:

  return v14;
}

+ (id)allInZone:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v20[0] = @"contextID";
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSNull null];
  }

  v12 = v11;

  v20[1] = @"ckzone";
  v21[0] = v12;
  v13 = [v8 zoneName];
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

  v21[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [a1 allWhere:v17 error:a5];

  return v18;
}

+ (id)allForUUID:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28[0] = @"uuid";
  v13 = v10;
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
  v17 = v11;
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
  v21 = [v12 zoneName];
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

  v29[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v26 = [a1 allWhere:v25 error:a6];

  return v26;
}

+ (id)allFor:(id)a3 contextID:(id)a4 keyUUID:(id)a5 zoneID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v31[0] = @"recvpeerid";
  v16 = v12;
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
  v20 = v13;
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
  v32[2] = v14;
  v31[2] = @"uuid";
  v31[3] = @"ckzone";
  v24 = [v15 zoneName];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = +[NSNull null];
  }

  v27 = v26;

  v32[3] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
  v29 = [a1 allWhere:v28 error:a7];

  return v29;
}

+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 receiverPeerID:(id)a5 senderPeerID:(id)a6 zoneID:(id)a7 error:(id *)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v45[0] = @"uuid";
  v17 = v12;
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
  v21 = v13;
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
  v25 = v14;
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
  v29 = v15;
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
  v33 = v16;
  v34 = [v16 zoneName];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = +[NSNull null];
  }

  v37 = v36;

  v46[4] = v37;
  v38 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
  v39 = [a1 tryFromDatabaseWhere:v38 error:a8];

  return v39;
}

+ (id)fromDatabase:(id)a3 contextID:(id)a4 receiverPeerID:(id)a5 senderPeerID:(id)a6 zoneID:(id)a7 error:(id *)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v45[0] = @"uuid";
  v17 = v12;
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
  v21 = v13;
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
  v25 = v14;
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
  v29 = v15;
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
  v33 = v16;
  v34 = [v16 zoneName];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = +[NSNull null];
  }

  v37 = v36;

  v46[4] = v37;
  v38 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
  v39 = [a1 fromDatabaseWhere:v38 error:a8];

  return v39;
}

+ (id)share:(id)a3 contextID:(id)a4 as:(id)a5 to:(id)a6 epoch:(int64_t)a7 poisoned:(int64_t)a8 error:(id *)a9
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 uuid];
  v17 = [v15 peerID];
  v18 = [v14 peerID];
  v19 = [v12 zoneID];
  v35 = 0;
  v20 = v13;
  v34 = [CKKSTLKShareRecord tryFromDatabase:v16 contextID:v13 receiverPeerID:v17 senderPeerID:v18 zoneID:v19 error:&v35];
  v21 = v35;

  if (v21)
  {
    v22 = [v12 zoneID];
    v23 = [v22 zoneName];
    v24 = sub_100019104(@"ckksshare", v23);

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v37 = v12;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "couldn't load old share for %@: %@", buf, 0x16u);
    }

    if (a9)
    {
      v25 = v21;
      v26 = 0;
      *a9 = v21;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v27 = [CKKSTLKShare share:v12 as:v14 to:v15 epoch:a7 poisoned:a8 error:a9];
    if (v27)
    {
      v28 = [CKKSTLKShareRecord alloc];
      v29 = [v12 zoneID];
      v30 = [v34 encodedCKRecord];
      v26 = [(CKKSTLKShareRecord *)v28 initWithShare:v27 contextID:v20 zoneID:v29 encodedCKRecord:v30];
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

@end