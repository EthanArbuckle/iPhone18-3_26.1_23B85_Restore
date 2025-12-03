@interface Keybag
+ (BOOL)afterFirstUserUnlock;
+ (BOOL)canRunWhenLocked;
+ (BOOL)supportsMultiUser;
- (Keybag)init;
- (Keybag)initWithDelegate:(id)delegate;
- (KeybagDelegate)delegate;
- (void)dealloc;
- (void)onQueueUpdateDelegate;
@end

@implementation Keybag

+ (BOOL)afterFirstUserUnlock
{
  v2 = MKBDeviceUnlockedSinceBoot();
  if ((v2 & 0x80000000) == 0)
  {
    return v2 == 1;
  }

  v4 = v2;
  if (qword_10045B050 != -1)
  {
    sub_100388AB8();
  }

  v5 = qword_10045B058;
  v6 = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v6)
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Couldn't get unlocked since boot state.  result: %d", v7, 8u);
    return 0;
  }

  return result;
}

- (void)onQueueUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (+[Keybag isLocked])
  {
    [WeakRetained keybagDidLock];
  }

  else
  {
    [WeakRetained keybagDidUnlock];
  }
}

+ (BOOL)canRunWhenLocked
{
  sub_1000DD3F8(v4);
  sub_100322CE0(v4, &__p, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v7.__r_.__value_.__l.__size_ != 1 || *v7.__r_.__value_.__l.__data_ != 65;
    operator delete(v7.__r_.__value_.__l.__data_);
    if (v6 < 0)
    {
      goto LABEL_12;
    }

    return v2;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) != 1)
  {
    v2 = 1;
    if (v6 < 0)
    {
      goto LABEL_12;
    }

    return v2;
  }

  v2 = v7.__r_.__value_.__s.__data_[0] != 65;
  if ((v6 & 0x80000000) == 0)
  {
    return v2;
  }

LABEL_12:
  operator delete(__p);
  return v2;
}

+ (BOOL)supportsMultiUser
{
  if (qword_10045DB10 != -1)
  {
    sub_100388ACC();
  }

  return byte_10045DB0A;
}

- (Keybag)init
{
  [(Keybag *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (Keybag)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = Keybag;
  v5 = [(Keybag *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = MKBDeviceFormattedForContentProtection();
    v8 = v7;
    if (v7)
    {
      if (v7 != 1)
      {
        if (qword_10045B050 != -1)
        {
          sub_100388AE0();
        }

        v9 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Bad response for formatted for content protection: %d", buf, 8u);
        }
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    v6->_formattedWithProtection = v10;
    v11 = dispatch_queue_create("com.apple.indoor.keybag", 0);
    q = v6->_q;
    v6->_q = v11;

    objc_initWeak(&location, v6);
    objc_copyWeak(&v20, &location);
    uTF8String = [kMobileKeyBagLockStatusNotification UTF8String];
    v14 = v6->_q;
    *buf = _NSConcreteStackBlock;
    v24 = 3321888768;
    v25 = sub_10037E0F0;
    v26 = &unk_10044BDE8;
    objc_copyWeak(&v27, &v20);
    v15 = objc_retainBlock(buf);
    objc_destroyWeak(&v27);
    v16 = notify_register_dispatch(uTF8String, &v6->_keybagToken, v14, v15);

    if (v16)
    {
      if (qword_10045B050 != -1)
      {
        sub_100388AE0();
      }

      v17 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to register for lock state notification change: %u", buf, 8u);
      }

      v6->_keybagToken = 0;
    }

    [(Keybag *)v6 onQueueUpdateDelegate];
    v18 = v6;
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  keybagToken = self->_keybagToken;
  if (keybagToken)
  {
    notify_cancel(keybagToken);
  }

  v4.receiver = self;
  v4.super_class = Keybag;
  [(Keybag *)&v4 dealloc];
}

- (KeybagDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end