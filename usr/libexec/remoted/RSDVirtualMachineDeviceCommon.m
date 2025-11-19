@interface RSDVirtualMachineDeviceCommon
- ($53DFC3DD9429D54544A2B2B9F14ED761)optionsForService:(SEL)a3;
- (const)local_address;
- (const)remote_address;
- (int)connectVsock:(unsigned int)a3;
- (int)listenVsock:(char *)a3 port:(char *)a4;
- (unsigned)interface_index;
@end

@implementation RSDVirtualMachineDeviceCommon

- (const)remote_address
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (const)local_address
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (unsigned)interface_index
{
  result = _os_crash();
  __break(1u);
  return result;
}

- ($53DFC3DD9429D54544A2B2B9F14ED761)optionsForService:(SEL)a3
{
  memset(retstr, 170, sizeof($53DFC3DD9429D54544A2B2B9F14ED761));
  v6.receiver = self;
  v6.super_class = RSDVirtualMachineDeviceCommon;
  result = [($53DFC3DD9429D54544A2B2B9F14ED761 *)&v6 optionsForService:a4];
  retstr->var0 = 1;
  return result;
}

- (int)listenVsock:(char *)a3 port:(char *)a4
{
  v6 = socket(40, 1, 1);
  if (v6 == -1)
  {
    v8 = qword_1000646A8;
    if (os_log_type_enabled(qword_1000646A8, OS_LOG_TYPE_ERROR))
    {
      sub_1000447CC(self, v8);
    }

    return -1;
  }

  v7 = v6;
  *&v14.sa_len = 10252;
  *&v14.sa_data[2] = -1;
  if (bind(v6, &v14, 0xCu) == -1)
  {
    v9 = qword_1000646A8;
    if (os_log_type_enabled(qword_1000646A8, OS_LOG_TYPE_ERROR))
    {
      sub_100044744(self, v9);
    }

    goto LABEL_14;
  }

  if (listen(v7, 128) == -1)
  {
    v10 = qword_1000646A8;
    if (os_log_type_enabled(qword_1000646A8, OS_LOG_TYPE_ERROR))
    {
      sub_1000446BC(self, v10);
    }

    goto LABEL_14;
  }

  v13 = 12;
  if (getsockname(v7, &v14, &v13) == -1)
  {
    v11 = qword_1000646A8;
    if (os_log_type_enabled(qword_1000646A8, OS_LOG_TYPE_ERROR))
    {
      sub_100044634(self, v11);
    }

LABEL_14:
    close(v7);
    return -1;
  }

  asprintf(a4, "%d", *&v14.sa_data[2]);
  return v7;
}

- (int)connectVsock:(unsigned int)a3
{
  v5 = socket(40, 1, 1);
  if (v5 == -1)
  {
    v8 = qword_1000646A8;
    if (os_log_type_enabled(qword_1000646A8, OS_LOG_TYPE_ERROR))
    {
      sub_100044964(self, v8);
    }

    return -1;
  }

  v6 = v5;
  if (fcntl(v5, 4, 4) == -1)
  {
    v9 = qword_1000646A8;
    if (os_log_type_enabled(qword_1000646A8, OS_LOG_TYPE_ERROR))
    {
      sub_1000448DC(self, v9);
    }

    goto LABEL_13;
  }

  *&v12.sa_len = 10252;
  *&v12.sa_data[2] = a3;
  *&v12.sa_data[6] = 2;
  if (connect(v6, &v12, 0xCu) == -1 && *__error() != 36)
  {
    v10 = qword_1000646A8;
    if (os_log_type_enabled(qword_1000646A8, OS_LOG_TYPE_ERROR))
    {
      sub_100044854(self, v10);
    }

LABEL_13:
    close(v6);
    return -1;
  }

  v7 = qword_1000646A8;
  if (os_log_type_enabled(qword_1000646A8, OS_LOG_TYPE_INFO))
  {
    *&v12.sa_data[10] = 138543618;
    v13 = self;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@> connect(2) succeeded to %u", &v12.sa_data[10], 0x12u);
  }

  return v6;
}

@end