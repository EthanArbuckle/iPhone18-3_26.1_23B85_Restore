@interface CLBatchedSensorService
+ (BOOL)isSupported;
- (CLBatchedSensorService)initWithClientProtocol:(id)a3;
- (ConnectionInfo)info;
- (id).cxx_construct;
- (void)beginService;
- (void)dealloc;
- (void)disableProvider;
- (void)enableProvider;
- (void)endService;
- (void)registerForData:(id)a3;
- (void)setInfo:(ConnectionInfo *)a3;
- (void)unregisterForData:(id)a3;
@end

@implementation CLBatchedSensorService

+ (BOOL)isSupported
{
  if (qword_10265AC10 != -1)
  {
    sub_101959F68();
  }

  return byte_10265AC08;
}

- (CLBatchedSensorService)initWithClientProtocol:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLBatchedSensorService;
  result = [(CLBatchedSensorService *)&v4 initWithInboundProtocol:&OBJC_PROTOCOL___CLBatchedSensorServiceProtocol outboundProtocol:a3];
  if (result)
  {
    result->_clients = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLBatchedSensorService;
  [(CLBatchedSensorService *)&v3 dealloc];
}

- (void)beginService
{
  [-[CLBatchedSensorService universe](self "universe")];
  if (qword_1025D4540 != -1)
  {
    sub_101959F7C();
  }

  v3 = qword_1025D4548;
  if (os_log_type_enabled(qword_1025D4548, OS_LOG_TYPE_DEFAULT))
  {
    p_info = &self->_info;
    if (*(&self->_info.name.__rep_.__l + 23) < 0)
    {
      p_info = p_info->name.__rep_.__l.__data_;
    }

    v5 = 136446210;
    v6 = p_info;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "[service-base-%{public}s] beginning service", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101959F90();
  }

  self->_clients = objc_opt_new();
}

- (void)endService
{
  [-[CLBatchedSensorService universe](self "universe")];
  if (qword_1025D4540 != -1)
  {
    sub_101959F7C();
  }

  v3 = qword_1025D4548;
  if (os_log_type_enabled(qword_1025D4548, OS_LOG_TYPE_DEFAULT))
  {
    p_info = &self->_info;
    if (*(&self->_info.name.__rep_.__l + 23) < 0)
    {
      p_info = p_info->name.__rep_.__l.__data_;
    }

    v5 = 136446210;
    v6 = p_info;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "[service-base-%{public}s] ending service", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195A0A8();
  }

  self->_clients = 0;
}

- (void)registerForData:(id)a3
{
  [(NSMutableSet *)self->_clients addObject:?];
  if (qword_1025D4540 != -1)
  {
    sub_101959F7C();
  }

  v5 = qword_1025D4548;
  if (os_log_type_enabled(qword_1025D4548, OS_LOG_TYPE_DEFAULT))
  {
    p_info = &self->_info;
    if (*(&self->_info.name.__rep_.__l + 23) < 0)
    {
      p_info = p_info->name.__rep_.__l.__data_;
    }

    v7 = [(NSMutableSet *)self->_clients count];
    *buf = 136446722;
    v23 = p_info;
    v24 = 2050;
    v25 = a3;
    v26 = 1026;
    v27 = v7;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[service-base-%{public}s] added client %{public}p, num clients %{public}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4540 != -1)
    {
      sub_10195A1C0();
    }

    data = &self->_info;
    if (*(&self->_info.name.__rep_.__l + 23) < 0)
    {
      data = data->name.__rep_.__l.__data_;
    }

    v11 = [(NSMutableSet *)self->_clients count];
    v16 = 136446722;
    v17 = data;
    v18 = 2050;
    v19 = a3;
    v20 = 1026;
    v21 = v11;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBatchedSensorService registerForData:]", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v8 = sub_1000A23E0();
  v9 = &self->_info;
  if (*(&v9->name.__rep_.__l + 23) < 0)
  {
    sub_100007244(__p, v9->name.__rep_.__l.__data_, v9->name.__rep_.__l.__size_);
  }

  else
  {
    *__p = *v9->name.__rep_.__s.__data_;
    v14 = *(&v9->name.__rep_.__l + 2);
  }

  var0 = v9->var0;
  sub_100E044BC(v8, __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)unregisterForData:(id)a3
{
  [(NSMutableSet *)self->_clients removeObject:?];
  if (qword_1025D4540 != -1)
  {
    sub_101959F7C();
  }

  v5 = qword_1025D4548;
  if (os_log_type_enabled(qword_1025D4548, OS_LOG_TYPE_DEFAULT))
  {
    p_info = &self->_info;
    if (*(&self->_info.name.__rep_.__l + 23) < 0)
    {
      p_info = p_info->name.__rep_.__l.__data_;
    }

    v7 = [(NSMutableSet *)self->_clients count];
    *buf = 136446722;
    v10 = p_info;
    v11 = 2050;
    v12 = a3;
    v13 = 1026;
    v14 = v7;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[service-base-%{public}s] removed client %{public}p, num clients left %{public}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4540 != -1)
    {
      sub_10195A1C0();
    }

    [(NSMutableSet *)self->_clients count];
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBatchedSensorService unregisterForData:]", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }
}

- (void)enableProvider
{
  p_info = &self->_info;
  v3 = *(&self->_info.name.__rep_.__l + 23);
  if (v3 >= 0)
  {
    size = *(&self->_info.name.__rep_.__l + 23);
  }

  else
  {
    size = self->_info.name.__rep_.__l.__size_;
  }

  v5 = *&aAcc800fp_3[8];
  if (byte_1025D91AF >= 0)
  {
    v5 = byte_1025D91AF;
  }

  if (size == v5)
  {
    v6 = v3 >= 0 ? &self->_info : p_info->name.__rep_.__l.__data_;
    v7 = byte_1025D91AF >= 0 ? aAcc800fp_3 : *aAcc800fp_3;
    if (!memcmp(v6, v7, size))
    {
      goto LABEL_25;
    }
  }

  v8 = qword_1025D91C0;
  if (byte_1025D91CF >= 0)
  {
    v8 = byte_1025D91CF;
  }

  if (size == v8)
  {
    v9 = v3 >= 0 ? p_info : p_info->name.__rep_.__l.__data_;
    v10 = byte_1025D91CF >= 0 ? aDmfp_3 : *aDmfp_3;
    if (!memcmp(v9, v10, size))
    {
LABEL_25:
      v11 = *(*sub_100023ED4(0) + 176);

      v11();
    }
  }
}

- (void)disableProvider
{
  p_info = &self->_info;
  v3 = *(&self->_info.name.__rep_.__l + 23);
  if (v3 >= 0)
  {
    size = *(&self->_info.name.__rep_.__l + 23);
  }

  else
  {
    size = self->_info.name.__rep_.__l.__size_;
  }

  v5 = *&aAcc800fp_3[8];
  if (byte_1025D91AF >= 0)
  {
    v5 = byte_1025D91AF;
  }

  if (size == v5)
  {
    v6 = v3 >= 0 ? &self->_info : p_info->name.__rep_.__l.__data_;
    v7 = byte_1025D91AF >= 0 ? aAcc800fp_3 : *aAcc800fp_3;
    if (!memcmp(v6, v7, size))
    {
      goto LABEL_25;
    }
  }

  v8 = qword_1025D91C0;
  if (byte_1025D91CF >= 0)
  {
    v8 = byte_1025D91CF;
  }

  if (size == v8)
  {
    v9 = v3 >= 0 ? p_info : p_info->name.__rep_.__l.__data_;
    v10 = byte_1025D91CF >= 0 ? aDmfp_3 : *aDmfp_3;
    if (!memcmp(v9, v10, size))
    {
LABEL_25:
      v11 = *(*sub_100023ED4(0) + 176);

      v11();
    }
  }
}

- (ConnectionInfo)info
{
  v3 = &result->name.__rep_.__l + 1;
  if (result[1].name.__rep_.__s.__data_[7] < 0)
  {
    result = sub_100007244(retstr, v3->__data_, *&result->var0);
  }

  else
  {
    retstr->name.__rep_.__l = *v3;
    *(&retstr->name.__rep_.__l + 2) = result[1].name.__rep_.__l.__data_;
  }

  retstr->var0 = v3[1].__size_;
  return result;
}

- (void)setInfo:(ConnectionInfo *)a3
{
  p_info = &self->_info;
  std::string::operator=(&self->_info, a3);
  p_info->var0 = a3->var0;
}

- (id).cxx_construct
{
  *(self + 24) = 0uLL;
  *(self + 2) = 0;
  return self;
}

@end