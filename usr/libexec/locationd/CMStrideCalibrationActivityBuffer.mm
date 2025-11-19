@interface CMStrideCalibrationActivityBuffer
- (BOOL)isRunningStateInWindow;
@end

@implementation CMStrideCalibrationActivityBuffer

- (BOOL)isRunningStateInWindow
{
  begin = self->fActivityWindow.__begin_;
  if (begin == self->fActivityWindow.__end_)
  {
    v5 = 0.0;
  }

  else
  {
    v4 = begin + 2;
    v5 = 0.0;
    do
    {
      isTypeRunning = CLMotionActivity::isTypeRunning();
      end = self->fActivityWindow.__end_;
      if (isTypeRunning)
      {
        if (begin == end - 2)
        {
          v5 = v5 + CFAbsoluteTimeGetCurrent() - *begin;
          end = self->fActivityWindow.__end_;
        }

        else
        {
          v5 = v5 + *v4 - *begin;
        }
      }

      begin += 2;
      v4 += 2;
    }

    while (begin != end);
  }

  return v5 / 60.0 >= 0.9;
}

@end