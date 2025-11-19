@interface CKKSCKRecordHolder
- (BOOL)matchesCKRecord:(id)a3;
- (CKKSCKRecordHolder)initWithCKRecord:(id)a3 contextID:(id)a4;
- (CKKSCKRecordHolder)initWithCKRecordType:(id)a3 encodedCKRecord:(id)a4 contextID:(id)a5 zoneID:(id)a6;
- (CKRecord)storedCKRecord;
- (id)CKRecordName;
- (id)CKRecordWithZoneID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)updateCKRecord:(id)a3 zoneID:(id)a4;
- (void)setEncodedCKRecord:(id)a3;
- (void)setFromCKRecord:(id)a3;
- (void)setStoredCKRecord:(id)a3;
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
      v8 = [(CKRecord *)v7 recordID];
      v9 = [v8 zoneID];
      v10 = [(CKKSCKRecordHolder *)self zoneID];
      v11 = [v9 isEqual:v10];

      if ((v11 & 1) == 0)
      {
        v12 = [(CKKSCKRecordHolder *)self zoneID];
        v13 = [v12 zoneName];
        v14 = sub_100019104(@"ckks", v13);

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = [(CKKSCKRecordHolder *)self zoneID];
          v16 = [(CKRecord *)v7 recordID];
          v17 = [v16 zoneID];
          v21 = 138412546;
          v22 = v15;
          v23 = 2112;
          v24 = v17;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = CKKSCKRecordHolder;
  v4 = [(CKKSSQLDatabaseObject *)&v10 copyWithZone:a3];
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

- (BOOL)matchesCKRecord:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"%@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)setFromCKRecord:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"%@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (id)updateCKRecord:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
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

- (id)CKRecordWithZoneID:(id)a3
{
  v4 = a3;
  v5 = [CKRecordID alloc];
  v6 = [(CKKSCKRecordHolder *)self CKRecordName];
  v7 = [v5 initWithRecordName:v6 zoneID:v4];

  v8 = [(CKKSCKRecordHolder *)self encodedCKRecord];

  if (v8)
  {
    v9 = [(CKKSCKRecordHolder *)self storedCKRecord];
  }

  else
  {
    v10 = [CKRecord alloc];
    v11 = [(CKKSCKRecordHolder *)self ckRecordType];
    v9 = [v10 initWithRecordType:v11 recordID:v7];
  }

  v12 = [v9 copy];
  v13 = [(CKKSCKRecordHolder *)self updateCKRecord:v9 zoneID:v4];
  if (([v9 isEqual:v12] & 1) == 0)
  {
    [(CKKSCKRecordHolder *)self setStoredCKRecord:v9];
  }

  return v9;
}

- (void)setEncodedCKRecord:(id)a3
{
  objc_storeStrong(&self->_encodedCKRecord, a3);
  v6 = a3;
  storedCKRecord = self->_storedCKRecord;
  self->_storedCKRecord = 0;
}

- (void)setStoredCKRecord:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (v4)
  {
    v5 = [v4 recordID];
    v6 = [v5 zoneID];
    [(CKKSCKRecordHolder *)self setZoneID:v6];

    v7 = [v16 recordType];
    [(CKKSCKRecordHolder *)self setCkRecordType:v7];

    v8 = objc_autoreleasePoolPush();
    v9 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v16 encodeWithCoder:v9];
    v10 = [v9 encodedData];
    encodedCKRecord = self->_encodedCKRecord;
    self->_encodedCKRecord = v10;

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

- (CKKSCKRecordHolder)initWithCKRecordType:(id)a3 encodedCKRecord:(id)a4 contextID:(id)a5 zoneID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = CKKSCKRecordHolder;
  v15 = [(CKKSCKRecordHolder *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contextID, a5);
    objc_storeStrong(&v16->_zoneID, a6);
    objc_storeStrong(&v16->_ckRecordType, a3);
    objc_storeStrong(&v16->_encodedCKRecord, a4);
    storedCKRecord = v16->_storedCKRecord;
    v16->_storedCKRecord = 0;
  }

  return v16;
}

- (CKKSCKRecordHolder)initWithCKRecord:(id)a3 contextID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CKKSCKRecordHolder;
  v8 = [(CKKSCKRecordHolder *)&v13 init];
  if (v8)
  {
    v9 = [v6 recordID];
    v10 = [v9 zoneID];
    zoneID = v8->_zoneID;
    v8->_zoneID = v10;

    objc_storeStrong(&v8->_contextID, a4);
    [(CKKSCKRecordHolder *)v8 setFromCKRecord:v6];
  }

  return v8;
}

@end