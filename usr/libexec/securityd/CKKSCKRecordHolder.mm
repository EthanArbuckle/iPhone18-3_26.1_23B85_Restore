@interface CKKSCKRecordHolder
- (BOOL)matchesCKRecord:(id)record;
- (CKKSCKRecordHolder)initWithCKRecord:(id)record contextID:(id)d;
- (CKKSCKRecordHolder)initWithCKRecordType:(id)type encodedCKRecord:(id)record contextID:(id)d zoneID:(id)iD;
- (CKRecord)storedCKRecord;
- (id)CKRecordName;
- (id)CKRecordWithZoneID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)updateCKRecord:(id)record zoneID:(id)d;
- (void)setEncodedCKRecord:(id)record;
- (void)setFromCKRecord:(id)record;
- (void)setStoredCKRecord:(id)record;
@end

@implementation CKKSCKRecordHolder

- (CKRecord)storedCKRecord
{
  storedCKRecord = self->_storedCKRecord;
  if (storedCKRecord)
  {
    v4 = [storedCKRecord copy];
  }

  else if (self->_encodedCKRecord)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:self->_encodedCKRecord error:0];
    v7 = [[CKRecord alloc] initWithCoder:v6];
    [v6 finishDecoding];
    if (v7)
    {
      recordID = [(CKRecord *)v7 recordID];
      zoneID = [recordID zoneID];
      zoneID2 = [(CKKSCKRecordHolder *)self zoneID];
      v11 = [zoneID isEqual:zoneID2];

      if ((v11 & 1) == 0)
      {
        zoneID3 = [(CKKSCKRecordHolder *)self zoneID];
        zoneName = [zoneID3 zoneName];
        v14 = sub_100019104(@"ckks", zoneName);

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          zoneID4 = [(CKKSCKRecordHolder *)self zoneID];
          recordID2 = [(CKRecord *)v7 recordID];
          zoneID5 = [recordID2 zoneID];
          v21 = 138412546;
          v22 = zoneID4;
          v23 = 2112;
          v24 = zoneID5;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "mismatching zone ids in a single record: %@ and %@", &v21, 0x16u);
        }
      }
    }

    v18 = self->_storedCKRecord;
    self->_storedCKRecord = v7;
    v19 = v7;

    v4 = [(CKRecord *)v19 copy];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = CKKSCKRecordHolder;
  v4 = [(CKKSSQLDatabaseObject *)&v10 copyWithZone:zone];
  objc_storeStrong(v4 + 4, self->_contextID);
  objc_storeStrong(v4 + 5, self->_zoneID);
  objc_storeStrong(v4 + 6, self->_ckRecordType);
  v5 = [(NSData *)self->_encodedCKRecord copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [self->_storedCKRecord copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

- (BOOL)matchesCKRecord:(id)record
{
  recordCopy = record;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"%@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)setFromCKRecord:(id)record
{
  recordCopy = record;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"%@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (id)updateCKRecord:(id)record zoneID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  v11 = [NSString stringWithFormat:@"%@ must override %@", v9, v10];
  v12 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (id)CKRecordName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"%@ must override %@", v4, v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)CKRecordWithZoneID:(id)d
{
  dCopy = d;
  v5 = [CKRecordID alloc];
  cKRecordName = [(CKKSCKRecordHolder *)self CKRecordName];
  v7 = [v5 initWithRecordName:cKRecordName zoneID:dCopy];

  encodedCKRecord = [(CKKSCKRecordHolder *)self encodedCKRecord];

  if (encodedCKRecord)
  {
    storedCKRecord = [(CKKSCKRecordHolder *)self storedCKRecord];
  }

  else
  {
    v10 = [CKRecord alloc];
    ckRecordType = [(CKKSCKRecordHolder *)self ckRecordType];
    storedCKRecord = [v10 initWithRecordType:ckRecordType recordID:v7];
  }

  v12 = [storedCKRecord copy];
  v13 = [(CKKSCKRecordHolder *)self updateCKRecord:storedCKRecord zoneID:dCopy];
  if (([storedCKRecord isEqual:v12] & 1) == 0)
  {
    [(CKKSCKRecordHolder *)self setStoredCKRecord:storedCKRecord];
  }

  return storedCKRecord;
}

- (void)setEncodedCKRecord:(id)record
{
  objc_storeStrong(&self->_encodedCKRecord, record);
  recordCopy = record;
  storedCKRecord = self->_storedCKRecord;
  self->_storedCKRecord = 0;
}

- (void)setStoredCKRecord:(id)record
{
  recordCopy = record;
  v16 = recordCopy;
  if (recordCopy)
  {
    recordID = [recordCopy recordID];
    zoneID = [recordID zoneID];
    [(CKKSCKRecordHolder *)self setZoneID:zoneID];

    recordType = [v16 recordType];
    [(CKKSCKRecordHolder *)self setCkRecordType:recordType];

    v8 = objc_autoreleasePoolPush();
    v9 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v16 encodeWithCoder:v9];
    encodedData = [v9 encodedData];
    encodedCKRecord = self->_encodedCKRecord;
    self->_encodedCKRecord = encodedData;

    v12 = [v16 copy];
    storedCKRecord = self->_storedCKRecord;
    self->_storedCKRecord = v12;

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v14 = self->_encodedCKRecord;
    self->_encodedCKRecord = 0;

    v15 = self->_storedCKRecord;
    self->_storedCKRecord = 0;
  }
}

- (CKKSCKRecordHolder)initWithCKRecordType:(id)type encodedCKRecord:(id)record contextID:(id)d zoneID:(id)iD
{
  typeCopy = type;
  recordCopy = record;
  dCopy = d;
  iDCopy = iD;
  v19.receiver = self;
  v19.super_class = CKKSCKRecordHolder;
  v15 = [(CKKSCKRecordHolder *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contextID, d);
    objc_storeStrong(&v16->_zoneID, iD);
    objc_storeStrong(&v16->_ckRecordType, type);
    objc_storeStrong(&v16->_encodedCKRecord, record);
    storedCKRecord = v16->_storedCKRecord;
    v16->_storedCKRecord = 0;
  }

  return v16;
}

- (CKKSCKRecordHolder)initWithCKRecord:(id)record contextID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v13.receiver = self;
  v13.super_class = CKKSCKRecordHolder;
  v8 = [(CKKSCKRecordHolder *)&v13 init];
  if (v8)
  {
    recordID = [recordCopy recordID];
    zoneID = [recordID zoneID];
    zoneID = v8->_zoneID;
    v8->_zoneID = zoneID;

    objc_storeStrong(&v8->_contextID, d);
    [(CKKSCKRecordHolder *)v8 setFromCKRecord:recordCopy];
  }

  return v8;
}

@end