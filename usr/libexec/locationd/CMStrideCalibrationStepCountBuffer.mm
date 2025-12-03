@interface CMStrideCalibrationStepCountBuffer
- (id).cxx_construct;
- (unsigned)stepsInWindow;
- (void)ageOutStepArray;
- (void)feedStepCountUpdate:(const NotificationData *)update;
@end

@implementation CMStrideCalibrationStepCountBuffer

- (void)ageOutStepArray
{
  Current = CFAbsoluteTimeGetCurrent();
  size = self->fStepWindow.c.__size_;
  if (size)
  {
    v5 = Current;
    do
    {
      start = self->fStepWindow.c.__start_;
      if (v5 - (*(self->fStepWindow.c.__map_.__begin_ + ((start >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * start] <= 130.0)
      {
        break;
      }

      self->fStepWindow.c.__start_ = start + 1;
      self->fStepWindow.c.__size_ = size - 1;
      sub_100014444(&self->fStepWindow, 1);
      size = self->fStepWindow.c.__size_;
    }

    while (size);
  }
}

- (unsigned)stepsInWindow
{
  size = self->fStepWindow.c.__size_;
  if (!size)
  {
    return 0;
  }

  start = self->fStepWindow.c.__start_;
  return (*(self->fStepWindow.c.__map_.__begin_ + (((size + start - 1) >> 5) & 0x7FFFFFFFFFFFFF8)))[4 * (size + start - 1) + 2] - (*(self->fStepWindow.c.__map_.__begin_ + ((start >> 5) & 0x7FFFFFFFFFFFFF8)))[4 * start + 2];
}

- (void)feedStepCountUpdate:(const NotificationData *)update
{
  [(CMStrideCalibrationStepCountBuffer *)self ageOutStepArray];
  size = self->fStepWindow.c.__size_;
  if (!size || (*(self->fStepWindow.c.__map_.__begin_ + (((size + self->fStepWindow.c.__start_ - 1) >> 5) & 0x7FFFFFFFFFFFFF8)))[4 * (size + LOBYTE(self->fStepWindow.c.__start_) - 1) + 2] != *(update + 8))
  {

    sub_100248C10(&self->fStepWindow.c.__map_.__first_, update + 2, update + 8);
  }
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end