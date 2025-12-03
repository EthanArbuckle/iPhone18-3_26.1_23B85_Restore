@interface HTHangHUDInfo
- (BOOL)isCurrent:(unint64_t)current withHUDUpdateInterval:(double)interval;
- (HTHangHUDInfo)initWithCoder:(id)coder;
- (HTHangHUDInfo)initWithHangStartTime:(unint64_t)time hangEndTime:(unint64_t)endTime receivedTimestamp:(unint64_t)timestamp hangDurationMS:(double)s hudString:(id)string shortenedBundle:(id)bundle bundleId:(id)id timedOut:(BOOL)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HTHangHUDInfo

- (HTHangHUDInfo)initWithHangStartTime:(unint64_t)time hangEndTime:(unint64_t)endTime receivedTimestamp:(unint64_t)timestamp hangDurationMS:(double)s hudString:(id)string shortenedBundle:(id)bundle bundleId:(id)id timedOut:(BOOL)self0
{
  stringCopy = string;
  bundleCopy = bundle;
  idCopy = id;
  v24.receiver = self;
  v24.super_class = HTHangHUDInfo;
  v21 = [(HTHangHUDInfo *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_hangStartTime = time;
    v21->_hangEndTime = endTime;
    v21->_receivedTimestamp = timestamp;
    v21->_hangDurationMS = s;
    objc_storeStrong(&v21->_hudString, string);
    objc_storeStrong(&v22->_shortenedBundle, bundle);
    objc_storeStrong(&v22->_bundleId, id);
    v22->_timedOut = out;
  }

  return v22;
}

- (HTHangHUDInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"hangStartTime"];
  v6 = [coderCopy decodeInt64ForKey:@"hangEndTime"];
  v7 = [coderCopy decodeInt64ForKey:@"receivedTimestamp"];
  [coderCopy decodeDoubleForKey:@"hangDurationMS"];
  v9 = v8;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hudString"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortenedBundle"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  v13 = [coderCopy decodeBoolForKey:@"timedOut"];

  LOBYTE(v16) = v13;
  v14 = [(HTHangHUDInfo *)self initWithHangStartTime:v5 hangEndTime:v6 receivedTimestamp:v7 hangDurationMS:v10 hudString:v11 shortenedBundle:v12 bundleId:v9 timedOut:v16];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  hangStartTime = self->_hangStartTime;
  coderCopy = coder;
  [coderCopy encodeInt64:hangStartTime forKey:@"hangStartTime"];
  [coderCopy encodeInt64:self->_hangEndTime forKey:@"hangEndTime"];
  [coderCopy encodeInt64:self->_receivedTimestamp forKey:@"receivedTimestamp"];
  [coderCopy encodeDouble:@"hangDurationMS" forKey:self->_hangDurationMS];
  [coderCopy encodeObject:self->_hudString forKey:@"hudString"];
  [coderCopy encodeObject:self->_shortenedBundle forKey:@"shortenedBundle"];
  [coderCopy encodeObject:self->_bundleId forKey:@"bundleId"];
  [coderCopy encodeBool:self->_timedOut forKey:@"timedOut"];
}

- (BOOL)isCurrent:(unint64_t)current withHUDUpdateInterval:(double)interval
{
  v7 = sub_1000024F8(current - [(HTHangHUDInfo *)self receivedTimestamp]);
  getHangHUDInfoKey = [(HTHangHUDInfo *)self getHangHUDInfoKey];
  v9 = sub_100003824();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10003246C(getHangHUDInfoKey, v9, v7);
  }

  if ([(HTHangHUDInfo *)self hangEndTime]== 0x7FFFFFFFFFFFFFFFLL || sub_1000024F8(current - [(HTHangHUDInfo *)self hangEndTime]) >= 200.0)
  {
    v11 = +[HangDataStreamStatusTracker sharedInstance];
    v12 = [v11 isHangEndedWithDuration:getHangHUDInfoKey updateInterval:v7 hangID:interval];

    v10 = v12 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end