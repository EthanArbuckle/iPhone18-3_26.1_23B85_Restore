@interface HTTimeoutHangInfo
- (HTTimeoutHangInfo)initWithServiceName:(id)name threadID:(unint64_t)d startTime:(unint64_t)time endTime:(unint64_t)endTime saveTailspin:(BOOL)tailspin subType:(int64_t)type userActionData:(id)data isThirdPartyDevSupportModeHang:(BOOL)self0 processInfo:(id)self1 captureMicroHang:(BOOL)self2 recentStateInfo:(id)self3;
- (void)recordHang;
@end

@implementation HTTimeoutHangInfo

- (HTTimeoutHangInfo)initWithServiceName:(id)name threadID:(unint64_t)d startTime:(unint64_t)time endTime:(unint64_t)endTime saveTailspin:(BOOL)tailspin subType:(int64_t)type userActionData:(id)data isThirdPartyDevSupportModeHang:(BOOL)self0 processInfo:(id)self1 captureMicroHang:(BOOL)self2 recentStateInfo:(id)self3
{
  nameCopy = name;
  dataCopy = data;
  infoCopy = info;
  stateInfoCopy = stateInfo;
  v31.receiver = self;
  v31.super_class = HTTimeoutHangInfo;
  v22 = [(HTTimeoutHangInfo *)&v31 init];
  if (v22)
  {
    v23 = [nameCopy copy];
    serviceName = v22->_serviceName;
    v22->_serviceName = v23;

    v22->_threadID = d;
    v22->_startTime = time;
    v22->_saveTailspin = tailspin;
    v22->_endTime = endTime;
    v22->_subtype = type;
    v25 = [dataCopy copy];
    userActionData = v22->_userActionData;
    v22->_userActionData = v25;

    v22->_isThirdPartyDevSupportModeHang = hang;
    objc_storeStrong(&v22->_processInfo, info);
    v22->_captureMicroHang = microHang;
    v27 = [stateInfoCopy copy];
    recentStateInfo = v22->_recentStateInfo;
    v22->_recentStateInfo = v27;
  }

  return v22;
}

- (void)recordHang
{
  processInfo = [(HTTimeoutHangInfo *)self processInfo];
  serviceName = [(HTTimeoutHangInfo *)self serviceName];
  threadID = [(HTTimeoutHangInfo *)self threadID];
  startTime = [(HTTimeoutHangInfo *)self startTime];
  endTime = [(HTTimeoutHangInfo *)self endTime];
  saveTailspin = [(HTTimeoutHangInfo *)self saveTailspin];
  subtype = [(HTTimeoutHangInfo *)self subtype];
  userActionData = [(HTTimeoutHangInfo *)self userActionData];
  isThirdPartyDevSupportModeHang = [(HTTimeoutHangInfo *)self isThirdPartyDevSupportModeHang];
  captureMicroHang = [(HTTimeoutHangInfo *)self captureMicroHang];
  recentStateInfo = [(HTTimeoutHangInfo *)self recentStateInfo];
  BYTE1(v13) = captureMicroHang;
  LOBYTE(v13) = isThirdPartyDevSupportModeHang;
  [processInfo recordHang:serviceName threadID:threadID startTime:startTime endTime:endTime saveTailspin:saveTailspin subtype:subtype userActionData:userActionData isThirdPartyDevSupportModeHang:v13 captureMicroHang:recentStateInfo recentStateInfo:?];
}

@end