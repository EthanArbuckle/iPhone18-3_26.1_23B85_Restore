@interface DABluetoothTask
- (DABluetoothTask)init;
- (id)descriptionWithLevel:(int)level;
- (void)cancelTimer;
- (void)setTimerTimeout:(double)timeout queue:(id)queue handler:(id)handler;
@end

@implementation DABluetoothTask

- (DABluetoothTask)init
{
  v6.receiver = self;
  v6.super_class = DABluetoothTask;
  v2 = [(DABluetoothTask *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)setTimerTimeout:(double)timeout queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  [(DABluetoothTask *)self cancelTimer];
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queueCopy);

  objc_storeStrong(&self->taskTimer, v9);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002BBD8;
  v11[3] = &unk_100059508;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_source_set_event_handler(v9, v11);
  if (dword_1000607A0 <= 30 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003679C();
  }

  CUDispatchTimerSet();
  dispatch_activate(v9);
}

- (void)cancelTimer
{
  taskTimer = self->taskTimer;
  if (taskTimer)
  {
    v5 = taskTimer;
    dispatch_source_cancel(v5);
    v4 = self->taskTimer;
    self->taskTimer = 0;
  }
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  appConfirmsAuth = self->_appConfirmsAuth;
  CUAppendF();
  v5 = v4;

  bluetoothUUID = self->_bluetoothUUID;
  CUAppendF();
  v6 = v5;

  self->_btOperation;
  CUAppendF();
  v7 = v6;

  pairCTKD = self->_pairCTKD;
  CUAppendF();
  v8 = v7;

  pairedCTKD = self->_pairedCTKD;
  CUAppendF();
  v9 = v8;

  displayName = self->_displayName;
  CUAppendF();
  v10 = v9;

  taskTimeout = self->_taskTimeout;
  CUAppendF();
  v11 = v10;

  v12 = &stru_10005A2C8;
  if (v11)
  {
    v12 = v11;
  }

  v13 = v12;

  return v13;
}

@end