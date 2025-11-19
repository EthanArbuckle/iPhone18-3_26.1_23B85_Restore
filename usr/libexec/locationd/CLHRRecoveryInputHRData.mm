@interface CLHRRecoveryInputHRData
- (CLHRRecoveryInputHRData)initWithCoder:(id)a3;
- (CLHRRecoveryInputHRData)initWithHRRecoveryInputHR:(const HRRecoveryInputHR *)a3;
- (CLHRRecoveryInputHRData)initWithRecordId:(unint64_t)a3 startTime:(double)a4 hr:(double)a5 hrConfidence:(double)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLHRRecoveryInputHRData

- (CLHRRecoveryInputHRData)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLHRRecoveryInputHRData;
  v4 = [(CLHRRecoveryInputHRData *)&v9 init];
  if (v4)
  {
    v4->_recordId = [a3 decodeInt64ForKey:@"recordId"];
    [a3 decodeDoubleForKey:@"startTime"];
    v4->_startTime = v5;
    [a3 decodeDoubleForKey:@"mets"];
    v4->_hr = v6;
    [a3 decodeDoubleForKey:@"grade"];
    v4->_hrConfidence = v7;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_recordId forKey:@"recordId"];
  [a3 encodeDouble:@"startTime" forKey:self->_startTime];
  [a3 encodeDouble:@"mets" forKey:self->_hr];
  hrConfidence = self->_hrConfidence;

  [a3 encodeDouble:@"grade" forKey:hrConfidence];
}

- (CLHRRecoveryInputHRData)initWithRecordId:(unint64_t)a3 startTime:(double)a4 hr:(double)a5 hrConfidence:(double)a6
{
  v11.receiver = self;
  v11.super_class = CLHRRecoveryInputHRData;
  result = [(CLHRRecoveryInputHRData *)&v11 init];
  if (result)
  {
    result->_recordId = a3;
    result->_startTime = a4;
    result->_hr = a5;
    result->_hrConfidence = a6;
  }

  return result;
}

- (CLHRRecoveryInputHRData)initWithHRRecoveryInputHR:(const HRRecoveryInputHR *)a3
{
  v5.receiver = self;
  v5.super_class = CLHRRecoveryInputHRData;
  result = [(CLHRRecoveryInputHRData *)&v5 init];
  if (result)
  {
    result->_recordId = a3->var0;
    result->_startTime = a3->var1;
    result->_hr = a3->var2;
    result->_hrConfidence = a3->var3;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CLHRRecoveryInputHRData *)self recordId];
  [(CLHRRecoveryInputHRData *)self startTime];
  v7 = v6;
  [(CLHRRecoveryInputHRData *)self hr];
  v9 = v8;
  [(CLHRRecoveryInputHRData *)self hrConfidence];
  return [NSString stringWithFormat:@"%@, <recordId %llu, startTime %f, hr %f, hrConfidence %f>", v4, v5, v7, v9, v10];
}

@end