@interface HTHangHUDInfo
- (BOOL)isCurrent:(unint64_t)a3 withHUDUpdateInterval:(double)a4;
- (HTHangHUDInfo)initWithCoder:(id)a3;
- (HTHangHUDInfo)initWithHangStartTime:(unint64_t)a3 hangEndTime:(unint64_t)a4 receivedTimestamp:(unint64_t)a5 hangDurationMS:(double)a6 hudString:(id)a7 shortenedBundle:(id)a8 bundleId:(id)a9 timedOut:(BOOL)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HTHangHUDInfo

- (HTHangHUDInfo)initWithHangStartTime:(unint64_t)a3 hangEndTime:(unint64_t)a4 receivedTimestamp:(unint64_t)a5 hangDurationMS:(double)a6 hudString:(id)a7 shortenedBundle:(id)a8 bundleId:(id)a9 timedOut:(BOOL)a10
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v24.receiver = self;
  v24.super_class = HTHangHUDInfo;
  v21 = [(HTHangHUDInfo *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_hangStartTime = a3;
    v21->_hangEndTime = a4;
    v21->_receivedTimestamp = a5;
    v21->_hangDurationMS = a6;
    objc_storeStrong(&v21->_hudString, a7);
    objc_storeStrong(&v22->_shortenedBundle, a8);
    objc_storeStrong(&v22->_bundleId, a9);
    v22->_timedOut = a10;
  }

  return v22;
}

- (HTHangHUDInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"hangStartTime"];
  v6 = [v4 decodeInt64ForKey:@"hangEndTime"];
  v7 = [v4 decodeInt64ForKey:@"receivedTimestamp"];
  [v4 decodeDoubleForKey:@"hangDurationMS"];
  v9 = v8;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hudString"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortenedBundle"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  v13 = [v4 decodeBoolForKey:@"timedOut"];

  LOBYTE(v16) = v13;
  v14 = [(HTHangHUDInfo *)self initWithHangStartTime:v5 hangEndTime:v6 receivedTimestamp:v7 hangDurationMS:v10 hudString:v11 shortenedBundle:v12 bundleId:v9 timedOut:v16];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  hangStartTime = self->_hangStartTime;
  v5 = a3;
  [v5 encodeInt64:hangStartTime forKey:@"hangStartTime"];
  [v5 encodeInt64:self->_hangEndTime forKey:@"hangEndTime"];
  [v5 encodeInt64:self->_receivedTimestamp forKey:@"receivedTimestamp"];
  [v5 encodeDouble:@"hangDurationMS" forKey:self->_hangDurationMS];
  [v5 encodeObject:self->_hudString forKey:@"hudString"];
  [v5 encodeObject:self->_shortenedBundle forKey:@"shortenedBundle"];
  [v5 encodeObject:self->_bundleId forKey:@"bundleId"];
  [v5 encodeBool:self->_timedOut forKey:@"timedOut"];
}

- (BOOL)isCurrent:(unint64_t)a3 withHUDUpdateInterval:(double)a4
{
  v7 = sub_1000024F8(a3 - [(HTHangHUDInfo *)self receivedTimestamp]);
  v8 = [(HTHangHUDInfo *)self getHangHUDInfoKey];
  v9 = sub_100003824();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10003246C(v8, v9, v7);
  }

  if ([(HTHangHUDInfo *)self hangEndTime]== 0x7FFFFFFFFFFFFFFFLL || sub_1000024F8(a3 - [(HTHangHUDInfo *)self hangEndTime]) >= 200.0)
  {
    v11 = +[HangDataStreamStatusTracker sharedInstance];
    v12 = [v11 isHangEndedWithDuration:v8 updateInterval:v7 hangID:a4];

    v10 = v12 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end