@interface RPReportingAgent
- (CGSize)videoCaptureSize;
- (RPReportingAgent)initWithServiceName:(id)a3;
- (id)collectSummaryEventMetrics;
- (id)thermalDescription;
- (void)addToThermalResultsWithLevel:(int64_t)a3;
- (void)resetReportingMetrics;
- (void)resetThermalResults;
- (void)thermalPressureDidChangeWithLevel:(int64_t)a3;
@end

@implementation RPReportingAgent

- (RPReportingAgent)initWithServiceName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RPReportingAgent;
  v5 = [(RPReportingAgent *)&v11 init];
  if (v5)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v13 = "[RPReportingAgent initWithServiceName:]";
      v14 = 1024;
      v15 = 46;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    [(RPReportingAgent *)v5 setServiceName:v4];
    v6 = objc_alloc_init(RPThermalPressure);
    thermalPressureMonitor = v5->_thermalPressureMonitor;
    v5->_thermalPressureMonitor = v6;

    [(RPThermalPressure *)v5->_thermalPressureMonitor setDelegate:v5];
    v8 = objc_alloc_init(NSMutableDictionary);
    thermalResults = v5->_thermalResults;
    v5->_thermalResults = v8;

    [(RPReportingAgent *)v5 resetReportingMetrics];
  }

  return v5;
}

- (id)collectSummaryEventMetrics
{
  [(RPReportingAgent *)self addToThermalResultsWithLevel:[(RPThermalPressure *)self->_thermalPressureMonitor getCurrentPressureLevel]];
  v22 = [NSMutableDictionary alloc];
  v32[0] = @"ActiveDuration";
  v25 = +[NSDate date];
  [v25 timeIntervalSinceDate:self->_captureStartTime];
  *&v3 = v3;
  v24 = [NSNumber numberWithLong:llroundf(*&v3)];
  v33[0] = v24;
  v32[1] = @"VideoCaptureWidth";
  [(RPReportingAgent *)self videoCaptureSize];
  *&v4 = v4;
  v23 = [NSNumber numberWithLong:llroundf(*&v4)];
  v33[1] = v23;
  v32[2] = @"VideoCaptureHeight";
  [(RPReportingAgent *)self videoCaptureSize];
  v6 = v5;
  v21 = [NSNumber numberWithLong:llroundf(v6)];
  v33[2] = v21;
  v32[3] = @"VideoCaptureRate";
  v20 = [NSNumber numberWithInteger:[(RPReportingAgent *)self videoCaptureRate]];
  v33[3] = v20;
  v32[4] = @"VideoFrameCount";
  v19 = [NSNumber numberWithInteger:[(RPReportingAgent *)self videoFrameCount]];
  v33[4] = v19;
  v33[5] = &off_1000A6C38;
  v32[5] = @"AppAudioCaptureRate";
  v32[6] = @"AppAudioFrameCount";
  v18 = [NSNumber numberWithInteger:[(RPReportingAgent *)self appAudioFrameCount]];
  v33[6] = v18;
  v33[7] = &off_1000A6C38;
  v32[7] = @"MicCaptureRate";
  v32[8] = @"MicFrameCount";
  v7 = [NSNumber numberWithInteger:[(RPReportingAgent *)self micFrameCount]];
  v33[8] = v7;
  v32[9] = @"FrontCameraUsed";
  v8 = [NSNumber numberWithBool:[(RPReportingAgent *)self frontCameraUsed]];
  v33[9] = v8;
  v32[10] = @"BackCameraUsed";
  v9 = [NSNumber numberWithBool:[(RPReportingAgent *)self backCameraUsed]];
  v33[10] = v9;
  v32[11] = @"MRC";
  v10 = [NSNumber numberWithInteger:[(RPReportingAgent *)self mixedRealityCameraEnabled]];
  v33[11] = v10;
  v32[12] = @"RecordedFileSize";
  v11 = [NSNumber numberWithUnsignedInteger:[(RPReportingAgent *)self recordedFileSize]];
  v33[12] = v11;
  v33[13] = &stru_1000A2FB8;
  v32[13] = @"BroadcastExtensionBundleID";
  v32[14] = @"ClientAppBundleID";
  v33[14] = &stru_1000A2FB8;
  v32[15] = @"EndReason";
  v12 = [NSNumber numberWithInteger:[(RPReportingAgent *)self endReason]];
  v33[15] = v12;
  v32[16] = @"TPL";
  v13 = [(RPReportingAgent *)self thermalDescription];
  v33[16] = v13;
  v32[17] = @"CHDR";
  v14 = [NSNumber numberWithBool:[(RPReportingAgent *)self isHDR]];
  v33[17] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:18];
  v16 = [v22 initWithDictionary:v15];

  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v27 = "[RPReportingAgent collectSummaryEventMetrics]";
    v28 = 1024;
    v29 = 79;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %@", buf, 0x1Cu);
  }

  return v16;
}

- (id)thermalDescription
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NSMutableDictionary *)self->_thermalResults allKeys];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  v4 = &stru_1000A2FB8;
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v17;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(NSMutableDictionary *)self->_thermalResults objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v8)];
        v11 = v10;
        v12 = ",";
        if (!v6)
        {
          v12 = "";
        }

        if (v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = &stru_1000A2FB8;
        }

        v4 = [(__CFString *)v9 stringByAppendingFormat:@"%s%@", v12, v13];

        ++v6;
        v8 = v8 + 1;
        v9 = v4;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v4;
}

- (void)resetReportingMetrics
{
  self->_captureStartTime = +[NSDate date];
  self->_videoCaptureSize = CGSizeZero;
  *&self->_frontCameraUsed = 0;
  *&self->_videoCaptureRate = 0u;
  *&self->_appAudioFrameCount = 0u;
  *&self->_recordedFileSize = 0u;
  self->_mixedRealityCameraEnabled = 2;
  [(RPReportingAgent *)self resetThermalResults];
  self->_isHDR = 0;
}

- (void)resetThermalResults
{
  [(RPThermalPressure *)self->_thermalPressureMonitor stopMonitoring];
  [(NSMutableDictionary *)self->_thermalResults removeAllObjects];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6C50 forKeyedSubscript:&off_1000A6C68];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6C50 forKeyedSubscript:&off_1000A6C80];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6C50 forKeyedSubscript:&off_1000A6C98];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6C50 forKeyedSubscript:&off_1000A6CB0];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6C50 forKeyedSubscript:&off_1000A6CC8];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6C50 forKeyedSubscript:&off_1000A6CE0];
  v3 = +[NSDate date];
  thermalLevelIntervalStartTime = self->_thermalLevelIntervalStartTime;
  self->_thermalLevelIntervalStartTime = v3;

  thermalPressureMonitor = self->_thermalPressureMonitor;

  [(RPThermalPressure *)thermalPressureMonitor startMonitoring];
}

- (void)thermalPressureDidChangeWithLevel:(int64_t)a3
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[RPReportingAgent thermalPressureDidChangeWithLevel:]";
    v7 = 1024;
    v8 = 185;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d level=%ld", &v5, 0x1Cu);
  }

  [(RPReportingAgent *)self addToThermalResultsWithLevel:a3];
}

- (void)addToThermalResultsWithLevel:(int64_t)a3
{
  v5 = +[NSDate date];
  [v5 timeIntervalSinceDate:self->_thermalLevelIntervalStartTime];
  *&v6 = v6;
  v7 = llroundf(*&v6);

  thermalResults = self->_thermalResults;
  v9 = [NSNumber numberWithInteger:a3];
  v10 = [(NSMutableDictionary *)thermalResults objectForKeyedSubscript:v9];
  [v10 doubleValue];
  v12 = v11 + v7;

  v13 = [NSNumber numberWithDouble:v12];
  v14 = self->_thermalResults;
  v15 = [NSNumber numberWithInteger:a3];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

  v16 = +[NSDate date];
  thermalLevelIntervalStartTime = self->_thermalLevelIntervalStartTime;
  self->_thermalLevelIntervalStartTime = v16;

  _objc_release_x1();
}

- (CGSize)videoCaptureSize
{
  width = self->_videoCaptureSize.width;
  height = self->_videoCaptureSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end