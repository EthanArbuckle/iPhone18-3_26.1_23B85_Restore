uint64_t tcp_connectToPeer(const char *a1)
{
  v3 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Trying to connect to %s\n", buf, 0xCu);
  }

  do
  {
    AppleCIOMeshNet::TcpConnection::connect(logger, a1, 0x137Fu, &v7);
    v4 = v8;
    v5 = logger;
    if (v8)
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v10 = a1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connected to peer node %s\n", buf, 0xCu);
      }

      if ((v8 & 1) == 0)
      {
        abort();
      }

      v1 = dup(v7);
    }

    else
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v10 = a1;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to connect to peer node %s. Will try again in 1 second.\n", buf, 0xCu);
      }

      usleep(0xF4240u);
    }

    if (v8 == 1)
    {
      AppleCIOMeshNet::TcpConnection::~TcpConnection(&v7);
    }
  }

  while (!v4);
  return v1;
}

uint64_t tcp_listenForConnection()
{
  v0 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "listening for connection", buf, 2u);
  }

  AppleCIOMeshNet::TcpConnectionListener::listen(logger, 0x137Fu, buf);
  if (v9)
  {
    AppleCIOMeshNet::TcpConnectionListener::accept(buf, &v6);
    v1 = logger;
    if (v7)
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Accepted connection from peer node \n", v5, 2u);
      }

      if ((v7 & 1) == 0)
      {
        abort();
      }

      v2 = dup(v6);
    }

    else
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        tcp_listenForConnection_cold_1(v1);
      }

      v2 = 0xFFFFFFFFLL;
    }

    if (v7 == 1)
    {
      AppleCIOMeshNet::TcpConnection::~TcpConnection(&v6);
    }
  }

  else
  {
    v3 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      tcp_listenForConnection_cold_1(v3);
    }

    v2 = 0xFFFFFFFFLL;
  }

  if (v9 == 1)
  {
    AppleCIOMeshNet::TcpConnectionListener::~TcpConnectionListener(buf);
  }

  return v2;
}

void sub_100001190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a12 == 1)
  {
    AppleCIOMeshNet::TcpConnection::~TcpConnection(&a10);
  }

  if (a18 == 1)
  {
    AppleCIOMeshNet::TcpConnectionListener::~TcpConnectionListener(&a15);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_tcp_core_mm()
{
  v0 = objc_autoreleasePoolPush();
  logger = os_log_create("com.apple.cloudos.MeshNetworkDaemon", "tcp");

  objc_autoreleasePoolPop(v0);
}

void AppleCIOMeshNet::TcpConnection::~TcpConnection(AppleCIOMeshNet::TcpConnection *this)
{
  v1 = *this;
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }
}

_DWORD *AppleCIOMeshNet::TcpConnection::TcpConnection(_DWORD *result, _DWORD *a2)
{
  *result = *a2;
  *a2 = -1;
  return result;
}

int *AppleCIOMeshNet::TcpConnection::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (v4 >= 1)
    {
      close(v4);
    }

    *a1 = *a2;
    *a2 = -1;
  }

  return a1;
}

ssize_t AppleCIOMeshNet::TcpConnection::read(AppleCIOMeshNet::TcpConnection *this, unsigned __int8 *a2, unint64_t a3)
{
  if (a3 >> 31)
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v7 = read(*this, &a2[v3], a3 - v3);
    v8 = v7;
    if (v7 < 0)
    {
      break;
    }

    v3 += v7;
    if (v3 >= a3)
    {
      return v3;
    }
  }

  v9 = *__error();
  return v8;
}

ssize_t AppleCIOMeshNet::TcpConnection::write(AppleCIOMeshNet::TcpConnection *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (a3 >> 31)
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v7 = write(*this, &a2[v3], a3 - v3);
    v8 = v7;
    if (v7 < 0)
    {
      break;
    }

    v3 += v7;
    if (v3 >= a3)
    {
      return v3;
    }
  }

  v9 = *__error();
  return v8;
}

void AppleCIOMeshNet::TcpConnection::connect(void *a1@<X0>, const char *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v25 = 0;
  memset(&v26, 0, sizeof(v26));
  *&v26.ai_family = 0x10000001ELL;
  if (getaddrinfo(a2, 0, &v26, &v25))
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      AppleCIOMeshNet::TcpConnection::connect(a2, v7);
    }

LABEL_14:
    *(a4 + 4) = 0;
    goto LABEL_15;
  }

  ai_addr = v25->ai_addr;
  v9 = *&ai_addr->sa_data[10];
  v24[0] = *ai_addr;
  *&v24[0].sa_data[10] = v9;
  freeaddrinfo(v25);
  v10 = socket(30, 1, 0);
  v11 = v10;
  if (v10 < 0)
  {
    v12 = v7;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = __error();
      v14 = strerror(*v13);
      AppleCIOMeshNet::TcpConnection::connect(v14, &v26);
    }

    goto LABEL_14;
  }

  LODWORD(v25) = v10;
  BYTE4(v25) = 1;
  v23 = 1;
  if (setsockopt(v10, 6, 1, &v23, 4u) < 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = __error();
      v16 = strerror(*v15);
      AppleCIOMeshNet::TcpConnection::connect(v16, &v26);
    }

    goto LABEL_22;
  }

  v23 = 1;
  if (setsockopt(v11, 0xFFFF, 4, &v23, 4u) < 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = __error();
      v18 = strerror(*v17);
      AppleCIOMeshNet::TcpConnection::connect(v18, &v26);
    }

    goto LABEL_22;
  }

  *v24[0].sa_data = __rev16(a3);
  if (connect(v11, v24, 0x1Cu) < 0)
  {
    v19 = v7;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = __error();
      v21 = strerror(*v20);
      AppleCIOMeshNet::TcpConnection::connect(v21, &v26, a2, v19);
    }

LABEL_22:

    *(a4 + 4) = 0;
    close(v11);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v26.ai_flags = 136315394;
    *&v26.ai_family = a2;
    LOWORD(v26.ai_protocol) = 1024;
    *(&v26.ai_protocol + 2) = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TcpConnection - Connected to %s on socket %d", &v26, 0x12u);
  }

  *a4 = v11;
  v22 = -1;
  *(a4 + 4) = 1;
  AppleCIOMeshNet::TcpConnection::~TcpConnection(&v22);
LABEL_15:
}

void sub_100001764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  AppleCIOMeshUtils::ScopeGuard<AppleCIOMeshNet::TcpConnection::connect(NSObject  {objcproto9OS_os_log}*,char const*,unsigned short)::$_0>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

uint64_t AppleCIOMeshUtils::ScopeGuard<AppleCIOMeshNet::TcpConnection::connect(NSObject  {objcproto9OS_os_log}*,char const*,unsigned short)::$_0>::~ScopeGuard(uint64_t a1)
{
  if (*(a1 + 4) == 1)
  {
    close(*a1);
  }

  return a1;
}

void AppleCIOMeshNet::TcpConnectionListener::~TcpConnectionListener(id *this)
{
  v2 = *this;
  if (v2 >= 1)
  {
    close(v2);
  }
}

uint64_t AppleCIOMeshNet::TcpConnectionListener::TcpConnectionListener(uint64_t result, _DWORD *a2)
{
  *result = *a2;
  *(result + 8) = 0;
  *a2 = -1;
  return result;
}

int *AppleCIOMeshNet::TcpConnectionListener::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (v4 >= 1)
    {
      close(v4);
    }

    *a1 = *a2;
    *a2 = -1;
  }

  return a1;
}

void AppleCIOMeshNet::TcpConnectionListener::listen(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = socket(30, 1, 0);
  v7 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    v20 = 1;
    v19[0] = 1;
    v19[1] = v6;
    if (setsockopt(v6, 0xFFFF, 4, v19, 4u) < 0)
    {
      v11 = v5;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = __error();
        v13 = strerror(*v12);
        AppleCIOMeshNet::TcpConnectionListener::listen(v13, &v23);
      }
    }

    else
    {
      v23.sa_family = 30;
      *&v23.sa_data[6] = 0;
      v24 = 0;
      *v23.sa_data = __rev16(a2);
      if (bind(v7, &v23, 0x1Cu) < 0)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v14 = __error();
          v15 = strerror(*v14);
          AppleCIOMeshNet::TcpConnectionListener::listen(v15, buf);
        }
      }

      else
      {
        if ((listen(v7, 6) & 0x80000000) == 0)
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v22 = a2;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "TcpConnectionListener - Listening on port %d", buf, 8u);
          }

          v18[1] = v5;
          *a3 = v7;
          *(a3 + 8) = 0;
          LODWORD(v18[0]) = -1;
          *(a3 + 16) = 1;
          AppleCIOMeshNet::TcpConnectionListener::~TcpConnectionListener(v18);
          goto LABEL_20;
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v16 = __error();
          v17 = strerror(*v16);
          AppleCIOMeshNet::TcpConnectionListener::listen(v17, buf);
        }
      }
    }

    *(a3 + 16) = 0;
    close(v7);
    goto LABEL_20;
  }

  v8 = v5;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = __error();
    v10 = strerror(*v9);
    AppleCIOMeshNet::TcpConnectionListener::listen(v10, &v23);
  }

  *(a3 + 16) = 0;
LABEL_20:
}

void sub_100001AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  AppleCIOMeshUtils::ScopeGuard<AppleCIOMeshNet::TcpConnectionListener::listen(NSObject  {objcproto9OS_os_log}*,unsigned short)::$_0>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

uint64_t AppleCIOMeshUtils::ScopeGuard<AppleCIOMeshNet::TcpConnectionListener::listen(NSObject  {objcproto9OS_os_log}*,unsigned short)::$_0>::~ScopeGuard(uint64_t a1)
{
  if (*(a1 + 4) == 1)
  {
    close(*a1);
  }

  return a1;
}

void AppleCIOMeshNet::TcpConnectionListener::accept(AppleCIOMeshNet::TcpConnectionListener *this@<X0>, uint64_t a2@<X8>)
{
  v16 = 28;
  v4 = accept(*this, &v17, &v16);
  v5 = v4;
  if (v4 < 0)
  {
    v8 = *(this + 1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      AppleCIOMeshNet::TcpConnectionListener::accept(v10, buf);
    }

    goto LABEL_12;
  }

  v15 = 1;
  v6 = setsockopt(v4, 6, 1, &v15, 4u);
  v7 = *(this + 1);
  if (v6 < 0)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = __error();
      v13 = strerror(*v12);
      AppleCIOMeshNet::TcpConnection::connect(v13, buf);
    }

LABEL_12:
    *(a2 + 4) = 0;
    return;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TcpConnectionListener - Accepted connection", buf, 2u);
  }

  *a2 = v5;
  v14 = -1;
  *(a2 + 4) = 1;
  AppleCIOMeshNet::TcpConnection::~TcpConnection(&v14);
}

uint64_t AppleCIOMeshNet::TcpConnectionListener::stop(AppleCIOMeshNet::TcpConnectionListener *this)
{
  result = *this;
  if (result >= 1)
  {
    result = close(result);
    *this = -1;
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t variable initialization expression of MeshNetworkResponse.socket@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for XPCCodableObject();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t specialized static MeshNetworkService.main()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static MeshNetworkService.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting mesh network daemon.", v3, 2u);
  }

  return specialized MeshNetworkService.listen()();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t get_enum_tag_for_layout_string_8meshnetd23MeshNetworkServiceErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for MeshNetworkServiceError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 4;
  if (v5 >= 6)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MeshNetworkServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MeshNetworkServiceError(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t static MeshNetworkResponse.from(socket:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = v17 - v5;
  if (xpc_fd_create(a1))
  {
    XPCCodableObject.init(copying:)();
    v7 = type metadata accessor for XPCCodableObject();
    v8 = *(*(v7 - 8) + 56);
    v8(v6, 0, 1, v7);
    v8(a2, 1, 1, v7);
    v9 = (a2 + *(type metadata accessor for MeshNetworkResponse() + 20));
    result = outlined assign with take of XPCCodableObject?(v6, a2);
    *v9 = 0;
    v9[1] = 0;
  }

  else
  {
    v11 = type metadata accessor for XPCCodableObject();
    v12 = *(*(v11 - 8) + 56);
    v12(v6, 1, 1, v11);
    v17[1] = 5;
    v13 = String.init<A>(describing:)();
    v15 = v14;
    v12(a2, 1, 1, v11);
    v16 = (a2 + *(type metadata accessor for MeshNetworkResponse() + 20));
    result = outlined assign with take of XPCCodableObject?(v6, a2);
    *v16 = v13;
    v16[1] = v15;
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static MeshNetworkService.logger);
  __swift_project_value_buffer(v0, static MeshNetworkService.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t MeshNetworkService.handler.handleIncomingRequest(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*(type metadata accessor for XPCReceivedMessage() - 8) + 64);
  v3 = (__chkstk_darwin)();
  __chkstk_darwin(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4 - 8);
  v7 = v48 - v6;
  v48[5] = XPCReceivedMessage.auditToken.getter();
  v48[6] = v8;
  v48[7] = v9;
  v48[8] = v10;
  String.utf8CString.getter();
  v11 = xpc_copy_entitlement_for_token();

  if (v11)
  {
    if (xpc_BOOL_get_value(v11))
    {
      lazy protocol witness table accessor for type MeshNetworkRequest and conformance MeshNetworkRequest();
      XPCReceivedMessage.decode<A>(as:)();
      if (v50)
      {
        a1[3] = type metadata accessor for MeshNetworkResponse();
        a1[4] = lazy protocol witness table accessor for type MeshNetworkResponse and conformance MeshNetworkResponse();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        v44 = String.utf8CString.getter();
        v45 = tcp_connectToPeer((v44 + 32));

        static MeshNetworkResponse.from(socket:)(v45, boxed_opaque_existential_1);
        close(v45);
      }

      else
      {
        a1[3] = type metadata accessor for MeshNetworkResponse();
        a1[4] = lazy protocol witness table accessor for type MeshNetworkResponse and conformance MeshNetworkResponse();
        v46 = __swift_allocate_boxed_opaque_existential_1(a1);
        v47 = tcp_listenForConnection();
        static MeshNetworkResponse.from(socket:)(v47, v46);
        close(v47);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static MeshNetworkService.logger);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        lazy protocol witness table accessor for type MeshNetworkServiceError and conformance MeshNetworkServiceError();
        swift_allocError();
        *v33 = 1;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v32 = v34;
        _os_log_impl(&_mh_execute_header, v29, v30, "Refused client: %@", v31, 0xCu);
        outlined destroy of NSObject?(v32);
      }

      v35 = type metadata accessor for XPCCodableObject();
      v36 = *(*(v35 - 8) + 56);
      v36(v7, 1, 1, v35);
      v49 = 1;
      v37 = String.init<A>(describing:)();
      v39 = v38;
      v40 = type metadata accessor for MeshNetworkResponse();
      a1[3] = v40;
      a1[4] = lazy protocol witness table accessor for type MeshNetworkResponse and conformance MeshNetworkResponse();
      v41 = __swift_allocate_boxed_opaque_existential_1(a1);
      v36(v41, 1, 1, v35);
      v42 = (v41 + *(v40 + 20));
      outlined assign with take of XPCCodableObject?(v7, v41);
      result = swift_unknownObjectRelease();
      *v42 = v37;
      v42[1] = v39;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static MeshNetworkService.logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      lazy protocol witness table accessor for type MeshNetworkServiceError and conformance MeshNetworkServiceError();
      swift_allocError();
      *v17 = 1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "Refused client: %@", v15, 0xCu);
      outlined destroy of NSObject?(v16);
    }

    v19 = type metadata accessor for XPCCodableObject();
    v20 = *(*(v19 - 8) + 56);
    v20(v7, 1, 1, v19);
    v49 = 1;
    v21 = String.init<A>(describing:)();
    v23 = v22;
    v24 = type metadata accessor for MeshNetworkResponse();
    a1[3] = v24;
    a1[4] = lazy protocol witness table accessor for type MeshNetworkResponse and conformance MeshNetworkResponse();
    v25 = __swift_allocate_boxed_opaque_existential_1(a1);
    v20(v25, 1, 1, v19);
    v26 = (v25 + *(v24 + 20));
    result = outlined assign with take of XPCCodableObject?(v7, v25);
    *v26 = v21;
    v26[1] = v23;
  }

  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t specialized MeshNetworkService.listen()()
{
  v1 = *(*(type metadata accessor for XPCListener.InitializationOptions() - 8) + 64);
  __chkstk_darwin();
  static XPCListener.InitializationOptions.none.getter();
  v2 = type metadata accessor for XPCListener();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  if (!v0)
  {

    dispatch_main();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static MeshNetworkService.logger);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to create listener, error: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
  }

  lazy protocol witness table accessor for type MeshNetworkServiceError and conformance MeshNetworkServiceError();
  swift_allocError();
  *v11 = v0;
  return swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type MeshNetworkServiceError and conformance MeshNetworkServiceError()
{
  result = lazy protocol witness table cache variable for type MeshNetworkServiceError and conformance MeshNetworkServiceError;
  if (!lazy protocol witness table cache variable for type MeshNetworkServiceError and conformance MeshNetworkServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkServiceError and conformance MeshNetworkServiceError);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkService.handler and conformance MeshNetworkService.handler()
{
  result = lazy protocol witness table cache variable for type MeshNetworkService.handler and conformance MeshNetworkService.handler;
  if (!lazy protocol witness table cache variable for type MeshNetworkService.handler and conformance MeshNetworkService.handler)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkService.handler and conformance MeshNetworkService.handler);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkResponse and conformance MeshNetworkResponse()
{
  result = lazy protocol witness table cache variable for type MeshNetworkResponse and conformance MeshNetworkResponse;
  if (!lazy protocol witness table cache variable for type MeshNetworkResponse and conformance MeshNetworkResponse)
  {
    type metadata accessor for MeshNetworkResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkResponse and conformance MeshNetworkResponse);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined assign with take of XPCCodableObject?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkRequest and conformance MeshNetworkRequest()
{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest and conformance MeshNetworkRequest;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest and conformance MeshNetworkRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest and conformance MeshNetworkRequest);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t MeshNetworkResponse.init(socket:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for XPCCodableObject();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = (a4 + *(type metadata accessor for MeshNetworkResponse() + 20));
  result = outlined assign with take of XPCCodableObject?(a1, a4);
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t type metadata accessor for MeshNetworkResponse()
{
  result = type metadata singleton initialization cache for MeshNetworkResponse;
  if (!type metadata singleton initialization cache for MeshNetworkResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MeshNetworkRequest.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x547463656E6E6F63;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MeshNetworkRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x547463656E6E6F63 && a2 == 0xED0000726565506FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100006EA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeshNetworkRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MeshNetworkRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MeshNetworkRequest.ConnectToPeerCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MeshNetworkRequest.ConnectToPeerCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MeshNetworkRequest.ConnectToPeerCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeshNetworkRequest.ConnectToPeerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MeshNetworkRequest.ConnectToPeerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MeshNetworkRequest.ListenForConnectionCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeshNetworkRequest.ListenForConnectionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MeshNetworkRequest.ListenForConnectionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MeshNetworkRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO29ListenForConnectionCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO29ListenForConnectionCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v21 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO23ConnectToPeerCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO23ConnectToPeerCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedEncodingContainerVy8meshnetd18MeshNetworkRequestO10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys();
  v18 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    v26 = 0;
    lazy protocol witness table accessor for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v27 = 1;
    lazy protocol witness table accessor for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys();
    v20 = v21;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v22 + 8))(v20, v23);
  }

  return (*(v13 + 8))(v16, v12);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys()
{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys()
{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MeshNetworkRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MeshNetworkRequest.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t MeshNetworkResponse.error.getter()
{
  v1 = (v0 + *(type metadata accessor for MeshNetworkResponse() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MeshNetworkResponse.error.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MeshNetworkResponse() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MeshNetworkRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MeshNetworkRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MeshNetworkResponse.CodingKeys()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x74656B636F73;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MeshNetworkResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74656B636F73 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeshNetworkResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MeshNetworkResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MeshNetworkResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8meshnetd19MeshNetworkResponseV10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedEncodingContainerVy8meshnetd19MeshNetworkResponseV10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for XPCCodableObject();
  lazy protocol witness table accessor for type XPCCodableObject and conformance XPCCodableObject(&lazy protocol witness table cache variable for type XPCCodableObject and conformance XPCCodableObject);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for MeshNetworkResponse() + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MeshNetworkResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8meshnetd19MeshNetworkResponseV10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedDecodingContainerVy8meshnetd19MeshNetworkResponseV10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for MeshNetworkResponse();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for XPCCodableObject();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = &v15[*(v12 + 28)];
  *v17 = 0;
  v17[1] = 0;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys();
  v19 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v20 = v26;
    v30 = 0;
    lazy protocol witness table accessor for type XPCCodableObject and conformance XPCCodableObject(&lazy protocol witness table cache variable for type XPCCodableObject and conformance XPCCodableObject);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of XPCCodableObject?(v6, v15);
    v29 = 1;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24 = v23;
    (*(v20 + 8))(v10, v27);
    *v17 = v22;
    v17[1] = v24;
    outlined init with copy of MeshNetworkResponse(v15, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of MeshNetworkResponse(v15);
}

uint64_t specialized MeshNetworkRequest.init(from:)(uint64_t *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO29ListenForConnectionCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO29ListenForConnectionCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v28 = *(v26 - 8);
  v2 = *(v28 + 64);
  __chkstk_darwin(v26);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO23ConnectToPeerCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO23ConnectToPeerCodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMd, &_ss22KeyedDecodingContainerVy8meshnetd18MeshNetworkRequestO10CodingKeys33_3AF91F5DEDEF9CA48455540729921991LLOGMR);
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MeshNetworkRequest.CodingKeys and conformance MeshNetworkRequest.CodingKeys();
  v15 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_7;
  }

  v16 = v28;
  v30 = a1;
  v14 = v12;
  v17 = KeyedDecodingContainer.allKeys.getter();
  if (*(v17 + 16) != 1)
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v21 = &type metadata for MeshNetworkRequest;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v29 + 8))(v12, v9);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v14;
  }

  if (*(v17 + 32))
  {
    v32 = 1;
    lazy protocol witness table accessor for type MeshNetworkRequest.ListenForConnectionCodingKeys and conformance MeshNetworkRequest.ListenForConnectionCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v29;
    (*(v16 + 8))(v4, v26);
    (*(v18 + 8))(v12, v9);
    swift_unknownObjectRelease();
    v14 = 0;
  }

  else
  {
    v31 = 0;
    lazy protocol witness table accessor for type MeshNetworkRequest.ConnectToPeerCodingKeys and conformance MeshNetworkRequest.ConnectToPeerCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v29;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v27 + 8))(v8, v5);
    (*(v23 + 8))(v12, v9);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  return v14;
}

uint64_t outlined init with copy of XPCCodableObject?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshNetworkResponse.CodingKeys and conformance MeshNetworkResponse.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of MeshNetworkResponse(uint64_t a1)
{
  v2 = type metadata accessor for MeshNetworkResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type XPCCodableObject and conformance XPCCodableObject(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for XPCCodableObject();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of MeshNetworkResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeshNetworkResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshNetworkRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MeshNetworkRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for MeshNetworkRequest(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for MeshNetworkRequest(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_100005170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000525C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void type metadata completion function for MeshNetworkResponse()
{
  type metadata accessor for XPCCodableObject?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for XPCCodableObject?()
{
  if (!lazy cache variable for type metadata for XPCCodableObject?)
  {
    type metadata accessor for XPCCodableObject();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for XPCCodableObject?);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MeshNetworkResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshNetworkResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshNetworkRequest.ConnectToPeerCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MeshNetworkRequest.ConnectToPeerCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void tcp_listenForConnection_cold_1(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 4991;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to listen for network connections on port %d\n", v1, 8u);
}

void AppleCIOMeshNet::TcpConnection::connect(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "TcpConnection - Failed to resolve hostname: %s", &v2, 0xCu);
}

void AppleCIOMeshNet::TcpConnection::connect(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "TcpConnection - Failed to connect to hostname: %s, error: %s", buf, 0x16u);
}

void AppleCIOMeshNet::TcpConnection::connect(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnection - Failed to set SO_REUSEADDR: %s", v4);
}

{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnection - Failed to set TCP_NODELAY: %s", v4);
}

{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "Failed to create socket: %s", v4);
}

void AppleCIOMeshNet::TcpConnectionListener::listen(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnectionListener - Failed to listen on socket: %s", v4);
}

{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnectionListener - Failed to bind socket: %s", v4);
}

{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnectionListener - Failed to set SO_REUSEADDR: %s", v4);
}

{
  OUTLINED_FUNCTION_1(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_0(&_mh_execute_header, v2, v3, "TcpConnectionListener - Failed to create socket: %s", v4);
}