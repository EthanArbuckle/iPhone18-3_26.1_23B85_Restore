@interface NRBabelInterfaceSocket
- (BOOL)handlePathUpdate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)setupLocalAddressCheckAgainst:(const in6_addr *)a3;
- (id)description;
- (void)addToProhibited:(id)a3;
- (void)dealloc;
- (void)readPackets;
- (void)sendPacket:(iovec *)a3 iovLen:(unsigned int)a4 toAddr:(const in6_addr *)a5;
@end

@implementation NRBabelInterfaceSocket

- (void)addToProhibited:(id)a3
{
  v17 = a3;
  v5 = nw_parameters_copy_prohibited_interfaces();
  if (!v5)
  {
    v6 = &v17;
    v7 = xpc_array_create(0, 0);
    if (!v7)
    {
      v10 = sub_1000CB9A8();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = sub_1000CB9A8();
        _NRLogWithArgs();
      }

      v5 = _os_log_pack_size();
      self = (&v17 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = *__error();
      v14 = _os_log_pack_fill();
      sub_10006BF98(v14, "nr_xpc_array_create");
      sub_1000CB9A8();
      _NRLogAbortWithPack();
LABEL_17:
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
      goto LABEL_7;
    }

    v5 = v7;
  }

  nwIf = self->_nwIf;
  v6 = nw_interface_copy_dictionary();
  if (v6)
  {
    xpc_array_append_value(v5, v6);
    nw_parameters_set_prohibited_interfaces();
    goto LABEL_11;
  }

  v3 = &qword_100229000;
  if (qword_100229100 != -1)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (_NRLogIsLevelEnabled())
  {
    if (v3[32] != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    ifIndex = self->_ifIndex;
    ifName = self->_ifName;
    _NRLogWithArgs();
  }

LABEL_11:

  v9 = v17;
}

- (BOOL)handlePathUpdate:(id)a3
{
  v4 = a3;
  v5 = [(NRBabelInterface *)self instance];
  if (v5)
  {
    if (nw_path_get_status(v4) == nw_path_status_satisfied)
    {
      if (![(NRBabelInterface *)self viable])
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          v22 = 1207;
          v25 = self;
          v16 = "";
          v19 = "[NRBabelInterfaceSocket handlePathUpdate:]";
          _NRLogWithArgs();
        }
      }

      [(NRBabelInterface *)self setViable:1, v16, v19, v22, v25];
      v6 = [NSString alloc];
      ifName = self->_ifName;
      v8 = [v5 addrStr];
      v9 = [v6 initWithFormat:@"for addr in $(ifconfig %@ | grep 'inet6 fdfd:' | sed -e 's/^[[:space:]]*//' | cut -d' ' -f2); do ifconfig %@ inet6 -alias $addr ; done ; ifconfig %@ inet6 %@/128", ifName, ifName, ifName, v8];

      system([v9 UTF8String]);
      mtu = nw_path_get_mtu();
      v11 = (mtu - 48);
      if (mtu > 559)
      {
        if (mtu >= 0x10030)
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            ifIndex = self->_ifIndex;
            status = v11;
            v23 = 1225;
            v17 = "";
            v20 = "[NRBabelInterfaceSocket handlePathUpdate:]";
            _NRLogWithArgs();
          }

          v11 = 0xFFFFLL;
        }
      }

      else
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          ifIndex = self->_ifIndex;
          status = v11;
          v23 = 1222;
          v17 = "";
          v20 = "[NRBabelInterfaceSocket handlePathUpdate:]";
          _NRLogWithArgs();
        }

        v11 = 512;
      }

      if ([(NRBabelInterface *)self mtu:v17]!= v11)
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          v14 = qword_1002290F8;
          v27 = [(NRBabelInterface *)self mtu];
          v29 = v11;
          v24 = 1229;
          v18 = "";
          v21 = "[NRBabelInterfaceSocket handlePathUpdate:]";
          _NRLogWithArgs();
        }

        [(NRBabelInterface *)self setMtu:v11, v18, v21, v24, v27, v29];
      }

      v12 = 1;
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v13 = qword_1002290F8;
        v25 = self;
        status = nw_path_get_status(v4);
        v22 = 1201;
        v16 = "";
        v19 = "[NRBabelInterfaceSocket handlePathUpdate:]";
        _NRLogWithArgs();
      }

      [(NRBabelInterface *)self setViable:0, v16, v19, v22, v25, status];
      [v5 purgeInterface:self];
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)setupLocalAddressCheckAgainst:(const in6_addr *)a3
{
  v31 = 0;
  if (getifaddrs(&v31))
  {
    v5 = __error();
    if (strerror_r(*v5, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }

LABEL_38:
    LOBYTE(v20) = 0;
    return v20;
  }

  v6 = v31;
  if (!v31)
  {
    v19 = 0;
LABEL_37:
    freeifaddrs(v19);
    goto LABEL_38;
  }

  v7 = &qword_100229000;
  v8 = &qword_100229000;
  while (1)
  {
    ifa_addr = v6->ifa_addr;
    if (ifa_addr->sa_family != 30)
    {
      goto LABEL_13;
    }

    v10 = self;
    if (v7[32] != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v11 = v8[31];
    if (_NRLogIsLevelEnabled())
    {
      if (v7[32] != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v12 = v8[31];
      v13 = v8;
      IPv6AddrString = createIPv6AddrString();
      v15 = createIPv6AddrString();
      [(NRBabelInterface *)v10 localAddress];
      v29 = v15;
      v30 = createIPv6AddrString();
      v27 = v10;
      v28 = IPv6AddrString;
      v26 = 990;
      v24 = "";
      v25 = "[NRBabelInterfaceSocket setupLocalAddressCheckAgainst:]";
      _NRLogWithArgs();

      v8 = v13;
      v7 = &qword_100229000;
    }

    v16 = [(NRBabelInterfaceSocket *)v10 ifName:v24];
    v17 = [v16 hasPrefix:@"ipsec"];

    if ((v17 & 1) == 0)
    {
      break;
    }

    if (ifa_addr->sa_data[6] == 253 && ifa_addr->sa_data[7] == 116)
    {
      goto LABEL_28;
    }

LABEL_12:

LABEL_13:
    v6 = v6->ifa_next;
    if (!v6)
    {
      v19 = v31;
      goto LABEL_37;
    }
  }

  if (*&ifa_addr[1].sa_data[6] != v10->_ifIndex || ifa_addr->sa_data[6] != 254 || (ifa_addr->sa_data[7] & 0xC0) != 0x80)
  {
    goto LABEL_12;
  }

LABEL_28:
  if (a3)
  {
    if (*a3->__u6_addr8 != *&ifa_addr->sa_data[6] || *&a3->__u6_addr32[2] != *&ifa_addr[1].sa_len)
    {
      goto LABEL_12;
    }
  }

  if (![(NRBabelInterface *)v10 isLocalAddressEqualTo:&ifa_addr->sa_data[6]])
  {
    if (v7[32] != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v21 = v8[31];
    if (_NRLogIsLevelEnabled())
    {
      if (v7[32] != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v22 = v8[31];
      [(NRBabelInterface *)v10 localAddress];
      v28 = createIPv6AddrString();
      v29 = createIPv6AddrString();
      v26 = 1010;
      v27 = v10;
      v24 = "";
      v25 = "[NRBabelInterfaceSocket setupLocalAddressCheckAgainst:]";
      _NRLogWithArgs();
    }
  }

  [(NRBabelInterface *)v10 setLocalAddress:&ifa_addr->sa_data[6], v24, v25, v26, v27, v28, v29];

  freeifaddrs(v31);
  if (!a3 || (v20 = [(NRBabelInterface *)v10 isLocalAddressEqualTo:a3]) != 0)
  {
    LOBYTE(v20) = 1;
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ifIndex = self->_ifIndex;
    v6 = ifIndex == [v4 ifIndex];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [NSString alloc];
  ifName = self->_ifName;
  v5 = [(NRBabelInterface *)self dtlsEnabled];
  v6 = "";
  if (v5)
  {
    v6 = "_DTLS";
  }

  v7 = [v3 initWithFormat:@"%@%s", ifName, v6];

  return v7;
}

- (void)readPackets
{
  v2 = self;
  v3 = [(NRBabelInterface *)self instance];
  if (!v3)
  {
    goto LABEL_102;
  }

  fd = v2->_fd;
  memset(v56, 0, sizeof(v56));
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  v50[0] = v55;
  v50[1] = 2000;
  v44 = v2;
LABEL_4:
  while (1)
  {
    *(&v49.msg_namelen + 1) = 0;
    *(&v49.msg_iovlen + 1) = 0;
    v49.msg_name = v51;
    v49.msg_namelen = 28;
    v49.msg_iov = v50;
    v49.msg_iovlen = 1;
    v49.msg_control = v56;
    *&v49.msg_controllen = 32;
    v5 = recvmsg(fd, &v49, 0);
    if (v5 < 0)
    {
      break;
    }

    if (v49.msg_namelen >= 0x1C && (msg_name = v49.msg_name) != 0)
    {
      if (*(v49.msg_name + 1) == 30)
      {
        if (*v49.msg_name <= 0x1Bu)
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            IPv6AddrString = *msg_name;
            msg_control = 28;
            v38 = 880;
            v36 = "";
            v37 = "[NRBabelInterfaceSocket readPackets]";
            _NRLogWithArgs();
          }

          continue;
        }

        v7 = v5;
        v8 = v49.msg_name + 8;
        if (*(v49.msg_name + 8) == 254 && (*(v49.msg_name + 9) & 0xC0) == 0x80 || (-[NRBabelInterfaceSocket ifName](v2, "ifName", v36, v37, v38, IPv6AddrString, msg_control, v41, v42), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasPrefix:@"ipsec"], v9, v2 = v44, (v10 & 1) != 0))
        {
          if (*(msg_name + 1) == 10266)
          {
            if (v49.msg_controllen - 33 >= 0xFFFFFFF3 && v49.msg_control == v56)
            {
              if (DWORD2(v56[0]) == 46)
              {
                if (HIDWORD(v56[1]) == v2->_ifIndex)
                {
                  if ([(NRBabelInterface *)v2 isLocalAddressEqualTo:v56 | 0xC])
                  {
                    goto LABEL_3;
                  }

                  if (*(v56 + 12) == 767 && *(&v56[1] + 4) == 0x600010000000000)
                  {
                    goto LABEL_3;
                  }

                  if (qword_100229100 != -1)
                  {
                    dispatch_once(&qword_100229100, &stru_1001FB6C8);
                  }

                  v12 = qword_1002290F8;
                  IsLevelEnabled = _NRLogIsLevelEnabled();

                  if (IsLevelEnabled)
                  {
                    v14 = sub_1000CB9A8();
                    v38 = 942;
                    IPv6AddrString = createIPv6AddrString();
                    v36 = "";
                    v37 = "[NRBabelInterfaceSocket readPackets]";
                    _NRLogWithArgs();
                  }

                  v2 = v44;
                  if ([v44 setupLocalAddressCheckAgainst:{v56 | 0xC, v36, v37}])
                  {
LABEL_3:
                    [v3 handlePacket:v55 length:v7 remoteAddr:v8 localAddr:v56 | 0xC babelInterface:v2 dtls:{0, v36, v37}];
                  }

                  else
                  {
                    v15 = sub_1000CB9A8();
                    v16 = _NRLogIsLevelEnabled();

                    v2 = v44;
                    if (v16)
                    {
                      v17 = sub_1000CB9A8();
                      v38 = 945;
                      IPv6AddrString = createIPv6AddrString();
                      v36 = "";
                      v37 = "[NRBabelInterfaceSocket readPackets]";
                      _NRLogWithArgs();

                      v2 = v44;
                    }
                  }

                  continue;
                }

                v43 = v3;
                v47 = 0u;
                v48 = 0u;
                v45 = 0u;
                v46 = 0u;
                v19 = [v3 interfaces];
                v20 = [v19 countByEnumeratingWithState:&v45 objects:v53 count:16];
                if (!v20)
                {
LABEL_87:

                  if (qword_100229100 != -1)
                  {
                    dispatch_once(&qword_100229100, &stru_1001FB6C8);
                  }

                  v2 = v44;
                  v3 = v43;
                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229100 != -1)
                    {
                      dispatch_once(&qword_100229100, &stru_1001FB6C8);
                    }

                    v32 = qword_1002290F8;
                    v33 = createIPv6AddrString();
                    v34 = createIPv6AddrString();
                    v41 = HIDWORD(v56[1]);
                    v42 = v44[12];
                    IPv6AddrString = v33;
                    msg_control = v34;
                    v38 = 934;
                    v36 = "";
                    v37 = "[NRBabelInterfaceSocket readPackets]";
                    _NRLogWithArgs();

                    v2 = v44;
                  }

                  continue;
                }

                v21 = v20;
                v22 = *v46;
LABEL_74:
                v23 = 0;
                while (1)
                {
                  if (*v46 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v45 + 1) + 8 * v23);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v25 = v24;
                    v26 = [v25 ifIndex];
                    if (v26 == HIDWORD(v56[1]))
                    {
                      v3 = v43;
                      [v43 handlePacket:v55 length:v7 remoteAddr:v8 localAddr:v56 | 0xC babelInterface:v25 dtls:0];

                      if (qword_100229100 != -1)
                      {
                        dispatch_once(&qword_100229100, &stru_1001FB6C8);
                      }

                      v27 = qword_1002290F8;
                      v28 = _NRLogIsLevelEnabled();

                      v2 = v44;
                      if (v28)
                      {
                        if (qword_100229100 != -1)
                        {
                          dispatch_once(&qword_100229100, &stru_1001FB6C8);
                        }

                        v29 = qword_1002290F8;
                        v30 = createIPv6AddrString();
                        v31 = createIPv6AddrString();
                        v41 = HIDWORD(v56[1]);
                        v42 = v44[12];
                        IPv6AddrString = v30;
                        msg_control = v31;
                        v38 = 930;
                        v36 = "";
                        v37 = "[NRBabelInterfaceSocket readPackets]";
                        _NRLogWithArgs();

                        v2 = v44;
                      }

                      goto LABEL_4;
                    }
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [v19 countByEnumeratingWithState:&v45 objects:v53 count:16];
                    if (!v21)
                    {
                      goto LABEL_87;
                    }

                    goto LABEL_74;
                  }
                }
              }

              if (qword_100229100 != -1)
              {
                dispatch_once(&qword_100229100, &stru_1001FB6C8);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100229100 != -1)
                {
                  dispatch_once(&qword_100229100, &stru_1001FB6C8);
                }

                IPv6AddrString = DWORD2(v56[0]);
                v38 = 903;
                v36 = "";
                v37 = "[NRBabelInterfaceSocket readPackets]";
                _NRLogWithArgs();
              }
            }

            else
            {
              if (qword_100229100 != -1)
              {
                dispatch_once(&qword_100229100, &stru_1001FB6C8);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100229100 != -1)
                {
                  dispatch_once(&qword_100229100, &stru_1001FB6C8);
                }

                msg_control = v49.msg_control;
                v41 = v56;
                v38 = 898;
                IPv6AddrString = v49.msg_controllen;
                v36 = "";
                v37 = "[NRBabelInterfaceSocket readPackets]";
                _NRLogWithArgs();
              }
            }
          }

          else
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229100 != -1)
              {
                dispatch_once(&qword_100229100, &stru_1001FB6C8);
              }

              v36 = "";
              v37 = "[NRBabelInterfaceSocket readPackets]";
              v38 = 892;
              IPv6AddrString = bswap32(*(msg_name + 1)) >> 16;
              _NRLogWithArgs();
            }
          }
        }

        else
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            v18 = qword_1002290F8;
            v38 = 887;
            IPv6AddrString = createIPv6AddrString();
            v36 = "";
            v37 = "[NRBabelInterfaceSocket readPackets]";
            _NRLogWithArgs();

            v2 = v44;
          }
        }
      }

      else
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          IPv6AddrString = msg_name[1];
          v38 = 876;
          v36 = "";
          v37 = "[NRBabelInterfaceSocket readPackets]";
          _NRLogWithArgs();
        }
      }
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        IPv6AddrString = v49.msg_namelen;
        msg_control = v49.msg_name;
        v38 = 870;
        v36 = "";
        v37 = "[NRBabelInterfaceSocket readPackets]";
        _NRLogWithArgs();
      }
    }
  }

  v35 = __error();
  if (*v35 != 35)
  {
    if (strerror_r(*v35, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }
  }

LABEL_102:
}

- (void)dealloc
{
  socketReadSource = self->_socketReadSource;
  if (socketReadSource)
  {
    dispatch_source_cancel(socketReadSource);
  }

  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  if (self->_pathEvaluator)
  {
    nw_path_evaluator_cancel();
  }

  v5.receiver = self;
  v5.super_class = NRBabelInterfaceSocket;
  [(NRBabelInterface *)&v5 dealloc];
}

- (void)sendPacket:(iovec *)a3 iovLen:(unsigned int)a4 toAddr:(const in6_addr *)a5
{
  if ([(NRBabelInterface *)self viable])
  {
    fd = self->_fd;
    v33 = 672800284;
    ifIndex = self->_ifIndex;
    v34 = *a5;
    v32.msg_name = &v33;
    *(&v32.msg_namelen + 1) = 0;
    v32.msg_namelen = 28;
    v32.msg_iov = a3;
    memset(&v32.msg_iovlen + 1, 0, 20);
    v32.msg_iovlen = a4;
    v10 = sendmsg(fd, &v32, 0);
    if (v10 < 0)
    {
      v13 = __error();
      if (strerror_r(*v13, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs();
      }
    }

    else
    {
      if (a4)
      {
        v11 = a4;
        if (a4 > 8)
        {
          v14 = a4 & 7;
          if (!v14)
          {
            v14 = 8;
          }

          v12 = a4 - v14;
          p_iov_len = &a3[4].iov_len;
          v16 = 0uLL;
          v17 = v12;
          v18 = 0uLL;
          do
          {
            v19 = p_iov_len - 8;
            v20 = vld2q_f64(v19);
            v21 = p_iov_len - 4;
            v22 = vld2q_f64(v21);
            v23 = p_iov_len + 16;
            v25 = vld2q_f64(p_iov_len);
            v24 = p_iov_len + 4;
            v26 = vld2q_f64(v24);
            v16 = vaddq_s32(v16, vuzp1q_s32(v20, v22));
            v18 = vaddq_s32(v18, vuzp1q_s32(v25, v26));
            p_iov_len = v23;
            v17 -= 8;
          }

          while (v17);
          a4 = vaddvq_s32(vaddq_s32(v18, v16));
        }

        else
        {
          v12 = 0;
          a4 = 0;
        }

        v27 = v11 - v12;
        v28 = &a3[v12].iov_len;
        do
        {
          v29 = *v28;
          v28 += 2;
          a4 += v29;
          --v27;
        }

        while (v27);
      }

      if (a4 != v10)
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229100 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          v30 = qword_1002290F8;
          IPv6AddrString = createIPv6AddrString();
          _NRLogWithArgs();
        }
      }
    }
  }
}

@end