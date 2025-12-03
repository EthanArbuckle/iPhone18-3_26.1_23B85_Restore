@interface NEHelperInterfaceManager
- (NEHelperInterfaceManager)initWithFirstMessage:(id)message;
- (OS_dispatch_queue)handlerQueue;
- (void)handleMessage:(id)message;
@end

@implementation NEHelperInterfaceManager

- (void)handleMessage:(id)message
{
  messageCopy = message;
  uint64 = xpc_dictionary_get_uint64(messageCopy, "interface-command");
  if (uint64 > 4)
  {
    if (uint64 <= 6)
    {
      if (uint64 == 5)
      {
        *&v88 = 0;
        string = xpc_dictionary_get_string(messageCopy, "interface-name");
        data = xpc_dictionary_get_data(messageCopy, "interface-address", &v88);
        if (!string)
        {
          goto LABEL_62;
        }

        v40 = data;
        if (!data || !v88 || v88 < *data)
        {
          goto LABEL_62;
        }

        v41 = data[1];
        if (v41 == 30)
        {
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          memset(length, 0, sizeof(length));
          __strlcpy_chk();
          LOWORD(length[2]) = 7708;
          *&length[3] = *(v40 + 8);
          v54 = sub_10000F8D0(0x81206919, length, 30);
          if (!v54)
          {
            goto LABEL_76;
          }

          v16 = v54;
          v17 = ne_log_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_60;
          }

          LOWORD(v69) = 0;
          v18 = "Couldn't remove IPv6 interface address";
        }

        else
        {
          if (v41 != 2)
          {
            v16 = 22;
            goto LABEL_61;
          }

          *length = 0u;
          __strlcpy_chk();
          *&length[2] = 0x210uLL;
          HIDWORD(length[2]) = *(v40 + 1);
          v42 = sub_10000F8D0(0x80206919, length, 2);
          if (!v42)
          {
            goto LABEL_76;
          }

          v16 = v42;
          v17 = ne_log_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
LABEL_60:

LABEL_61:
            v11 = v16;
            goto LABEL_68;
          }

          LOWORD(v69) = 0;
          v18 = "Couldn't remove IPv4 interface address";
        }

        v19 = &v69;
        v55 = v17;
        v56 = 2;
LABEL_87:
        _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, v18, v19, v56);
        goto LABEL_60;
      }

      v12 = xpc_dictionary_get_uint64(messageCopy, "interface-type");
      v13 = xpc_dictionary_get_string(messageCopy, "interface-name");
      v14 = xpc_dictionary_get_string(messageCopy, "interface-delegate-name");
      if (v12 != 4 || !v13 || !v14)
      {
        goto LABEL_62;
      }

      v88 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      memset(length, 0, sizeof(length));
      __strlcpy_chk();
      v89 = xmmword_10002AE00;
      v90 = length;
      __strlcpy_chk();
      v15 = sub_10000F8D0(0x8028697B, &v88, 2);
      if (!v15)
      {
        goto LABEL_76;
      }

      v16 = v15;
      v17 = ne_log_obj();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      LODWORD(v69) = 136315138;
      *(&v69 + 4) = strerror(v16);
      v18 = "SIOCSDRVSPEC failed with, %s";
      v19 = &v69;
LABEL_86:
      v55 = v17;
      v56 = 12;
      goto LABEL_87;
    }

    if (uint64 == 7)
    {
      if (!xpc_dictionary_get_string(messageCopy, "interface-name"))
      {
        goto LABEL_62;
      }

      memset(length, 0, 32);
      __strlcpy_chk();
      v46 = sub_10000F8D0(0x80206979, length, 2);
      if (!v46)
      {
        goto LABEL_76;
      }

      v16 = v46;
      v17 = ne_log_obj();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v60 = strerror(v16);
      LODWORD(v88) = 136315138;
      *(&v88 + 4) = v60;
      v18 = "SIOCIFDESTROY failed with, %s";
    }

    else
    {
      if (uint64 != 8)
      {
        goto LABEL_62;
      }

      v27 = xpc_dictionary_get_uint64(messageCopy, "interface-type");
      v28 = xpc_dictionary_get_string(messageCopy, "interface-name");
      v29 = xpc_dictionary_get_string(messageCopy, "interface-description");
      if (v27 != 4)
      {
        goto LABEL_62;
      }

      if (!v28)
      {
        goto LABEL_62;
      }

      v30 = v29;
      if (!v29)
      {
        goto LABEL_62;
      }

      strncpy(length, v28, 0x10uLL);
      LODWORD(length[2]) = strnlen(v30, 0x80uLL);
      strncpy(&length[2] + 4, v30, 0x80uLL);
      v31 = sub_10000F8D0(0xC094698F, length, 2);
      if (!v31)
      {
        goto LABEL_76;
      }

      v16 = v31;
      v17 = ne_log_obj();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      v32 = strerror(v16);
      LODWORD(v88) = 136315138;
      *(&v88 + 4) = v32;
      v18 = "SIOCSIFDESC failed with, %s";
    }

LABEL_85:
    v19 = &v88;
    goto LABEL_86;
  }

  if (uint64 <= 2)
  {
    if (uint64 != 1)
    {
      if (uint64 == 2)
      {
        length[0] = 0;
        *&v88 = 0;
        *&v69 = 0;
        v5 = xpc_dictionary_get_string(messageCopy, "interface-name");
        v6 = xpc_dictionary_get_data(messageCopy, "interface-address", length);
        v7 = xpc_dictionary_get_data(messageCopy, "interface-netmask", &v88);
        v8 = xpc_dictionary_get_data(messageCopy, "interface-lifetime", &v69);
        if (v5)
        {
          v9 = v8;
          if (ne_is_sockaddr_valid())
          {
            if ((!v7 || ne_is_sockaddr_valid()) && (!v9 || v69 == 24))
            {
              v10 = sub_10000F948(v5, v6, v7, v9);
              if (v10)
              {
                v11 = v10;
LABEL_68:
                v47 = messageCopy;
                goto LABEL_77;
              }

LABEL_76:
              v47 = messageCopy;
              v11 = 0;
              goto LABEL_77;
            }
          }
        }
      }

LABEL_62:
      v47 = messageCopy;
      v11 = 22;
LABEL_77:
      sub_10000BA0C(NEHelperServer, v47, v11, 0);
      goto LABEL_78;
    }

    if (xpc_dictionary_get_uint64(messageCopy, "interface-type") != 4)
    {
      goto LABEL_62;
    }

    v69 = 0uLL;
    v33 = xpc_dictionary_get_uint64(messageCopy, "interface-ftype");
    xpc_dictionary_get_string(messageCopy, "interface-name");
    v68 = 535847;
    v88 = 0u;
    v89 = 0u;
    if ((v33 - 1) >= 3)
    {
      v48 = ne_log_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        LODWORD(length[0]) = 67109120;
        HIDWORD(length[0]) = v33;
        _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "invalid functional type %u", length, 8u);
      }

      v11 = 22;
      goto LABEL_68;
    }

    v34 = dword_10002AE20[v33 - 1];
    __strlcpy_chk();
    HIDWORD(v68) = v34;
    *&v89 = &v68;
    v35 = sub_10000F8D0(0xC020697A, &v88, 2);
    if (v35)
    {
      v36 = v35;
      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v66 = strerror(v36);
        LODWORD(length[0]) = 136315138;
        *(length + 4) = v66;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "SIOCIFCREATE2 failed with, %s", length, 0xCu);
      }

      v11 = v36;
      goto LABEL_68;
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    memset(&length[2], 0, 32);
    strncpy(length, &v88, 0x10uLL);
    v49 = sub_10000F8D0(0xC080696E, length, 30);
    if (v49)
    {
      v50 = v49;
      v51 = ne_log_obj();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = strerror(v50);
        *buf = 136315138;
        v71 = v52;
        v53 = "SIOCPROTOATTACH_IN6 failed with, %s";
LABEL_93:
        _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, v53, buf, 0xCu);
      }
    }

    else
    {
      *&v74 = 0;
      v73 = 0u;
      memset(&length[2], 0, 32);
      strncpy(length, &v88, 0x10uLL);
      v57 = sub_10000F8D0(0xC030694C, length, 30);
      if (v57)
      {
        v58 = v57;
        v51 = ne_log_obj();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v67 = strerror(v58);
          *buf = 136315138;
          v71 = v67;
          v53 = "SIOCGIFINFO_IN6 failed with, %s";
          goto LABEL_93;
        }
      }

      else
      {
        if ((HIDWORD(length[4]) & 0xFFFFFDF6) == HIDWORD(length[4]))
        {
          goto LABEL_83;
        }

        HIDWORD(length[4]) &= 0xFFFFFDF6;
        v63 = sub_10000F8D0(0xC0486957, length, 30);
        if (!v63)
        {
          goto LABEL_83;
        }

        v64 = v63;
        v51 = ne_log_obj();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v65 = strerror(v64);
          *buf = 136315138;
          v71 = v65;
          v53 = "SIOCSIFINFO_FLAGS failed with, %s";
          goto LABEL_93;
        }
      }
    }

LABEL_83:
    __strlcpy_chk();
    v59 = xpc_string_create(&v69);
    sub_10000BA0C(NEHelperServer, messageCopy, 0, v59);

    goto LABEL_78;
  }

  if (uint64 == 3)
  {
    v43 = xpc_dictionary_get_uint64(messageCopy, "interface-mtu");
    if (!xpc_dictionary_get_string(messageCopy, "interface-name") || !v43)
    {
      goto LABEL_62;
    }

    memset(length, 0, 32);
    __strlcpy_chk();
    LODWORD(length[2]) = v43;
    v44 = sub_10000F8D0(0x80206934, length, 2);
    if (!v44)
    {
      goto LABEL_76;
    }

    v16 = v44;
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v45 = strerror(v16);
    LODWORD(v88) = 136315138;
    *(&v88 + 4) = v45;
    v18 = "Cannot set MTU, %s";
    goto LABEL_85;
  }

  v20 = xpc_dictionary_dup_fd(messageCopy, "interface-socket");
  *&v88 = 0;
  v21 = xpc_dictionary_get_data(messageCopy, "interface-option-data", &v88);
  v22 = xpc_dictionary_get_uint64(messageCopy, "interface-option");
  if (v20 < 0)
  {
    goto LABEL_62;
  }

  v23 = v22;
  if (!v22)
  {
    goto LABEL_62;
  }

  if (!setsockopt(v20, 2, v22, v21, v88))
  {
    goto LABEL_63;
  }

  v24 = ne_log_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v61 = __error();
    v62 = strerror(*v61);
    LODWORD(length[0]) = 67109378;
    HIDWORD(length[0]) = v23;
    LOWORD(length[1]) = 2080;
    *(&length[1] + 2) = v62;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't set socket option %d, %s", length, 0x12u);
  }

  v25 = *__error();
  if (v25)
  {
    v26 = messageCopy;
  }

  else
  {
LABEL_63:
    v26 = messageCopy;
    v25 = 0;
  }

  sub_10000BA0C(NEHelperServer, v26, v25, 0);
  close(v20);
LABEL_78:
}

- (OS_dispatch_queue)handlerQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 8, 1);
    v2 = vars8;
  }

  return self;
}

- (NEHelperInterfaceManager)initWithFirstMessage:(id)message
{
  v4 = xpc_dictionary_get_remote_connection(message);
  if (sub_10000E080(NEHelperServer, v4))
  {
    v13.receiver = self;
    v13.super_class = NEHelperInterfaceManager;
    v5 = [(NEHelperInterfaceManager *)&v13 init];
    if (v5)
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create("NEHelperInterfaceManager", v6);
      queue = v5->_queue;
      v5->_queue = v7;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_10000E0E0(NEHelperServer, v4);
      *buf = 138412546;
      v15 = v12;
      v16 = 2080;
      v17 = "com.apple.private.nehelper.privileged";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Denying interface manager connection because %@ does not have the %s entitlement", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end