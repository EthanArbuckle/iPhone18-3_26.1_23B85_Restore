@interface _DASDataProtectionStateMonitor
- (BOOL)unnotifiedIsDataAvailableForClassC;
- (_DASDataProtectionStateMonitor)init;
- (void)dealloc;
- (void)setChangeHandler:(id)handler;
@end

@implementation _DASDataProtectionStateMonitor

- (_DASDataProtectionStateMonitor)init
{
  v8.receiver = self;
  v8.super_class = _DASDataProtectionStateMonitor;
  v2 = [(_DASDataProtectionStateMonitor *)&v8 init];
  if (v2)
  {
    v3 = +[_DASDataProtectionMaster sharedInstance];
    master = v2->_master;
    v2->_master = v3;

    handlerUUID = v2->_handlerUUID;
    v2->_handlerUUID = 0;

    changeHandler = v2->_changeHandler;
    v2->_changeHandler = 0;
  }

  return v2;
}

- (void)dealloc
{
  changeHandler = self->_changeHandler;
  self->_changeHandler = 0;

  master = self->_master;
  self->_master = 0;

  v5.receiver = self;
  v5.super_class = _DASDataProtectionStateMonitor;
  [(_DASDataProtectionStateMonitor *)&v5 dealloc];
}

- (void)setChangeHandler:(id)handler
{
  handlerCopy = handler;
  v9 = handlerCopy;
  if (self->_handlerUUID)
  {
    [(_DASDataProtectionMaster *)self->_master deregisterStateChangeHandler:?];
    handlerCopy = v9;
  }

  if (handlerCopy)
  {
    v5 = [(_DASDataProtectionMaster *)self->_master registerStateChangeHandler:handlerCopy];
    handlerUUID = self->_handlerUUID;
    self->_handlerUUID = v5;

    handlerCopy = v9;
  }

  v7 = objc_retainBlock(handlerCopy);
  changeHandler = self->_changeHandler;
  self->_changeHandler = v7;
}

- (BOOL)unnotifiedIsDataAvailableForClassC
{
  if ([(_DASDataProtectionMaster *)self->_master deviceHasBeenUnlockedSinceBoot])
  {
    return 1;
  }

  else
  {
    return ![(_DASDataProtectionMaster *)self->_master deviceIsPasswordConfigured];
  }
}

@end