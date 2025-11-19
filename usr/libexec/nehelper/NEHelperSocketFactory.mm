@interface NEHelperSocketFactory
- (NEHelperSocketFactory)initWithFirstMessage:(id)a3;
- (OS_dispatch_queue)handlerQueue;
- (void)handleMessage:(id)a3;
@end

@implementation NEHelperSocketFactory

- (void)handleMessage:(id)a3
{
  v4 = a3;
  uint64 = xpc_dictionary_get_uint64(v4, "socket-type");
  v6 = uint64;
  if (uint64 <= 2)
  {
    if (uint64 == 1)
    {
      v36 = socket(29, 3, 2);
      if ((v36 & 0x80000000) == 0)
      {
        v37 = v36;
        v38 = xpc_fd_create(v36);
        close(v37);
        *buf = 4500;
        sysctlbyname("net.inet.ipsec.esp_port", 0, 0, buf, 4uLL);
        sub_10000BA0C(NEHelperServer, v4, 0, v38);

        goto LABEL_165;
      }

      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v55 = *__error();
        *buf = 67109120;
        *v99 = v55;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "socket(PF_KEY, SOCK_RAW, PF_KEY_V2) failed: %d", buf, 8u);
      }

      if (!*__error())
      {
        v45 = 22;
        goto LABEL_88;
      }

LABEL_77:
      v45 = *__error();
LABEL_88:
      sub_10000BA0C(NEHelperServer, v4, v45, 0);
      goto LABEL_165;
    }

    if (uint64 != 2)
    {
      goto LABEL_60;
    }

    length = 0;
    v77 = 0;
    data = xpc_dictionary_get_data(v4, "socket-localaddr", &length);
    v14 = xpc_dictionary_get_data(v4, "socket-remoteaddr", &v77);
    string = xpc_dictionary_get_string(v4, "socket-interface");
    v16 = xpc_dictionary_get_uint64(v4, "socket-effective-pid");
    if (!ne_is_sockaddr_valid() || (ne_is_sockaddr_valid() & 1) == 0)
    {
      v40 = ne_log_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "kNEHelperMessageSocketTypeIKE received invalid parameters", buf, 2u);
      }

      sub_10000BA0C(NEHelperServer, v4, 22, 0);
      goto LABEL_165;
    }

    *v91 = v16;
    if (data)
    {
      if (v14)
      {
        sa_family = v14->sa_family;
        v18 = data->sa_family == sa_family;
        v19 = ne_log_obj();
        v20 = v19;
        if (v18)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            address = nw_endpoint_create_address(data);
            v60 = nw_endpoint_create_address(v14);
            *buf = 138413058;
            *v99 = address;
            *&v99[8] = 2112;
            v100 = v60;
            v101 = 2080;
            v102 = string;
            v103 = 1024;
            v104 = v16;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Creating IKE socket to (%@, %@, %s, %d)", buf, 0x26u);
          }

          if (string)
          {
            v70 = if_nametoindex(string);
            if (v70)
            {
              goto LABEL_26;
            }

            v21 = *__error();
            if (strerror_r(v21, buf, 0x80uLL))
            {
              buf[0] = 0;
            }

            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *v92 = 136315650;
              *&v92[4] = string;
              *&v92[12] = 1024;
              *&v92[14] = v21;
              *&v92[18] = 2080;
              *&v92[20] = buf;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to find interface %s: [%d] %s", v92, 0x1Cu);
            }
          }

          v70 = 0;
LABEL_26:
          v23 = socket(sa_family, 2, 0);
          v24 = v23;
          if (v23 < 0)
          {
            v48 = *__error();
            if (strerror_r(v48, buf, 0x80uLL))
            {
              buf[0] = 0;
            }

            v53 = ne_log_obj();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *v92 = 67109634;
              *&v92[4] = sa_family;
              *&v92[8] = 1024;
              *&v92[10] = v48;
              *&v92[14] = 2080;
              *&v92[16] = buf;
              _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to create socket(%u, SOCK_DGRAM, 0): [%d] %s", v92, 0x18u);
            }

            if (v24 == -1)
            {
              goto LABEL_172;
            }

            goto LABEL_171;
          }

          if (fcntl(v23, 4, 4) == -1)
          {
            v25 = *__error();
            if (strerror_r(v25, buf, 0x80uLL))
            {
              buf[0] = 0;
            }

            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *v92 = 67109378;
              *&v92[4] = v25;
              *&v92[8] = 2080;
              *&v92[10] = buf;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to put socket in non-blocking mode: [%d] %s", v92, 0x12u);
            }
          }

          if (fcntl(v24, 73, 1) == -1)
          {
            v27 = *__error();
            if (strerror_r(v27, buf, 0x80uLL))
            {
              buf[0] = 0;
            }

            v28 = ne_log_obj();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *v92 = 67109378;
              *&v92[4] = v27;
              *&v92[8] = 2080;
              *&v92[10] = buf;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to set NOSIGPIPE option: [%d] %s", v92, 0x12u);
            }
          }

          *v87 = 1;
          if (setsockopt(v24, 0xFFFF, 4, v87, 4u) < 0)
          {
            v48 = *__error();
            if (strerror_r(v48, buf, 0x80uLL))
            {
              buf[0] = 0;
            }

            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *v92 = 67109378;
              *&v92[4] = v48;
              *&v92[8] = 2080;
              *&v92[10] = buf;
              _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "setsockopt SO_REUSEADDR failed: [%d] %s", v92, 0x12u);
            }
          }

          else if (setsockopt(v24, 0xFFFF, 512, v87, 4u) < 0)
          {
            v48 = *__error();
            if (strerror_r(v48, buf, 0x80uLL))
            {
              buf[0] = 0;
            }

            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *v92 = 67109378;
              *&v92[4] = v48;
              *&v92[8] = 2080;
              *&v92[10] = buf;
              _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "setsockopt SO_REUSEPORT failed: [%d] %s", v92, 0x12u);
            }
          }

          else if (v16 && setsockopt(v24, 0xFFFF, 4359, v91, 4u) < 0)
          {
            v48 = *__error();
            if (strerror_r(v48, buf, 0x80uLL))
            {
              buf[0] = 0;
            }

            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *v92 = 67109378;
              *&v92[4] = v48;
              *&v92[8] = 2080;
              *&v92[10] = buf;
              _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "setsockopt SO_DELEGATED failed: [%d] %s", v92, 0x12u);
            }
          }

          else
          {
            if (sa_family != 30 || (v86 = 0, (setsockopt(v24, 41, 63, &v86, 4u) & 0x80000000) == 0))
            {
              *&v85.sae_srcif = 0;
              memset(&v85.sae_srcaddrlen, 0, 24);
              v85.sae_srcaddr = data;
              v85.sae_srcaddrlen = data->sa_len;
              v85.sae_srcif = v70;
              v85.sae_dstaddr = v14;
              v85.sae_dstaddrlen = v14->sa_len;
              if ((connectx(v24, &v85, 0, 0, 0, 0, 0, 0) & 0x80000000) == 0)
              {
                v29 = xpc_fd_create(v24);
                close(v24);
                sub_10000BA0C(NEHelperServer, v4, 0, v29);

                goto LABEL_165;
              }

              v48 = *__error();
              if (strerror_r(v48, buf, 0x80uLL))
              {
                buf[0] = 0;
              }

              v63 = ne_log_obj();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                v68 = nw_endpoint_create_address(data);
                v69 = nw_endpoint_create_address(v14);
                *v92 = 138413314;
                *&v92[4] = v68;
                *&v92[12] = 2112;
                *&v92[14] = v69;
                *&v92[22] = 2080;
                *&v92[24] = string;
                LOWORD(v93) = 1024;
                *(&v93 + 2) = v48;
                WORD3(v93) = 2080;
                *(&v93 + 1) = buf;
                _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "connectx(%@, %@, %s) failed: [%d] %s", v92, 0x30u);
              }

              goto LABEL_171;
            }

            v48 = *__error();
            if (strerror_r(v48, buf, 0x80uLL))
            {
              buf[0] = 0;
            }

            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *v92 = 67109378;
              *&v92[4] = v48;
              *&v92[8] = 2080;
              *&v92[10] = buf;
              _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "setsockopt IPV6_PREFER_TEMPADDR failed: [%d] %s", v92, 0x12u);
            }
          }

LABEL_171:
          close(v24);
          goto LABEL_172;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v61 = nw_endpoint_create_address(data);
          v62 = nw_endpoint_create_address(v14);
          *buf = 138412546;
          *v99 = v61;
          *&v99[8] = 2112;
          v100 = v62;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Mismatched AF %@ %@", buf, 0x16u);
        }
      }

      else
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *v99 = "connect_udp_ike_socket";
          _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%s called with null remote", buf, 0xCu);
        }
      }
    }

    else
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *v99 = "connect_udp_ike_socket";
        _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%s called with null local", buf, 0xCu);
      }
    }

    v48 = 22;
LABEL_172:
    v67 = ne_log_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "kNEHelperMessageSocketTypeIKE connect_udp_ike_socket failed", buf, 2u);
    }

    sub_10000BA0C(NEHelperServer, v4, v48, 0);
    goto LABEL_165;
  }

  if (uint64 == 3)
  {
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    memset(v92, 0, sizeof(v92));
    memset(&v85, 0, 32);
    xpc_dictionary_get_string(v4, "socket-control-name");
    length = 0;
    p_length = &length;
    v83 = 0x2020000000;
    v84 = 0;
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    if (!self || !self->_privileged)
    {
      v41 = ne_log_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Rejecting kernel control socket request from un-privileged client", buf, 2u);
      }

      sub_10000BA0C(NEHelperServer, v4, 1, 0);
      goto LABEL_164;
    }

    v30 = socket(32, 2, 2);
    if (v30 < 0)
    {
      v46 = *__error();
      if (strerror_r(v46, buf, 0x80uLL))
      {
        buf[0] = 0;
      }

      v47 = ne_log_obj();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *v91 = 67109378;
        *&v91[4] = v46;
        *&v91[8] = 2080;
        *&v91[10] = buf;
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Cannot create kernel control socket: [%d] %s", v91, 0x12u);
      }

      sub_10000BA0C(NEHelperServer, v4, v46, 0);
      goto LABEL_164;
    }

    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    memset(v92, 0, sizeof(v92));
    __strlcpy_chk();
    if (ioctl(v30, 0xC0644E03uLL, v92))
    {
      v31 = *__error();
      if (strerror_r(v31, buf, 0x80uLL))
      {
        buf[0] = 0;
      }

      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v91 = 67109378;
        *&v91[4] = v31;
        *&v91[8] = 2080;
        *&v91[10] = buf;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "ioctl(CTLIOCGINFO) failed: [%d] %s", v91, 0x12u);
      }

      close(v30);
      sub_10000BA0C(NEHelperServer, v4, v31, 0);
      goto LABEL_164;
    }

    v85.sae_srcif = 139296;
    *(&v85.sae_srcif + 1) = *v92;
    memset(&v85.sae_srcaddr, 0, 24);
    v49 = xpc_dictionary_get_array(v4, "socket-options");
    v50 = v49;
    if (v49 && xpc_array_get_count(v49))
    {
      if (bind(v30, &v85, 0x20u))
      {
        v51 = *__error();
        if (strerror_r(v51, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        v52 = ne_log_obj();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *v91 = 67109378;
          *&v91[4] = v51;
          *&v91[8] = 2080;
          *&v91[10] = buf;
          _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "bind failed on kernel control socket: [%d] %s", v91, 0x12u);
        }

LABEL_100:

        close(v30);
        sub_10000BA0C(NEHelperServer, v4, v51, 0);
LABEL_163:

LABEL_164:
        _Block_object_dispose(&v77, 8);
        _Block_object_dispose(&length, 8);
        goto LABEL_165;
      }

      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_100011560;
      applier[3] = &unk_10003D0D8;
      v76 = v30;
      v57 = v4;
      v73 = v57;
      v74 = &length;
      v75 = &v77;
      xpc_array_apply(v50, applier);
      if (connect(v30, &v85, 0x20u))
      {
        v58 = *__error();
        if (strerror_r(v58, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        v59 = ne_log_obj();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *v91 = 67109378;
          *&v91[4] = v58;
          *&v91[8] = 2080;
          *&v91[10] = buf;
          _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "connect failed on kernel control socket: [%d] %s", v91, 0x12u);
        }

        close(v30);
        sub_10000BA0C(NEHelperServer, v57, v58, 0);

        goto LABEL_163;
      }
    }

    else if (connect(v30, &v85, 0x20u))
    {
      v51 = *__error();
      if (strerror_r(v51, buf, 0x80uLL))
      {
        buf[0] = 0;
      }

      v52 = ne_log_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *v91 = 67109378;
        *&v91[4] = v51;
        *&v91[8] = 2080;
        *&v91[10] = buf;
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "connect failed on kernel control socket: [%d] %s", v91, 0x12u);
      }

      goto LABEL_100;
    }

    if ((p_length[3] & 1) != 0 || *(v78 + 24) == 1)
    {
      memset(v91, 0, sizeof(v91));
      v86 = 16;
      if (getsockopt(v30, 2, 2, v91, &v86))
      {
        v64 = *__error();
        if (strerror_r(v64, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        v65 = ne_log_obj();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *v87 = 67109378;
          *v88 = v64;
          *&v88[4] = 2080;
          *&v88[6] = buf;
          _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to get the name of the new virtual interface: [%d] %s", v87, 0x12u);
        }

LABEL_161:

        close(v30);
        sub_10000BA0C(NEHelperServer, v4, v64, 0);
        goto LABEL_163;
      }

      if (*(p_length + 24) == 1)
      {
        *&v91[16] = 1;
        if (ioctl(v30, 0xC02069D7uLL, v91))
        {
          v64 = *__error();
          if (strerror_r(v64, buf, 0x80uLL))
          {
            buf[0] = 0;
          }

          v65 = ne_log_obj();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *v87 = 136315650;
            *v88 = v91;
            *&v88[8] = 1024;
            *&v88[10] = v64;
            v89 = 2080;
            v90 = buf;
            _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to set SIOCSIFNOTRAFFICSHAPING to 1 for %s: [%d] %s", v87, 0x1Cu);
          }

          goto LABEL_161;
        }
      }

      if (*(v78 + 24) == 1)
      {
        v91[16] = 1;
        if (ioctl(v30, 0xC02069DDuLL, v91))
        {
          v64 = *__error();
          if (strerror_r(v64, buf, 0x80uLL))
          {
            buf[0] = 0;
          }

          v65 = ne_log_obj();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *v87 = 136315650;
            *v88 = v91;
            *&v88[8] = 1024;
            *&v88[10] = v64;
            v89 = 2080;
            v90 = buf;
            _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to set SIOCSIFDIRECTLINK to 1 for %s: [%d] %s", v87, 0x1Cu);
          }

          goto LABEL_161;
        }
      }
    }

    v66 = xpc_fd_create(v30);
    close(v30);
    sub_10000BA0C(NEHelperServer, v4, 0, v66);

    goto LABEL_163;
  }

  if (uint64 != 4)
  {
    if (uint64 == 5)
    {
      v7 = xpc_dictionary_get_uint64(v4, "socket-domain");
      v8 = xpc_dictionary_get_uint64(v4, "socket-protocol");
      v9 = socket(v7, 3, v8);
      v10 = ne_log_obj();
      v11 = v10;
      if (v9 >= 0)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v99 = v7;
          *&v99[4] = 1024;
          *&v99[6] = v8;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "returning raw socket for domain: %d, protocol: %d", buf, 0xEu);
        }

        v12 = xpc_fd_create(v9);
        close(v9);
        sub_10000BA0C(NEHelperServer, v4, 0, v12);

        goto LABEL_165;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v56 = *__error();
        *buf = 67109632;
        *v99 = v7;
        *&v99[4] = 1024;
        *&v99[6] = v8;
        LOWORD(v100) = 1024;
        *(&v100 + 2) = v56;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "socket(%d, SOCK_RAW, %d) failed: %d", buf, 0x14u);
      }

      if (!*__error())
      {
        v45 = 22;
        goto LABEL_88;
      }

      goto LABEL_77;
    }

LABEL_60:
    v39 = ne_log_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v99 = v6;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "NEHelperSocketFactory received invalid socketType %llu", buf, 0xCu);
    }

    sub_10000BA0C(NEHelperServer, v4, 22, 0);
    goto LABEL_165;
  }

  v33 = necp_session_open();
  if (v33 < 0)
  {
    v42 = *__error();
    if (strerror_r(v42, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v43 = ne_log_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      *v92 = 67109378;
      *&v92[4] = v42;
      *&v92[8] = 2080;
      *&v92[10] = buf;
      _os_log_fault_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "Cannot create necp session fd: [%d] %s", v92, 0x12u);
    }

    sub_10000BA0C(NEHelperServer, v4, v42, 0);
  }

  else
  {
    v34 = v33;
    v35 = xpc_fd_create(v33);
    close(v34);
    sub_10000BA0C(NEHelperServer, v4, 0, v35);
  }

LABEL_165:
}

- (OS_dispatch_queue)handlerQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
    v2 = vars8;
  }

  return self;
}

- (NEHelperSocketFactory)initWithFirstMessage:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NEHelperSocketFactory;
  v5 = [(NEHelperSocketFactory *)&v23 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_remote_connection(v4);
    v7 = xpc_connection_copy_entitlement_value();
    v8 = xpc_connection_copy_entitlement_value();
    v9 = v7 && xpc_get_type(v7) == &_xpc_type_BOOL && xpc_BOOL_get_value(v7);
    v5->_privileged = v9;
    v10 = v8 && xpc_get_type(v8) == &_xpc_type_BOOL && xpc_BOOL_get_value(v8);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("NEHelperSocketFactory", v11);
    queue = v5->_queue;
    v5->_queue = v12;

    if (!v5->_privileged && !v10)
    {
      pid = xpc_connection_get_pid(v6);
      v15 = proc_name(pid, buffer, 0x100u);
      v16 = ne_log_obj();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (v15 < 1)
      {
        if (v17)
        {
          *buf = 67109634;
          *v25 = pid;
          *&v25[4] = 2080;
          *&v25[6] = "com.apple.private.nehelper.privileged";
          v26 = 2080;
          v27 = "com.apple.private.neagent";
          v18 = "Denying connection from process %d because it is missing the %s entitlement and the %s entitlement";
          v19 = v16;
          v20 = 28;
          goto LABEL_21;
        }
      }

      else if (v17)
      {
        *buf = 136315906;
        *v25 = buffer;
        *&v25[8] = 1024;
        *&v25[10] = pid;
        v26 = 2080;
        v27 = "com.apple.private.nehelper.privileged";
        v28 = 2080;
        v29 = "com.apple.private.neagent";
        v18 = "Denying connection from %s (%d) because it is missing the %s entitlement and the %s entitlement";
        v19 = v16;
        v20 = 38;
LABEL_21:
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
      }

      v21 = 0;
      goto LABEL_19;
    }
  }

  v21 = v5;
LABEL_19:

  return v21;
}

@end