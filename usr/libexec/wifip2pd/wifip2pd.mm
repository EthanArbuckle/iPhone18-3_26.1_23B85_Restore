uint64_t sub_100001F20(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, const char *a7, uint64_t (*a8)(uint64_t, void, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a1;
  sub_100001FCC(a3, a6, v14, a7, a8);
}

uint64_t sub_100001FCC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(uint64_t, void, uint64_t, uint64_t))
{
  v37 = a5;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v16 = *v15;
  *v14 = *v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v18)
  {
    v36 = a4;
    v20 = v5;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = a3;
      v35 = a2;
      v26 = v25;
      v38 = v25;
      *v23 = 138412546;
      v27 = *&v20[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
      *(v23 + 4) = v27;
      *v24 = v27;
      *(v23 + 12) = 2080;
      v28 = v27;
      v29 = WiFiP2PSPITransactionType.description.getter(a1);
      v31 = sub_100002320(v29, v30, &v38);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, v36, v23, 0x16u);
      sub_10000BB28(v24);

      sub_100002A00(v26);
      a3 = v34;
      a2 = v35;
    }

    v32 = *&v20[qword_100594ED0];
    return v37(a1, *&v20[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session], a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *OS_dispatch_queue.p2p.unsafeMutableAddressor()
{
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  return &static OS_dispatch_queue.p2p;
}

uint64_t sub_100002320(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000028FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100002B30(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100002A00(v11);
  return v7;
}

unint64_t WiFiP2PSPITransactionType.description.getter(uint64_t a1)
{
  result = 0x6B63696B65646953;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 11:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x726F462053544143;
      break;
    case 3:
      result = 0x6361422053544143;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x2079616C50726143;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7265666E6F435641;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x4620657669746341;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD000000000000027;
      break;
    case 17:
      result = 0xD000000000000022;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x6C5020616964654DLL;
      break;
    default:
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      v4._countAndFlagsBits = 41;
      v4._object = 0xE100000000000000;
      String.append(_:)(v4);
      result = 0x286E776F6E6B6E55;
      break;
  }

  return result;
}

void *sub_100002728(uint64_t a1, uint64_t a2)
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

  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100002798(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000027E4(a1, a2);
  sub_100002A4C(&off_100550FD0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000027E4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100002728(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_1000028FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100002798(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_100002A00(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002A4C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_10005DD54(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100002B30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

uint64_t sub_100002BFC(unsigned int a1, _BYTE *a2, unsigned int a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t), uint64_t a5, void *a6, uint64_t a7)
{
  v13 = *(type metadata accessor for Data.Deallocator() - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin();
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3 || !a2)
  {
    return a4(a1, 0, 0xC000000000000000);
  }

  if (a6)
  {
    v18 = a3;
    if (a7 - a6 >= a3)
    {
      v19 = v15;
      memcpy(a6, a2, a3);
      (*(v13 + 104))(v17, enum case for Data.Deallocator.none(_:), v19);
      v20 = sub_100002DE8(a6, a3, v17);
      v22 = v21;
      a4(a1, v20, v21);
      return sub_1000124C8(v20, v22);
    }
  }

  else
  {
    v18 = a3;
  }

  v24 = a1;
  v25 = sub_1002AAFAC(a2, v18);
  v27 = v26;
  a4(v24, v25, v26);

  return sub_1000124C8(v25, v27);
}

uint64_t sub_100002DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    v11 = type metadata accessor for __DataStorage();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == enum case for Data.Deallocator.none(_:))
    {
      v15 = __DataStorage._capacity.modify();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_100003020(v14, a2);
  }

  else
  {
    v17 = Data.Deallocator._deallocator.getter();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_100003020(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = __DataStorage._length.getter();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_10000AD84(v3, v7);

  return v8;
}

uint64_t sub_100003124(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = *(type metadata accessor for DriverEvent(0) - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032A0();
  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = &v9[(*(v5 + 80) + 32) & ~*(v5 + 80)];
    v12 = *(v5 + 72);
    do
    {
      sub_10001251C(v11, v8, type metadata accessor for DriverEvent);
      a4(v8);
      sub_100012468(v8, type metadata accessor for DriverEvent);
      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

char *sub_1000032A0()
{
  v0 = __chkstk_darwin();
  v634 = v2;
  v635 = v1;
  v3 = v0;
  v619 = type metadata accessor for DNSRecords.SRV();
  v4 = *(*(v619 - 8) + 64);
  __chkstk_darwin();
  v617 = &v597 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v618 = &v597 - v6;
  v7 = *(*(sub_10005DC58(&qword_10058C7E0, &unk_100486B30) - 8) + 64);
  __chkstk_darwin();
  v623 = &v597 - v8;
  v9 = type metadata accessor for AWDLActionFrame.Header(0);
  v621 = *(v9 - 8);
  v622 = v9;
  v10 = *(v621 + 64);
  __chkstk_darwin();
  v620 = &v597 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_10005DC58(&qword_10058C7E8, &unk_100481FF0) - 8) + 64);
  __chkstk_darwin();
  v627 = &v597 - v13;
  v14 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  v625 = *(v14 - 8);
  v626 = v14;
  v15 = *(v625 + 64);
  __chkstk_darwin();
  v624 = &v597 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v633.i64[0] = type metadata accessor for Logger();
  *&v632 = *(v633.i64[0] - 8);
  v17 = *(v632 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  *&v629 = &v597 - v18;
  __chkstk_darwin();
  *&v628 = &v597 - v19;
  __chkstk_darwin();
  v21 = &v597 - v20;
  __chkstk_darwin();
  v23 = &v597 - v22;
  __chkstk_darwin();
  v25 = &v597 - v24;
  __chkstk_darwin();
  v27 = &v597 - v26;
  __chkstk_darwin();
  v29 = &v597 - v28;
  __chkstk_darwin();
  v31 = &v597 - v30;
  __chkstk_darwin();
  __chkstk_darwin();
  v33 = &v597 - v32;
  __chkstk_darwin();
  *&v631 = &v597 - v34;
  __chkstk_darwin();
  v46 = &v597 - v45;
  result = _swiftEmptyArrayStorage;
  *&v630 = v3;
  switch(v3)
  {
    case 1:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v48 = *(type metadata accessor for DriverEvent(0) - 8);
      v49 = *(v48 + 72);
      v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      v52 = v51 + v50;
      *v52 = 0u;
      *(v52 + 16) = 0u;
      *(v52 + 25) = 0u;
      goto LABEL_110;
    case 2:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v242 = *(type metadata accessor for DriverEvent(0) - 8);
      v243 = *(v242 + 72);
      v244 = (*(v242 + 80) + 32) & ~*(v242 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      v52 = v51 + v244;
      v245 = 2;
      goto LABEL_109;
    case 3:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v300 = *(type metadata accessor for DriverEvent(0) - 8);
      v301 = *(v300 + 72);
      v302 = (*(v300 + 80) + 32) & ~*(v300 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      v52 = v51 + v302;
      v245 = 3;
      goto LABEL_109;
    case 9:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000ADFA4(v56, v57, v893);
      if (sub_1000B2340(v893) == 1)
      {
        goto LABEL_213;
      }

      memcpy(v892, v893, 0x1D4uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v293 = *(type metadata accessor for DriverEvent(0) - 8);
      v294 = *(v293 + 72);
      v295 = (*(v293 + 80) + 32) & ~*(v293 + 80);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_100480F40;
      v296 = &v33[v295];
      *v296 = sub_100113168();
      *(v296 + 1) = v298;
      *(v296 + 2) = v299;
      *(v296 + 3) = v297;
      v296[41] = 4;
      goto LABEL_131;
    case 11:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v350 = *(type metadata accessor for DriverEvent(0) - 8);
      v351 = *(v350 + 72);
      v352 = (*(v350 + 80) + 32) & ~*(v350 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      v52 = v51 + v352;
      v245 = 1;
LABEL_109:
      *v52 = v245;
      *(v52 + 24) = 0u;
      *(v52 + 8) = 0u;
      *(v52 + 40) = 0;
LABEL_110:
      *(v52 + 41) = 10;
      swift_storeEnumTagMultiPayload();
      return v51;
    case 46:
    case 65:
    case 195:
    case 235:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v347 = *(type metadata accessor for DriverEvent(0) - 8);
      v348 = *(v347 + 72);
      v349 = (*(v347 + 80) + 32) & ~*(v347 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_125;
    case 47:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_10004B588(v56, v57, v893);
      if (BYTE4(v893[4]))
      {
        goto LABEL_213;
      }

      if (DWORD2(v893[0]) != 1)
      {
        goto LABEL_217;
      }

      v189.i32[0] = v893[0];
      v633 = vmovl_u8(v189);
      v190 = BYTE4(v893[0]);
      v191 = BYTE5(v893[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v192 = *(type metadata accessor for DriverEvent(0) - 8);
      v193 = *(v192 + 72);
      v194 = (*(v192 + 80) + 32) & ~*(v192 + 80);
      v195 = swift_allocObject();
      *(v195 + 16) = xmmword_100480F40;
      v196 = v195 + v194;
      *v196 = vuzp1_s8(*v633.i8, *v633.i8).u32[0];
      *(v196 + 4) = v190;
      *(v196 + 5) = v191;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_179;
    case 48:
      v57 = v634;
      v197 = v634 >> 62;
      if ((v634 >> 62) > 1)
      {
        v56 = v635;
        if (v197 != 2)
        {
          sub_10000AB0C(v635, v634);
LABEL_213:
          v59 = v631;
          goto LABEL_214;
        }

        v512 = *(v635 + 16);
        v198 = v512 + 72;
        v59 = v631;
        if (__OFADD__(v512, 72))
        {
          goto LABEL_251;
        }

        v513 = *(v635 + 24);
      }

      else
      {
        v56 = v635;
        if (!v197)
        {
          v59 = v631;
          if ((v634 & 0xFF000000000000) >= 0x48000000000001)
          {
            v198 = 72;
            goto LABEL_228;
          }

LABEL_211:
          sub_10000AB0C(v56, v634);
          goto LABEL_214;
        }

        v198 = v635 + 72;
        v513 = v635 >> 32;
        v59 = v631;
      }

      if (v198 >= v513)
      {
        goto LABEL_211;
      }

      if (v197 == 2)
      {
        v534 = *(v56 + 16);
      }

      else
      {
        v534 = v56;
      }

      if (v198 >= v534)
      {
LABEL_228:
        sub_10000AB0C(v56, v634);
        v551 = Data._Representation.subscript.getter();
        v553 = v552;
        sub_100030E20(v551, v552, v892);
        sub_1000124C8(v551, v553);
        v893[2] = v892[2];
        v893[3] = v892[3];
        *&v893[4] = *&v892[4];
        v893[0] = v892[0];
        v893[1] = v892[1];
        v554 = v623;
        sub_100112D70(v623);
        if ((*(v621 + 48))(v554, 1, v622) == 1)
        {
          sub_100016290(v554, &qword_10058C7E0, &unk_100486B30);
LABEL_214:
          Logger.init(subsystem:category:)();
          sub_10000AB0C(v56, v57);
          v535 = Logger.logObject.getter();
          v536 = static os_log_type_t.error.getter();
          sub_1000124C8(v56, v57);
          if (os_log_type_enabled(v535, v536))
          {
            v537 = swift_slowAlloc();
            v538 = swift_slowAlloc();
            *&v894[0] = v538;
            *v537 = 134218242;
            *(v537 + 4) = v630;
            *(v537 + 12) = 2080;
            v539 = Data.hexString.getter(v56, v57);
            v541 = sub_100002320(v539, v540, v894);

            *(v537 + 14) = v541;
            _os_log_impl(&_mh_execute_header, v535, v536, "Failed to parse event[%ld]: %s", v537, 0x16u);
            sub_100002A00(v538);
          }

          (*(v632 + 8))(v59, v633.i64[0]);
LABEL_217:
          sub_1000124C8(v56, v57);
          return _swiftEmptyArrayStorage;
        }

        sub_100016DFC(v554, v620, type metadata accessor for AWDLActionFrame.Header);
        if (v197)
        {
          if (v197 == 2)
          {
            v560 = *(v56 + 16);
            v561 = __OFADD__(v560, v198);
            v198 += v560;
            if (!v561)
            {
              v562 = *(v56 + 24);
LABEL_243:
              if (v198 < v562)
              {
                v565 = sub_100033A48(v198, v56, v57);
                v567 = v566;
                v568 = sub_100033AA8(_swiftEmptyArrayStorage);
                v569 = type metadata accessor for BinaryDecoder();
                swift_allocObject();
                v570 = BinaryDecoder.init(data:userInfo:)(v565, v567, v568);
                *(&v892[1] + 1) = v569;
                *&v892[2] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
                *&v892[0] = v570;
                sub_10000AB0C(v565, v567);

                LOBYTE(v568) = sub_10003132C(v892);
                v572 = v571;
                v574 = v573;
                v576 = v575;

                sub_1000124C8(v565, v567);
                sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
                v577 = *(type metadata accessor for DriverEvent(0) - 8);
                v578 = *(v577 + 72);
                v579 = (*(v577 + 80) + 32) & ~*(v577 + 80);
                v580 = swift_allocObject();
                *(v580 + 16) = xmmword_100480F40;
                v581 = v580 + v579;
                v582 = *(sub_10005DC58(&qword_10058C7C8, &unk_100481FE0) + 48);
                *v581 = v568;
                *(v581 + 8) = v572;
                *(v581 + 16) = v574;
                *(v581 + 24) = v576;
                v583 = v620;
                sub_10001251C(v620, v580 + v579 + v582, type metadata accessor for AWDLActionFrame.Header);
                type metadata accessor for DriverEvent.AWDL(0);
                swift_storeEnumTagMultiPayload();
                swift_storeEnumTagMultiPayload();
                sub_1000124C8(v635, v57);
                sub_100012468(v583, type metadata accessor for AWDLActionFrame.Header);
                return v580;
              }

              sub_100012468(v620, type metadata accessor for AWDLActionFrame.Header);
              goto LABEL_214;
            }

            __break(1u);
          }

          else
          {
            v561 = __OFADD__(v198, v56);
            v198 += v56;
            if (!v561)
            {
              v562 = v56 >> 32;
              goto LABEL_243;
            }
          }

          __break(1u);
LABEL_255:
          __break(1u);
          JUMPOUT(0x10000A6D8);
        }

        v562 = BYTE6(v57);
        goto LABEL_243;
      }

      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      swift_once();
LABEL_199:
      LODWORD(v516) = static Channel.nanPrimary;
      LOBYTE(v517) = byte_10059B634;
      LOBYTE(v518) = byte_10059B635;
LABEL_222:
      v893[0] = *&v897[4];
      v893[1] = *&v897[20];
      v893[2] = *&v897[36];
      BYTE8(v893[3]) = v57;
      *&v893[3] = *&v897[52];
      *&v893[4] = v632;
      DWORD2(v893[4]) = v516;
      BYTE12(v893[4]) = v517;
      BYTE13(v893[4]) = v518;
      *&v893[5] = v633.i64[0];
      *(&v893[5] + 1) = v56 | (v631 << 32);
      sub_1000B24C8(v893);
      memcpy(&v33[v197], v893, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      sub_100016290(v892, &unk_10058C820, &qword_100482060);
      v364 = v634;
      v363 = v635;
LABEL_132:
      sub_1000124C8(v363, v364);
      return v33;
    case 49:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v275 = sub_1000ADEE8(v56, v57, sub_10003462C);
      v59 = v631;
      if ((v275 & 0x100000000) != 0)
      {
        goto LABEL_214;
      }

      v276 = v275;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v277 = *(type metadata accessor for DriverEvent(0) - 8);
      v278 = *(v277 + 72);
      v279 = (*(v277 + 80) + 32) & ~*(v277 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      *(v72 + v279) = v276 == 1;
      goto LABEL_155;
    case 55:
      v246 = v44;
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000ADDC4(v56, v57, v893);
      if (sub_1000B235C(v893) == 1)
      {
        goto LABEL_213;
      }

      v247 = v893[1];
      if (!DWORD2(v893[0]) || LODWORD(v893[1]) != -528345085)
      {
        Logger.init(subsystem:category:)();
        v542 = Logger.logObject.getter();
        v543 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v542, v543))
        {
          v544 = swift_slowAlloc();
          v545 = swift_slowAlloc();
          *&v892[0] = v545;
          *v544 = 136315394;
          *(v544 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v892);
          *(v544 + 12) = 1024;
          *(v544 + 14) = v247;
          _os_log_impl(&_mh_execute_header, v542, v543, "nan_event: %s APPLE80211_M_DRIVER_AVAILABLE with powerOn false %d", v544, 0x12u);
          sub_100002A00(v545);
        }

        (*(v632 + 8))(v246, v633.i64[0]);
        goto LABEL_217;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v248 = *(type metadata accessor for DriverEvent(0) - 8);
      v249 = *(v248 + 72);
      v250 = (*(v248 + 80) + 32) & ~*(v248 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      *(v51 + v250) = 4;
LABEL_187:
      swift_storeEnumTagMultiPayload();
      v173 = v56;
      v174 = v57;
LABEL_188:
      sub_1000124C8(v173, v174);
      return v51;
    case 59:
    case 224:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v53 = *(type metadata accessor for DriverEvent(0) - 8);
      v54 = *(v53 + 72);
      v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      swift_storeEnumTagMultiPayload();
      return v51;
    case 66:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000AE074(v56, v57, v892);
      if (BYTE8(v892[1]))
      {
        goto LABEL_213;
      }

      v633.i64[0] = *&v892[1];
      v142 = *(&v892[0] + 1);
      v143 = *&v892[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v144 = *(type metadata accessor for DriverEvent(0) - 8);
      v145 = *(v144 + 72);
      v146 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_100480F40;
      v148 = v147 + v146;
      sub_100113290(v143, v142, v633.i64[0], v893);
      v149 = BYTE8(v893[2]);
      *v148 = LOWORD(v893[0]);
      *(v148 + 8) = *(v893 + 8);
      *(v148 + 24) = *(&v893[1] + 8);
      *(v148 + 40) = v149;
      *(v148 + 41) = 5;
      goto LABEL_58;
    case 67:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v381 = *(type metadata accessor for DriverEvent(0) - 8);
      v382 = *(v381 + 72);
      v383 = (*(v381 + 80) + 32) & ~*(v381 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      *(v51 + v383) = 1;
      goto LABEL_124;
    case 68:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v280 = *(type metadata accessor for DriverEvent(0) - 8);
      v281 = *(v280 + 72);
      v282 = (*(v280 + 80) + 32) & ~*(v280 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      *(v51 + v282) = 0;
LABEL_124:
      type metadata accessor for DriverEvent.AWDL(0);
LABEL_125:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      return v51;
    case 74:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000AE140(v56, v57, v893);
      if (BYTE8(v893[6]))
      {
        goto LABEL_213;
      }

      v283 = WORD2(v893[0]);
      v284 = v893[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v285 = *(type metadata accessor for DriverEvent(0) - 8);
      v286 = *(v285 + 72);
      v287 = (*(v285 + 80) + 32) & ~*(v285 + 80);
      v195 = swift_allocObject();
      *(v195 + 16) = xmmword_100480F40;
      v288 = v195 + v287;
      v289 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v284 & 0x1FF);
      if (v289 == 55)
      {
        v290 = 1;
      }

      else
      {
        v290 = v289;
      }

      v291 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v283 & 0x1FF);
      if (v291 == 34)
      {
        v292 = 1;
      }

      else
      {
        v292 = v291;
      }

      *v288 = v290 | (v292 << 8);
      *(v288 + 8) = 0u;
      *(v288 + 24) = 0u;
      *(v288 + 40) = 1792;
      goto LABEL_180;
    case 78:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v365 = sub_1000AE22C(v56, v57, sub_1002AB53C);
      v59 = v631;
      if (v366)
      {
        goto LABEL_214;
      }

      v367 = v365;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v368 = *(type metadata accessor for DriverEvent(0) - 8);
      v369 = *(v368 + 72);
      v370 = (*(v368 + 80) + 32) & ~*(v368 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_100480F40;
      v371 = v63 + v370;
      v372 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v367 & 0x1FF);
      if (v372 == 55)
      {
        v373 = 1;
      }

      else
      {
        v373 = v372;
      }

      v374 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(WORD2(v367) & 0x1FF);
      if (v374 == 34)
      {
        v375 = 1;
      }

      else
      {
        v375 = v374;
      }

      *v371 = v373 | (v375 << 8);
      *(v371 + 8) = 0u;
      *(v371 + 24) = 0u;
      *(v371 + 40) = 1536;
      goto LABEL_151;
    case 82:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v331 = sub_1000AE2D8(v56, v57, sub_1002AB588);
      v59 = v631;
      if ((v332 & 0x100000000) != 0)
      {
        goto LABEL_214;
      }

      v333 = v332;
      v334 = HIDWORD(v331);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v335 = *(type metadata accessor for DriverEvent(0) - 8);
      v336 = *(v335 + 72);
      v337 = (*(v335 + 80) + 32) & ~*(v335 + 80);
      v195 = swift_allocObject();
      *(v195 + 16) = xmmword_100480F40;
      v338 = v195 + v337;
      *v338 = sub_100032064(v334, v333) & 0xFFFFFFFFFFFFLL;
      *(v338 + 8) = 0u;
      *(v338 + 24) = 0u;
      *(v338 + 40) = 2048;
      goto LABEL_180;
    case 95:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v396 = Logger.logObject.getter();
      v397 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v396, v397))
      {
        v398 = swift_slowAlloc();
        v399 = swift_slowAlloc();
        *&v893[0] = v399;
        *v398 = 136315138;
        *(v398 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v396, v397, "nan_event: %s APPLE80211_M_NAN_DEVICE_ROLE_CHANGED", v398, 0xCu);
        sub_100002A00(v399);
      }

      (*(v632 + 8))(v33, v633.i64[0]);
      v59 = v631;
      v400 = sub_1000AD250(v56, v57);
      if ((v401 & 0x100000000) != 0)
      {
        goto LABEL_214;
      }

      v402 = v400;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v403 = *(type metadata accessor for DriverEvent(0) - 8);
      v404 = *(v403 + 72);
      v405 = (*(v403 + 80) + 32) & ~*(v403 + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_100480F40;
      LOBYTE(v893[0]) = sub_100112350(v402);
      *(&v893[0] + 1) = v406;
      sub_1000B2580(v893);
      memcpy((v103 + v405), v893, 0x16AuLL);
      goto LABEL_139;
    case 97:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        *&v893[0] = v202;
        *v201 = 136315138;
        *(v201 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v199, v200, "nan_event: %s APPLE80211_M_NAN_CLUSTER_CHANGED", v201, 0xCu);
        sub_100002A00(v202);
      }

      (*(v632 + 8))(v46, v633.i64[0]);
      v59 = v631;
      v203 = sub_10000AE64(v56, v57, sub_100012368);
      if ((v203 & 0x1000000000000) != 0)
      {
        goto LABEL_214;
      }

      v204 = v203 >> 8;
      v205 = v203 >> 16;
      v206 = v203 >> 24;
      v207 = HIDWORD(v203);
      v633.i64[0] = v203 >> 40;
      v208 = v203;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v209 = *(type metadata accessor for DriverEvent(0) - 8);
      v210 = *(v209 + 72);
      v211 = v57;
      v212 = (*(v209 + 80) + 32) & ~*(v209 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      LOBYTE(v893[0]) = v208;
      BYTE1(v893[0]) = v204;
      BYTE2(v893[0]) = v205;
      BYTE3(v893[0]) = v206;
      BYTE4(v893[0]) = v207;
      BYTE5(v893[0]) = v633.i8[0];
      sub_1000B258C(v893);
      memcpy((v51 + v212), v893, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v173 = v635;
      v174 = v211;
      goto LABEL_188;
    case 98:
      swift_getKeyPath();
      swift_getKeyPath();
      v392 = v634;
      v393 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000ACEA4(v393, v392, v892);

      v394 = DWORD2(v892[0]);
      v395 = HIDWORD(v892[0]);
      v56 = DWORD2(v892[1]);
      *v897 = *(&v892[1] + 12);
      *&v897[16] = *(&v892[2] + 12);
      *&v897[32] = *(&v892[3] + 12);
      *&v897[44] = *(&v892[4] + 8);
      LOBYTE(v57) = BYTE8(v892[5]);
      if (BYTE8(v892[5]) == 252)
      {
        v57 = v634;
        v56 = v635;
        goto LABEL_213;
      }

      *&v631 = DWORD1(v892[1]);
      *&v632 = SLODWORD(v892[0]);
      v633.i64[0] = LOBYTE(v892[1]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v514 = *(type metadata accessor for DriverEvent(0) - 8);
      v515 = *(v514 + 72);
      v197 = (*(v514 + 80) + 32) & ~*(v514 + 80);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_100480F40;
      v894[2] = v892[2];
      v894[3] = v892[3];
      v894[4] = v892[4];
      *(&v894[4] + 9) = *(&v892[4] + 9);
      v894[0] = v892[0];
      v894[1] = v892[1];
      sub_100012400(v894, v893, &qword_10058C818, &qword_100482058);
      v516 = sub_100032064(v394, v395);
      if ((v516 & 0xFF00000000) != 0x300000000)
      {
        v517 = HIDWORD(v516);
        v518 = v516 >> 40;
        goto LABEL_222;
      }

      if (qword_10058AAA8 != -1)
      {
        goto LABEL_252;
      }

      goto LABEL_199;
    case 99:
      v57 = v634;
      v56 = v635;
      v92 = v39;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v893[0] = v96;
        *v95 = 136315138;
        *(v95 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v93, v94, "nan_event: %s APPLE80211_M_NAN_FOLLOW_UP_TX_COMPLETE", v95, 0xCu);
        sub_100002A00(v96);
      }

      (*(v632 + 8))(v92, v633.i64[0]);
      sub_1000AD4B0(v56, v57, v892);
      v59 = v631;
      if (BYTE4(v892[1]))
      {
        goto LABEL_214;
      }

      v97 = v892[1];
      v98 = *(&v892[0] + 1);
      v99 = v892[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v100 = *(type metadata accessor for DriverEvent(0) - 8);
      v101 = *(v100 + 72);
      v102 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_100480F40;
      *&v893[0] = sub_100112548(v99, v98, v97);
      BYTE8(v893[0]) = v104;
      sub_1000B24D4(v893);
      memcpy((v103 + v102), v893, 0x16AuLL);
      goto LABEL_139;
    case 100:
      v175 = v35;
      swift_getKeyPath();
      swift_getKeyPath();
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000AC8BC(v56, v57, sub_1002AB5D4, v892);

      if (!*&v892[2])
      {
        goto LABEL_213;
      }

      v626 = *&v892[2];
      v625 = *(&v892[0] + 1);
      v176 = *&v892[0];
      v177 = *&v892[0] >> 24;
      v178 = HIBYTE(*&v892[0]);
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v179 = swift_allocObject();
      *(v179 + 16) = xmmword_1004817D0;
      *(v179 + 56) = &type metadata for UInt8;
      *(v179 + 64) = &protocol witness table for UInt8;
      v627 = v176 >> 16;
      *&v628 = v176 >> 24;
      *(v179 + 32) = BYTE2(v176);
      *(v179 + 96) = &type metadata for UInt8;
      *(v179 + 104) = &protocol witness table for UInt8;
      *(v179 + 72) = v177;
      *(v179 + 136) = &type metadata for UInt8;
      *(v179 + 144) = &protocol witness table for UInt8;
      *&v629 = HIDWORD(v176);
      *(v179 + 112) = BYTE4(v176);
      *(v179 + 176) = &type metadata for UInt8;
      *(v179 + 184) = &protocol witness table for UInt8;
      *&v630 = v176 >> 40;
      *(v179 + 152) = BYTE5(v176);
      *(v179 + 216) = &type metadata for UInt8;
      *(v179 + 224) = &protocol witness table for UInt8;
      *&v631 = HIWORD(v176);
      *(v179 + 192) = BYTE6(v176);
      *(v179 + 256) = &type metadata for UInt8;
      *(v179 + 264) = &protocol witness table for UInt8;
      *(v179 + 232) = v178;
      v180 = String.init(format:_:)();
      v182 = v181;
      v183 = v175;
      Logger.init(subsystem:category:)();

      v184 = Logger.logObject.getter();
      v185 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v624 = HIBYTE(v176);
        *&v893[0] = v187;
        *v186 = 136315394;
        *(v186 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        *(v186 + 12) = 2080;
        v188 = sub_100002320(v180, v182, v893);

        *(v186 + 14) = v188;
        _os_log_impl(&_mh_execute_header, v184, v185, "nan_event: %s APPLE80211_M_NAN_DISCOVERY_RESULT_RECEIVED from %s", v186, 0x16u);
        swift_arrayDestroy();
        LOBYTE(v178) = v624;
      }

      else
      {
      }

      (*(v632 + 8))(v183, v633.i64[0]);
      v531 = v626;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v532 = *(type metadata accessor for DriverEvent(0) - 8);
      v533 = *(v532 + 72);
      v432 = (*(v532 + 80) + 32) & ~*(v532 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      LOWORD(v893[0]) = v176;
      BYTE2(v893[0]) = v627;
      BYTE3(v893[0]) = v628;
      BYTE4(v893[0]) = v629;
      BYTE5(v893[0]) = v630;
      BYTE6(v893[0]) = v631;
      BYTE7(v893[0]) = v178;
      *(&v893[0] + 1) = v625;
      *&v893[1] = v531;
      sub_1000B2574(v893);
      goto LABEL_204;
    case 102:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&v893[0] = v120;
        *v119 = 136315138;
        *(v119 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v117, v118, "nan_event: %s APPLE80211_M_NAN_PUBLISH_REPLIED_PRIVATE", v119, 0xCu);
        sub_100002A00(v120);
      }

      (*(v632 + 8))(v31, v633.i64[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000AB1E8(v56, v57, v892);

      v121 = *&v892[2];
      v59 = v631;
      if (!*&v892[2])
      {
        goto LABEL_214;
      }

      v122 = v892[0];
      v123 = *&v892[0] >> 8;
      v633.i64[0] = SBYTE8(v892[0]);
      v124 = *&v892[0] >> 16;
      *&v629 = *&v892[0] >> 24;
      *&v630 = HIDWORD(*&v892[0]);
      *&v631 = *&v892[0] >> 40;
      *&v632 = HIWORD(*&v892[0]);
      v125 = HIBYTE(*&v892[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v126 = *(type metadata accessor for DriverEvent(0) - 8);
      v127 = *(v126 + 72);
      v128 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      LOBYTE(v893[0]) = v122;
      BYTE1(v893[0]) = v125;
      BYTE2(v893[0]) = v123;
      BYTE3(v893[0]) = v124;
      BYTE4(v893[0]) = v629;
      BYTE5(v893[0]) = v630;
      BYTE6(v893[0]) = v631;
      BYTE7(v893[0]) = v632;
      *(&v893[0] + 1) = v633.i64[0];
      *&v893[1] = v121;
      sub_1000B2568(v893);
      memcpy((v72 + v128), v893, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v129 = v56;
      v130 = v634;
      goto LABEL_206;
    case 104:
      v57 = v634;
      v56 = v635;
      v251 = v41;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v252 = Logger.logObject.getter();
      v253 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v252, v253))
      {
        v254 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        *&v893[0] = v255;
        *v254 = 136315138;
        *(v254 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v252, v253, "nan_event: %s APPLE80211_M_NAN_PUBLISH_TERMINATED", v254, 0xCu);
        sub_100002A00(v255);
      }

      (*(v632 + 8))(v251, v633.i64[0]);
      v59 = v631;
      v256 = sub_100028650(v56, v57, sub_1000285B8);
      if ((v256 & 0x10000) != 0)
      {
        goto LABEL_214;
      }

      v257 = v256;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v258 = *(type metadata accessor for DriverEvent(0) - 8);
      v259 = *(v258 + 72);
      v114 = (*(v258 + 80) + 32) & ~*(v258 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      LOBYTE(v893[0]) = sub_10011AFE0(v257);
      *(&v893[0] + 1) = v260;
      LOBYTE(v893[1]) = v261;
      sub_1000B24EC(v893);
      goto LABEL_73;
    case 105:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v105 = v629;
      Logger.init(subsystem:category:)();
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *&v893[0] = v109;
        *v108 = 136315138;
        *(v108 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v106, v107, "nan_event: %s APPLE80211_M_NAN_SUBSCRIBE_TERMINATED", v108, 0xCu);
        sub_100002A00(v109);
      }

      (*(v632 + 8))(v105, v633.i64[0]);
      v59 = v631;
      v110 = sub_100028650(v56, v57, sub_1000285B8);
      if ((v110 & 0x10000) != 0)
      {
        goto LABEL_214;
      }

      v111 = v110;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v112 = *(type metadata accessor for DriverEvent(0) - 8);
      v113 = *(v112 + 72);
      v114 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      LOBYTE(v893[0]) = sub_10011AFE0(v111);
      *(&v893[0] + 1) = v115;
      LOBYTE(v893[1]) = v116;
      sub_1000B24F8(v893);
LABEL_73:
      memcpy((v72 + v114), v893, 0x16AuLL);
      goto LABEL_155;
    case 106:
      v57 = v634;
      v56 = v635;
      v420 = v40;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v421 = Logger.logObject.getter();
      v422 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v421, v422))
      {
        v423 = swift_slowAlloc();
        v424 = swift_slowAlloc();
        *&v893[0] = v424;
        *v423 = 136315138;
        *(v423 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v421, v422, "nan_event: %s APPLE80211_M_NAN_FOLLOW_UP_RECEIVED", v423, 0xCu);
        sub_100002A00(v424);
      }

      (*(v632 + 8))(v420, v633.i64[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000AC8BC(v56, v57, sub_1002AB5D4, v892);

      v425 = *&v892[2];
      v59 = v631;
      if (!*&v892[2])
      {
        goto LABEL_214;
      }

      v426 = v892[0];
      *&v629 = *&v892[0] >> 8;
      v633.i64[0] = SBYTE8(v892[0]);
      v427 = *&v892[0] >> 16;
      v428 = *&v892[0] >> 24;
      v429 = HIDWORD(*&v892[0]);
      *&v630 = *&v892[0] >> 40;
      *&v631 = HIWORD(*&v892[0]);
      *&v632 = HIBYTE(*&v892[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v430 = *(type metadata accessor for DriverEvent(0) - 8);
      v431 = *(v430 + 72);
      v432 = (*(v430 + 80) + 32) & ~*(v430 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      LOBYTE(v893[0]) = v426;
      BYTE1(v893[0]) = v629;
      BYTE2(v893[0]) = v427;
      BYTE3(v893[0]) = v428;
      BYTE4(v893[0]) = v429;
      BYTE5(v893[0]) = v630;
      BYTE6(v893[0]) = v631;
      BYTE7(v893[0]) = v632;
      *(&v893[0] + 1) = v633.i64[0];
      *&v893[1] = v425;
      sub_1000B24E0(v893);
LABEL_204:
      memcpy((v72 + v432), v893, 0x16AuLL);
      goto LABEL_205;
    case 112:
      v56 = v635;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v407 = Logger.logObject.getter();
      v408 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v407, v408))
      {
        v409 = swift_slowAlloc();
        v410 = swift_slowAlloc();
        *&v893[0] = v410;
        *v409 = 136315138;
        *(v409 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v407, v408, "nan_event: %s APPLE80211_M_NAN_DP_REQ_RECVD", v409, 0xCu);
        sub_100002A00(v410);
      }

      (*(v632 + 8))(v29, v633.i64[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      v57 = v634;
      sub_1000AB7CC(v56, v634, v892);

      v411 = *(&v892[1] + 1);
      v59 = v631;
      if (!*(&v892[1] + 1))
      {
        goto LABEL_214;
      }

      v412 = BYTE8(v892[0]);
      v413 = v892[0];
      v414 = *&v892[0] >> 8;
      v415 = *&v892[0] >> 24;
      v416 = HIDWORD(*&v892[0]);
      v625 = *&v892[0] >> 40;
      v626 = HIWORD(*&v892[0]);
      v627 = HIBYTE(*&v892[0]);
      *&v628 = *(&v892[0] + 1) >> 8;
      *&v629 = *(&v892[0] + 1) >> 16;
      *&v630 = *(&v892[0] + 1) >> 24;
      *&v631 = HIDWORD(*(&v892[0] + 1));
      *&v632 = *(&v892[0] + 1) >> 40;
      v633.i64[0] = HIWORD(*(&v892[0] + 1));
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v417 = *(type metadata accessor for DriverEvent(0) - 8);
      v418 = *(v417 + 72);
      v419 = (*(v417 + 80) + 32) & ~*(v417 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      LOBYTE(v893[0]) = v413;
      BYTE1(v893[0]) = v414;
      BYTE2(v893[0]) = v415;
      BYTE3(v893[0]) = v416;
      BYTE4(v893[0]) = v625;
      BYTE5(v893[0]) = v626;
      BYTE6(v893[0]) = v627;
      BYTE7(v893[0]) = v412;
      BYTE8(v893[0]) = v628;
      BYTE9(v893[0]) = v629;
      BYTE10(v893[0]) = v630;
      BYTE11(v893[0]) = v631;
      BYTE12(v893[0]) = v632;
      BYTE13(v893[0]) = v633.i8[0];
      *&v893[1] = v411;
      sub_1000B255C(v893);
      memcpy((v72 + v419), v893, 0x16AuLL);
LABEL_205:
      swift_storeEnumTagMultiPayload();
      v130 = v634;
      v129 = v635;
      goto LABEL_206;
    case 113:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *&v893[0] = v153;
        *v152 = 136315138;
        *(v152 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v150, v151, "nan_event: %s APPLE80211_M_NAN_DP_RSP_RECVD", v152, 0xCu);
        sub_100002A00(v153);
      }

      (*(v632 + 8))(v27, v633.i64[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000ABD74(v56, v57, v892);

      v154 = *(&v892[1] + 1);
      v59 = v631;
      if (!*(&v892[1] + 1))
      {
        goto LABEL_214;
      }

      v155 = v892[1];
      v156 = *&v892[1] >> 8;
      v157 = *&v892[1] >> 16;
      v633.i64[0] = *&v892[1] >> 24;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v158 = *(type metadata accessor for DriverEvent(0) - 8);
      v159 = *(v158 + 72);
      v160 = (*(v158 + 80) + 32) & ~*(v158 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      v161 = vdupq_lane_s64(*&v892[0], 0);
      LOBYTE(v893[0]) = v892[0];
      *(v893 + 1) = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v161, xmmword_1004817A0), vshlq_u64(v161, xmmword_100481790)), vuzp1q_s32(vshlq_u64(v161, xmmword_1004817C0), vshlq_u64(v892[0], xmmword_1004817B0))));
      BYTE9(v893[0]) = HIBYTE(v892[0]);
      BYTE10(v893[0]) = v155;
      BYTE11(v893[0]) = v156;
      BYTE12(v893[0]) = v157;
      BYTE13(v893[0]) = v633.i8[0];
      *(v893 + 14) = DWORD2(v892[0]);
      WORD1(v893[1]) = WORD6(v892[0]);
      *(&v893[1] + 1) = v154;
      sub_1000B2550(v893);
      memcpy((v72 + v160), v893, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v129 = v635;
      goto LABEL_156;
    case 114:
      v57 = v634;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v213, v214))
      {
        v215 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        *&v893[0] = v216;
        *v215 = 136315138;
        *(v215 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v213, v214, "nan_event: %s APPLE80211_M_NAN_DP_CONFIRM_RECVD", v215, 0xCu);
        sub_100002A00(v216);
      }

      (*(v632 + 8))(v25, v633.i64[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      v56 = v635;
      sub_1000AC324(v635, v57, v892);

      v217 = *&v892[1];
      v59 = v631;
      if (!*&v892[1])
      {
        goto LABEL_214;
      }

      v218 = *(&v892[0] + 1);
      v219 = v892[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v220 = *(type metadata accessor for DriverEvent(0) - 8);
      v221 = *(v220 + 72);
      v222 = (*(v220 + 80) + 32) & ~*(v220 + 80);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_100480F40;
      v223 = sub_100112384(v217, v219, v218);
      v225 = v224;
      v227 = v226;

      *&v893[0] = v223;
      *(&v893[0] + 1) = v225;
      *&v893[1] = v227;
      sub_1000B2544(v893);
      memcpy((v147 + v222), v893, 0x16AuLL);
LABEL_58:
      swift_storeEnumTagMultiPayload();
      v228 = v56;
      v229 = v57;
      goto LABEL_63;
    case 117:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v303 = Logger.logObject.getter();
      v304 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v303, v304))
      {
        v305 = swift_slowAlloc();
        v306 = swift_slowAlloc();
        *&v893[0] = v306;
        *v305 = 136315138;
        *(v305 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v303, v304, "nan_event: %s APPLE80211_M_NAN_DP_ESTABLISHED", v305, 0xCu);
        sub_100002A00(v306);
      }

      (*(v632 + 8))(v23, v633.i64[0]);
      sub_1000AD30C(v56, v57, v893);
      v307 = sub_1000B251C(v893);
      v59 = v631;
      if (v307 == 1)
      {
        goto LABEL_214;
      }

      memcpy(v892, v893, 0x820uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v308 = *(type metadata accessor for DriverEvent(0) - 8);
      v309 = *(v308 + 72);
      v310 = (*(v308 + 80) + 32) & ~*(v308 + 80);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_100480F40;
      *&v894[0] = sub_1001123DC();
      DWORD2(v894[0]) = v311;
      WORD6(v894[0]) = v312;
      sub_1000B2538(v894);
      goto LABEL_130;
    case 118:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v230 = Logger.logObject.getter();
      v231 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        *&v893[0] = v233;
        *v232 = 136315138;
        *(v232 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v230, v231, "nan_event: %s APPLE80211_M_NAN_DP_END", v232, 0xCu);
        sub_100002A00(v233);
      }

      (*(v632 + 8))(v21, v633.i64[0]);
      sub_1000AD3DC(v56, v57, v892);
      v59 = v631;
      if (BYTE12(v892[1]))
      {
        goto LABEL_214;
      }

      v234 = BYTE8(v892[0]);
      v235 = *&v892[0];
      v236 = *(&v892[0] + 1) >> 8;
      *&v630 = *(&v892[0] + 1) >> 16;
      *&v631 = *(&v892[0] + 1) >> 24;
      *&v632 = HIDWORD(*(&v892[0] + 1));
      v633.i64[0] = *(&v892[0] + 1) >> 40;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v237 = *(type metadata accessor for DriverEvent(0) - 8);
      v238 = *(v237 + 72);
      v239 = (*(v237 + 80) + 32) & ~*(v237 + 80);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_100480F40;
      v240 = sub_10011463C(HIDWORD(v235));
      v241 = sub_10011465C(HIDWORD(v235));
      LOBYTE(v893[0]) = v235;
      BYTE1(v893[0]) = v234;
      BYTE2(v893[0]) = v236;
      BYTE3(v893[0]) = v630;
      BYTE4(v893[0]) = v631;
      BYTE5(v893[0]) = v632;
      WORD3(v893[0]) = v633.u8[0];
      *(&v893[0] + 1) = v240;
      LOBYTE(v893[1]) = v241;
      sub_1000B2510(v893);
      memcpy((v147 + v239), v893, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v229 = v634;
      v228 = v635;
LABEL_63:
      sub_1000124C8(v228, v229);
      return v147;
    case 122:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000AD710(v56, v57, v893);
      if (BYTE8(v893[4]))
      {
        goto LABEL_213;
      }

      v633.i64[0] = WORD1(v893[4]);
      v449 = LOWORD(v893[4]);
      v450 = DWORD1(v893[3]);
      v451 = LODWORD(v893[3]);
      v452 = HIDWORD(v893[3]);
      v453 = DWORD2(v893[3]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v454 = *(type metadata accessor for DriverEvent(0) - 8);
      v455 = *(v454 + 72);
      v456 = (*(v454 + 80) + 32) & ~*(v454 + 80);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_100480F40;
      v457 = v450 | (v451 << 32);
      v458 = sub_10003B238(v449);
      if ((v458 & 0xFF00000000) == 0x300000000)
      {
        if (qword_10058AAA8 != -1)
        {
          swift_once();
        }

        LODWORD(v458) = static Channel.nanPrimary;
        LOBYTE(v459) = byte_10059B634;
        LOBYTE(v460) = byte_10059B635;
      }

      else
      {
        v459 = HIDWORD(v458);
        v460 = v458 >> 40;
      }

      v546 = v634;
      v547 = v635;
      *&v893[0] = v633.i64[0];
      *(&v893[0] + 1) = v457;
      *&v893[1] = v452 | (v453 << 32);
      DWORD2(v893[1]) = v458;
      BYTE12(v893[1]) = v459;
      BYTE13(v893[1]) = v460;
      sub_1000B2488(v893);
      memcpy(&v33[v456], v893, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v363 = v547;
      v364 = v546;
      goto LABEL_132;
    case 124:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000AE398(v56, v57, v893);
      if (sub_1000B2318(v893) == 1)
      {
        goto LABEL_213;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v633.i64[0] = type metadata accessor for DriverEvent(0);
      v131 = *(*(v633.i64[0] - 8) + 72);
      v132 = (*(*(v633.i64[0] - 8) + 80) + 32) & ~*(*(v633.i64[0] - 8) + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      v133 = sub_100032064(DWORD1(v893[0]), DWORD2(v893[0]));
      v134 = sub_100032064(v893[1], DWORD1(v893[1]));
      if ((v134 & 0xFF00000000) == 0x300000000)
      {
        goto LABEL_255;
      }

      v135 = v134;
      v136 = HIDWORD(v134);
      v137 = v134 >> 40;
      v138 = HIDWORD(v893[1]) | (DWORD2(v893[1]) << 32);
      memcpy(v892, &v893[7], 0x290uLL);
      v631 = v893[3];
      v632 = v893[2];
      v629 = v893[5];
      v630 = v893[4];
      v628 = v893[6];
      v139 = sub_100119AF8(v892);
      WORD2(v894[0]) = WORD2(v133);
      LODWORD(v894[0]) = v133;
      DWORD2(v894[0]) = v135;
      BYTE12(v894[0]) = v136;
      BYTE13(v894[0]) = v137;
      *(&v894[1] + 8) = v632;
      *(&v894[2] + 8) = v631;
      *(&v894[3] + 8) = v630;
      *(&v894[4] + 8) = v629;
      *(&v894[5] + 8) = v628;
      *&v894[1] = v138;
      *(&v894[6] + 1) = v139;
      *&v894[7] = v140;
      *(&v894[7] + 1) = v141;
      sub_1000B2334(v894);
      memcpy((v51 + v132), v894, 0x16AuLL);
      goto LABEL_187;
    case 125:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_10000AF20(v56, v57, v893);
      v376 = sub_1000114C8(v893);
      v59 = v631;
      if (v376 == 1)
      {
        goto LABEL_214;
      }

      memcpy(v892, v893, 0x323uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v377 = *(type metadata accessor for DriverEvent(0) - 8);
      v378 = *(v377 + 72);
      v379 = (*(v377 + 80) + 32) & ~*(v377 + 80);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_100480F40;
      v380 = &v33[v379];
      *v380 = sub_1000114E4();
      *(v380 + 8) = 0u;
      *(v380 + 24) = 0u;
      *(v380 + 20) = 256;
      goto LABEL_131;
    case 126:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v444 = sub_100028650(v56, v57, sub_1000285B8);
      v59 = v631;
      if ((v444 & 0x10000) != 0)
      {
        goto LABEL_214;
      }

      v445 = v444;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v446 = *(type metadata accessor for DriverEvent(0) - 8);
      v447 = *(v446 + 72);
      v448 = (*(v446 + 80) + 32) & ~*(v446 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      v73 = v72 + v448;
      *v73 = v445;
      *(v73 + 24) = 0u;
      *(v73 + 8) = 0u;
      *(v73 + 40) = 0;
      v74 = 2;
      goto LABEL_154;
    case 127:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v78 = sub_1000AE2D8(v56, v57, sub_1002AB588);
      v59 = v631;
      if ((v79 & 0x100000000) != 0)
      {
        goto LABEL_214;
      }

      v80 = sub_100032064(HIDWORD(v78), v79);
      if ((v80 & 0xFF00000000) == 0x300000000)
      {
        goto LABEL_214;
      }

      v81 = v80;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v82 = *(type metadata accessor for DriverEvent(0) - 8);
      v83 = *(v82 + 72);
      v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      v73 = v72 + v84;
      *v73 = v81 & 0xFFFFFFFFFFFFLL;
      *(v73 + 24) = 0u;
      *(v73 + 8) = 0u;
      *(v73 + 40) = 0;
      v74 = 3;
      goto LABEL_154;
    case 129:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v320 = v628;
      Logger.init(subsystem:category:)();
      v321 = Logger.logObject.getter();
      v322 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v321, v322))
      {
        v323 = swift_slowAlloc();
        v324 = swift_slowAlloc();
        *&v893[0] = v324;
        *v323 = 136315138;
        *(v323 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v321, v322, "nan_event: %s APPLE80211_M_NAN_DP_HOST_ASSIST_REQUEST", v323, 0xCu);
        sub_100002A00(v324);
      }

      (*(v632 + 8))(v320, v633.i64[0]);
      sub_1000AD4B0(v56, v57, v892);
      v59 = v631;
      if (BYTE4(v892[1]))
      {
        goto LABEL_214;
      }

      v325 = *(&v892[0] + 1);
      v326 = v892[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v327 = *(type metadata accessor for DriverEvent(0) - 8);
      v328 = *(v327 + 72);
      v329 = (*(v327 + 80) + 32) & ~*(v327 + 80);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_100480F40;
      *&v893[0] = sub_10011243C(v326, v325);
      *(&v893[0] + 1) = v330;
      sub_1000B2504(v893);
      memcpy(&v33[v329], v893, 0x16AuLL);
      goto LABEL_131;
    case 142:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000AD8C4(v56, v57, v894);
      memcpy(v892, v894, 0x658uLL);
      if (sub_1000B242C(v892) == 1)
      {
        v76 = v625;
        v75 = v626;
        v77 = v627;
        (*(v625 + 56))(v627, 1, 1, v626);
      }

      else
      {
        memcpy(v893, v894, 0x658uLL);
        v77 = v627;
        sub_10011298C(v893, v627);
        v76 = v625;
        v75 = v626;
      }

      v507 = (*(v76 + 48))(v77, 1, v75);
      v59 = v631;
      if (v507 == 1)
      {
        sub_100016290(v77, &qword_10058C7E8, &unk_100481FF0);
        goto LABEL_214;
      }

      v508 = v624;
      sub_100016DFC(v77, v624, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v509 = *(type metadata accessor for DriverEvent(0) - 8);
      v510 = *(v509 + 72);
      v511 = (*(v509 + 80) + 32) & ~*(v509 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      sub_10001251C(v508, v51 + v511, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v56, v57);
      sub_100012468(v508, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      return v51;
    case 149:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000AD994(v56, v57, v894);
      v892[10] = v894[10];
      v892[11] = v894[11];
      v892[12] = v894[12];
      v892[6] = v894[6];
      v892[7] = v894[7];
      v892[8] = v894[8];
      v892[9] = v894[9];
      v892[2] = v894[2];
      v892[3] = v894[3];
      v892[4] = v894[4];
      v892[5] = v894[5];
      v892[0] = v894[0];
      v892[1] = v894[1];
      if (sub_1000B2410(v892) == 1)
      {
        goto LABEL_213;
      }

      v893[10] = v894[10];
      v893[11] = v894[11];
      v893[12] = v894[12];
      v893[6] = v894[6];
      v893[7] = v894[7];
      v893[8] = v894[8];
      v893[9] = v894[9];
      v893[2] = v894[2];
      v893[3] = v894[3];
      v893[4] = v894[4];
      v893[5] = v894[5];
      v893[0] = v894[0];
      v893[1] = v894[1];
      sub_100119410(v893, v897);
      v58 = v899;
      v59 = v631;
      if (!v899)
      {
        goto LABEL_214;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v60 = *(type metadata accessor for DriverEvent(0) - 8);
      v61 = *(v60 + 72);
      v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_100480F40;
      v64 = v63 + v62;
      v65 = v898;
      *(v64 + 48) = *&v897[48];
      *(v64 + 64) = v65;
      v66 = *&v897[32];
      *(v64 + 16) = *&v897[16];
      *(v64 + 32) = v66;
      *v64 = *v897;
      *(v64 + 80) = v58;
      *(v64 + 88) = v900;
      *(v64 + 104) = v901;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_150;
    case 157:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000AD7F4(v56, v57, v892);
      memcpy(v893, v892, sizeof(v893));
      if (sub_1000B2448(v893) == 1)
      {
        goto LABEL_213;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v633.i64[0] = type metadata accessor for DriverEvent(0);
      v162 = *(*(v633.i64[0] - 8) + 72);
      *&v632 = (*(*(v633.i64[0] - 8) + 80) + 32) & ~*(*(v633.i64[0] - 8) + 80);
      *&v631 = swift_allocObject();
      *(v631 + 16) = xmmword_100480F40;
      LODWORD(v619) = v893[0];
      LODWORD(v618) = BYTE4(v893[0]);
      LODWORD(v617) = BYTE5(v893[0]);
      LODWORD(v616) = BYTE6(v893[0]);
      LODWORD(v622) = LOBYTE(v893[1]);
      LODWORD(v621) = BYTE1(v893[1]);
      LODWORD(v620) = BYTE2(v893[1]);
      LODWORD(v625) = BYTE4(v893[2]);
      LODWORD(v624) = BYTE5(v893[2]);
      LODWORD(v623) = BYTE6(v893[2]);
      LODWORD(v626) = v893[3];
      *&v630 = *(&v893[11] + 1);
      *&v629 = *&v893[12];
      v627 = *(&v893[16] + 1);
      *&v628 = *&v893[16];
      v873 = *&v893[18];
      v875 = *(&v893[19] + 1);
      v877 = *&v893[21];
      v879 = *(&v893[22] + 1);
      v881 = *&v893[24];
      v883 = *(&v893[25] + 1);
      v885 = *&v893[27];
      v614 = *(&v893[12] + 1);
      v615 = *(&v893[13] + 1);
      v874 = *(&v893[18] + 8);
      v876 = v893[20];
      v878 = *(&v893[21] + 8);
      v880 = v893[23];
      v882 = *(&v893[24] + 8);
      v884 = v893[26];
      v886 = *(&v893[27] + 8);
      v887 = *(&v893[28] + 1);
      v888 = v893[29];
      v890 = *(&v893[30] + 8);
      v872 = v893[17];
      v889 = *&v893[30];
      v891 = *(&v893[31] + 1);
      v612 = *(&v893[5] + 8);
      v613 = *(&v893[3] + 8);
      v608 = *(&v893[6] + 8);
      v609 = *(&v893[4] + 8);
      v610 = *(&v893[9] + 8);
      v611 = *(&v893[7] + 8);
      v606 = *(&v893[10] + 8);
      v607 = *(&v893[8] + 8);
      v163 = *(&v893[2] + 1);
      v164 = *(&v893[1] + 4);
      v165 = *(&v893[0] + 1);
      v603 = v893[2];
      v604 = HIDWORD(v893[1]);
      v605 = sub_100115324(&v872);
      v852 = v893[47];
      v854 = *(&v893[48] + 8);
      v853 = *&v893[48];
      v855 = *(&v893[49] + 1);
      v856 = v893[50];
      v858 = *(&v893[51] + 8);
      v857 = *&v893[51];
      v859 = *(&v893[52] + 1);
      v860 = v893[53];
      v862 = *(&v893[54] + 8);
      v861 = *&v893[54];
      v863 = *(&v893[55] + 1);
      v864 = v893[56];
      v866 = *(&v893[57] + 8);
      v865 = *&v893[57];
      v867 = *(&v893[58] + 1);
      v868 = v893[59];
      v870 = *(&v893[60] + 8);
      v869 = *&v893[60];
      v871 = *(&v893[61] + 1);
      v602 = sub_100115324(&v852);
      v832 = v893[62];
      v834 = *(&v893[63] + 8);
      v833 = *&v893[63];
      v835 = *(&v893[64] + 1);
      v836 = v893[65];
      v838 = *(&v893[66] + 8);
      v837 = *&v893[66];
      v839 = *(&v893[67] + 1);
      v840 = v893[68];
      v842 = *(&v893[69] + 8);
      v841 = *&v893[69];
      v843 = *(&v893[70] + 1);
      v844 = v893[71];
      v846 = *(&v893[72] + 8);
      v845 = *&v893[72];
      v847 = *(&v893[73] + 1);
      v848 = v893[74];
      v850 = *(&v893[75] + 8);
      v849 = *&v893[75];
      v851 = *(&v893[76] + 1);
      v601 = sub_100115324(&v832);
      v812 = v893[77];
      v814 = *(&v893[78] + 8);
      v813 = *&v893[78];
      v815 = *(&v893[79] + 1);
      v816 = v893[80];
      v818 = *(&v893[81] + 8);
      v817 = *&v893[81];
      v819 = *(&v893[82] + 1);
      v820 = v893[83];
      v822 = *(&v893[84] + 8);
      v821 = *&v893[84];
      v823 = *(&v893[85] + 1);
      v824 = v893[86];
      v826 = *(&v893[87] + 8);
      v825 = *&v893[87];
      v827 = *(&v893[88] + 1);
      v828 = v893[89];
      v830 = *(&v893[90] + 8);
      v829 = *&v893[90];
      v831 = *(&v893[91] + 1);
      v600 = sub_100115324(&v812);
      v792 = v893[92];
      v794 = *(&v893[93] + 8);
      v793 = *&v893[93];
      v795 = *(&v893[94] + 1);
      v796 = v893[95];
      v798 = *(&v893[96] + 8);
      v797 = *&v893[96];
      v799 = *(&v893[97] + 1);
      v800 = v893[98];
      v802 = *(&v893[99] + 8);
      v801 = *&v893[99];
      v803 = *(&v893[100] + 1);
      v804 = v893[101];
      v806 = *(&v893[102] + 8);
      v805 = *&v893[102];
      v807 = *(&v893[103] + 1);
      v808 = v893[104];
      v810 = *(&v893[105] + 8);
      v809 = *&v893[105];
      v811 = *(&v893[106] + 1);
      v599 = sub_100115324(&v792);
      v772 = *(&v893[156] + 8);
      v774 = v893[158];
      v773 = *(&v893[157] + 1);
      v775 = *&v893[159];
      v776 = *(&v893[159] + 8);
      v778 = v893[161];
      v777 = *(&v893[160] + 1);
      v779 = *&v893[162];
      v780 = *(&v893[162] + 8);
      v782 = v893[164];
      v781 = *(&v893[163] + 1);
      v783 = *&v893[165];
      v784 = *(&v893[165] + 8);
      v786 = v893[167];
      v785 = *(&v893[166] + 1);
      v787 = *&v893[168];
      v788 = *(&v893[168] + 8);
      v790 = v893[170];
      v789 = *(&v893[169] + 1);
      v791 = *&v893[171];
      v598 = sub_100115324(&v772);
      v760 = v893[107];
      v762 = *(&v893[108] + 8);
      v761 = *&v893[108];
      v763 = *(&v893[109] + 1);
      v764 = v893[110];
      v766 = *(&v893[111] + 8);
      v765 = *&v893[111];
      v767 = *(&v893[112] + 1);
      v768 = v893[113];
      v770 = *(&v893[114] + 8);
      v769 = *&v893[114];
      v771 = *(&v893[115] + 1);
      v597 = sub_1001154AC(&v760);
      v742 = v893[116];
      v744 = *(&v893[117] + 8);
      v743 = *&v893[117];
      v745 = *(&v893[118] + 1);
      v746 = v893[119];
      v748 = *(&v893[120] + 8);
      v747 = *&v893[120];
      v749 = *(&v893[121] + 1);
      v750 = v893[122];
      v752 = *(&v893[123] + 8);
      v751 = *&v893[123];
      v753 = *(&v893[124] + 1);
      v754 = v893[125];
      v756 = *(&v893[126] + 8);
      v755 = *&v893[126];
      v757 = *(&v893[127] + 1);
      v758 = v893[128];
      v759 = *&v893[129];
      v166 = sub_1001156EC(&v742);
      v724 = *(&v893[129] + 8);
      v726 = v893[131];
      v725 = *(&v893[130] + 1);
      v727 = *&v893[132];
      v728 = *(&v893[132] + 8);
      v730 = v893[134];
      v729 = *(&v893[133] + 1);
      v731 = *&v893[135];
      v732 = *(&v893[135] + 8);
      v734 = v893[137];
      v733 = *(&v893[136] + 1);
      v735 = *&v893[138];
      v736 = *(&v893[138] + 8);
      v738 = v893[140];
      v737 = *(&v893[139] + 1);
      v739 = *&v893[141];
      v740 = *(&v893[141] + 8);
      v741 = *(&v893[142] + 1);
      v167 = sub_1001156EC(&v724);
      v704 = v893[176];
      v706 = *(&v893[177] + 8);
      v705 = *&v893[177];
      v707 = *(&v893[178] + 1);
      v708 = v893[179];
      v710 = *(&v893[180] + 8);
      v709 = *&v893[180];
      v711 = *(&v893[181] + 1);
      v712 = v893[182];
      v714 = *(&v893[183] + 8);
      v713 = *&v893[183];
      v715 = *(&v893[184] + 1);
      v716 = v893[185];
      v718 = *(&v893[186] + 8);
      v717 = *&v893[186];
      v719 = *(&v893[187] + 1);
      v720 = v893[188];
      v722 = *(&v893[189] + 8);
      v721 = *&v893[189];
      v723 = *(&v893[190] + 1);
      v168 = sub_100115324(&v704);
      v684 = v893[191];
      v686 = *(&v893[192] + 8);
      v685 = *&v893[192];
      v687 = *(&v893[193] + 1);
      v688 = v893[194];
      v690 = *(&v893[195] + 8);
      v689 = *&v893[195];
      v691 = *(&v893[196] + 1);
      v692 = v893[197];
      v694 = *(&v893[198] + 8);
      v693 = *&v893[198];
      v695 = *(&v893[199] + 1);
      v696 = v893[200];
      v698 = *(&v893[201] + 8);
      v697 = *&v893[201];
      v699 = *(&v893[202] + 1);
      v700 = v893[203];
      v702 = *(&v893[204] + 8);
      v701 = *&v893[204];
      v703 = *(&v893[205] + 1);
      v169 = sub_100115324(&v684);
      v664 = v893[206];
      v666 = *(&v893[207] + 8);
      v665 = *&v893[207];
      v667 = *(&v893[208] + 1);
      v668 = v893[209];
      v670 = *(&v893[210] + 8);
      v669 = *&v893[210];
      v671 = *(&v893[211] + 1);
      v672 = v893[212];
      v674 = *(&v893[213] + 8);
      v673 = *&v893[213];
      v675 = *(&v893[214] + 1);
      v676 = v893[215];
      v678 = *(&v893[216] + 8);
      v677 = *&v893[216];
      v679 = *(&v893[217] + 1);
      v680 = v893[218];
      v682 = *(&v893[219] + 8);
      v681 = *&v893[219];
      v683 = *(&v893[220] + 1);
      v170 = sub_100115324(&v664);
      v644 = v893[221];
      v646 = *(&v893[222] + 8);
      v645 = *&v893[222];
      v647 = *(&v893[223] + 1);
      v648 = v893[224];
      v650 = *(&v893[225] + 8);
      v649 = *&v893[225];
      v651 = *(&v893[226] + 1);
      v652 = v893[227];
      v654 = *(&v893[228] + 8);
      v653 = *&v893[228];
      v655 = *(&v893[229] + 1);
      v656 = v893[230];
      v658 = *(&v893[231] + 8);
      v657 = *&v893[231];
      v659 = *(&v893[232] + 1);
      v660 = v893[233];
      v662 = *(&v893[234] + 8);
      v661 = *&v893[234];
      v663 = *(&v893[235] + 1);
      v171 = sub_100115324(&v644);
      v636 = v893[236];
      v637 = *&v893[237];
      v638 = *(&v893[237] + 8);
      v639 = *(&v893[238] + 1);
      v640 = v893[239];
      v641 = *&v893[240];
      v642 = *(&v893[240] + 8);
      v643 = *(&v893[241] + 1);
      v172 = sub_100115864(&v636);
      LODWORD(v894[0]) = v619;
      BYTE4(v894[0]) = v618;
      BYTE5(v894[0]) = v617;
      BYTE6(v894[0]) = v616;
      *(&v894[0] + 1) = v165;
      LOBYTE(v894[1]) = v622;
      BYTE1(v894[1]) = v621;
      WORD1(v894[1]) = v620;
      *(&v894[1] + 4) = v164;
      HIDWORD(v894[1]) = v604;
      LODWORD(v894[2]) = v603;
      BYTE4(v894[2]) = v625;
      BYTE5(v894[2]) = v624;
      BYTE6(v894[2]) = v623;
      *(&v894[2] + 1) = v163;
      LODWORD(v894[3]) = v626;
      *(&v894[4] + 8) = v609;
      *(&v894[3] + 8) = v613;
      *(&v894[6] + 8) = v608;
      *(&v894[5] + 8) = v612;
      *(&v894[8] + 8) = v607;
      *(&v894[7] + 8) = v611;
      *(&v894[10] + 8) = v606;
      *(&v894[9] + 8) = v610;
      *(&v894[11] + 1) = v630;
      *&v894[12] = v629;
      *(&v894[12] + 1) = v614;
      *&v894[13] = v628;
      *(&v894[13] + 1) = v627;
      *&v894[14] = v615;
      *(&v894[14] + 1) = v605;
      *&v894[15] = v602;
      *(&v894[15] + 1) = v601;
      *&v894[16] = v600;
      *(&v894[16] + 1) = v599;
      *&v894[17] = v598;
      *(&v894[17] + 1) = v597;
      *&v894[18] = v166;
      *(&v894[18] + 1) = v167;
      *&v894[19] = v168;
      *(&v894[19] + 1) = v169;
      *&v894[20] = v170;
      *(&v894[20] + 1) = v171;
      v894[21] = v172;
      *&v894[22] = 0;
      BYTE8(v894[22]) = 0;
      sub_1000B2464(v894);
      v51 = v631;
      memcpy((v631 + v632), v894, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v174 = v634;
      v173 = v635;
      goto LABEL_188;
    case 158:
      v57 = v634;
      v56 = v635;
      v262 = v38;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v263 = Logger.logObject.getter();
      v264 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v263, v264))
      {
        v265 = swift_slowAlloc();
        v266 = swift_slowAlloc();
        *&v893[0] = v266;
        *v265 = 136315138;
        *(v265 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v263, v264, "nan_event: %s APPLE80211_M_NAN_OOB_AF_TX_STATUS", v265, 0xCu);
        sub_100002A00(v266);
      }

      (*(v632 + 8))(v262, v633.i64[0]);
      v59 = v631;
      v267 = sub_1000AD57C(v56, v57);
      if ((v268 & 0x10000) != 0)
      {
        goto LABEL_214;
      }

      v633.i64[0] = v267 >> 16;
      v269 = HIWORD(v267) | (v268 << 16);
      v270 = v267;
      v271 = v268;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v272 = *(type metadata accessor for DriverEvent(0) - 8);
      v273 = *(v272 + 72);
      v274 = (*(v272 + 80) + 32) & ~*(v272 + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_100480F40;
      LOWORD(v893[0]) = v270;
      *(v893 + 2) = __PAIR64__(v269, v633.u32[0]);
      LODWORD(v893[0]) = sub_100112578(*&v893[0], v271);
      sub_1000B24BC(v893);
      memcpy((v103 + v274), v893, 0x16AuLL);
      goto LABEL_139;
    case 159:
      v57 = v634;
      v56 = v635;
      v384 = v37;
      sub_10000AB0C(v635, v634);
      Logger.init(subsystem:category:)();
      v385 = Logger.logObject.getter();
      v386 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v385, v386))
      {
        v387 = swift_slowAlloc();
        v388 = swift_slowAlloc();
        *&v893[0] = v388;
        *v387 = 136315138;
        *(v387 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v385, v386, "nan_event: %s APPLE80211_M_NAN_OOB_AF_RX", v387, 0xCu);
        sub_100002A00(v388);
      }

      (*(v632 + 8))(v384, v633.i64[0]);
      sub_1000AD640(v56, v57, v893);
      v389 = sub_1000B2494(v893);
      v59 = v631;
      if (v389 == 1)
      {
        goto LABEL_214;
      }

      memcpy(v892, v893, 0x3E5uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v390 = *(type metadata accessor for DriverEvent(0) - 8);
      v391 = *(v390 + 72);
      v310 = (*(v390 + 80) + 32) & ~*(v390 + 80);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_100480F40;
      sub_1001125C0(v894);
      sub_1000B24B0(v894);
LABEL_130:
      memcpy(&v33[v310], v894, 0x16AuLL);
LABEL_131:
      swift_storeEnumTagMultiPayload();
      v363 = v56;
      v364 = v57;
      goto LABEL_132;
    case 172:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v490 = sub_1000ADB70(v56, v57);
      v59 = v631;
      if (v492)
      {
        goto LABEL_214;
      }

      v493 = v490;
      v494 = v491;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v495 = *(type metadata accessor for DriverEvent(0) - 8);
      v496 = *(v495 + 72);
      v497 = (*(v495 + 80) + 32) & ~*(v495 + 80);
      v195 = swift_allocObject();
      *(v195 + 16) = xmmword_100480F40;
      v498 = v195 + v497;
      v499 = sub_10003B238(v494);
      *v498 = HIDWORD(v493) != 0;
      *(v498 + 4) = v499;
      *(v498 + 8) = WORD2(v499);
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_179;
    case 179:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000ADC20(v56, v57, v893);
      if (sub_1000B2378(v893) == 1)
      {
        goto LABEL_213;
      }

      v85 = DWORD1(v893[0]);
      v59 = v631;
      if (DWORD1(v893[0]) >= 0x100)
      {
        goto LABEL_214;
      }

      v892[12] = *(&v893[12] + 8);
      v892[13] = *(&v893[13] + 8);
      v892[14] = *(&v893[14] + 8);
      v892[15] = *(&v893[15] + 8);
      v892[8] = *(&v893[8] + 8);
      v892[9] = *(&v893[9] + 8);
      v892[10] = *(&v893[10] + 8);
      v892[11] = *(&v893[11] + 8);
      v892[4] = *(&v893[4] + 8);
      v892[5] = *(&v893[5] + 8);
      v892[6] = *(&v893[6] + 8);
      v892[7] = *(&v893[7] + 8);
      v892[0] = *(v893 + 8);
      v892[1] = *(&v893[1] + 8);
      v892[2] = *(&v893[2] + 8);
      v892[3] = *(&v893[3] + 8);
      v86 = sub_10005DC58(&qword_10058C7F8, &unk_100482000);
      *&v897[24] = v86;
      *&v897[32] = sub_1000B2394();
      v87 = swift_allocObject();
      *v897 = v87;
      v87[2] = 0;
      v87[3] = v85;
      v87[4] = v892;
      v87[5] = &v892[16];
      v88 = sub_100029B34(v897, v86);
      v89 = v88[1];
      v894[102] = *v88;
      v894[103] = v89;
      Slice<>.withUnsafeBytes<A>(_:)();
      v90 = v895;
      v91 = v896;
      sub_100002A00(v897);
      static DNSRecords.createRecord(with:value:)(v90, v91, 0, 0xF000000000000000, v894);
      sub_1000124C8(v90, v91);
      sub_10005DC58(&unk_100595FD0, &qword_100486B50);
      v555 = swift_dynamicCast();
      if (v555)
      {
        v557 = *(&v892[0] + 1);
        v556 = *&v892[0];
        v558 = LOBYTE(v892[1]);
        v559 = BYTE1(v892[1]);
      }

      else if (swift_dynamicCast())
      {
        v557 = *(&v892[1] + 1);
        v556 = *&v892[1];
        v558 = LOBYTE(v892[2]);
        v559 = BYTE1(v892[2]);
      }

      else
      {
        v563 = v618;
        if (swift_dynamicCast())
        {
          v564 = v617;
          sub_100016DFC(v563, v617, type metadata accessor for DNSRecords.SRV);
          v556 = *(v564 + 16);
          v557 = *(v564 + 24);
          v558 = *(v564 + 32);
          v559 = *(v564 + 33);

          sub_100012468(v564, type metadata accessor for DNSRecords.SRV);
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_100002A00(v894);
            goto LABEL_214;
          }

          v557 = *(&v892[1] + 1);
          v556 = *&v892[1];
          v558 = LOBYTE(v892[2]);
          v559 = BYTE1(v892[2]);
          v584 = *(&v892[2] + 1);
          v585 = *&v892[3];

          sub_1000124C8(v584, v585);
        }
      }

      sub_100002A00(v894);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v633.i64[0] = type metadata accessor for DriverEvent(0);
      v586 = *(*(v633.i64[0] - 8) + 72);
      v587 = (*(*(v633.i64[0] - 8) + 80) + 32) & ~*(*(v633.i64[0] - 8) + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_100480F40;
      v588 = v103 + v587;
      *&v892[0] = 0xD000000000000015;
      *(&v892[0] + 1) = 0x80000001004B8110;
      v589 = DNSRecords.Identifier.description.getter(v556, v557, v558 | (v559 << 8));
      v591 = v590;

      v592._countAndFlagsBits = v589;
      v592._object = v591;
      String.append(_:)(v592);

      v593._countAndFlagsBits = 0x2064656B61654C20;
      v593._object = 0xE90000000000005BLL;
      String.append(_:)(v593);
      LODWORD(v894[0]) = v893[0];
      v594._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v594);

      v595._countAndFlagsBits = 93;
      v595._object = 0xE100000000000000;
      String.append(_:)(v595);
      v596 = *(&v892[0] + 1);
      *v588 = *&v892[0];
      *(v588 + 8) = v596;
      *(v588 + 16) = 0xD000000000000096;
      *(v588 + 24) = 0x80000001004B8130;
      *(v588 + 32) = 1;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
LABEL_139:
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v56, v57);
      return v103;
    case 182:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v313 = sub_100028650(v56, v57, sub_1000285B8);
      v59 = v631;
      if ((v313 & 0x10000) != 0)
      {
        goto LABEL_214;
      }

      v314 = v313 >> 8;
      v315 = v313;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v316 = *(type metadata accessor for DriverEvent(0) - 8);
      v317 = *(v316 + 72);
      v318 = (*(v316 + 80) + 32) & ~*(v316 + 80);
      v195 = swift_allocObject();
      *(v195 + 16) = xmmword_100480F40;
      v319 = (v195 + v318);
      *v319 = v315;
      v319[1] = v314;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_179;
    case 197:
      *&v629 = v43;
      v627 = v42;
      v57 = v634;
      v56 = v635;
      v461 = v36;
      sub_10000AB0C(v635, v634);
      *&v628 = &qword_1004B4E88[7];
      Logger.init(subsystem:category:)();
      v462 = Logger.logObject.getter();
      v463 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v462, v463))
      {
        v464 = swift_slowAlloc();
        v465 = swift_slowAlloc();
        *&v893[0] = v465;
        *v464 = 136315138;
        *(v464 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v893);
        _os_log_impl(&_mh_execute_header, v462, v463, "nan_event: %s APPLE80211_M_NAN_PREFERRED_CHANNELS_CHANGED", v464, 0xCu);
        sub_100002A00(v465);
      }

      (*(v632 + 8))(v461, v633.i64[0]);
      sub_1000AD3DC(v56, v57, v892);
      v59 = v631;
      if (BYTE12(v892[1]))
      {
        goto LABEL_214;
      }

      v466 = BYTE8(v892[0]);
      v467 = HIDWORD(*&v892[0]);
      v468 = *&v892[0] >> 40;
      v469 = BYTE8(v892[1]);
      v470 = HIWORD(*&v892[0]);
      v471 = v892[1];
      v472 = HIBYTE(*&v892[0]);
      *&v613 = *(&v892[0] + 1) >> 8;
      v614 = *(&v892[0] + 1) >> 16;
      v615 = *(&v892[0] + 1) >> 24;
      v616 = HIDWORD(*(&v892[0] + 1));
      v617 = *(&v892[0] + 1) >> 40;
      v618 = HIWORD(*(&v892[0] + 1));
      v619 = HIBYTE(*(&v892[0] + 1));
      v620 = *&v892[1] >> 8;
      v621 = *&v892[1] >> 16;
      v622 = *&v892[1] >> 24;
      v623 = HIDWORD(*&v892[1]);
      v624 = *&v892[1] >> 40;
      v625 = HIWORD(*&v892[1]);
      v626 = HIBYTE(*&v892[1]);
      v473 = DWORD2(v892[1]) >> 8;
      LODWORD(v631) = HIWORD(DWORD2(v892[1]));
      LODWORD(v630) = HIBYTE(DWORD2(v892[1]));
      sub_10005DC58(&qword_10058C810, &qword_100482010);
      v474 = swift_allocObject();
      v474[32] = v467;
      v474[33] = v468;
      v474[34] = v470;
      v474[35] = v472;
      v474[36] = v466;
      v474[37] = v613;
      v475 = v615;
      v474[38] = v614;
      v474[39] = v475;
      v476 = v617;
      v474[40] = v616;
      v474[41] = v476;
      v477 = v619;
      v474[42] = v618;
      v474[43] = v477;
      v474[44] = v471;
      v474[45] = v620;
      v474[46] = v621;
      v474[47] = v622;
      v474[48] = v623;
      v474[49] = v624;
      v474[50] = v625;
      v474[51] = v626;
      v474[52] = v469;
      v474[53] = v473;
      v474[54] = v631;
      v474[55] = v630;
      v478 = swift_allocObject();
      v479 = 0;
      *&v631 = v478;
      v480 = _swiftEmptyArrayStorage;
      *(v478 + 16) = _swiftEmptyArrayStorage;
      *&v630 = v478 + 16;
      v481 = (v632 + 8);
      do
      {
        v483 = v474[v479 + 32];
        if (v474[v479 + 32])
        {
          v484 = v474[v479 + 34];
          if (v484 >= 3)
          {
            Logger.init(subsystem:category:)();
            v485 = Logger.logObject.getter();
            v486 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v485, v486))
            {
              v487 = swift_slowAlloc();
              *v487 = 0;
              _os_log_impl(&_mh_execute_header, v485, v486, "Invalid channel_band in preferred channel list", v487, 2u);
            }

            (*v481)(v629, v633.i64[0]);
            LOBYTE(v484) = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v480 = sub_100011C2C(0, *(v480 + 2) + 1, 1, v480);
          }

          v489 = *(v480 + 2);
          v488 = *(v480 + 3);
          if (v489 >= v488 >> 1)
          {
            v480 = sub_100011C2C((v488 > 1), v489 + 1, 1, v480);
          }

          *(v480 + 2) = v489 + 1;
          v482 = &v480[8 * v489];
          *(v482 + 8) = v483;
          v482[36] = v484;
          v482[37] = 3;
        }

        v479 += 3;
      }

      while (v479 != 24);
      *(v631 + 16) = v480;
      swift_setDeallocating();
      swift_deallocClassInstance();
      v519 = v627;
      Logger.init(subsystem:category:)();

      v520 = Logger.logObject.getter();
      v521 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v520, v521))
      {
        v522 = swift_slowAlloc();
        *&v632 = swift_slowAlloc();
        *&v893[0] = v632;
        *v522 = 136315138;
        v523 = v630;
        swift_beginAccess();
        v524 = *v523;

        v525 = Array.description.getter();
        v527 = v526;

        v528 = sub_100002320(v525, v527, v893);

        *(v522 + 4) = v528;
        _os_log_impl(&_mh_execute_header, v520, v521, "Received preferred channels: %s", v522, 0xCu);
        sub_100002A00(v632);
      }

      (*v481)(v519, v633.i64[0]);
      v529 = v634;
      v530 = v635;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v548 = *(type metadata accessor for DriverEvent(0) - 8);
      v549 = *(v548 + 72);
      v550 = (*(v548 + 80) + 32) & ~*(v548 + 80);
      v195 = swift_allocObject();
      *(v195 + 16) = xmmword_100480F40;
      swift_beginAccess();
      *&v893[0] = *(v631 + 16);
      sub_1000B247C(v893);
      memcpy((v195 + v550), v893, 0x16AuLL);
      swift_storeEnumTagMultiPayload();

      v500 = v530;
      v501 = v529;
      goto LABEL_181;
    case 200:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000ADCF0(v56, v57, v893);
      if (BYTE8(v893[2]))
      {
        goto LABEL_213;
      }

      v892[0] = v893[0];
      v892[1] = v893[1];
      *&v892[2] = *&v893[2];
      v339 = sub_100119A30(v892);
      v59 = v631;
      if (!v339)
      {
        goto LABEL_214;
      }

      v341 = v339;
      v342 = v340;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v343 = *(type metadata accessor for DriverEvent(0) - 8);
      v344 = *(v343 + 72);
      v345 = (*(v343 + 80) + 32) & ~*(v343 + 80);
      v195 = swift_allocObject();
      *(v195 + 16) = xmmword_100480F40;
      v346 = v195 + v345;
      *v346 = v341;
      *(v346 + 8) = v342;
      type metadata accessor for DriverEvent.AWDL(0);
LABEL_179:
      swift_storeEnumTagMultiPayload();
LABEL_180:
      swift_storeEnumTagMultiPayload();
      v500 = v56;
      v501 = v57;
LABEL_181:
      sub_1000124C8(v500, v501);
      return v195;
    case 215:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v67 = sub_10000AE64(v56, v57, sub_100012368);
      v59 = v631;
      if ((v67 & 0x1000000000000) != 0)
      {
        goto LABEL_214;
      }

      v68 = v67;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v69 = *(type metadata accessor for DriverEvent(0) - 8);
      v70 = *(v69 + 72);
      v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100480F40;
      v73 = v72 + v71;
      *v73 = v68 & 0xFFFFFFFFFFFFLL;
      *(v73 + 24) = 0u;
      *(v73 + 8) = 0u;
      *(v73 + 40) = 0;
      v74 = 9;
LABEL_154:
      *(v73 + 41) = v74;
LABEL_155:
      swift_storeEnumTagMultiPayload();
      v129 = v56;
LABEL_156:
      v130 = v57;
LABEL_206:
      sub_1000124C8(v129, v130);
      return v72;
    case 225:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v502 = sub_1000ADEE8(v56, v57, sub_10003462C);
      v59 = v631;
      if ((v502 & 0x100000000) != 0)
      {
        goto LABEL_214;
      }

      if (v502 >= 4)
      {
        v503 = 1;
      }

      else
      {
        v503 = 0x2010001u >> (8 * v502);
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v504 = *(type metadata accessor for DriverEvent(0) - 8);
      v505 = *(v504 + 72);
      v506 = (*(v504 + 80) + 32) & ~*(v504 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      LOBYTE(v893[0]) = v503;
      sub_1000B2470(v893);
      memcpy((v51 + v506), v893, 0x16AuLL);
      goto LABEL_187;
    case 234:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      v433 = sub_1000AE22C(v56, v57, sub_1002AB53C);
      v59 = v631;
      if (v434)
      {
        goto LABEL_214;
      }

      v633.i64[0] = HIDWORD(v433);
      v435 = v433;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v436 = *(type metadata accessor for DriverEvent(0) - 8);
      v437 = *(v436 + 72);
      v438 = (*(v436 + 80) + 32) & ~*(v436 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_100480F40;
      v439 = v63 + v438;
      *(v63 + v438) = v435;
      v440 = enum case for DispatchTimeInterval.milliseconds(_:);
      v441 = type metadata accessor for DispatchTimeInterval();
      v442 = *(*(v441 - 8) + 104);
      v442(v439, v440, v441);
      v443 = *(type metadata accessor for AWDLIdleActivity(0) + 20);
      *(v439 + v443) = v633.i64[0];
      v442(v439 + v443, v440, v441);
      type metadata accessor for DriverEvent.AWDL(0);
LABEL_150:
      swift_storeEnumTagMultiPayload();
LABEL_151:
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v56, v57);
      return v63;
    case 243:
      v57 = v634;
      v56 = v635;
      sub_10000AB0C(v635, v634);
      sub_1000ADAA8(v56, v57, v893);
      if (BYTE14(v893[3]) == 2)
      {
        goto LABEL_213;
      }

      v353 = WORD6(v893[3]);
      v354 = DWORD2(v893[3]);
      v355 = BYTE14(v893[3]) & 1;
      v633.i32[0] = BYTE8(v893[4]) & 1;
      LODWORD(v632) = BYTE9(v893[4]) & 1;
      LODWORD(v631) = BYTE7(v893[4]) & 1;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v356 = *(type metadata accessor for DriverEvent(0) - 8);
      v357 = *(v356 + 72);
      v358 = v57;
      v359 = (*(v356 + 80) + 32) & ~*(v356 + 80);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_100480F40;
      v360 = &v33[v359];
      v361 = v893[1];
      *v360 = v893[0];
      *(v360 + 1) = v361;
      *(v360 + 2) = v893[2];
      *(v360 + 6) = *&v893[3];
      *(v360 + 14) = v354;
      *(v360 + 30) = v353;
      v360[62] = v355;
      *v362.i8 = vand_s8(*(&v893[3] + 15), 0x101010101010101);
      v362.i64[1] = v362.i64[0];
      *(v360 + 63) = vqtbl1_s8(v362, 0x607050403020100);
      v360[71] = v633.i8[0];
      v360[72] = v632;
      v360[73] = v631;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v363 = v635;
      v364 = v358;
      goto LABEL_132;
    default:
      return result;
  }
}

uint64_t sub_10000AAB4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AB0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_10000AB60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v4 < 803)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v10 = a3;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      __DataStorage._length.getter();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v14))
    {
      v15 = v11 - v14 + v13;
      __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_18:
      v20 = *(v15 + 12);
      memcpy(__dst, (v15 + 14), sizeof(__dst));
      *v10 = *v15;
      *(v10 + 8) = *(v15 + 8);
      *(v10 + 12) = v20;
      return memcpy((v10 + 14), __dst, 0x315uLL);
    }

    goto LABEL_22;
  }

  v16 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = a3;
  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
LABEL_26:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_23:
    __break(1u);
  }

  v15 = v16 - v19 + v18;
  result = __DataStorage._length.getter();
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DNSRecords.SRV()
{
  result = qword_10058EF68;
  if (!qword_10058EF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000AD84(_BYTE *a1, _BYTE *a2)
{
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_10000AE44(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_10000AE44(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_10000AE64(unint64_t result, unint64_t a2, uint64_t (*a3)(void))
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 6)
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = a3();
      v9 = 0;
      v10 = v8 & 0xFFFFFFFFFFFFLL;
      return v10 | (v9 << 48);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 6)
      {
        goto LABEL_11;
      }

LABEL_12:
      v10 = 0;
      v9 = 1;
      return v10 | (v9 << 48);
    }
  }

  __break(1u);
  return result;
}

void *sub_10000AF20@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v7 = result[2];
    v6 = result[3];
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    LODWORD(v5) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v5 = v5;
LABEL_7:
      if (v5 == 803)
      {
        sub_10000AB60(result, a2, v10);
        memcpy(__dst, v10, 0x323uLL);
        sub_1000114C0(__dst);
        memcpy(__src, __dst, sizeof(__src));
        return memcpy(a3, __src, 0x324uLL);
      }

LABEL_9:
      sub_1000B274C(__src);
      return memcpy(a3, __src, 0x324uLL);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000AFF4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000B02C()
{
  result = qword_100595280;
  if (!qword_100595280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595280);
  }

  return result;
}

void sub_10000B08C(void *a1, void (*a2)(id *), uint64_t a3, char a4)
{
  v7 = *v4;
  v8 = (v4 + 8);
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = *(v4 + 40);
  v14 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v35 = a1;
      sub_10000C060();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1003A72D4(0, v9[2] + 1, 1, v9);
      }

      v20 = v9[2];
      v19 = v9[3];
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1003A72D4((v19 > 1), v20 + 1, 1, v9);
      }

      v9[2] = v20 + 1;
      v21 = &v9[4 * v20];
      v21[4] = v35;
      v21[5] = a2;
      v21[6] = a3;
      *(v21 + 56) = a4 & 1;
      v18 = v11 | 0x8000000000000000;
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (!v14)
  {
    v34 = a1;
    sub_10000C060();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1003A72D4(0, v9[2] + 1, 1, v9);
    }

    v16 = v9[2];
    v15 = v9[3];
    if (v16 >= v15 >> 1)
    {
      v9 = sub_1003A72D4((v15 > 1), v16 + 1, 1, v9);
    }

    v9[2] = v16 + 1;
    v17 = &v9[4 * v16];
    v17[4] = v34;
    v17[5] = a2;
    v17[6] = a3;
    *(v17 + 56) = a4 & 1;
    v18 = v11;
LABEL_14:
    *v4 = v7;
    *(v4 + 8) = v9;
    *(v4 + 16) = v10;
    *(v4 + 24) = v18;
    *(v4 + 32) = v12;
    *(v4 + 40) = v13;
    return;
  }

  v40 = *v4;
  if (!*(v7 + 16))
  {
LABEL_21:
    sub_10000B02C();
    v30 = swift_allocError();
    *v31 = xmmword_100481800;
    *(v31 + 16) = 1;
    sub_1002CEBBC(v30, a2, a3, a4 & 1);

    return;
  }

  v36 = v4;

  v22 = sub_10000B448(a1);
  if ((v23 & 1) == 0)
  {
    sub_10000BCEC(v7, v9, v10, v11, v12, v13);
    goto LABEL_21;
  }

  v24 = v22;
  v25 = v12;
  v26 = *(v7 + 36);
  sub_10000BCEC(v7, v9, v10, v11, v25, v13);

  v27 = v39 - 1;
  if (__OFSUB__(v39, 1))
  {
    __break(1u);
  }

  else
  {
    if (v39 == 1)
    {

      v29 = v40;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v7;
      sub_1003E1968(v27, a1, isUniquelyReferenced_nonNull_native);
      v29 = v39;
    }

    if (*(v29 + 16))
    {
      *v36 = v29;
      *v8 = 0;
      v8[1] = 0;
      *(v36 + 24) = xmmword_1004AECA0;
      *(v36 + 40) = 0;
      v39 = 0;
      a2(&v39);
    }

    else
    {

      sub_10005DC58(&unk_100598780, &qword_1004AF198);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100480F40;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      *(v32 + 48) = a3;
      *(v32 + 56) = a4 & 1;
      *v36 = &_swiftEmptyArrayStorage;
      *(v36 + 8) = v32;
      *(v36 + 16) = xmmword_1004AECB0;
      *(v36 + 32) = 0;
      *(v36 + 40) = -1;
      v33 = a1;
      sub_10000C060();
    }
  }
}

unint64_t sub_10000B448(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000B4D4(a1, v4);
}

uint64_t sub_10000B48C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000B4D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for XPCSession(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10000B598(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v10 = qword_100594E48;
  v11 = v7[10];
  v8[2] = v11;
  v12 = v7[11];
  v8[3] = v12;
  v13 = v7[12];
  v8[4] = v13;
  v14 = v7[13];
  v8[5] = v14;
  v15 = v7[14];
  v8[6] = v15;
  v40 = v9;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  swift_beginAccess();
  v16 = swift_allocObject();
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v38 = v18;
  v39 = v17;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  *(v16 + 48) = v15;
  *(v16 + 56) = sub_10000EC90;
  *(v16 + 64) = v8;

  v19 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v5 + v10);
  v21 = v47;
  *(v5 + v10) = 0x8000000000000000;
  v43 = sub_10000B8DC(a1);
  v23 = *(v21 + 16);
  v24 = (v22 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v22;
    type metadata accessor for WiFiP2PSPITransactionType(255);
    v45[0] = v39;
    v45[1] = v38;
    v46 = v15;
    _s16P2PActivityStateOMa();
    sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType);
    type metadata accessor for _NativeDictionary();
    v27 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25);
    v28 = v47;
    if (!v27)
    {
      v32 = v43;
      v29 = a1;
      *(v5 + v10) = v47;
      if (v26)
      {
LABEL_8:
        v35 = *(v28 + 56) + 48 * v32;
        sub_10000B08C(a2, sub_1000104E0, v40, 0);
        LODWORD(v35) = v36;
        swift_endAccess();

        sub_10000C068(v29, v35);
      }

LABEL_7:
      v33 = v32;
      v34 = *(v16 + 64);
      (*(v16 + 56))(v45);
      v32 = v33;
      v47 = v29;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v29 = a1;
    v30 = sub_10000B8DC(a1);
    if ((v26 & 1) == (v31 & 1))
    {
      v32 = v30;
      *(v5 + v10) = v47;
      if (v26)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10000B924()
{
  _StringGuts.grow(_:)(20);

  if (*(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID);
    v2 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8);
  }

  else
  {
    v2 = 0x80000001004BF150;
    v1 = 0xD000000000000012;
  }

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  if (*(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_processName + 8))
  {
    v5 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_processName);
    v6 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_processName + 8);
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v7;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v6;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  type metadata accessor for UUID();
  sub_10000BAD0();
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 93;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0x6973736553435058;
}

unint64_t sub_10000BAD0()
{
  result = qword_100597520;
  if (!qword_100597520)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100597520);
  }

  return result;
}

uint64_t sub_10000BB28(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058B780, &qword_100480AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000BBB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10000BC00(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  return sub_10000BC68(a1, v4);
}

unint64_t sub_10000BC68(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_10000BCEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a4;
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return;
    }
  }

  else if (v10)
  {

    return;
  }

  sub_10000FF64(a3, v8);

  sub_10000FF64(a5, a6);
}

uint64_t sub_10000BDAC(void *a1, int64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_10046B0EC();
    *v4 = v10;
  }

  if (a2 < 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = *(*(v10 + 48) + 8 * a2);
    *a1 = *(*(v10 + 56) + 8 * a2);
    sub_10000BED4(a2, v10);
    *v4 = v10;
    return v11;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_10000BE7C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10000BED4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_10000C068(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = a2;
  v7 = *v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin();
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  v13 = __chkstk_darwin();
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v58 = v13;
    v60 = v14;
    v17 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v69 = sub_10000D3C8;
    v70 = v19;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v59 = &v67;
    v67 = sub_10000C8B8;
    v68 = &unk_100573CA0;
    v57 = v7[10];
    *(v19 + 16) = v57;
    v56 = v7[11];
    *(v19 + 24) = v56;
    v54 = v7[12];
    *(v19 + 32) = v54;
    v53 = v7[13];
    *(v19 + 40) = v53;
    v55 = v7[14];
    *(v19 + 48) = v55;
    *(v19 + 56) = v18;
    *(v19 + 64) = a1;
    *(v19 + 72) = a2;
    v20 = _Block_copy(&aBlock);
    v52 = a2;
    v21 = v20;
    v22 = v17;

    static DispatchQoS.unspecified.getter();
    *&v62 = _swiftEmptyArrayStorage;
    v23 = sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
    v47[1] = v3;
    v51 = v23;
    v48 = a1;
    v50 = sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    v49 = sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    v24 = *(v61 + 8);
    v61 += 8;
    v24(v11, v8);
    v25 = *(v60 + 8);
    v60 += 8;
    v26 = v58;
    v25(v16, v58);

    v27 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *&v30 = v57;
    *(&v30 + 1) = v56;
    *&v31 = v54;
    *(&v31 + 1) = v53;
    *(v29 + 16) = v30;
    *(v29 + 32) = v31;
    *(v29 + 48) = v55;
    *(v29 + 56) = v28;
    *(v29 + 64) = v52;
    *(v29 + 72) = v48;
    v69 = sub_10000DFE4;
    v70 = v29;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v67 = sub_10000C8B8;
    v68 = &unk_100573CF0;
    v32 = _Block_copy(&aBlock);
    v33 = v27;

    static DispatchQoS.unspecified.getter();
    *&v62 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    v24(v11, v8);
    v25(v16, v26);
  }

  else
  {
    v34 = qword_100594E48;
    swift_beginAccess();
    v35 = *(v3 + v34);
    if (*(v35 + 16))
    {
      sub_10000B8DC(a1);
      if (v36)
      {
        v37 = *(v35 + 36);
        v38 = *(v3 + v34);
        type metadata accessor for WiFiP2PSPITransactionType(0);
        v39 = v7[14];

        v40 = *(v7 + 6);
        v62 = *(v7 + 5);
        v63 = v40;
        v64 = v39;
        _s16P2PActivityStateOMa();
        sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType);
        Dictionary.subscript.getter();

        v41 = aBlock;
        v42 = v66;
        v43 = v67;
        v44 = v68;
        v45 = v69;
        v46 = v70;
        if (v68 >> 62 == 3 && !v70 && v68 == 0xC000000000000000 && !(v66 | aBlock | v67 | v69))
        {
          swift_beginAccess();
          type metadata accessor for Dictionary();
          Dictionary.remove(at:)();
          swift_endAccess();
          v41 = aBlock;
          v42 = v66;
          v43 = v67;
          v44 = v68;
          v45 = v69;
          v46 = v70;
        }

        sub_10000BCEC(v41, v42, v43, v44, v45, v46);
      }
    }
  }
}

uint64_t sub_10000C780()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10000C7B8()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000C8B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000C8FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C90C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C92C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C96C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C97C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C98C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *OS_dispatch_queue.nan.unsafeMutableAddressor()
{
  if (qword_10058AA28 != -1)
  {
    swift_once();
  }

  return &static OS_dispatch_queue.nan;
}

uint64_t sub_10000CADC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CB24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CB78(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a6;
  v71 = a7;
  v68 = a4;
  v69 = a5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v12 - 8);
  v13 = *(v72 + 64);
  __chkstk_darwin();
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v66 = a2;
    v63 = v15;
    v64 = v16;
    v62 = v17;
    v61 = result;
    v65 = a1;
    v60 = a8;
    v67 = a3;
    if (a2 != 16)
    {
      sub_10000B02C();
      v31 = swift_allocError();
      *v32 = xmmword_100481800;
      *(v32 + 16) = 1;
      swift_willThrow();
      v79 = v31;
      swift_errorRetain();
      sub_10005DC58(&qword_10058C830, &qword_1004821F0);
      if (swift_dynamicCast())
      {
        if (v75 == 1)
        {
          if (aBlock == 2)
          {

            sub_10000B02C();
            v31 = swift_allocError();
            *v34 = xmmword_100481800;
            v35 = 1;
            *(v34 + 16) = 1;
            swift_errorRetain();

LABEL_30:
            v51 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
            v52 = swift_allocObject();
            v53 = v69;
            *(v52 + 16) = v68;
            *(v52 + 24) = v53;
            v54 = v71;
            *(v52 + 32) = v70;
            *(v52 + 40) = v54;
            *(v52 + 48) = v60;
            *(v52 + 56) = a1;
            *(v52 + 64) = v66;
            *(v52 + 72) = v67;
            *(v52 + 80) = v31;
            *(v52 + 88) = v35;
            v77 = sub_10000F480;
            v78 = v52;
            aBlock = _NSConcreteStackBlock;
            v74 = 1107296256;
            v75 = sub_10000C8B8;
            v76 = &unk_100573DE0;
            v55 = _Block_copy(&aBlock);
            v56 = v51;

            static DispatchQoS.unspecified.getter();
            v79 = _swiftEmptyArrayStorage;
            sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
            v57 = v20;
            sub_10005DC58(&unk_100595270, &unk_1004AEC80);
            sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
            v58 = v63;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v55);

            sub_10000EBB8(v31, v35);

            (*(v72 + 8))(v58, v12);
            (*(v62 + 8))(v57, v64);
          }
        }

        else
        {
          sub_1000B2594(aBlock, v74, v75);
        }
      }

      swift_errorRetain();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v38 = 136315650;
        if (v67 == 1)
        {
          v40 = 0x6574617669746361;
        }

        else
        {
          v40 = 0x6176697463616564;
        }

        if (v67 == 1)
        {
          v41 = 0xE800000000000000;
        }

        else
        {
          v41 = 0xEA00000000006574;
        }

        v42 = v12;
        v43 = sub_100002320(v40, v41, &aBlock);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        v44 = WiFiP2PSPITransactionType.description.getter(v66);
        v46 = sub_100002320(v44, v45, &aBlock);

        *(v38 + 14) = v46;
        v12 = v42;
        *(v38 + 22) = 2112;
        swift_errorRetain();
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 24) = v47;
        *v39 = v47;
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to %s transaction %s because %@", v38, 0x20u);
        sub_10000BB28(v39);

        swift_arrayDestroy();
      }

      swift_errorRetain();
      v35 = 1;
LABEL_29:
      a1 = v65;
      goto LABEL_30;
    }

    v22 = sub_10000EC3C(sub_10001BDD0);
    if (a3 == 1)
    {
      if (v22)
      {
        sub_10040CFF0(16);
      }

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_28;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315138;
      v27 = WiFiP2PSPITransactionType.description.getter(16);
      v29 = sub_100002320(v27, v28, &aBlock);

      *(v25 + 4) = v29;
      v30 = "Successfully activated transaction for NAN: %s";
    }

    else
    {
      if (v22)
      {
        sub_10040D088(16);
      }

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_28;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315138;
      v48 = WiFiP2PSPITransactionType.description.getter(16);
      v50 = sub_100002320(v48, v49, &aBlock);

      *(v25 + 4) = v50;
      v30 = "Successfully deactivated transaction for NAN: %s";
    }

    _os_log_impl(&_mh_execute_header, v23, v24, v30, v25, 0xCu);
    sub_100002A00(v26);

LABEL_28:

    v31 = 0;
    v35 = 0;
    goto LABEL_29;
  }

  return result;
}

uint64_t *OS_dispatch_queue.awdl.unsafeMutableAddressor()
{
  if (qword_10058AA30 != -1)
  {
    swift_once();
  }

  return &static OS_dispatch_queue.awdl;
}

uint64_t sub_10000D454(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a6;
  v57 = a8;
  v54 = a4;
  v55 = a5;
  v58 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v51 = v12;
    v52 = v11;
    v53 = a2;
    v22 = sub_10000EC3C(sub_10000DFFC);
    v49 = v15;
    v50 = v16;
    v48 = v17;
    v47 = a7;
    if (a2 == 1)
    {
      if (v22)
      {
        sub_100010E4C(v58);
      }

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_12;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      v27 = WiFiP2PSPITransactionType.description.getter(v58);
      v29 = sub_100002320(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully activated transaction for AWDL: %s", v25, 0xCu);
      sub_100002A00(v26);
    }

    else
    {
      if (v22)
      {
        sub_10000E094(v58);
      }

      v23 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v23, v30))
      {
        goto LABEL_12;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      v33 = WiFiP2PSPITransactionType.description.getter(v58);
      v35 = sub_100002320(v33, v34, aBlock);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v23, v30, "Successfully deactivated transaction for AWDL: %s", v31, 0xCu);
      sub_100002A00(v32);
    }

LABEL_12:

    v36 = v53;
    v37 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
    v38 = swift_allocObject();
    v39 = v55;
    *(v38 + 16) = v54;
    *(v38 + 24) = v39;
    v40 = v47;
    *(v38 + 32) = v56;
    *(v38 + 40) = v40;
    v41 = v58;
    *(v38 + 48) = v57;
    *(v38 + 56) = a1;
    *(v38 + 64) = v41;
    *(v38 + 72) = v36;
    *(v38 + 80) = 0;
    *(v38 + 88) = 0;
    aBlock[4] = sub_100010554;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100573D40;
    v42 = _Block_copy(aBlock);
    v43 = v37;

    static DispatchQoS.unspecified.getter();
    v59 = _swiftEmptyArrayStorage;
    sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
    v44 = v49;
    v45 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);

    sub_10000EBB8(0, 0);

    (*(v51 + 8))(v44, v45);
    (*(v48 + 8))(v20, v50);
  }

  return result;
}

uint64_t sub_10000DC44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v10 = qword_100594E48;
  v11 = v7[10];
  v8[2] = v11;
  v12 = v7[11];
  v8[3] = v12;
  v13 = v7[12];
  v8[4] = v13;
  v14 = v7[13];
  v8[5] = v14;
  v15 = v7[14];
  v8[6] = v15;
  v39 = v9;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  swift_beginAccess();
  v16 = swift_allocObject();
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v37 = v18;
  v38 = v17;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  *(v16 + 48) = v15;
  *(v16 + 56) = sub_10000EC8C;
  *(v16 + 64) = v8;

  v19 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v5 + v10);
  v21 = v46;
  *(v5 + v10) = 0x8000000000000000;
  v42 = sub_10000B8DC(a1);
  v23 = *(v21 + 16);
  v24 = (v22 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v22;
    type metadata accessor for WiFiP2PSPITransactionType(255);
    v44[0] = v38;
    v44[1] = v37;
    v45 = v15;
    _s16P2PActivityStateOMa();
    sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType);
    type metadata accessor for _NativeDictionary();
    v27 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25);
    v28 = v46;
    if (!v27)
    {
      v32 = v42;
      v29 = a1;
      *(v5 + v10) = v46;
      if (v26)
      {
LABEL_8:
        v35 = *(v28 + 56) + 48 * v32;
        LODWORD(v35) = sub_10000ECAC(a2, sub_1000104B4, v39, 0);
        swift_endAccess();

        sub_10000C068(v29, v35);
      }

LABEL_7:
      v33 = v32;
      v34 = *(v16 + 64);
      (*(v16 + 56))(v44);
      v32 = v33;
      v46 = v29;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v29 = a1;
    v30 = sub_10000B8DC(a1);
    if ((v26 & 1) == (v31 & 1))
    {
      v32 = v30;
      *(v5 + v10) = v46;
      if (v26)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10000DF9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10000DFFC()
{
  v1 = *(*v0 + 176);
  v2 = *(v0 + v1);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100380CC8();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_10000E074(v4);
  }

  sub_10000E084(v2);
  return v3;
}

uint64_t sub_10000E074(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10000E084(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_10000E094(int64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 552);
  swift_beginAccess();
  sub_10000EAAC(a1);
  swift_endAccess();
  if (a1 > 16)
  {
    if (a1 == 17)
    {
      v9 = *(v2 + *(*v2 + 736));
      swift_unownedRetainStrong();
      sub_1003EFCC0(0);

      v8 = 17;
      goto LABEL_11;
    }

    if (a1 == 19)
    {
      v6 = *(v2 + *(*v2 + 736));
      swift_unownedRetainStrong();
      v7 = sub_10047575C(&off_100572AC0);
      sub_1003EED68(0, v7);

      v8 = 19;
LABEL_11:
      sub_10000E3C4(v8, 0);
      return;
    }

LABEL_8:
    v8 = a1;
    goto LABEL_11;
  }

  if (a1 != 15)
  {
    if (a1 == 16)
    {
      sub_10000B02C();
      swift_allocError();
      *v5 = xmmword_100481800;
      *(v5 + 16) = 1;
      swift_willThrow();
      return;
    }

    goto LABEL_8;
  }
}

unint64_t sub_10000E21C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v12);
        v13 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

void sub_10000E3C4(uint64_t a1, int a2)
{
  v34 = a2;
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *(v5 + 8);
  v7 = *(*v2 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v28 - v13;
  if (a1 == 9)
  {
    v15 = *(v4 + 96);
    swift_beginAccess();
    (*(v9 + 16))(v14, v2 + v15, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 112))(v34 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v14, AssociatedTypeWitness);
    return;
  }

  v32 = v7;
  v33 = v5;
  v29 = v34 & (a1 == 17);
  v17 = *(v4 + 96);
  swift_beginAccess();
  v31 = v9;
  v18 = v12;
  (*(v9 + 16))(v12, v2 + v17, AssociatedTypeWitness);
  v30 = WiFiP2PSPITransactionType.serviceIdentifier.getter(a1);
  v19 = WiFiAddress.zero.unsafeMutableAddressor();
  v20 = *v19;
  v21 = v19[1];
  v28 = *(v19 + 2) << 16;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v22 = 4;
        goto LABEL_17;
      case 18:
        v22 = 6;
        goto LABEL_17;
      case 12:
        v22 = 5;
        goto LABEL_17;
    }

LABEL_14:
    v22 = 0;
    goto LABEL_17;
  }

  if (a1 == 1)
  {
    v22 = 1;
    goto LABEL_17;
  }

  if (a1 == 2)
  {
    v22 = 2;
    goto LABEL_17;
  }

  if (a1 != 3)
  {
    goto LABEL_14;
  }

  v22 = 3;
LABEL_17:
  v23 = v34;
  v25 = v30;
  v24 = v31;
  v26 = swift_getAssociatedConformanceWitness();
  v27 = *(v26 + 72);
  v35 = 1;
  v27(v25, v20 | (v21 << 8) | v28, v22, 0, 0, v29, 0x1000000000000, v23 & 1, AssociatedTypeWitness, v26);
  (*(v24 + 8))(v18, AssociatedTypeWitness);
}

id WiFiP2PSPITransactionType.serviceIdentifier.getter(uint64_t a1)
{
  if ((a1 - 5) > 0xC)
  {
    return AWDLTrafficRegistrationServiceCentralizedAirTimeSchedulerPolicy;
  }

  else
  {
    return **(&off_1005667D0 + a1 - 5);
  }
}

uint64_t sub_10000E778(uint64_t a1, uint64_t a2, int a3, __int16 a4, __int16 a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  memset(&v29[4], 0, 164);
  *v29 = 1;
  HIDWORD(v30) = 0;
  *&v29[168] = a8 & 1;
  *&v29[172] = sub_10000F23C(a6);
  LOWORD(v30) = a4;
  WORD1(v30) = a5;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  KeyPath = swift_getKeyPath();

  v19 = sub_10000F344(v15, v17, v29, KeyPath, 0x80uLL);

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v20 = 127;
  if (v19 < 0x7F)
  {
    v20 = v19;
  }

  *&v29[12] = v20;
  *&v29[144] = a3;
  *&v29[4] = a2;
  v29[6] = BYTE2(a2);
  v29[7] = BYTE3(a2);
  v29[8] = BYTE4(a2);
  v29[9] = BYTE5(a2);
  if ((a7 & 0x1000000000000) == 0)
  {
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1004817D0;
    *(v21 + 32) = a7;
    *(v21 + 34) = BYTE2(a7);
    *(v21 + 35) = BYTE3(a7);
    *(v21 + 36) = BYTE4(a7);
    *(v21 + 37) = BYTE5(a7);
    v22 = sub_10002D874(v21);
    v24 = v23;

    *&v31[0] = v22;
    *(&v31[0] + 1) = v24;
    sub_1000BA0A4();
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(*&v31[0], *(&v31[0] + 1));
  }

  v31[8] = *&v29[128];
  v31[9] = *&v29[144];
  v31[10] = *&v29[160];
  v32 = v30;
  v31[4] = *&v29[64];
  v31[5] = *&v29[80];
  v31[6] = *&v29[96];
  v31[7] = *&v29[112];
  v31[0] = *v29;
  v31[1] = *&v29[16];
  v31[2] = *&v29[32];
  v31[3] = *&v29[48];
  v25 = v9[5];
  v26 = v9[2];
  v27 = v9[3];

  AppleDevice.setRequest(requestType:data:on:)(0xA4uLL, v31, v33, 0, v26, v27);
}

uint64_t sub_10000EAAC(Swift::UInt a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10037DA54();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_10000E21C(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_10000EBB8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10000EC00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EC3C(uint64_t (*a1)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = a1();

    return v3;
  }

  return result;
}

double sub_10000EC90@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = -2.0;
  *(a1 + 24) = xmmword_1004AECC0;
  *(a1 + 40) = 0;
  return result;
}

unint64_t sub_10000ECAC(void *a1, void (*a2)(void), uint64_t a3, int a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  v17 = *(v5 + 8);
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  v20 = *(v5 + 32);
  v21 = *(v5 + 40);
  v22 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v72 = *(v5 + 8);
      v38 = v18;
      v39 = v20;
      v71 = v21;
      v70 = a1;
      sub_10000C060();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1003A72D4(0, v16[2] + 1, 1, v16);
      }

      v41 = v16[2];
      v40 = v16[3];
      v42 = v72;
      if (v41 >= v40 >> 1)
      {
        v62 = sub_1003A72D4((v40 > 1), v41 + 1, 1, v16);
        v42 = v72;
        v44 = v38;
        v43 = v39;
        v16 = v62;
      }

      else
      {
        v43 = v39;
        v44 = v38;
      }

      result = 0;
      v16[2] = v41 + 1;
      v45 = &v16[4 * v41];
      v45[4] = v70;
      v45[5] = a2;
      v45[6] = a3;
      *(v45 + 56) = a4 & 1;
      *v5 = v16;
      *(v5 + 8) = v42;
      *(v5 + 16) = v44;
      *(v5 + 24) = v19 | 0x8000000000000000;
      *(v5 + 32) = v43;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  LODWORD(v70) = a4;
  if (!v22)
  {
    v72 = v17;
    v66 = v18;
    v67 = v20;
    v71 = v21;
    v68 = a3;
    v69 = v13;
    Logger.init(subsystem:category:)();
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v65 = a2;
      v27 = v26;
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v23;
      *v28 = v23;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "%@ activationInProgress ", v27, 0xCu);
      sub_10000BB28(v28);

      a2 = v65;
    }

    (*(v11 + 8))(v15, v69);
    v30 = v23;
    v31 = v70;
    v32 = v68;
    sub_10000C060();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1003A72D4(0, v16[2] + 1, 1, v16);
    }

    v34 = v16[2];
    v33 = v16[3];
    if (v34 >= v33 >> 1)
    {
      v16 = sub_1003A72D4((v33 > 1), v34 + 1, 1, v16);
    }

    result = 0;
    v16[2] = v34 + 1;
    v36 = &v16[4 * v34];
    v36[4] = v30;
    v36[5] = a2;
    v36[6] = v32;
    *(v36 + 56) = v31 & 1;
    v37 = v72;
    *v5 = v16;
    *(v5 + 8) = v37;
    *(v5 + 16) = v66;
    *(v5 + 24) = v19;
    *(v5 + 32) = v67;
LABEL_16:
    *(v5 + 40) = v71;
    return result;
  }

  v46 = a2;
  LOBYTE(a4) = swift_isUniquelyReferenced_nonNull_native();
  v73 = v16;
  result = sub_10000B448(a1);
  v48 = v16[2];
  v49 = (v47 & 1) == 0;
  v50 = __OFADD__(v48, v49);
  v51 = v48 + v49;
  if (v50)
  {
    __break(1u);
    goto LABEL_30;
  }

  a2 = v47;
  if (v16[3] >= v51)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    sub_100011258(v51, a4);
    v16 = v73;
    result = sub_10000B448(a1);
    if ((a2 & 1) != (v52 & 1))
    {
      type metadata accessor for XPCSession(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_21:
      sub_10005DC58(&unk_100598780, &qword_1004AF198);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100480F40;
      *(v53 + 32) = a1;
      *(v53 + 40) = a2;
      *(v53 + 48) = a3;
      *(v53 + 56) = a4 & 1;
      *v5 = v53;
      *(v5 + 8) = &_swiftEmptyArrayStorage;
      *(v5 + 16) = xmmword_1004AEC90;
      *(v5 + 32) = 0;
      *(v5 + 40) = -1;
      v54 = a1;
      sub_10000C060();
      return 1;
    }
  }

  if (a2)
  {
    goto LABEL_26;
  }

LABEL_24:
  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a1;
  *(v16[7] + 8 * result) = 0;
  v55 = v16[2];
  v50 = __OFADD__(v55, 1);
  v56 = v55 + 1;
  if (v50)
  {
    __break(1u);
  }

  else
  {
    v57 = result;
    v16[2] = v56;
    v58 = a1;
    result = v57;
LABEL_26:
    while (1)
    {
      v59 = v16[7];
      v60 = *(v59 + 8 * result);
      v50 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (!v50)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      v63 = result;
      sub_10046B0EC();
      result = v63;
      v16 = v73;
      if ((a2 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    *(v59 + 8 * result) = v61;
    *v5 = v16;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = xmmword_1004AECA0;
    *(v5 + 40) = 0;
    v73 = 0;
    v46(&v73);
    return 0;
  }

  return result;
}

__n128 sub_10000F228(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000F23C(uint64_t a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 10;
      if ((a1 & 0x100000000) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = 2;
      if ((a1 & 0x100000000) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      v1 = 0;
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v1 = 8;
    if ((a1 & 0x100000000) != 0)
    {
LABEL_4:
      v1 = v1 | 0x20;
    }
  }

LABEL_5:
  if ((a1 & 0x80000000) == 0)
  {
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v1 = v1 | 0x80;
    if ((a1 & 0x20000000) == 0)
    {
      return v1;
    }

    return v1 | 0x200;
  }

  v1 = v1 | 0x40;
  if ((a1 & 0x40000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((a1 & 0x20000000) != 0)
  {
    return v1 | 0x200;
  }

  return v1;
}

uint64_t sub_10000F2A4@<X0>(const char *a1@<X0>, size_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_modifyAtWritableKeyPath();
  v10 = strlcpy(v9, a1, v7);
  result = v8(&v12, 0);
  *a2 = v10;
  return result;
}

size_t sub_10000F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  v5 = a5;
  if ((a2 & 0x2000000000000000) != 0)
  {
    *__source = a1;
    v15 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = swift_modifyAtWritableKeyPath();
    v5 = strlcpy(v11, __source, v5);
    v10(v13, 0);
    return v5;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_7:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v6)
    {
      return v16;
    }
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
    v8 = swift_modifyAtWritableKeyPath();
    v5 = strlcpy(v9, (v7 + 32), v5);
    v8(v13, 0);
  }

  return v5;
}

uint64_t sub_10000F474(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10000F51C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(void, uint64_t, void, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v22 = result;
  v49 = a3;
  v50 = a5;
  v51 = a4;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a7;
  v23[4] = a8;
  v23[5] = a9;
  v23[6] = a10;
  v24 = qword_100594E48;
  swift_beginAccess();
  v25 = swift_allocObject();
  v26 = a8;
  v27 = v25;
  v25[2] = a6;
  v25[3] = a7;
  v48 = v26;
  v25[4] = v26;
  v25[5] = a9;
  v25[6] = a10;
  v25[7] = a13;
  v25[8] = v23;
  v28 = *(v22 + v24);
  isUnique = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v22 + v24);
  v29 = v54;
  *(v22 + v24) = 0x8000000000000000;
  v52 = a2;
  v45 = sub_10000B8DC(a2);
  v31 = *(v29 + 16);
  v32 = (v30 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    __break(1u);
    goto LABEL_12;
  }

  v46 = v30;
  type metadata accessor for WiFiP2PSPITransactionType(255);
  v53[0] = a6;
  v53[1] = a7;
  v53[2] = v48;
  v53[3] = a9;
  v53[4] = a10;
  v34 = _s16P2PActivityStateOMa();
  sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType);
  type metadata accessor for _NativeDictionary();
  v35 = v54;
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v33))
  {
    v36 = v52;
    v40 = v45;
    v39 = v46;
    goto LABEL_7;
  }

  v36 = v52;
  v37 = sub_10000B8DC(v52);
  v39 = v46;
  if ((v46 & 1) != (v38 & 1))
  {
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v40 = v37;
LABEL_7:
  *(v22 + v24) = v54;
  if ((v39 & 1) == 0)
  {
    v41 = v40;
    v42 = v27[8];
    (v27[7])(v53);
    v40 = v41;
    v54 = v36;
    _NativeDictionary._insert(at:key:value:)();
  }

  v43 = *(v35 + 56) + 48 * v40;
  v44 = a14(v49, v51, v50 & 1, v34);
  swift_endAccess();
  sub_10000C068(v36, v44);
}

uint64_t sub_10000F7E8(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v61 = a5;
  v66 = a3;
  v7 = *(v5 + 24);
  if (v7 >> 62 == 2)
  {
    v11 = *(v6 + 8);
    v60 = (v6 + 8);
    v12 = *(v6 + 16);
    v13 = *(v6 + 32);
    v14 = ~a2;
    v15 = *(v6 + 40);
    v62 = *v6;

    v64 = v11;

    sub_10000FF4C(v12, v7);
    v65 = v13;
    v63 = v15;
    sub_10000FF4C(v13, v15);
    if (v14)
    {
      sub_10000FF64(v12, v7);
      v16 = a1;
      v17 = a2;
    }

    else
    {
      v16 = v12;
      v17 = v7;
    }

    sub_10000FF4C(a1, a2);
    sub_10000FF4C(v16, v17);
    v18 = v65;
    v19 = v63;
    v20 = v17;
    if (a4 != 0xFF)
    {
      sub_10000FF64(v65, v63);
      v18 = v66;
      v19 = a4;
    }

    v21 = v64;
    if (v17 == 0xFF)
    {
      v23 = v18;
      v24 = v19;
      sub_10000FF4C(v66, a4);
    }

    else
    {
      if (v19 != 0xFF)
      {
        v55 = v12;
        v56 = v18;
        v59 = v19;
        v58 = v16;
        if (v17)
        {
          sub_10000FF4C(v66, a4);
          if (v59)
          {
            v22 = 1;
            v66 = v16;
            goto LABEL_17;
          }
        }

        else
        {
          sub_10000FF4C(v66, a4);
        }

        sub_10000FF64(v16, v17);
        v66 = 0;
        v22 = 0;
LABEL_17:
        v57 = v17;
        v26 = *(v64 + 16);
        if (v26)
        {
          v27 = (v64 + 56);
          do
          {
            v29 = *(v27 - 3);
            v30 = *(v27 - 2);
            v31 = *(v27 - 1);
            v32 = *v27;
            if (v22)
            {
              v28 = v29;
              sub_10000C060();
              sub_1002CEBBC(v66, v30, v31, v32);
            }

            else
            {
              v67[0] = 0;
              v33 = v29;
              sub_10000C060();
              v30(v67);
            }

            sub_100010500();
            v27 += 32;
            --v26;
          }

          while (v26);
          v34 = v62;
          sub_10000BCEC(v62, v64, v55, v7, v65, v63);
          *v6 = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = xmmword_1004AECC0;
          *(v6 + 40) = 0;
          if (v22)
          {
            v36 = sub_1002DE67C(&_swiftEmptyArrayStorage);
            *v6 = v36;
            v37 = v60;
            *v60 = 0;
            v37[1] = 0;
            *(v6 + 24) = xmmword_1004AECA0;
            *(v6 + 40) = 0;
            __chkstk_darwin(v36);
            v38 = *(v61 + 32);
            v50 = *(v61 + 16);
            v51 = v38;
            v52 = *(v61 + 48);
            v53 = v6;
            sub_100448094(sub_1002DF69C, &v49, v34);
            v39 = *(v6 + 24);
            if (v39 >> 62 == 1)
            {
              v40 = *v6;
              v41 = *(v6 + 8);
              v42 = *(v6 + 16);
              v43 = *(v6 + 32);
              v44 = *(v6 + 40);
              v45 = *(*v6 + 16);
              sub_10000FF64(v56, v59);
              sub_10000FF64(v58, v57);

              sub_10000EBB8(v66, 1);
              if (!v45)
              {
                sub_10000BCEC(v40, v41, v42, v39, v43, v44);
                *v6 = &_swiftEmptyArrayStorage;
                *(v6 + 8) = &_swiftEmptyArrayStorage;
                *(v6 + 16) = xmmword_1004AECB0;
                *(v6 + 32) = 0;
                *(v6 + 40) = -1;
                return 2;
              }
            }

            else
            {
              sub_10000FF64(v56, v59);
              sub_10000FF64(v58, v57);

              sub_10000EBB8(v66, 1);
            }

            return 0;
          }
        }

        else
        {
          v34 = v62;
          sub_10000BCEC(v62, v64, v55, v7, v65, v63);
          *v6 = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = xmmword_1004AECC0;
          *(v6 + 40) = 0;
          if (v22)
          {
            if (*(v34 + 16))
            {
              sub_10000FF64(v56, v59);
              sub_10000FF64(v58, v57);

              sub_10000EBB8(v66, 1);
              result = 1;
              *v6 = v34;
              *(v6 + 8) = &_swiftEmptyArrayStorage;
              *(v6 + 16) = xmmword_1004AEC90;
              *(v6 + 32) = 0;
              *(v6 + 40) = -1;
              return result;
            }

            sub_10000EBB8(v66, 1);

            sub_10000FF64(v58, v57);
            sub_10000FF64(v56, v59);
            return 0;
          }
        }

        v66 = &v54;
        v69 = v34;
        v68 = 0;
        __chkstk_darwin(v35);
        v46 = *(v61 + 24);
        *&v50 = *(v61 + 16);
        *(&v50 + 1) = v46;
        v47 = *(v61 + 40);
        *&v51 = *(v61 + 32);
        *(&v51 + 1) = v47;
        v48 = *(v61 + 48);
        v53 = v6;

        sub_10005DC58(&qword_100595288, &qword_1004AF190);
        v67[0] = v50;
        v67[1] = v46;
        v67[2] = v51;
        v67[3] = v47;
        v67[4] = v48;
        _s16P2PActivityStateO14ActionRequiredOMa();
        sub_10000CADC(&unk_100595290, &qword_100595288, &qword_1004AF190);
        Sequence.reduce<A>(_:_:)();
        sub_10000FF64(v56, v59);
        sub_10000FF64(v58, v57);

        swift_bridgeObjectRelease_n();
        return LOBYTE(v67[0]);
      }

      v23 = v18;
      v24 = -1;
      sub_10000FF4C(v66, a4);
      sub_10000FF64(v16, v20);
    }

    sub_10000BCEC(v62, v64, v12, v7, v65, v63);
    result = 0;
    *v6 = v62;
    *(v6 + 8) = v21;
    *(v6 + 16) = v16;
    *(v6 + 24) = v20 | 0x8000000000000000;
    *(v6 + 32) = v23;
    *(v6 + 40) = v24;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000FEC8(uint64_t result, uint64_t a2, char a3, void *a4)
{
  v6 = *(v4 + 24);
  if (v6 >> 62 == 3)
  {
    v7 = !*(v4 + 40) && v6 == 0xC000000000000000;
    if (v7 && (*(v4 + 16) | *(v4 + 32) | *(v4 + 8) | *v4) == 0)
    {
      return 0;
    }
  }

  if (result)
  {
    v9 = a3 & 1;
    if (result == 1)
    {
      return sub_100010598(0, 0xFFuLL, a2, v9, a4);
    }

    else
    {
      return sub_10000F7E8(0, 0xFFuLL, a2, v9, a4);
    }
  }

  return result;
}

uint64_t sub_10000FF4C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000F474(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10000FF64(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000EBB8(result, a2 & 1);
  }

  return result;
}

void sub_10000FF94(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7, uint64_t (*a8)(void, __int128 *))
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  KeyPath = swift_getKeyPath();

  sub_10000F344(a5, a6, &v29, KeyPath, 0x10uLL);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(a1))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  LODWORD(v30) = a1;
  if (a4)
  {
    DWORD2(v30) = 0;
    goto LABEL_11;
  }

  v16 = a3 - a2;
  if (!a2)
  {
    v16 = 0;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (HIDWORD(v16))
  {
    goto LABEL_23;
  }

  DWORD2(v30) = v16;
  if (a2)
  {
    v31 = a2;
    goto LABEL_12;
  }

LABEL_11:
  v31 = 0;
LABEL_12:
  if (a1 == 0xFFFFFFFF)
  {
    DWORD1(v30) = a7;
  }

  v17 = *(v8 + 24);
  os_unfair_lock_lock(*(v17 + 16));
  swift_beginAccess();
  v18 = *(v8 + 32);
  if (*(v18 + 16) && (v19 = sub_1000102E8(a5, a6), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
    v22 = *(v17 + 16);

    os_unfair_lock_unlock(v22);
    v23 = a8(*(v21 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_reference), &v29);
    if (v23)
    {
      v24 = v23;
      sub_10000B02C();
      swift_allocError();
      *v25 = v24;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    swift_endAccess();
    sub_10000B02C();
    swift_allocError();
    *v26 = xmmword_100481800;
    *(v26 + 16) = 1;
    swift_willThrow();
    os_unfair_lock_unlock(*(v17 + 16));
  }
}

uint64_t sub_100010254(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_100010314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000103CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000103F0()
{
  v1 = *(v0 + 56);

  sub_10000EBB8(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_100010434(uint64_t result, uint64_t a2, char a3, void *a4)
{
  v6 = *(v4 + 24);
  if (v6 >> 62 == 3)
  {
    v7 = !*(v4 + 40) && v6 == 0xC000000000000000;
    if (v7 && (*(v4 + 16) | *(v4 + 32) | *(v4 + 8) | *v4) == 0)
    {
      return 0;
    }
  }

  if (result)
  {
    v9 = a3 & 1;
    if (result == 1)
    {
      return sub_100010598(a2, v9, 0, 255, a4);
    }

    else
    {
      return sub_10000F7E8(a2, v9, 0, 255, a4);
    }
  }

  return result;
}

uint64_t sub_1000104B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100010520(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100010530(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100010598(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void *a5)
{
  LODWORD(v75) = a4;
  v72 = a3;
  isUniquelyReferenced_nonNull_native = *(v5 + 8);
  v66 = (v5 + 8);
  v67 = a5;
  v7 = *v5;
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  if (v8 >> 62)
  {
    goto LABEL_52;
  }

  v14 = ~a2;
  v15 = *v5;

  v73 = isUniquelyReferenced_nonNull_native;

  sub_10000FF4C(v9, v8);
  v69 = v10;
  sub_10000FF4C(v10, v11);
  v16 = v11;
  v68 = v8;
  if (v14)
  {
    sub_10000FF64(v9, v8);
    v17 = a1;
    v8 = a2;
  }

  else
  {
    v17 = v9;
  }

  LOBYTE(v11) = v72;
  sub_10000FF4C(a1, a2);
  v70 = v8;
  sub_10000FF4C(v17, v8);
  v18 = v69;
  v19 = v16;
  if (v75 != 0xFF)
  {
    sub_10000FF64(v69, v16);
    v18 = v72;
    v19 = v75;
  }

  isUniquelyReferenced_nonNull_native = v70;
  if (v70 == 0xFF)
  {
    sub_10000FF4C(v72, v75);
LABEL_14:
    v20 = v73;
    sub_10000BCEC(v7, v73, v9, v68, v69, v16);
    result = 0;
    *v5 = v7;
    *(v5 + 8) = v20;
    *(v5 + 16) = v17;
    *(v5 + 24) = isUniquelyReferenced_nonNull_native;
    *(v5 + 32) = v18;
    *(v5 + 40) = v19;
    return result;
  }

  if (v19 == 0xFF)
  {
    sub_10000FF4C(v72, v75);
    sub_10000FF64(v17, v70);
    goto LABEL_14;
  }

  if ((v70 & 1) == 0)
  {
    sub_10000FF4C(v72, v75);
    goto LABEL_16;
  }

  sub_10000FF4C(v72, v75);
  if ((v19 & 1) == 0)
  {
LABEL_16:
    sub_10000FF64(v17, v70);
    v72 = 0;
    LODWORD(v75) = 0;
    goto LABEL_17;
  }

  LODWORD(v75) = 1;
  v72 = v17;
LABEL_17:
  v60 = v18;
  v61 = v19;
  v62 = v9;
  v63 = v16;
  v64 = v17;
  v65 = v5;
  v22 = *(v7 + 16);
  v74 = v7;
  v10 = 0;
  if (!v22)
  {
    v9 = &_swiftEmptyDictionarySingleton;
LABEL_36:
    if (v75)
    {
      v40 = *(v73 + 16);
      if (v40)
      {
        v8 = 0;
        v41 = (v73 + 56);
        while (v8 < *(v73 + 16))
        {
          v42 = *(v41 - 3);
          v43 = *(v41 - 2);
          v44 = *(v41 - 1);
          *v41;
          v77 = 0;
          isUniquelyReferenced_nonNull_native = v42;
          sub_10000C060();
          v43(&v77);

          sub_100010500();
          ++v8;
          v41 += 32;
          if (v40 == v8)
          {
            goto LABEL_44;
          }
        }

        goto LABEL_49;
      }

LABEL_44:
      sub_10000FF64(v60, v61);
      sub_10000FF64(v64, v70);

      sub_10000EBB8(v72, 1);

      sub_10000BCEC(v7, v73, v62, v68, v69, v63);
      sub_100010520(v10);
      result = 0;
      v55 = v65;
      *v65 = 0;
      v55[1] = 0;
      v55[2] = 0;
      *(v55 + 3) = xmmword_1004AECC0;
      *(v55 + 40) = 0;
    }

    else
    {
      v45 = v69;
      if (v9[2])
      {

        v46 = v73;
        sub_10000BCEC(v7, v73, v62, v68, v45, v63);
        v75 = &v59;
        v48 = v65;
        v47 = v66;
        *v65 = v9;
        *v47 = 0;
        v47[1] = 0;
        *(v48 + 3) = xmmword_1004AECA0;
        *(v48 + 40) = 0;
        v83 = v46;
        v76 = 0;
        __chkstk_darwin(v49);
        v50 = v67[2];
        v51 = v67[3];
        v53 = v67[4];
        v52 = v67[5];
        v54 = v67[6];

        v72 = sub_10005DC58(&qword_100595288, &qword_1004AF190);
        v77 = v50;
        v78 = v51;
        v79 = v53;
        v80 = v52;
        v81 = v54;
        _s16P2PActivityStateO14ActionRequiredOMa();
        sub_10000CADC(&unk_100595290, &qword_100595288, &qword_1004AF190);
        Sequence.reduce<A>(_:_:)();

        sub_10000FF64(v64, v70);
        sub_10000FF64(v60, v61);

        swift_bridgeObjectRelease_n();
        sub_100010520(v10);
        return v77;
      }

      else
      {

        sub_10000FF64(v60, v61);
        sub_10000FF64(v64, v70);

        v56 = v73;
        sub_10000BCEC(v7, v73, v62, v68, v69, v63);
        sub_100010520(v10);
        v57 = v65;
        *v65 = &_swiftEmptyArrayStorage;
        v57[1] = v56;
        *(v57 + 1) = xmmword_1004AECB0;
        v57[4] = 0;
        *(v57 + 40) = -1;
        return 2;
      }
    }

    return result;
  }

  v8 = 0;
  v23 = (v7 + 56);
  v9 = &_swiftEmptyDictionarySingleton;
  v71 = v22;
  while (v8 < *(v7 + 16))
  {
    v24 = *(v23 - 2);
    v7 = *(v23 - 1);
    LOBYTE(v11) = *v23;
    v25 = *(v23 - 3);
    isUniquelyReferenced_nonNull_native = v25;
    if (v75)
    {
      sub_10000C060();
      sub_1002CEBBC(v72, v24, v7, v11);

      sub_100010500();
      goto LABEL_20;
    }

    v26 = v25;
    sub_10000C060();
    sub_100010520(v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v9;
    v27 = sub_10000B448(v26);
    v29 = v9[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_47;
    }

    v10 = v28;
    if (v9[3] < v32)
    {
      sub_100011258(v32, isUniquelyReferenced_nonNull_native);
      isUniquelyReferenced_nonNull_native = type metadata accessor for XPCSession(0);
      v9 = v77;
      v27 = sub_10000B448(v26);
      if ((v10 & 1) != (v33 & 1))
      {
        goto LABEL_51;
      }

LABEL_28:
      if ((v10 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = v27;
    sub_10046B0EC();
    v27 = isUniquelyReferenced_nonNull_native;
    v9 = v77;
    if ((v10 & 1) == 0)
    {
LABEL_29:
      v9[(v27 >> 6) + 8] |= 1 << v27;
      *(v9[6] + 8 * v27) = v26;
      *(v9[7] + 8 * v27) = 0;
      v34 = v9[2];
      v31 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v31)
      {
        goto LABEL_50;
      }

      v9[2] = v35;
      isUniquelyReferenced_nonNull_native = v27;
      v36 = v26;
      v27 = isUniquelyReferenced_nonNull_native;
    }

LABEL_31:
    v37 = v9[7];
    v38 = *(v37 + 8 * v27);
    v31 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v31)
    {
      goto LABEL_48;
    }

    *(v37 + 8 * v27) = v39;

    v77 = 0;
    v24(&v77);

    sub_100010500();
    v10 = sub_10005D584;
    v22 = v71;
LABEL_20:
    ++v8;
    v23 += 32;
    v7 = v74;
    if (v22 == v8)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_52:
  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v83 = v77;
  v84 = v78;
  v58._object = 0x80000001004BEB10;
  v58._countAndFlagsBits = 0xD00000000000003DLL;
  String.append(_:)(v58);
  v77 = v7;
  v78 = isUniquelyReferenced_nonNull_native;
  v79 = v9;
  v80 = v8;
  v81 = v10;
  v82 = v11;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100010E4C(uint64_t a1)
{
  v3 = v1;
  if (a1 > 16)
  {
    if (a1 == 17)
    {
      sub_10000E3C4(17, 1);
      if (v2)
      {
        return;
      }

      v10 = *(v1 + *(*v1 + 736));
      swift_unownedRetainStrong();
      sub_1003EFCC0(1);
    }

    else
    {
      if (a1 != 19)
      {
        goto LABEL_8;
      }

      v6 = *(*v1 + 736);
      v7 = *(v1 + v6);
      v8 = *(v3 + v6);
      swift_unownedRetainStrong();
      v9 = sub_10047575C(&off_100572A98);
      sub_1003EED68(1, v9);
    }
  }

  else if (a1 != 15)
  {
    if (a1 == 16)
    {
      sub_10000B02C();
      swift_allocError();
      *v5 = xmmword_100481800;
      *(v5 + 16) = 1;
      swift_willThrow();
      return;
    }

LABEL_8:
    sub_10000E3C4(a1, 1);
    if (v2)
    {
      return;
    }
  }

  v11 = *(*v3 + 552);
  swift_beginAccess();
  sub_100011004(&v12, a1);
  swift_endAccess();
}

uint64_t sub_100011004(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1000110FC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1000110FC(Swift::UInt a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100470690(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_10037DA54();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100473440(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for WiFiP2PSPITransactionType(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100011258(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_1005952A0, &qword_1004AF1A0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1000114C8(uint64_t a1)
{
  if (*(a1 + 803))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char *sub_1000114E4()
{
  v1 = v0[800];
  v52 = v0[801];
  memcpy(__dst, v0, sizeof(__dst));
  v2 = &__dst[v1];
  if (v1)
  {
    v3 = _swiftEmptyArrayStorage;
    v4 = __dst;
    while (1)
    {
      v6 = IEEE80211Frame.Management.Authentication.AuthenticationAlgorithm.rawValue.getter(*v4);
      if (qword_10058AA78 != -1)
      {
        swift_once();
      }

      v7 = off_100591860;
      if (*(off_100591860 + 2) && (v8 = *(off_100591860 + 5), v9 = static Hasher._hash(seed:bytes:count:)(), v10 = -1 << *(v7 + 32), v11 = v9 & ~v10, ((*(v7 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v11) & 1) != 0))
      {
        v12 = ~v10;
        while (*(v7[6] + 4 * v11) != v6)
        {
          v11 = (v11 + 1) & v12;
          if (((*(v7 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v11) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v23 = 0;
        v24 = 3;
      }

      else
      {
LABEL_12:
        if (qword_10058AA80 != -1)
        {
          swift_once();
        }

        v13 = off_100591868;
        if (*(off_100591868 + 2) && (v14 = *(off_100591868 + 5), v9 = static Hasher._hash(seed:bytes:count:)(), v15 = -1 << *(v13 + 32), v16 = v9 & ~v15, ((*(v13 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v16) & 1) != 0))
        {
          v17 = ~v15;
          while (*(v13[6] + 4 * v16) != v6)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v13 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v16) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          v23 = 1;
          v24 = 4;
        }

        else
        {
LABEL_19:
          if (qword_10058AA88 != -1)
          {
            swift_once();
          }

          v18 = off_100591870;
          if (!*(off_100591870 + 2))
          {
            goto LABEL_4;
          }

          v19 = *(off_100591870 + 5);
          v9 = static Hasher._hash(seed:bytes:count:)();
          v20 = -1 << v18[32];
          v21 = v9 & ~v20;
          if (((*&v18[((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v21) & 1) == 0)
          {
            goto LABEL_4;
          }

          v22 = ~v20;
          while (*(*(v18 + 6) + 4 * v21) != v6)
          {
            v21 = (v21 + 1) & v22;
            if (((*&v18[((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v21) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v23 = 2;
          v24 = 5;
        }
      }

      v53 = v23;
      v55 = v24;
      sub_1000276D8(v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100011C2C(0, *(v3 + 2) + 1, 1, v3);
      }

      v26 = *(v3 + 2);
      v25 = *(v3 + 3);
      if (v26 >= v25 >> 1)
      {
        v3 = sub_100011C2C((v25 > 1), v26 + 1, 1, v3);
      }

      *(v3 + 2) = v26 + 1;
      v5 = &v3[8 * v26];
      *(v5 + 8) = v6;
      v5[36] = v53;
      v5[37] = v55;
LABEL_4:
      if (++v4 == v2)
      {
        goto LABEL_35;
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_35:
  if (v52)
  {
    v27 = &v2[v52];
    v28 = _swiftEmptyArrayStorage;
    while (1)
    {
      v30 = IEEE80211Frame.Management.Authentication.AuthenticationAlgorithm.rawValue.getter(*v2);
      if (qword_10058AA78 != -1)
      {
        swift_once();
      }

      v31 = off_100591860;
      if (*(off_100591860 + 2) && (v32 = *(off_100591860 + 5), v33 = static Hasher._hash(seed:bytes:count:)(), v34 = -1 << *(v31 + 32), v35 = v33 & ~v34, ((*(v31 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v35) & 1) != 0))
      {
        v36 = ~v34;
        while (*(v31[6] + 4 * v35) != v30)
        {
          v35 = (v35 + 1) & v36;
          if (((*(v31 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v35) & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        v47 = 0;
        v48 = 3;
      }

      else
      {
LABEL_46:
        if (qword_10058AA80 != -1)
        {
          swift_once();
        }

        v37 = off_100591868;
        if (*(off_100591868 + 2) && (v38 = *(off_100591868 + 5), v33 = static Hasher._hash(seed:bytes:count:)(), v39 = -1 << *(v37 + 32), v40 = v33 & ~v39, ((*(v37 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v40) & 1) != 0))
        {
          v41 = ~v39;
          while (*(v37[6] + 4 * v40) != v30)
          {
            v40 = (v40 + 1) & v41;
            if (((*(v37 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v40) & 1) == 0)
            {
              goto LABEL_53;
            }
          }

          v47 = 1;
          v48 = 4;
        }

        else
        {
LABEL_53:
          if (qword_10058AA88 != -1)
          {
            swift_once();
          }

          v42 = off_100591870;
          if (!*(off_100591870 + 2))
          {
            goto LABEL_38;
          }

          v43 = *(off_100591870 + 5);
          v33 = static Hasher._hash(seed:bytes:count:)();
          v44 = -1 << v42[32];
          v45 = v33 & ~v44;
          if (((*&v42[((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v45) & 1) == 0)
          {
            goto LABEL_38;
          }

          v46 = ~v44;
          while (*(*(v42 + 6) + 4 * v45) != v30)
          {
            v45 = (v45 + 1) & v46;
            if (((*&v42[((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v45) & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          v47 = 2;
          v48 = 5;
        }
      }

      v54 = v47;
      v56 = v48;
      sub_1000276D8(v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_100011C2C(0, *(v28 + 2) + 1, 1, v28);
      }

      v50 = *(v28 + 2);
      v49 = *(v28 + 3);
      if (v50 >= v49 >> 1)
      {
        v28 = sub_100011C2C((v49 > 1), v50 + 1, 1, v28);
      }

      *(v28 + 2) = v50 + 1;
      v29 = &v28[8 * v50];
      *(v29 + 8) = v30;
      v29[36] = v54;
      v29[37] = v56;
LABEL_38:
      if (++v2 == v27)
      {
        goto LABEL_69;
      }
    }
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_69:
  sub_100011B40(v28);
  return v3;
}

uint64_t sub_100011B40(uint64_t result)
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

  result = sub_100011C2C(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

char *sub_100011C2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_1005987D0, &qword_1004B0740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_100011D2C(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v3 = *v1;
  v70 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  v4 = *(*(v70 - 8) + 64);
  __chkstk_darwin();
  v69 = &v67 - v5;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v67 - v11;
  __chkstk_darwin();
  v14 = &v67 - v13;
  sub_10001B3C8(1);
  (*(v7 + 16))(v14, v1 + *(*v1 + 528), v6);
  v15 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = *(v3 + 432);
  v17[3] = *(v3 + 440);
  v17[4] = v16;
  v18 = *(v7 + 104);
  v18(v12, enum case for DispatchTimeInterval.never(_:), v6);
  *v10 = 100;
  v18(v10, enum case for DispatchTimeInterval.milliseconds(_:), v6);
  v19 = type metadata accessor for P2PTimer();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = v15;
  v23 = v10;
  v24 = v68;
  v25 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v14, v22, v12, v23, sub_1003F2D30, v17);
  v26 = *(*v2 + 536);
  v27 = *(v2 + v26);
  *(v2 + v26) = v25;

  v28 = v2 + *(*v2 + 592);
  swift_beginAccess();
  v29 = v28 + *(v70 + 36);
  v30 = *(v29 + 16);
  v31 = *(v29 + 20);
  v32 = *(v29 + 24);
  v33 = *(v29 + 28);
  v72 = *v29;
  v74 = v31;
  v73 = v30;
  v75 = v32;
  v76 = v33;
  v34 = *(v24 + 16);
  if (v34)
  {
    v67 = v28;
    v35 = (v24 + 37);
    v36 = _swiftEmptyArrayStorage;
    v37 = v34;
    do
    {
      if (!*(v35 - 1))
      {
        v41 = *(v35 - 5);
        v42 = *v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100027CF0(0, v36[2] + 1, 1);
          v36 = v71;
        }

        v39 = v36[2];
        v38 = v36[3];
        if (v39 >= v38 >> 1)
        {
          sub_100027CF0((v38 > 1), v39 + 1, 1);
          v36 = v71;
        }

        v36[2] = v39 + 1;
        v40 = &v36[v39];
        *(v40 + 8) = v41;
        *(v40 + 36) = 0;
        *(v40 + 37) = v42;
      }

      v35 += 8;
      --v37;
    }

    while (v37);
    v44 = v36[2];

    *&v72 = v44;
    v45 = (v24 + 37);
    v46 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v45 - 1) == 1)
      {
        v50 = *(v45 - 5);
        v51 = *v45;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v71 = v46;
        if ((v52 & 1) == 0)
        {
          sub_100027CF0(0, v46[2] + 1, 1);
          v46 = v71;
        }

        v48 = v46[2];
        v47 = v46[3];
        if (v48 >= v47 >> 1)
        {
          sub_100027CF0((v47 > 1), v48 + 1, 1);
          v46 = v71;
        }

        v46[2] = v48 + 1;
        v49 = &v46[v48];
        *(v49 + 8) = v50;
        *(v49 + 36) = 1;
        *(v49 + 37) = v51;
      }

      v45 += 8;
      --v34;
    }

    while (v34);
    v28 = v67;
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
    v44 = _swiftEmptyArrayStorage[2];

    *&v72 = v44;
  }

  v53 = v46[2];

  *(&v72 + 1) = v53;
  v54 = v2 + *(*v2 + 160);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134218240;
    *(v57 + 4) = v44;
    *(v57 + 12) = 2048;
    *(v57 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v55, v56, "Infra scan started (2.4GHz: %ld 5GHz: %ld)", v57, 0x16u);
  }

  swift_beginAccess();
  v58 = v72;
  v59 = v73;
  v60 = v74;
  v61 = v75;
  v62 = v76;
  v63 = v28;
  v64 = v69;
  sub_100012400(v63, v69, &qword_1005995E8, &unk_1004B3040);
  v65 = v64 + *(v70 + 36);
  *v65 = v58;
  *(v65 + 20) = v60;
  *(v65 + 16) = v59;
  *(v65 + 24) = v61;
  *(v65 + 28) = v62;
  return sub_10001C638(v64);
}

uint64_t sub_1000122F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001232C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012400(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10005DC58(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100012468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000124C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001251C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100012584(uint64_t a1)
{
  if ((*(a1 + 41) & 0xFu) <= 9)
  {
    return *(a1 + 41) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_1000125A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1000125CC(uint64_t a1)
{
  v2 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000128EC(a1);
    }

    else
    {
      sub_1000133C4(a1, v4);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21 = v16;
        *v15 = 136315138;
        v17 = DriverEvent.shortDescription.getter(v16);
        v19 = v18;
        sub_1003F2D3C(v4);
        v20 = sub_100002320(v17, v19, &v21);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "Failed to dispatch event %s because the InfrastructureWiFiInterface was deallocated before the event was received from the driver", v15, 0xCu);
        sub_100002A00(v16);
      }

      else
      {

        sub_1003F2D3C(v4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100012864(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(*(type metadata accessor for Logger() - 8) + 80);
  v6 = v1[4];

  sub_1000125CC(a1);
}

void sub_1000128EC(uint64_t a1)
{
  v3 = *v1;
  v99 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  v4 = *(*(v99 - 8) + 64);
  __chkstk_darwin();
  v6 = &v97 - v5;
  v7 = *(*(v3 + 440) + 8);
  v103 = v1;
  v100 = *(v3 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  v102 = AssociatedTypeWitness;
  v9 = *(v101 + 64);
  __chkstk_darwin();
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v97 - v12;
  __chkstk_darwin();
  v15 = &v97 - v14;
  v16 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v97 - v19;
  sub_1000133C4(a1, &v97 - v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      v47 = v15;
      v49 = *v20;
      v48 = *(v20 + 1);
      v50 = *(v20 + 2);
      v51 = *(v20 + 3);
      v52 = *(v20 + 4);
      v53 = v20[40];
      v54 = v20[41];
      if (v54 <= 4)
      {
        if (v20[41] <= 1u)
        {
          if (v20[41])
          {
            v64 = *v20;

            sub_100011D2C(v65);
            sub_10001CF6C(v49, v48, v50, v51, v52, v53, 1);
            sub_10001CF6C(v49, v48, v50, v51, v52, v53, 1);
          }

          else
          {
            sub_1003EB284(v49 & 1);
          }
        }

        else if (v54 == 2)
        {
          sub_1000288C0(*v20);
        }

        else if (v54 == 3)
        {
          sub_1003ECD6C(v49 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          v62 = *(v20 + 2);

          sub_1003ED770(v63, v48, v50);
          sub_10001CF6C(v49, v48, v50, v51, v52, v53, 4);
          sub_10001CF6C(v49, v48, v50, v51, v52, v53, 4);
        }
      }

      else if (v20[41] > 7u)
      {
        if (v54 != 8)
        {
          if (v54 == 9)
          {
            v56 = v103;
            v57 = *(*v103 + 96);
            swift_beginAccess();
            v58 = v101;
            v59 = v56 + v57;
            v60 = v102;
            (*(v101 + 16))(v47, v59, v102);
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            (*(*(AssociatedConformanceWitness + 8) + 24))(v49 & 0xFFFFFFFFFFFFLL, v60);
            (*(v58 + 8))(v47, v60);
          }

          else
          {
            if (v50 | v48 | v49 | v51 | v52)
            {
              v66 = 0;
            }

            else
            {
              v66 = v53 == 0;
            }

            if (v66)
            {
              v82 = v103;
              v83 = *(*v103 + 96);
              swift_beginAccess();
              v84 = v101;
              v85 = v82 + v83;
              v86 = v102;
              (*(v101 + 16))(v47, v85, v102);
              v87 = swift_getAssociatedConformanceWitness();
              v88 = (*(v87 + 72))(v86, v87);
              (*(v84 + 8))(v47, v86);
              sub_1003EAF94(v88 & 1);
            }

            else
            {
              if (v20[40])
              {
                v67 = 0;
              }

              else
              {
                v67 = v49 == 1;
              }

              if (v67 && (v50 | v48 | v51 | v52) == 0)
              {
                v89 = v103;
                v90 = *(*v103 + 96);
                swift_beginAccess();
                v92 = v101;
                v91 = v102;
                (*(v101 + 16))(v13, &v89[v90], v102);
                v93 = swift_getAssociatedConformanceWitness();
                v94 = (*(v93 + 88))(v91, v93);
                (*(v92 + 8))(v13, v91);
                if ((v94 & 0x10000) != 0)
                {
                  v96 = CountryCode.unknown.unsafeMutableAddressor();
                  LOBYTE(v94) = *v96;
                  LOWORD(v95) = *(v96 + 1);
                }

                else
                {
                  v95 = v94 >> 8;
                }

                sub_1003EB95C(v94 | (v95 << 8));
              }

              else
              {
                v69 = v103;
                v70 = *(*v103 + 96);
                swift_beginAccess();
                v71 = v101;
                v72 = v102;
                v73 = v101 + 16;
                v99 = *(v101 + 16);
                (v99)(v47, v69 + v70, v102);
                v74 = swift_getAssociatedConformanceWitness();
                v100 = (*(v74 + 80))(v72, v74);
                v97 = v76;
                v98 = v75;
                v78 = v77;
                v79 = *(v71 + 8);
                v79(v47, v72);
                sub_1003EB184(v100, v98, v97, v78 & 0xFFFFFFFFFFFFLL);
                v98 = v70;
                v100 = v73;
                (v99)(v47, v69 + v70, v72);
                v101 = v74;
                (*(*(v74 + 8) + 32))(v72);
                v79(v47, v72);
                v80 = *(v69 + *(*v69 + 632));
                if (v80 != 3)
                {
                  v81 = v102;
                  (v99)(v47, v103 + v98, v102);
                  (*(v101 + 32))(v80, v81);
                  v79(v47, v81);
                }
              }
            }
          }
        }
      }

      else if (v54 == 5)
      {
        sub_1003F2D98(*v20, *(v20 + 1), *(v20 + 2), *(v20 + 3), *(v20 + 4), v20[40], 5);
        sub_1003F2B34();
        sub_10001CF6C(v49, v48, v50, v51, v52, v53, 5);
        sub_10001CF6C(v49, v48, v50, v51, v52, v53, 5);
      }

      else if (v54 == 6)
      {
        sub_1003EDDB4(*v20);
      }

      else
      {
        sub_1003F2C14();
      }
    }

    else
    {
      sub_1003F2D3C(v20);
      v35 = *(*v103 + 160);
      sub_1000133C4(a1, v18);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v104[0] = swift_slowAlloc();
        *v38 = 136315394;
        v39 = WiFiInterface.description.getter();
        v41 = v40;

        v42 = sub_100002320(v39, v41, v104);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        v43 = DriverEvent.description.getter();
        v45 = v44;
        sub_1003F2D3C(v18);
        v46 = sub_100002320(v43, v45, v104);

        *(v38 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v36, v37, "%s received an unexpected %s", v38, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1003F2D3C(v18);
      }
    }
  }

  else if ((EnumCaseMultiPayload - 3) >= 2 && EnumCaseMultiPayload == 5)
  {
    v23 = v103;
    v24 = *(*v103 + 96);
    swift_beginAccess();
    v25 = v101;
    v26 = v23 + v24;
    v27 = v102;
    (*(v101 + 16))(v11, v26, v102);
    v28 = swift_getAssociatedConformanceWitness();
    v29 = (*(v28 + 64))(v27, v28);
    (*(v25 + 8))(v11, v27);
    WiFiInterface.$macAddress.getter(v6);
    if ((v29 & 0x1000000000000) != 0)
    {
      v34 = *(v99 + 40);
      LOBYTE(v29) = v6[v34];
      v30.i32[0] = *&v6[v34 + 1];
      v32 = vmovl_u8(v30).u64[0];
      LOBYTE(v33) = v6[v34 + 5];
    }

    else
    {
      v31 = vdupq_n_s64(v29);
      v32 = vmovn_s32(vuzp1q_s32(vshlq_u64(v31, xmmword_1004817A0), vshlq_u64(v31, xmmword_100481790)));
      v33 = v29 >> 40;
      v34 = *(v99 + 40);
    }

    v55 = &v6[v34];
    *v55 = v29;
    *(v55 + 1) = vuzp1_s8(v32, v32).u32[0];
    v55[5] = v33;
    WiFiInterface.$macAddress.setter(v6);
  }
}

uint64_t sub_1000133C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013428(uint64_t a1, char *a2)
{
  v4 = &a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  v5 = *&a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8];
  *v4 = NANBitmap.Channel.operatingClass.getter;
  *(v4 + 1) = 0;

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100013518(a1, a2);
  }

  return result;
}

uint64_t sub_1000134C8(uint64_t a1, char *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v8 = v2[6];
  v7 = v2[7];
  return sub_100013428(a1, a2);
}

void sub_100013518(uint64_t a1, char *a2)
{
  v355 = a2;
  *&v353 = *v2;
  v4 = v353;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v352 = *(v5 - 8);
  v6 = *(v352 + 8);
  __chkstk_darwin();
  v8 = &v341 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = type metadata accessor for DispatchQoS();
  v349 = *(v350 - 1);
  v9 = *(v349 + 64);
  __chkstk_darwin();
  v11 = &v341 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v351 = &v341 - v13;
  v354 = *(v4 + 80);
  v348 = *(v354 - 1);
  v14 = v348[8];
  __chkstk_darwin();
  v16 = &v341 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v347 = &v341 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin();
  v22 = (&v341 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *a1;
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v27 = *(a1 + 32);
  switch(*(a1 + 40))
  {
    case 1:
      v189 = __chkstk_darwin();
      v31 = v355;
      v339 = v189;
      v340 = v355;
      v32 = sub_100388BA0;
      goto LABEL_37;
    case 2:
      v127 = __chkstk_darwin();
      v31 = v355;
      v339 = v127;
      v340 = v355;
      v32 = sub_100388B74;
      goto LABEL_37;
    case 3:
      v154 = v20;
      v346 = v23;
      v345 = v24;
      v155 = v2;
      v156 = sub_10001BDD0();
      if (!v156)
      {
        v240 = 0;
LABEL_128:
        v158 = v355;
        goto LABEL_129;
      }

      v157 = v156;
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v158 = v355;
      v159 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v160 = OS_dispatch_queue.nan.unsafeMutableAddressor();
      v161 = *v160;
      v162 = static NSObject.== infix(_:_:)();

      if ((v162 & 1) == 0 || (v163 = sub_100019B10(), v164 = NANBitmap.Channel.init(channel:)(v163 & 0xFFFFFFFFFFFFLL), (v165 & 0x100) != 0))
      {

        v240 = 0;
LABEL_129:
        v346(v240);

        v333 = &v158[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v334 = *&v158[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v335 = *&v158[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
        *v333 = 0;
        *(v333 + 1) = 0;
        sub_100010520(v334);
        return;
      }

      v166 = v164;
      v343 = v157;
      v167 = *v160;
      *v22 = v167;
      (*(v154 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
      v168 = v167;
      LOBYTE(v167) = _dispatchPreconditionTest(_:)();
      (*(v154 + 8))(v22, v18);
      if ((v167 & 1) == 0)
      {
        goto LABEL_139;
      }

      v169 = *(*v155 + 232);
      v170 = v343;
      swift_retain_n();
      swift_retain_n();
      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.debug.getter();
      v173 = os_log_type_enabled(v171, v172);
      v342 = v166;
      if (v173)
      {
        v174 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v174 = 136316162;
        v175 = WiFiInterface.description.getter();
        v177 = sub_100002320(v175, v176, &aBlock);

        *(v174 + 4) = v177;
        *(v174 + 12) = 2080;
        v178 = sub_100019F94();

        if (v178)
        {
          v179 = 0x64656C62616E65;
        }

        else
        {
          v179 = 0x64656C6261736964;
        }

        if (v178)
        {
          v180 = 0xE700000000000000;
        }

        else
        {
          v180 = 0xE800000000000000;
        }

        v181 = sub_100002320(v179, v180, &aBlock);

        *(v174 + 14) = v181;
        *(v174 + 22) = 1024;
        v182 = v155[24];

        *(v174 + 24) = v182;

        *(v174 + 28) = 1024;
        v183 = *(v170 + *(*v170 + 744));

        *(v174 + 30) = v183;

        *(v174 + 34) = 1024;
        v184 = *(v170 + *(*v170 + 800));
        swift_unownedRetainStrong();
        v185 = v155;
        LOBYTE(v181) = sub_10001A54C();

        *(v174 + 36) = v181 & 1;

        _os_log_impl(&_mh_execute_header, v171, v172, "%s state: %s, wasNANCapQueriedEver:%{BOOL}d configuredNAN:%{BOOL}d wifi power: %{BOOL}d", v174, 0x28u);
        swift_arrayDestroy();
      }

      else
      {

        v185 = v155;
      }

      v252 = v185[24];
      v349 = v170 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      if (v252 == 1)
      {
        goto LABEL_99;
      }

      v253 = *(*v170 + 744);
      if (*(v170 + v253) != 1)
      {
        goto LABEL_90;
      }

      if (sub_100019F94())
      {
        v254 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v170 = v343;
        if ((v254 & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      else
      {

        v170 = v343;
      }

LABEL_90:

      v261 = Logger.logObject.getter();
      v262 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v261, v262))
      {
        v263 = swift_slowAlloc();
        v264 = swift_slowAlloc();
        aBlock = v264;
        *v263 = 136315138;
        v265 = WiFiInterface.description.getter();
        v267 = v266;

        v268 = sub_100002320(v265, v267, &aBlock);

        *(v263 + 4) = v268;
        _os_log_impl(&_mh_execute_header, v261, v262, "%s state is disabled and first time queriying capabilities. Toggling before querying capabilities.", v263, 0xCu);
        sub_100002A00(v264);
      }

      else
      {
      }

      sub_10040E940(1);
      sub_10040E940(0);
LABEL_94:
      if (*(v170 + v253) == 1)
      {

        v269 = Logger.logObject.getter();
        v270 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v269, v270))
        {
          v271 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          aBlock = v272;
          *v271 = 136315138;
          v273 = WiFiInterface.description.getter();
          v275 = v274;

          v276 = sub_100002320(v273, v275, &aBlock);

          *(v271 + 4) = v276;
          _os_log_impl(&_mh_execute_header, v269, v270, "%s Setting wasNANCapQueriedEver to true.", v271, 0xCu);
          sub_100002A00(v272);
        }

        else
        {
        }

        v155[24] = 1;
      }

LABEL_99:
      sub_10005DC58(&unk_100598020, &qword_1004B2120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100480F40;
      v278 = (v170 + *(*v170 + 736));
      swift_beginAccess();
      v341 = type metadata accessor for NANDriverCapabilities();
      v279 = *(v341 + 64);
      v344 = v278;
      *(inited + 32) = *(v278 + v279);
      v280 = sub_100475E58(inited);
      swift_setDeallocating();
      v281 = *(v280 + 2);
      if (!v281)
      {

        v299 = _swiftEmptyArrayStorage;
LABEL_118:
        sub_100475B70(v299);

        sub_100019B10();
        isa = UInt32._bridgeToObjectiveC()().super.super.isa;
        v301.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
        v302 = v344[1];
        v303 = *(v302 + 16);
        v352 = isa;
        v351 = v301.super.super.isa;
        if (v303)
        {
          v358[0] = _swiftEmptyArrayStorage;

          specialized ContiguousArray.reserveCapacity(_:)();
          v304 = 32;
          do
          {
            v305 = *(v302 + v304);
            UInt8._bridgeToObjectiveC()();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v306 = *(v358[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v304;
            --v303;
          }

          while (v303);
        }

        v307 = *(*v170 + 96);
        swift_beginAccess();
        v308 = v348;
        v309 = v347;
        v310 = v354;
        (v348[2])(v347, v170 + v307, v354);
        v311 = *(*(v353 + 88) + 8);
        v312 = *(v311 + 8);

        v313 = v312(v310, v311);
        (v308[1])(v309, v310);
        v357 = *WiFiDriverCapabilities.supportsDualBand.unsafeMutableAddressor();
        v356 = v313;
        sub_1000C2A14();

        LODWORD(v309) = dispatch thunk of SetAlgebra.isSuperset(of:)();

        v314 = *v344;
        v315 = *(*v344 + 16);
        LODWORD(v354) = v309;
        v316 = 0;
        if (v315)
        {
          v317 = (v314 + 32);
          v318 = v341;
          do
          {
            v319 = *v317++;
            v316 |= 0x801004u >> (8 * v319);
            --v315;
          }

          while (v315);
        }

        else
        {
          v318 = v341;
        }

        v320 = (v170 + *(*v170 + 104));
        v322 = *v320;
        v321 = v320[1];

        v323 = v318[12];
        *&v353 = *(v344 + v318[11]);
        v324 = v318[10];
        v350 = *(v344 + v318[9]);
        v349 = *(v344 + v324);
        v325 = *(v344 + v323);
        v326 = objc_allocWithZone(WiFiAwareDeviceCapabilities);
        sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
        sub_100388B0C();
        v327 = Set._bridgeToObjectiveC()().super.isa;

        v328 = Array._bridgeToObjectiveC()().super.isa;

        v329 = String._bridgeToObjectiveC()();

        v339 = v325;
        v330 = v352;
        v331 = v351;
        v240 = [v326 initWithSupportedFeatures:v327 operatingChannel:v352 operatingClass:v351 supportedCipherSuites:v328 supportsDataTransfer:v354 & 1 supportedBands:v316 discoveryInterfaceName:v329 maxPeers:v353 maxPublishers:v350 maxSubscribers:v349 maxDatapaths:v339];

        v332 = v240;
        goto LABEL_128;
      }

      v358[0] = _swiftEmptyArrayStorage;
      v352 = v280;
      specialized ContiguousArray.reserveCapacity(_:)();
      v282 = v352;
      v283 = v352 + 56;
      v284 = -1 << v352[32];
      v285 = _HashTable.startBucket.getter();
      v286 = 0;
      v350 = v282 + 64;
      v351 = v281;
      while ((v285 & 0x8000000000000000) == 0 && v285 < 1 << v282[32])
      {
        v288 = v285 >> 6;
        if ((*&v283[8 * (v285 >> 6)] & (1 << v285)) == 0)
        {
          goto LABEL_131;
        }

        v289 = *(v282 + 9);
        v290 = *(*(v282 + 6) + 8 * v285);
        Int._bridgeToObjectiveC()();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v291 = *(v358[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v282 = v352;
        v287 = 1 << v352[32];
        if (v285 >= v287)
        {
          goto LABEL_132;
        }

        v292 = *&v283[8 * v288];
        if ((v292 & (1 << v285)) == 0)
        {
          goto LABEL_133;
        }

        if (v289 != *(v352 + 9))
        {
          goto LABEL_134;
        }

        v293 = v292 & (-2 << (v285 & 0x3F));
        if (v293)
        {
          v287 = __clz(__rbit64(v293)) | v285 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v294 = v288 << 6;
          v295 = v288 + 1;
          v296 = &v350[v288];
          while (v295 < (v287 + 63) >> 6)
          {
            v298 = *v296++;
            v297 = v298;
            v294 += 64;
            ++v295;
            if (v298)
            {
              sub_10002BEB8(v285, v289, 0);
              v287 = __clz(__rbit64(v297)) + v294;
              goto LABEL_115;
            }
          }

          sub_10002BEB8(v285, v289, 0);
LABEL_115:
          v282 = v352;
        }

        ++v286;
        v285 = v287;
        if (v286 == v351)
        {

          v299 = v358[0];
          v170 = v343;
          goto LABEL_118;
        }
      }

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
      return;
    case 4:
      v346 = *a1;
      v345 = v24;
      v62 = objc_opt_self();
      v63 = [v62 wifip2pExportedXPCInterfaceFor:&OBJC_PROTOCOL___WiFiAwarePairedDevicesXPC];
      v64 = v355;
      v65 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
      [v65 setExportedInterface:v63];

      v66 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiAwarePairedDevicesXPCDelegate];
      [v65 setRemoteObjectInterface:v66];

      v67 = *&v64[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8];
      if (v67)
      {
        v68 = *&v64[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID];
        v69 = *(*v2 + 232);
        v70 = *&v64[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8];
        swift_bridgeObjectRetain_n();
        v71 = v64;
        v344 = v2;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();

        v74 = os_log_type_enabled(v72, v73);
        v352 = v62;
        v350 = v68;
        if (v74)
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          aBlock = v77;
          *v75 = 136315394;
          *(v75 + 4) = sub_100002320(v68, v67, &aBlock);
          *(v75 + 12) = 2112;
          *(v75 + 14) = v71;
          *v76 = v71;
          v78 = v71;
          _os_log_impl(&_mh_execute_header, v72, v73, "Creating Pairing Store Instance for: %s, XPC Session: %@", v75, 0x16u);
          sub_10000BB28(v76);

          sub_100002A00(v77);
        }

        v79 = v353;
        v80 = *(v353 + 96);
        v81 = v354;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        type metadata accessor for WiFiAwarePairingStoreInstance();
        v82 = v344;
        v83 = *v344;
        v84 = v82 + *(*v82 + 136);
        v355 = *(v79 + 88);
        aBlock = v81;
        *&v85 = v355;
        *(&v85 + 1) = v80;
        v353 = *(v79 + 104);
        v360 = v85;
        v361 = v353;
        v86 = *&v84[*(type metadata accessor for P2PController.Components() + 80)];

        v87 = v65;
        v88 = v350;
        v89 = sub_100307A34(v86, v350, v67, v87);
        v90 = type metadata accessor for TaskPriority();
        v91 = v351;
        (*(*(v90 - 8) + 56))(v351, 1, 1, v90);
        v92 = swift_allocObject();
        v92[2] = 0;
        v92[3] = 0;
        v92[4] = v82;
        v92[5] = v88;
        v92[6] = v67;
        v92[7] = v71;

        v93 = v71;
        sub_1003ACB3C(0, 0, v91, &unk_1004B2118, v92);

        v94 = [v352 weakExportedObjectProxy:v89];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100301920(&aBlock);
        v95 = swift_allocObject();
        swift_weakInit();
        v96 = swift_allocObject();
        v97 = v355;
        *(v96 + 16) = v81;
        *(v96 + 24) = v97;
        *(v96 + 32) = v80;
        *(v96 + 40) = v353;
        *(v96 + 56) = v95;
        *(v96 + 64) = v93;
        *(v96 + 72) = v89;
        *(v96 + 80) = v88;
        *(v96 + 88) = v67;
        v98 = &v93[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v99 = *&v93[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v100 = *&v93[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
        *v98 = sub_100387C90;
        v98[1] = v96;
        v101 = v93;

        sub_100010520(v99);

        v346(0);

        return;
      }

      v241 = *(*v2 + 232);
      v242 = v64;
      v243 = Logger.logObject.getter();
      v244 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v243, v244))
      {
        v245 = swift_slowAlloc();
        v246 = swift_slowAlloc();
        *v245 = 138412290;
        *(v245 + 4) = v242;
        *v246 = v242;
        v247 = v242;
        _os_log_impl(&_mh_execute_header, v243, v244, "Failed to create pairing store instance for %@: No Client BundleID", v245, 0xCu);
        sub_10000BB28(v246);
      }

      v248 = 2;
      goto LABEL_73;
    case 5:
      v198 = *(a1 + 16);
      v199 = *a1;
      v345 = *(a1 + 8);
      v200 = swift_allocObject();
      *(v200 + 16) = 0;
      v201 = sub_10001BDD0();
      if (v201)
      {
        v202 = v201;
        v354 = (v198 >> 40);
        *&v353 = HIDWORD(v198);
        v352 = (v198 >> 24);
        v350 = (v198 >> 16);
        v203 = type metadata accessor for TaskPriority();
        v204 = v351;
        (*(*(v203 - 8) + 56))(v351, 1, 1, v203);
        v205 = swift_allocObject();
        *(v205 + 16) = 0;
        *(v205 + 24) = 0;
        *(v205 + 32) = v200;
        *(v205 + 40) = v202;
        *(v205 + 48) = v199;
        *(v205 + 56) = v345;
        *(v205 + 64) = v198;
        *(v205 + 66) = v350;
        *(v205 + 67) = v352;
        *(v205 + 68) = v353;
        *(v205 + 69) = v354;
        *(v205 + 72) = v26;
        *(v205 + 80) = v27;
        v206 = v355;
        *(v205 + 88) = v355;
        v207 = v206;

        sub_100387750(a1, &aBlock);
        sub_1003ACB3C(0, 0, v204, &unk_1004B2108, v205);
      }

      goto LABEL_72;
    case 6:
      v226 = v2 + *(v353 + 136);
      aBlock = v354;
      v360 = *(v353 + 88);
      v361 = *(v353 + 104);
      v227 = v23;
      v228 = v24;
      v229 = v25;
      v230 = *(v226 + *(type metadata accessor for P2PController.Components() + 72));

      sub_1002D0E10(v355, v227, v228, v229);
LABEL_72:

      return;
    case 7:
      v186 = __chkstk_darwin();
      v33 = &v337;
      v35 = v355;
      v339 = v355;
      v340 = v186;
      v38 = sub_100387A84;
      v34 = v188;
      goto LABEL_54;
    case 8:
      __chkstk_darwin();
      v340 = v236;
      v237 = __chkstk_darwin();
      v34 = &v336;
      v35 = v355;
      v337 = v355;
      v338 = v237;
      v339 = v238;
      v38 = sub_1003879BC;
      v39 = sub_100387A18;
      goto LABEL_53;
    case 9:
      __chkstk_darwin();
      __chkstk_darwin();
      v34 = &v336;
      v35 = v355;
      v337 = v355;
      v338 = v125;
      v339 = v126;
      v38 = sub_100387928;
      v39 = sub_100387950;
      goto LABEL_53;
    case 0xA:
      __chkstk_darwin();
      v234 = __chkstk_darwin();
      v34 = &v336;
      v337 = v35;
      v338 = v234;
      v339 = v235;
      v38 = sub_100387884;
      v39 = sub_1003878B8;
      goto LABEL_53;
    case 0xB:
      __chkstk_darwin();
      v340 = v59;
      v60 = __chkstk_darwin();
      v34 = &v336;
      v35 = v355;
      v337 = v355;
      v338 = v60;
      v339 = v61;
      v38 = sub_10038785C;
      v39 = sub_100387878;
      goto LABEL_53;
    case 0xC:
      v102 = *a1;
      v103 = *(a1 + 8);
      v344 = v2;
      v104 = v355;
      v105 = &v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v106 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v107 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v105 = 0;
      *(v105 + 1) = 0;
      sub_100010520(v106);
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v108 = *&v104[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v109 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
      v110 = static NSObject.== infix(_:_:)();

      if (v110)
      {
        v111 = swift_allocObject();
        *(v111 + 16) = 0;
        v112 = swift_allocObject();
        *(v112 + 16) = 0;
        v113 = v112;
        v342 = v112;
        v114 = swift_allocObject();
        *(v114 + 16) = &_swiftEmptyDictionarySingleton;
        v354 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
        v115 = swift_allocObject();
        v115[2] = v344;
        v115[3] = v114;
        v347 = v111;
        v115[4] = v111;
        v115[5] = v113;
        v346 = v102;
        v115[6] = v102;
        v115[7] = v103;
        v345 = v103;
        *(&v361 + 1) = sub_100387738;
        v362 = v115;
        aBlock = _NSConcreteStackBlock;
        *&v360 = 1107296256;
        v355 = &v360 + 8;
        *(&v360 + 1) = sub_10000C8B8;
        *&v361 = &unk_100577D70;
        v116 = _Block_copy(&aBlock);

        sub_100387750(a1, v358);
        v117 = v354;

        v118 = v342;

        static DispatchQoS.unspecified.getter();
        v358[0] = _swiftEmptyArrayStorage;
        v354 = sub_10001CF14();
        *&v353 = sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        v351 = sub_10005DCA0();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v116);

        v119 = *(v352 + 1);
        v352 += 8;
        v348 = v119;
        (v119)(v8, v5);
        v349 = *(v349 + 8);
        (v349)(v11, v350);

        v343 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v120 = swift_allocObject();
        v120[2] = v344;
        v120[3] = v114;
        v121 = v347;
        v120[4] = v118;
        v120[5] = v121;
        v122 = v345;
        v120[6] = v346;
        v120[7] = v122;
        *(&v361 + 1) = sub_1003877AC;
        v362 = v120;
        aBlock = _NSConcreteStackBlock;
        *&v360 = 1107296256;
        *(&v360 + 1) = sub_10000C8B8;
        *&v361 = &unk_100577DC0;
        v123 = _Block_copy(&aBlock);

        sub_100387750(a1, v358);

        v124 = v343;
        static DispatchQoS.unspecified.getter();
        v358[0] = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v123);

        (v348)(v8, v5);
        (v349)(v11, v350);
      }

      else
      {
        sub_1000827F8(_swiftEmptyArrayStorage);
        (v102)();
      }

      return;
    case 0xD:
      v208 = v20;
      v209 = *(a1 + 16);
      v346 = v23;
      v210 = v24;
      v211 = v355;
      v212 = &v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v213 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v214 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v212 = 0;
      *(v212 + 1) = 0;
      sub_100010520(v213);
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v215 = *&v211[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v216 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
      v217 = *v216;
      v218 = static NSObject.== infix(_:_:)();

      if ((v218 & 1) == 0)
      {
        v355 = Int32._bridgeToObjectiveC()().super.super.isa;
        v210();
        v239 = v355;

        return;
      }

      v219 = *v216;
      *v22 = *v216;
      (*(v208 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
      v220 = v219;
      LOBYTE(v219) = _dispatchPreconditionTest(_:)();
      (*(v208 + 8))(v22, v18);
      if ((v219 & 1) == 0)
      {
        goto LABEL_138;
      }

      if (!sub_10000DFFC())
      {
        goto LABEL_88;
      }

      v221 = [v346 uniqueIdentifier];
      v222 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v224 = v223;
      if (v222 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v224 == v225)
      {
        goto LABEL_48;
      }

      v249 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v249 & 1) == 0)
      {
        v221 = [v346 uniqueIdentifier];
        v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v257 = v256;
        if (v255 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v257 == v258)
        {
LABEL_48:
        }

        else
        {
          v259 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v259 & 1) == 0)
          {

LABEL_88:
            v260 = Int32._bridgeToObjectiveC()().super.super.isa;
            v210();

            return;
          }
        }
      }

      v250 = [v346 peerAddress];
      sub_10044DE80(v250);

      v251 = Int32._bridgeToObjectiveC()().super.super.isa;
      v210();

      return;
    case 0xE:
      v40 = v20;
      v41 = v23;
      v42 = v2;
      v43 = v355;
      v44 = &v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v45 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v46 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v44 = 0;
      *(v44 + 1) = 0;
      sub_100010520(v45);
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v47 = *&v43[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v48 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
      v49 = *v48;
      v50 = static NSObject.== infix(_:_:)();

      if (v50)
      {
        v51 = *v48;
        *v22 = v51;
        (*(v40 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
        v52 = v51;
        LOBYTE(v51) = _dispatchPreconditionTest(_:)();
        (*(v40 + 8))(v22, v18);
        if ((v51 & 1) == 0)
        {
          goto LABEL_135;
        }

        v53 = v42 + *(*v42 + 136);
        aBlock = v354;
        v360 = *(v353 + 88);
        v361 = *(v353 + 104);
        v54 = *(*(v53 + *(type metadata accessor for P2PController.Components() + 72)) + qword_10059B860);

        v55 = sub_1002CF94C();

        v56 = sub_100380430(v55);

        v57 = sub_1003010C0(v56, v54);

        v58 = sub_1002CE998(v57);

        v41(v58);
      }

      else
      {
        v41(_swiftEmptyArrayStorage);
      }

      return;
    case 0xF:
      v128 = v20;
      v346 = *a1;
      v345 = v24;
      v129 = v355;
      v130 = &v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v131 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v132 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v130 = 0;
      *(v130 + 1) = 0;
      sub_100010520(v131);
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v133 = *&v129[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v134 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
      v135 = *v134;
      v136 = static NSObject.== infix(_:_:)();

      if ((v136 & 1) == 0)
      {
        goto LABEL_56;
      }

      v137 = *v134;
      *v22 = *v134;
      (*(v128 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
      v138 = v137;
      LOBYTE(v137) = _dispatchPreconditionTest(_:)();
      (*(v128 + 8))(v22, v18);
      if ((v137 & 1) == 0)
      {
        goto LABEL_136;
      }

      v139 = sub_10000DFFC();
      if (v139)
      {
        v140 = v139;
        sub_10004D020();
        sub_100374870(&aBlock);

        v358[0] = aBlock;
        v141 = v353;
        swift_getWitnessTable();
        type metadata accessor for AWDLDiscoveryEngine.Browse();
        sub_10006153C();
        type metadata accessor for Dictionary.Keys();
        swift_getWitnessTable();
        v142 = Set.init<A>(_:)();
        v143 = *&v140[*(*v140 + 464)];

        sub_10002B550(&aBlock);

        v144 = sub_10002BEC4(aBlock, v142);

        v145 = sub_10002BC6C(v144);

        v146 = *(*v140 + 96);
        swift_beginAccess();
        v147 = v348;
        v148 = v354;
        (v348[2])(v16, &v140[v146], v354);
        v149 = (*(*(v141 + 88) + 64))(v148);
        (v147[1])(v16, v148);
        v150 = *(v149 + 16);
        if (v150)
        {
          v358[0] = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v151 = 32;
          do
          {
            [objc_allocWithZone(NSNumber) initWithUnsignedShort:*(v149 + v151)];
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v152 = *(v358[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v151 += 2;
            --v150;
          }

          while (v150);

          v153 = v358[0];
        }

        else
        {

          v153 = _swiftEmptyArrayStorage;
        }

        (v346)(v145, v153);
      }

      else
      {
LABEL_56:
        (v346)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
      }

      return;
    case 0x10:
      __chkstk_darwin();
      __chkstk_darwin();
      v34 = &v336;
      v35 = v355;
      v337 = v355;
      v338 = v36;
      v339 = v37;
      v38 = sub_1003877DC;
      v39 = sub_1003877F8;
LABEL_53:
      v187 = v39;
LABEL_54:
      sub_1003851B4(v38, v33, v187, v34, v35, v2);
      return;
    case 0x11:
      v190 = v20;
      v346 = *a1;
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v191 = v355;
      v192 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v193 = OS_dispatch_queue.nan.unsafeMutableAddressor();
      v194 = *v193;
      v195 = static NSObject.== infix(_:_:)();

      if (v195)
      {
        v196 = *v193;
        *v22 = *v193;
        (*(v190 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
        v197 = v196;
        LOBYTE(v196) = _dispatchPreconditionTest(_:)();
        (*(v190 + 8))(v22, v18);
        if ((v196 & 1) == 0)
        {
          goto LABEL_137;
        }

        sub_1003815A8(v191);
        v248 = 0;
      }

      else
      {
        v248 = 2;
      }

LABEL_73:
      v346(v248);
      return;
    case 0x12:
      v231 = &v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v232 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v233 = *&v355[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v231 = 0;
      *(v231 + 1) = 0;
      sub_100010520(v232);
      v26(2);
      return;
    default:
      v28 = __chkstk_darwin();
      v31 = v355;
      v339 = v28;
      v340 = v355;
      v32 = sub_100388BCC;
LABEL_37:
      sub_100384E48(v32, &v337, v29, v30, v31, v2);
      return;
  }
}

uint64_t sub_1000160E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016120()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016158()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016190()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000161E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100016238()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100016290(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10005DC58(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000162F0@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  result = if_nametoindex(a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for RoutingSocket()
{
  result = qword_100591318;
  if (!qword_100591318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001636C(char a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 56);
  v4 = swift_checkMetadataState();
  return v3(a1 & 1, v4, AssociatedConformanceWitness);
}

unint64_t sub_100016444(int64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 6)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 6)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 6uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v15 = *(a1 + 16);
    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v17 = v16;
    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(v15, v18))
    {
      v13 = v15 - v18 + v17;
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v19 = a1 >> 8;
    v20 = vdupq_n_s64(a1);
    *v20.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v20, xmmword_1004841E0), vshlq_u64(v20, xmmword_1004841F0)));
    goto LABEL_23;
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = v9 - v12 + v11;
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LOBYTE(a1) = *v13;
      LOBYTE(v19) = *(v13 + 1);
      v14.i32[0] = *(v13 + 2);
      v20 = vmovl_u8(v14);
LABEL_23:
      v21 = vmovl_u16((v20.i64[0] & 0xFF00FF00FF00FFLL));
      v22.i64[0] = v21.u32[0];
      v22.i64[1] = v21.u32[1];
      v23 = v22;
      v22.i64[0] = v21.u32[2];
      v22.i64[1] = v21.u32[3];
      v24 = vorrq_s8(vshlq_u64(v23, xmmword_1004AD2A0), vshlq_u64(v22, xmmword_1004AD290));
      return *&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | (v19 << 8) | a1;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_100016670(uint64_t result)
{
  v2 = *(*v1 + 40);
  if (*(v2 + 128))
  {
    v3 = result;
    v4 = *(v2 + 128);

    sub_1000166E0(v3 & 0xFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_1000166E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(sub_10005DC58(&qword_10058BC88, &unk_1004818B0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v28 - v5;
  v7 = type metadata accessor for RoutingSocket();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012400(v2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket, v6, &qword_10058BC88, &unk_1004818B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_10058BC88;
    v13 = &unk_1004818B0;
    v14 = v6;
  }

  else
  {
    sub_100016DFC(v6, v11, type metadata accessor for RoutingSocket);
    RoutingSocket.ipAddress(for:)(a1 & 0xFFFFFFFFFFFFLL, v36);
    v32 = v36[1];
    v33 = v36[0];
    v30 = v36[3];
    v31 = v36[2];
    sub_100012400(v36, v35, &unk_10058C790, qword_100481FB8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    sub_100016290(v36, &unk_10058C790, qword_100481FB8);
    if (os_log_type_enabled(v16, v17))
    {
      v29 = v17;
      v18 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35[0] = v28;
      *v18 = 136315394;
      v19 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v21 = sub_100002320(v19, v20, v35);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      if (v37)
      {
        v22 = IPv6Address.description.getter(v33, v32, v31, v30);
        v24 = v23;
      }

      else
      {
        v25 = swift_slowAlloc();
        v34[0] = v33;
        inet_ntop(2, v34, v25, 0x10u);
        v22 = String.init(cString:)();
        v24 = v26;
      }

      v27 = sub_100002320(v22, v24, v35);

      *(v18 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v29, "Infra peer (%s) has IP address %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10002B6E0(a1 & 0xFFFFFFFFFFFFLL, v36, 0x1C3uLL);
    sub_100012468(v11, type metadata accessor for RoutingSocket);
    v12 = &unk_10058C790;
    v13 = qword_100481FB8;
    v14 = v36;
  }

  return sub_100016290(v14, v12, v13);
}