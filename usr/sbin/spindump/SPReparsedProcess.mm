@interface SPReparsedProcess
- (BOOL)setTargetProcessWithHint:(id)hint;
- (SPReparsedProcess)initWithSampleStore:(id)store;
- (void)_performSamplePrinterWork:(id)work;
- (void)_saveReportToStream:(__sFILE *)stream;
@end

@implementation SPReparsedProcess

- (SPReparsedProcess)initWithSampleStore:(id)store
{
  storeCopy = store;
  if (storeCopy)
  {
    v26.receiver = self;
    v26.super_class = SPReparsedProcess;
    v6 = [(SPProcessEvent *)&v26 init];
    if (v6)
    {
      snprintf(__str, 0x40uLL, "com.apple.spindump.reparsed_process_%d", [storeCopy targetProcessId]);
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create(__str, v7);
      processingQueue = v6->super._processingQueue;
      v6->super._processingQueue = v8;

      v6->super._targetProcessId = [storeCopy targetProcessId];
      v6->super._targetThreadId = [storeCopy targetThreadId];
      v6->super._targetHIDEventMachAbs = [storeCopy targetHIDEventMachAbs];
      v6->super._targetHIDEventEndMachAbs = [storeCopy targetHIDEventEndMachAbs];
      event = [storeCopy event];
      event = v6->super._event;
      v6->super._event = event;

      eventNote = [storeCopy eventNote];
      eventNote = v6->super._eventNote;
      v6->super._eventNote = eventNote;

      eventTimeRange = [storeCopy eventTimeRange];
      [(SPProcessEvent *)v6 setEventTimeRange:eventTimeRange];

      signature = [storeCopy signature];
      signature = v6->super._signature;
      v6->super._signature = signature;

      [storeCopy extraDuration];
      v6->super._extraDuration = v17;
      durationNote = [storeCopy durationNote];
      durationNote = v6->super._durationNote;
      v6->super._durationNote = durationNote;

      stepsNote = [storeCopy stepsNote];
      stepsNote = v6->super._stepsNote;
      v6->super._stepsNote = stepsNote;

      customOutput = [storeCopy customOutput];
      customOutput = v6->super._customOutput;
      v6->super._customOutput = customOutput;

      objc_storeStrong(&v6->_sampleStore, store);
      v6->super._isLiveSampling = 0;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)setTargetProcessWithHint:(id)hint
{
  v4 = [(SASampleStore *)self->_sampleStore setTargetProcessWithHint:hint];
  self->super._targetProcessId = [(SASampleStore *)self->_sampleStore targetProcessId];
  return v4;
}

- (void)_saveReportToStream:(__sFILE *)stream
{
  if (stream)
  {
    [(SPProcessEvent *)self _saveReportToStream:stream withSampleStore:self->_sampleStore];
  }
}

- (void)_performSamplePrinterWork:(id)work
{
  sampleStore = self->_sampleStore;
  workCopy = work;
  v7 = [(SPProcessEvent *)self _samplePrinterForSampleStore:sampleStore];
  (*(work + 2))(workCopy, v7);
}

@end