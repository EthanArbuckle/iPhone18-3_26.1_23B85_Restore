@interface SRDeletionRecord
+ (id)tombstoneWithStartTime:(double)a3 endTime:(double)a4 extendedReason:(int64_t)a5 originatingDeviceIdentifier:(id)a6;
+ (id)tombstoneWithStartTime:(double)a3 endTime:(double)a4 reason:(int64_t)a5 originatingDeviceIdentifier:(id)a6;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (SRDeletionReason)reason;
- (SRDeletionRecord)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRDeletionRecord)initWithCoder:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRDeletionRecord

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071A80 = os_log_create("com.apple.SensorKit", "DeletionRecord");
  }
}

+ (id)tombstoneWithStartTime:(double)a3 endTime:(double)a4 reason:(int64_t)a5 originatingDeviceIdentifier:(id)a6
{
  v10 = objc_alloc_init(SRDeletionRecord);
  [(SRDeletionRecord *)v10 setStartTime:a3];
  [(SRDeletionRecord *)v10 setEndTime:a4];
  [(SRDeletionRecord *)v10 setReason:a5];
  [(SRDeletionRecord *)v10 set_originatingDeviceIdentifier:a6];

  return v10;
}

+ (id)tombstoneWithStartTime:(double)a3 endTime:(double)a4 extendedReason:(int64_t)a5 originatingDeviceIdentifier:(id)a6
{
  v7 = [SRDeletionRecord tombstoneWithStartTime:4 endTime:a6 reason:a3 originatingDeviceIdentifier:a4];
  [v7 setExtendedReason:a5];
  return v7;
}

- (void)dealloc
{
  [(SRDeletionRecord *)self set_originatingDeviceIdentifier:0];
  v3.receiver = self;
  v3.super_class = SRDeletionRecord;
  [(SRDeletionRecord *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(SRDeletionRecord *)self startTime];
  v6 = v5;
  [a3 startTime];
  if (v6 != v7)
  {
    return 0;
  }

  [(SRDeletionRecord *)self endTime];
  v9 = v8;
  [a3 endTime];
  if (v9 != v10)
  {
    return 0;
  }

  v11 = [(SRDeletionRecord *)self reason];
  if (v11 != [a3 reason])
  {
    return 0;
  }

  v12 = [(SRDeletionRecord *)self extendedReason];
  return v12 == [a3 extendedReason];
}

- (SRDeletionRecord)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SRDeletionRecord;
  v4 = [(SRDeletionRecord *)&v8 init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"SRDeletionRecordStartKey"];
    v4->_startTime = v5;
    [a3 decodeDoubleForKey:@"SRDeletionRecordEndKey"];
    v4->_endTime = v6;
    -[SRDeletionRecord setReason:](v4, "setReason:", [a3 decodeIntegerForKey:@"SRDeletionRecordReasonKey"]);
    -[SRDeletionRecord setExtendedReason:](v4, "setExtendedReason:", [a3 decodeIntegerForKey:@"SRDeletionRecordExtendedReasonKey"]);
    -[SRDeletionRecord set_originatingDeviceIdentifier:](v4, "set_originatingDeviceIdentifier:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"SRDeletionRecordOriginatingDeviceIdKey"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeDouble:@"SRDeletionRecordStartKey" forKey:self->_startTime];
  [a3 encodeDouble:@"SRDeletionRecordEndKey" forKey:self->_endTime];
  [a3 encodeInteger:-[SRDeletionRecord reason](self forKey:{"reason"), @"SRDeletionRecordReasonKey"}];
  [a3 encodeInteger:-[SRDeletionRecord extendedReason](self forKey:{"extendedReason"), @"SRDeletionRecordExtendedReasonKey"}];
  v5 = [(SRDeletionRecord *)self _originatingDeviceIdentifier];

  [a3 encodeObject:v5 forKey:@"SRDeletionRecordOriginatingDeviceIdKey"];
}

- (SRDeletionRecord)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v13.receiver = self;
  v13.super_class = SRDeletionRecord;
  result = [(SRDeletionRecord *)&v13 init:a3];
  if (result)
  {
    v7 = result;
    v12 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v12];
    v9 = v12;
    if (v12)
    {
      v10 = qword_100071A80;
      if (os_log_type_enabled(qword_100071A80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to unarchive data because %{public}@", buf, 0xCu);
      }

      return 0;
    }

    else
    {
      v11 = v8;

      return v11;
    }
  }

  return result;
}

- (id)sr_dictionaryRepresentation
{
  v4[0] = @"SRDeletionRecordStartKey";
  [(SRDeletionRecord *)self startTime];
  v5[0] = [NSNumber numberWithDouble:?];
  v4[1] = @"SRDeletionRecordEndKey";
  [(SRDeletionRecord *)self endTime];
  v5[1] = [NSNumber numberWithDouble:?];
  v4[2] = @"SRDeletionRecordReasonKey";
  v5[2] = [NSNumber numberWithInteger:[(SRDeletionRecord *)self reason]];
  v4[3] = @"SRDeletionRecordExtendedReasonKey";
  v5[3] = [NSNumber numberWithInteger:[(SRDeletionRecord *)self extendedReason]];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];
}

- (SRDeletionReason)reason
{
  v3 = atomic_load(&self->_reason);
  if (v3 != SRDeletionReasonSystemInitiated)
  {
    return v3;
  }

  if (qword_100071A90 != -1)
  {
    v5 = self;
    dispatch_once(&qword_100071A90, &stru_100061148);
    self = v5;
    if (byte_100071A88 == 1)
    {
      goto LABEL_4;
    }

    return 4;
  }

  if (byte_100071A88 != 1)
  {
    return 4;
  }

LABEL_4:

  return [(SRDeletionRecord *)self extendedReason];
}

@end