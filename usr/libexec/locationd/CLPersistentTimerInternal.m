@interface CLPersistentTimerInternal
- (void)invalidate;
@end

@implementation CLPersistentTimerInternal

- (void)invalidate
{
  [(CLSilo *)self->_silo assertInside];
  pcTimer = self->_pcTimer;
  if (pcTimer)
  {
    v4 = pcTimer;
    self->_pcTimer = 0;
    if (*(&self->_strIdentifier.__rep_.__l + 23) < 0)
    {
      sub_100007244(__dst, self->_strIdentifier.__rep_.__l.__data_, self->_strIdentifier.__rep_.__l.__size_);
    }

    else
    {
      *__dst = *self->_strIdentifier.__rep_.__s.__data_;
      v14 = *(&self->_strIdentifier.__rep_.__l + 2);
    }

    if (qword_1025D4870 != -1)
    {
      sub_10197AD24();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v6 = __dst;
      if (v14 < 0)
      {
        v6 = __dst[0];
      }

      *buf = 136315394;
      v20 = v6;
      v21 = 2048;
      v22 = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Scheduling invalidation, %s, %p", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197B550(buf);
      v8 = __dst;
      if (v14 < 0)
      {
        v8 = __dst[0];
      }

      v15 = 136315394;
      v16 = v8;
      v17 = 2048;
      v18 = v4;
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLPersistentTimerInternal invalidate]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v7 = +[CLSilo main];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3321888768;
    v10[2] = sub_100073D4C;
    v10[3] = &unk_10247F8D8;
    if (SHIBYTE(v14) < 0)
    {
      sub_100007244(&__p, __dst[0], __dst[1]);
    }

    else
    {
      __p = *__dst;
      v12 = v14;
    }

    v10[4] = v4;
    [v7 async:v10];
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

@end