@interface TSPSaveMeasurements
- (TSPSaveMeasurements)init;
- (unint64_t)_startRecordingTimeForPhase:(const char *)phase;
- (void)_stopRecordingTimeForPhase:(const char *)phase;
- (void)recordLostTimePeriodAtStart:(unint64_t)start;
- (void)recordRequestProcessingLatencySecsWithStartMCT:(unint64_t)t endMCT:(unint64_t)cT;
- (void)recordTailspinDurationWithStartMCT:(unint64_t)t endMCT:(unint64_t)cT;
- (void)recordTimeForSaveStandardChunksWithoutPostProcessing:(unint64_t)processing;
- (void)startRecordingTimeForAugmentLoggingPhase:(BOOL)phase collectOSLog:(BOOL)log scrubData:(BOOL)data;
- (void)startRecordingTimeForAugmentPhase:(const char *)phase pid:(int)pid originalFd:(int)fd dupFd:(int)dupFd;
- (void)startRecordingTimeForAugmentSymbolicatePhase;
- (void)startRecordingTimeForDumpRequestPhase:(const char *)phase pid:(int)pid;
- (void)startRecordingTimeForLibktracePostProcessing;
- (void)startRecordingTimeForSaveStandardChunksPhase:(const char *)phase pid:(int)pid;
- (void)startRecordingTimeForTailspinPostProcessing;
- (void)stopRecordingTimeForAugmentLoggingPhase:(BOOL)phase;
- (void)stopRecordingTimeForAugmentPhase:(BOOL)phase finalSizeBytes:(int64_t)bytes;
- (void)stopRecordingTimeForAugmentSymbolicatePhase;
- (void)stopRecordingTimeForDumpRequestPhase:(id)phase;
- (void)stopRecordingTimeForLibktracePostProcessing;
- (void)stopRecordingTimeForSaveStandardChunksPhase:(BOOL)phase;
- (void)stopRecordingTimeForTailspinPostProcessing;
@end

@implementation TSPSaveMeasurements

- (TSPSaveMeasurements)init
{
  v12.receiver = self;
  v12.super_class = TSPSaveMeasurements;
  v2 = [(TSPSaveMeasurements *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_request_id = atomic_fetch_add(&qword_10001C678, 1uLL);
    v4 = +[NSMutableDictionary dictionary];
    timeSpentByPhases = v3->_timeSpentByPhases;
    v3->_timeSpentByPhases = v4;

    v3->_saveStandardChunksStartTimestampMCT = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v3->_ratioTimePeriodCovered = _Q0;
    v3->_lostTimePeriodAtStartSecs = -1.0;
  }

  return v3;
}

- (void)startRecordingTimeForDumpRequestPhase:(const char *)phase pid:(int)pid
{
  v7 = *__error();
  v8 = sub_100004348();
  v9 = v8;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    phaseCopy = "<unknown>";
    if (phase)
    {
      phaseCopy = phase;
    }

    v12 = 136446466;
    v13 = phaseCopy;
    v14 = 1024;
    pidCopy = pid;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "DumpRequest", "Request from %{public}s [%d]", &v12, 0x12u);
  }

  *__error() = v7;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"DumpRequest"];
}

- (void)stopRecordingTimeForDumpRequestPhase:(id)phase
{
  phaseCopy = phase;
  v5 = *__error();
  v6 = sub_100004348();
  v7 = v6;
  request_id = self->_request_id;
  if (phaseCopy)
  {
    if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      filePath = self->_filePath;
      v15 = 138543618;
      v16 = phaseCopy;
      v17 = 2114;
      v18 = filePath;
      v10 = "FAILED due to reason: %{public}@.\nFile path: %{public}@";
      v11 = v7;
      v12 = request_id;
      v13 = 22;
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "DumpRequest", v10, &v15, v13);
    }
  }

  else if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v14 = self->_filePath;
    v15 = 138543362;
    v16 = v14;
    v10 = "Succeeded.\nFile path: %{public}@";
    v11 = v7;
    v12 = request_id;
    v13 = 12;
    goto LABEL_8;
  }

  *__error() = v5;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"DumpRequest"];
}

- (void)startRecordingTimeForSaveStandardChunksPhase:(const char *)phase pid:(int)pid
{
  v7 = *__error();
  v8 = sub_100004348();
  v9 = v8;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    phaseCopy = "<unknown>";
    if (phase)
    {
      phaseCopy = phase;
    }

    v12 = 136446466;
    v13 = phaseCopy;
    v14 = 1024;
    pidCopy = pid;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "SaveStandardChunks", "Save for '%{public}s [%d]", &v12, 0x12u);
  }

  *__error() = v7;
  self->_saveStandardChunksStartTimestampMCT = [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"SaveStandardChunks"];
}

- (void)stopRecordingTimeForSaveStandardChunksPhase:(BOOL)phase
{
  phaseCopy = phase;
  v5 = *__error();
  v6 = sub_100004348();
  v7 = v6;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = "FAILED";
    if (phaseCopy)
    {
      v9 = "SUCCEEDED";
    }

    v10 = 136315138;
    v11 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, request_id, "SaveStandardChunks", "%s", &v10, 0xCu);
  }

  *__error() = v5;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"SaveStandardChunks"];
}

- (void)recordTimeForSaveStandardChunksWithoutPostProcessing:(unint64_t)processing
{
  saveStandardChunksStartTimestampMCT = self->_saveStandardChunksStartTimestampMCT;
  if (saveStandardChunksStartTimestampMCT)
  {
    v4 = saveStandardChunksStartTimestampMCT >= processing;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v7 = *__error();
    v8 = sub_100004348();
    v9 = v8;
    request_id = self->_request_id;
    if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = self->_saveStandardChunksStartTimestampMCT;
      v14 = 134349312;
      v15 = v11;
      v16 = 2050;
      processingCopy = processing;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, request_id, "SaveStandardChunks_WithoutPostProcessing", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu", &v14, 0x16u);
    }

    *__error() = v7;
    v12 = processing - self->_saveStandardChunksStartTimestampMCT;
    if (qword_10001E928 != -1)
    {
      sub_10000C33C();
    }

    v13 = [NSNumber numberWithDouble:*&qword_10001E920 * v12 * 0.000000001];
    [(NSMutableDictionary *)self->_timeSpentByPhases setObject:v13 forKeyedSubscript:@"SaveStandardChunks_WithoutPostProcessing"];
  }
}

- (void)startRecordingTimeForLibktracePostProcessing
{
  v3 = *__error();
  v4 = sub_100004348();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "PostProcessing_Libktrace", "", v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"PostProcessing_Libktrace"];
}

- (void)stopRecordingTimeForLibktracePostProcessing
{
  v3 = *__error();
  v4 = sub_100004348();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, request_id, "PostProcessing_Libktrace", "", v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"PostProcessing_Libktrace"];
}

- (void)startRecordingTimeForTailspinPostProcessing
{
  v3 = *__error();
  v4 = sub_100004348();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "PostProcessing_Tailspin", "", v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"PostProcessing_Tailspin"];
}

- (void)stopRecordingTimeForTailspinPostProcessing
{
  v3 = *__error();
  v4 = sub_100004348();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, request_id, "PostProcessing_Tailspin", "", v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"PostProcessing_Tailspin"];
}

- (void)startRecordingTimeForAugmentPhase:(const char *)phase pid:(int)pid originalFd:(int)fd dupFd:(int)dupFd
{
  v11 = *__error();
  v12 = sub_100004348();
  v13 = v12;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    phaseCopy = "<unknown>";
    v16 = 136446978;
    if (phase)
    {
      phaseCopy = phase;
    }

    v17 = phaseCopy;
    v18 = 1024;
    pidCopy = pid;
    v20 = 1024;
    fdCopy = fd;
    v22 = 1024;
    dupFdCopy = dupFd;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "Augment", "Augment for %{public}s [%d], fd: %d, dup fd: %d", &v16, 0x1Eu);
  }

  *__error() = v11;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"Augment"];
}

- (void)stopRecordingTimeForAugmentPhase:(BOOL)phase finalSizeBytes:(int64_t)bytes
{
  phaseCopy = phase;
  v7 = *__error();
  v8 = sub_100004348();
  v9 = v8;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = "FAILED";
    if (phaseCopy)
    {
      v11 = "SUCCEEDED";
    }

    v12 = 136315394;
    v13 = v11;
    v14 = 2048;
    bytesCopy = bytes;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, request_id, "Augment", "%s (final size: %{bytes}lld)", &v12, 0x16u);
  }

  *__error() = v7;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"Augment"];
  self->_fileSizeBytes = bytes;
}

- (void)startRecordingTimeForAugmentLoggingPhase:(BOOL)phase collectOSLog:(BOOL)log scrubData:(BOOL)data
{
  dataCopy = data;
  logCopy = log;
  phaseCopy = phase;
  v9 = *__error();
  v10 = sub_100004348();
  v11 = v10;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13[0] = 67109632;
    v13[1] = phaseCopy;
    v14 = 1024;
    v15 = logCopy;
    v16 = 1024;
    v17 = dataCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "Augment_LoggingData", "os_signpost: %{BOOL}d\nos_log: %{BOOL}d\nscrub_data: %{BOOL}d", v13, 0x14u);
  }

  *__error() = v9;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"Augment_LoggingData"];
}

- (void)stopRecordingTimeForAugmentLoggingPhase:(BOOL)phase
{
  phaseCopy = phase;
  v5 = *__error();
  v6 = sub_100004348();
  v7 = v6;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = "FAILED";
    if (phaseCopy)
    {
      v9 = "SUCCEEDED";
    }

    v10 = 136315138;
    v11 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, request_id, "Augment_LoggingData", "%s", &v10, 0xCu);
  }

  *__error() = v5;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"Augment_LoggingData"];
}

- (void)startRecordingTimeForAugmentSymbolicatePhase
{
  v3 = *__error();
  v4 = sub_100004348();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "Augment_Symbolicate", "", v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"Augment_Symbolicate"];
}

- (void)stopRecordingTimeForAugmentSymbolicatePhase
{
  v3 = *__error();
  v4 = sub_100004348();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, request_id, "Augment_Symbolicate", "", v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"Augment_Symbolicate"];
}

- (void)recordRequestProcessingLatencySecsWithStartMCT:(unint64_t)t endMCT:(unint64_t)cT
{
  if (qword_10001E928 != -1)
  {
    sub_1000053E4();
  }

  self->_requestProcessingLatencySecs = *&qword_10001E920 * (cT - t) * 0.000000001;
}

- (void)recordTailspinDurationWithStartMCT:(unint64_t)t endMCT:(unint64_t)cT
{
  if (qword_10001E928 != -1)
  {
    sub_1000053E4();
  }

  self->_tailspinDurationSecs = *&qword_10001E920 * (cT - t) * 0.000000001;
}

- (void)recordLostTimePeriodAtStart:(unint64_t)start
{
  if (qword_10001E928 != -1)
  {
    sub_1000053E4();
  }

  self->_lostTimePeriodAtStartSecs = *&qword_10001E920 * start * 0.000000001;
}

- (unint64_t)_startRecordingTimeForPhase:(const char *)phase
{
  v4 = [NSString stringWithUTF8String:phase];
  v5 = mach_continuous_time();
  v6 = [NSNumber numberWithUnsignedLongLong:v5];
  [(NSMutableDictionary *)self->_timeSpentByPhases setObject:v6 forKeyedSubscript:v4];

  return v5;
}

- (void)_stopRecordingTimeForPhase:(const char *)phase
{
  v9 = [NSString stringWithUTF8String:phase];
  v4 = mach_continuous_time();
  v5 = [(NSMutableDictionary *)self->_timeSpentByPhases objectForKeyedSubscript:v9];
  if (!v5)
  {
    sub_10000C364();
  }

  v6 = v5;
  unsignedLongLongValue = [v5 unsignedLongLongValue];
  if (qword_10001E928 != -1)
  {
    sub_1000053E4();
  }

  v8 = [NSNumber numberWithDouble:*&qword_10001E920 * (v4 - unsignedLongLongValue) * 0.000000001];
  [(NSMutableDictionary *)self->_timeSpentByPhases setObject:v8 forKeyedSubscript:v9];
}

@end