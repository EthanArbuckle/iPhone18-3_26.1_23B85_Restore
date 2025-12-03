@interface NFThermalMonitor
- (void)thermalStateChanged:(unint64_t)changed;
@end

@implementation NFThermalMonitor

- (void)thermalStateChanged:(unint64_t)changed
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  switch(changed)
  {
    case 2uLL:
      if (selfCopy->_state != 4)
      {
        if (NFThermalMonitorProvidedBySMC())
        {
          temperaturePollingHandler = selfCopy->_temperaturePollingHandler;
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
      selfCopy->_state = v6;
      break;
    case 0uLL:
      selfCopy->_state = 0;
      break;
  }

  objc_sync_exit(selfCopy);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(selfCopy);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(selfCopy);
    Name = sel_getName(a2);
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i New state : %lx", v14, ClassName, Name, 202, selfCopy->_state);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(selfCopy);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(selfCopy);
    v19 = sel_getName(a2);
    state = selfCopy->_state;
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

  handler = selfCopy->_handler;
  if (handler)
  {
    handler[2](handler, selfCopy->_state);
  }
}

@end