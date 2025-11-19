@interface SDAirDropStatus
- (SDAirDropStatus)init;
- (SDAirDropStatusDelegate)delegate;
- (void)dealloc;
- (void)setStatusAndNotify;
- (void)start;
- (void)stop;
@end

@implementation SDAirDropStatus

- (SDAirDropStatus)init
{
  v7.receiver = self;
  v7.super_class = SDAirDropStatus;
  v2 = [(SDAirDropStatus *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_started = 0;
    v4 = objc_opt_new();
    properties = v3->_properties;
    v3->_properties = v4;
  }

  return v3;
}

- (void)dealloc
{
  [(SDAirDropStatus *)self stop];
  v3.receiver = self;
  v3.super_class = SDAirDropStatus;
  [(SDAirDropStatus *)&v3 dealloc];
}

- (void)setStatusAndNotify
{
  [(NSMutableDictionary *)self->_properties setObject:&__kCFBooleanFalse forKeyedSubscript:kSFOperationAirDropEnabledKey];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D22E4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)start
{
  if (!self->_started)
  {
    self->_started = 1;
    [(SDAirDropStatus *)self setStatusAndNotify];
  }
}

- (void)stop
{
  if (self->_started)
  {
    self->_started = 0;
  }
}

- (SDAirDropStatusDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end