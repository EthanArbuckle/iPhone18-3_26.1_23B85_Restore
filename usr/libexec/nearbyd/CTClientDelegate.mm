@interface CTClientDelegate
- (void)cellMonitorUpdate:(id)update info:(id)info;
- (void)dealloc;
@end

@implementation CTClientDelegate

- (void)cellMonitorUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  fOnCellMonitorUpdateCb = self->_fOnCellMonitorUpdateCb;
  if (fOnCellMonitorUpdateCb)
  {
    fOnCellMonitorUpdateCb[2](fOnCellMonitorUpdateCb, updateCopy, infoCopy);
  }
}

- (void)dealloc
{
  fOnCellMonitorUpdateCb = self->_fOnCellMonitorUpdateCb;
  self->_fOnCellMonitorUpdateCb = 0;

  v4.receiver = self;
  v4.super_class = CTClientDelegate;
  [(CTClientDelegate *)&v4 dealloc];
}

@end