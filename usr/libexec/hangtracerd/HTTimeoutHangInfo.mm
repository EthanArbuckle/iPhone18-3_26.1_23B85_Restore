@interface HTTimeoutHangInfo
- (HTTimeoutHangInfo)initWithServiceName:(id)a3 threadID:(unint64_t)a4 startTime:(unint64_t)a5 endTime:(unint64_t)a6 saveTailspin:(BOOL)a7 subType:(int64_t)a8 userActionData:(id)a9 isThirdPartyDevSupportModeHang:(BOOL)a10 processInfo:(id)a11 captureMicroHang:(BOOL)a12 recentStateInfo:(id)a13;
- (void)recordHang;
@end

@implementation HTTimeoutHangInfo

- (HTTimeoutHangInfo)initWithServiceName:(id)a3 threadID:(unint64_t)a4 startTime:(unint64_t)a5 endTime:(unint64_t)a6 saveTailspin:(BOOL)a7 subType:(int64_t)a8 userActionData:(id)a9 isThirdPartyDevSupportModeHang:(BOOL)a10 processInfo:(id)a11 captureMicroHang:(BOOL)a12 recentStateInfo:(id)a13
{
  v18 = a3;
  v19 = a9;
  v20 = a11;
  v21 = a13;
  v31.receiver = self;
  v31.super_class = HTTimeoutHangInfo;
  v22 = [(HTTimeoutHangInfo *)&v31 init];
  if (v22)
  {
    v23 = [v18 copy];
    serviceName = v22->_serviceName;
    v22->_serviceName = v23;

    v22->_threadID = a4;
    v22->_startTime = a5;
    v22->_saveTailspin = a7;
    v22->_endTime = a6;
    v22->_subtype = a8;
    v25 = [v19 copy];
    userActionData = v22->_userActionData;
    v22->_userActionData = v25;

    v22->_isThirdPartyDevSupportModeHang = a10;
    objc_storeStrong(&v22->_processInfo, a11);
    v22->_captureMicroHang = a12;
    v27 = [v21 copy];
    recentStateInfo = v22->_recentStateInfo;
    v22->_recentStateInfo = v27;
  }

  return v22;
}

- (void)recordHang
{
  v14 = [(HTTimeoutHangInfo *)self processInfo];
  v3 = [(HTTimeoutHangInfo *)self serviceName];
  v4 = [(HTTimeoutHangInfo *)self threadID];
  v5 = [(HTTimeoutHangInfo *)self startTime];
  v6 = [(HTTimeoutHangInfo *)self endTime];
  v7 = [(HTTimeoutHangInfo *)self saveTailspin];
  v8 = [(HTTimeoutHangInfo *)self subtype];
  v9 = [(HTTimeoutHangInfo *)self userActionData];
  v10 = [(HTTimeoutHangInfo *)self isThirdPartyDevSupportModeHang];
  v11 = [(HTTimeoutHangInfo *)self captureMicroHang];
  v12 = [(HTTimeoutHangInfo *)self recentStateInfo];
  BYTE1(v13) = v11;
  LOBYTE(v13) = v10;
  [v14 recordHang:v3 threadID:v4 startTime:v5 endTime:v6 saveTailspin:v7 subtype:v8 userActionData:v9 isThirdPartyDevSupportModeHang:v13 captureMicroHang:v12 recentStateInfo:?];
}

@end