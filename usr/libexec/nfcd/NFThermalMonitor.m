@interface NFThermalMonitor
- (void)thermalStateChanged:(unint64_t)a3;
@end

@implementation NFThermalMonitor

- (void)thermalStateChanged:(unint64_t)a3
{
  v5 = self;
  objc_sync_enter(v5);
  switch(a3)
  {
    case 2uLL:
      if (v5->_state != 4)
      {
        if (NFThermalMonitorProvidedBySMC())
        {
          temperaturePollingHandler = v5->_temperaturePollingHandler;
          if (temperaturePollingHandler)
          {
            temperaturePollingHandler[2]();
          }
        }
      }

      v6 = 4;
      goto LABEL_11;
    case 1uLL:
      v6 = 2;
LABEL_11:
      v5->_state = v6;
      break;
    case 0uLL:
      v5->_state = 0;
      break;
  }

  objc_sync_exit(v5);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(v5);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v5);
    Name = sel_getName(a2);
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i New state : %lx", v14, ClassName, Name, 202, v5->_state);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(v5);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(v5);
    v19 = sel_getName(a2);
    state = v5->_state;
    *buf = 67110146;
    v23 = v17;
    v24 = 2082;
    v25 = v18;
    v26 = 2082;
    v27 = v19;
    v28 = 1024;
    v29 = 202;
    v30 = 2048;
    v31 = state;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i New state : %lx", buf, 0x2Cu);
  }

  handler = v5->_handler;
  if (handler)
  {
    handler[2](handler, v5->_state);
  }
}

@end