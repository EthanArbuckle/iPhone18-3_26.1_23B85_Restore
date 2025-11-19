@interface SPReparsedProcess
- (BOOL)setTargetProcessWithHint:(id)a3;
- (SPReparsedProcess)initWithSampleStore:(id)a3;
- (void)_performSamplePrinterWork:(id)a3;
- (void)_saveReportToStream:(__sFILE *)a3;
@end

@implementation SPReparsedProcess

- (SPReparsedProcess)initWithSampleStore:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v26.receiver = self;
    v26.super_class = SPReparsedProcess;
    v6 = [(SPProcessEvent *)&v26 init];
    if (v6)
    {
      snprintf(__str, 0x40uLL, "com.apple.spindump.reparsed_process_%d", [v5 targetProcessId]);
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create(__str, v7);
      processingQueue = v6->super._processingQueue;
      v6->super._processingQueue = v8;

      v6->super._targetProcessId = [v5 targetProcessId];
      v6->super._targetThreadId = [v5 targetThreadId];
      v6->super._targetHIDEventMachAbs = [v5 targetHIDEventMachAbs];
      v6->super._targetHIDEventEndMachAbs = [v5 targetHIDEventEndMachAbs];
      v10 = [v5 event];
      event = v6->super._event;
      v6->super._event = v10;

      v12 = [v5 eventNote];
      eventNote = v6->super._eventNote;
      v6->super._eventNote = v12;

      v14 = [v5 eventTimeRange];
      [(SPProcessEvent *)v6 setEventTimeRange:v14];

      v15 = [v5 signature];
      signature = v6->super._signature;
      v6->super._signature = v15;

      [v5 extraDuration];
      v6->super._extraDuration = v17;
      v18 = [v5 durationNote];
      durationNote = v6->super._durationNote;
      v6->super._durationNote = v18;

      v20 = [v5 stepsNote];
      stepsNote = v6->super._stepsNote;
      v6->super._stepsNote = v20;

      v22 = [v5 customOutput];
      customOutput = v6->super._customOutput;
      v6->super._customOutput = v22;

      objc_storeStrong(&v6->_sampleStore, a3);
      v6->super._isLiveSampling = 0;
    }

    self = v6;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)setTargetProcessWithHint:(id)a3
{
  v4 = [(SASampleStore *)self->_sampleStore setTargetProcessWithHint:a3];
  self->super._targetProcessId = [(SASampleStore *)self->_sampleStore targetProcessId];
  return v4;
}

- (void)_saveReportToStream:(__sFILE *)a3
{
  if (a3)
  {
    [(SPProcessEvent *)self _saveReportToStream:a3 withSampleStore:self->_sampleStore];
  }
}

- (void)_performSamplePrinterWork:(id)a3
{
  sampleStore = self->_sampleStore;
  v6 = a3;
  v7 = [(SPProcessEvent *)self _samplePrinterForSampleStore:sampleStore];
  (*(a3 + 2))(v6, v7);
}

@end