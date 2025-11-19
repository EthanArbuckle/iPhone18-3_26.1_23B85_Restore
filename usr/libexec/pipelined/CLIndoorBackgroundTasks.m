@interface CLIndoorBackgroundTasks
- (CLIndoorBackgroundTasks)init;
- (CLIndoorBackgroundTasks)initWithService:(id)a3;
- (void)checkIn;
- (void)handleCheckIn:(id)a3 withPolicy:(const void *)a4 andName:(const char *)a5;
- (void)handleTileCleanup:(id)a3;
- (void)handleTileCleanupCheckIn:(id)a3;
- (void)handleVacuumDBs:(id)a3;
@end

@implementation CLIndoorBackgroundTasks

- (CLIndoorBackgroundTasks)init
{
  [(CLIndoorBackgroundTasks *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLIndoorBackgroundTasks)initWithService:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLIndoorBackgroundTasks;
  v5 = [(CLIndoorBackgroundTasks *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, v4);
    [(CLIndoorBackgroundTasks *)v6 checkIn];
    v7 = v6;
  }

  return v6;
}

- (void)checkIn
{
  objc_initWeak(&location, self);
  if (qword_10045B070 != -1)
  {
    sub_100387B5C();
    v3 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Checking in to activities", buf, 2u);
  }

LABEL_4:
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3321888768;
  handler[2] = sub_100351678;
  handler[3] = &unk_10044B070;
  objc_copyWeak(buf, &location);
  objc_copyWeak(&v9, buf);
  xpc_activity_register("com.apple.indoor.ClearTiles", XPC_ACTIVITY_CHECK_IN, handler);
  objc_destroyWeak(buf);
  objc_initWeak(buf, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_10035180C;
  v5[3] = &unk_10044B0A0;
  objc_copyWeak(&v4, buf);
  objc_copyWeak(&v6, &v4);
  xpc_activity_register("com.apple.indoor.VacuumDBs", XPC_ACTIVITY_CHECK_IN, v5);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)handleCheckIn:(id)a3 withPolicy:(const void *)a4 andName:(const char *)a5
{
  v7 = a3;
  v8 = xpc_activity_copy_criteria(v7);
  if (v8)
  {
    sub_100351F14(buf, v8);
    v9 = *a4;
    if (buf[0] == 1 && (v9 & 1) != 0)
    {
      if (*&v30[4] != *(a4 + 1))
      {
        goto LABEL_35;
      }
    }

    else if (buf[0] != v9)
    {
      goto LABEL_35;
    }

    v10 = *(a4 + 16);
    if (v31 == 1 && (v10 & 1) != 0)
    {
      if (v32 != *(a4 + 3))
      {
        goto LABEL_35;
      }
    }

    else if (v31 != v10)
    {
      goto LABEL_35;
    }

    v12 = *(a4 + 32);
    if (v33 == 1 && (v12 & 1) != 0)
    {
      if (v34 != *(a4 + 5))
      {
        goto LABEL_35;
      }
    }

    else if (v33 != v12)
    {
      goto LABEL_35;
    }

    v13 = *(a4 + 6);
    if (__s1 != v13 && (!__s1 || !v13 || strcmp(__s1, v13)) || v36 != *(a4 + 14))
    {
LABEL_35:
      if (qword_10045B070 != -1)
      {
        sub_100387B5C();
      }

      v16 = qword_10045B078;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      sub_100350E94(buf, &__p);
      v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v18 = __p.__r_.__value_.__r.__words[0];
      sub_100350E94(a4, &v28);
      p_p = &__p;
      if (v17 < 0)
      {
        p_p = v18;
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v28;
      }

      else
      {
        v20 = v28.__r_.__value_.__r.__words[0];
      }

      *v22 = 136446722;
      v23 = a5;
      v24 = 2082;
      v25 = p_p;
      v26 = 2082;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s activity registered as %{public}s. Changing to %{public}s", v22, 0x20u);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_45:

        sub_100351DC0(a4, v8);
        xpc_activity_set_criteria(v7, v8);
        goto LABEL_46;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_45;
    }

    if (qword_10045B070 != -1)
    {
      sub_100387B5C();
    }

    v14 = qword_10045B078;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100351F14(v22, v8);
      sub_100350E94(v22, &__p);
      v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(v28.__r_.__value_.__l.__data_) = 136446466;
      *(v28.__r_.__value_.__r.__words + 4) = a5;
      WORD2(v28.__r_.__value_.__r.__words[1]) = 2082;
      *(&v28.__r_.__value_.__r.__words[1] + 6) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s activity already registered: %{public}s", &v28, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    sub_100351DC0(a4, v8);
    xpc_activity_set_criteria(v7, v8);
    if (qword_10045B070 != -1)
    {
      sub_100387B84();
    }

    v11 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *v30 = a5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registering %{public}s activity for the first time", buf, 0xCu);
    }
  }

LABEL_46:
}

- (void)handleVacuumDBs:(id)a3
{
  v4 = a3;
  if (xpc_activity_set_state(v4, 4))
  {
    if (qword_10045B070 == -1)
    {
      v7 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
LABEL_6:
        WeakRetained = objc_loadWeakRetained(&self->_service);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1003522CC;
        v11[3] = &unk_100432828;
        v12 = v4;
        v6 = objc_retainBlock(v11);
        [WeakRetained fullyVacuumAllDBsWithReply:v6];

LABEL_7:
        return;
      }
    }

    else
    {
      sub_100387B84();
      v7 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Requesting vacuum of databases", buf, 2u);
    goto LABEL_6;
  }

  if (qword_10045B070 == -1)
  {
    v9 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_100387B84();
    v9 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }
  }

  *buf = 0;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set tile cleanup to continue state", buf, 2u);
}

- (void)handleTileCleanupCheckIn:(id)a3
{
  v4 = a3;
  *buf = sub_1000DD44C();
  *&buf[8] = v5;
  v7 = 0;
  if (sub_100008F80(buf, &v7))
  {
    [(CLIndoorBackgroundTasks *)self handleCheckIn:v4 withPolicy:&byte_10045DAC8 andName:"tile cleanup"];
    if (qword_10045B070 != -1)
    {
      sub_100387B5C();
    }

    v6 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *&buf[4] = *&qword_10045DAD0 / 3600.0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "@CtsClear, override, %{public}.1f", buf, 0xCu);
    }
  }

  else
  {
    [(CLIndoorBackgroundTasks *)self handleCheckIn:v4 withPolicy:&byte_10045DA48 andName:"tile cleanup"];
  }
}

- (void)handleTileCleanup:(id)a3
{
  v4 = a3;
  if (xpc_activity_set_state(v4, 4))
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B84();
    }

    v5 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Requesting periodic tile cleanup", buf, 2u);
    }

    v6 = objc_alloc_init(CLIndoorTileEvictionPolicy);
    [(CLIndoorTileEvictionPolicy *)v6 setActivity:v4];
    *buf = sub_1000DD44C();
    *&buf[8] = v7;
    v18 = 0;
    if (sub_100008F80(buf, &v18))
    {
      v8 = *&qword_10045DAE0;
      if (!byte_10045DAD8)
      {
        v8 = *&qword_10045DAD0 * 0.5;
      }

      [(CLIndoorTileEvictionPolicy *)v6 setMaxModifiedAge:172800.0 - (*&qword_10045DAD0 + v8)];
      if (qword_10045B070 != -1)
      {
        sub_100387B5C();
      }

      v9 = qword_10045B078;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        [(CLIndoorTileEvictionPolicy *)v6 maxModifiedAge];
        *buf = 134349056;
        *&buf[4] = v10 / 3600.0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "@TileEvict, override, %{public}.1f", buf, 0xCu);
      }
    }

    else
    {
      v12 = *&qword_10045DA50;
      v13 = byte_10045DA58;
      v14 = qword_10045DA60;
      [(CLIndoorTileEvictionPolicy *)v6 maxModifiedAge];
      v16 = v12 * 0.5;
      if (v13)
      {
        v16 = *&v14;
      }

      [(CLIndoorTileEvictionPolicy *)v6 setMaxModifiedAge:v15 - (v12 + v16)];
    }

    WeakRetained = objc_loadWeakRetained(&self->_service);
    [WeakRetained clearTiles:v6];
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B84();
    }

    v11 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "@CtsClear, Failed to set tile cleanup to continue state", buf, 2u);
    }
  }
}

@end