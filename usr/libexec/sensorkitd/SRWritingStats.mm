@interface SRWritingStats
- (id)description;
- (void)dealloc;
@end

@implementation SRWritingStats

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRWritingStats;
  [(SRWritingStats *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if (self)
  {
    sensor = self->_sensor;
    sessionStart = self->_sessionStart;
    v7 = SRAbsoluteTimeToCFAbsoluteTime(sessionStart);
    totalBytesWritten = self->_totalBytesWritten;
    totalSamplesWritten = self->_totalSamplesWritten;
    segmentCreationTime = self->_segmentCreationTime;
    rateAdjustedSegmentSize = self->_rateAdjustedSegmentSize;
    totalSegmentsCreated = self->_totalSegmentsCreated;
    if (totalSegmentsCreated)
    {
      v13 = self->_totalFillDuration / totalSegmentsCreated;
    }

    else
    {
      v13 = NAN;
    }
  }

  else
  {
    sessionStart = 0.0;
    v7 = SRAbsoluteTimeToCFAbsoluteTime(0.0);
    rateAdjustedSegmentSize = 0;
    totalSamplesWritten = 0;
    sensor = 0;
    totalBytesWritten = 0;
    segmentCreationTime = 0.0;
    v13 = 0.0;
  }

  return [NSString stringWithFormat:@"<%@ (%p)> [%@]:\n{\n  sessionStart: %f (CF: %f), \n  bytesWritten: %llu, \n  samplesWritten: %lu, \n  segmentCreationTime: %f, \n  rateAdjustedSegmentSize: %lu, \n  averageFillDuration: %f\n}", v4, self, sensor, *&sessionStart, *&v7, totalBytesWritten, totalSamplesWritten, *&segmentCreationTime, rateAdjustedSegmentSize, *&v13];
}

@end