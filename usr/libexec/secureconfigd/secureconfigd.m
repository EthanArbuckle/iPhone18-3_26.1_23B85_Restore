id sub_1000010A0(void *a1)
{
  memset(v12, 0, sizeof(v12));
  v1 = a1;
  v2 = ccsha384_di();
  v3 = (((*(v2 + 8) + *(v2 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &buf[-v4];
  ccdigest_init();
  [v1 length];
  [v1 bytes];

  ccdigest_update();
  (*(v2 + 56))(v2, v5, v12);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *v2;
    *buf = 68157954;
    LODWORD(v11[0]) = v6;
    WORD2(v11[0]) = 2096;
    *(v11 + 6) = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "computed manifest hash: %.*P", buf, 0x12u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v2;
    *buf = 134217984;
    v11[0] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "expected size %zu", buf, 0xCu);
  }

  v8 = [NSData dataWithBytes:v12 length:*v2];

  return v8;
}

id sub_100001280(void *a1)
{
  v1 = sub_1000010A0(a1);
  v2 = v1;
  if (v1)
  {
    v8 = xmmword_100004650;
    [v1 bytes];
    [v2 length];
    v3 = aks_sealed_hashes_set();
    if (v3 == -31)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100003950();
      }
    }

    else
    {
      v4 = v3;
      if (v3 == -28)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100003994();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v7[0] = 67109120;
        v7[1] = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "aks_sealed_hashes_set: %#x", v7, 8u);
      }
    }

    v5 = v2;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000039D8();
  }

  return v2;
}

id sub_1000013FC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSData);
  v6[0] = 0;
  v6[1] = 0;
  memset(v5, 0, sizeof(v5));
  __chkstk_darwin();
  [v1 getUUIDBytes:v6];
  if (aks_ref_key_create())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003A1C();
    }
  }

  else if (aks_system_key_attest())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003A94();
    }
  }

  else if (aks_system_key_get_public())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003B0C();
    }
  }

  else if (aks_attest_context_init())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003B84();
    }
  }

  else if (aks_attest_context_verify())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003BFC();
    }
  }

  else if (aks_attest_context_get_sealed_hash())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003C74(v1);
    }
  }

  else if (v5[5])
  {
    v3 = [NSData dataWithBytes:&v5[6] length:?];

    v2 = v3;
  }

  return v2;
}

id sub_100001694()
{
  v2 = xmmword_100004650;
  v0 = [[NSUUID alloc] initWithUUIDBytes:&v2];

  return v0;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SecureConfigDaemon();
  swift_allocObject();
  qword_10000CA60 = sub_100002578();
  dispatch_main();
}

uint64_t sub_10000175C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1000018A8(0xAuLL, 0xE100000000000000);
  if (v3)
  {
    type metadata accessor for SCConfig();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v7 = v6;
    v8 = sub_100001ED0();
    v10 = v9;

    *&v14 = v8;
    *(&v14 + 1) = v10;
    if (*(v7 + 2))
    {
      Data._Representation.append(contentsOf:)();
    }

    v13[3] = &type metadata for Data;
    v13[4] = &protocol witness table for Data;
    v13[0] = a1;
    v13[1] = a2;
    v11 = sub_10000202C(v13, &type metadata for Data);
    sub_100001C88(*v11, v11[1]);
    sub_100002070(v13);
    *(v2 + 16) = v14;
    return v2;
  }

  return result;
}

char *sub_1000018A8(unint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_5:
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v26 = &_swiftEmptyArrayStorage;
  result = sub_100001B74(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v26;
    v8 = a1;
    v9 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    v11 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = v3;
    }

    v22 = v10;
    v23 = v11;
    v12 = 15;
    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v4 = String.UTF8View._foreignCount()();
        goto LABEL_5;
      }

      v14 = v12;
      if ((v12 & 0xC) == v10)
      {
        v14 = sub_100001E54(v12, a1, a2);
        v10 = v22;
        v8 = a1;
      }

      v15 = v14 >> 16;
      if (v14 >> 16 >= v23)
      {
        goto LABEL_35;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v17 = String.UTF8View._foreignSubscript(position:)();
        v10 = v22;
        v8 = a1;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v25[0] = v8;
        v25[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v17 = *(v25 + v15);
      }

      else
      {
        v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v8 & 0x1000000000000000) == 0)
        {
          v16 = _StringObject.sharedUTF8.getter();
          v10 = v22;
          v8 = a1;
        }

        v17 = *(v16 + v15);
      }

      v26 = v5;
      v3 = v5[2];
      v18 = v5[3];
      if (v3 >= v18 >> 1)
      {
        v21 = v17;
        sub_100001B74((v18 > 1), v3 + 1, 1);
        v10 = v22;
        v8 = a1;
        v17 = v21;
        v5 = v26;
      }

      v5[2] = v3 + 1;
      *(v5 + v3 + 32) = v17;
      if ((v12 & 0xC) == v10)
      {
        v20 = sub_100001E54(v12, a1, a2);
        v10 = v22;
        v8 = a1;
        v12 = v20;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_12:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_13;
        }
      }

      else if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_12;
      }

      if (v23 <= v12 >> 16)
      {
        goto LABEL_36;
      }

      v19 = String.UTF8View._foreignIndex(after:)();
      v10 = v22;
      v8 = a1;
      v12 = v19;
LABEL_13:
      ++v7;
      if (v13 == v4)
      {
        return v5;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100001B18()
{
  sub_100001FD8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocClassInstance(v0, 32, 7);
}

char *sub_100001B74(char *a1, int64_t a2, char a3)
{
  result = sub_100001B94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100001B94(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000020BC(&qword_10000C788, &unk_100004730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_100001C88(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100001DC0(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_100001DC0(v3, v4);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_100001DC0(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100001E54(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_100001ED0()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 dataWithJSONObject:isa options:2 error:&v6];

  v3 = v6;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_100001FD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_10000202C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002070(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000020BC(uint64_t *a1, uint64_t *a2)
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

id sub_1000021FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureConfigXPCDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SecureConfigXPCDelegate()
{
  result = qword_10000C820;
  if (!qword_10000C820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002304()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000239C(void *a1)
{
  v1 = a1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = [v1 processIdentifier];

    _os_log_impl(&_mh_execute_header, v2, v3, "New connection incoming from %d", v4, 8u);
  }

  else
  {

    v2 = v1;
  }

  v5 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP14SecureConfigDB23SecureConfigXPCProtocol_];
  [v1 setExportedInterface:v5];

  [v1 setExportedObject:swift_weakLoadStrong()];

  [v1 resume];
  return 1;
}

uint64_t sub_100002504()
{
  v0 = type metadata accessor for Logger();
  sub_100003864(v0, qword_10000C890);
  sub_100003768(v0, qword_10000C890);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002578()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v27[-v8];
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x8000000100004B10;
  if (qword_10000C6E0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003768(v10, qword_10000C890);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "setting up everything", v13, 2u);
  }

  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = objc_allocWithZone(NSXPCListener);

  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithMachServiceName:v17];

  *(v1 + 40) = v18;
  v19 = [objc_allocWithZone(type metadata accessor for SecureConfigXPCDelegate()) init];
  *(v1 + 48) = v19;
  [*(v1 + 40) setDelegate:v19];
  type metadata accessor for SCDataBase();
  v20 = SCDataBase.__allocating_init()();
  v21 = sub_100001694();
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v9, v7, v2);
    v23 = dispatch thunk of SCDataBase.slot(slotID:algorithm:recordType:)();
    (*(v3 + 8))(v9, v2);
    *(v1 + 32) = v23;
    v24 = *(v1 + 48);
    swift_weakAssign();
    [*(v1 + 40) resume];

    return v1;
  }

  else
  {
    __break(1u);
    (*(v3 + 8))(v9, v2);
    swift_unexpectedError();
    v26 = *(v1 + 24);

    type metadata accessor for SecureConfigDaemon();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  return result;
}

uint64_t sub_100002AC8()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100002B3C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_100002B88(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100002B98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002C64(v11, 0, 0, 1, a1, a2);
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
    sub_100003808(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002070(v11);
  return v7;
}

unint64_t sub_100002C64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002D70(a5, a6);
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

char *sub_100002D70(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002DBC(a1, a2);
  sub_100002EEC(&off_100008450);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002DBC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002FD8(v5, 0);
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
        v7 = sub_100002FD8(v10, 0);
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

uint64_t sub_100002EEC(uint64_t result)
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

  result = sub_10000304C(result, v12, 1, v3);
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

void *sub_100002FD8(uint64_t a1, uint64_t a2)
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

  sub_1000020BC(&qword_10000C788, &unk_100004730);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000304C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000020BC(&qword_10000C788, &unk_100004730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void sub_100003140(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SCConfig();
  swift_allocObject();

  sub_1000038C8(a1, a2);
  v9 = sub_10000175C(a1, a2);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  sub_1000038C8(v10, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = sub_1000013EC(isa);

  if (v13)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_100001FD8(v10, v11);
    sub_100001FD8(v14, v16);
    v17 = *(v9 + 16);
    v18 = *(v9 + 24);
    v19 = objc_allocWithZone(type metadata accessor for SCEntry());
    sub_1000038C8(v17, v18);
    v20 = SCEntry.init(data:metadata:)();
    v21 = *(a4 + 32);
    dispatch thunk of SCSlot.append(_:)();

    v22 = *(a5 + 16);

    v22(a5, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000340C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SecureConfigParameters();
  v6 = static SecureConfigParameters.decode(parametersJson:securityPolicy:)();
  if (qword_10000C6E0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003768(v7, qword_10000C890);
  v24 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    v12 = [v24 debugDescription];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100002B98(v13, v15, &v25);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Registering parameters %s", v10, 0xCu);
    sub_100002070(v11);
  }

  SecureConfigParameters.write()();
  if (v17)
  {

    if (qword_10000C6E0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003768(v18, qword_10000C890);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to register parameters %@", v21, 0xCu);
      sub_1000037A0(v22);
    }

    (*(a5 + 16))(a5, 22);
  }

  else
  {
    (*(a5 + 16))(a5, 0);
  }
}

uint64_t sub_100003768(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000037A0(uint64_t a1)
{
  v2 = sub_1000020BC(&qword_10000C9C0, &qword_100004728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003808(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100003864(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000038C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100003A1C()
{
  sub_100001718();
  sub_10000170C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100003A94()
{
  sub_100001718();
  sub_10000170C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100003B0C()
{
  sub_100001718();
  sub_10000170C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100003B84()
{
  sub_100001718();
  sub_10000170C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100003BFC()
{
  sub_100001718();
  sub_10000170C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100003C74(void *a1)
{
  v6 = [a1 UUIDString];
  sub_10000170C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}