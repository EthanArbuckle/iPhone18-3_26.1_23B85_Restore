@interface MSDIpInterface
+ (id)getIpv4Interfaces;
@end

@implementation MSDIpInterface

+ (id)getIpv4Interfaces
{
  v21 = 0;
  v2 = objc_opt_new();
  if (getifaddrs(&v21))
  {
    sub_1000C4FA4();
LABEL_31:
    if (v21)
    {
      freeifaddrs(v21);
    }

    v18 = 0;
    goto LABEL_21;
  }

  v3 = v21;
  if (!v21)
  {
    goto LABEL_20;
  }

  do
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sa_family = v3->ifa_addr->sa_family;
      *buf = 136315394;
      *&buf[4] = "+[MSDIpInterface getIpv4Interfaces]";
      v25 = 1024;
      LODWORD(v26) = sa_family;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s - Address family:  %d", buf, 0x12u);
    }

    ifa_addr = v3->ifa_addr;
    if (ifa_addr->sa_family == 2)
    {
      v6 = inet_ntop(2, &ifa_addr->sa_data[2], v27, 0x10u);
      if (!v6)
      {
        sub_1000C51CC();
        goto LABEL_31;
      }

      v7 = [NSString stringWithUTF8String:v6];
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "+[MSDIpInterface getIpv4Interfaces]";
        v25 = 2114;
        v26 = v7;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s - Address:  %{public}@", buf, 0x16u);
      }

      if ([v7 isEqualToString:@"127.0.0.1"])
      {
        goto LABEL_16;
      }

      v9 = inet_ntop(2, &v3->ifa_netmask->sa_data[2], v27, 0x10u);
      if (v9)
      {
        v10 = [NSString stringWithUTF8String:v9];
        v11 = inet_ntop(2, &v3->ifa_dstaddr->sa_data[2], v27, 0x10u);
        if (v11)
        {
          v12 = [NSString stringWithUTF8String:v11];
          v13 = [NSString stringWithUTF8String:v3->ifa_name];
          v14 = v13;
          if (v13)
          {
            v22[0] = @"name";
            v22[1] = @"address";
            v23[0] = v13;
            v23[1] = v7;
            v22[2] = @"netMask";
            v22[3] = @"broadcastAddr";
            v23[2] = v10;
            v23[3] = v12;
            v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
            v16 = sub_100063A54();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "+[MSDIpInterface getIpv4Interfaces]";
              v25 = 2114;
              v26 = v15;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s - interface:  %{public}@", buf, 0x16u);
            }

            [v2 addObject:v15];
LABEL_16:

            goto LABEL_17;
          }

          v20 = sub_100063A54();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_1000C5040(buf, &buf[1], v20);
          }
        }

        else
        {
          sub_1000C5080();
        }
      }

      else
      {
        sub_1000C511C(buf);
        v10 = *buf;
      }

      goto LABEL_31;
    }

LABEL_17:
    v3 = v3->ifa_next;
  }

  while (v3);
  if (v21)
  {
    freeifaddrs(v21);
  }

LABEL_20:
  v18 = v2;
LABEL_21:

  return v18;
}

@end