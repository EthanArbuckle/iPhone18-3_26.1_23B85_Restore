@interface PowerlogSubkeyController
- (id)cacheArray;
- (id)initForSubkey:(__CFString *)a3;
- (void)logHIPStatusToPowerlogLite:(id)a3;
- (void)logToPowerlog:(__CFString *)a3;
- (void)logToPowerlogLite;
- (void)printPowerLogDictionary;
- (void)setIntValue:(int)a3 forKey:(__CFString *)a4;
@end

@implementation PowerlogSubkeyController

- (id)cacheArray
{
  result = qword_1000AABC8;
  if (!qword_1000AABC8)
  {
    result = objc_alloc_init(NSMutableArray);
    qword_1000AABC8 = result;
  }

  return result;
}

- (id)initForSubkey:(__CFString *)a3
{
  v6.receiver = self;
  v6.super_class = PowerlogSubkeyController;
  v4 = [(PowerlogSubkeyController *)&v6 init];
  if (v4)
  {
    v4->_state = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v4->_stateLastLogged = 0;
    v4->_subkey = a3;
  }

  return v4;
}

- (void)setIntValue:(int)a3 forKey:(__CFString *)a4
{
  valuePtr = a3;
  if (a4)
  {
    state = self->_state;
    if (state)
    {
      sub_100002FB4(state, a4, kCFNumberIntType, &valuePtr);
    }
  }
}

- (void)logToPowerlog:(__CFString *)a3
{
  if (self->_subkey)
  {
    state = self->_state;
    if (state)
    {
      if (CFDictionaryGetCount(state) >= 1)
      {
        if (self->_stateLastLogged && [(__CFDictionary *)self->_state isEqualToDictionary:?])
        {
          if (byte_1000AB2F8 == 1)
          {
            v6 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              subkey = self->_subkey;
              v15 = 136315394;
              v16 = "[PowerlogSubkeyController logToPowerlog:]";
              v17 = 2112;
              v18 = subkey;
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> %s: no change in subkey %@", &v15, 0x16u);
            }
          }
        }

        else
        {
          v8 = self->_subkey;
          if (PLShouldLogRegisteredEvent())
          {
            stateLastLogged = self->_stateLastLogged;
            if (stateLastLogged)
            {
              CFRelease(stateLastLogged);
            }

            self->_stateLastLogged = CFDictionaryCreateCopy(kCFAllocatorDefault, self->_state);
            if (a3)
            {
              CFDictionarySetValue(self->_state, @"Time", a3);
            }

            v10 = self->_subkey;
            v11 = self->_state;
            PLLogRegisteredEvent();
            if (byte_1000AB2F8 == 1)
            {
              v12 = qword_1000AB718;
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
              {
                v13 = self->_subkey;
                v14 = self->_state;
                v15 = 136315650;
                v16 = "[PowerlogSubkeyController logToPowerlog:]";
                v17 = 2112;
                v18 = v13;
                v19 = 2112;
                v20 = v14;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<Notice> %s: logged subkey %@, dict %@", &v15, 0x20u);
              }
            }

            CFDictionaryRemoveValue(self->_state, @"Time");
          }
        }
      }
    }
  }
}

- (void)printPowerLogDictionary
{
  if (byte_1000AB2F8 == 1)
  {
    v3 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      state = self->_state;
      v5 = 138412290;
      v6 = state;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<Notice> %@", &v5, 0xCu);
    }
  }
}

- (void)logToPowerlogLite
{
  subkey = self->_subkey;
  if (PLShouldLogRegisteredEvent())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(PowerlogSubkeyController *)self cacheArray];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          if (v9)
          {
            v17[0] = @"Time";
            v18[0] = [v9 objectAtIndex:0];
            v17[1] = @"thermalLevel";
            v18[1] = [v9 objectAtIndex:1];
            v17[2] = @"pressureLevel";
            v18[2] = [v9 objectAtIndex:2];
            [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
            v10 = self->_subkey;
            PLLogRegisteredEvent();
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v6);
    }

    [-[PowerlogSubkeyController cacheArray](self "cacheArray")];
  }

  else if (byte_1000AB2F8 == 1)
  {
    v11 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_subkey;
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> Denied to log to lite mode powerlog %@", buf, 0xCu);
    }
  }
}

- (void)logHIPStatusToPowerlogLite:(id)a3
{
  subkey = self->_subkey;
  if (PLShouldLogRegisteredEvent())
  {
    v9[0] = @"Time";
    v10[0] = [a3 objectAtIndex:0];
    v9[1] = @"status";
    v10[1] = [a3 objectAtIndex:1];
    v9[2] = @"client";
    v10[2] = [a3 objectAtIndex:2];
    [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
    v6 = self->_subkey;
    PLLogRegisteredEvent();
  }

  else if (byte_1000AB2F8 == 1)
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Denied to log to lite mode powerlog", v8, 2u);
    }
  }
}

@end