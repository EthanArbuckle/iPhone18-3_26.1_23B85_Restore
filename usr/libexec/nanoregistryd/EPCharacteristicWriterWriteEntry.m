@interface EPCharacteristicWriterWriteEntry
- (void)dealloc;
@end

@implementation EPCharacteristicWriterWriteEntry

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  v5.receiver = self;
  v5.super_class = EPCharacteristicWriterWriteEntry;
  [(EPCharacteristicWriterWriteEntry *)&v5 dealloc];
}

@end