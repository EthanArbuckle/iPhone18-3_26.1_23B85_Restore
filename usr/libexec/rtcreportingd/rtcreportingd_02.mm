uint64_t sub_100025978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000255B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000259A4(uint64_t a1)
{
  v2 = sub_1000265D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000259E0(uint64_t a1)
{
  v2 = sub_1000265D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100025A1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000255D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

BOOL sub_100025A54@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020864(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100025A88@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000208AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_100025AB4@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100020864(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100025AE0(uint64_t a1)
{
  v2 = sub_1000269D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025B1C(uint64_t a1)
{
  v2 = sub_1000269D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100025B58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10002574C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_100025B84()
{
  result = qword_10008E4C0;
  if (!qword_10008E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E4C0);
  }

  return result;
}

uint64_t *sub_100025BD8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100025C3C(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_9;
      }

      result = result;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_7:
      result = sub_100025E94(result, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return result;
    default:
      result = sub_100025DC0();
      if (!v2)
      {
        return result;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return result;
  }
}

uint64_t sub_100025CD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100025D30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100025D78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100025DC0()
{
  type metadata accessor for SHA256();
  sub_100025D30(&qword_10008E4D0, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100025E94(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100025D30(&qword_10008E4D0, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100025F74(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_100025FDC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_10002603C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100025FDC(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1000096BC(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1000260D4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

_BYTE *sub_100026104(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000261DC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100026208(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100026228(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100026258(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100026274(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100026328(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100026448()
{
  result = qword_10008E518;
  if (!qword_10008E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E518);
  }

  return result;
}

unint64_t sub_1000264A0()
{
  result = qword_10008E520;
  if (!qword_10008E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E520);
  }

  return result;
}

uint64_t sub_100026538(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100025D78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100026584()
{
  result = qword_10008E538;
  if (!qword_10008E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E538);
  }

  return result;
}

unint64_t sub_1000265D8()
{
  result = qword_10008E548;
  if (!qword_10008E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E548);
  }

  return result;
}

unint64_t sub_10002662C()
{
  result = qword_10008E550;
  if (!qword_10008E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E550);
  }

  return result;
}

unint64_t sub_100026680()
{
  result = qword_10008E578;
  if (!qword_10008E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E578);
  }

  return result;
}

unint64_t sub_1000266D4()
{
  result = qword_10008E590;
  if (!qword_10008E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E590);
  }

  return result;
}

uint64_t sub_100026728(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10002673C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_100026774(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1000267C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100026820()
{
  result = qword_10008E598;
  if (!qword_10008E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E598);
  }

  return result;
}

unint64_t sub_100026878()
{
  result = qword_10008E5A0;
  if (!qword_10008E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5A0);
  }

  return result;
}

unint64_t sub_1000268D0()
{
  result = qword_10008E5A8;
  if (!qword_10008E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5A8);
  }

  return result;
}

unint64_t sub_100026928()
{
  result = qword_10008E5B0;
  if (!qword_10008E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5B0);
  }

  return result;
}

unint64_t sub_100026980()
{
  result = qword_10008E5B8;
  if (!qword_10008E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5B8);
  }

  return result;
}

unint64_t sub_1000269D4()
{
  result = qword_10008E5C8;
  if (!qword_10008E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5C8);
  }

  return result;
}

_BYTE *sub_100026A28(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100026AD8()
{
  result = qword_10008E5D0;
  if (!qword_10008E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5D0);
  }

  return result;
}

unint64_t sub_100026B30()
{
  result = qword_10008E5D8;
  if (!qword_10008E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5D8);
  }

  return result;
}

unint64_t sub_100026B88()
{
  result = qword_10008E5E0;
  if (!qword_10008E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5E0);
  }

  return result;
}

uint64_t sub_100026BF4(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for CocoaError();
  v5 = sub_100001EDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100001EAC();
  v12 = v11 - v10;
  v13 = type metadata accessor for Logger();
  v14 = sub_100001EDC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100001EAC();
  v21 = v20 - v19;
  Logger.init()();
  (*(v7 + 16))(v12, a1, v4);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v41 = v16;
    v24 = swift_slowAlloc();
    v39 = a2;
    v25 = swift_slowAlloc();
    v42 = v25;
    *v24 = 136446210;
    sub_100004634();
    sub_10002C5B4(v26, v27);
    v28 = Error.localizedDescription.getter();
    v40 = v13;
    v30 = v29;
    v31 = *(v7 + 8);
    v32 = sub_100009AEC();
    v33(v32);
    v34 = sub_1000053A0(v28, v30, &v42);

    *(v24 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, v39, v24, 0xCu);
    sub_100005284(v25);
    sub_100001D1C();
    sub_100001D1C();

    return (*(v41 + 8))(v21, v40);
  }

  else
  {

    v36 = *(v7 + 8);
    v37 = sub_100009AEC();
    v38(v37);
    return (*(v16 + 8))(v21, v13);
  }
}

uint64_t sub_100026E88()
{
  v0 = type metadata accessor for Logger();
  v1 = sub_100001EDC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100001EAC();
  v8 = v7 - v6;
  Logger.init()();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000053A0(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "unable to access transparency log (UNKNOWN): %{public}s", v11, 0xCu);
    sub_100005284(v12);
    sub_100001D1C();
    sub_100001D1C();
  }

  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_100027084()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_1000959A8);
  sub_1000050E4(v0, qword_1000959A8);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100027104@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000228D4(&qword_10008E758, &qword_10006DC38);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = NSHomeDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();
  v15 = a1;

  URL.appendingPathComponent(_:isDirectory:)();
  v41 = *(v7 + 8);
  v42 = v6;
  v41(v13, v6);
  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v17 = NSURLIsDirectoryKey;
  sub_100019E64(inited);
  v18 = v40;
  URL.resourceValues(forKeys:)();
  if (v18)
  {

    v19 = type metadata accessor for URLResourceValues();
    sub_1000026BC(v5, 1, 1, v19);
    sub_1000026E4(v5, &qword_10008E758, &qword_10006DC38);
  }

  else
  {

    v20 = type metadata accessor for URLResourceValues();
    sub_1000026BC(v5, 0, 1, v20);
    v21 = URLResourceValues.isDirectory.getter();
    result = (*(*(v20 - 8) + 8))(v5, v20);
    if (v21 != 2)
    {
      v23 = v42;
      if (v21)
      {
        return result;
      }

      goto LABEL_5;
    }
  }

  v23 = v42;
LABEL_5:
  if (qword_10008DD28 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000050E4(v24, qword_1000959A8);
  (*(v7 + 16))(v11, a1, v23);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = a1;
    v29 = v28;
    v43 = v28;
    *v27 = 136446210;
    v30 = URL.path.getter();
    v32 = v31;
    v41(v11, v42);
    v33 = sub_1000053A0(v30, v32, &v43);

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "creating log directory at %{public}s", v27, 0xCu);
    sub_100005284(v29);
    v15 = v40;

    v23 = v42;
  }

  else
  {

    v41(v11, v23);
  }

  v34 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v35);
  v37 = v36;
  v43 = 0;
  v38 = [v34 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v43];

  if (v38)
  {
    return v43;
  }

  v39 = v43;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return (v41)(v15, v23);
}

void sub_100027634(uint64_t a1@<X8>)
{
  v143 = a1;
  v1 = sub_1000228D4(&unk_100090260, &qword_10006DC48);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v139 = &v131 - v3;
  v156 = type metadata accessor for URLResourceValues();
  v138 = *(v156 - 1);
  v4 = *(v138 + 64);
  __chkstk_darwin(v156);
  v142 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Date();
  v140 = *(v141 - 8);
  v6 = *(v140 + 64);
  v7 = __chkstk_darwin(v141);
  v135 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v136 = &v131 - v9;
  v10 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v144 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v145 = &v131 - v14;
  v149 = type metadata accessor for URL();
  v15 = *(v149 - 8);
  v16 = *(v15 + 8);
  v17 = __chkstk_darwin(v149);
  v134 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v131 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v131 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v131 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = (&v131 - v29);
  __chkstk_darwin(v28);
  v32 = &v131 - v31;
  v33 = objc_opt_self();
  v34 = [v33 defaultManager];
  v35 = v155;
  sub_100027104(v32);
  v147 = v35;
  if (v35)
  {

    return;
  }

  *&v137 = v24;
  v150 = v27;
  v148 = v33;
  v132 = v21;
  URL._bridgeToObjectiveC()(&v157);
  v37 = v36;
  v38 = v32;
  v39 = v149;
  v154 = *(v15 + 1);
  v155 = (v15 + 8);
  v154(v38, v149);
  v158[0] = 0;
  v40 = sub_10002C218(v37, _swiftEmptyArrayStorage, 0, v158, v34);

  v41 = v158[0];
  if (!v40)
  {
    v71 = v158[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v41;

  v44 = 0;
  v152 = *(v42 + 16);
  v153 = (v15 + 16);
  v151 = "yyyy-MM-dd-HH-mm-ss";
  v133 = (v15 + 32);
  v146 = _swiftEmptyArrayStorage;
  while (1)
  {
    v45 = v156;
    if (v152 == v44)
    {
      break;
    }

    if (v44 >= *(v42 + 16))
    {
      __break(1u);
LABEL_50:

      (v156)(v136, v24);
      v119 = v132;
LABEL_51:
      v128 = v149;
      v154(v119, v149);
      v129 = v42;
      goto LABEL_52;
    }

    v46 = (v15[80] + 32) & ~v15[80];
    v24 = *(v15 + 9);
    (*(v15 + 2))(v30, v42 + v46 + v24 * v44, v39);
    URL.lastPathComponent.getter();
    v47 = sub_10001F618();

    if (v47)
    {
      v48 = v137;
      v131 = *v133;
      v131(v137, v30, v39);
      v49 = v146;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158[0] = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = v49[2];
        sub_100060BFC();
        v49 = v158[0];
      }

      v52 = v49[2];
      v53 = (v52 + 1);
      if (v52 >= v49[3] >> 1)
      {
        v146 = (v52 + 1);
        sub_100060BFC();
        v53 = v146;
        v49 = v158[0];
      }

      ++v44;
      v49[2] = v53;
      v146 = v49;
      v54 = v49 + v46 + v52 * v24;
      v39 = v149;
      v131(v54, v48, v149);
    }

    else
    {
      v154(v30, v39);
      ++v44;
    }
  }

  v55 = v146;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10003A808(v55);
    v55 = v130;
  }

  v56 = v147;
  p_type = &stru_10008CFF0.type;
  v58 = v150;
  v59 = v55[2];
  v158[0] = v55 + ((v15[80] + 32) & ~v15[80]);
  v158[1] = v59;
  sub_10002AA08(v158);
  v60 = v56;

  v61 = sub_100028778(1, v55);
  v66 = v65 >> 1;
  v146 = v55;
  v131 = v61;
  if (v65 >> 1 == v63)
  {
    v15 = v148;
  }

  else
  {
    v72 = v66 - v63;
    if (v66 <= v63)
    {
      __break(1u);
LABEL_54:
      swift_once();
      goto LABEL_41;
    }

    v73 = *(v15 + 9);
    v151 = *(v15 + 2);
    v152 = v73;
    v74 = v62 + v63 * v73;
    *&v64 = 136446210;
    v137 = v64;
    v15 = v148;
    do
    {
      (v151)(v58, v74, v39);
      v75 = [v15 p_type[335]];
      URL._bridgeToObjectiveC()(v76);
      v78 = v77;
      v154(v58, v39);
      v158[0] = 0;
      v79 = [v75 removeItemAtURL:v78 error:v158];

      if (v79)
      {
        v80 = v158[0];
      }

      else
      {
        v81 = v158[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_10008DD28 != -1)
        {
          swift_once();
        }

        v60 = 0;
        v82 = type metadata accessor for Logger();
        sub_1000050E4(v82, qword_1000959A8);
        swift_errorRetain();
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v158[0] = v147;
          *v85 = v137;
          swift_getErrorValue();
          v86 = Error.localizedDescription.getter();
          v88 = sub_1000053A0(v86, v87, v158);

          *(v85 + 4) = v88;
          v60 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "failed to erase old log: %{public}s", v85, 0xCu);
          sub_100005284(v147);

          v39 = v149;
        }

        else
        {
        }

        v15 = v148;
      }

      v45 = v156;
      v74 += v152;
      --v72;
      p_type = (&stru_10008CFF0 + 16);
      v58 = v150;
    }

    while (v72);
  }

  swift_unknownObjectRelease();
  v42 = v145;
  sub_100033A0C(v146, v145);

  v67 = v144;
  sub_10002C404(v42, v144);
  if (sub_100002694(v67, 1, v39) == 1)
  {
    v68 = &qword_10008E700;
    v69 = &unk_10006D360;
LABEL_20:
    sub_1000026E4(v67, v68, v69);
    v70 = v143;
LABEL_21:
    sub_10002C474(v42, v70);
    return;
  }

  v58 = v132;
  (*v133)(v132, v67, v39);
  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLCreationDateKey;
  v90 = NSURLCreationDateKey;
  sub_100019E64(inited);
  v91 = v142;
  URL.resourceValues(forKeys:)();
  if (v60)
  {

    v154(v58, v39);
    sub_1000026E4(v42, &qword_10008E700, &unk_10006D360);
    return;
  }

  v67 = v139;
  URLResourceValues.creationDate.getter();
  (*(v138 + 8))(v91, v45);
  v92 = v141;
  if (sub_100002694(v67, 1, v141) == 1)
  {
    v154(v58, v39);
    v68 = &unk_100090260;
    v69 = &qword_10006DC48;
    goto LABEL_20;
  }

  v93 = v140;
  v94 = v136;
  (*(v140 + 32))(v136, v67, v92);
  v95 = v135;
  static Date.now.getter();
  Date.distance(to:)();
  v97 = v96;
  v100 = *(v93 + 8);
  v98 = v93 + 8;
  v99 = v100;
  v100(v95, v92);
  v70 = v143;
  if (v97 <= 604800.0)
  {
    v99(v94, v92);
    v154(v58, v149);
    goto LABEL_21;
  }

  v156 = v99;
  v140 = v98;
  if (qword_10008DD28 != -1)
  {
    goto LABEL_54;
  }

LABEL_41:
  v101 = type metadata accessor for Logger();
  v102 = sub_1000050E4(v101, qword_1000959A8);
  v103 = v134;
  v104 = v149;
  (*v153)(v134, v58, v149);
  v153 = v102;
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v158[0] = v108;
    *v107 = 136446210;
    v109 = URL.lastPathComponent.getter();
    v111 = v110;
    v154(v103, v104);
    v112 = sub_1000053A0(v109, v111, v158);
    v15 = v148;

    *(v107 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v105, v106, "aging out log file: %{public}s", v107, 0xCu);
    sub_100005284(v108);
    v42 = v145;
  }

  else
  {

    v154(v103, v104);
  }

  v24 = v141;
  v113 = [v15 defaultManager];
  v114 = v132;
  URL._bridgeToObjectiveC()(&v157);
  v116 = v115;
  v158[0] = 0;
  v117 = [v113 removeItemAtURL:v115 error:v158];

  if (v117)
  {
    v118 = v158[0];
    (v156)(v136, v24);
    v119 = v114;
    goto LABEL_51;
  }

  v120 = v158[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v121 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v30, v121))
  {
    goto LABEL_50;
  }

  v122 = v24;
  v123 = swift_slowAlloc();
  v124 = swift_slowAlloc();
  v158[0] = v124;
  *v123 = 136446210;
  swift_getErrorValue();
  v125 = Error.localizedDescription.getter();
  v127 = sub_1000053A0(v125, v126, v158);

  *(v123 + 4) = v127;
  _os_log_impl(&_mh_execute_header, v30, v121, "failed to erase old log: %{public}s", v123, 0xCu);
  sub_100005284(v124);

  (v156)(v136, v122);
  v128 = v149;
  v154(v132, v149);
  v129 = v145;
LABEL_52:
  sub_1000026E4(v129, &qword_10008E700, &unk_10006D360);
  sub_1000026BC(v143, 1, 1, v128);
}

uint64_t sub_1000286E0()
{
  v0 = URL.lastPathComponent.getter();
  v2 = v1;
  if (v0 == URL.lastPathComponent.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100028778(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10002C3B8(0, (v3 - result) & ~((v3 - result) >> 63), v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_10002C310(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_100028810(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for URL();
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(NSDateFormatter) init];
  sub_10002C2AC(0xD000000000000013, 0x8000000100071860, v11);
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v6);
  v13 = [v11 stringFromDate:isa];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_100027104(v5);
  if (v1)
  {
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v21 = 0xD000000000000018;
    v22 = 0x8000000100071880;
    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 1954051118;
    v18._object = 0xE400000000000000;
    String.append(_:)(v18);
    URL.appendingPathComponent(_:)();

    (*(v20 + 8))(v5, v2);
    Data.write(to:options:)();
  }
}

uint64_t sub_100028B08()
{
  v1 = *(v0 + 16);
  swift_defaultActor_initialize();
  *(v1 + 112) = 2;
  *(v1 + 128) = 0;
  *(v1 + 120) = [objc_opt_self() fileHandleWithNullDevice];

  return _swift_task_switch(sub_100028BA4, v1, 0);
}

uint64_t sub_100028BA4()
{
  v1 = *(v0 + 16);
  sub_100028C5C();
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return v2(v3);
}

void sub_100028C5C()
{
  v1 = type metadata accessor for CocoaError.Code();
  v2 = sub_100001EDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v2);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = type metadata accessor for CocoaError();
  v10 = sub_100001EDC(v48);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v46 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v47 = &v39 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v39 - v20;
  __chkstk_darwin(v19);
  v23 = &v39 - v22;
  sub_1000291C8();
  if (v0)
  {
    v51 = v0;
    swift_errorRetain();
    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    if (swift_dynamicCast())
    {
      v45 = v12;
      v42 = *(v12 + 16);
      v43 = v12 + 16;
      v42(v21, v23, v48);
      sub_100004634();
      v44 = sub_10002C5B4(v24, v25);
      _BridgedStoredNSError.code.getter();
      static CocoaError.fileWriteNoPermission.getter();
      v26 = sub_10002C5B4(&unk_10008E6F0, &type metadata accessor for CocoaError.Code);
      sub_1000028A8();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_100007A38();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v27 = *(v4 + 8);
      v27(v9, v1);
      v28 = sub_1000043D8();
      (v27)(v28);
      if (v50 == v49)
      {

        sub_100026BF4(v21, "unable to access transparency log (PERM): %{public}s");
        CocoaError._nsError.getter();
        sub_100001D34();
        v29 = *(v45 + 8);
        sub_10000902C();
        v29();
        (v29)(v23, v26);
LABEL_9:

        return;
      }

      v30 = *(v45 + 8);
      v39 = v27;
      v40 = v30;
      sub_10000902C();
      v41 = v31;
      v32();
      v33 = v47;
      v42(v47, v23, v26);
      _BridgedStoredNSError.code.getter();
      static CocoaError.fileWriteOutOfSpace.getter();
      sub_1000028A8();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_100007A38();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v34 = v39;
      (v39)(v9, v1);
      v35 = sub_1000043D8();
      v34(v35);
      if (v50 == v49)
      {

        sub_100026BF4(v33, "unable to write transparency log (OOS): %{public}s");
        CocoaError._nsError.getter();
        sub_100001D34();
        sub_10000902C();
        v36 = v40;
        v40();
        (v36)(v23, v26);
        goto LABEL_9;
      }

      v47 = v26;
      sub_10000902C();
      v40();
      v37 = v46;
      (*(v45 + 32))(v46, v23, v26);
      _BridgedStoredNSError.code.getter();
      static CocoaError.fileWriteUnknown.getter();
      sub_1000028A8();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_100007A38();
      dispatch thunk of RawRepresentable.rawValue.getter();
      (v34)(v9, v1);
      v38 = sub_1000043D8();
      v34(v38);
      if (v50 == v49)
      {

        sub_100026BF4(v37, "unable to access storebag cache (WRITE-UNKNOWN): %{public}s");
        CocoaError._nsError.getter();
        sub_100001D34();
        (v40)(v37, v48);
        goto LABEL_9;
      }

      (v40)(v37, v48);
    }

    sub_100026E88();
    swift_willThrow();
  }
}

void sub_1000291C8()
{
  v1 = v0;
  v113 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v106 = *(v2 - 8);
  v107 = v2;
  v3 = *(v106 + 64);
  __chkstk_darwin(v2);
  v104 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DispatchQoS();
  v103 = *(v105 - 8);
  v5 = *(v103 + 64);
  __chkstk_darwin(v105);
  v102 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_source.FileSystemEvent();
  v100 = *(v7 - 8);
  v101 = v7;
  v8 = *(v100 + 64);
  __chkstk_darwin(v7);
  v99 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v95 - v12;
  v14 = type metadata accessor for URL();
  v109 = *(v14 - 8);
  v110 = v14;
  v15 = *(v109 + 64);
  v16 = __chkstk_darwin(v14);
  v98 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v95 - v19;
  v21 = __chkstk_darwin(v18);
  v108 = (&v95 - v22);
  v23 = __chkstk_darwin(v21);
  v97 = (&v95 - v24);
  v25 = __chkstk_darwin(v23);
  v27 = &v95 - v26;
  __chkstk_darwin(v25);
  v29 = &v95 - v28;
  v30 = *(v0 + 120);
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 fileHandleWithNullDevice];
  sub_10002A90C(0, &qword_10008E708, NSFileHandle_ptr);
  v34 = static NSObject.== infix(_:_:)();

  if ((v34 & 1) == 0)
  {
    if (qword_10008DD28 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000050E4(v35, qword_1000959A8);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "witnessed log vanish - refeshing", v38, 2u);
    }
  }

  if (*(v1 + 128))
  {
    v39 = *(v1 + 128);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v40 = *(v1 + 128);
    *(v1 + 128) = 0;
    swift_unknownObjectRelease();
  }

  v41 = v111;
  sub_100027634(v13);
  if (!v41)
  {
    v111 = v1;
    v96 = v29;
    v42 = v110;
    if (sub_100002694(v13, 1, v110) == 1)
    {
      sub_1000026E4(v13, &qword_10008E700, &unk_10006D360);
      v43 = v108;
      sub_100028810(v108);
      v44 = *(v109 + 16);
      v44(v20, v43, v110);
      v45 = sub_10002F268(v20);
      v54 = v44;
      v50 = v111;
      v55 = *(v111 + 120);
      *(v111 + 120) = v45;

      if (qword_10008DD28 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_1000050E4(v56, qword_1000959A8);
      v57 = v98;
      v58 = v108;
      v59 = v110;
      v54(v98, v108, v110);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        aBlock[0] = v97;
        *v62 = 136446210;
        v63 = URL.path.getter();
        v64 = v57;
        v66 = v65;
        v113 = *(v109 + 8);
        v113(v64, v59);
        v67 = sub_1000053A0(v63, v66, aBlock);

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "created new log file at %{public}s", v62, 0xCu);
        sub_100005284(v97);

        v113(v108, v59);
      }

      else
      {

        v80 = *(v109 + 8);
        v80(v57, v59);
        v80(v58, v59);
      }
    }

    else
    {
      v46 = v109;
      v47 = v96;
      (*(v109 + 32))(v96, v13, v42);
      v48 = *(v46 + 16);
      v48(v27, v47, v42);
      v49 = sub_10002F268(v27);
      v50 = v111;
      v51 = *(v111 + 120);
      *(v111 + 120) = v49;
      v52 = v49;

      NSFileHandle.seekToEnd()();
      if (v53)
      {
        (*(v109 + 8))(v96, v110);

        return;
      }

      v113 = 0;

      v68 = v96;
      if (qword_10008DD28 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_1000050E4(v69, qword_1000959A8);
      v70 = v97;
      v71 = v110;
      v48(v97, v68, v110);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        aBlock[0] = v108;
        *v74 = 136446210;
        v75 = URL.path.getter();
        v77 = v76;
        v78 = *(v109 + 8);
        v78(v70, v71);
        v79 = sub_1000053A0(v75, v77, aBlock);

        *(v74 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v72, v73, "opened log file at %{public}s", v74, 0xCu);
        sub_100005284(v108);

        v78(v96, v71);
      }

      else
      {

        v81 = *(v109 + 8);
        v81(v70, v71);
        v81(v68, v71);
      }
    }

    sub_10002A90C(0, &qword_10008E710, OS_dispatch_source_ptr);
    [*(v50 + 120) fileDescriptor];
    sub_1000228D4(&qword_10008E718, &qword_10006DC18);
    v82 = v100;
    v83 = *(v100 + 72);
    v84 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_10006D1D0;
    static OS_dispatch_source.FileSystemEvent.rename.getter();
    static OS_dispatch_source.FileSystemEvent.delete.getter();
    aBlock[0] = v85;
    sub_10002C5B4(&qword_10008E720, &type metadata accessor for OS_dispatch_source.FileSystemEvent);
    sub_1000228D4(&qword_10008E728, &qword_10006DC20);
    sub_10000F978(&qword_10008E730, &qword_10008E728, &qword_10006DC20);
    v86 = v99;
    v87 = v101;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v88 = static OS_dispatch_source.makeFileSystemObjectSource(fileDescriptor:eventMask:queue:)();
    (*(v82 + 8))(v86, v87);
    v89 = *(v50 + 128);
    *(v50 + 128) = v88;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    v90 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10002A94C;
    aBlock[5] = v90;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000FCE0;
    aBlock[3] = &unk_100086BA8;
    v91 = _Block_copy(aBlock);

    v92 = v102;
    static DispatchQoS.unspecified.getter();
    v93 = v104;
    sub_100029FF0();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v91);
    swift_unknownObjectRelease();
    (*(v106 + 8))(v93, v107);
    (*(v103 + 8))(v92, v105);

    if (*(v50 + 128))
    {
      v94 = *(v50 + 128);
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100029E58()
{
  v0 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    sub_1000026BC(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_10005A254(0, 0, v3, &unk_10006DC30, v7);
  }

  return result;
}

uint64_t sub_100029F74()
{
  v1 = *(v0 + 16);
  sub_100028C5C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100029FF0()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10002C5B4(&qword_10008E738, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000228D4(&qword_10008E740, &qword_10006E180);
  sub_10000F978(&qword_10008E748, &qword_10008E740, &qword_10006E180);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10002A0C8(uint64_t a1, void *a2)
{
  v47._countAndFlagsBits = a1;
  v47._object = a2;
  v2 = type metadata accessor for String.Encoding();
  v3 = sub_100001EDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100001EAC();
  v10 = v9 - v8;
  v11 = type metadata accessor for Date();
  v12 = sub_100001EDC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100001EAC();
  v19 = v18 - v17;
  _StringGuts.grow(_:)(27);

  v50 = 40;
  v51 = 0xE100000000000000;
  static Date.now.getter();
  v20 = Date.description.getter();
  v22 = v21;
  v23 = v11;
  v24 = v2;
  (*(v14 + 8))(v19, v23);
  v25._countAndFlagsBits = v20;
  v25._object = v22;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 5972009;
  v26._object = 0xE300000000000000;
  String.append(_:)(v26);
  String.append(_:)(v47);
  v27._object = 0x8000000100071840;
  v27._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v27);
  static String.Encoding.utf8.getter();
  v28 = String.data(using:allowLossyConversion:)();
  v30 = v29;
  v31 = *(v5 + 8);
  v31(v10, v24);
  if (v30 >> 60 == 15)
  {

    sub_10002A810();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v50 = v28;
    v51 = v30;
    Data.append(_:)();
    static String.Encoding.utf8.getter();
    v33 = String.data(using:allowLossyConversion:)();
    v35 = v34;
    result = (v31)(v10, v24);
    if (v35 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      Data.append(_:)();
      sub_100022E50(v33, v35);
      v36 = *(v46 + 120);
      v48 = v50;
      v49 = v51;
      v37 = v36;
      v38 = sub_100009AEC();
      sub_100025CD8(v38, v39);
      sub_10002A8B8();
      NSFileHandle.write<A>(contentsOf:)();
      if (v45)
      {

        sub_100005954(v48, v49);
      }

      else
      {
        sub_100005954(v48, v49);

        v40 = *(v46 + 120);
        v48 = 0;
        if ([v40 synchronizeAndReturnError:&v48])
        {
          v41 = v48;
        }

        else
        {
          v42 = v48;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      v43 = sub_100009AEC();
      return sub_100005954(v43, v44);
    }
  }

  return result;
}

uint64_t sub_10002A464()
{
  v1 = *(v0 + 128);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10002A494()
{
  sub_10002A464();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002A4E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_10002A558()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10002A5B0(void *a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008E770, &qword_10006DDC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100008DE4(a1, a1[3]);
  sub_10002C560();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_1000228D4(&qword_10008E780, &unk_10006FFD0);
  sub_10000847C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int sub_10002A70C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10002A750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002A4E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10002A77C(uint64_t a1)
{
  v2 = sub_10002C560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002A7B8(uint64_t a1)
{
  v2 = sub_10002C560();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10002A810()
{
  result = qword_10008E6A8;
  if (!qword_10008E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E6A8);
  }

  return result;
}

unint64_t sub_10002A864()
{
  result = qword_10008E6D0;
  if (!qword_10008E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E6D0);
  }

  return result;
}

unint64_t sub_10002A8B8()
{
  result = qword_10008E6D8;
  if (!qword_10008E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E6D8);
  }

  return result;
}

uint64_t sub_10002A90C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10002A954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001BF00;

  return sub_100029F54(a1, v4, v5, v6);
}

Swift::Int sub_10002AA08(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for URL();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for URL() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10002AE58(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10002AB38(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002AB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  result = __chkstk_darwin(v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = URL.lastPathComponent.getter();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == URL.lastPathComponent.getter() && v32 == v33)
        {
          break;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10002AE58(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v165 = &v143 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v143 - v15;
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v161 = &v143 - v19;
  v20 = __chkstk_darwin(v18);
  v160 = &v143 - v21;
  v22 = __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v27 = &v143 - v23;
  v158 = v24;
  v159 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v25;
  v143 = a4;
  v29 = 0;
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v169 = (v24 + 8);
  v30 = _swiftEmptyArrayStorage;
  v162 = v8;
  v154 = v16;
  v144 = v26;
  v146 = &v143 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v149 = v29;
    if (v29 + 1 < v28)
    {
      v164 = v28;
      v145 = v30;
      v33 = v27;
      v34 = *v159;
      v35 = *(v24 + 72);
      v36 = v26;
      v157 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v146;
      v156 = v39;
      v39(v36, v40, v8);
      LODWORD(v163) = sub_1000286E0();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v36, v8);
        (v142)(v41, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v30 = v169;
      v42 = *v169;
      (*v169)(v36, v8);
      v155 = v42;
      (v42)(v41, v8);
      v43 = v149 + 2;
      v44 = &v34[v35 * (v149 + 2)];
      v32 = v157;
      v45 = v35;
      v167 = v35;
      v46 = v164;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v162;
        v5 = v156;
        (v156)(v160, v44, v162);
        v5(v161, v38, v49);
        v50 = URL.lastPathComponent.getter();
        v52 = v51;
        if (v50 == URL.lastPathComponent.getter() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v56 = v162;
        v30 = v155;
        (v155)(v161, v162);
        (v30)(v160, v56);
        v45 = v167;
        v44 += v167;
        v38 += v167;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v164;
        if ((v163 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v163)
      {
        v31 = v149;
        if (v32 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v32)
        {
          v24 = v158;
          v30 = v145;
          v8 = v162;
          v16 = v154;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v149;
        v61 = v149 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v64 = v162;
            v164 = *v168;
            v164(v152, &v63[v61], v162);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v63[v58], v152, v64);
            v5 = v148;
            v45 = v167;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v148;
      }

      v24 = v158;
      v30 = v145;
      v8 = v162;
      v16 = v154;
      v31 = v149;
    }

LABEL_39:
    v66 = v159[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v30 + 2);
      sub_100022F2C();
      v30 = v133;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v157 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_100022F2C();
      v30 = v134;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v157;
    *v92 = v149;
    *(v92 + 1) = v93;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_10002BA1C(&(*v159)[*(v158 + 72) * *v127], &(*v159)[*(v158 + 72) * *v128], &(*v159)[*(v158 + 72) * v129], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        memmove(&v91[16 * v94], v128 + 16, 16 * (v130 - 1 - v94));
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v154;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v158;
    v28 = v159[1];
    v29 = v157;
    v8 = v162;
    v26 = v144;
    v27 = v146;
    if (v157 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v143);
  if (__OFADD__(v31, v143))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_10002C024(v30);
LABEL_116:
    v135 = v30 + 16;
    v136 = *(v30 + 2);
    while (v136 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v137 = v30;
      v30 += 16 * v136;
      v138 = *v30;
      v139 = &v135[2 * v136];
      v140 = v139[1];
      sub_10002BA1C(&(*v159)[*(v158 + 72) * *v30], &(*v159)[*(v158 + 72) * *v139], &(*v159)[*(v158 + 72) * v140], v170);
      if (v5)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v30 = v138;
      *(v30 + 1) = v140;
      v141 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      memmove(v139, v139 + 2, 16 * v141);
      *v135 = v136;
      v30 = v137;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v145 = v30;
  v148 = v5;
  v68 = *v159;
  v69 = *(v24 + 72);
  v167 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v163 = -v69;
  v164 = v68;
  v71 = (v31 - v32);
  v150 = v69;
  v151 = v67;
  v72 = &v68[v32 * v69];
  v73 = v166;
LABEL_48:
  v156 = v70;
  v157 = v32;
  v153 = v72;
  v155 = v71;
  while (1)
  {
    v74 = v167;
    (v167)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = URL.lastPathComponent.getter();
    v77 = v8;
    v79 = v78;
    if (v76 == URL.lastPathComponent.getter() && v79 == v80)
    {

      v87 = *v169;
      (*v169)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v84 = *v169;
    (*v169)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v166;
LABEL_60:
      v32 = v157 + 1;
      v70 = &v156[v150];
      v71 = v155 - 1;
      v72 = &v153[v150];
      if (v157 + 1 == v151)
      {
        v32 = v151;
        v5 = v148;
        v30 = v145;
        v31 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v85 = *v168;
    v86 = v165;
    (*v168)(v165, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v163;
    v72 += v163;
    v65 = __CFADD__(v71++, 1);
    v73 = v166;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_10002BA1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v71 = &v65 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v65 - v15;
  result = __chkstk_darwin(v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_10005FE5C(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = URL.lastPathComponent.getter();
      v37 = v36;
      if (v35 == URL.lastPathComponent.getter() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_10005FE5C(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = URL.lastPathComponent.getter();
    v55 = v54;
    if (v53 == URL.lastPathComponent.getter() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_10002C038(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_10002C038(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for URL();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10002C118(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000228D4(&unk_10008E240, &unk_10006CCA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

id sub_10002C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:isa options:a3 error:a4];

  return v10;
}

void sub_10002C2AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setDateFormat:v4];
}

unint64_t sub_10002C310(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(type metadata accessor for URL() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10002C3B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10002C404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002C50C()
{
  result = qword_10008E768;
  if (!qword_10008E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E768);
  }

  return result;
}

unint64_t sub_10002C560()
{
  result = qword_10008E778;
  if (!qword_10008E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E778);
  }

  return result;
}

uint64_t sub_10002C5B4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_10002C5FC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10002C6AC()
{
  result = qword_10008E798;
  if (!qword_10008E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E798);
  }

  return result;
}

unint64_t sub_10002C704()
{
  result = qword_10008E7A0;
  if (!qword_10008E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E7A0);
  }

  return result;
}

unint64_t sub_10002C75C()
{
  result = qword_10008E7A8;
  if (!qword_10008E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E7A8);
  }

  return result;
}

uint64_t sub_10002C7C0()
{
  v5 = *v0;
  v6 = v5;
  sub_100005CC0(&v6, &v4);
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(v0[1]);
  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(v0[2]);
  return v5._countAndFlagsBits;
}

uint64_t sub_10002C83C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v26 = _swiftEmptyArrayStorage;
    v2 = &v26;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = sub_10002E848(a1);
    v5 = a1;
    v7 = v6;
    v8 = 0;
    v9 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(v5 + 32))
      {
        v10 = v4 >> 6;
        if ((*(v9 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (*(v5 + 36) != v7)
        {
          goto LABEL_26;
        }

        v24 = v8;
        v11 = v9;
        v25 = v3;
        xpc_int64_create(*(*(v5 + 48) + 8 * v4));
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = v26[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if (v25)
        {
          __break(1u);
          return result;
        }

        v2 = 1 << *(v5 + 32);
        if (v4 >= v2)
        {
          goto LABEL_27;
        }

        v9 = v11;
        v14 = *(v11 + 8 * v10);
        if ((v14 & (1 << v4)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v5 + 36) != v7)
        {
          goto LABEL_29;
        }

        v15 = v14 & (-2 << (v4 & 0x3F));
        if (v15)
        {
          v2 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v10 << 6;
          v17 = v10 + 1;
          v18 = (a1 + 64 + 8 * v10);
          while (v17 < (v2 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_10002E888(v4, v7, 0);
              v5 = a1;
              v2 = __clz(__rbit64(v19)) + v16;
              goto LABEL_17;
            }
          }

          sub_10002E888(v4, v7, 0);
          v5 = a1;
        }

LABEL_17:
        v8 = v24 + 1;
        if (v24 + 1 == v1)
        {
          goto LABEL_20;
        }

        v3 = 0;
        v7 = *(v5 + 36);
        v4 = v2;
        if (v2 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_20:
    v2 = v26;
  }

  if (v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
LABEL_30:
    v21 = sub_10002E4E8(v2);
  }

  else
  {
    v21 = xpc_array_create(((v2 & 0xFFFFFFFFFFFFFF8) + 32), *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  }

  v22 = v21;

  return v22;
}

uint64_t sub_10002CA98()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008E7B0);
  sub_1000050E4(v0, qword_10008E7B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002CB0C()
{
  sub_100004680();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = *v0;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64);
  v1[9] = sub_100003D60();
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[10] = v7;
  v8 = *(v7 - 8);
  v1[11] = v8;
  v9 = *(v8 + 64);
  v1[12] = sub_100003D60();
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1[13] = v10;
  sub_100001D80(v10);
  v12 = *(v11 + 64);
  v1[14] = sub_100003D60();
  v13 = type metadata accessor for DispatchQoS();
  sub_100001D80(v13);
  v15 = *(v14 + 64);
  v1[15] = sub_100003D60();

  return _swift_task_switch(sub_10002CCB0, 0, 0);
}

uint64_t sub_10002CCB0()
{
  v26 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  swift_defaultActor_initialize();
  v2[14] = 0;
  type metadata accessor for Session(0);
  v4 = Dictionary.init(dictionaryLiteral:)();
  v2[18] = v3;
  v2[19] = v4;

  *(v0 + 128) = XPCIncomingConnection.auditToken.getter();
  *(v0 + 136) = v5;
  *(v0 + 144) = v6;
  *(v0 + 152) = v7;
  if (swift_stdlib_isStackAllocationSafe())
  {
    sub_10002D198(v0 + 160, (v0 + 128), v0 + 4256, &v24);
  }

  else
  {
    v8 = swift_slowAlloc();
    sub_10002D198(v8, (v0 + 128), v8 + 4096, &v24);
    sub_100004664();
  }

  v9 = v25;
  v19 = *(v0 + 120);
  v10 = *(v0 + 104);
  v20 = *(v0 + 112);
  v21 = *(v0 + 96);
  v11 = *(v0 + 88);
  v22 = *(v0 + 80);
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v23 = *(v0 + 56);
  v14 = *(v0 + 40);
  v14[16] = v24;
  v14[17] = v9;
  sub_10002E894();
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v24 = 0xD000000000000018;
  v25 = 0x8000000100071970;
  v15 = v14[16];
  v16 = v14[17];

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  static DispatchQoS.default.getter();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100015ECC(&qword_10008E8B0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000228D4(&qword_10008E8B8, &qword_10006E190);
  sub_10002E8D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v21, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v22);
  (*(v13 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v23);
  static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v12, v23);
  v14[15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  return _swift_task_switch(sub_10002D078, v14, 0);
}

uint64_t sub_10002D078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  v14 = v12[14];
  v13 = v12[15];
  v15 = v12[12];
  v16 = v12[9];
  v17 = v12[4];
  v18 = v12[5];
  v19 = v12[3];
  v20 = *(v18 + 120);
  type metadata accessor for XPCConnection();
  swift_allocObject();
  v21 = v20;

  v22 = XPCConnection.init(conn:targetQ:delegate:)(v17, v21, v18, &off_100086DC8);

  v23 = *(v18 + 112);
  *(v18 + 112) = v22;

  v24 = v12[1];
  v25 = v12[5];
  sub_100008E44();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_10002D198@<X0>(uint64_t buffer@<X0>, audit_token_t *audittoken@<X2>, uint64_t a3@<X1>, uint64_t *a4@<X8>)
{
  *buffer = 0;
  if (!buffer)
  {
    goto LABEL_9;
  }

  if (a3 - buffer > 0xFFFFFFFFLL)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return buffer;
  }

  buffer = proc_pidpath_audittoken(audittoken, buffer, a3 - buffer);
  if (buffer < 1)
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = String.init(cString:)();
    v7 = v6;
    v12[0] = 47;
    v12[1] = 0xE100000000000000;
    __chkstk_darwin(v5);
    v11[2] = v12;
    buffer = sub_10002E744(sub_100014E24, v11, v5, v7);
    if ((v8 & 1) == 0)
    {
      v9 = String.index(after:)();
      sub_10002D2D8(v9, v5, v7);
      v5 = static String._fromSubstring(_:)();
      v7 = v10;
    }
  }

  *a4 = v5;
  a4[1] = v7;
  return buffer;
}

unint64_t sub_10002D2D8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = String.subscript.getter();

    return v4;
  }

  return result;
}

BOOL sub_10002D37C()
{
  sub_10000464C();
  sub_100015ECC(v0, v1, v2);
  v3 = Identifiable<>.id.getter();
  return v3 == Identifiable<>.id.getter();
}

void sub_10002D404()
{
  v1 = *v0;
  sub_10000464C();
  sub_100015ECC(v2, v3, v4);
  v5 = Identifiable<>.id.getter();
  Hasher._combine(_:)(v5);
}

uint64_t sub_10002D48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v9);
  v11 = *(v10 + 64);
  sub_100003EC8();
  __chkstk_darwin(v12);
  v14 = v30 - v13;
  sub_10002E6E0(a3, v30 - v13, &qword_10008E750, &qword_10006F860);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_10000B7A4();
  v18 = sub_100002694(v16, v17, v15);

  if (v18 == 1)
  {
    sub_1000026E4(v14, &qword_10008E750, &qword_10006F860);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v20 = *(a5 + 16);
  v19 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = String.utf8CString.getter() + 32;
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = a5;

      if (v23 | v21)
      {
        v31[0] = 0;
        v31[1] = 0;
        v26 = v31;
        v31[2] = v21;
        v31[3] = v23;
      }

      else
      {
        v26 = 0;
      }

      v30[1] = 7;
      v30[2] = v26;
      v30[3] = v24;
      v28 = swift_task_create();

      sub_1000026E4(a3, &qword_10008E750, &qword_10006F860);

      return v28;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000026E4(a3, &qword_10008E750, &qword_10006F860);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  if (v23 | v21)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v21;
    v31[7] = v23;
  }

  return swift_task_create();
}

void sub_10002D764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v24;
  a22 = v25;
  sub_100003EBC();
  a20 = v22;
  if (qword_10008DD30 != -1)
  {
    sub_1000097DC();
  }

  v26 = *(v22 + 264);
  v27 = type metadata accessor for Logger();
  sub_10000B6D0(v27, qword_10008E7B0);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v22 + 264);
    v31 = sub_100004D20();
    sub_100004F18();
    sub_100005B3C();
    *v31 = 136446210;
    swift_getErrorValue();
    v33 = *(v22 + 40);
    v32 = *(v22 + 48);
    v34 = *(v22 + 56);
    v35 = Error.localizedDescription.getter();
    v37 = sub_1000053A0(v35, v36, &a11);

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "failed initializing session: %{public}s", v31, 0xCu);
    sub_100005284(v23);
    sub_100001D1C();
    sub_100004664();
  }

  reply = xpc_dictionary_create_reply(*(v22 + 96));
  if (reply)
  {
    v39 = reply;
    v40 = *(v22 + 104);
    xpc_dictionary_set_string(reply, "error", "init failed");
    v41 = *(v40 + 112);
    if (!v41)
    {
      __break(1u);
      return;
    }

    v42 = *(v22 + 264);
    v44 = *(v22 + 208);
    v43 = *(v22 + 216);
    v45 = *(v22 + 200);

    v46 = *(v41 + 16);
    swift_unknownObjectRetain();

    xpc_connection_send_message(v46, v39);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = *(v22 + 264);
    v48 = *(v22 + 208);
    v49 = *(v22 + 216);
    v50 = *(v22 + 200);
  }

  sub_100001EF0();
  v60 = v51;

  sub_100001D4C();
  sub_100008E28();

  v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, v60, a11, a12, a13, a14);
}

void sub_10002D9D8(void *a1)
{
  v2 = v1;
  v4 = XPC_ERROR_CONNECTION_INVALID.getter();
  swift_unknownObjectRelease();
  if (v4 == a1)
  {
    if (qword_10008DD30 != -1)
    {
      sub_1000097DC();
    }

    v20 = type metadata accessor for Logger();
    sub_10000B6D0(v20, qword_10008E7B0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (sub_100005B24())
    {
      v23 = sub_100004D20();
      v24 = sub_100004F18();
      v31 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1000053A0(v2[16], v2[17], &v31);
      _os_log_impl(&_mh_execute_header, v21, v22, "XPC client %{public}s closed connection", v23, 0xCu);
      sub_100005284(v24);
      sub_100004664();
      sub_100001D1C();
    }

    v25 = v2[18];
    sub_1000155B4();
  }

  else
  {
    v5 = XPC_ERROR_CONNECTION_INTERRUPTED.getter();
    swift_unknownObjectRelease();
    if (v5 == a1)
    {
      if (qword_10008DD30 != -1)
      {
        sub_1000097DC();
      }

      v26 = type metadata accessor for Logger();
      sub_10000B6D0(v26, qword_10008E7B0);

      oslog = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(oslog, v27))
      {
        sub_100004D20();
        v28 = sub_100004414();
        v31 = v28;
        *v5 = 136446210;
        *(v5 + 4) = sub_1000053A0(v2[16], v2[17], &v31);
        _os_log_impl(&_mh_execute_header, oslog, v27, "XPC client %{public}s interrupted connection", v5, 0xCu);
        sub_100005284(v28);
        sub_100001D1C();
        sub_100003910();
      }
    }

    else
    {
      v6 = xpc_copy_description(a1);
      v7 = String.init(cString:)();
      v9 = v8;
      if (qword_10008DD30 != -1)
      {
        sub_1000097DC();
      }

      v10 = type metadata accessor for Logger();
      sub_10000B6D0(v10, qword_10008E7B0);

      v11 = Logger.logObject.getter();
      static os_log_type_t.info.getter();

      if (sub_1000127C4())
      {
        v12 = sub_100004D20();
        v13 = sub_100004F18();
        v31 = v13;
        *v12 = 136315138;
        v14 = sub_1000053A0(v7, v9, &v31);

        *(v12 + 4) = v14;
        sub_100003C34();
        _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        sub_100005284(v13);
        sub_100001D1C();
        sub_100001D64();
      }

      else
      {
      }

      v29 = v2[18];
      sub_1000155B4();

      free(v6);
    }
  }
}

uint64_t sub_10002DD40()
{
  sub_100004680();
  sub_100003B0C();
  sub_100001D58();
  *v2 = v1;
  v4 = v3[12];
  v5 = v3[11];
  v6 = v3[10];
  v7 = *v0;
  sub_1000043E4();
  *v8 = v7;
  *(v10 + 104) = v9;

  v11 = sub_10000BE90();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10002DE58()
{
  sub_100004F30();
  if (v0[13])
  {
    v1 = v0[9];
    v2 = v0[10];
    v3 = v0[8];
    swift_beginAccess();
    swift_retain_n();
    v4 = *(v2 + 152);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + 152);
    sub_100012378();
    *(v2 + 152) = v8;
    swift_endAccess();

    v5 = v0[13];
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_10002DF38()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  return _swift_task_switch(sub_10002E024, 0, 0);
}

__n128 sub_10002E234(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10002E248(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002E288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002E2E4()
{
  v1 = *v0;
  sub_10000464C();
  sub_100015ECC(v2, v3, v4);
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t sub_10002E36C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

BOOL sub_10002E3E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10002D37C();
}

void *sub_10002E44C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_100023370(v1, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

xpc_object_t sub_10002E4E8(int64_t a1)
{
  v1 = sub_10002E530(a1);
  v2 = v1[2];

  return xpc_array_create(v1 + 4, v2);
}

void *sub_10002E530(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_10002E44C(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_10002E5EC(uint64_t a1)
{
  v2 = type metadata accessor for XPCObject();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E648()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100003900(v3);
  *v4 = v5;
  v6 = sub_10000C650(v4);

  return v7(v6);
}

uint64_t sub_10002E6E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(sub_1000228D4(a3, a4) - 8) + 16);
  v6 = sub_100004EA4();
  v7(v6);
  return a2;
}

unint64_t sub_10002E744(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_10002E848(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10002E888(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_10002E894()
{
  result = qword_10008E8A8;
  if (!qword_10008E8A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008E8A8);
  }

  return result;
}

unint64_t sub_10002E8D8()
{
  result = qword_10008E8C0;
  if (!qword_10008E8C0)
  {
    sub_100025D78(&qword_10008E8B8, &qword_10006E190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E8C0);
  }

  return result;
}

uint64_t sub_10002E93C()
{
  v2 = v0[34];
  v3 = v0[32];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
}

uint64_t sub_10002E960(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100001F2C(sub_10002E980, v2);
}

uint64_t sub_10002E980()
{
  sub_100004680();
  v1 = sub_10000DD08(v0[2], v0[3]);
  v0[5] = v2;
  if (v2)
  {
    v3 = v0[4];
    v0[6] = v1;
    v4 = *(v3 + 128);
    v0[7] = v4;

    return _swift_task_switch(sub_10002EA24, v4, 0);
  }

  else
  {
    sub_100001D4C();

    return v5();
  }
}

uint64_t sub_10002EA24()
{
  sub_100004680();
  v1 = v0[7];
  sub_100067604(v0[6], v0[5]);

  sub_100001D4C();

  return v2();
}

uint64_t sub_10002EA8C()
{
  sub_100004680();
  v1[3] = v0;
  v2 = type metadata accessor for StorebagCache.Location(0);
  sub_100001D80(v2);
  v4 = *(v3 + 64);
  v1[4] = sub_100003D60();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v1[5] = v5;
  v6 = *(v5 - 8);
  v1[6] = v6;
  v7 = *(v6 + 64);
  v1[7] = sub_100003D60();
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[8] = v8;
  v9 = *(v8 - 8);
  v1[9] = v9;
  v10 = *(v9 + 64);
  v1[10] = sub_100003D60();
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1[11] = v11;
  sub_100001D80(v11);
  v13 = *(v12 + 64);
  v1[12] = sub_100003D60();
  v14 = type metadata accessor for DispatchQoS();
  sub_100001D80(v14);
  v16 = *(v15 + 64);
  v1[13] = sub_100003D60();

  return _swift_task_switch(sub_10002EBF8, 0, 0);
}

uint64_t sub_10002EBF8()
{
  v12 = v0[12];
  v1 = v0[11];
  v2 = v0[9];
  v13 = v0[10];
  v14 = v0[8];
  v4 = v0[6];
  v3 = v0[7];
  v15 = v0[5];
  v16 = v0[13];
  v17 = v0[3];
  v18 = v0[4];
  swift_defaultActor_initialize();
  sub_10002E894();
  static DispatchQoS.default.getter();
  v0[2] = _swiftEmptyArrayStorage;
  sub_10000F4A8(&qword_10008E8B0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000228D4(&qword_10008E8B8, &qword_10006E190);
  sub_10000F978(&qword_10008E8C0, &qword_10008E8B8, &qword_10006E190);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v14);
  (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v15);
  static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v3, v15);
  *(v17 + 120) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v5 = type metadata accessor for URL();
  sub_1000026BC(v18, 1, 1, v5);
  v6 = type metadata accessor for StorebagCache(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_10002EE70;
  v10 = v0[4];

  return sub_100065124();
}

uint64_t sub_10002EE70()
{
  sub_100004680();
  v1 = *v0;
  sub_100001D58();
  *v3 = v2;
  v5 = *(v4 + 112);
  *v3 = *v0;
  *(v2 + 120) = v6;

  return _swift_task_switch(sub_10002EF68, 0, 0);
}

uint64_t sub_10002EF68()
{
  v1 = *(v0 + 24);
  *(v1 + 128) = *(v0 + 120);
  sub_1000228D4(&qword_10008E9B0, &qword_10006E198);
  v2 = type metadata accessor for NWInterface.InterfaceType();
  sub_100001EDC(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10006CAD0;
  (*(v4 + 104))(v8 + v7, enum case for NWInterface.InterfaceType.loopback(_:), v2);
  v9 = type metadata accessor for NWPathMonitor();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + 112) = NWPathMonitor.init(prohibitedInterfaceTypes:)();

  return _swift_task_switch(sub_10002F0B8, v1, 0);
}

uint64_t sub_10002F0B8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v5 + 112);
  v8 = *(v5 + 120);

  v9 = v8;
  NWPathMonitor.start(queue:)();

  v10 = v0[1];
  v11 = v0[3];

  return v10(v11);
}

uint64_t sub_10002F188()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10002F1C0()
{
  sub_10002F188();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002F210(uint64_t a1, uint64_t a2)
{
  result = sub_10000F4A8(&qword_10008E9A0, a2, type metadata accessor for StorebagCoordinator);
  *(a1 + 8) = result;
  return result;
}

id sub_10002F268(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v14 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v14];

  v5 = v14;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    sub_100003C44(v6);
    v8 = *(v7 + 8);
    v9 = v5;
    v8(a1, v6);
  }

  else
  {
    v10 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = type metadata accessor for URL();
    sub_100003C44(v11);
    (*(v12 + 8))(a1);
  }

  return v4;
}

uint64_t sub_10002F3B0(uint64_t a1)
{
  v3 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002F44C;

  return NSURLSession.data(for:delegate:)(a1, 0);
}

uint64_t sub_10002F44C(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *(*v4 + 16);
  v11 = *v4;

  if (!v3)
  {
    sub_100005954(a1, a2);
  }

  sub_100001D4C();

  return v9();
}

uint64_t sub_10002F564(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000334A8;

  return sub_10002F3B0(a1);
}

uint64_t sub_10002F8E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002F904, 0, 0);
}

uint64_t sub_10002F904()
{
  v1 = *(v0 + 16);
  v2 = URLRequest.httpBody.getter();
  if (v3 >> 60 != 15)
  {
    v4 = v2;
    v5 = v3;
    v6 = *(*(v0 + 24) + 16);
    v7 = swift_task_alloc();
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    os_unfair_lock_lock((v6 + 24));
    sub_100032694((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
    sub_100022E50(v4, v5);
  }

  sub_100001D4C();

  return v8();
}

uint64_t sub_10002F9E0(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v17 = a2;
  v18 = a3;
  sub_10002A8B8();
  result = NSFileHandle.write<A>(contentsOf:)();
  if (!v3)
  {
    static String.Encoding.utf8.getter();
    v14 = String.data(using:allowLossyConversion:)();
    v16 = v15;
    result = (*(v8 + 8))(v11, v7);
    if (v16 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v17 = v14;
      v18 = v16;
      NSFileHandle.write<A>(contentsOf:)();
      return sub_100005954(v17, v18);
    }
  }

  return result;
}

uint64_t sub_10002FB4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10002FBA8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000334A8;

  return sub_10002F8E4(a1);
}

uint64_t sub_10002FC40()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_1000959C0);
  sub_1000050E4(v0, qword_1000959C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002FCC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695474736F70 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x52656C706D61735FLL && a2 == 0xEB00000000657461;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10002FE28(char a1)
{
  result = 0x656D695474736F70;
  switch(a1)
  {
    case 1:
      result = 0x6449746E65696C63;
      break;
    case 2:
      result = 0x52656C706D61735FLL;
      break;
    case 3:
      result = 0x73746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002FEAC(void *a1)
{
  v3 = v1;
  v5 = sub_1000228D4(&qword_10008EBA0, &qword_10006E418);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_100008DE4(a1, a1[3]);
  sub_1000331A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v20 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v19 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v18 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[4];
    v16[15] = 3;
    sub_1000228D4(&qword_10008EBB0, &qword_10006E420);
    sub_1000331F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100030094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002FCC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000300BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002FE20();
  *a1 = result;
  return result;
}

uint64_t sub_1000300E4(uint64_t a1)
{
  v2 = sub_1000331A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100030120(uint64_t a1)
{
  v2 = sub_1000331A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003015C(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_10002FEAC(a1);
}

uint64_t sub_100030198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[2] = a3;
  v15[0] = a1;
  v15[1] = a2;
  v5 = *(v3 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_filters);
  v6 = *(v5 + 16);
  v7 = v5 + 32;

  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      return v15[0];
    }

    if (i >= *(v5 + 16))
    {
      break;
    }

    sub_100009658(v7, v12);
    v10 = v13;
    v11 = v14;
    sub_100008DE4(v12, v13);
    (*(v11 + 16))(v15, v10, v11);
    if (v4)
    {
      sub_100005284(v12);
    }

    result = sub_100005284(v12);
    v7 += 40;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000302B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_filters);
  result = v5 + 32;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    v9 = v7 + v8;
    if (v7 + v8 == -1)
    {
      return v9 != -1;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v10 = result + 40;
    sub_100009658(result, v14);
    v11 = v15;
    v12 = v16;
    sub_100008DE4(v14, v15);
    v13 = (*(v12 + 24))(a1, a2, v11, v12);
    sub_100005284(v14);
    result = v10;
    if (v13)
    {
      return v9 != -1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003039C(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v2[27] = *v1;
  v3 = type metadata accessor for EventValue();
  v2[28] = v3;
  sub_10000392C(v3);
  v2[29] = v4;
  v6 = *(v5 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = *(*(sub_1000228D4(&qword_10008F370, &qword_10006E358) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v2[34] = v8;
  sub_10000392C(v8);
  v2[35] = v9;
  v11 = *(v10 + 64) + 15;
  v2[36] = swift_task_alloc();
  v12 = type metadata accessor for URLRequest();
  v2[37] = v12;
  sub_10000392C(v12);
  v2[38] = v13;
  v15 = *(v14 + 64) + 15;
  v2[39] = swift_task_alloc();
  v16 = type metadata accessor for JSONEncoder.OutputFormatting();
  v2[40] = v16;
  sub_10000392C(v16);
  v2[41] = v17;
  v19 = *(v18 + 64) + 15;
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_1000305C8, v1, 0);
}

uint64_t sub_10003130C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  sub_10002A0C8(*(v0 + 392), *(v0 + 400));
  *(v0 + 408) = v4;
  if (v4)
  {
    v5 = *(v0 + 208);
    v6 = sub_100031B4C;
  }

  else
  {
    v7 = *(v0 + 384);
    v8 = *(v0 + 208);

    v6 = sub_1000313B0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100031940()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_100031C10;
  }

  else
  {
    v6 = sub_100031A6C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100031A6C()
{
  sub_100007BEC();
  sub_100005954(v2, v0);
  v6 = sub_100004EA4();
  sub_100022E50(v6, v7);
  (*(v5 + 8))(v3, v4);
  sub_100001D8C();
  v9 = v1[32];
  v8 = v1[33];
  v11 = v1[30];
  v10 = v1[31];

  sub_100001D4C();

  return v12();
}

uint64_t sub_100031B4C()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = v0[44];

  v5 = sub_100004EA4();
  sub_100005954(v5, v6);

  v7 = v0[51];
  sub_100004F3C();

  sub_100001D4C();

  return v8();
}

uint64_t sub_100031C10()
{
  sub_100007BEC();
  sub_100005954(v2, v0);
  v6 = sub_100004EA4();
  sub_100022E50(v6, v7);
  (*(v5 + 8))(v3, v4);
  v8 = *(v1 + 440);
  sub_100004F3C();

  sub_100001D4C();

  return v9();
}

double sub_100031CE4()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000302B4(0x656D695474736F70, 0xE800000000000000);
  result = 0.0;
  if ((v5 & 1) == 0)
  {
    static Date.now.getter();
    v7 = getTimeIntervalSince1970(Date:)();
    (*(v1 + 8))(v4, v0);
    return v7;
  }

  return result;
}

uint64_t sub_100031DD8(uint64_t *a1, uint64_t a2)
{
  v3 = sub_10001BD74(*a1, a1[1], a1[2]);
  if (v4)
  {
    return 1;
  }

  v5 = v3;
  v6 = *(a2 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_allowedCategories);
  if (*(v6 + 16) && (sub_100047B2C(v3, v6) & 1) == 0)
  {
    if (qword_10008DD38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000050E4(v18, qword_1000959C0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v5;
    *(v11 + 12) = 2082;
    v19 = sub_100032198();
    v21 = sub_1000053A0(v19, v20, &v22);

    *(v11 + 14) = v21;
    v16 = "removing event with category %ld from submission to %{public}s due to allowlist";
    goto LABEL_15;
  }

  v7 = *(a2 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_deniedCategories);
  if (!*(v7 + 16) || (sub_100047B2C(v5, v7) & 1) == 0)
  {
    return 1;
  }

  if (qword_10008DD38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000050E4(v8, qword_1000959C0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_16;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v22 = v12;
  *v11 = 134218242;
  *(v11 + 4) = v5;
  *(v11 + 12) = 2082;
  v13 = sub_100032198();
  v15 = sub_1000053A0(v13, v14, &v22);

  *(v11 + 14) = v15;
  v16 = "removing event with category %ld from submission to %{public}s due to denylist";
LABEL_15:
  _os_log_impl(&_mh_execute_header, v9, v10, v16, v11, 0x16u);
  sub_100005284(v12);

LABEL_16:

  return 0;
}

uint64_t sub_100032098(uint64_t result, unint64_t a2)
{
  v4 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        sub_100025CD8(result, a2);
        v9 = sub_100009AEC();
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(result + 16);
      v7 = *(result + 24);
      sub_100025CD8(result, a2);
      v8 = &v11;
      v9 = v6;
      v10 = v7;
LABEL_9:
      result = sub_100032BC8(v9, v10, v4, a2, v8);
      if (!v2)
      {
        goto LABEL_10;
      }

      break;
    case 3uLL:
      result = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100032B30(result, v5, v4, a2, &v11);
      if (!v2)
      {
LABEL_10:
        result = v11;
      }

      break;
  }

  return result;
}

uint64_t sub_100032198()
{
  String.append(_:)(*(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_name));
  v1._countAndFlagsBits = 539828258;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);
  type metadata accessor for URL();
  sub_1000046A8();
  sub_10003327C(v2, v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 8744;
}

uint64_t sub_100032270()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_url;
  v3 = type metadata accessor for URL();
  sub_100003C44(v3);
  (*(v4 + 8))(v0 + v2);
  sub_100005284((v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_target));
  v5 = *(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_clientID + 8);

  v6 = *(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_extraHeaders + 16);
  v7 = *(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_extraHeaders + 32);
  v8 = *(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_extraHeaders + 48);
  v9 = *(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_extraHeaders + 72);

  v10 = *(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_filters);

  v11 = *(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_name + 8);

  v12 = *(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_allowedCategories);

  v13 = *(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_deniedCategories);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100032380()
{
  sub_100032270();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for BackendHTTP()
{
  result = qword_10008EA80;
  if (!qword_10008EA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032400()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000324EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032580;

  return sub_10003039C(a1);
}

uint64_t sub_100032580()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_100001D4C();

  return v2();
}

unint64_t sub_1000326B0()
{
  result = qword_10008E708;
  if (!qword_10008E708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008E708);
  }

  return result;
}

uint64_t sub_1000326F4@<X0>(Bytef *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 - a1;
  memset(&strm.zfree, 0, 40);
  if (a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  memset(&strm.avail_in, 0, 64);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v12))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  strm.avail_in = v12;
  if (!a1)
  {
    goto LABEL_24;
  }

  strm.next_in = a1;
  v13 = deflateInit2_(&strm, -1, 8, 31, 8, 0, "1.2.12", 112);
  if (v13)
  {
    v14 = v13;
    sub_100032C88();
    swift_allocError();
    *v15 = v14;
    return swift_willThrow();
  }

  if ((deflateBound(&strm, v11) & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v29 = Data.init(count:)();
  v30 = v17;
  v18 = sub_100032CDC(&v29, &strm);
  if (v18 != 1)
  {
    v22 = v18;
    Logger.init()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67240192;
      *(v25 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "zlib returned unexpected status %{public}d", v25, 8u);
    }

    (*(v7 + 8))(v10, v6);
    *a3 = xmmword_10006E1C0;
    v26 = v29;
    v27 = v30;
    goto LABEL_19;
  }

  if ((strm.total_out & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  Data._Representation.count.setter();
  v19 = v29;
  v20 = v30;
  v21 = Data.count.getter();
  if (v21 >= Data.count.getter())
  {
    *a3 = xmmword_10006E1C0;
  }

  else
  {
    *a3 = v19;
    *(a3 + 8) = v20;
    sub_100025CD8(v19, v20);
  }

  v26 = v19;
  v27 = v20;
LABEL_19:
  sub_100005954(v26, v27);
  return deflateEnd(&strm);
}

uint64_t sub_1000329F4@<X0>(z_streamp strm@<X2>, uint64_t result@<X0>, uint64_t a3@<X1>, _DWORD *a4@<X8>)
{
  if (result)
  {
    v5 = a3 - result;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  total_out = strm->total_out;
  v7 = v5 >= total_out;
  v8 = v5 - total_out;
  if (!v7)
  {
    goto LABEL_12;
  }

  if (HIDWORD(v8))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  strm->avail_out = v8;
  if (result)
  {
    if ((total_out & 0x8000000000000000) == 0)
    {
      strm->next_out = (total_out + result);
      result = deflate(strm, 4);
      *a4 = result;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_100032A78()
{
  result = qword_10008E6C8;
  if (!qword_10008E6C8)
  {
    sub_100025D78(&qword_10008E6C0, &qword_10006DC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E6C8);
  }

  return result;
}

unint64_t sub_100032ADC()
{
  result = qword_10008EB90;
  if (!qword_10008EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EB90);
  }

  return result;
}

uint64_t sub_100032B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  sub_1000326F4(&v8, &v8 + BYTE6(a2), a5);
  return sub_100005954(a3, a4);
}

uint64_t sub_100032BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = __DataStorage._length.getter();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = &v11[v15];
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_1000326F4(v11, v17, a5);
  return sub_100005954(a3, a4);
}

unint64_t sub_100032C88()
{
  result = qword_10008EB98;
  if (!qword_10008EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EB98);
  }

  return result;
}

uint64_t sub_100032CDC(uint64_t *a1, z_streamp strm)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100005954(v4, v3);
      *a1 = xmmword_10006E1D0;
      sub_100005954(0, 0xC000000000000000);
      v13 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_14;
      }

      if (v13 < v4)
      {
        goto LABEL_18;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
        goto LABEL_19;
      }

      v14 = type metadata accessor for __DataStorage();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v17;
LABEL_14:
      if (v13 < v4)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v5 = sub_100033058(v4, v4 >> 32, v12, strm);

      *a1 = v4;
      a1[1] = v12 | 0x4000000000000000;
      return v5;
    case 2uLL:
      v9 = *a1;

      sub_100005954(v4, v3);
      *&v21 = v4;
      *(&v21 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_10006E1D0;
      sub_100005954(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v10 = *(&v21 + 1);
      v11 = sub_100033058(*(v21 + 16), *(v21 + 24), *(&v21 + 1), strm);
      *a1 = v21;
      a1[1] = v10 | 0x8000000000000000;
      if (!v2)
      {
        return v11;
      }

      return v5;
    case 3uLL:
      *(&v21 + 7) = 0;
      *&v21 = 0;
      sub_1000329F4(strm, &v21, &v21, &v20);
      if (!v2)
      {
        return v20;
      }

      return v5;
    default:
      v5 = v4 >> 40;
      sub_100005954(v4, v3);
      *&v21 = v4;
      WORD4(v21) = v3;
      BYTE10(v21) = BYTE2(v3);
      BYTE11(v21) = BYTE3(v3);
      BYTE12(v21) = BYTE4(v3);
      BYTE13(v21) = BYTE5(v3);
      BYTE14(v21) = BYTE6(v3);
      sub_1000329F4(strm, &v21, &v21 + BYTE6(v3), &v20);
      if (!v2)
      {
        v5 = v20;
      }

      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
      *a1 = v21;
      a1[1] = v8;
      return v5;
  }
}

uint64_t sub_100033058(uint64_t a1, uint64_t a2, uint64_t a3, z_stream *a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = __DataStorage._length.getter();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = sub_1000329F4(a4, v9 + v10, v9 + v10 + v14, &v15);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_10003310C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003314C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000331A4()
{
  result = qword_10008EBA8;
  if (!qword_10008EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBA8);
  }

  return result;
}

unint64_t sub_1000331F8()
{
  result = qword_10008EBB8;
  if (!qword_10008EBB8)
  {
    sub_100025D78(&qword_10008EBB0, &qword_10006E420);
    sub_10000847C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBB8);
  }

  return result;
}

uint64_t sub_10003327C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BackendHTTP.POSTData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000333A4()
{
  result = qword_10008EBC0;
  if (!qword_10008EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBC0);
  }

  return result;
}

unint64_t sub_1000333FC()
{
  result = qword_10008EBC8;
  if (!qword_10008EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBC8);
  }

  return result;
}

unint64_t sub_100033454()
{
  result = qword_10008EBD0;
  if (!qword_10008EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBD0);
  }

  return result;
}

uint64_t sub_1000334AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1000334FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_100033554(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_100033584(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E65696C63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_100033600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100033584(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100033638(uint64_t a1)
{
  v2 = sub_10001D044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033674(uint64_t a1)
{
  v2 = sub_10001D044();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000336B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001CE18(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1000336E0()
{
  result = qword_10008EBF0;
  if (!qword_10008EBF0)
  {
    sub_100025D78(&qword_10008EBE8, &qword_10006E5D8);
    sub_100033764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBF0);
  }

  return result;
}

unint64_t sub_100033764()
{
  result = qword_10008EBF8;
  if (!qword_10008EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBF8);
  }

  return result;
}

uint64_t sub_1000337C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100033804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100033854()
{
  result = qword_10008EC00;
  if (!qword_10008EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EC00);
  }

  return result;
}

unint64_t sub_1000338AC()
{
  result = qword_10008EC08;
  if (!qword_10008EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EC08);
  }

  return result;
}

unint64_t sub_100033904()
{
  result = qword_10008EC10;
  if (!qword_10008EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EC10);
  }

  return result;
}

uint64_t sub_100033958(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000228D4(&qword_10008EE20, &qword_10006E8C0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000378FC(v2, 1, &v4);

  return v4;
}

uint64_t sub_100033A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = 1;
    v10 = v6;
  }

  else
  {
    type metadata accessor for URL();
    sub_1000058C8();
  }

  return sub_1000026BC(v7, v8, v9, v10);
}

uint64_t sub_100033AD0()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008EC18);
  sub_1000050E4(v0, qword_10008EC18);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100033B9C()
{
  sub_100004680();
  *(v1 + 120) = v0;
  *(v1 + 304) = v2;
  *(v1 + 128) = *v0;
  v3 = sub_1000228D4(&qword_10008EE10, &qword_10006E8B8);
  *(v1 + 136) = v3;
  v4 = *(v3 - 8);
  *(v1 + 144) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100033C90, 0, 0);
}

uint64_t sub_100033C90()
{
  sub_100002624();
  v1 = v0[15];
  swift_defaultActor_initialize();
  sub_10000534C();
  *(v1 + 120) = Dictionary.init(dictionaryLiteral:)();
  *(v1 + 128) = 0;
  *(v1 + 136) = &_swiftEmptySetSingleton;
  sub_1000228D4(&qword_10008F3B0, &unk_10006E8A0);
  sub_10000534C();
  *(v1 + 144) = Dictionary.init(dictionaryLiteral:)();
  *(v1 + 152) = 0;
  v0[20] = type metadata accessor for CachedSession(0);
  sub_10000534C();
  *(v1 + 168) = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for StorebagCoordinator();
  swift_allocObject();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  sub_10000BBC8(v2);

  return sub_10002EA8C();
}

uint64_t sub_100033DC8()
{
  sub_100004680();
  sub_100003B0C();
  v2 = v1;
  v3 = *(v1 + 168);
  v6 = *v0;
  *(v2 + 176) = v4;

  return _swift_task_switch(sub_100033EC0, 0, 0);
}

uint64_t sub_100033EC0()
{
  sub_100002624();
  v1 = *(v0 + 120);
  *(v1 + 112) = *(v0 + 176);
  v2 = type metadata accessor for SubmitEagerEventsActivity();
  v3 = sub_100016084(&qword_10008EE18, 255, type metadata accessor for SubmitEagerEventsActivity);
  type metadata accessor for XPCActivity();
  swift_allocObject();
  *(v1 + 160) = sub_10004A850(v2, v3);
  v4 = sub_10000BE90();

  return _swift_task_switch(v4, v5, v6);
}

void sub_100033F9C()
{
  sub_100004680();
  if (*(v0 + 304))
  {
    v1 = *(v0 + 152);

    sub_10000FF74();
    v3 = *(v0 + 120);

    v2(v3);
  }

  else
  {
    v4 = qword_100095AD8;
    *(v0 + 184) = qword_100095AD8;
    if (v4)
    {

      v5 = swift_task_alloc();
      *(v0 + 192) = v5;
      *v5 = v0;
      sub_10000BBC8(v5);

      sub_10003ACEC(5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100034084()
{
  sub_100002624();
  v2 = v0;
  sub_100003B0C();
  v4 = v3;
  sub_100002928();
  *v5 = v4;
  v7 = v6[24];
  v8 = v6[23];
  v9 = v6[15];
  v10 = *v1;
  sub_1000043E4();
  *v11 = v10;
  v4[25] = v12;
  v4[26] = v2;

  sub_100001F64();
  v4[27] = sub_100016084(v13, v14, v15);
  swift_getObjectType();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v18 = sub_100034DF8;
  }

  else
  {
    v18 = sub_100034204;
  }

  return _swift_task_switch(v18, v17, v16);
}

uint64_t sub_100034488()
{
  v2 = *v1;
  v3 = *v1;
  sub_1000043E4();
  *v4 = v3;
  v5 = v2[30];
  *v4 = *v1;
  v3[31] = v0;

  v6 = v2[29];
  v7 = v2[27];
  if (v0)
  {
    v8 = v3[25];
    v9 = v3[15];

    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100005B48();
    v12 = sub_100034F48;
  }

  else
  {
    v13 = v3[15];

    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100005B48();
    v12 = sub_100034614;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100034778()
{
  sub_100002624();
  v3 = v2;
  sub_100003B0C();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v8 = *(v7 + 264);
  v9 = *v1;
  sub_1000043E4();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[32];

    sub_100001F64();
    sub_100016084(v12, v13, v14);
    v15 = swift_task_alloc();
    v5[35] = v15;
    *v15 = v9;
    v16 = sub_100003C68(v15);
    v17 = v5[15];

    return sub_100036630(v16);
  }

  else
  {
    v19 = v5[32];
    v20 = v5[15];

    v5[34] = v3;
    sub_100001F64();
    sub_100016084(v21, v22, v23);
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100005B48();
    v24 = sub_100004D54();

    return _swift_task_switch(v24, v25, v26);
  }
}

uint64_t sub_10003493C()
{
  sub_100002624();
  v1 = *(v0[34] + 16);

  if (v1)
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000B6D0(v2, qword_10008EC18);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (sub_100003B24(v4))
    {
      v5 = sub_10001196C();
      sub_100009140(v5);
      sub_1000028B8();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_100003910();
    }

    byte_10008F120 = 0;
  }

  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v12 = sub_100003C68(v11);
  v13 = v0[15];

  return sub_100036630(v12);
}

uint64_t sub_100034A48()
{
  sub_100002624();
  sub_100003B0C();
  v2 = v1;
  sub_100002928();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *(v4 + 120);
  v7 = *v0;
  sub_1000043E4();
  *v8 = v7;

  sub_100001F64();
  *(v2 + 288) = sub_100016084(v9, v10, v11);
  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100005B48();
  v12 = sub_100004D54();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100034B84()
{
  sub_100004680();
  v1 = *(*(v0 + 120) + 160);
  *(v0 + 296) = v1;

  return _swift_task_switch(sub_100034BF8, v1, 0);
}

uint64_t sub_100034BF8()
{
  sub_100002624();
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[15];
  sub_1000490A4(2);

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100005B48();
  v4 = sub_100004D54();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100034C84()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = [objc_opt_self() defaultCenter];
  v4 = MCEffectiveSettingsChangedNotification;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v0[6] = sub_1000385BC;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000352CC;
  v0[5] = &unk_1000873A0;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  v8 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v6];
  _Block_release(v6);

  swift_unknownObjectRelease();
  v9 = v0[19];

  sub_10000FF74();
  v11 = v0[15];

  return v10(v11);
}

uint64_t sub_100035098(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  if (qword_10008DD40 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000050E4(v7, qword_10008EC18);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "received notification for MC effective settings change", v10, 2u);
  }

  v11 = type metadata accessor for TaskPriority();
  sub_1000026BC(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;

  sub_10002D48C(0, 0, v6, &unk_10006E8D8, v12);
}

uint64_t sub_10003523C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010C30;

  return sub_100036630(v1);
}

uint64_t sub_1000352CC(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000353C0()
{
  sub_100004680();
  *(v0 + 152) = *(v0 + 288);
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if (swift_dynamicCast() && *(v0 + 308) == 1)
  {
    v1 = *(v0 + 288);

    v2 = *(v0 + 152);

    v3 = *(v0 + 264);

    sub_10000FF74();

    return v4(0);
  }

  else
  {
    v6 = *(v0 + 264);
    v7 = *(v0 + 152);

    sub_100001D4C();
    v9 = *(v0 + 288);

    return v8();
  }
}

uint64_t sub_1000354C4()
{
  sub_100004680();
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  sub_1000490A4(2);
  v3 = sub_10000BE90();

  return _swift_task_switch(v3, v4, v5);
}

void sub_100035528()
{
  if (__OFADD__(*(v0[32] + 152), 1))
  {
    __break(1u);
  }

  else
  {
    sub_100004680();
    *(v2 + 152) = v3;
    v4 = v0[35];
    v5 = v0[33];

    sub_10000FF74();

    v6(v4);
  }
}

void (*sub_1000355A4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = sub_100038588(0x28uLL);
  *a1 = v6;
  v6[4] = sub_100037D30(v6, a2, a3);
  return sub_100035618;
}

void sub_100035618(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10003567C()
{
  sub_100002624();
  if (*(*(v0 + 16) + 152) <= 0)
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000B6D0(v12, qword_10008EC18);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (sub_100003B24(v14))
    {
      v15 = sub_10001196C();
      sub_100009140(v15);
      sub_1000028B8();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      sub_100003910();
    }

    byte_10008F120 = 1;
    sub_100001D4C();

    return v21();
  }

  else
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000B6D0(v1, qword_10008EC18);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (sub_100003B24(v3))
    {
      v4 = sub_10001196C();
      sub_100009140(v4);
      sub_1000028B8();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      sub_100003910();
    }

    v10 = *(v0 + 16);

    v11 = *(v10 + 160);
    *(v0 + 24) = v11;

    return _swift_task_switch(sub_10003581C, v11, 0);
  }
}

uint64_t sub_10003581C()
{
  sub_100004680();
  v1 = *(v0 + 24);
  sub_1000490A4(2);
  sub_100001D4C();

  return v2();
}

uint64_t sub_100035878()
{
  if (qword_10008DD40 != -1)
  {
    sub_10000986C();
    swift_once();
  }

  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  sub_1000050E4(v3, qword_10008EC18);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v1 = v0[12];
    v6 = v0[13];
    v7 = sub_100004D20();
    sub_100004F18();
    *v7 = 136446210;
    v8 = sub_100009AEC();
    *(v7 + 4) = sub_1000053A0(v8, v9, v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "eviction timer fired: %{public}s", v7, 0xCu);
    sub_1000387B0();
    sub_100001D1C();
    sub_100001D1C();
  }

  v11 = v0[11];
  sub_100008D90();
  v12 = *(v11 + 120);
  if (*(v12 + 16))
  {
    v14 = v0[12];
    v13 = v0[13];

    v15 = sub_100003BC0();
    if (v16)
    {
      v17 = *(*(v12 + 56) + 8 * v15);

      if (v17)
      {
        sub_100004EB0();
        sub_10000277C();
        v18 = sub_10000BEAC();
        sub_10004FD68(v18, v19);
        swift_endAccess();

        sub_100001D4C();
        sub_10000C690();

        __asm { BRAA            X1, X16 }
      }
    }

    else
    {
    }
  }

  v22 = v0[13];

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[12];
    v25 = v0[13];
    sub_100004D20();
    v37 = sub_100006FB8();
    *(v1 + 4) = sub_100038770(4.8751e-34, v37);
    sub_100038750(&_mh_execute_header, v27, v28, "requesting eviction for %{public}s");
    sub_10000393C();
    sub_100003D78();
  }

  v29 = *(v0[11] + 112);
  v30 = swift_task_alloc();
  v0[16] = v30;
  *v30 = v0;
  v30[1] = sub_100035B34;
  v32 = v0[12];
  v31 = v0[13];
  sub_10000C690();

  return sub_10002E960(v33, v34);
}

uint64_t sub_100035B34()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 128);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_1000043E4();
  *v5 = v4;

  v6 = sub_100009A40();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100035C2C()
{
  sub_100002624();
  sub_100004EB0();
  sub_10000277C();
  v0 = sub_10000BEAC();
  sub_10004FD68(v0, v1);
  swift_endAccess();

  sub_100001D4C();

  return v2();
}

uint64_t sub_100035CB4()
{
  sub_100002624();
  sub_100004EB0();
  sub_10000277C();
  v1 = sub_10000BEAC();
  sub_10004FD68(v1, v2);
  swift_endAccess();

  sub_100001D4C();
  v4 = *(v0 + 120);

  return v3();
}

uint64_t sub_100035D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100035D60, a6, 0);
}

uint64_t sub_100035D60()
{
  sub_100005464();
  if (qword_10008DD40 != -1)
  {
    sub_10000986C();
    swift_once();
  }

  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_10000B6D0(v3, qword_10008EC18);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    sub_100004D20();
    v15 = sub_100006FB8();
    *(v1 + 4) = sub_100038770(4.8751e-34, v15);
    sub_100038750(&_mh_execute_header, v8, v9, "requesting immediate eviction for %{public}s");
    sub_10000393C();
    sub_100003D78();
  }

  v10 = *(v0[4] + 112);
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_100035EC0;
  v13 = v0[2];
  v12 = v0[3];

  return sub_10002E960(v13, v12);
}

uint64_t sub_100035EC0()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  sub_100001D4C();

  return v5();
}

uint64_t sub_100035FA0()
{
  sub_100004680();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 216) = v3;
  *(v1 + 120) = v4;
  v5 = sub_1000228D4(&qword_10008EDF8, &unk_10006E860);
  sub_100001D80(v5);
  v7 = *(v6 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  v8 = type metadata accessor for CachedSession(0);
  *(v1 + 160) = v8;
  sub_100001D80(v8);
  v10 = *(v9 + 64) + 15;
  *(v1 + 168) = swift_task_alloc();
  v11 = sub_100009A40();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10003606C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  sub_10000277C();
  sub_100009AEC();
  sub_10004580C(v6);
  swift_endAccess();
  if (sub_100002694(v2, 1, v1) == 1)
  {
    sub_1000376E0(*(v0 + 152));
LABEL_8:
    v30 = *(v0 + 168);
    v31 = *(v0 + 144);
    v32 = *(v0 + 152);

    sub_10000FF74();

    return v33(0);
  }

  v7 = *(v0 + 168);
  v8 = *(v0 + 136);
  sub_100037748(*(v0 + 152), v7);
  v9 = *v7;
  *(v0 + 176) = *v7;
  v10 = v7[1];
  *(v0 + 184) = v10;
  v11 = sub_10000BEAC();
  v13 = sub_1000055F0(v11, v12);
  v14 = *(v0 + 168);
  if ((v13 & 1) == 0)
  {
    sub_1000377AC(v14);
    goto LABEL_8;
  }

  v15 = *(v0 + 160);
  v16 = *(v0 + 136);
  v17 = *(v0 + 144);
  v18 = *(v14 + 16);
  v19 = *(v14 + 24);
  v20 = *(v14 + 32);
  v21 = *(v14 + 40);
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  *(v0 + 32) = v18;
  *(v0 + 40) = v19;
  *(v0 + 48) = v20;
  *(v0 + 56) = v21;
  v22 = *(v14 + 72);
  sub_100037808(v14, v17);
  sub_1000026BC(v17, 0, 1, v15);
  v23 = type metadata accessor for Session(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  v26 = swift_task_alloc();
  *(v0 + 192) = v26;
  *v26 = v0;
  v26[1] = sub_1000362BC;
  v27 = *(v0 + 136);
  v28 = *(v0 + 216);
  v35 = *(v0 + 144);

  return sub_10005B5B8();
}

uint64_t sub_1000362BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_1000043E4();
  *v6 = v5;
  v7 = *(v4 + 192);
  *v6 = *v2;
  *(v5 + 200) = v1;

  v8 = *(v4 + 136);
  if (v1)
  {
    v9 = sub_100036474;
  }

  else
  {
    *(v5 + 208) = a1;
    v9 = sub_1000363F0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000363F0()
{
  sub_100002624();
  v1 = v0[26];
  sub_1000377AC(v0[21]);
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  sub_10000FF74();

  return v5(v1);
}

void sub_100036474()
{
  v1 = v0[17];
  sub_100013D4C(v0[22], v0[23], 0);
  if (qword_10008DD40 != -1)
  {
    sub_10000986C();
    swift_once();
  }

  v2 = v0[25];
  v3 = type metadata accessor for Logger();
  sub_10000B6D0(v3, qword_10008EC18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  v8 = v0[21];
  if (v6)
  {
    v9 = sub_100004D20();
    v22 = sub_100004F18();
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[13];
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000053A0(v13, v14, &v22);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to rehydrate session: %{public}s", v9, 0xCu);
    sub_1000387B0();
    sub_100001D1C();
    sub_100001D1C();
  }

  else
  {
    v16 = v0[25];
  }

  sub_1000377AC(v8);
  v17 = v0[21];
  v18 = v0[18];
  v19 = v0[19];

  sub_10000FF74();
  sub_10000C690();

  __asm { BRAA            X2, X16 }
}

void sub_100036648()
{
  v1 = qword_100095AD8;
  *(v0 + 56) = qword_100095AD8;
  if (v1)
  {
    sub_100004680();

    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    sub_10000BBC8(v2);

    sub_10003B048();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000366EC()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  *(v3 + 176) = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    v8 = *(v3 + 48);
    v9 = sub_100037038;
  }

  else
  {
    v11 = *(v3 + 48);
    v10 = *(v3 + 56);

    v9 = sub_100036804;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

void sub_100036804()
{
  sub_100002624();
  v1 = *(v0 + 176);
  if (v1 == 2)
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000B6D0(v2, qword_10008EC18);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (sub_100003B24(v4))
    {
      v5 = sub_10001196C();
      sub_100009140(v5);
      sub_1000028B8();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_100003910();
    }

    v11 = qword_100095AD8;
    *(v0 + 128) = qword_100095AD8;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 136) = v12;
      *v12 = v0;
      v13 = sub_100036D5C;
LABEL_15:
      v12[1] = v13;

      sub_10003B308(v12);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (DiagnosticLogSubmissionEnabled() != (v1 & 1))
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000B6D0(v14, qword_10008EC18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (sub_100003B24(v16))
    {
      v17 = *(v0 + 176);
      v18 = swift_slowAlloc();
      *v18 = 67240448;
      *(v18 + 4) = v17 & 1;
      *(v18 + 8) = 1026;
      *(v18 + 10) = DiagnosticLogSubmissionEnabled();
      sub_1000028B8();
      _os_log_impl(v19, v20, v21, v22, v23, 0xEu);
      sub_100003910();
    }

    v24 = qword_100095AD8;
    *(v0 + 80) = qword_100095AD8;
    if (v24)
    {

      v12 = swift_task_alloc();
      *(v0 + 88) = v12;
      *v12 = v0;
      v13 = sub_100036A80;
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return;
  }

  sub_100001D4C();

  v25();
}

uint64_t sub_100036A80()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = sub_100037150;
  }

  else
  {
    v11 = v3[10];
    v12 = v3[6];

    v10 = sub_100036B90;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

void sub_100036B90()
{
  v1 = qword_100095AD8;
  *(v0 + 104) = qword_100095AD8;
  if (v1)
  {
    sub_100004680();

    DiagnosticLogSubmissionEnabled();
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    sub_10000BBC8(v2);

    sub_10003B454();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100036C3C()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    v9 = v3[6];

    return _swift_task_switch(sub_100037268, v9, 0);
  }

  else
  {
    v10 = v3[13];

    sub_100001D4C();

    return v11();
  }
}

uint64_t sub_100036D5C()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = sub_100037380;
  }

  else
  {
    v11 = v3[16];
    v12 = v3[6];

    v10 = sub_100036E6C;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

void sub_100036E6C()
{
  v1 = qword_100095AD8;
  *(v0 + 152) = qword_100095AD8;
  if (v1)
  {
    sub_100004680();

    DiagnosticLogSubmissionEnabled();
    v2 = swift_task_alloc();
    *(v0 + 160) = v2;
    *v2 = v0;
    sub_10000BBC8(v2);

    sub_10003B454();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100036F18()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[21] = v0;

  if (v0)
  {
    v9 = v3[6];

    return _swift_task_switch(sub_100037498, v9, 0);
  }

  else
  {
    v10 = v3[19];

    sub_100001D4C();

    return v11();
  }
}

void *sub_1000375B0()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[20];

  v6 = v0[21];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100037600()
{
  sub_1000375B0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100037650(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100037690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000376E0(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008EDF8, &unk_10006E860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000377AC(uint64_t a1)
{
  v2 = type metadata accessor for CachedSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003786C()
{
  sub_100003F58();
  sub_100005464();
  sub_10001605C();
  v0 = swift_task_alloc();
  v1 = sub_100003900(v0);
  *v1 = v2;
  sub_100001F7C(v1);
  sub_1000127DC();
  sub_100008E70();

  return sub_100035D3C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1000378FC(uint64_t a1, char a2, uint64_t *a3)
{
  v50 = a3;
  v6 = type metadata accessor for CachedSession(0);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000228D4(&qword_10008EE10, &qword_10006E8B8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v49 = (&v43 - v14);
  v47 = *(a1 + 16);
  if (!v47)
  {
  }

  v43 = v3;
  v44 = a1;
  v15 = 0;
  v16 = *(v12 + 48);
  v45 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v46 = v16;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v13;
    v18 = v49;
    sub_100038634(v45 + *(v13 + 72) * v15, v49);
    v19 = *v18;
    v20 = v18[1];
    v53 = *v18;
    v54 = v20;
    v21 = v9;
    sub_100037748(v18 + v46, v9);
    v22 = *v50;
    v24 = sub_100003BC0();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1000228D4(&qword_10008EE28, &qword_10006E8C8);
      _NativeDictionary.copy()();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v50;
    *(*v50 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v34 = (v33[6] + 16 * v24);
    *v34 = v19;
    v34[1] = v20;
    v35 = v33[7] + *(v48 + 72) * v24;
    v9 = v21;
    sub_100037748(v21, v35);
    v36 = v33[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_20;
    }

    ++v15;
    v33[2] = v38;
    a2 = 1;
    a1 = v44;
    v13 = v17;
    if (v47 == v15)
    {
    }
  }

  v29 = v50;
  sub_10006055C(v27, a2 & 1);
  v30 = *v29;
  v31 = sub_100003BC0();
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v39 = swift_allocError();
  swift_willThrow();
  v55 = v39;
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1000377AC(v21);
  }

LABEL_22:
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v41._object = 0x8000000100071D70;
  v41._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v41);
  _print_unlocked<A, B>(_:_:)();
  v42._countAndFlagsBits = 39;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*sub_100037D30(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = sub_100038588(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100038044(v7);
  v7[9] = sub_100037E28(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100037DC8;
}

void sub_100037DC8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100037E28(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v10 = sub_100038588(0x30uLL);
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v11 = *v4;
  v12 = sub_100003BC0();
  *(v10 + 40) = v13 & 1;
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  sub_1000228D4(&qword_10008EE08, &qword_10006E898);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v16))
  {
    v19 = *v5;
    v20 = sub_100003BC0();
    if ((v18 & 1) == (v21 & 1))
    {
      v17 = v20;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v10[4] = v17;
  if (v18)
  {
    v22 = *(*(*v5 + 56) + 8 * v17);
  }

  else
  {
    v22 = 0;
  }

  *v10 = v22;
  return sub_100037F68;
}

void sub_100037F68(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_10000D044(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_10000D9BC(*(*v1[3] + 48) + 16 * v1[4]);
    sub_1000228D4(&qword_10008F3B0, &unk_10006E8A0);
    _NativeDictionary._delete(at:)();
  }

  v6 = *v1;

  free(v1);
}

uint64_t (*sub_100038044(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10003806C;
}

uint64_t sub_100038078(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  result = sub_100038394(v6, a2);
  v9 = v2;
  if (v2)
  {

    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);
LABEL_5:

    return v3;
  }

  v3 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = 24 * result;
    v46 = a1;
    v47 = a2;
    while (1)
    {
      v12 = *(v6 + 16);
      if (v10 == v12)
      {
        goto LABEL_5;
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v49 = v10;
      v50 = v6;
      v52 = v11;
      v13 = (v6 + v11);
      v14 = *(v6 + v11 + 72);
      *&v48 = *(v6 + v11 + 64);
      v16 = *(a2 + 112);
      v15 = *(a2 + 120);
      v51[0] = 46;
      v51[1] = 0xE100000000000000;
      __chkstk_darwin(result);
      v45[2] = v51;

      v17 = v9;
      v19 = sub_100014A44(0x7FFFFFFFFFFFFFFFLL, 1, sub_100014E24, v45, v16, v15, v18);
      v20 = v19[2];
      if (v20)
      {
        v21 = &v19[4 * v20];
        v22 = *v21;
        v23 = v21[1];
        v25 = v21[2];
        v24 = v21[3];
        swift_bridgeObjectRetain_n();

        v9 = v17;
        a2 = v47;
        v16 = static String._fromSubstring(_:)();
        v15 = v26;
        swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      if (v48 == v16 && v14 == v15)
      {
        break;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_29;
      }

      v29 = v49;
      v6 = v50;
      v30 = v52;
      if (v49 != v3)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        v31 = *(v50 + 16);
        if (v3 >= v31)
        {
          goto LABEL_33;
        }

        if (v49 >= v31)
        {
          goto LABEL_34;
        }

        v32 = v9;
        v33 = v50 + 32 + 24 * v3;
        v48 = *v33;
        v34 = *(v33 + 16);
        v35 = v13[7];
        v36 = v13[8];
        v37 = v13[9];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10003A81C(v6);
          v6 = v44;
        }

        v38 = v46;
        v39 = (v6 + 24 * v3);
        v40 = v39[6];
        v39[4] = v35;
        v39[5] = v36;
        v39[6] = v37;

        if (v29 >= *(v6 + 16))
        {
          goto LABEL_35;
        }

        v41 = v52;
        v42 = v6 + v52;
        v43 = *(v6 + v52 + 72);
        *(v42 + 56) = v48;
        *(v42 + 72) = v34;

        v30 = v41;
        *v38 = v6;
        v9 = v32;
        a2 = v47;
      }

      ++v3;
LABEL_30:
      v10 = v29 + 1;
      v11 = v30 + 24;
    }

LABEL_29:
    v29 = v49;
    v6 = v50;
    v30 = v52;
    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100038394(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v22 = a2;
  v23 = v3;
  for (i = (a1 + 48); ; i = v25 + 3)
  {
    if (v23 == v2)
    {

      return 0;
    }

    v6 = *(i - 1);
    v5 = *i;
    v25 = i;
    v8 = *(v22 + 112);
    v7 = *(v22 + 120);
    v24[0] = 46;
    v24[1] = 0xE100000000000000;
    __chkstk_darwin(a1);
    v21[2] = v24;

    v10 = sub_100014A44(0x7FFFFFFFFFFFFFFFLL, 1, sub_10001F5FC, v21, v8, v7, v9);
    v11 = v10[2];
    if (v11)
    {
      v12 = &v10[4 * v11];
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      swift_bridgeObjectRetain_n();

      v8 = static String._fromSubstring(_:)();
      v7 = v17;
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    if (v6 == v8 && v5 == v7)
    {

      return v2;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      break;
    }

    ++v2;
  }

  return v2;
}

void *sub_100038588(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1000385C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008EE10, &qword_10006E8B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008EE10, &qword_10006E8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000386A4()
{
  sub_100002624();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100003900(v4);
  *v5 = v6;
  sub_100001F7C(v5);

  return sub_10003523C();
}

void sub_100038750(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_100038770(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1000053A0(v3, v2, va);
}

size_t sub_100038790(uint64_t a1, int64_t a2)
{

  return sub_100060CC4(0, a2, 0);
}

uint64_t sub_1000387CC()
{
  sub_1000228D4(&qword_10008EEE8, &unk_10006F660);
  v0 = sub_1000228D4(&qword_10008EEF0, &qword_10006E980);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006E8F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = XPC_ACTIVITY_REPEATING;
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = XPC_ACTIVITY_DELAY;
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = XPC_ACTIVITY_GRACE_PERIOD;
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = XPC_ACTIVITY_PRIORITY;
  *v11 = String.init(cString:)();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = XPC_ACTIVITY_ALLOW_BATTERY;
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = XPC_ACTIVITY_POWER_NAP;
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY;
  *(v20 + v21) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v0 + 48);
  v23 = &v4[v1];
  *v23 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  *(v23 + v22) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_NETWORK_DOWNLOAD_SIZE)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = XPC_ACTIVITY_NETWORK_DOWNLOAD_SIZE;
  *(v24 + v25) = 0x100000;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = (v4 + 10 * v1);
  v27 = *(v0 + 48);
  *v26 = XPC_ACTIVITY_EXPECTED_DURATION;
  *(v26 + v27) = XPC_ACTIVITY_INTERVAL_1_MIN;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_NAME)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = (v4 + 11 * v1);
  v29 = (v28 + *(v0 + 48));
  *v28 = XPC_ACTIVITY_GROUP_NAME;
  *v29 = 0xD00000000000001DLL;
  v29[1] = 0x8000000100071DE0;
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
  {
    v30 = (v4 + 12 * v1);
    v31 = *(v0 + 48);
    *v30 = XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT;
    *(v30 + v31) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
    sub_100038DC4();
    result = Dictionary.init(dictionaryLiteral:)();
    qword_100095A28 = result;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100038BF0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100038C44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001BF00;

  return sub_100038BDC();
}

uint64_t sub_100038CD0()
{
  if (qword_10008DD48 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100038D48(uint64_t a1)
{
  result = sub_100038D70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100038D70()
{
  result = qword_10008EEE0;
  if (!qword_10008EEE0)
  {
    type metadata accessor for RefreshStorebagsActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EEE0);
  }

  return result;
}

unint64_t sub_100038DC4()
{
  result = qword_10008EF00;
  if (!qword_10008EF00)
  {
    sub_100025D78(&qword_10008EEF8, &unk_10006F670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EF00);
  }

  return result;
}

uint64_t sub_100038E28()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008EF08);
  sub_1000050E4(v0, qword_10008EF08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100038EAC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  result = sub_10003A634((v1 + 112), a1);
  v4 = *(*(v1 + 112) + 16);
  if (v4 < result)
  {
    __break(1u);
  }

  else
  {
    sub_10003A928(result, v4);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100038F34(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return _swift_task_switch(sub_100038F7C, v1, 0);
}

uint64_t sub_100038F7C()
{
  sub_100004F30();
  v1 = v0[6];
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[5];
    sub_100001F94();
    sub_10003A5EC(v5, v6, v7);
    v8 = swift_task_alloc();
    v0[8] = v8;
    v8[2] = v2;
    v8[3] = v4;
    v8[4] = v3;
    v9 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_10003911C;

    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  else
  {
    sub_10003A3A4();
    swift_allocError();
    swift_willThrow();
    sub_100001D4C();

    return v11();
  }
}

uint64_t sub_10003911C()
{
  sub_100004680();
  sub_100003B0C();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[6];
  v5 = *v0;
  sub_1000043E4();
  *v6 = v5;

  return _swift_task_switch(sub_100011090, v4, 0);
}

uint64_t sub_100039238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v7 = *(*(sub_1000228D4(&qword_10008E750, &qword_10006F860) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000392E8, a3, 0);
}

uint64_t sub_1000392E8()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v36 = **(v0 + 96);
    v4 = type metadata accessor for TaskPriority();

    v5 = 32;
    v35 = v4;
    v37 = v2;
    do
    {
      v38 = v3;
      v7 = *(v0 + 128);
      v6 = *(v0 + 136);
      v8 = *(v0 + 112);
      v9 = *(v0 + 120);
      v10 = *(v0 + 104);
      v39 = *(v2 + v5);
      v11 = sub_100002938();
      sub_1000026BC(v11, v12, v13, v4);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v39;
      *(v14 + 48) = v8;
      *(v14 + 56) = v10;
      *(v14 + 64) = v9;
      sub_10003A4CC(v6, v7);
      LODWORD(v7) = sub_100002694(v7, 1, v4);
      swift_unknownObjectRetain_n();

      v16 = *(v0 + 128);
      if (v7 == 1)
      {
        sub_1000026E4(*(v0 + 128), &qword_10008E750, &qword_10006F860);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v4 - 8) + 8))(v16, v4);
      }

      if (*v15)
      {
        v17 = *(v14 + 24);
        v18 = *v15;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = dispatch thunk of Actor.unownedExecutor.getter();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v22 = swift_allocObject();
      *(v22 + 16) = &unk_10006EA18;
      *(v22 + 24) = v14;

      if (v21 | v19)
      {
        v23 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      else
      {
        v23 = 0;
      }

      v24 = *(v0 + 136);
      *(v0 + 72) = 1;
      *(v0 + 80) = v23;
      *(v0 + 88) = v36;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1000026E4(v24, &qword_10008E750, &qword_10006F860);
      v5 += 16;
      v2 = v37;
      v3 = v38 - 1;
      v4 = v35;
    }

    while (v38 != 1);
  }

  v25 = *(v0 + 104);
  sub_100001F94();
  v29 = sub_10003A5EC(v26, v27, v28);
  v30 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
  v31 = swift_task_alloc();
  *(v0 + 144) = v31;
  v32 = sub_1000228D4(&qword_10008F010, &qword_10006EA28);
  *v31 = v0;
  v31[1] = sub_100039680;
  v33 = *(v0 + 96);

  return TaskGroup.awaitAllRemainingTasks(isolation:)(v25, v29, v32);
}

uint64_t sub_100039680()
{
  sub_100004680();
  sub_100003B0C();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[16];
  v5 = *v0;
  sub_1000043E4();
  *v6 = v5;

  sub_100001D4C();

  return v7();
}

uint64_t sub_100039798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a5;
  v7[14] = a7;
  v7[12] = a4;
  v10 = *(*(sub_1000228D4(&qword_10008F018, &qword_10006EA30) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v11 = type metadata accessor for CocoaError();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v14 = type metadata accessor for URLError.Code();
  v7[19] = v14;
  v15 = *(v14 - 8);
  v7[20] = v15;
  v16 = *(v15 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v17 = *(*(sub_1000228D4(&qword_10008F020, &qword_10006EA38) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v18 = type metadata accessor for URLError();
  v7[24] = v18;
  v19 = *(v18 - 8);
  v7[25] = v19;
  v20 = *(v19 + 64) + 15;
  v7[26] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v22 = *(a5 + 24);
  v26 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v7[27] = v24;
  *v24 = v7;
  v24[1] = sub_100039A68;

  return v26(a6, ObjectType, a5);
}

uint64_t sub_100039A68()
{
  sub_100004F30();
  sub_100003B0C();
  v3 = v2;
  v4 = v2[27];
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  v3[28] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100039CDC, 0, 0);
  }

  else
  {
    v7 = v3[26];
    v9 = v3[22];
    v8 = v3[23];
    v10 = v3[21];
    v11 = v3[18];
    v12 = v3[15];

    sub_100001D4C();

    return v13();
  }
}

uint64_t sub_100039BE0()
{
  sub_100004680();
  v1 = v0[13];
  v2 = v0[14];
  sub_100038EAC(v0[12]);

  return _swift_task_switch(sub_100039C48, 0, 0);
}

uint64_t sub_100039C48()
{
  sub_100004F30();
  v1 = *(v0 + 224);

  sub_100009064();

  sub_100001D4C();

  return v2();
}

uint64_t sub_100039CDC()
{
  v52 = v0;
  *(v0 + 56) = *(v0 + 224);
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    sub_1000026BC(v6, 0, 1, v5);
    (*(v4 + 32))(v3, v6, v5);
    LOBYTE(v6) = CocoaError.isCoderError.getter();
    (*(v4 + 8))(v3, v5);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = sub_100002938();
    sub_1000026BC(v9, v10, v11, v12);
    sub_1000026E4(v8, &qword_10008F018, &qword_10006EA30);
  }

  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  *(v0 + 64) = *(v0 + 224);
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 184);
    v18 = *(v0 + 192);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    sub_1000026BC(v17, 0, 1, v18);
    (*(v16 + 32))(v15, v17, v18);
    sub_10003A5EC(&qword_10008F028, 255, &type metadata accessor for URLError);
    _BridgedStoredNSError.code.getter();
    static URLError.Code.cancelled.getter();
    sub_10003A5EC(&qword_10008F030, 255, &type metadata accessor for URLError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v23 = *(v21 + 8);
    v23(v20, v22);
    v23(v19, v22);
    (*(v16 + 8))(v15, v18);
    if (*(v0 + 80) == *(v0 + 88))
    {
LABEL_7:
      v24 = *(v0 + 224);

      sub_100009064();

      sub_100001D4C();

      return v25();
    }
  }

  else
  {
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = sub_100002938();
    sub_1000026BC(v29, v30, v31, v32);
    sub_1000026E4(v28, &qword_10008F020, &qword_10006EA38);
  }

  if (qword_10008DD50 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 224);
  v34 = *(v0 + 96);
  v35 = type metadata accessor for Logger();
  sub_1000050E4(v35, qword_10008EF08);
  swift_errorRetain();
  swift_unknownObjectRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = *(v0 + 224);
    v50 = *(v0 + 96);
    v39 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v39 = 136446466;
    *(v0 + 40) = v50;
    swift_unknownObjectRetain();
    sub_1000228D4(&qword_10008E208, &qword_10006CC68);
    v40 = String.init<A>(describing:)();
    v42 = sub_1000053A0(v40, v41, &v51);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2082;
    swift_getErrorValue();
    v44 = *(v0 + 16);
    v43 = *(v0 + 24);
    v45 = *(v0 + 32);
    v46 = Error.localizedDescription.getter();
    v48 = sub_1000053A0(v46, v47, &v51);

    *(v39 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v36, v37, "disabling backend '%{public}s' which returned error: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
  }

  v49 = *(v0 + 112);

  return _swift_task_switch(sub_100039BE0, v49, 0);
}

uint64_t sub_10003A1FC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003A258(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100010C30;

  return sub_100038F34(a1);
}

uint64_t sub_10003A2EC()
{
  sub_100004F30();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_100003900(v8);
  *v9 = v10;
  v9[1] = sub_100010C30;

  return sub_100039238(v4, v2, v5, v6, v7);
}

unint64_t sub_10003A3A4()
{
  result = qword_10008F008;
  if (!qword_10008F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F008);
  }

  return result;
}

uint64_t sub_10003A3F8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  v11 = sub_100003900(v10);
  *v11 = v12;
  v11[1] = sub_100010C2C;

  return sub_100039798(a1, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10003A4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003A53C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_task_alloc();
  v6 = sub_100003900(v5);
  *v6 = v7;
  v6[1] = sub_100010C30;

  return sub_1000042B8(a1, v4);
}

uint64_t sub_10003A5EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003A634(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  swift_unknownObjectRetain();
  result = sub_10003A78C(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    v8 = *(v5 + 16);
LABEL_4:
    swift_unknownObjectRelease();
    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v11 = *(v5 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v5 + i);
      if (*(v5 + i) != a2)
      {
        if (v9 != v8)
        {
          if (v8 >= v11)
          {
            goto LABEL_19;
          }

          v18 = *(v5 + i);
          v17 = *(v5 + 32 + 16 * v8);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10003A830(v5);
            v5 = v16;
          }

          v13 = v5 + 16 * v8;
          v14 = *(v13 + 32);
          *(v13 + 32) = v18;
          result = swift_unknownObjectRelease();
          if (v9 >= *(v5 + 16))
          {
            goto LABEL_20;
          }

          v15 = *(v5 + i);
          *(v5 + i) = v17;
          result = swift_unknownObjectRelease();
          *a1 = v5;
        }

        ++v8;
      }

      ++v9;
    }

    goto LABEL_4;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10003A78C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = (a1 + 32); ; i += 2)
  {
    if (*(a1 + 16) == v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }

    ++v2;
  }

  v4 = v2;
LABEL_7:
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_10003A844(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100056A84(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10005FE74((v9 + 24 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10003A928(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100056A6C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  sub_1000228D4(&qword_10008E208, &qword_10006CC68);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10001EFDC((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for BackendGroup.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10003AAC4()
{
  result = qword_10008F038;
  if (!qword_10008F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F038);
  }

  return result;
}