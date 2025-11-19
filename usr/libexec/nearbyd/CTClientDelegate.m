@interface CTClientDelegate
- (void)cellMonitorUpdate:(id)a3 info:(id)a4;
- (void)dealloc;
@end

@implementation CTClientDelegate

- (void)cellMonitorUpdate:(id)a3 info:(id)a4
{
  v8 = a3;
  v6 = a4;
  fOnCellMonitorUpdateCb = self->_fOnCellMonitorUpdateCb;
  if (fOnCellMonitorUpdateCb)
  {
    fOnCellMonitorUpdateCb[2](fOnCellMonitorUpdateCb, v8, v6);
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