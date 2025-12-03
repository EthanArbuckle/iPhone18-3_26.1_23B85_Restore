@interface SRDeletionRecord
+ (id)tombstoneWithStartTime:(double)time endTime:(double)endTime extendedReason:(int64_t)reason originatingDeviceIdentifier:(id)identifier;
+ (id)tombstoneWithStartTime:(double)time endTime:(double)endTime reason:(int64_t)reason originatingDeviceIdentifier:(id)identifier;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (SRDeletionReason)reason;
- (SRDeletionRecord)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRDeletionRecord)initWithCoder:(id)coder;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRDeletionRecord

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071A80 = os_log_create("com.apple.SensorKit", "DeletionRecord");
  }
}

+ (id)tombstoneWithStartTime:(double)time endTime:(double)endTime reason:(int64_t)reason originatingDeviceIdentifier:(id)identifier
{
  v10 = objc_alloc_init(SRDeletionRecord);
  [(SRDeletionRecord *)v10 setStartTime:time];
  [(SRDeletionRecord *)v10 setEndTime:endTime];
  [(SRDeletionRecord *)v10 setReason:reason];
  [(SRDeletionRecord *)v10 set_originatingDeviceIdentifier:identifier];

  return v10;
}

+ (id)tombstoneWithStartTime:(double)time endTime:(double)endTime extendedReason:(int64_t)reason originatingDeviceIdentifier:(id)identifier
{
  v7 = [SRDeletionRecord tombstoneWithStartTime:4 endTime:identifier reason:time originatingDeviceIdentifier:endTime];
  [v7 setExtendedReason:reason];
  return v7;
}

- (void)dealloc
{
  [(SRDeletionRecord *)self set_originatingDeviceIdentifier:0];
  v3.receiver = self;
  v3.super_class = SRDeletionRecord;
  [(SRDeletionRecord *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
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
  [equal startTime];
  if (v6 != v7)
  {
    return 0;
  }

  [(SRDeletionRecord *)self endTime];
  v9 = v8;
  [equal endTime];
  if (v9 != v10)
  {
    return 0;
  }

  reason = [(SRDeletionRecord *)self reason];
  if (reason != [equal reason])
  {
    return 0;
  }

  extendedReason = [(SRDeletionRecord *)self extendedReason];
  return extendedReason == [equal extendedReason];
}

- (SRDeletionRecord)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SRDeletionRecord;
  v4 = [(SRDeletionRecord *)&v8 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"SRDeletionRecordStartKey"];
    v4->_startTime = v5;
    [coder decodeDoubleForKey:@"SRDeletionRecordEndKey"];
    v4->_endTime = v6;
    -[SRDeletionRecord setReason:](v4, "setReason:", [coder decodeIntegerForKey:@"SRDeletionRecordReasonKey"]);
    -[SRDeletionRecord setExtendedReason:](v4, "setExtendedReason:", [coder decodeIntegerForKey:@"SRDeletionRecordExtendedReasonKey"]);
    -[SRDeletionRecord set_originatingDeviceIdentifier:](v4, "set_originatingDeviceIdentifier:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SRDeletionRecordOriginatingDeviceIdKey"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"SRDeletionRecordStartKey" forKey:self->_startTime];
  [coder encodeDouble:@"SRDeletionRecordEndKey" forKey:self->_endTime];
  [coder encodeInteger:-[SRDeletionRecord reason](self forKey:{"reason"), @"SRDeletionRecordReasonKey"}];
  [coder encodeInteger:-[SRDeletionRecord extendedReason](self forKey:{"extendedReason"), @"SRDeletionRecordExtendedReasonKey"}];
  _originatingDeviceIdentifier = [(SRDeletionRecord *)self _originatingDeviceIdentifier];

  [coder encodeObject:_originatingDeviceIdentifier forKey:@"SRDeletionRecordOriginatingDeviceIdKey"];
}

- (SRDeletionRecord)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v13.receiver = self;
  v13.super_class = SRDeletionRecord;
  result = [(SRDeletionRecord *)&v13 init:representation];
  if (result)
  {
    v7 = result;
    v12 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v12];
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
    selfCopy = self;
    dispatch_once(&qword_100071A90, &stru_100061148);
    self = selfCopy;
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