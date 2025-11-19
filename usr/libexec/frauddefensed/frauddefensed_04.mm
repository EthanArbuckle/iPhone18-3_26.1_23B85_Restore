unint64_t sub_10005E010()
{
  result = qword_1000B67E8;
  if (!qword_1000B67E8)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B67E8);
  }

  return result;
}

uint64_t sub_10005E078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005E0C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10005E11C(os_log_type_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a5;
  v31._countAndFlagsBits = a4;
  v31._object = a5;
  sub_10001C1B8();
  v11 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v11)
  {
    v12 = &v11[2 * *v11];
    v6 = v12[1];
    v28 = *v12;
  }

  else
  {
    v28 = a4;
  }

  v13 = a2;
  v30 = a3;
  v14 = String.lowercased()();
  v15 = 11;
  v16 = &off_1000ADB20;
  do
  {
    if (!--v15)
    {
      swift_arrayDestroy();

      v22 = a1;
      goto LABEL_13;
    }

    v17 = v16 + 2;
    v20 = v16 - 1;
    v18 = *(v16 - 1);
    v19 = v20[1];
    v31 = v14;
    v21 = StringProtocol.contains<A>(_:)();
    v16 = v17;
  }

  while ((v21 & 1) == 0);
  swift_arrayDestroy();

  v22 = a1;
  if (qword_1000B66E0 != -1)
  {
    swift_once();
  }

  if ((byte_1000B9460 & 1) == 0)
  {
    v23 = Logger.logObject.getter();
    if (os_log_type_enabled(v23, a1))
    {
      v24 = swift_slowAlloc();
      v31._countAndFlagsBits = swift_slowAlloc();
      *v24 = 136643331;
      v25 = sub_10005E6B8(v28, v6, &v31._countAndFlagsBits);

      *(v24 + 4) = v25;
      *(v24 + 12) = 2053;
      *(v24 + 14) = a6;
      *(v24 + 22) = 2085;
      *(v24 + 24) = sub_10005E6B8(v13, v30, &v31._countAndFlagsBits);
      v26 = "%{sensitive}s.%{sensitive}ld            %{sensitive}s";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v23, v22, v26, v24, 0x20u);
      swift_arrayDestroy();

      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_13:
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, v22))
  {
    v24 = swift_slowAlloc();
    v31._countAndFlagsBits = swift_slowAlloc();
    *v24 = 136381187;
    v27 = sub_10005E6B8(v28, v6, &v31._countAndFlagsBits);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2049;
    *(v24 + 14) = a6;
    *(v24 + 22) = 2081;
    *(v24 + 24) = sub_10005E6B8(v13, v30, &v31._countAndFlagsBits);
    v26 = "%{private}s.%{private}ld                %{private}s";
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
}

uint64_t sub_10005E574(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100026F20(v3, a2);
  sub_100003448(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005E5E8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10005E65C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10005E6B8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10005E6B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10005E784(v11, 0, 0, 1, a1, a2);
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
    sub_100005BBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003558(v11);
  return v7;
}

unint64_t sub_10005E784(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10005E890(a5, a6);
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

char *sub_10005E890(uint64_t a1, unint64_t a2)
{
  v4 = sub_10005E8DC(a1, a2);
  sub_10005EA0C(&off_1000ADAD0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10005E8DC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10005EAF8(v5, 0);
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
        v7 = sub_10005EAF8(v10, 0);
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

uint64_t sub_10005EA0C(uint64_t result)
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

  result = sub_10005EB6C(result, v12, 1, v3);
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

void *sub_10005EAF8(uint64_t a1, uint64_t a2)
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

  sub_100002074(&qword_1000B8398, &unk_100092A38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10005EB6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002074(&qword_1000B8398, &unk_100092A38);
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

_BYTE **sub_10005EC60(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_10005EC70()
{
  v1 = type metadata accessor for ReportOperation();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = type metadata accessor for AttestationManager();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000055C8();
  v9 = OBJC_IVAR____TtC13frauddefensed18AttestationManager_logger;
  if (qword_1000B6698 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100003448(v10, qword_1000B93A0);
  v12 = *(*(v10 - 8) + 16);
  v12(v8 + v9, v11, v10);
  if (!DeviceIdentityIsSupported())
  {

    v8 = 0;
  }

  *(v4 + 16) = v8;
  v13 = OBJC_IVAR____TtC13frauddefensed15ReportOperation_logger;
  if (qword_1000B66A0 != -1)
  {
    swift_once();
  }

  v14 = sub_100003448(v10, qword_1000B93B8);
  v12(v4 + v13, v14, v10);
  v0[2] = v4;
  v12(v0 + *(*v0 + 104), v14, v10);
  return v0;
}

uint64_t sub_10005EE10(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v4 = sub_100002074(&qword_1000B84D8, &qword_100092AA8);
  v2[41] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v2[42] = v6;
  v7 = type metadata accessor for URLRequest();
  v2[43] = v7;
  v8 = *(v7 - 8);
  v2[44] = v8;
  v9 = *(v8 + 64) + 15;
  v2[45] = swift_task_alloc();
  v10 = swift_task_alloc();
  v2[46] = v10;
  *v10 = v2;
  v10[1] = sub_10005EF68;

  return sub_10005F84C(v6, a1);
}

uint64_t sub_10005EF68()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_10005F24C;
  }

  else
  {
    v3 = sub_10005F07C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005F07C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = *(v2 + 16);
    *(v0 + 272) = *v2;
    *(v0 + 280) = v4;
    *(v0 + 288) = v5;
    sub_10000B6B0();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    v7 = *(v0 + 360);
    v8 = *(v0 + 336);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(*(v0 + 352) + 32))(*(v0 + 360), v2, *(v0 + 344));
    v11 = [objc_opt_self() defaultSessionConfiguration];
    *(v0 + 384) = [objc_opt_self() sessionWithConfiguration:v11];

    v12 = async function pointer to NSURLSession.data(for:delegate:)[1];
    v13 = swift_task_alloc();
    *(v0 + 392) = v13;
    *v13 = v0;
    v13[1] = sub_10005F2BC;
    v14 = *(v0 + 360);

    return NSURLSession.data(for:delegate:)(v14, 0);
  }
}

uint64_t sub_10005F24C()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[42];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005F2BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 392);
  v11 = *v4;
  *(v7 + 400) = a3;
  *(v7 + 408) = v3;

  if (v3)
  {
    v9 = sub_10005F7AC;
  }

  else
  {
    sub_100005A28(a1, a2);
    v9 = sub_10005F3EC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10005F3EC()
{
  v1 = *(v0 + 400);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 statusCode];
    v5 = *(v0 + 400);
    v6 = *(v0 + 384);
    v8 = *(v0 + 352);
    v7 = *(v0 + 360);
    v9 = *(v0 + 344);
    if (v4 == 200)
    {

      (*(v8 + 8))(v7, v9);
      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_7;
    }

    v40 = *(v0 + 320);
    v37 = static os_log_type_t.error.getter();
    v36 = v7;
    _StringGuts.grow(_:)(42);

    *(v0 + 296) = [v3 statusCode];
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 32032;
    v29._object = 0xE200000000000000;
    String.append(_:)(v29);
    sub_10005E11C(v37, 0xD000000000000026, 0x8000000100098520, 0xD000000000000054, 0x80000001000951C0, 36);

    _StringGuts.grow(_:)(42);

    *(v0 + 304) = [v3 statusCode];
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 32032;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);

    v11 = 0xD000000000000026;
    v12 = 0x8000000100098520;
    (*(v8 + 8))(v36, v9);
  }

  else
  {
    v13 = *(v0 + 400);
    v14 = *(v0 + 384);
    v15 = *(v0 + 352);
    v38 = *(v0 + 344);
    v39 = *(v0 + 360);
    v17 = *(v0 + 312);
    v16 = *(v0 + 320);
    v18 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(62);
    v19._countAndFlagsBits = 0xD00000000000003ALL;
    v19._object = 0x80000001000984A0;
    String.append(_:)(v19);
    v20 = *v17;
    v21 = v17[1];
    v22 = v17[3];
    *(v0 + 48) = v17[2];
    *(v0 + 64) = v22;
    *(v0 + 16) = v20;
    *(v0 + 32) = v21;
    v23 = v17[4];
    v24 = v17[5];
    v25 = v17[7];
    *(v0 + 112) = v17[6];
    *(v0 + 128) = v25;
    *(v0 + 80) = v23;
    *(v0 + 96) = v24;
    sub_10006625C(v17, v0 + 144);
    v26._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 32032;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    sub_10005E11C(v18, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000951C0, 31);

    v12 = 0x80000001000984E0;
    (*(v15 + 8))(v39, v38);
    v11 = 0xD000000000000037;
  }

  v10 = 1;
LABEL_7:
  v32 = *(v0 + 360);
  v33 = *(v0 + 336);

  v34 = *(v0 + 8);

  return v34(v11, v12, v10 | (v10 << 8));
}

uint64_t sub_10005F7AC()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 408);
  v5 = *(v0 + 360);
  v6 = *(v0 + 336);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10005F84C(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  v4 = type metadata accessor for URLRequest();
  v3[48] = v4;
  v5 = *(v4 - 8);
  v3[49] = v5;
  v6 = *(v5 + 64) + 15;
  v3[50] = swift_task_alloc();
  v7 = *(*(sub_100002074(&qword_1000B6DE8, &qword_10008FA30) - 8) + 64) + 15;
  v3[51] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v3[52] = v8;
  v9 = *(v8 - 8);
  v3[53] = v9;
  v10 = *(v9 + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v11 = *(*(type metadata accessor for JSONEncoder.OutputFormatting() - 8) + 64) + 15;
  v3[56] = swift_task_alloc();

  return _swift_task_switch(sub_10005F9DC, 0, 0);
}

void sub_10005F9DC()
{
  v1 = *(v0 + 368);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v2 >> 62)
  {
    v126 = *(v1 + 24);
    v127 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v126;
    v139 = v127;
  }

  else
  {
    v139 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v139)
  {
    v4 = v2;
    v5 = v139;
    sub_100049F4C(0, v139 & ~(v139 >> 63), 0);
    if (v139 < 0)
    {
      __break(1u);
LABEL_65:
      swift_once();
      goto LABEL_16;
    }

    v6 = 0;
    v7 = v4;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v7 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = SecCertificateCopyData(v8);
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = Data.base64EncodedString(options:)(0x21uLL);
      String.append(_:)(v14);

      v15._countAndFlagsBits = 10;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16._object = 0x8000000100098550;
      v16._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v16);
      sub_100005A28(v11, v13);

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_100049F4C((v17 > 1), v18 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = 0xD00000000000001CLL;
      v19[5] = 0x8000000100098570;
      v7 = v4;
    }

    while (v139 != v6);
    v0 = v134;
  }

  v20 = *(v0 + 448);
  v21 = *(v134 + 368);
  *(v134 + 344) = _swiftEmptyArrayStorage;
  sub_100002074(&qword_1000B6908, &qword_10008F700);
  sub_1000662B8();
  v22 = BidirectionalCollection<>.joined(separator:)();
  v24 = v23;

  v25 = *(v21 + 8);
  v5 = v134;
  v26 = type metadata accessor for JSONEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  *(v134 + 456) = JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  *(v134 + 272) = v25;
  *(v134 + 280) = v22;
  *(v134 + 288) = v24;
  sub_10006631C();
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v134 + 464) = v29;
  *(v134 + 472) = v30;
  v36 = v29;
  v37 = v30;
  v38 = *(v134 + 368);

  v138 = v37;
  v139 = v36;
  if (!*v38)
  {
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (!qword_1000B7C78)
    {
      v44 = 56;
      v43 = 48;
      goto LABEL_34;
    }

    v46 = qword_1000B7C78;
    v47 = String._bridgeToObjectiveC()();
    v48 = [v46 BOOLForKey:v47];

    v42 = v48 == 0;
    v43 = 48;
    if (v48)
    {
      v43 = 32;
    }

    v44 = 56;
    v45 = 40;
    goto LABEL_32;
  }

  if (*v38 != 1)
  {
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (!qword_1000B7C78)
    {
      v44 = 120;
      v43 = 112;
      goto LABEL_34;
    }

    v49 = qword_1000B7C78;
    v50 = String._bridgeToObjectiveC()();
    v51 = [v49 BOOLForKey:v50];

    v42 = v51 == 0;
    v43 = 112;
    if (v51)
    {
      v43 = 96;
    }

    v44 = 120;
    v45 = 104;
    goto LABEL_32;
  }

  if (qword_1000B6658 != -1)
  {
    goto LABEL_65;
  }

LABEL_16:
  if (!qword_1000B7C78)
  {
    goto LABEL_47;
  }

  v39 = qword_1000B7C78;
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 BOOLForKey:v40];

  v42 = v41 == 0;
  v43 = 80;
  if (v41)
  {
    v43 = 64;
  }

  v44 = 88;
  v45 = 72;
LABEL_32:
  if (!v42)
  {
    v44 = v45;
  }

  while (1)
  {
LABEL_34:
    v52 = v5;
    v53 = v5[53];
    v54 = v52[51];
    v135 = v52[52];
    v55 = v52[46];
    v56 = v52[47];
    v57 = *(v55 + v43);
    v58 = *(v55 + v44);
    swift_bridgeObjectRetain_n();
    v59 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(39);

    v60._countAndFlagsBits = v57;
    v60._object = v58;
    String.append(_:)(v60);

    v61._countAndFlagsBits = 32032;
    v61._object = 0xE200000000000000;
    String.append(_:)(v61);
    sub_10005E11C(v59, 0xD000000000000023, 0x8000000100098590, 0xD000000000000054, 0x80000001000951C0, 82);

    URL.init(string:)();

    if ((*(v53 + 48))(v54, 1, v135) == 1)
    {
      v62 = v52[45];
      v63 = v52[46];
      sub_10000BC10(v52[51], &qword_1000B6DE8, &qword_10008FA30);
      v64 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(28);

      v65 = v63[3];
      v67 = *v63;
      v66 = v63[1];
      *(v52 + 3) = v63[2];
      *(v52 + 4) = v65;
      *(v52 + 1) = v67;
      *(v52 + 2) = v66;
      v68 = v63[7];
      v70 = v63[4];
      v69 = v63[5];
      *(v52 + 7) = v63[6];
      *(v52 + 8) = v68;
      *(v52 + 5) = v70;
      *(v52 + 6) = v69;
      sub_10006625C(v63, (v52 + 18));
      v71._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v71);

      v72._countAndFlagsBits = 32032;
      v72._object = 0xE200000000000000;
      String.append(_:)(v72);
      sub_10005E11C(v64, 0xD000000000000018, 0x80000001000985C0, 0xD000000000000054, 0x80000001000951C0, 85);

      sub_100005A28(v139, v138);

      *v62 = 0xD000000000000015;
      *(v62 + 8) = 0x80000001000985E0;
      *(v62 + 16) = 2;
      sub_100002074(&qword_1000B84D8, &qword_100092AA8);
      swift_storeEnumTagMultiPayload();
      v73 = v52;
      goto LABEL_36;
    }

    v80 = v52[54];
    v81 = v52[55];
    v83 = v52[52];
    v82 = v52[53];
    v84 = v52[50];
    (*(v82 + 32))(v81, v52[51], v83);
    (*(v82 + 16))(v80, v81, v83);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    sub_100005A7C(v139, v138);
    URLRequest.httpBody.setter();
    v85.value._countAndFlagsBits = 0xD000000000000010;
    v86._object = 0xEC00000065707954;
    v85.value._object = 0x8000000100098600;
    v86._countAndFlagsBits = 0x2D746E65746E6F43;
    URLRequest.setValue(_:forHTTPHeaderField:)(v85, v86);
    v87 = v138 >> 62;
    if ((v138 >> 62) <= 1)
    {
      break;
    }

    v88 = 0;
    v5 = v134;
    if (v87 != 2)
    {
      goto LABEL_53;
    }

    v90 = *(v139 + 16);
    v89 = *(v139 + 24);
    v91 = __OFSUB__(v89, v90);
    v88 = v89 - v90;
    if (!v91)
    {
      goto LABEL_51;
    }

    __break(1u);
LABEL_47:
    v44 = 88;
    v43 = 80;
  }

  if (v87)
  {
    LODWORD(v88) = HIDWORD(v139) - v139;
    if (__OFSUB__(HIDWORD(v139), v139))
    {
      __break(1u);
      return;
    }

    v88 = v88;
    v5 = v134;
LABEL_51:
    if (v88 < 0)
    {
      __break(1u);
    }
  }

  else
  {
    v88 = BYTE6(v138);
    v5 = v134;
  }

LABEL_53:
  v92 = v5[50];
  v5[44] = v88;
  v93._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v93);

  v94.value._countAndFlagsBits = 0;
  v95._object = 0xEE006874676E654CLL;
  v94.value._object = 0xE000000000000000;
  v95._countAndFlagsBits = 0x2D746E65746E6F43;
  URLRequest.setValue(_:forHTTPHeaderField:)(v94, v95);

  if (v131)
  {
    v96 = v131;
    v97 = sub_1000543EC(v139, v138, v96);
    v100 = v97;
    v101 = v98;
    v102 = v99;
    if ((v99 & 0x100) != 0)
    {
      v117 = v5[55];
      v118 = *(v134 + 424);
      v136 = *(v134 + 416);
      v137 = v117;
      v132 = *(v134 + 400);
      v119 = *(v134 + 392);
      v130 = *(v134 + 384);
      *(v134 + 320) = v97;
      *(v134 + 328) = v98;
      *(v134 + 336) = v99;
      sub_10000B6B0();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v120 = v100;
      *(v120 + 8) = v101;
      *(v120 + 16) = v102;

      sub_100005A28(v139, v138);
      (*(v119 + 8))(v132, v130);
      (*(v118 + 8))(v137, v136);
      v32 = *(v134 + 440);
      v31 = *(v134 + 448);
      v33 = *(v134 + 432);
      v35 = *(v134 + 400);
      v34 = *(v134 + 408);

      v79 = *(v134 + 8);
      goto LABEL_37;
    }

    v103 = v5[50];
    v104 = Data.base64EncodedString(options:)(0);
    v105._countAndFlagsBits = 0xD000000000000015;
    v105._object = 0x8000000100098670;
    URLRequest.setValue(_:forHTTPHeaderField:)(v104, v105);

    sub_100066370(v100, v101, v102, 0);

    v106 = v5[58];
    v107 = v5[59];
    v108 = v5[55];
    v109 = *(v134 + 424);
    v110 = *(v134 + 416);
    v111 = *(v134 + 400);
    v112 = *(v134 + 392);
    v113 = *(v134 + 384);
    v114 = *(v134 + 360);
    sub_100005A28(v106, v107);
    (*(v109 + 8))(v108, v110);
    v73 = v134;
    (*(v112 + 32))(v114, v111, v113);
    sub_100002074(&qword_1000B84D8, &qword_100092AA8);
    swift_storeEnumTagMultiPayload();
LABEL_36:
    v75 = v73[55];
    v74 = v73[56];
    v76 = v73[54];
    v78 = v73[50];
    v77 = v73[51];

    v79 = v73[1];
LABEL_37:

    v79();
    return;
  }

  v115 = *(v5[47] + 16);
  v5[60] = v115;
  if (!v115)
  {
    v121 = v5[55];
    v122 = *(v134 + 424);
    v133 = *(v134 + 416);
    v123 = *(v134 + 392);
    v128 = *(v134 + 384);
    v129 = *(v134 + 400);
    v124 = *(v134 + 360);
    v125 = static os_log_type_t.error.getter();
    sub_10005E11C(v125, 0xD000000000000043, 0x8000000100098620, 0xD000000000000054, 0x80000001000951C0, 100);

    sub_100005A28(v139, v138);
    (*(v123 + 8))(v129, v128);
    (*(v122 + 8))(v121, v133);
    v73 = v134;
    *v124 = 0xD000000000000043;
    *(v124 + 8) = 0x8000000100098620;
    *(v124 + 16) = 2;
    sub_100002074(&qword_1000B84D8, &qword_100092AA8);
    swift_storeEnumTagMultiPayload();
    goto LABEL_36;
  }

  v116 = swift_task_alloc();
  v5[61] = v116;
  *v116 = v5;
  v116[1] = sub_10006073C;

  sub_100004E0C(v139, v138);
}

uint64_t sub_10006073C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  v6 = *(*v4 + 488);
  v9 = *v4;
  *(v5 + 496) = a1;
  *(v5 + 504) = a2;
  *(v5 + 314) = a3;
  *(v5 + 512) = v3;

  if (v3)
  {
    v7 = sub_100060AE0;
  }

  else
  {
    v7 = sub_100060858;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100060858()
{
  v1 = *(v0 + 314);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 480);
  if ((v1 & 0x100) != 0)
  {
    v24 = *(v0 + 456);
    v34 = *(v0 + 440);
    v25 = *(v0 + 424);
    v32 = *(v0 + 472);
    v33 = *(v0 + 416);
    v26 = *(v0 + 392);
    v31 = *(v0 + 400);
    v29 = *(v0 + 464);
    v30 = *(v0 + 384);
    *(v0 + 296) = v3;
    *(v0 + 304) = v2;
    *(v0 + 312) = v1;
    sub_10000B6B0();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v27 = v3;
    *(v27 + 8) = v2;
    *(v27 + 16) = v1;

    sub_100005A28(v29, v32);
    (*(v26 + 8))(v31, v30);
    (*(v25 + 8))(v34, v33);
  }

  else
  {
    v5 = *(v0 + 456);
    v6 = *(v0 + 400);
    v7 = *(v0 + 496);
    v8 = *(v0 + 504);
    v9 = Data.base64EncodedString(options:)(0);
    v10._object = 0x8000000100098670;
    v10._countAndFlagsBits = 0xD000000000000015;
    URLRequest.setValue(_:forHTTPHeaderField:)(v9, v10);

    sub_100066370(v3, v2, v1, 0);
    v11 = *(v0 + 440);
    v12 = *(v0 + 416);
    v13 = *(v0 + 424);
    v15 = *(v0 + 392);
    v14 = *(v0 + 400);
    v16 = *(v0 + 384);
    v17 = *(v0 + 360);
    sub_100005A28(*(v0 + 464), *(v0 + 472));
    (*(v13 + 8))(v11, v12);
    (*(v15 + 32))(v17, v14, v16);
    sub_100002074(&qword_1000B84D8, &qword_100092AA8);
    swift_storeEnumTagMultiPayload();
  }

  v19 = *(v0 + 440);
  v18 = *(v0 + 448);
  v20 = *(v0 + 432);
  v22 = *(v0 + 400);
  v21 = *(v0 + 408);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100060AE0()
{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[58];
  v5 = v0[55];
  v6 = v0[52];
  v7 = v0[53];
  v9 = v0[49];
  v8 = v0[50];
  v10 = v0[48];

  sub_100005A28(v4, v1);
  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  v11 = v0[64];
  v13 = v0[55];
  v12 = v0[56];
  v14 = v0[54];
  v16 = v0[50];
  v15 = v0[51];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100060BEC(char a1, uint64_t a2)
{
  *(v3 + 792) = v2;
  *(v3 + 784) = a2;
  *(v3 + 581) = a1;
  v4 = *(*(sub_100002074(&qword_1000B84D0, &qword_100092A88) - 8) + 64) + 15;
  *(v3 + 800) = swift_task_alloc();
  v5 = type metadata accessor for ReportingAsset();
  *(v3 + 808) = v5;
  v6 = *(v5 - 8);
  *(v3 + 816) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 824) = swift_task_alloc();

  return _swift_task_switch(sub_100060CEC, 0, 0);
}

uint64_t sub_100060CEC()
{
  v1 = *(*(v0 + 792) + OBJC_IVAR____TtC13frauddefensed13ReportManager_eligibilityManager);
  *(v0 + 548) = 0u;
  *(v0 + 564) = 0u;
  *(v0 + 580) = 1;
  if (sub_10006B144(1u, v0 + 548))
  {
    v2 = swift_task_alloc();
    *(v0 + 832) = v2;
    *v2 = v0;
    v2[1] = sub_100060EC4;
    v3 = *(v0 + 792);

    return sub_10006361C();
  }

  else
  {
    v5 = *(v0 + 792);
    v6 = static os_log_type_t.error.getter();
    sub_10005E11C(v6, 0xD000000000000017, 0x8000000100095570, 0xD000000000000052, 0x8000000100098050, 27);
    v7 = *(v5 + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
    sub_100056EF0(3, 0, 0x4964696C61766E69, 0xEC0000007475706ELL);

    sub_10000B6B0();
    swift_allocError();
    *v8 = 0xD000000000000017;
    *(v8 + 8) = 0x8000000100095570;
    *(v8 + 16) = 0;
    swift_willThrow();
    v9 = *(v0 + 824);
    v10 = *(v0 + 800);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100060EC4()
{
  v2 = *(*v1 + 832);
  v5 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v3 = sub_100062B34;
  }

  else
  {
    v3 = sub_100060FD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100060FD8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_100064758(v4 + v5, v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 792);
    sub_10000BC10(*(v0 + 800), &qword_1000B84D0, &qword_100092A88);
    v7 = static os_log_type_t.error.getter();
    sub_10005E11C(v7, 0xD000000000000020, 0x80000001000980E0, 0xD000000000000052, 0x8000000100098050, 50);
    v8 = *(v6 + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
    sub_100056EF0(3, 0, 0xD000000000000016, 0x8000000100097010);

    sub_10000B6B0();
    swift_allocError();
    *v9 = 0xD000000000000020;
    *(v9 + 8) = 0x80000001000980E0;
    *(v9 + 16) = 14;
    swift_willThrow();
LABEL_13:
    v29 = *(v0 + 824);
    v30 = *(v0 + 800);

    v31 = *(v0 + 8);

    return v31();
  }

  v10 = *(v0 + 792);
  v11 = *(v0 + 784);
  v12 = *(v0 + 581);
  sub_1000647C8(*(v0 + 800), *(v0 + 824));
  if ((sub_10006482C(v12, v11) & 1) == 0)
  {
    v21 = *(v0 + 824);
    v22 = *(v0 + 792);
    v23 = static os_log_type_t.default.getter();
    sub_10005E11C(v23, 0xD000000000000019, 0x8000000100098110, 0xD000000000000052, 0x8000000100098050, 57);
    v24 = *(v22 + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
    sub_100056EF0(3, 0, 0x4465727574616566, 0xEF64656C62617369);

    sub_10000B6B0();
    swift_allocError();
    *v25 = 0xD000000000000019;
    *(v25 + 8) = 0x8000000100098110;
    v26 = 16;
LABEL_12:
    *(v25 + 16) = v26;
    swift_willThrow();
    sub_100066450(v21, type metadata accessor for ReportingAsset);
    goto LABEL_13;
  }

  v13 = *(v0 + 840);
  v14 = *(v0 + 792);
  sub_100064F10(*(v0 + 581), *(v0 + 784));
  if (v13)
  {
    v15 = *(v0 + 792);
    v16 = static os_log_type_t.error.getter();
    sub_10005E11C(v16, 0xD000000000000031, 0x8000000100098130, 0xD000000000000052, 0x8000000100098050, 66);
  }

  v17 = *(v0 + 792);
  v18 = *(v17 + OBJC_IVAR____TtC13frauddefensed13ReportManager_attestationManager);
  *(v0 + 848) = v18;
  if (!v18)
  {
    v21 = *(v0 + 824);
    v27 = static os_log_type_t.error.getter();
    sub_10005E11C(v27, 0xD000000000000036, 0x8000000100098170, 0xD000000000000052, 0x8000000100098050, 70);
    v28 = *(v17 + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
    sub_100056EF0(3, 0, 0xD000000000000012, 0x8000000100096FF0);

    sub_10000B6B0();
    swift_allocError();
    *v25 = 0xD000000000000036;
    *(v25 + 8) = 0x8000000100098170;
    v26 = 15;
    goto LABEL_12;
  }

  v19 = swift_task_alloc();
  *(v0 + 856) = v19;
  *v19 = v0;
  v19[1] = sub_100061440;

  return sub_100003DF0();
}

uint64_t sub_100061440(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  v6 = *(*v4 + 856);
  v9 = *v4;
  *(v5 + 864) = a1;
  *(v5 + 872) = a2;
  *(v5 + 546) = a3;
  *(v5 + 880) = v3;

  if (v3)
  {
    v7 = sub_100062DF0;
  }

  else
  {
    v7 = sub_100061560;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100061560()
{
  v1 = *(v0 + 546);
  if ((v1 & 0x100) != 0)
  {
    v28 = *(v0 + 872);
    v29 = *(v0 + 864);
    *(v0 + 528) = v29;
    *(v0 + 536) = v28;
    *(v0 + 544) = v1;
    sub_10004F88C(v29, v28, v1);
    sub_10000B6B0();
    swift_willThrowTypedImpl();
    v30 = swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v28;
    *(v31 + 16) = v1;
    sub_100065170(v29, v28, v1, 1);
    v32 = *(v0 + 792);
    LOBYTE(v28) = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(41);

    swift_getErrorValue();
    v34 = *(v0 + 504);
    v33 = *(v0 + 512);
    v35 = *(v0 + 520);
    v36._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 32032;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    sub_10005E11C(v28, 0xD000000000000025, 0x80000001000981B0, 0xD000000000000052, 0x8000000100098050, 81);

    *(v0 + 704) = v30;
    swift_errorRetain();
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    if (swift_dynamicCast())
    {
      v38 = *(v0 + 584);
      v39 = *(v0 + 592);
      v40 = *(v0 + 600);
      sub_10004F88C(v38, v39, v40);
    }

    else
    {
      _StringGuts.grow(_:)(41);

      swift_getErrorValue();
      v42 = *(v0 + 360);
      v41 = *(v0 + 368);
      v43 = *(v0 + 376);
      v44._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v44);

      v45._countAndFlagsBits = 32032;
      v45._object = 0xE200000000000000;
      String.append(_:)(v45);
      v38 = 0xD000000000000025;
      v39 = 0x80000001000981B0;

      v40 = 15;
    }

    v46 = *(v0 + 848);
    v47 = *(v0 + 824);
    v48 = *(*(v0 + 792) + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
    v49 = sub_10004F2E4(v38, v39, v40);
    v51 = v50;
    sub_100011CAC(v38, v39, v40);
    sub_100056EF0(3, 0, v49, v51);

    swift_allocError();
    *v52 = v38;
    *(v52 + 8) = v39;
    *(v52 + 16) = v40;
    swift_willThrow();

    sub_100066450(v47, type metadata accessor for ReportingAsset);
    v53 = *(v0 + 824);
    v54 = *(v0 + 800);

    v55 = *(v0 + 8);

    return v55();
  }

  else
  {
    v2 = *(v0 + 872);
    v3 = *(v0 + 864);
    v4 = *(v0 + 792);
    v5 = *(v0 + 784);
    v6 = *(*(v0 + 824) + *(*(v0 + 808) + 20));
    v7 = v6[2];
    v8 = v6[3];
    v9 = v6[4];
    v10 = v6[5];
    v11 = v6[9];
    v12 = v6[10];
    v13 = v6[11];
    v14 = v6[12];
    v15 = v6[16];
    v16 = v6[17];
    v17 = v6[18];
    v18 = v6[19];
    *(v0 + 144) = *(v0 + 581);
    *(v0 + 152) = v5;
    *(v0 + 160) = v3;
    *(v0 + 168) = v2;
    *(v0 + 176) = v15;
    *(v0 + 184) = v16;
    *(v0 + 192) = v17;
    *(v0 + 200) = v18;
    *(v0 + 208) = v11;
    *(v0 + 216) = v12;
    *(v0 + 224) = v13;
    *(v0 + 232) = v14;
    *(v0 + 240) = v7;
    *(v0 + 248) = v8;
    *(v0 + 256) = v9;
    *(v0 + 264) = v10;
    v19 = *(v0 + 144);
    v20 = *(v0 + 160);
    v21 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 176);
    *(v0 + 64) = v21;
    *(v0 + 16) = v19;
    *(v0 + 32) = v20;
    v22 = *(v0 + 208);
    v23 = *(v0 + 224);
    v24 = *(v0 + 256);
    *(v0 + 112) = *(v0 + 240);
    *(v0 + 128) = v24;
    *(v0 + 80) = v22;
    *(v0 + 96) = v23;
    v56 = *(*(v4 + OBJC_IVAR____TtC13frauddefensed13ReportManager_networkManager) + 16);
    v25 = v3;

    v26 = swift_task_alloc();
    *(v0 + 888) = v26;
    *v26 = v0;
    v26[1] = sub_100061A2C;

    return (sub_10005EE10)(v0 + 16);
  }
}

uint64_t sub_100061A2C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  v6 = *(*v4 + 888);
  v9 = *v4;
  *(v5 + 896) = a1;
  *(v5 + 904) = a2;
  *(v5 + 582) = a3;
  *(v5 + 912) = v3;

  if (v3)
  {
    v7 = sub_100062830;
  }

  else
  {
    v7 = sub_100061B4C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100061B4C()
{
  v1 = *(v0 + 582);
  if ((v1 & 0x100) != 0)
  {
    v50 = *(v0 + 904);
    v51 = *(v0 + 896);
    *(v0 + 656) = v51;
    *(v0 + 664) = v50;
    *(v0 + 672) = v1;
    sub_10000B6B0();
    swift_willThrowTypedImpl();
    v52 = swift_allocError();
    *v53 = v51;
    *(v53 + 8) = v50;
    *(v53 + 16) = v1;
    v54 = *(v0 + 792);
    sub_1000651C0(v0 + 144);
    LOBYTE(v51) = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(37);

    swift_getErrorValue();
    v56 = *(v0 + 432);
    v55 = *(v0 + 440);
    v57 = *(v0 + 448);
    v58._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v58);

    v59._countAndFlagsBits = 32032;
    v59._object = 0xE200000000000000;
    String.append(_:)(v59);
    sub_10005E11C(v51, 0xD000000000000021, 0x80000001000981E0, 0xD000000000000052, 0x8000000100098050, 133);

    *(v0 + 736) = v52;
    swift_errorRetain();
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    if (swift_dynamicCast())
    {
      v60 = *(v0 + 608);
      v61 = *(v0 + 616);
      v62 = *(v0 + 624);
      sub_10004F88C(v60, v61, v62);
    }

    else
    {
      _StringGuts.grow(_:)(37);

      swift_getErrorValue();
      v64 = *(v0 + 408);
      v63 = *(v0 + 416);
      v65 = *(v0 + 424);
      v66._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v66);

      v67._countAndFlagsBits = 32032;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);
      v61 = 0x80000001000981E0;
      v60 = 0xD000000000000021;

      v62 = 2;
    }

    v68 = *(v0 + 872);
    v69 = *(v0 + 864);
    v70 = *(v0 + 848);
    v99 = *(v0 + 824);
    v71 = *(*(v0 + 792) + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
    v72 = sub_10004F2E4(v60, v61, v62);
    v74 = v73;
    sub_100011CAC(v60, v61, v62);
    sub_100056EF0(3, 0, v72, v74);

    swift_allocError();
    *v75 = v60;
    *(v75 + 8) = v61;
    *(v75 + 16) = v62;
    swift_willThrow();

    sub_100066450(v99, type metadata accessor for ReportingAsset);
    v76 = *(v0 + 824);
    v77 = *(v0 + 800);

    v78 = *(v0 + 8);
    goto LABEL_24;
  }

  sub_100065214(*(v0 + 792), *(v0 + 784), *(v0 + 581));
  v3 = v2;
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  inited = swift_initStackObject();
  *(inited + 32) = 0x745F74726F706572;
  *(inited + 16) = xmmword_10008F580;
  *(inited + 40) = 0xEB00000000657079;
  v5 = String._bridgeToObjectiveC()();

  *(inited + 48) = v5;
  v6 = sub_100011A78(inited);
  swift_setDeallocating();
  sub_10000BC10(inited + 32, &qword_1000B6CD0, &qword_100092B90);
  v98 = (v0 + 328);
  if (v3)
  {
    v7 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10005B524(v7, 0xD000000000000010, 0x8000000100098380, isUniquelyReferenced_nonNull_native);
  }

  v9 = *(v0 + 784);
  v10 = *(*(v0 + 792) + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
  v11 = *(v0 + 581);
  sub_100056EF0(3, v6, 0, 0);
  sub_1000651C0(v0 + 144);

  v12 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(41);
  *(v0 + 680) = 0;
  *(v0 + 688) = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD000000000000019;
  v13._object = 0x8000000100098210;
  String.append(_:)(v13);
  *(v0 + 545) = v11;
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 0x6E65746E6F63202CLL;
  v14._object = 0xEA00000000003D74;
  String.append(_:)(v14);
  v15._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 32032;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  sub_10005E11C(v12, *(v0 + 680), *(v0 + 688), 0xD000000000000052, 0x8000000100098050, 146);

  if (sub_100065384(v11, v9))
  {
    v17 = *(v0 + 792);
    v18 = sub_10006584C();
    sub_10000BCB8(0, &qword_1000B6CD8, NSNumber_ptr);
    v19.super.super.isa = NSNumber.init(integerLiteral:)(1717194).super.super.isa;
    v96 = static os_log_type_t.debug.getter();
    *&v102 = 0;
    *(&v102 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(170);
    v20._countAndFlagsBits = 0xD00000000000002FLL;
    v20._object = 0x8000000100095A60;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0xD00000000000001ALL;
    v21._object = 0x8000000100098230;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0x746974627573202CLL;
    v22._object = 0xEB000000003D656CLL;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 0xD000000000000049;
    v23._object = 0x8000000100098250;
    v24 = v18;
    String.append(_:)(v23);
    v25._countAndFlagsBits = 0x547261646172202CLL;
    v25._object = 0xED00003D656C7469;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0xD00000000000002DLL;
    v26._object = 0x80000001000982A0;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0xD000000000000013;
    v27._object = 0x8000000100095A90;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 0xD000000000000088;
    v28._object = 0x80000001000982D0;
    String.append(_:)(v28);
    v29._countAndFlagsBits = 0xD000000000000013;
    v29._object = 0x8000000100095AB0;
    String.append(_:)(v29);
    isa = v19.super.super.isa;
    v30 = [(objc_class *)v19.super.super.isa description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0xD000000000000015;
    v35._object = 0x8000000100095AD0;
    String.append(_:)(v35);
    v36._object = 0x8000000100098360;
    v36._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 0xD000000000000018;
    v37._object = 0x8000000100095AF0;
    String.append(_:)(v37);
    v38._countAndFlagsBits = 0x746544206D617053;
    v38._object = 0xEE006E6F69746365;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 32032;
    v39._object = 0xE200000000000000;
    String.append(_:)(v39);
    sub_10005E11C(v96, 0, 0xE000000000000000, 0xD000000000000059, 0x8000000100095B10, 93);

    v40 = *(v18 + 24);
    if (v40 && (*(v0 + 760) = &OBJC_PROTOCOL___BSServiceConnectionClient, (v41 = swift_dynamicCastObjCProtocolConditional()) != 0))
    {
      v42 = v41;
      v101 = v40;
      v43 = String._bridgeToObjectiveC()();
      v44 = String._bridgeToObjectiveC()();
      v45 = [objc_opt_self() attributeWithDomain:v43 name:v44];

      sub_100002074(&qword_1000B7738, &qword_1000912F0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100091290;
      *(v46 + 32) = v45;
      sub_10000BCB8(0, &qword_1000B7740, RBSAttribute_ptr);
      v47 = v45;
      v48 = Array._bridgeToObjectiveC()().super.isa;

      v49 = [v42 remoteTargetWithLaunchingAssertionAttributes:v48];

      if (v49)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v102 = 0u;
        v103 = 0u;
      }

      *v98 = v102;
      *(v0 + 344) = v103;
      if (*(v0 + 352))
      {
        sub_100002074(&qword_1000B7750, qword_100091308);
        if (swift_dynamicCast())
        {
          v100 = v47;
          v80 = *(v0 + 776);
          v81 = String._bridgeToObjectiveC()();
          v82 = String._bridgeToObjectiveC()();
          v83 = String._bridgeToObjectiveC()();
          v84 = String._bridgeToObjectiveC()();
          v85 = String._bridgeToObjectiveC()();
          v86 = String._bridgeToObjectiveC()();
          v87 = isa;
          [v80 bannerWith:v81 and:v82 radarTitle:v83 radarDescription:v84 radarComponentID:isa radarComponentName:v85 radarComponentVersion:v86];

          v88 = *(v24 + 24);
          if (v88)
          {
            v89 = v88;
            [v89 invalidate];

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          goto LABEL_22;
        }
      }

      else
      {
        sub_10000BC10(v98, &qword_1000B7748, &unk_1000912F8);
      }

      v90 = static os_log_type_t.error.getter();
      sub_10005E11C(v90, 0xD00000000000002FLL, 0x8000000100095BC0, 0xD000000000000059, 0x8000000100095B10, 102);
    }

    else
    {
      v79 = static os_log_type_t.error.getter();
      sub_10005E11C(v79, 0xD00000000000002CLL, 0x8000000100095B70, 0xD000000000000059, 0x8000000100095B10, 96);
    }

    v87 = v19.super.super.isa;
LABEL_22:
  }

  v91 = *(v0 + 872);
  v92 = *(v0 + 848);
  v93 = *(v0 + 824);
  v94 = *(v0 + 800);

  sub_100066450(v93, type metadata accessor for ReportingAsset);

  v78 = *(v0 + 8);
LABEL_24:

  return v78();
}

uint64_t sub_100062830()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 792);
  sub_1000651C0(v0 + 144);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(37);

  swift_getErrorValue();
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 448);
  v7._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32032;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  sub_10005E11C(v3, 0xD000000000000021, 0x80000001000981E0, 0xD000000000000052, 0x8000000100098050, 133);

  *(v0 + 736) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 608);
    v10 = *(v0 + 616);
    v11 = *(v0 + 624);
    sub_10004F88C(v9, v10, v11);
  }

  else
  {
    _StringGuts.grow(_:)(37);

    swift_getErrorValue();
    v13 = *(v0 + 408);
    v12 = *(v0 + 416);
    v14 = *(v0 + 424);
    v15._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 32032;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v9 = 0xD000000000000021;
    v10 = 0x80000001000981E0;

    v11 = 2;
  }

  v17 = *(v0 + 872);
  v18 = *(v0 + 864);
  v19 = *(v0 + 848);
  v29 = *(v0 + 824);
  v20 = *(*(v0 + 792) + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
  v21 = sub_10004F2E4(v9, v10, v11);
  v23 = v22;
  sub_100011CAC(v9, v10, v11);
  sub_100056EF0(3, 0, v21, v23);

  sub_10000B6B0();
  swift_allocError();
  *v24 = v9;
  *(v24 + 8) = v10;
  *(v24 + 16) = v11;
  swift_willThrow();

  sub_100066450(v29, type metadata accessor for ReportingAsset);
  v25 = *(v0 + 824);
  v26 = *(v0 + 800);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100062B34()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 792);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(43);

  swift_getErrorValue();
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);
  v6 = *(v0 + 400);
  v7._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32032;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  sub_10005E11C(v3, 0xD000000000000027, 0x80000001000980B0, 0xD000000000000052, 0x8000000100098050, 36);

  *(v0 + 752) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 632);
    v10 = *(v0 + 640);
    v11 = *(v0 + 648);
    sub_10004F88C(v9, v10, v11);
  }

  else
  {
    v12 = *(v0 + 840);
    _StringGuts.grow(_:)(43);

    swift_getErrorValue();
    v14 = *(v0 + 456);
    v13 = *(v0 + 464);
    v15 = *(v0 + 472);
    v16._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 32032;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v9 = 0xD000000000000027;
    v10 = 0x80000001000980B0;

    v11 = 8;
  }

  v18 = *(v0 + 840);
  v19 = *(*(v0 + 792) + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
  v20 = sub_10004F2E4(v9, v10, v11);
  v22 = v21;
  sub_100011CAC(v9, v10, v11);
  sub_100056EF0(3, 0, v20, v22);

  sub_10000B6B0();
  swift_allocError();
  *v23 = v9;
  *(v23 + 8) = v10;
  *(v23 + 16) = v11;
  swift_willThrow();

  v24 = *(v0 + 824);
  v25 = *(v0 + 800);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100062DF0()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 792);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 520);
  v7._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32032;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  sub_10005E11C(v3, 0xD000000000000025, 0x80000001000981B0, 0xD000000000000052, 0x8000000100098050, 81);

  *(v0 + 704) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 584);
    v10 = *(v0 + 592);
    v11 = *(v0 + 600);
    sub_10004F88C(v9, v10, v11);
  }

  else
  {
    _StringGuts.grow(_:)(41);

    swift_getErrorValue();
    v13 = *(v0 + 360);
    v12 = *(v0 + 368);
    v14 = *(v0 + 376);
    v15._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 32032;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v9 = 0xD000000000000025;
    v10 = 0x80000001000981B0;

    v11 = 15;
  }

  v17 = *(v0 + 848);
  v18 = *(v0 + 824);
  v19 = *(*(v0 + 792) + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
  v20 = sub_10004F2E4(v9, v10, v11);
  v22 = v21;
  sub_100011CAC(v9, v10, v11);
  sub_100056EF0(3, 0, v20, v22);

  sub_10000B6B0();
  swift_allocError();
  *v23 = v9;
  *(v23 + 8) = v10;
  *(v23 + 16) = v11;
  swift_willThrow();

  sub_100066450(v18, type metadata accessor for ReportingAsset);
  v24 = *(v0 + 824);
  v25 = *(v0 + 800);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1000630D0()
{
  v1 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC13frauddefensed13ReportManager_uafAssetManager;
  v8 = *(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager_uafAssetManager);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;

  sub_1000024AC(0, 0, v5, &unk_100092A80, v9);

  sub_10000BC10(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset, &qword_1000B84D0, &qword_100092A88);
  v10 = *(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager_eligibilityManager);

  v11 = *(v0 + v7);

  v12 = *(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager_attestationManager);

  v13 = *(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager_networkManager);

  v14 = *(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);

  v15 = *(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager____lazy_storage___angelServerClient);

  v16 = OBJC_IVAR____TtC13frauddefensed13ReportManager_logger;
  v17 = type metadata accessor for Logger();
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  return v0;
}

uint64_t sub_1000632A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002A54;

  return sub_100052894();
}

uint64_t sub_100063338()
{
  sub_1000630D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReportManager()
{
  result = qword_1000B8408;
  if (!qword_1000B8408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000633E4()
{
  sub_1000634D0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000634D0()
{
  if (!qword_1000B8418)
  {
    type metadata accessor for ReportingAsset();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B8418);
    }
  }
}

uint64_t sub_100063528()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063568()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002A54;

  return sub_1000632A8();
}

uint64_t sub_10006361C()
{
  v1[11] = v0;
  v2 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = *(*(sub_100002074(&qword_1000B84D0, &qword_100092A88) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v1[17] = v4;
  v5 = *(v4 - 8);
  v1[18] = v5;
  v6 = *(v5 + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100063770, 0, 0);
}

uint64_t sub_100063770()
{
  v0[20] = *(v0[11] + OBJC_IVAR____TtC13frauddefensed13ReportManager_uafAssetManager);
  v1 = sub_10005163C();
  v2 = static os_log_type_t.default.getter();
  if (v1)
  {
    sub_10005E11C(v2, 0xD00000000000002ELL, 0x8000000100098840, 0xD000000000000052, 0x8000000100098050, 255);
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_100063AD8;
    v4 = v0[19];
    v5 = v0[20];

    return sub_1000505B8(v4);
  }

  else
  {
    sub_10005E11C(v2, 0xD000000000000049, 0x8000000100098770, 0xD000000000000052, 0x8000000100098050, 252);
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_100063920;

    return sub_100051B58();
  }
}

uint64_t sub_100063920()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[19];
    v7 = v2[15];
    v6 = v2[16];
    v9 = v2[13];
    v8 = v2[14];
    v10 = v2[12];

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v2[22] = v13;
    *v13 = v4;
    v13[1] = sub_100063AD8;
    v14 = v2[19];
    v15 = v2[20];

    return sub_1000505B8(v14);
  }
}

uint64_t sub_100063AD8()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_100064444;
  }

  else
  {
    v3 = sub_100063BEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100063BEC()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[13];
  sub_1000663EC(v0[19], v3);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_100063CC0;
  v5 = v0[16];
  v6 = v0[13];

  return sub_10004E568(v5, v6);
}

uint64_t sub_100063CC0()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_100064568;
  }

  else
  {
    v3 = sub_100063DD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100063DD4()
{
  v1 = v0[16];
  v2 = v0[11];
  sub_100066450(v0[19], type metadata accessor for UAFAssetManager.AssetInfo);
  v3 = type metadata accessor for ReportingAsset();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_10006637C(v1, v2 + v5);
  swift_endAccess();
  v6 = v0[15];
  v7 = v0[11];
  v8 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_100064758(v7 + v8, v6);
  LODWORD(v3) = (*(v4 + 48))(v6, 1, v3);
  sub_10000BC10(v6, &qword_1000B84D0, &qword_100092A88);
  if (v3 == 1)
  {
    v9 = v0[11];
    v10 = static os_log_type_t.error.getter();
    sub_10005E11C(v10, 0xD000000000000018, 0x8000000100098820, 0xD000000000000052, 0x8000000100098050, 270);
    sub_10000B6B0();
    swift_allocError();
    *v11 = 0xD000000000000018;
    *(v11 + 8) = 0x8000000100098820;
    *(v11 + 16) = 14;
    swift_willThrow();
    v12 = v0[19];
    v14 = v0[15];
    v13 = v0[16];
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
  }

  else
  {
    v19 = v0[19];
    v20 = v0[15];
    v21 = v0[16];
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10006406C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1000646A8;
  }

  else
  {
    v3 = sub_100064180;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100064180()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[14];
  v4 = v0[11];
  v5 = type metadata accessor for ReportingAsset();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_10006637C(v3, v4 + v7);
  swift_endAccess();
  v8 = static os_log_type_t.debug.getter();
  sub_10005E11C(v8, 0xD000000000000022, 0x80000001000987F0, 0xD000000000000052, 0x8000000100098050, 266);

  v9 = v0[15];
  v10 = v0[11];
  v11 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_100064758(v10 + v11, v9);
  LODWORD(v5) = (*(v6 + 48))(v9, 1, v5);
  sub_10000BC10(v9, &qword_1000B84D0, &qword_100092A88);
  if (v5 == 1)
  {
    v12 = v0[11];
    v13 = static os_log_type_t.error.getter();
    sub_10005E11C(v13, 0xD000000000000018, 0x8000000100098820, 0xD000000000000052, 0x8000000100098050, 270);
    sub_10000B6B0();
    swift_allocError();
    *v14 = 0xD000000000000018;
    *(v14 + 8) = 0x8000000100098820;
    *(v14 + 16) = 14;
    swift_willThrow();
    v15 = v0[19];
    v17 = v0[15];
    v16 = v0[16];
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];
  }

  else
  {
    v22 = v0[19];
    v23 = v0[15];
    v24 = v0[16];
    v26 = v0[13];
    v25 = v0[14];
    v27 = v0[12];
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100064444()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[11];
  v4 = v0[12];
  v5 = OBJC_IVAR____TtC13frauddefensed13ReportManager_logger;
  v0[26] = v0[23];
  v0[27] = v5;
  v6 = static os_log_type_t.default.getter();
  sub_10005E11C(v6, 0xD00000000000002ELL, 0x80000001000987C0, 0xD000000000000052, 0x8000000100098050, 262);
  (*(v2 + 56))(v4, 1, 1, v1);
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_10006406C;
  v8 = v0[14];
  v9 = v0[12];

  return sub_10004E568(v8, v9);
}

uint64_t sub_100064568()
{
  sub_100066450(v0[19], type metadata accessor for UAFAssetManager.AssetInfo);
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[11];
  v4 = v0[12];
  v5 = OBJC_IVAR____TtC13frauddefensed13ReportManager_logger;
  v0[26] = v0[25];
  v0[27] = v5;
  v6 = static os_log_type_t.default.getter();
  sub_10005E11C(v6, 0xD00000000000002ELL, 0x80000001000987C0, 0xD000000000000052, 0x8000000100098050, 262);
  (*(v2 + 56))(v4, 1, 1, v1);
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_10006406C;
  v8 = v0[14];
  v9 = v0[12];

  return sub_10004E568(v8, v9);
}

uint64_t sub_1000646A8()
{
  v1 = v0[26];

  v2 = v0[29];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100064758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B84D0, &qword_100092A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000647C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportingAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006482C(int a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v57 = type metadata accessor for Locale();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v57, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v56 - v11;
  v13 = sub_100002074(&qword_1000B84D0, &qword_100092A88);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for ReportingAsset();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  swift_beginAccess();
  sub_100064758(v2 + v24, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000BC10(v17, &qword_1000B84D0, &qword_100092A88);
    v25 = static os_log_type_t.error.getter();
    sub_10005E11C(v25, 0xD00000000000004DLL, 0x80000001000986D0, 0xD000000000000052, 0x8000000100098050, 183);
LABEL_25:
    v53 = 0;
    return v53 & 1;
  }

  sub_1000647C8(v17, v23);
  v26 = *&v23[*(v18 + 20)];
  v27 = *(v26 + 144);
  v63[7] = *(v26 + 128);
  v28 = *(v26 + 64);
  v29 = *(v26 + 160);
  v63[8] = v27;
  v63[9] = v29;
  v64 = *(v26 + 176);
  v30 = *(v26 + 80);
  v31 = *(v26 + 96);
  v63[3] = v28;
  v63[4] = v30;
  v32 = *(v26 + 112);
  v63[5] = v31;
  v63[6] = v32;
  v33 = *(v26 + 16);
  v34 = *(v26 + 48);
  v63[1] = *(v26 + 32);
  v63[2] = v34;
  v63[0] = v33;
  sub_100021850(v63, v62);
  static Locale.current.getter();
  Locale.region.getter();
  (*(v3 + 8))(v7, v57);
  v35 = type metadata accessor for Locale.Region();
  v36 = *(v35 - 8);
  v37 = v23;
  if ((*(v36 + 48))(v12, 1, v35) == 1)
  {
    v38 = 0x6E776F6E6B6E75;
    sub_10000BC10(v12, &qword_1000B6A68, &qword_10008F6F0);
    v39 = 0xE700000000000000;
  }

  else
  {
    v38 = Locale.Region.identifier.getter();
    v39 = v40;
    (*(v36 + 8))(v12, v35);
  }

  v41 = v58;
  if (v59)
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      v44 = 0x8000000100098430;
      v42 = 0xD000000000000011;
      if (*(v41 + 16))
      {
        goto LABEL_12;
      }

LABEL_22:

      sub_1000216E0(v63);

      goto LABEL_23;
    }

    v42 = 0x73656D2D6D617073;
  }

  else
  {
    v42 = 0x73656D2D6D617073;
  }

  v44 = 0xED00007365676173;
  if (!*(v41 + 16))
  {
    goto LABEL_22;
  }

LABEL_12:
  v45 = sub_100057F68(v42, v44);
  v47 = v46;

  if ((v47 & 1) == 0 || (sub_100005BBC(*(v41 + 56) + 32 * v45, v62), sub_100002074(&qword_1000B7380, &unk_100090F50), (swift_dynamicCast() & 1) == 0))
  {

    sub_1000216E0(v63);
LABEL_23:
    v54 = static os_log_type_t.default.getter();
    sub_10005E11C(v54, 0xD000000000000041, 0x8000000100098720, 0xD000000000000052, 0x8000000100098050, 243);
LABEL_24:
    sub_100066450(v23, type metadata accessor for ReportingAsset);
    goto LABEL_25;
  }

  if (!*(v60 + 16) || (v48 = *(v60 + 32), , , !*(v48 + 16)) || (v49 = sub_100057F68(0x2D6567617373656DLL, 0xEF65636976726573), (v50 & 1) == 0))
  {

    sub_1000216E0(v63);

    goto LABEL_24;
  }

  sub_100005BBC(*(v48 + 56) + 32 * v49, v62);

  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1000216E0(v63);
    goto LABEL_24;
  }

  v52 = v60;
  v51 = v61;
  if (sub_1000658C8())
  {
    v53 = sub_1000659C0(v59, v52, v51, v38, v39, v63);
  }

  else
  {
    v53 = 0;
  }

  sub_1000216E0(v63);
  sub_100066450(v37, type metadata accessor for ReportingAsset);
  return v53 & 1;
}

uint64_t sub_100064F10(char a1, uint64_t a2)
{
  result = sub_1000660E0(a2, a1);
  if (result)
  {
    v4 = result;
    v16 = v2;
    v5 = *(result + 16);
    if (v5)
    {
      v6 = 0;
      while (v6 < *(v4 + 16))
      {
        v7 = *(v4 + 8 * v6 + 32);
        if (!*(v7 + 16))
        {
          goto LABEL_12;
        }

        v8 = *(v4 + 8 * v6 + 32);

        v9 = sub_100057F68(0x6E6F697369636564, 0xED00006F666E692DLL);
        if ((v10 & 1) == 0)
        {

LABEL_12:

          v11 = static os_log_type_t.error.getter();
          v12 = v16;
          v13 = 289;
          goto LABEL_13;
        }

        sub_100005BBC(*(v7 + 56) + 32 * v9, v17);

        sub_100002074(&qword_1000B7388, &qword_100091E50);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_12;
        }

        ++v6;

        if (v5 == v6)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    v11 = static os_log_type_t.error.getter();
    v12 = v2;
    v13 = 281;
LABEL_13:
    sub_10005E11C(v11, 0xD000000000000037, 0x8000000100098690, 0xD000000000000052, 0x8000000100098050, v13);
    v14 = *(v12 + OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager);
    sub_100056EF0(3, 0, 0x4964696C61766E69, 0xEC0000007475706ELL);

    sub_10000B6B0();
    swift_allocError();
    *v15 = 0xD000000000000037;
    *(v15 + 8) = 0x8000000100098690;
    *(v15 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_100065170(void *a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {

    sub_100011CAC(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_100065214(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1000660E0(a2, a3);
  if (!result)
  {
    v11 = static os_log_type_t.debug.getter();
    sub_10005E11C(v11, 0xD000000000000027, 0x8000000100098450, 0xD000000000000052, 0x8000000100098050, 109);
    return 0;
  }

  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {
LABEL_11:

    return 0;
  }

  v6 = 0;
  while (v6 < *(v4 + 16))
  {
    v7 = *(v4 + 8 * v6 + 32);
    if (*(v7 + 16))
    {
      v8 = *(v4 + 8 * v6 + 32);

      v9 = sub_100057F68(0xD000000000000012, 0x8000000100098480);
      if (v10)
      {
        sub_100005BBC(*(v7 + 56) + 32 * v9, v13);

        result = swift_dynamicCast();
        if (result)
        {

          return v12;
        }
      }

      else
      {
      }
    }

    if (v5 == ++v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100065384(char a1, uint64_t a2)
{
  if (qword_1000B66E0 != -1)
  {
    v23 = a1;
    swift_once();
    a1 = v23;
  }

  if (byte_1000B9460 != 1)
  {
    v21 = static os_log_type_t.default.getter();
    sub_10005E11C(v21, 0xD00000000000002CLL, 0x80000001000983A0, 0xD000000000000052, 0x8000000100098050, 320);
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = sub_100057F68(0x692D74726F706572, 0xEB000000006F666ELL);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_100005BBC(*(a2 + 56) + 32 * v4, &v30);
  sub_100002074(&qword_1000B7388, &qword_100091E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v28 + 16))
  {
    goto LABEL_25;
  }

  v6 = sub_100057F68(0x646574726F706572, 0xED00006D6F72662DLL);
  if ((v7 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_100005BBC(*(v28 + 56) + 32 * v6, &v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v30 = v28;
  v31 = v29;
  sub_10001C1B8();
  v8 = StringProtocol.contains<A>(_:)();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1000660E0(a2, v3);
  if (!v9)
  {
    return 0;
  }

  if (!*(v9 + 16) || (v10 = *(v9 + 32), , , !*(v10 + 16)) || (v11 = sub_100057F68(0x2D6567617373656DLL, 0xEF65636976726573), (v12 & 1) == 0))
  {
LABEL_25:

    return 0;
  }

  sub_100005BBC(*(v10 + 56) + 32 * v11, &v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v30 = 0x726163736FLL;
  v31 = 0xE500000000000000;
  v13 = StringProtocol.contains<A>(_:)();

  if (v13)
  {
    return 0;
  }

  v14 = static os_log_type_t.error.getter();
  sub_10005E11C(v14, 0xD000000000000033, 0x80000001000983D0, 0xD000000000000052, 0x8000000100098050, 339);
  v15 = sub_100054D10();
  if ((v16 & 1) == 0)
  {
    if (v15 <= 4)
    {
      v24 = v15;
      if (qword_1000B6658 != -1)
      {
        swift_once();
      }

      if (qword_1000B7C78)
      {
        v30 = v24 + 1;
        v25 = qword_1000B7C78;
        v26 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v27 = String._bridgeToObjectiveC()();
        [v25 setValue:v26 forKey:{v27, 0x6567617373654D69, 0xE800000000000000}];

        swift_unknownObjectRelease();
      }

      return 1;
    }

    return 0;
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    return 1;
  }

  v17 = 1;
  v30 = 1;
  v18 = qword_1000B7C78;
  v19 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v20 = String._bridgeToObjectiveC()();
  [v18 setValue:v19 forKey:{v20, 0x6567617373654D69, 0xE800000000000000}];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_10006584C()
{
  v1 = OBJC_IVAR____TtC13frauddefensed13ReportManager____lazy_storage___angelServerClient;
  if (*(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager____lazy_storage___angelServerClient))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13frauddefensed13ReportManager____lazy_storage___angelServerClient);
  }

  else
  {
    v3 = v0;
    v4 = type metadata accessor for TrustKitUIServerClient();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_10002D554();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000658C8()
{
  sub_10001C1B8();
  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)())
  {
    v0 = 1;
  }

  else
  {
    v0 = StringProtocol.contains<A>(_:)();
  }

  return v0 & 1;
}

uint64_t sub_1000659C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a2 == 5456722 && a3 == 0xE300000000000000;
  if (a1)
  {
    if (a1 == 1)
    {
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = a6[13];
        if (!*(v13 + 16))
        {
          return 0;
        }

        goto LABEL_20;
      }

      if (a2 == 0x6567617373654D69 && a3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v18 = a6[12];
      }

      else
      {
        if ((a2 != 5459283 || a3 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v18 = a6[11];
      }
    }

    else
    {
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = a6[6];
        if (!*(v13 + 16))
        {
          return 0;
        }

LABEL_20:
        v14 = sub_100057F68(a4, a5);
        if (v15)
        {
          return *(*(v13 + 56) + v14);
        }

        if (*(v13 + 16))
        {
          v14 = sub_100057F68(0x6C61626F6C67, 0xE600000000000000);
          if (v16)
          {
            return *(*(v13 + 56) + v14);
          }
        }

        return 0;
      }

      if (a2 == 0x6567617373654D69 && a3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v18 = a6[5];
      }

      else
      {
        if ((a2 != 5459283 || a3 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v18 = a6[4];
      }
    }
  }

  else
  {
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = a6[20];
      if (!*(v13 + 16))
      {
        return 0;
      }

      goto LABEL_20;
    }

    if (a2 == 0x6567617373654D69 && a3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v18 = a6[19];
    }

    else
    {
      if ((a2 != 5459283 || a3 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v18 = a6[18];
    }
  }

  return sub_100021018(a4, a5, v18);
}

uint64_t sub_100065C98()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13frauddefensed13ReportManager_reportingAsset;
  v3 = type metadata accessor for ReportingAsset();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC13frauddefensed13ReportManager_eligibilityManager;
  v5 = type metadata accessor for EligibilityManager();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100003448(v10, qword_1000B9388);
  v12 = *(*(v10 - 8) + 16);
  v44 = v11;
  v12(v8 + v9);
  *(v1 + v4) = v8;
  v43 = OBJC_IVAR____TtC13frauddefensed13ReportManager_uafAssetManager;
  v13 = type metadata accessor for UAFAssetManager(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC13frauddefensed15UAFAssetManager_logger;
  if (qword_1000B66B8 != -1)
  {
    swift_once();
  }

  v18 = sub_100003448(v10, qword_1000B9400);
  (v12)(v16 + v17, v18, v10);
  *(v16 + 16) = 0xD000000000000019;
  *(v16 + 24) = 0x8000000100094840;
  *(v16 + 32) = 0xD000000000000022;
  *(v16 + 40) = 0x8000000100094860;
  *(v16 + 48) = 0xD00000000000001CLL;
  *(v16 + 56) = 0x8000000100093B80;
  strcpy((v16 + 64), "tk.reporting");
  *(v16 + 77) = 0;
  *(v16 + 78) = -5120;
  *(v1 + v43) = v16;
  v19 = type metadata accessor for AttestationManager();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1000055C8();
  v23 = OBJC_IVAR____TtC13frauddefensed18AttestationManager_logger;
  if (qword_1000B6698 != -1)
  {
    swift_once();
  }

  v24 = sub_100003448(v10, qword_1000B93A0);
  (v12)(v22 + v23, v24, v10);
  if (!DeviceIdentityIsSupported())
  {

    v22 = 0;
  }

  *(v1 + OBJC_IVAR____TtC13frauddefensed13ReportManager_attestationManager) = v22;
  v25 = OBJC_IVAR____TtC13frauddefensed13ReportManager_networkManager;
  v26 = sub_100002074(&qword_1000B84F0, &qword_100092AB8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(v1 + v25) = sub_10005EC70();
  v29 = OBJC_IVAR____TtC13frauddefensed13ReportManager_analyticsManager;
  v30 = type metadata accessor for DaemonAnalyticsManager();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v34 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  if (qword_1000B66A8 != -1)
  {
    swift_once();
  }

  v35 = sub_100003448(v10, qword_1000B93D0);
  (v12)(v33 + v34, v35, v10);
  v36 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager;
  v37 = *(v5 + 48);
  v38 = *(v5 + 52);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  (v12)(v39 + OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger, v44, v10);
  *(v33 + v36) = v39;
  *(v1 + v29) = v33;
  *(v1 + OBJC_IVAR____TtC13frauddefensed13ReportManager____lazy_storage___angelServerClient) = 0;
  v40 = OBJC_IVAR____TtC13frauddefensed13ReportManager_logger;
  if (qword_1000B6670 != -1)
  {
    swift_once();
  }

  v41 = sub_100003448(v10, qword_1000B9328);
  (v12)(v1 + v40, v41, v10);
  return v1;
}

uint64_t sub_1000660E0(uint64_t a1, char a2)
{
  if (!a2)
  {
    v3 = 0x73656D2D6D617073;

    v5 = 0xED00007365676173;
    if (*(a1 + 16))
    {
      goto LABEL_6;
    }

LABEL_10:

    return 0;
  }

  v3 = 0x73656D2D6D617073;
  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    v5 = 0xED00007365676173;
  }

  else
  {
    v3 = 0xD000000000000011;
    v5 = 0x8000000100098430;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

LABEL_6:
  v6 = sub_100057F68(v3, v5);
  v8 = v7;

  if (v8)
  {
    sub_100005BBC(*(a1 + 56) + 32 * v6, v11);
    sub_100002074(&qword_1000B7380, &unk_100090F50);
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  return 0;
}

unint64_t sub_1000662B8()
{
  result = qword_1000B84E0;
  if (!qword_1000B84E0)
  {
    sub_100003400(&qword_1000B6908, &qword_10008F700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B84E0);
  }

  return result;
}

unint64_t sub_10006631C()
{
  result = qword_1000B84E8;
  if (!qword_1000B84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B84E8);
  }

  return result;
}

uint64_t sub_100066370(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_100011CAC(a1, a2, a3);
  }

  else
  {
    return sub_100005A28(a1, a2);
  }
}

uint64_t sub_10006637C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B84D0, &qword_100092A88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000663EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000664B0()
{
  v1[10] = v0;
  v2 = type metadata accessor for SpamDecisioningAsset(0);
  v1[11] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v4 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100066594, 0, 0);
}

uint64_t sub_100066594()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[16] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[17] = v5;
  v0[18] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v0[19] = sub_10000CDA8();
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_10006668C;
  v7 = v0[14];

  return sub_1000505B8(v7);
}

uint64_t sub_10006668C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100066A6C;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_1000667A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000667A8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  sub_100010C70(v3);
  v2(v5, 0, 1, v4);
  sub_100011D64(v5, v3);
  sub_10006A82C(v0[15], v0[13]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_10006688C;
  v7 = v0[12];
  v8 = v0[13];

  return sub_1000122EC(v7, v8);
}

uint64_t sub_10006688C()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_100066C38;
  }

  else
  {
    v3 = sub_1000669A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000669A0()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_100010C70(v0[15]);
  v3 = *(v2 + *(v1 + 32));

  sub_100011370(v2, type metadata accessor for SpamDecisioningAsset);
  v4 = *(v3 + 256);

  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];

  v9 = v0[1];
  v10.n128_u64[0] = v4;

  return v9(v10);
}

uint64_t sub_100066A6C()
{
  v1 = v0[21];
  v2 = v0[19];
  v18 = v0[18];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[10];

  v7 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(96);
  v8._object = 0x8000000100098920;
  v8._countAndFlagsBits = 0xD00000000000005CLL;
  String.append(_:)(v8);
  swift_getErrorValue();
  v10 = v0[2];
  v9 = v0[3];
  v11 = v0[4];
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v7, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 28);

  sub_100010C70(v5);
  v4(v5, 1, 1, v3);
  sub_10006A82C(v0[15], v0[13]);
  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  v14[1] = sub_10006688C;
  v15 = v0[12];
  v16 = v0[13];

  return sub_1000122EC(v15, v16);
}

uint64_t sub_100066C38()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[10];
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(97);
  v5._object = 0x8000000100098980;
  v5._countAndFlagsBits = 0xD00000000000005DLL;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 38);

  sub_100010C70(v2);
  v12 = v0[14];
  v11 = v0[15];
  v14 = v0[12];
  v13 = v0[13];

  v15 = v0[1];
  v16.n128_u64[0] = 0x4072C00000000000;

  return v15(v16);
}

uint64_t sub_100066DC4()
{
  v1[10] = v0;
  v2 = type metadata accessor for SpamDecisioningAsset(0);
  v1[11] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v4 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100066EA8, 0, 0);
}

uint64_t sub_100066EA8()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[16] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[17] = v5;
  v0[18] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v0[19] = sub_10000CDA8();
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100066FA0;
  v7 = v0[14];

  return sub_1000505B8(v7);
}

uint64_t sub_100066FA0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100067380;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_1000670BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000670BC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  sub_100010C70(v3);
  v2(v5, 0, 1, v4);
  sub_100011D64(v5, v3);
  sub_10006A82C(v0[15], v0[13]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1000671A0;
  v7 = v0[12];
  v8 = v0[13];

  return sub_1000122EC(v7, v8);
}

uint64_t sub_1000671A0()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_10006754C;
  }

  else
  {
    v3 = sub_1000672B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000672B4()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_100010C70(v0[15]);
  v3 = *(v2 + *(v1 + 32));

  sub_100011370(v2, type metadata accessor for SpamDecisioningAsset);
  v4 = *(v3 + 264);

  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];

  v9 = v0[1];
  v10.n128_u64[0] = v4;

  return v9(v10);
}

uint64_t sub_100067380()
{
  v1 = v0[21];
  v2 = v0[19];
  v18 = v0[18];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[10];

  v7 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(96);
  v8._object = 0x8000000100098920;
  v8._countAndFlagsBits = 0xD00000000000005CLL;
  String.append(_:)(v8);
  swift_getErrorValue();
  v10 = v0[2];
  v9 = v0[3];
  v11 = v0[4];
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v7, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 51);

  sub_100010C70(v5);
  v4(v5, 1, 1, v3);
  sub_10006A82C(v0[15], v0[13]);
  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  v14[1] = sub_1000671A0;
  v15 = v0[12];
  v16 = v0[13];

  return sub_1000122EC(v15, v16);
}

uint64_t sub_10006754C()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[10];
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(97);
  v5._object = 0x8000000100098980;
  v5._countAndFlagsBits = 0xD00000000000005DLL;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 61);

  sub_100010C70(v2);
  v12 = v0[14];
  v11 = v0[15];
  v14 = v0[12];
  v13 = v0[13];

  v15 = v0[1];
  v16.n128_u64[0] = 0x404E000000000000;

  return v15(v16);
}

uint64_t sub_1000676F4()
{
  v1 = v0[2];
  sub_10000CDA8();
  v2 = sub_10005163C();

  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[2];
    v6 = static os_log_type_t.default.getter();
    sub_10005E11C(v6, 0xD00000000000002ALL, 0x80000001000948C0, 0xD000000000000066, 0x80000001000988B0, 72);
    v0[3] = *(v5 + 48);

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_10000D9A4;

    return sub_100051B58();
  }
}

uint64_t sub_100067838(uint64_t a1)
{
  v2[97] = v1;
  v2[96] = a1;
  v3 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput(0);
  v2[98] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[99] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SpamDecisioningAsset(0) - 8) + 64) + 15;
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v6 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();

  return _swift_task_switch(sub_100067958, 0, 0);
}

uint64_t sub_100067958()
{
  v1 = v0[97];
  v0[105] = sub_10000CDA8();
  v2 = swift_task_alloc();
  v0[106] = v2;
  *v2 = v0;
  v2[1] = sub_1000679FC;
  v3 = v0[103];

  return sub_1000505B8(v3);
}

uint64_t sub_1000679FC()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v7 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v4 = sub_100068CB4;
  }

  else
  {
    v5 = *(v2 + 840);

    v4 = sub_100067B18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100067B18()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_100011D64(v2, v1);
  sub_10006A82C(v0[104], v0[102]);
  v4 = swift_task_alloc();
  v0[108] = v4;
  *v4 = v0;
  v4[1] = sub_100067C10;
  v5 = v0[102];
  v6 = v0[100];

  return sub_1000122EC(v6, v5);
}

uint64_t sub_100067C10()
{
  v2 = *(*v1 + 864);
  v5 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v3 = sub_100068EA0;
  }

  else
  {
    v3 = sub_100067D24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100067D24()
{
  v1 = v0[109];
  sub_100010CD8(v0[100], v0[101]);
  v2 = sub_100010D3C(0);
  v0[110] = v2;
  v3 = type metadata accessor for SignaturesSQLiteManager();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_10006D3FC(0, 0);
  v0[111] = v6;
  v0[62] = &type metadata for SignatureAnalysisDecisioningComponentProvider;
  v0[63] = &off_1000B0938;
  v0[59] = v2;
  v0[60] = v6;
  v7 = type metadata accessor for SignatureAnalysisDecisioningComponent(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_100010F28((v0 + 59), &type metadata for SignatureAnalysisDecisioningComponentProvider);
  v12 = swift_task_alloc();
  (_swift_cvw_initWithCopy)(v12, v11, &type metadata for SignatureAnalysisDecisioningComponentProvider);
  v13 = *v12;
  v14 = v12[1];

  v15 = sub_100010FC8(v13, v14, v10);
  v0[112] = v15;
  sub_100003558(v0 + 59);

  sub_1000318A4();
  if (v1)
  {
    v16 = v0[97];
    v17 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(77);
    v18._object = 0x80000001000945B0;
    v18._countAndFlagsBits = 0xD000000000000049;
    String.append(_:)(v18);
    swift_getErrorValue();
    v19 = v0[80];
    v20 = v0[81];
    v21 = v0[82];
    v22._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 32032;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    sub_10005E11C(v17, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 116);

    v24 = sub_1000111EC((v15 + 16), *(v15 + 40))[1];
    v25 = qword_1000B6700;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = qword_1000B89E0;
    v1 = swift_allocObject();
    *(v1 + 16) = sub_100011230;
    *(v1 + 24) = v24;
    v0[45] = sub_10004D5C8;
    v0[46] = v1;
    v0[41] = _NSConcreteStackBlock;
    v0[42] = 1107296256;
    v0[43] = sub_100010FA0;
    v0[44] = &unk_1000B0FB0;
    v27 = _Block_copy(v0 + 41);
    v28 = v0[46];

    dispatch_sync(v26, v27);
    _Block_release(v27);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
      v29 = v0[103];
      v30 = v0[102];
      v31 = v0[101];
      v32 = v0[100];
      v33 = v0[99];
      v34 = v0[97];
      v35 = v0[96];
      sub_100010C70(v0[104]);
      sub_1000696BC(v35);

      v36 = v0[1];
LABEL_10:

      return v36();
    }

    __break(1u);
  }

  else
  {
    v37 = qword_1000B6700;

    if (v37 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v38 = qword_1000B89E0;
  v0[113] = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();

  if (v1)
  {
    v39 = sub_1000111EC((v15 + 16), *(v15 + 40))[1];
    v40 = swift_allocObject();
    *(v40 + 16) = sub_100011E70;
    *(v40 + 24) = v39;
    v0[51] = sub_10004E120;
    v0[52] = v40;
    v0[47] = _NSConcreteStackBlock;
    v0[48] = 1107296256;
    v0[49] = sub_100010FA0;
    v0[50] = &unk_1000B1000;
    v41 = _Block_copy(v0 + 47);
    v42 = v0[52];
    swift_retain_n();

    dispatch_sync(v38, v41);
    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    v45 = v0[104];
    v46 = v0[103];
    v47 = v0[102];
    v48 = v0[100];
    v49 = v0[99];
    v50 = v0[97];
    v51 = v0[96];
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    sub_100010C70(v45);
    sub_1000696BC(v51);

    v36 = v0[1];
    goto LABEL_10;
  }

  v0[114] = v0[92];
  v52 = swift_task_alloc();
  v0[115] = v52;
  *v52 = v0;
  v52[1] = sub_100068458;
  v53 = v0[97];

  return sub_1000697F4();
}

uint64_t sub_100068458(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 920);
  v6 = *v2;
  *(v3 + 928) = a1;
  *(v3 + 936) = a2;

  return _swift_task_switch(sub_10006855C, 0, 0);
}

uint64_t sub_10006855C()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[101];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v0[118] = OBJC_IVAR____TtC13frauddefensed33AdHocSignaturesBackgroundActivity_logger;
  v7 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(80);
  v8._object = 0x8000000100094600;
  v8._countAndFlagsBits = 0xD00000000000004CLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = Duration.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v7, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 124);

  sub_100011308(v3, v4, type metadata accessor for SpamDecisioningAsset);
  *(v4 + *(v5 + 20)) = 0;
  v0[67] = v5;
  v0[68] = &off_1000B0920;
  v11 = sub_1000112A4(v0 + 64);
  sub_100011308(v4, v11, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v12 = swift_task_alloc();
  v0[119] = v12;
  *v12 = v0;
  v12[1] = sub_100068758;
  v13 = v0[117];
  v14 = v0[116];
  v15 = v0[112];

  return sub_100031B04((v0 + 69), (v0 + 64), v14, v13, 0);
}

uint64_t sub_100068758()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v6 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v4 = sub_10006905C;
  }

  else
  {
    sub_100003558((v2 + 512));
    v4 = sub_100068874;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100068874()
{
  v1 = v0[114];
  v2 = v0[99];
  v3 = v0[97];
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F840;
  *(inited + 32) = 0x79745F6863746566;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = String._bridgeToObjectiveC()();
  strcpy((inited + 56), "fetched_count");
  *(inited + 70) = -4864;
  v5 = sub_10005BC54(v0[70]);
  sub_100056BB0(v5);
  v6 = String._bridgeToObjectiveC()();

  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001000946B0;
  v7 = v0[71];
  v8 = v0[72];
  v9 = sub_10005BD48();
  sub_100056D70(v9);
  v10 = String._bridgeToObjectiveC()();

  *(inited + 96) = v10;
  *(inited + 104) = 0xD00000000000001BLL;
  *(inited + 112) = 0x80000001000946D0;
  sub_100011CC4();
  isa = NSNumber.init(BOOLeanLiteral:)(*(v0 + 584)).super.super.isa;
  sub_100011D10((v0 + 69));
  *(inited + 120) = isa;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000100094690;
  v12 = sub_10005BC54(v1);
  sub_100056BB0(v12);
  v13 = String._bridgeToObjectiveC()();

  *(inited + 144) = v13;
  v14 = sub_100011A78(inited);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  v15 = *(v3 + 56);
  sub_100056EF0(1, v14, 0, 0);

  sub_100011370(v2, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v16 = v0[113];
  v17 = v0[111];
  v18 = v0[110];
  v19 = sub_1000111EC((v0[112] + 16), *(v0[112] + 40))[1];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100011E70;
  *(v20 + 24) = v19;
  v0[57] = sub_10004E120;
  v0[58] = v20;
  v0[53] = _NSConcreteStackBlock;
  v0[54] = 1107296256;
  v0[55] = sub_100010FA0;
  v0[56] = &unk_1000B1050;
  v21 = _Block_copy(v0 + 53);
  v22 = v0[58];
  swift_retain_n();

  dispatch_sync(v16, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    v24 = v0[103];
    v25 = v0[102];
    v26 = v0[101];
    v27 = v0[100];
    v28 = v0[99];
    v29 = v0[97];
    v30 = v0[96];
    sub_100010C70(v0[104]);
    sub_1000696BC(v30);

    v31 = v0[1];

    return v31();
  }

  return result;
}

uint64_t sub_100068CB4()
{
  v1 = v0[107];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[97];

  v5 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(73);
  v6._object = 0x80000001000944A0;
  v6._countAndFlagsBits = 0xD000000000000045;
  String.append(_:)(v6);
  swift_getErrorValue();
  v7 = v0[74];
  v8 = v0[75];
  v9 = v0[76];
  v10._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  sub_10005E11C(v5, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 94);

  v12 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_10006A82C(v0[104], v0[102]);
  v13 = swift_task_alloc();
  v0[108] = v13;
  *v13 = v0;
  v13[1] = sub_100067C10;
  v14 = v0[102];
  v15 = v0[100];

  return sub_1000122EC(v15, v14);
}

uint64_t sub_100068EA0()
{
  v1 = v0[109];
  v2 = v0[97];
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(74);
  v4._object = 0x8000000100094560;
  v4._countAndFlagsBits = 0xD000000000000046;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5 = v0[77];
  v6 = v0[78];
  v7 = v0[79];
  v8._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 102);

  v10 = v0[103];
  v11 = v0[102];
  v12 = v0[101];
  v13 = v0[100];
  v14 = v0[99];
  v15 = v0[97];
  v16 = v0[96];
  sub_100010C70(v0[104]);
  sub_1000696BC(v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10006905C()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[97];
  sub_100011370(v0[99], type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  sub_100003558(v0 + 64);
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v5._countAndFlagsBits = 0xD00000000000003DLL;
  v5._object = 0x8000000100094650;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6 = v0[83];
  v7 = v0[84];
  v8 = v0[85];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 140);

  v0[94] = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v11 = v0[86];
    v12 = v0[87];
    v13 = *(v0 + 704);
    if (v13 == 9)
    {
      v14 = v0[114];
      v15 = v0[97];
      sub_100002074(&qword_1000B6CC8, &unk_10008F950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10008F850;
      *(inited + 32) = 0x79745F6863746566;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = String._bridgeToObjectiveC()();
      *(inited + 56) = 0xD000000000000013;
      *(inited + 64) = 0x8000000100094690;
      v17 = sub_10005BC54(v14);
      sub_100056BB0(v17);
      v18 = String._bridgeToObjectiveC()();

      *(inited + 72) = v18;
      v19 = sub_100011A78(inited);
      swift_setDeallocating();
      sub_100002074(&qword_1000B6CD0, &qword_100092B90);
      swift_arrayDestroy();
      v20 = *(v15 + 56);
      v21 = sub_10004F2E4(v11, v12, 9);
      v23 = v22;
      sub_100011CAC(v11, v12, 9u);
      sub_100056EF0(1, v19, v21, v23);
    }

    else
    {
      sub_100011CAC(v0[86], v0[87], v13);
    }
  }

  v0[95] = v0[120];
  swift_errorRetain();
  v24 = swift_dynamicCast();
  v25 = v0[120];
  if (v24)
  {
    v26 = v0[114];
    v27 = v0[97];
    sub_100002074(&qword_1000B6CC8, &unk_10008F950);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_10008F850;
    *(v28 + 32) = 0x79745F6863746566;
    *(v28 + 40) = 0xEA00000000006570;
    *(v28 + 48) = String._bridgeToObjectiveC()();
    *(v28 + 56) = 0xD000000000000013;
    *(v28 + 64) = 0x8000000100094690;
    v29 = sub_10005BC54(v26);
    sub_100056BB0(v29);
    v30 = String._bridgeToObjectiveC()();

    *(v28 + 72) = v30;
    v31 = sub_100011A78(v28);
    swift_setDeallocating();
    sub_100002074(&qword_1000B6CD0, &qword_100092B90);
    swift_arrayDestroy();
    v32 = *(v27 + 56);
    sub_100056EF0(1, v31, 0x74694B64756F6C63, 0xEF6572756C696146);
  }

  else
  {
    v33 = v0[120];
  }

  v34 = v0[113];
  v35 = v0[111];
  v36 = v0[110];
  v37 = sub_1000111EC((v0[112] + 16), *(v0[112] + 40))[1];
  v38 = swift_allocObject();
  *(v38 + 16) = sub_100011E70;
  *(v38 + 24) = v37;
  v0[57] = sub_10004E120;
  v0[58] = v38;
  v0[53] = _NSConcreteStackBlock;
  v0[54] = 1107296256;
  v0[55] = sub_100010FA0;
  v0[56] = &unk_1000B1050;
  v39 = _Block_copy(v0 + 53);
  v40 = v0[58];
  swift_retain_n();

  dispatch_sync(v34, v39);
  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
  }

  else
  {
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    v42 = v0[103];
    v43 = v0[102];
    v44 = v0[101];
    v45 = v0[100];
    v46 = v0[99];
    v47 = v0[97];
    v48 = v0[96];
    sub_100010C70(v0[104]);
    sub_1000696BC(v48);

    v49 = v0[1];

    return v49();
  }

  return result;
}

uint64_t sub_1000696BC(void *a1)
{
  [a1 setTaskCompleted];
  v2 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(55);
  v3._object = 0x8000000100094800;
  v3._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v3);
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 87);
}

uint64_t sub_1000697F4()
{
  v1[10] = v0;
  v2 = type metadata accessor for SpamDecisioningAsset(0);
  v1[11] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000698E4, 0, 0);
}

uint64_t sub_1000698E4()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[17] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[18] = v5;
  v0[19] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v0[20] = sub_10000CDA8();
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1000699DC;
  v7 = v0[15];

  return sub_1000505B8(v7);
}

uint64_t sub_1000699DC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_100069F48;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_100069AF8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100069AF8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  sub_100010C70(v3);
  v2(v5, 0, 1, v4);
  sub_100011D64(v5, v3);
  sub_10006A82C(v0[16], v0[14]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_100069BE0;
  v7 = v0[14];
  v8 = v0[12];

  return sub_1000122EC(v8, v7);
}

uint64_t sub_100069BE0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_10006A118;
  }

  else
  {
    v3 = sub_100069CF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100069CF4()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_100010CD8(v0[12], v1);
  v3 = *(v1 + *(v2 + 32));
  v4 = *(v3 + 232);
  if (*(v4 + 16))
  {
    v5 = *(v3 + 232);

    v6 = sub_100057F68(0x746C7561666564, 0xE700000000000000);
    if (v7)
    {
      v8 = v0[16];
      v9 = v0[13];
      v10 = *(*(v4 + 56) + 8 * v6);

      goto LABEL_6;
    }
  }

  v8 = v0[16];
  v9 = v0[13];
  v11 = v0[10];
  v12 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(78);
  v13._object = 0x8000000100094790;
  v13._countAndFlagsBits = 0xD00000000000004ALL;
  String.append(_:)(v13);
  v14 = *(v3 + 232);

  v15 = Dictionary.description.getter();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 32032;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  sub_10005E11C(v12, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 197);

LABEL_6:
  v20 = static Duration.seconds(_:)();
  v22 = v21;
  sub_100010C70(v8);
  sub_100011370(v9, type metadata accessor for SpamDecisioningAsset);
  v24 = v0[15];
  v23 = v0[16];
  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];

  v28 = v0[1];

  return v28(v20, v22);
}

uint64_t sub_100069F48()
{
  v1 = v0[22];
  v2 = v0[20];
  v18 = v0[19];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[10];

  v7 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(90);
  v8._object = 0x80000001000946F0;
  v8._countAndFlagsBits = 0xD000000000000056;
  String.append(_:)(v8);
  swift_getErrorValue();
  v10 = v0[2];
  v9 = v0[3];
  v11 = v0[4];
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v7, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 175);

  sub_100010C70(v5);
  v4(v5, 1, 1, v3);
  sub_10006A82C(v0[16], v0[14]);
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_100069BE0;
  v15 = v0[14];
  v16 = v0[12];

  return sub_1000122EC(v16, v15);
}

uint64_t sub_10006A118()
{
  v1 = v0[24];
  v2 = v0[16];
  v3 = v0[10];
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(56);
  v5._object = 0x8000000100094750;
  v5._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001000988B0, 183);

  v11 = static Duration.seconds(_:)();
  v13 = v12;

  sub_100010C70(v2);
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];

  v19 = v0[1];

  return v19(v11, v13);
}

uint64_t sub_10006A2C0()
{
  v1 = *(v0 + 6);

  v2 = *(v0 + 7);

  v3 = OBJC_IVAR____TtC13frauddefensed33AdHocSignaturesBackgroundActivity_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdHocSignaturesBackgroundActivity()
{
  result = qword_1000B8528;
  if (!qword_1000B8528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A3C0()
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

int64x2_t *sub_10006A47C()
{
  v0[1] = vdupq_n_s64(0x4072C00000000000uLL);
  v0[2] = vdupq_n_s64(0x404E000000000000uLL);
  v0[3].i64[0] = 0;
  v1 = type metadata accessor for DaemonAnalyticsManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  if (qword_1000B66A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100003448(v6, qword_1000B93D0);
  v8 = *(*(v6 - 8) + 16);
  v8(v4 + v5, v7, v6);
  v9 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager;
  v10 = type metadata accessor for EligibilityManager();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v15 = sub_100003448(v6, qword_1000B9388);
  v8(v13 + v14, v15, v6);
  *(v4 + v9) = v13;
  v0[3].i64[1] = v4;
  v16 = OBJC_IVAR____TtC13frauddefensed33AdHocSignaturesBackgroundActivity_logger;
  if (qword_1000B6688 != -1)
  {
    swift_once();
  }

  v17 = sub_100003448(v6, qword_1000B9370);
  v8(v0->i64 + v16, v17, v6);
  return v0;
}

uint64_t sub_10006A674()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100010A4C;

  return sub_100066DC4();
}

uint64_t sub_10006A704()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A54;

  return sub_1000676D4();
}

uint64_t sub_10006A794(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011E6C;

  return sub_100067838(a1);
}

uint64_t sub_10006A82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A8AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10006A8FC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  qword_1000B9450 = v2;
  *algn_1000B9458 = v4;
}

void sub_10006A9A0(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_10006AA40(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v9 = a2();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    *a3 = v10;
    *a4 = v12;
  }

  else
  {
    __break(1u);
  }
}

double sub_10006AAD4()
{
  type metadata accessor for TaskQueue();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 128) = &_swiftEmptyArrayStorage;
  *&result = 1;
  *(v0 + 112) = xmmword_10008F650;
  qword_1000B9488 = v0;
  return result;
}

uint64_t sub_10006AB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B7A68, &unk_100091820);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v15 - v8;
  (*(v5 + 16))(&v15 - v8, a1, v4);
  v10 = *(a2 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 128) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100049830(0, v10[2] + 1, 1, v10);
    *(a2 + 128) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100049830(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v9, v4);
  *(a2 + 128) = v10;
  return result;
}

uint64_t sub_10006ACA8(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B7A68, &unk_100091820);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2, v5);
  v8 = &v14 - v7;
  v9 = *(a1 + 120);
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 120) = v11;
    if (v11 <= 0)
    {
      v12 = *(a1 + 128);
      if (*(v12 + 16))
      {
        v13 = result;
        (*(v3 + 16))(v8, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), result);
        sub_10006AF94(0, 1);
        CheckedContinuation.resume(returning:)();
        return (*(v3 + 8))(v8, v13);
      }
    }
  }

  return result;
}

uint64_t sub_10006ADD8()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10006AE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_100002074(&qword_1000B7A68, &unk_100091820);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10006AF94(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100049830(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_10006AE40(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10006B054()
{
  v1 = OBJC_IVAR____TtC13frauddefensed15RecordOperation_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordOperation()
{
  result = qword_1000B8700;
  if (!qword_1000B8700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B144(unsigned __int8 a1, uint64_t a2)
{
  if (qword_1000B66D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1000B9450;
  v5 = *algn_1000B9458;
  v6 = sub_10006B76C();
  v7 = sub_100057E70(v4, v5, v6);

  if (v7)
  {
    if (sub_10006B308(a1, a2))
    {
      return 1;
    }

    v12 = static os_log_type_t.default.getter();
    sub_10005E11C(v12, 0xD000000000000018, 0x8000000100098BA0, 0xD000000000000057, 0x8000000100098B40, 26);
  }

  else
  {
    v9 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(46);

    v10._countAndFlagsBits = v4;
    v10._object = v5;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 32032;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    sub_10005E11C(v9, 0xD00000000000002ALL, 0x8000000100098B10, 0xD000000000000057, 0x8000000100098B40, 21);
  }

  return 0;
}

uint64_t sub_10006B308(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = SecTaskCreateFromSelf(0);
    if (!v3)
    {
      v4 = static os_log_type_t.error.getter();
      v5 = 0xD000000000000019;
      v6 = 0x8000000100098BC0;
      v7 = 59;
LABEL_14:
      sub_10005E11C(v4, v5, v6, 0xD000000000000057, 0x8000000100098B40, v7);
      return 0;
    }
  }

  else
  {
    v8 = *(a2 + 16);
    *v29.val = *a2;
    *&v29.val[4] = v8;
    v3 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v29);
    if (!v3)
    {
      v4 = static os_log_type_t.error.getter();
      v5 = 0xD00000000000002ALL;
      v6 = 0x8000000100098CA0;
      v7 = 52;
      goto LABEL_14;
    }
  }

  v9 = v3;
  error = 0;
  if (a1 - 1 >= 2)
  {
    if (a1)
    {
      v16 = String._bridgeToObjectiveC()();
      v17 = SecTaskCopyValueForEntitlement(v9, v16, &error);

      if (v17)
      {
        *v29.val = v17;
        if (swift_dynamicCast())
        {
          goto LABEL_17;
        }
      }

      v12 = static os_log_type_t.error.getter();
      v13 = 93;
    }

    else
    {
      v14 = String._bridgeToObjectiveC()();
      v15 = SecTaskCopyValueForEntitlement(v9, v14, &error);

      if (v15)
      {
        *v29.val = v15;
        if (swift_dynamicCast())
        {
          goto LABEL_17;
        }
      }

      v12 = static os_log_type_t.error.getter();
      v13 = 77;
    }

LABEL_21:
    sub_10005E11C(v12, 0xD00000000000001CLL, 0x8000000100098C00, 0xD000000000000057, 0x8000000100098B40, v13);
    v26 = error;
    if (!error)
    {
LABEL_23:

      return 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = SecTaskCopyValueForEntitlement(v9, v10, &error);

  if (!v11 || (*v29.val = v11, !swift_dynamicCast()))
  {
    v12 = static os_log_type_t.error.getter();
    v13 = 85;
    goto LABEL_21;
  }

LABEL_17:
  v18 = error;
  if (error)
  {
    v19 = static os_log_type_t.error.getter();
    *v29.val = 0;
    *&v29.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    *v29.val = 0xD000000000000025;
    *&v29.val[2] = 0x8000000100098C20;
    v20 = v18;
    v30 = v20;
    type metadata accessor for CFError(0);
    sub_1000549A4();
    v21 = Error.localizedDescription.getter();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 32032;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10005E11C(v19, *v29.val, *&v29.val[2], 0xD000000000000057, 0x8000000100098B40, 101);

    v26 = error;
    if (!error)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v28 = v30;

  return v28;
}

Swift::Int sub_10006B76C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_10006B7C8();
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

Swift::Int sub_10006B7C8()
{
  v0 = sub_10006C340(&off_1000ADBE8);
  swift_arrayDestroy();
  v6 = v0;
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v1 = qword_1000B7C78;
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 BOOLForKey:v2];

    if (v3)
    {
      sub_10006BA7C(&v5, 0xD000000000000014, 0x80000001000947E0);

      return v6;
    }
  }

  return v0;
}

uint64_t sub_10006B8E8()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EligibilityManager()
{
  result = qword_1000B87B8;
  if (!qword_1000B87B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B9E0()
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

uint64_t sub_10006BA7C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10006BE2C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10006BBCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002074(&qword_1000B8848, &qword_100092D00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10006BE2C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10006BBCC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10006BFAC();
      goto LABEL_16;
    }

    sub_10006C108(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10006BFAC()
{
  v1 = v0;
  sub_100002074(&qword_1000B8848, &qword_100092D00);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10006C108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002074(&qword_1000B8848, &qword_100092D00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_10006C340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B8848, &qword_100092D00);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10006C4A8(const char *a1, uint64_t a2, int a3, uint64_t a4, void *a5, int a6)
{
  LODWORD(v102) = a6;
  v101 = a5;
  v98 = type metadata accessor for OSSignpostError();
  v97 = *(v98 - 8);
  v10 = *(v97 + 64);
  __chkstk_darwin(v98, v11);
  v96 = &v92[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for OSSignpostID();
  v103 = *(v13 - 8);
  v104 = v13;
  v14 = *(v103 + 64);
  v16 = __chkstk_darwin(v13, v15);
  v99 = &v92[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16, v18);
  v100 = &v92[-v20];
  __chkstk_darwin(v19, v21);
  v106 = &v92[-v22];
  v23 = sub_100002074(&qword_1000B7A70, &unk_100092860);
  v24 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23 - 8, v25);
  v28 = &v92[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26, v29);
  v31 = &v92[-v30];
  v32 = type metadata accessor for SignpostsManager.SignpostState(0);
  v105 = *(v32 - 8);
  v33 = *(v105 + 64);
  __chkstk_darwin(v32, v34);
  v107 = &v92[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((OSSignposter.isEnabled.getter() & 1) == 0)
  {
    v48 = static os_log_type_t.default.getter();
    sub_10005E11C(v48, 0xD000000000000036, 0x8000000100098D20, 0xD000000000000055, 0x8000000100098D60, 21);
    return;
  }

  v95 = a1;
  v110 = StaticString.description.getter();
  v111 = v36;
  v37._countAndFlagsBits = 45;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = a4;
  v38._object = v101;
  String.append(_:)(v38);
  v39 = v110;
  v40 = v111;
  swift_beginAccess();
  v41 = *(v6 + 112);
  v42 = *(v41 + 16);
  v43 = a3;
  v101 = v39;
  if (v42)
  {

    v44 = sub_100057F68(v39, v40);
    if (v45)
    {
      v46 = v105;
      sub_10005C080(*(v41 + 56) + *(v105 + 72) * v44, v31);

      v47 = *(v46 + 56);
      v47(v31, 0, 1, v32);
      sub_100056450(v31, v107);
      goto LABEL_10;
    }
  }

  v93 = a3;
  v49 = v107;
  v94 = v40;
  v50 = v105;
  v47 = *(v105 + 56);
  v47(v31, 1, 1, v32);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  *&v49[*(v32 + 20)] = 0;
  if ((*(v50 + 48))(v31, 1, v32) != 1)
  {
    sub_10006D338(v31);
  }

  v40 = v94;
  v43 = v93;
LABEL_10:
  sub_10005C080(v107, v28);
  v47(v28, 0, 1, v32);
  swift_beginAccess();

  sub_1000569F0(v28, v101, v40);
  swift_endAccess();
  v51 = v106;
  if ((v102 & 1) == 0)
  {
LABEL_16:
    v59 = v103;
    v58 = v104;
    v102 = *(v103 + 16);
    v102(v51, v107, v104);
    v60 = OSSignposter.logHandle.getter();
    v61 = static os_signpost_type_t.begin.getter();
    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {
LABEL_20:

      v62 = v106;
LABEL_27:
      v102(v100, v62, v58);
      v69 = type metadata accessor for OSSignpostIntervalState();
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      swift_allocObject();
      v72 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v59 + 8))(v62, v58);
      v73 = sub_10006CE74();
      v74 = sub_1000464F4(v109, v101, v40);
      v76 = v75;
      if (!(*(v105 + 48))(v75, 1, v32))
      {
        v77 = *(v32 + 20);
        v78 = *(v76 + v77);
        *(v76 + v77) = v72;
      }

      (v74)(v109, 0);
      (v73)(&v110, 0);

      goto LABEL_30;
    }

    LODWORD(v99) = v61;
    if ((v43 & 1) == 0)
    {
      if (!v95)
      {
        __break(1u);
        goto LABEL_20;
      }

LABEL_26:
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v110 = v64;
      *v63 = 136315138;
      v65 = StaticString.description.getter();
      v67 = sub_10005E6B8(v65, v66, &v110);

      *(v63 + 4) = v67;
      v62 = v106;
      v68 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, v99, v68, v95, "%s", v63, 0xCu);
      sub_100003558(v64);

      v59 = v103;
      v58 = v104;
      goto LABEL_27;
    }

    if (v95 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v95 & 0xFFFFF800) == 0xD800)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v95 >> 16 <= 0x10)
      {
        v95 = &v108;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v52 = *(v32 + 20);
  if (!*&v107[v52])
  {
LABEL_30:
    sub_10006D3A0(v107);

    return;
  }

  v53 = *&v107[v52];

  v54 = OSSignposter.logHandle.getter();
  v55 = v99;
  OSSignpostIntervalState.signpostID.getter();
  v56 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    if (v43)
    {
      if (v95 >> 32)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if ((v95 & 0xFFFFF800) == 0xD800)
      {
LABEL_46:
        __break(1u);
        return;
      }

      if (v95 >> 16 > 0x10)
      {
        goto LABEL_44;
      }

      v57 = &v110;
    }

    else
    {

      v57 = v95;
      if (!v95)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    v79 = v98;
    v80 = v97;
    v81 = v96;
    v95 = v57;

    checkForErrorAndConsumeState(state:)();

    if ((*(v80 + 88))(v81, v79) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v82 = 0;
      v83 = 0;
      v84 = "[Error] Interval already ended";
    }

    else
    {
      (*(v80 + 8))(v81, v79);
      v84 = "%s";
      v83 = 2;
      v82 = 1;
    }

    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v110 = v86;
    *v85 = v83;
    *(v85 + 1) = v82;
    *(v85 + 2) = 2080;
    v87 = StaticString.description.getter();
    v89 = sub_10005E6B8(v87, v88, &v110);

    *(v85 + 4) = v89;
    v90 = v99;
    v91 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, v56, v91, v95, v84, v85, 0xCu);
    sub_100003558(v86);

    (*(v103 + 8))(v90, v104);
  }

  else
  {

    (*(v103 + 8))(v55, v104);
  }

  sub_10006D3A0(v107);
}

uint64_t sub_10006CEC8()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC13frauddefensed16SignpostsManager_signposter;
  v3 = type metadata accessor for OSSignposter();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13frauddefensed16SignpostsManager_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10006CFB0()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10006D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_10006D184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OSSignpostID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_10006D25C()
{
  type metadata accessor for OSSignpostID();
  if (v0 <= 0x3F)
  {
    sub_10006D2E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006D2E0()
{
  if (!qword_1000B89B0)
  {
    type metadata accessor for OSSignpostIntervalState();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B89B0);
    }
  }
}

uint64_t sub_10006D338(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B7A70, &unk_100092860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006D3A0(uint64_t a1)
{
  v2 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10006D3FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  *(v3 + 4) = 0;
  *(v3 + 5) = -1;
  v9 = OBJC_IVAR____TtC13frauddefensed23SignaturesSQLiteManager_logger;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v10 = sub_100003448(v6, qword_1000B93E8);
  (*(v7 + 16))(&v3[v9], v10, v6);
  if (a2)
  {
    *(v3 + 2) = a1;
    *(v3 + 3) = a2;
  }

  else
  {
    v11 = sub_100026614();
    v13 = v12;

    v20 = String.init<A>(_:)();
    v21 = v14;
    String.append<A>(contentsOf:)();
    *(v3 + 2) = v20;
    *(v3 + 3) = v21;
    v15 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(60);
    v16._countAndFlagsBits = 0xD000000000000038;
    v16._object = 0x8000000100099DE0;
    String.append(_:)(v16);
    v17._countAndFlagsBits = v11;
    v17._object = v13;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 32032;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    sub_10005E11C(v15, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 28);
  }

  return v3;
}

const char *sub_10006E0A4(sqlite3_stmt **a1, sqlite3 *a2)
{
  result = sqlite3_finalize(*a1);
  if (result)
  {
    result = sqlite3_errmsg(a2);
    if (result)
    {
      v4 = String.init(cString:)();
      v6 = v5;
      v7 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(49);

      v8._countAndFlagsBits = v4;
      v8._object = v6;
      String.append(_:)(v8);

      v9._countAndFlagsBits = 32032;
      v9._object = 0xE200000000000000;
      String.append(_:)(v9);
      sub_10005E11C(v7, 0xD00000000000002DLL, 0x8000000100099B90, 0xD00000000000005CLL, 0x8000000100098E90, 87);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10006E1DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(a1 + 32);
  if (!v6)
  {
    v16 = static os_log_type_t.error.getter();
    v17 = 0xD000000000000019;
    v18 = 0x8000000100098E70;
    v19 = 123;
LABEL_6:
    sub_10005E11C(v16, v17, v18, 0xD00000000000005CLL, 0x8000000100098E90, v19);
    return;
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(v6, "BEGIN EXCLUSIVE TRANSACTION", -1, &ppStmt, 0))
  {
    if (sqlite3_errmsg(v6))
    {
      v7 = String.init(cString:)();
      v9 = v8;
      v10 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(53);
      v11._countAndFlagsBits = 0xD000000000000031;
      v11._object = 0x8000000100098F10;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v7;
      v12._object = v9;
      String.append(_:)(v12);

      v13._countAndFlagsBits = 32032;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      v14 = v10;
      v15 = 132;
LABEL_12:
      sub_10005E11C(v14, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, v15);

      return;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    if (sqlite3_errmsg(v6))
    {
      v20 = String.init(cString:)();
      v22 = v21;
      v23 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(53);
      v24._countAndFlagsBits = 0xD000000000000031;
      v24._object = 0x8000000100098F10;
      String.append(_:)(v24);
      v25._countAndFlagsBits = v20;
      v25._object = v22;
      String.append(_:)(v25);

      v26._countAndFlagsBits = 32032;
      v26._object = 0xE200000000000000;
      String.append(_:)(v26);
      v14 = v23;
      v15 = 138;
      goto LABEL_12;
    }

    goto LABEL_31;
  }

  if (sqlite3_finalize(ppStmt))
  {
    v16 = static os_log_type_t.error.getter();
    v17 = 0xD000000000000029;
    v18 = 0x8000000100099120;
    v19 = 143;
    goto LABEL_6;
  }

  v59 = 0;
  if (sqlite3_prepare_v2(v6, "INSERT INTO CKSignatures (id, signature_id, signature, signature_size, threshold, zone_name, modification_date) VALUES (?, ?, ?, ?, ?, ?, ?) ON CONFLICT(id) DO UPDATE SET signature_id=excluded.signature_id, signature=excluded.signature, signature_size=excluded.signature_size, threshold=excluded.threshold, zone_name=excluded.zone_name, modification_date=excluded.modification_date;", -1, &v59, 0))
  {
    if (!sqlite3_errmsg(v6))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v27 = String.init(cString:)();
    v29 = v28;
    v30 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(48);

    v57 = 0xD00000000000002CLL;
    v58 = 0x80000001000992D0;
    v31._countAndFlagsBits = v27;
    v31._object = v29;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 32032;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    sub_10005E11C(v30, 0xD00000000000002CLL, 0x80000001000992D0, 0xD00000000000005CLL, 0x8000000100098E90, 160);

LABEL_29:
    sub_1000702E8(&v59, v6, a1, 154);
    return;
  }

  v33 = *(a2 + 16);
  if (v33)
  {
    v34 = (a2 + 32);
    while (1)
    {
      v35 = v34[3];
      v61[2] = v34[2];
      v61[3] = v35;
      v61[4] = v34[4];
      v36 = v34[1];
      v61[0] = *v34;
      v61[1] = v36;
      sub_100031284(v61, &v57);
      v37 = objc_autoreleasePoolPush();
      sub_10006E854(&v59, v61, a1, v6, &v57);
      if (v3)
      {
        break;
      }

      v3 = 0;
      sub_1000312BC(v61);
      objc_autoreleasePoolPop(v37);
      v34 += 5;
      if (!--v33)
      {
        goto LABEL_20;
      }
    }

    sub_1000312BC(v61);
    objc_autoreleasePoolPop(v37);
    goto LABEL_29;
  }

LABEL_20:
  v56 = 0;
  if (sqlite3_prepare_v2(v6, "COMMIT TRANSACTION", -1, &v56, 0))
  {
    if (!sqlite3_errmsg(v6))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v38 = String.init(cString:)();
    v40 = v39;
    v41 = static os_log_type_t.error.getter();
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v42._countAndFlagsBits = 0xD000000000000031;
    v42._object = 0x8000000100098F10;
    String.append(_:)(v42);
    v43._countAndFlagsBits = v38;
    v43._object = v40;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 32032;
    v44._object = 0xE200000000000000;
    String.append(_:)(v44);
    v45 = v57;
    v46 = v41;
    v47 = v58;
    v48 = 292;
    goto LABEL_27;
  }

  if (sqlite3_step(v56) == 101)
  {
LABEL_28:
    sub_100071CC8(&v56, v6, a1, 286);
    goto LABEL_29;
  }

  if (sqlite3_errmsg(v6))
  {
    v49 = String.init(cString:)();
    v51 = v50;
    v52 = static os_log_type_t.error.getter();
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v53._countAndFlagsBits = 0xD000000000000031;
    v53._object = 0x8000000100098F10;
    String.append(_:)(v53);
    v54._countAndFlagsBits = v49;
    v54._object = v51;
    String.append(_:)(v54);

    v55._countAndFlagsBits = 32032;
    v55._object = 0xE200000000000000;
    String.append(_:)(v55);
    v45 = v57;
    v46 = v52;
    v47 = v58;
    v48 = 298;
LABEL_27:
    sub_10005E11C(v46, v45, v47, 0xD00000000000005CLL, 0x8000000100098E90, v48);

    goto LABEL_28;
  }

LABEL_34:
  __break(1u);
}

const char *sub_10006E854(sqlite3_stmt **a1, uint64_t a2, uint64_t a3, sqlite3 *a4, uint64_t *a5)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a3 + 40);
  v14 = String.utf8CString.getter();
  LODWORD(v10) = sqlite3_bind_text(v10, 1, (v14 + 32), -1, v13);

  v167 = a5;
  if (!v10)
  {
    if (*(a2 + 24))
    {
      v30 = *(a2 + 16);
      v31 = *a1;
      v32 = String.utf8CString.getter();
      LODWORD(v31) = sqlite3_bind_text(v31, 2, (v32 + 32), -1, v13);

      if (v31)
      {
        result = sqlite3_errmsg(a4);
        if (!result)
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v33 = String.init(cString:)();
        v35 = v34;
        v36 = static os_log_type_t.error.getter();
        _StringGuts.grow(_:)(50);

        v37._countAndFlagsBits = v33;
        v37._object = v35;
        String.append(_:)(v37);
        v38._countAndFlagsBits = 32032;
        v38._object = 0xE200000000000000;
        String.append(_:)(v38);
        sub_10005E11C(v36, 0xD00000000000002ELL, 0x8000000100099330, 0xD00000000000005CLL, 0x8000000100098E90, 182);

        _StringGuts.grow(_:)(49);

        *&v169 = 0xD00000000000002DLL;
        *(&v169 + 1) = 0x8000000100099570;
        goto LABEL_29;
      }
    }

    else if (sqlite3_bind_null(*a1, 2))
    {
      v166 = a1;
      result = sqlite3_errmsg(a4);
      if (result)
      {
        v16 = String.init(cString:)();
        v18 = v39;
        v40 = static os_log_type_t.error.getter();
        _StringGuts.grow(_:)(50);

        v20 = 0x8000000100099330;
        v21 = 0xD00000000000002ELL;
        v41._countAndFlagsBits = v16;
        v41._object = v18;
        String.append(_:)(v41);
        v42._countAndFlagsBits = 32032;
        v42._object = 0xE200000000000000;
        String.append(_:)(v42);
        sub_10005E11C(v40, 0xD00000000000002ELL, 0x8000000100099330, 0xD00000000000005CLL, 0x8000000100098E90, 188);

        *&v169 = 0;
        *(&v169 + 1) = 0xE000000000000000;
        v24 = 50;
        goto LABEL_4;
      }

      goto LABEL_70;
    }

    v43 = *(a2 + 32);
    if (!v43)
    {
      if (sqlite3_bind_null(*a1, 3))
      {
        result = sqlite3_errmsg(a4);
        if (!result)
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v33 = String.init(cString:)();
        v35 = v56;
        v57 = static os_log_type_t.error.getter();
        *(&v169 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(53);
        v58 = "ignature ID to query. { error=";
        v59 = 0xD000000000000031;
        v60._object = 0x8000000100099360;
        v60._countAndFlagsBits = 0xD000000000000031;
        String.append(_:)(v60);
        v61._countAndFlagsBits = v33;
        v61._object = v35;
        String.append(_:)(v61);
        v62._countAndFlagsBits = 32032;
        v62._object = 0xE200000000000000;
        String.append(_:)(v62);
        v63 = v57;
        v64 = 218;
      }

      else
      {
        if (!sqlite3_bind_null(*a1, 4))
        {
          goto LABEL_40;
        }

        result = sqlite3_errmsg(a4);
        if (!result)
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v33 = String.init(cString:)();
        v35 = v80;
        v81 = static os_log_type_t.error.getter();
        *(&v169 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(53);
        v58 = "ignature ID to query. { error=";
        v59 = 0xD000000000000031;
        v82._object = 0x8000000100099360;
        v82._countAndFlagsBits = 0xD000000000000031;
        String.append(_:)(v82);
        v83._countAndFlagsBits = v33;
        v83._object = v35;
        String.append(_:)(v83);
        v84._countAndFlagsBits = 32032;
        v84._object = 0xE200000000000000;
        String.append(_:)(v84);
        v63 = v81;
        v64 = 224;
      }

      sub_10005E11C(v63, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, v64);

      *&v169 = 0;
      *(&v169 + 1) = 0xE000000000000000;
      v85 = 53;
LABEL_28:
      _StringGuts.grow(_:)(v85);
      v86._object = (v58 | 0x8000000000000000);
      v86._countAndFlagsBits = v59;
      String.append(_:)(v86);
LABEL_29:
      v87._countAndFlagsBits = v33;
      v87._object = v35;
      String.append(_:)(v87);

      v88._countAndFlagsBits = 32032;
      v88._object = 0xE200000000000000;
      String.append(_:)(v88);
      sub_10000B6B0();
      v27 = swift_allocError();
      *v89 = v169;
      *(v89 + 16) = 11;
      swift_willThrow();
LABEL_30:
      v29 = *a1;
      goto LABEL_31;
    }

    v44 = type metadata accessor for JSONEncoder();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *&v169 = v43;
    sub_100002074(&qword_1000B7858, &qword_100091870);
    sub_1000312EC(&qword_1000B7870);
    v47 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v5)
    {

      v49 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(40);

      swift_getErrorValue();
      v50._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v50);

      v51._countAndFlagsBits = 32032;
      v51._object = 0xE200000000000000;
      String.append(_:)(v51);
      sub_10005E11C(v49, 0xD000000000000024, 0x8000000100099500, 0xD00000000000005CLL, 0x8000000100098E90, 199);

      _StringGuts.grow(_:)(40);

      *&v169 = 0xD000000000000024;
      *(&v169 + 1) = 0x8000000100099500;
      swift_getErrorValue();
      v52._countAndFlagsBits = Error.localizedDescription.getter();
      v53 = a1;
      String.append(_:)(v52);

      v54._countAndFlagsBits = 32032;
      v54._object = 0xE200000000000000;
      String.append(_:)(v54);
      sub_10000B6B0();
      v27 = swift_allocError();
      *v55 = v169;
      *(v55 + 16) = 11;
      swift_willThrow();

LABEL_15:
      v29 = *v53;
      goto LABEL_31;
    }

    v65 = v47;
    v66 = v48;

    v67.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100005A28(v65, v66);
    v68 = *a1;
    v69 = [(objc_class *)v67.super.isa bytes];
    result = [(objc_class *)v67.super.isa length];
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      if (sqlite3_bind_blob(v68, 3, v69, result, v13))
      {
        result = sqlite3_errmsg(a4);
        if (!result)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v70 = String.init(cString:)();
        v72 = v71;
        v73 = static os_log_type_t.error.getter();
        _StringGuts.grow(_:)(53);
        v74 = "ignature ID to query. { error=";
        v75 = 0xD000000000000031;
        v76._object = 0x8000000100099360;
        v76._countAndFlagsBits = 0xD000000000000031;
        String.append(_:)(v76);
        v77._countAndFlagsBits = v70;
        v77._object = v72;
        String.append(_:)(v77);
        v78._countAndFlagsBits = 32032;
        v78._object = 0xE200000000000000;
        String.append(_:)(v78);
        sub_10005E11C(v73, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 205);

        *&v169 = 0;
        *(&v169 + 1) = 0xE000000000000000;
        v79 = 53;
        goto LABEL_38;
      }

      v90 = *a1;
      result = [(objc_class *)v67.super.isa length];
      if (result >= 0xFFFFFFFF80000000)
      {
        if (result <= 0x7FFFFFFF)
        {
          if (sqlite3_bind_int(v90, 4, result))
          {
            result = sqlite3_errmsg(a4);
            if (!result)
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

            v70 = String.init(cString:)();
            v72 = v91;
            v92 = static os_log_type_t.error.getter();
            _StringGuts.grow(_:)(54);
            v74 = " signature. { error=";
            v75 = 0xD000000000000032;
            v93._object = 0x8000000100099530;
            v93._countAndFlagsBits = 0xD000000000000032;
            String.append(_:)(v93);
            v94._countAndFlagsBits = v70;
            v94._object = v72;
            String.append(_:)(v94);
            v95._countAndFlagsBits = 32032;
            v95._object = 0xE200000000000000;
            String.append(_:)(v95);
            sub_10005E11C(v92, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 212);

            *&v169 = 0;
            *(&v169 + 1) = 0xE000000000000000;
            v79 = 54;
LABEL_38:
            _StringGuts.grow(_:)(v79);
            v96._object = (v74 | 0x8000000000000000);
            v96._countAndFlagsBits = v75;
            String.append(_:)(v96);
            v97._countAndFlagsBits = v70;
            v97._object = v72;
            String.append(_:)(v97);

            v98._countAndFlagsBits = 32032;
            v98._object = 0xE200000000000000;
            String.append(_:)(v98);
            sub_10000B6B0();
            v27 = swift_allocError();
            *v99 = v169;
            *(v99 + 16) = 11;
            swift_willThrow();

            goto LABEL_30;
          }

LABEL_40:
          if (*(a2 + 44))
          {
            if (sqlite3_bind_null(*a1, 5))
            {
              result = sqlite3_errmsg(a4);
              if (!result)
              {
LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

              v33 = String.init(cString:)();
              v35 = v100;
              v101 = static os_log_type_t.error.getter();
              *(&v169 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(57);
              v58 = "o query. { error=";
              v59 = 0xD000000000000035;
              v102._object = 0x80000001000993A0;
              v102._countAndFlagsBits = 0xD000000000000035;
              String.append(_:)(v102);
              v103._countAndFlagsBits = v33;
              v103._object = v35;
              String.append(_:)(v103);
              v104._countAndFlagsBits = 32032;
              v104._object = 0xE200000000000000;
              String.append(_:)(v104);
              v105 = v101;
              v106 = 239;
              goto LABEL_47;
            }
          }

          else if (sqlite3_bind_double(*a1, 5, *(a2 + 40)))
          {
            result = sqlite3_errmsg(a4);
            if (!result)
            {
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v33 = String.init(cString:)();
            v35 = v107;
            v108 = static os_log_type_t.error.getter();
            *(&v169 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(57);
            v58 = "o query. { error=";
            v59 = 0xD000000000000035;
            v109._object = 0x80000001000993A0;
            v109._countAndFlagsBits = 0xD000000000000035;
            String.append(_:)(v109);
            v110._countAndFlagsBits = v33;
            v110._object = v35;
            String.append(_:)(v110);
            v111._countAndFlagsBits = 32032;
            v111._object = 0xE200000000000000;
            String.append(_:)(v111);
            v105 = v108;
            v106 = 233;
LABEL_47:
            sub_10005E11C(v105, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, v106);

            *&v169 = 0;
            *(&v169 + 1) = 0xE000000000000000;
            v85 = 57;
            goto LABEL_28;
          }

          if (*(a2 + 56))
          {
            v112 = *(a2 + 48);
            v113 = *a1;
            v114 = String.utf8CString.getter();
            LODWORD(v113) = sqlite3_bind_text(v113, 6, (v114 + 32), -1, v13);

            if (v113)
            {
              v166 = a1;
              result = sqlite3_errmsg(a4);
              if (result)
              {
                v16 = String.init(cString:)();
                v18 = v115;
                v116 = static os_log_type_t.error.getter();
                _StringGuts.grow(_:)(47);

                v20 = 0x8000000100099410;
                v21 = 0xD00000000000002BLL;
                v117._countAndFlagsBits = v16;
                v117._object = v18;
                String.append(_:)(v117);
                v118._countAndFlagsBits = 32032;
                v118._object = 0xE200000000000000;
                String.append(_:)(v118);
                sub_10005E11C(v116, 0xD00000000000002BLL, 0x8000000100099410, 0xD00000000000005CLL, 0x8000000100098E90, 252);

                *&v169 = 0;
                *(&v169 + 1) = 0xE000000000000000;
                v24 = 47;
                goto LABEL_4;
              }

              goto LABEL_77;
            }

            if (*(a2 + 72))
            {
              v134 = *(a2 + 64);
              v135 = *a1;
              v136 = String.utf8CString.getter();
              LODWORD(v135) = sqlite3_bind_text(v135, 7, (v136 + 32), -1, v13);

              if (!v135)
              {
                if (sqlite3_step(*a1) == 101)
                {
                  v147 = static os_log_type_t.debug.getter();
                  *&v169 = 0;
                  *(&v169 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(32);

                  v174 = 0xD00000000000001CLL;
                  v175 = 0x80000001000994E0;
                  v148 = *(a2 + 48);
                  v171 = *(a2 + 32);
                  v172 = v148;
                  v173 = *(a2 + 64);
                  v149 = *(a2 + 16);
                  v169 = *a2;
                  v170 = v149;
                  sub_100031284(a2, v168);
                  v150._countAndFlagsBits = String.init<A>(describing:)();
                  String.append(_:)(v150);

                  v151._countAndFlagsBits = 32032;
                  v151._object = 0xE200000000000000;
                  String.append(_:)(v151);
                  v152 = v174;
                  v153 = v147;
                  v154 = v175;
                  v155 = 274;
                }

                else
                {
                  result = sqlite3_errmsg(a4);
                  if (!result)
                  {
LABEL_79:
                    __break(1u);
                    return result;
                  }

                  v156 = String.init(cString:)();
                  v158 = v157;
                  v159 = static os_log_type_t.error.getter();
                  *&v169 = 0;
                  *(&v169 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(50);

                  v174 = 0xD000000000000024;
                  v175 = 0x80000001000994B0;
                  v160 = *(a2 + 48);
                  v171 = *(a2 + 32);
                  v172 = v160;
                  v173 = *(a2 + 64);
                  v161 = *(a2 + 16);
                  v169 = *a2;
                  v170 = v161;
                  sub_100031284(a2, v168);
                  v162._countAndFlagsBits = String.init<A>(describing:)();
                  String.append(_:)(v162);

                  v163._countAndFlagsBits = 0x3D726F727265202CLL;
                  v163._object = 0xE800000000000000;
                  String.append(_:)(v163);
                  v164._countAndFlagsBits = v156;
                  v164._object = v158;
                  String.append(_:)(v164);

                  v165._countAndFlagsBits = 32032;
                  v165._object = 0xE200000000000000;
                  String.append(_:)(v165);
                  v152 = v174;
                  v153 = v159;
                  v154 = v175;
                  v155 = 270;
                }

                sub_10005E11C(v153, v152, v154, 0xD00000000000005CLL, 0x8000000100098E90, v155);

                return sqlite3_reset(*a1);
              }

              result = sqlite3_errmsg(a4);
              if (!result)
              {
LABEL_78:
                __break(1u);
                goto LABEL_79;
              }

              v33 = String.init(cString:)();
              v35 = v137;
              v138 = static os_log_type_t.error.getter();
              _StringGuts.grow(_:)(55);
              v58 = "issing modification date. { ";
              v59 = 0xD000000000000033;
              v139._object = 0x8000000100099470;
              v139._countAndFlagsBits = 0xD000000000000033;
              String.append(_:)(v139);
              v140._countAndFlagsBits = v33;
              v140._object = v35;
              String.append(_:)(v140);
              v141._countAndFlagsBits = 32032;
              v141._object = 0xE200000000000000;
              String.append(_:)(v141);
              sub_10005E11C(v138, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 264);

              *&v169 = 0;
              *(&v169 + 1) = 0xE000000000000000;
              v85 = 55;
              goto LABEL_28;
            }

            v142 = static os_log_type_t.error.getter();
            *&v169 = 0;
            *(&v169 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(48);

            v120 = 0x8000000100099440;
            v121 = 0xD00000000000002CLL;
            v174 = 0xD00000000000002CLL;
            v175 = 0x8000000100099440;
            v143 = *(a2 + 48);
            v171 = *(a2 + 32);
            v172 = v143;
            v173 = *(a2 + 64);
            v144 = *(a2 + 16);
            v169 = *a2;
            v170 = v144;
            sub_100031284(a2, v168);
            v145._countAndFlagsBits = String.init<A>(describing:)();
            String.append(_:)(v145);

            v146._countAndFlagsBits = 32032;
            v146._object = 0xE200000000000000;
            String.append(_:)(v146);
            sub_10005E11C(v142, v174, v175, 0xD00000000000005CLL, 0x8000000100098E90, 258);

            *&v169 = 0;
            *(&v169 + 1) = 0xE000000000000000;
            v126 = 48;
          }

          else
          {
            v119 = static os_log_type_t.error.getter();
            *&v169 = 0;
            *(&v169 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(40);

            v120 = 0x80000001000993E0;
            v121 = 0xD000000000000024;
            v174 = 0xD000000000000024;
            v175 = 0x80000001000993E0;
            v122 = *(a2 + 48);
            v171 = *(a2 + 32);
            v172 = v122;
            v173 = *(a2 + 64);
            v123 = *(a2 + 16);
            v169 = *a2;
            v170 = v123;
            sub_100031284(a2, v168);
            v124._countAndFlagsBits = String.init<A>(describing:)();
            String.append(_:)(v124);

            v125._countAndFlagsBits = 32032;
            v125._object = 0xE200000000000000;
            String.append(_:)(v125);
            sub_10005E11C(v119, v174, v175, 0xD00000000000005CLL, 0x8000000100098E90, 246);

            *&v169 = 0;
            *(&v169 + 1) = 0xE000000000000000;
            v126 = 40;
          }

          _StringGuts.grow(_:)(v126);

          v174 = v121;
          v175 = v120;
          v127 = *(a2 + 48);
          v171 = *(a2 + 32);
          v172 = v127;
          v173 = *(a2 + 64);
          v128 = *(a2 + 16);
          v169 = *a2;
          v170 = v128;
          sub_100031284(a2, v168);
          v129._countAndFlagsBits = String.init<A>(describing:)();
          v53 = a1;
          String.append(_:)(v129);

          v130._countAndFlagsBits = 32032;
          v130._object = 0xE200000000000000;
          String.append(_:)(v130);
          v131 = v174;
          v132 = v175;
          sub_10000B6B0();
          v27 = swift_allocError();
          *v133 = v131;
          *(v133 + 8) = v132;
          *(v133 + 16) = 11;
          swift_willThrow();
          goto LABEL_15;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    __break(1u);
    goto LABEL_66;
  }

  v166 = a1;
  result = sqlite3_errmsg(a4);
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v16 = String.init(cString:)();
  v18 = v17;
  v19 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(42);

  v20 = 0x8000000100099300;
  v21 = 0xD000000000000026;
  v22._countAndFlagsBits = v16;
  v22._object = v18;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 32032;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  sub_10005E11C(v19, 0xD000000000000026, 0x8000000100099300, 0xD00000000000005CLL, 0x8000000100098E90, 174);

  *&v169 = 0;
  *(&v169 + 1) = 0xE000000000000000;
  v24 = 42;
LABEL_4:
  _StringGuts.grow(_:)(v24);

  *&v169 = v21;
  *(&v169 + 1) = v20;
  v25._countAndFlagsBits = v16;
  v25._object = v18;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 32032;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  sub_10000B6B0();
  v27 = swift_allocError();
  *v28 = v169;
  *(v28 + 16) = 11;
  swift_willThrow();
  v29 = *v166;
LABEL_31:
  result = sqlite3_reset(v29);
  *v167 = v27;
  return result;
}

void sub_10006FC9C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v7 = v6;
  swift_beginAccess();
  v14 = *(a1 + 32);
  if (!v14)
  {
    v30 = static os_log_type_t.error.getter();
    sub_10005E11C(v30, 0xD000000000000019, 0x8000000100098E70, 0xD00000000000005CLL, 0x8000000100098E90, 360);
    *a6 = _swiftEmptyArrayStorage;
    return;
  }

  v44 = a6;
  ppStmt = 0;
  v15 = String.utf8CString.getter();

  v16 = sqlite3_prepare_v2(v14, (v15 + 32), -1, &ppStmt, 0);

  if (!v16)
  {
    v29 = v14;
    if (a3)
    {
      goto LABEL_14;
    }

    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      if (sqlite3_bind_int(ppStmt, 1, a2))
      {
        v45 = v14;
        if (sqlite3_errmsg(v14))
        {
          v17 = String.init(cString:)();
          v19 = v31;
          v32 = static os_log_type_t.error.getter();
          _StringGuts.grow(_:)(49);

          v21 = 0x8000000100099680;
          v22 = 0xD00000000000002DLL;
          v33._countAndFlagsBits = v17;
          v33._object = v19;
          String.append(_:)(v33);
          v34._countAndFlagsBits = 32032;
          v34._object = 0xE200000000000000;
          String.append(_:)(v34);
          sub_10005E11C(v32, 0xD00000000000002DLL, 0x8000000100099680, 0xD00000000000005CLL, 0x8000000100098E90, 390);

          v48 = 0;
          v49 = 0xE000000000000000;
          v25 = 49;
          goto LABEL_5;
        }

        goto LABEL_31;
      }

LABEL_14:
      if (a5)
      {
        goto LABEL_20;
      }

      if (a4 >= 0xFFFFFFFF80000000)
      {
        if (a4 <= 0x7FFFFFFF)
        {
          if (sqlite3_bind_int(ppStmt, 2, a4))
          {
            v45 = v14;
            if (sqlite3_errmsg(v14))
            {
              v17 = String.init(cString:)();
              v19 = v35;
              v36 = static os_log_type_t.error.getter();
              _StringGuts.grow(_:)(50);

              v21 = 0x8000000100099650;
              v22 = 0xD00000000000002ELL;
              v37._countAndFlagsBits = v17;
              v37._object = v19;
              String.append(_:)(v37);
              v38._countAndFlagsBits = 32032;
              v38._object = 0xE200000000000000;
              String.append(_:)(v38);
              sub_10005E11C(v36, 0xD00000000000002ELL, 0x8000000100099650, 0xD00000000000005CLL, 0x8000000100098E90, 398);

              v48 = 0;
              v49 = 0xE000000000000000;
              v25 = 50;
              goto LABEL_5;
            }

            goto LABEL_32;
          }

LABEL_20:
          v39 = _swiftEmptyArrayStorage;
          v47 = _swiftEmptyArrayStorage;
          if (sqlite3_step(ppStmt) == 100)
          {
            while (1)
            {
              v40 = objc_autoreleasePoolPush();
              sub_100070424(&ppStmt, v14, a1, &v47, &v48);
              if (v7)
              {
                break;
              }

              v7 = 0;
              objc_autoreleasePoolPop(v40);
              if (sqlite3_step(ppStmt) != 100)
              {
                v39 = v47;
                goto LABEL_24;
              }
            }

            objc_autoreleasePoolPop(v40);
          }

          else
          {
LABEL_24:
            v41 = static os_log_type_t.debug.getter();
            v48 = 0;
            v49 = 0xE000000000000000;
            _StringGuts.grow(_:)(48);

            v48 = 0xD00000000000002CLL;
            v49 = 0x8000000100099620;
            v46 = v39[2];
            v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v42);

            v43._countAndFlagsBits = 32032;
            v43._object = 0xE200000000000000;
            String.append(_:)(v43);
            sub_10005E11C(v41, v48, v49, 0xD00000000000005CLL, 0x8000000100098E90, 471);

            *v44 = v39;
          }

          goto LABEL_6;
        }

LABEL_29:
        __break(1u);
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  v45 = v14;
  if (sqlite3_errmsg(v14))
  {
    v17 = String.init(cString:)();
    v19 = v18;
    v20 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(43);

    v21 = 0x80000001000995F0;
    v22 = 0xD000000000000027;
    v23._countAndFlagsBits = v17;
    v23._object = v19;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 32032;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    sub_10005E11C(v20, 0xD000000000000027, 0x80000001000995F0, 0xD00000000000005CLL, 0x8000000100098E90, 383);

    v48 = 0;
    v49 = 0xE000000000000000;
    v25 = 43;
LABEL_5:
    _StringGuts.grow(_:)(v25);

    v48 = v22;
    v49 = v21;
    v26._countAndFlagsBits = v17;
    v26._object = v19;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 32032;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    sub_10000B6B0();
    swift_allocError();
    *v28 = v22;
    *(v28 + 8) = v21;
    *(v28 + 16) = 11;
    swift_willThrow();
    v29 = v45;
LABEL_6:
    sub_1000702E8(&ppStmt, v29, a1, 377);
    return;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

const char *sub_1000702E8(sqlite3_stmt **a1, sqlite3 *a2, uint64_t a3, uint64_t a4)
{
  result = sqlite3_finalize(*a1);
  if (result)
  {
    result = sqlite3_errmsg(a2);
    if (result)
    {
      v7 = String.init(cString:)();
      v9 = v8;
      v10 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(49);

      v11._countAndFlagsBits = v7;
      v11._object = v9;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 32032;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      sub_10005E11C(v10, 0xD00000000000002DLL, 0x80000001000995A0, 0xD00000000000005CLL, 0x8000000100098E90, a4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100070424(sqlite3_stmt **a1, sqlite3 *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (!sqlite3_column_text(*a1, 0))
  {
    result = sqlite3_errmsg(a2);
    if (result)
    {
      v13 = String.init(cString:)();
      v15 = v14;
      v16 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(34);

      v17 = 0x80000001000996E0;
      v18 = 0xD00000000000001ELL;
      v19._countAndFlagsBits = v13;
      v19._object = v15;
      String.append(_:)(v19);
      v20._countAndFlagsBits = 32032;
      v20._object = 0xE200000000000000;
      String.append(_:)(v20);
      v21 = v16;
      v22 = 411;
LABEL_20:
      sub_10005E11C(v21, 0xD00000000000001ELL, 0x80000001000996E0, 0xD00000000000005CLL, 0x8000000100098E90, v22);

      v54 = 34;
LABEL_21:
      _StringGuts.grow(_:)(v54);

      v55._countAndFlagsBits = v13;
      v55._object = v15;
      String.append(_:)(v55);

      v56._countAndFlagsBits = 32032;
      v56._object = 0xE200000000000000;
      String.append(_:)(v56);
      sub_10000B6B0();
      v37 = swift_allocError();
      *v57 = v18;
      *(v57 + 8) = v17;
      *(v57 + 16) = 11;
      result = swift_willThrow();
      goto LABEL_22;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v63 = String.init(cString:)();
  v64 = v9;
  if (sqlite3_column_text(*a1, 1))
  {
    v62 = String.init(cString:)();
    v11 = v10;
  }

  else
  {
    v62 = 0;
    v11 = 0;
  }

  v23 = sqlite3_column_int(*a1, 3);
  v24 = sqlite3_column_blob(*a1, 2);
  if (v24)
  {
    v25 = [objc_allocWithZone(NSData) initWithBytes:v24 length:v23];
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = type metadata accessor for JSONDecoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100002074(&qword_1000B7858, &qword_100091870);
    sub_1000312EC(&qword_1000B7860);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v5)
    {

      v32 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(40);

      swift_getErrorValue();
      v33._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 32032;
      v34._object = 0xE200000000000000;
      String.append(_:)(v34);
      sub_10005E11C(v32, 0xD000000000000024, 0x8000000100099730, 0xD00000000000005CLL, 0x8000000100098E90, 437);

      _StringGuts.grow(_:)(40);

      swift_getErrorValue();
      v35._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 32032;
      v36._object = 0xE200000000000000;
      String.append(_:)(v36);
      sub_10000B6B0();
      v37 = swift_allocError();
      *v38 = 0xD000000000000024;
      *(v38 + 8) = 0x8000000100099730;
      *(v38 + 16) = 11;
      swift_willThrow();

      result = sub_100005A28(v26, v28);
LABEL_22:
      *a5 = v37;
      return result;
    }

    sub_100005A28(v26, v28);

    v24 = v68;
  }

  v39 = sqlite3_column_double(*a1, 4);
  if (!sqlite3_column_text(*a1, 5))
  {

    result = sqlite3_errmsg(a2);
    if (result)
    {

      v13 = String.init(cString:)();
      v15 = v50;
      v51 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(34);

      v17 = 0x80000001000996E0;
      v18 = 0xD00000000000001ELL;
      v52._countAndFlagsBits = v13;
      v52._object = v15;
      String.append(_:)(v52);
      v53._countAndFlagsBits = 32032;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v21 = v51;
      v22 = 450;
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  v40 = String.init(cString:)();
  v42 = v41;
  if (!sqlite3_column_text(*a1, 6))
  {

    result = sqlite3_errmsg(a2);
    if (result)
    {

      v13 = String.init(cString:)();
      v15 = v58;
      v59 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(47);

      v17 = 0x8000000100099700;
      v18 = 0xD00000000000002BLL;
      v60._countAndFlagsBits = v13;
      v60._object = v15;
      String.append(_:)(v60);
      v61._countAndFlagsBits = 32032;
      v61._object = 0xE200000000000000;
      String.append(_:)(v61);
      sub_10005E11C(v59, 0xD00000000000002BLL, 0x8000000100099700, 0xD00000000000005CLL, 0x8000000100098E90, 459);

      v54 = 47;
      goto LABEL_21;
    }

LABEL_27:
    __break(1u);
    return result;
  }

  v43 = String.init(cString:)();
  v65 = v44;
  v67 = v43;
  v45 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v45;
  if ((result & 1) == 0)
  {
    result = sub_100049A20(0, *(v45 + 16) + 1, 1, v45);
    v45 = result;
    *a4 = result;
  }

  v46 = v39;
  v48 = *(v45 + 16);
  v47 = *(v45 + 24);
  if (v48 >= v47 >> 1)
  {
    result = sub_100049A20((v47 > 1), v48 + 1, 1, v45);
    v45 = result;
    *a4 = result;
  }

  *(v45 + 16) = v48 + 1;
  v49 = v45 + 80 * v48;
  *(v49 + 32) = v63;
  *(v49 + 40) = v64;
  *(v49 + 48) = v62;
  *(v49 + 56) = v11;
  *(v49 + 64) = v24;
  *(v49 + 72) = v46;
  *(v49 + 76) = 0;
  *(v49 + 77) = v68;
  *(v49 + 79) = BYTE2(v68);
  *(v49 + 80) = v40;
  *(v49 + 88) = v42;
  *(v49 + 96) = v67;
  *(v49 + 104) = v65;
  return result;
}

const char *sub_100070B3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  if (!v4)
  {
    v12 = static os_log_type_t.error.getter();
    sub_10005E11C(v12, 0xD000000000000019, 0x8000000100098E70, 0xD00000000000005CLL, 0x8000000100098E90, 484);
    sub_10000B6B0();
    swift_allocError();
    *v13 = 0xD000000000000019;
    *(v13 + 8) = 0x8000000100098E70;
    *(v13 + 16) = 11;
    return swift_willThrow();
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(v4, "SELECT COUNT(*) FROM CKSignatures;", -1, &ppStmt, 0))
  {
    result = sqlite3_errmsg(v4);
    if (result)
    {
      v6 = String.init(cString:)();
      v8 = v7;
      v9 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(43);

      v10._countAndFlagsBits = v6;
      v10._object = v8;
      String.append(_:)(v10);
      v11._countAndFlagsBits = 32032;
      v11._object = 0xE200000000000000;
      String.append(_:)(v11);
      sub_10005E11C(v9, 0xD000000000000027, 0x80000001000995F0, 0xD00000000000005CLL, 0x8000000100098E90, 502);

      _StringGuts.grow(_:)(43);

LABEL_10:
      v18._countAndFlagsBits = v6;
      v18._object = v8;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 32032;
      v19._object = 0xE200000000000000;
      String.append(_:)(v19);
      sub_10000B6B0();
      swift_allocError();
      *v20 = 0xD000000000000027;
      *(v20 + 8) = 0x80000001000995F0;
      *(v20 + 16) = 11;
      swift_willThrow();
      return sub_100070EEC(&ppStmt, v4);
    }

    __break(1u);
  }

  else
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      *a2 = sqlite3_column_int(ppStmt, 0);
      return sub_100070EEC(&ppStmt, v4);
    }

    result = sqlite3_errmsg(v4);
    if (result)
    {
      v6 = String.init(cString:)();
      v8 = v14;
      v15 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(47);

      v16._countAndFlagsBits = v6;
      v16._object = v8;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 32032;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      sub_10005E11C(v15, 0xD00000000000002BLL, 0x8000000100099790, 0xD00000000000005CLL, 0x8000000100098E90, 508);

      _StringGuts.grow(_:)(43);

      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

const char *sub_100070EEC(sqlite3_stmt **a1, sqlite3 *a2)
{
  result = sqlite3_finalize(*a1);
  if (result)
  {
    result = sqlite3_errmsg(a2);
    if (result)
    {
      v4 = String.init(cString:)();
      v6 = v5;
      v7 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(48);

      v8._countAndFlagsBits = v4;
      v8._object = v6;
      String.append(_:)(v8);

      v9._countAndFlagsBits = 32032;
      v9._object = 0xE200000000000000;
      String.append(_:)(v9);
      sub_10005E11C(v7, 0xD00000000000002CLL, 0x80000001000997C0, 0xD00000000000005CLL, 0x8000000100098E90, 496);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100071024(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  if (!v4)
  {
    v14 = static os_log_type_t.error.getter();
    sub_10005E11C(v14, 0xD000000000000019, 0x8000000100098E70, 0xD00000000000005CLL, 0x8000000100098E90, 525);
    return;
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(v4, "BEGIN EXCLUSIVE TRANSACTION", -1, &ppStmt, 0))
  {
    if (sqlite3_errmsg(v4))
    {
      v5 = String.init(cString:)();
      v7 = v6;
      v8 = static os_log_type_t.error.getter();
      *(&v95 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v9._countAndFlagsBits = 0xD000000000000031;
      v9._object = 0x8000000100098F10;
      String.append(_:)(v9);
      v10._countAndFlagsBits = v5;
      v10._object = v7;
      String.append(_:)(v10);

      v11._countAndFlagsBits = 32032;
      v11._object = 0xE200000000000000;
      String.append(_:)(v11);
      v12 = v8;
      v13 = 534;
LABEL_12:
      sub_10005E11C(v12, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, v13);

      return;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    if (sqlite3_errmsg(v4))
    {
      v22 = String.init(cString:)();
      v24 = v23;
      v25 = static os_log_type_t.error.getter();
      *(&v95 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v26._countAndFlagsBits = 0xD000000000000031;
      v26._object = 0x8000000100098F10;
      String.append(_:)(v26);
      v27._countAndFlagsBits = v22;
      v27._object = v24;
      String.append(_:)(v27);

      v28._countAndFlagsBits = 32032;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      v12 = v25;
      v13 = 540;
      goto LABEL_12;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (sqlite3_finalize(ppStmt))
  {
    if (sqlite3_errmsg(v4))
    {
      v15 = String.init(cString:)();
      v17 = v16;
      v18 = static os_log_type_t.error.getter();
      *(&v95 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v19._countAndFlagsBits = 0xD000000000000032;
      v19._object = 0x8000000100098F50;
      String.append(_:)(v19);
      v20._countAndFlagsBits = v15;
      v20._object = v17;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 32032;
      v21._object = 0xE200000000000000;
      String.append(_:)(v21);
      v12 = v18;
      v13 = 546;
      goto LABEL_12;
    }

    goto LABEL_40;
  }

  v100 = 0;
  v29 = String.utf8CString.getter();

  v30 = sqlite3_prepare_v2(v4, (v29 + 32), -1, &v100, 0);

  if (v30)
  {
    if (!sqlite3_errmsg(v4))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v31 = String.init(cString:)();
    v33 = v32;
    v34 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(61);
    v35._object = 0x8000000100098FB0;
    v35._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v35);
    v36._countAndFlagsBits = v31;
    v36._object = v33;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 32032;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    sub_10005E11C(v34, 0, 0xE000000000000000, 0xD00000000000005CLL, 0x8000000100098E90, 569);

    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v38._object = 0x8000000100098FB0;
    v38._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v38);
    goto LABEL_16;
  }

  if (a2)
  {
    v42 = *(a2 + 16);
    if (v42)
    {
      v43 = (a2 + 32);
      while (1)
      {
        v95 = *v43;
        v44 = v43[1];
        v45 = v43[2];
        v46 = v43[4];
        v98 = v43[3];
        v99 = v46;
        v96 = v44;
        v97 = v45;
        sub_100031284(&v95, v90);
        v47 = objc_autoreleasePoolPush();
        v48 = v100;
        v49 = *(a1 + 40);
        v50 = String.utf8CString.getter();
        sqlite3_bind_text(v48, 1, (v50 + 32), -1, v49);

        if (sqlite3_step(v100) != 101)
        {
          break;
        }

        v51 = static os_log_type_t.debug.getter();
        v90[0] = 0;
        v90[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        v92 = v97;
        v93 = v98;
        v94 = v99;
        *v90 = v95;
        v91 = v96;
        sub_100031284(&v95, v89);
        v52._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v52);

        v53._countAndFlagsBits = 32032;
        v53._object = 0xE200000000000000;
        String.append(_:)(v53);
        sub_10005E11C(v51, 0xD000000000000029, 0x8000000100099060, 0xD00000000000005CLL, 0x8000000100098E90, 588);

        sqlite3_reset(v100);
        sub_1000312BC(&v95);
        objc_autoreleasePoolPop(v47);
        v43 += 5;
        if (!--v42)
        {
          goto LABEL_25;
        }
      }

      v88 = v47;
      if (!sqlite3_errmsg(v4))
      {
        goto LABEL_43;
      }

      v73 = String.init(cString:)();
      v75 = v74;
      v76 = static os_log_type_t.error.getter();
      v90[0] = 0;
      v90[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v90[0] = 0xD00000000000002CLL;
      v90[1] = 0x8000000100098FF0;
      v77._countAndFlagsBits = v73;
      v77._object = v75;
      String.append(_:)(v77);
      v78._countAndFlagsBits = 32032;
      v78._object = 0xE200000000000000;
      String.append(_:)(v78);
      sub_10005E11C(v76, v90[0], v90[1], 0xD00000000000005CLL, 0x8000000100098E90, 584);

      v90[0] = 0;
      v90[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v90[0] = 0xD00000000000002CLL;
      v90[1] = 0x8000000100098FF0;
      v79._countAndFlagsBits = v73;
      v79._object = v75;
      String.append(_:)(v79);

      v80._countAndFlagsBits = 32032;
      v80._object = 0xE200000000000000;
      String.append(_:)(v80);
      v81 = v90[0];
      v82 = v90[1];
      sub_10000B6B0();
      swift_allocError();
      *v83 = v81;
      *(v83 + 8) = v82;
      *(v83 + 16) = 11;
      swift_willThrow();
      sqlite3_reset(v100);
      sub_1000312BC(&v95);
      objc_autoreleasePoolPop(v88);
LABEL_35:
      sub_100071B90(&v100, v4);
      return;
    }
  }

  else
  {
    if (sqlite3_step(v100) != 101)
    {
      if (!sqlite3_errmsg(v4))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v31 = String.init(cString:)();
      v33 = v84;
      v85 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(48);

      v86._countAndFlagsBits = v31;
      v86._object = v33;
      String.append(_:)(v86);
      v87._countAndFlagsBits = 32032;
      v87._object = 0xE200000000000000;
      String.append(_:)(v87);
      sub_10005E11C(v85, 0xD00000000000002CLL, 0x8000000100098FF0, 0xD00000000000005CLL, 0x8000000100098E90, 594);

      _StringGuts.grow(_:)(48);

      *&v95 = 0xD00000000000002CLL;
      *(&v95 + 1) = 0x8000000100098FF0;
LABEL_16:
      v39._countAndFlagsBits = v31;
      v39._object = v33;
      String.append(_:)(v39);

      v40._countAndFlagsBits = 32032;
      v40._object = 0xE200000000000000;
      String.append(_:)(v40);
      sub_10000B6B0();
      swift_allocError();
      *v41 = v95;
      *(v41 + 16) = 11;
      swift_willThrow();
      goto LABEL_35;
    }

    v54 = static os_log_type_t.debug.getter();
    sub_10005E11C(v54, 0xD00000000000001FLL, 0x8000000100099020, 0xD00000000000005CLL, 0x8000000100098E90, 598);
  }

LABEL_25:
  v90[0] = 0;
  if (sqlite3_prepare_v2(v4, "COMMIT TRANSACTION", -1, v90, 0))
  {
    if (!sqlite3_errmsg(v4))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v55 = String.init(cString:)();
    v57 = v56;
    v58 = static os_log_type_t.error.getter();
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v59._countAndFlagsBits = 0xD000000000000031;
    v59._object = 0x8000000100098F10;
    String.append(_:)(v59);
    v60._countAndFlagsBits = v55;
    v60._object = v57;
    String.append(_:)(v60);

    v61._countAndFlagsBits = 32032;
    v61._object = 0xE200000000000000;
    String.append(_:)(v61);
    v62 = v95;
    v63 = v58;
    v64 = *(&v95 + 1);
    v65 = 614;
    goto LABEL_31;
  }

  if (sqlite3_step(v90[0]) == 101)
  {
LABEL_32:
    sub_100071CC8(v90, v4, a1, 608);
    goto LABEL_35;
  }

  if (sqlite3_errmsg(v4))
  {
    v66 = String.init(cString:)();
    v68 = v67;
    v69 = static os_log_type_t.error.getter();
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v70._countAndFlagsBits = 0xD000000000000031;
    v70._object = 0x8000000100098F10;
    String.append(_:)(v70);
    v71._countAndFlagsBits = v66;
    v71._object = v68;
    String.append(_:)(v71);

    v72._countAndFlagsBits = 32032;
    v72._object = 0xE200000000000000;
    String.append(_:)(v72);
    v62 = v95;
    v63 = v69;
    v64 = *(&v95 + 1);
    v65 = 620;
LABEL_31:
    sub_10005E11C(v63, v62, v64, 0xD00000000000005CLL, 0x8000000100098E90, v65);

    goto LABEL_32;
  }

LABEL_45:
  __break(1u);
}

const char *sub_100071B90(sqlite3_stmt **a1, sqlite3 *a2)
{
  result = sqlite3_finalize(*a1);
  if (result)
  {
    result = sqlite3_errmsg(a2);
    if (result)
    {
      v4 = String.init(cString:)();
      v6 = v5;
      v7 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(49);

      v8._countAndFlagsBits = v4;
      v8._object = v6;
      String.append(_:)(v8);

      v9._countAndFlagsBits = 32032;
      v9._object = 0xE200000000000000;
      String.append(_:)(v9);
      sub_10005E11C(v7, 0xD00000000000002DLL, 0x80000001000990F0, 0xD00000000000005CLL, 0x8000000100098E90, 563);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

const char *sub_100071CC8(sqlite3_stmt **a1, sqlite3 *a2, uint64_t a3, uint64_t a4)
{
  result = sqlite3_finalize(*a1);
  if (result)
  {
    result = sqlite3_errmsg(a2);
    if (result)
    {
      v7 = String.init(cString:)();
      v9 = v8;
      v10 = static os_log_type_t.error.getter();
      _StringGuts.grow(_:)(49);

      v11._countAndFlagsBits = v7;
      v11._object = v9;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 32032;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      sub_10005E11C(v10, 0xD00000000000002DLL, 0x80000001000990C0, 0xD00000000000005CLL, 0x8000000100098E90, a4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100071E04(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  if (!v2)
  {
    v15 = static os_log_type_t.error.getter();
    sub_10005E11C(v15, 0xD000000000000019, 0x8000000100098E70, 0xD00000000000005CLL, 0x8000000100098E90, 630);
    return;
  }

  if (sqlite3_close_v2(*(a1 + 32)))
  {
    if (!sqlite3_errmsg(v2))
    {
      __break(1u);
      return;
    }

    v3 = String.init(cString:)();
    v5 = v4;
    v6 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(66);
    v7._countAndFlagsBits = 0xD000000000000034;
    v7._object = 0x80000001000997F0;
    String.append(_:)(v7);
    String.append(_:)(*(a1 + 16));
    v8._countAndFlagsBits = 0x3D726F727265202CLL;
    v8._object = 0xE800000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    String.append(_:)(v9);

    v10._countAndFlagsBits = 32032;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11 = 0;
    v12 = v6;
    v13 = 0xE000000000000000;
    v14 = 636;
  }

  else
  {
    v16 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(50);

    String.append(_:)(*(a1 + 16));
    v17._countAndFlagsBits = 32032;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v11 = 0xD00000000000002ELL;
    v12 = v16;
    v13 = 0x8000000100099830;
    v14 = 640;
  }

  sub_10005E11C(v12, v11, v13, 0xD00000000000005CLL, 0x8000000100098E90, v14);
}

uint64_t sub_100072040(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 fileExistsAtPath:v6];

  if (!v7)
  {
    v20 = static os_log_type_t.debug.getter();
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v21._countAndFlagsBits = 0xD00000000000004DLL;
    v21._object = 0x8000000100099BC0;
    String.append(_:)(v21);
    v22._countAndFlagsBits = v4;
    v22._object = v5;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 32032;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    v16 = 0;
    v17 = v20;
    v18 = 0xE000000000000000;
    v19 = 650;
    goto LABEL_5;
  }

  v8 = [v2 defaultManager];
  v9 = String._bridgeToObjectiveC()();
  v36 = 0;
  v10 = [v8 removeItemAtPath:v9 error:&v36];

  if (v10)
  {
    v11 = v36;
    v12 = static os_log_type_t.default.getter();
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v13._countAndFlagsBits = 0xD000000000000032;
    v13._object = 0x8000000100099C50;
    String.append(_:)(v13);
    v14._countAndFlagsBits = v4;
    v14._object = v5;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 32032;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    v16 = v36;
    v17 = v12;
    v18 = v37;
    v19 = 656;
LABEL_5:
    sub_10005E11C(v17, v16, v18, 0xD00000000000005CLL, 0x8000000100098E90, v19);
  }

  v25 = v36;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v26 = static os_log_type_t.error.getter();
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v27._object = 0x8000000100099C10;
  v27._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v27);
  swift_getErrorValue();
  v28._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 32032;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  sub_10005E11C(v26, v36, v37, 0xD00000000000005CLL, 0x8000000100098E90, 658);

  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v30._object = 0x8000000100099C10;
  v30._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v30);
  swift_getErrorValue();
  v31._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 32032;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33 = v36;
  v34 = v37;
  sub_10000B6B0();
  swift_allocError();
  *v35 = v33;
  *(v35 + 8) = v34;
  *(v35 + 16) = 11;
  swift_willThrow();
}

uint64_t sub_100072458()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  sub_100072810();
  static DispatchQoS.unspecified.getter();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_10007285C();
  sub_100002074(&qword_1000B8B20, &qword_100092E18);
  sub_1000728B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000B89E0 = result;
  return result;
}

uint64_t sub_100072660()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC13frauddefensed23SignaturesSQLiteManager_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignaturesSQLiteManager()
{
  result = qword_1000B8A18;
  if (!qword_1000B8A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100072758()
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

unint64_t sub_100072810()
{
  result = qword_1000B8B10;
  if (!qword_1000B8B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8B10);
  }

  return result;
}

unint64_t sub_10007285C()
{
  result = qword_1000B8B18;
  if (!qword_1000B8B18)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8B18);
  }

  return result;
}

unint64_t sub_1000728B4()
{
  result = qword_1000B8B28;
  if (!qword_1000B8B28)
  {
    sub_100003400(&qword_1000B8B20, &qword_100092E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8B28);
  }

  return result;
}

uint64_t sub_100072918(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_100057F68(a1, a2);
  if ((v5 & 1) == 0)
  {
    if (!*(v3 + 16))
    {
      return 0;
    }

    v4 = sub_100057F68(0x6C61626F6C67, 0xE600000000000000);
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = (*(v3 + 56) + 16 * v4);
  v8 = *v7;
  v9 = v7[1];

  return v8;
}

char *sub_100072990(uint64_t a1, void *a2)
{
  v3 = v2;
  v98._countAndFlagsBits = a1;
  v98._object = a2;
  v95 = *v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin();
  v94 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for URL.DirectoryHint();
  v90 = *(v93 - 8);
  v8 = *(v90 + 64);
  __chkstk_darwin();
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*(sub_100002074(&qword_1000B6DE8, &qword_10008FA30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v86 - v12;
  v91 = type metadata accessor for URL();
  v89 = *(v91 - 8);
  v14 = *(v89 + 64);
  __chkstk_darwin();
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC13frauddefensed16RecordZonesAsset_logger;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v18 = sub_100003448(v4, qword_1000B93E8);
  v19 = v5[2];
  v19(&v3[v17], v18, v4);
  v20 = [objc_opt_self() defaultManager];
  v101 = v4;
  v21 = v20;
  v22 = String._bridgeToObjectiveC()();
  v96 = v17;
  v23 = v22;
  v24 = [v21 fileExistsAtPath:v22];
  v97 = v3;
  v25 = v24;

  if (!v25)
  {
    v50 = v94;
    v19(v94, &v97[v96], v101);
    v51 = static os_log_type_t.error.getter();
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v52._object = 0x8000000100099E60;
    v52._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v52);
    countAndFlagsBits = v98._countAndFlagsBits;
    object = v98._object;
    String.append(_:)(v98);
    v55._countAndFlagsBits = 32032;
    v55._object = 0xE200000000000000;
    String.append(_:)(v55);
    sub_10005E11C(v51, v99, v100, 0xD000000000000055, 0x8000000100099EA0, 20);

    v43 = v5[1];
    v43(v50, v101);
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v56._object = 0x8000000100099E60;
    v56._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v56);
    v57._countAndFlagsBits = countAndFlagsBits;
    v57._object = object;
    String.append(_:)(v57);

    v58._countAndFlagsBits = 32032;
    v58._object = 0xE200000000000000;
    String.append(_:)(v58);
    v59 = v99;
    v60 = v100;
    sub_10000B6B0();
    swift_allocError();
    *v61 = v59;
    *(v61 + 8) = v60;
    *(v61 + 16) = 6;
    swift_willThrow();
    goto LABEL_7;
  }

  v87 = v5;
  v88 = v19;
  v26 = v97;
  v27 = v89;
  v28 = v91;
  (*(v89 + 56))(v13, 1, 1, v91);
  (*(v90 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v93);
  v29 = v98._object;

  v30 = v98._countAndFlagsBits;
  URL.init(filePath:directoryHint:relativeTo:)();
  v31 = v92;
  v32 = Data.init(contentsOf:options:)();
  v93 = v31;
  if (v31)
  {
    v34 = v29;
    (*(v27 + 8))(v16, v28);
    v35 = &v26[v96];
    v36 = v30;
    v37 = v94;
    v38 = v101;
    v88(v94, v35, v101);
    v39 = static os_log_type_t.error.getter();
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v40._object = 0x80000001000950C0;
    v40._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v40);
    v41._countAndFlagsBits = v36;
    v41._object = v34;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 32032;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);
    sub_10005E11C(v39, v99, v100, 0xD000000000000055, 0x8000000100099EA0, 28);

    v43 = v87[1];
    v43(v37, v38);
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v44._object = 0x80000001000950C0;
    v44._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v44);
    v45._countAndFlagsBits = v36;
    v45._object = v34;
    String.append(_:)(v45);

    v46._countAndFlagsBits = 32032;
    v46._object = 0xE200000000000000;
    String.append(_:)(v46);
    v47 = v99;
    v48 = v100;
    sub_10000B6B0();
    swift_allocError();
    *v49 = v47;
    *(v49 + 8) = v48;
    *(v49 + 16) = 6;
    swift_willThrow();

LABEL_7:
    v62 = v97;
    v43(&v97[v96], v101);
    v63 = *(*v62 + 48);
    v64 = *(*v62 + 52);
    swift_deallocPartialClassInstance();
    return v62;
  }

  v66 = v33;
  v67 = v32;
  (*(v27 + 8))(v16, v28);
  v68 = type metadata accessor for PropertyListDecoder();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100002074(&qword_1000B7F70, &qword_100092E60);
  sub_1000733A8();
  v92 = v67;
  v71 = v93;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v72 = v88;
  if (v71)
  {

    v73 = v94;
    v74 = v101;
    v72(v94, &v26[v96], v101);
    v75 = static os_log_type_t.error.getter();
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v91 = "ath. { filePath=";
    v76._object = 0x8000000100095100;
    v76._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v76);
    v77 = v98._countAndFlagsBits;
    v93 = v66;
    v78 = v98._object;
    String.append(_:)(v98);
    v79._countAndFlagsBits = 32032;
    v79._object = 0xE200000000000000;
    String.append(_:)(v79);
    sub_10005E11C(v75, v99, v100, 0xD000000000000055, 0x8000000100099EA0, 36);

    v43 = v87[1];
    v43(v73, v74);
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v80._object = (v91 | 0x8000000000000000);
    v80._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v80);
    v81._countAndFlagsBits = v77;
    v81._object = v78;
    String.append(_:)(v81);

    v82._countAndFlagsBits = 32032;
    v82._object = 0xE200000000000000;
    String.append(_:)(v82);
    v83 = v99;
    v84 = v100;
    sub_10000B6B0();
    swift_allocError();
    *v85 = v83;
    *(v85 + 8) = v84;
    *(v85 + 16) = 6;
    swift_willThrow();

    sub_100005A28(v92, v93);
    goto LABEL_7;
  }

  sub_100005A28(v92, v66);
  result = v26;
  *(v26 + 2) = v99;
  return result;
}

uint64_t sub_1000732B0()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13frauddefensed16RecordZonesAsset_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordZonesAsset()
{
  result = qword_1000B8B60;
  if (!qword_1000B8B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000733A8()
{
  result = qword_1000B8BF0;
  if (!qword_1000B8BF0)
  {
    sub_100003400(&qword_1000B7F70, &qword_100092E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BF0);
  }

  return result;
}

Swift::Int sub_10007342C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100073498()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t withTimeout<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  sub_100002074(&qword_1000B8BF8, &qword_100092E70);
  inited = swift_initStackObject();
  v10[8] = inited;
  *(inited + 16) = 0;
  sub_100002074(qword_1000B8C00, &qword_100092E78);
  v13 = swift_initStackObject();
  v10[9] = v13;
  *(v13 + 16) = 0;
  type metadata accessor for Executor();
  v14 = swift_allocObject();
  v10[10] = v14;
  swift_defaultActor_initialize();
  *(v14 + 112) = 0;
  v15 = swift_task_alloc();
  v10[11] = v15;
  v15[2] = a6;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = inited;
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = v13;
  v16 = swift_task_alloc();
  v10[12] = v16;
  *(v16 + 16) = inited;
  *(v16 + 24) = v13;
  v17 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:)[1];
  v18 = swift_task_alloc();
  v10[13] = v18;
  *v18 = v10;
  v18[1] = sub_100073690;

  return withTaskCancellationHandler<A>(operation:onCancel:)(a1, &unk_100092E88, v15, sub_100074E1C, v16, a6);
}

uint64_t sub_100073690()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v11 = *v0;

  swift_setDeallocating();
  v7 = *(v5 + 16);

  swift_setDeallocating();
  v8 = *(v6 + 16);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_100073854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return _swift_task_switch(sub_10007388C, 0, 0);
}

uint64_t sub_10007388C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v11 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = v11;
  *(v3 + 72) = v2;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1000739AC;
  v8 = *(v0 + 80);
  v9 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD000000000000011, 0x8000000100099F70, sub_100074FC0, v3, v8);
}

uint64_t sub_1000739AC()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100073AE8, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100073AE8()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_100073B4C(uint64_t a1)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002A54;

  return sub_100073854(a1, v4, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_100073C38(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a8;
  v46 = a2;
  v48 = a5;
  v49 = a6;
  v47 = a3;
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  v50 = a9;
  v12 = type metadata accessor for CheckedContinuation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v37 - v16;
  v18 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v22 = &v37 - v21;
  static Task<>.checkCancellation()();
  v42 = type metadata accessor for TaskPriority();
  v23 = *(v42 - 8);
  v41 = *(v23 + 56);
  v43 = v23 + 56;
  v41(v22, 1, 1, v42);
  v24 = a4;
  v39 = *(v13 + 16);
  v40 = v13 + 16;
  v38 = a1;
  v39(v17, a1, v12);
  v44 = a7;
  v25 = *(v13 + 80);
  v26 = v12;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v46;
  v29 = v47;
  v27[4] = v50;
  v27[5] = v28;
  v27[6] = v29;
  v27[7] = v24;
  v46 = *(v13 + 32);
  v46(v27 + ((v25 + 64) & ~v25), v17, v12);

  v30 = sub_100074580(0, 0, v22, &unk_100092F18, v27);
  v31 = *(v48 + 16);
  *(v48 + 16) = v30;

  v41(v22, 1, 1, v42);
  v39(v17, v38, v26);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v33 = v49;
  v32[4] = v50;
  v32[5] = v33;
  v32[6] = v44;
  v32[7] = v30;
  v32[8] = v24;
  v46(v32 + ((v25 + 72) & ~v25), v17, v26);

  v34 = sub_1000024AC(0, 0, v22, &unk_100092F28, v32);
  v35 = *(v45 + 16);
  *(v45 + 16) = v34;
}

uint64_t sub_100073FB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v10 = *(a8 - 8);
  v8[5] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v8[6] = v12;
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  v8[7] = v14;
  *v14 = v8;
  v14[1] = sub_100074108;

  return v16(v12);
}

uint64_t sub_100074108()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10007431C;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 16);
    v4 = sub_100074224;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100074224()
{
  v1 = v0[2];
  if ((*(v1 + 112) & 1) == 0)
  {
    *(v1 + 112) = sub_100074420(v0[3], v0[6], v0[4]) & 1;
  }

  return _swift_task_switch(sub_1000742A4, 0, 0);
}

uint64_t sub_1000742A4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[6];

  v2 = v0[1];

  return v2();
}

uint64_t sub_100074338()
{
  v1 = v0[2];
  if ((*(v1 + 112) & 1) == 0)
  {
    v2 = v0[8];
    v3 = v0[3];
    v4 = v0[4];
    *(v1 + 112) = sub_10007450C() & 1;
  }

  return _swift_task_switch(sub_1000743B8, 0, 0);
}

uint64_t sub_1000743B8()
{
  v1 = v0[8];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100074420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1, a2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(returning:)();
  return 1;
}

uint64_t sub_10007450C()
{
  swift_errorRetain();
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(throwing:)();
  return 1;
}

uint64_t sub_100074580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100003480(a3, v28 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1000034F0(v13);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1000034F0(a3);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000034F0(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100074840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = type metadata accessor for ContinuousClock();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();

  return _swift_task_switch(sub_100074910, 0, 0);
}

uint64_t sub_100074910()
{
  v1 = v0[10];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1000749D0;
  v3 = v0[10];
  v5 = v0[2];
  v4 = v0[3];

  return sub_10007547C(v5, v4, 0, 0, 1);
}

uint64_t sub_1000749D0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100074C44;
  }

  else
  {
    v6 = sub_100074B40;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100074B40()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  Task.cancel()();

  return _swift_task_switch(sub_100074BC4, v2, 0);
}

uint64_t sub_100074BC4()
{
  v1 = v0[5];
  if ((*(v1 + 112) & 1) == 0)
  {
    v2 = v0[6];
    v3 = v0[7];
    *(v1 + 112) = sub_100074CA8() & 1;
  }

  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100074C44()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_100074CA8()
{
  sub_10000B6B0();
  swift_allocError();
  *v0 = 0xD000000000000014;
  *(v0 + 8) = 0x8000000100099F90;
  *(v0 + 16) = 2;
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(throwing:)();
  return 1;
}

uint64_t sub_100074D5C(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v3 = *(result + 16);

    Task.cancel()();
  }

  if (*(a2 + 16))
  {

    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    Task.cancel()();
  }

  return result;
}

uint64_t sub_100074E24(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100074EB8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100074F90()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100074FF4()
{
  v1 = *(v0 + 4);
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 6);

  v9 = *(v0 + 7);

  (*(v3 + 8))(&v0[v5], v2);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_1000750F0(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  v6 = *(type metadata accessor for CheckedContinuation() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100002A54;

  return sub_100073FB0(a1, v8, v9, v10, v11, v12, v1 + v7, v5);
}

uint64_t sub_100075234()
{
  v1 = *(v0 + 4);
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 7);

  v9 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v2);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_100075330(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  v5 = *(type metadata accessor for CheckedContinuation() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100011E6C;

  return sub_100074840(a1, v7, v8, v9, v10, v11, v12, v1 + v6);
}