@interface RSDRemoteLoopbackDevice
- (BOOL)connectable;
- (const)local_address;
- (const)remote_address;
- (int)connectToService:(char *)a3 withTcpOption:(id *)a4;
- (int)listenForService:(char *)a3 port:(char *)a4;
- (unint64_t)tlsRequirement;
- (unsigned)interface_index;
@end

@implementation RSDRemoteLoopbackDevice

- (unint64_t)tlsRequirement
{
  v2 = sub_10001A4AC(qword_100064680, @"rsd_loopback_tls_requirement", @"loopback-tls-requirement", @"LoopbackEncryptionIsRequired");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 2;
  }

  v5 = qword_100064680;
  if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = sub_100019E60(v4);
    v8 = &unk_100053A79;
    if (!v3)
    {
      v8 = " by default";
    }

    v10 = 136315394;
    v11 = v7;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TLS is %s for loopback%s", &v10, 0x16u);
  }

  return v4;
}

- (BOOL)connectable
{
  if (byte_1000646A0)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = RSDRemoteLoopbackDevice;
  return [(RSDRemoteDevice *)&v5 connectable];
}

- (unsigned)interface_index
{
  result = _os_crash();
  __break(1u);
  return result;
}

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

- (int)listenForService:(char *)a3 port:(char *)a4
{
  v5 = socket(2, 1, 0);
  if (v5 == -1)
  {
    v9 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_ERROR))
    {
      sub_100044224(v9);
    }

    return -1;
  }

  v6 = v5;
  *&v19.sa_len = 512;
  *&v19.sa_data[2] = inet_addr("127.0.0.1");
  *&v19.sa_data[6] = 0;
  if (bind(v6, &v19, 0x10u) == -1)
  {
    v10 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_ERROR))
    {
      sub_100044198(v10);
    }

    goto LABEL_16;
  }

  if (listen(v6, 128) == -1)
  {
    v11 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_ERROR))
    {
      sub_10004410C(v11);
    }

    goto LABEL_16;
  }

  v14 = 16;
  if (getsockname(v6, &v19, &v14) == -1)
  {
    v12 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_ERROR))
    {
      sub_100044080(v12);
    }

LABEL_16:
    close(v6);
    return -1;
  }

  v7 = bswap32(*v19.sa_data) >> 16;
  v8 = qword_100064680;
  if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v16 = qword_100064688;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@> Bound to localhost:%d", buf, 0x12u);
  }

  asprintf(a4, "%d", v7);
  return v6;
}

- (int)connectToService:(char *)a3 withTcpOption:(id *)a4
{
  if (byte_1000646A0 == 1)
  {
    v4 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_ERROR))
    {
      sub_100044454(v4);
    }

    return -1;
  }

  v6 = socket(2, 1, 0);
  if (v6 == -1)
  {
    v10 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_ERROR))
    {
      sub_100044224(v10);
    }

    return -1;
  }

  v7 = v6;
  if (fcntl(v6, 4, 4) == -1)
  {
    v11 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_ERROR))
    {
      sub_1000443C8(v11);
    }

    goto LABEL_19;
  }

  v8 = strtol(a3, 0, 0);
  if ((v8 - 0x10000) <= 0xFFFFFFFFFFFF0000)
  {
    v9 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_ERROR))
    {
      sub_10004433C(a3, v9);
    }

LABEL_19:
    close(v7);
    return -1;
  }

  v20[0] = 512;
  v20[1] = bswap32(v8) >> 16;
  v21 = inet_addr("127.0.0.1");
  v22 = 0;
  memset(&v15, 0, 24);
  v15.sae_dstaddr = v20;
  *(&v15.sae_dstaddrlen + 1) = 0;
  v15.sae_dstaddrlen = 16;
  if (connectx(v7, &v15, 0, 0, 0, 0, 0, 0) && *__error() != 36)
  {
    v13 = qword_100064680;
    if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_ERROR))
    {
      sub_1000442B0(v13);
    }

    goto LABEL_19;
  }

  v12 = qword_100064680;
  if (os_log_type_enabled(qword_100064680, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v17 = qword_100064688;
    v18 = 2080;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@> connectx(2) succeeded to %s", buf, 0x16u);
  }

  return v7;
}

@end