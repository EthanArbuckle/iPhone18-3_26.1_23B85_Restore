@interface CLHRRecoveryInputHRData
- (CLHRRecoveryInputHRData)initWithCoder:(id)coder;
- (CLHRRecoveryInputHRData)initWithHRRecoveryInputHR:(const HRRecoveryInputHR *)r;
- (CLHRRecoveryInputHRData)initWithRecordId:(unint64_t)id startTime:(double)time hr:(double)hr hrConfidence:(double)confidence;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLHRRecoveryInputHRData

- (CLHRRecoveryInputHRData)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CLHRRecoveryInputHRData;
  v4 = [(CLHRRecoveryInputHRData *)&v9 init];
  if (v4)
  {
    v4->_recordId = [coder decodeInt64ForKey:@"recordId"];
    [coder decodeDoubleForKey:@"startTime"];
    v4->_startTime = v5;
    [coder decodeDoubleForKey:@"mets"];
    v4->_hr = v6;
    [coder decodeDoubleForKey:@"grade"];
    v4->_hrConfidence = v7;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt64:self->_recordId forKey:@"recordId"];
  [coder encodeDouble:@"startTime" forKey:self->_startTime];
  [coder encodeDouble:@"mets" forKey:self->_hr];
  hrConfidence = self->_hrConfidence;

  [coder encodeDouble:@"grade" forKey:hrConfidence];
}

- (CLHRRecoveryInputHRData)initWithRecordId:(unint64_t)id startTime:(double)time hr:(double)hr hrConfidence:(double)confidence
{
  v11.receiver = self;
  v11.super_class = CLHRRecoveryInputHRData;
  result = [(CLHRRecoveryInputHRData *)&v11 init];
  if (result)
  {
    result->_recordId = id;
    result->_startTime = time;
    result->_hr = hr;
    result->_hrConfidence = confidence;
  }

  return result;
}

- (CLHRRecoveryInputHRData)initWithHRRecoveryInputHR:(const HRRecoveryInputHR *)r
{
  v5.receiver = self;
  v5.super_class = CLHRRecoveryInputHRData;
  result = [(CLHRRecoveryInputHRData *)&v5 init];
  if (result)
  {
    result->_recordId = r->var0;
    result->_startTime = r->var1;
    result->_hr = r->var2;
    result->_hrConfidence = r->var3;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  recordId = [(CLHRRecoveryInputHRData *)self recordId];
  [(CLHRRecoveryInputHRData *)self startTime];
  v7 = v6;
  [(CLHRRecoveryInputHRData *)self hr];
  v9 = v8;
  [(CLHRRecoveryInputHRData *)self hrConfidence];
  return [NSString stringWithFormat:@"%@, <recordId %llu, startTime %f, hr %f, hrConfidence %f>", v4, recordId, v7, v9, v10];
}

@end