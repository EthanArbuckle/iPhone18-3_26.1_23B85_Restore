uint64_t sub_1003A3D8C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a1;
  v68 = type metadata accessor for DispatchTime();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v67 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v53 - v10;
  v72 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  v11 = *(*(v72 - 8) + 64);
  __chkstk_darwin();
  v74 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &qword_1004AFD40;
  v71 = sub_10005DC58(&unk_100595C80, &qword_1004AFD40);
  v14 = *(*(v71 - 8) + 64);
  __chkstk_darwin();
  v70 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v53 - v16;
  v63 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v69 = *(v63 - 8);
  v18 = *(v69 + 64);
  result = __chkstk_darwin();
  v77 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v73 = a3;
  v22 = *(a3 + 64);
  v58 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v56 = 0;
  v57 = (v23 + 63) >> 6;
  v61 = (v7 + 16);
  v62 = (v4 + 8);
  v60 = (v7 + 8);
  while (v25)
  {
    v36 = __clz(__rbit64(v25));
    v76 = (v25 - 1) & v25;
LABEL_13:
    v39 = v36 | (v21 << 6);
    v40 = v73[7];
    v41 = v73[6] - v39 + 8 * v39;
    v42 = *(v41 + 4);
    v43 = *(v41 + 6);
    v44 = *(v69 + 72);
    v59 = v39;
    v45 = *v41;
    v46 = v77;
    sub_1003A4E40(v40 + v44 * v39, v77, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *v17 = v45;
    *(v17 + 2) = v42;
    v17[6] = v43;
    v47 = v71;
    sub_1003A4E40(v46, &v17[*(v71 + 48)], type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v48 = v70;
    sub_100012400(v17, v70, &unk_100595C80, v13);
    v49 = v48 + *(v47 + 48);
    sub_1003A4E40(v49, v74, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v51 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_100016290(v17, &unk_100595C80, v13);
          sub_1003A4664(v74, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        }

        else
        {
          sub_100016290(v17, &unk_100595C80, v13);
        }

        sub_1003A4664(v49, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        result = sub_1003A4664(v77, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v25 = v76;
        goto LABEL_21;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v51 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State;
      }

      sub_1003A4664(v74, v51);
    }

    type metadata accessor for P2PTimer();
    v26 = v67;
    variable initialization expression of AWDLPeer.lastUpdated();
    v27 = v64;
    v28 = v49 + *(v63 + 20);
    DispatchTime.distance(to:)();
    (*v62)(v26, v68);
    v29 = NANConstants.authenticationRequestTimeout.unsafeMutableAddressor();
    v30 = v17;
    v31 = v13;
    v32 = v65;
    v33 = v66;
    (*v61)(v65, v29, v66);
    v75 = static DispatchTimeInterval.< infix(_:_:)();
    v34 = *v60;
    v35 = v32;
    v13 = v31;
    v17 = v30;
    (*v60)(v35, v33);
    v34(v27, v33);
    sub_100016290(v30, &unk_100595C80, v13);
    sub_1003A4664(v49, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    result = sub_1003A4664(v77, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v25 = v76;
    if (!v75)
    {
LABEL_21:
      *(v55 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      if (__OFADD__(v56++, 1))
      {
        __break(1u);
        return sub_1003686EC(v55, v54, v56, v73);
      }
    }
  }

  v37 = v21;
  while (1)
  {
    v21 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v21 >= v57)
    {
      return sub_1003686EC(v55, v54, v56, v73);
    }

    v38 = *(v58 + 8 * v21);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v76 = (v38 - 1) & v38;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003A4400(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1003A3904(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1003A4488(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1003A3D8C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1003A4500(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) - (v10 | (v9 << 6)) + 8 * (v10 | (v9 << 6)));
        result = sub_10037E5E4(*v11 | (*(v11 + 2) << 16) | (*(v11 + 3) << 24), v12);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1003A461C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003A4664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003A46C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003A472C()
{
  result = qword_1005985F8;
  if (!qword_1005985F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005985F8);
  }

  return result;
}

uint64_t sub_1003A4780(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_10000AB0C(result, a2);

    return sub_10000AB0C(a3, a4);
  }

  return result;
}

uint64_t sub_1003A4824(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for NANPeer.Service(0) - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1[3];
  v23 = v1[2];
  v20 = v1[7];
  v21 = v1[6];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1 + v7;
  v13 = *v12;
  v14 = v12[8];
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v17 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_10030BDD0;

  return sub_1003A1884(a1, v23, v22, v21, v20, v10, v11, v1 + v5);
}

uint64_t sub_1003A49AC()
{
  v1 = type metadata accessor for NANPeer.Service(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 64);

  v7 = v0 + v3;
  sub_1000124C8(*(v0 + v3), *(v0 + v3 + 8));
  v8 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 50) != 255)
  {
    v9 = *(v7 + 48) | (*(v7 + 50) << 16);
    sub_1001842C4(*(v7 + 32), *(v7 + 40), v9, BYTE2(v9) & 1);
  }

  if (*(v7 + 56) != 4)
  {
    sub_1000124C8(*(v7 + 64), *(v7 + 72));
  }

  if ((*(v7 + 96) & 0xFELL) != 4)
  {
    sub_1000124C8(*(v7 + 104), *(v7 + 112));
  }

  v10 = *(v7 + 144);
  if (v10 != 255)
  {
    sub_1002E9A40(*(v7 + 120), *(v7 + 128), *(v7 + 136), v10 & 1);
  }

  v11 = v3 + v4;
  v12 = (v3 + v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v7 + 152);

  v16 = *(v1 + 32);
  v17 = type metadata accessor for DispatchTime();
  (*(*(v17 - 8) + 8))(v7 + v16, v17);
  v18 = *(v0 + v14);

  v19 = *(v0 + v13);

  return _swift_deallocObject(v0, ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1003A4B70(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for NANPeer.Service(0) - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1[3];
  v23 = v1[2];
  v20 = v1[7];
  v21 = v1[6];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1 + v7;
  v13 = *v12;
  v14 = v12[8];
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v17 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1002CB380;

  return sub_1003A0B44(a1, v23, v22, v21, v20, v10, v11, v1 + v5);
}

id sub_1003A4D10@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + qword_1005983F8);
  if (v3)
  {
    result = [*(*(v1 + 16) + qword_1005983F8) subscribeReceivedDiscoveryResult:*(v1 + 24)];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_1003A4DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1003A4E34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_100394AC4();
}

uint64_t sub_1003A4E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A4EF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6269726373627553;
  }

  else
  {
    v4 = 0x6873696C627550;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x6269726373627553;
  }

  else
  {
    v6 = 0x6873696C627550;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1003A4FA0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003A5028()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1003A509C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003A5120@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100572838, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1003A5180(uint64_t *a1@<X8>)
{
  v2 = 0x6873696C627550;
  if (*v1)
  {
    v2 = 0x6269726373627553;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1003A51FC()
{
  result = qword_1005986D8[0];
  if (!qword_1005986D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005986D8);
  }

  return result;
}

uint64_t P2PMain.onTerminate.getter()
{
  v1 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_10001F89C(v3);
  return v3;
}

uint64_t P2PMain.onTerminate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100010520(v6);
}

uint64_t (*P2PMain.onTerminate.modify())()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t P2PMain.__allocating_init(device:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return P2PMain.init(device:)(a1);
}

uint64_t P2PMain.init(device:)(uint64_t a1)
{
  v2 = v1;
  v77 = a1;
  v75 = *v1;
  v3 = v75;
  v74 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v74 - 8);
  v4 = *(v71 + 64);
  __chkstk_darwin();
  v70 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v69 = *(v73 - 8);
  v6 = *(v69 + 64);
  __chkstk_darwin();
  v68 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 80);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v62 - v12;
  v76 = *(v8 - 8);
  v14 = *(v76 + 64);
  __chkstk_darwin();
  v72 = v62 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = (v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[*(v3 + 104)] = _swiftEmptyArrayStorage;
  v21 = &v2[*(*v2 + 144)];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v23 = *v22;
  *v20 = *v22;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v20, v16);
  if (v23)
  {
    v26 = v77;
    (*(v10 + 16))(v13, v77, v9);
    v27 = v76;
    if ((*(v76 + 48))(v13, 1, v8) == 1)
    {
      v28 = *(v10 + 8);
      v28(v26, v9);
      v28(v13, v9);
      v29 = v75;
    }

    else
    {
      v67 = v9;
      v30 = v72;
      (*(v27 + 32))(v72, v13, v8);
      v29 = v75;
      v31 = *(v75 + 88);
      v32 = (*(v31 + 48))(v8, v31);
      v34 = v33;
      v35 = objc_allocWithZone(type metadata accessor for XPCServer());
      v36 = sub_1004442F0(v32, v34);
      if (v36)
      {
        v37 = v36;
        (*(v27 + 16))(&v2[*(*v2 + 96)], v30, v8);
        *&v2[*(*v2 + 136)] = v37;
        sub_10001C2F0();
        v64 = v10;
        v65 = v8;
        v38 = *v22;
        v66 = v37;
        v39 = v38;
        v40 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

        *&v2[*(*v2 + 112)] = v40;
        v41 = *v22;
        v42 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

        *&v2[*(*v2 + 120)] = v42;
        v43 = *v22;
        v44 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

        *&v2[*(*v2 + 128)] = v44;
        v45 = swift_allocObject();
        swift_weakInit();
        v46 = swift_allocObject();
        v46[2] = v8;
        v46[3] = v31;
        v46[4] = v45;
        v47 = *&v2[*(*v2 + 112)];
        swift_getObjectType();
        v63 = sub_1003A70F8;
        v82 = sub_1003A70F8;
        v83 = v46;
        aBlock = _NSConcreteStackBlock;
        v79 = 1107296256;
        v62[1] = &v80;
        v80 = sub_10000C8B8;
        v81 = &unk_100578748;
        v48 = _Block_copy(&aBlock);

        v49 = v68;
        static DispatchQoS.unspecified.getter();
        v50 = v70;
        sub_10001C560();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v48);
        v75 = *(v71 + 8);
        (v75)(v50, v74);
        v51 = *(v69 + 8);
        v51(v49, v73);

        v52 = *&v2[*(*v2 + 120)];
        swift_getObjectType();
        v82 = v63;
        v83 = v46;
        aBlock = _NSConcreteStackBlock;
        v79 = 1107296256;
        v80 = sub_10000C8B8;
        v81 = &unk_100578770;
        v53 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        sub_10001C560();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v53);
        (v75)(v50, v74);
        v51(v49, v73);

        v54 = *&v2[*(*v2 + 128)];
        swift_getObjectType();
        v82 = NANBitmap.Channel.operatingClass.getter;
        v83 = 0;
        aBlock = _NSConcreteStackBlock;
        v79 = 1107296256;
        v80 = sub_10000C8B8;
        v81 = &unk_100578798;
        v55 = _Block_copy(&aBlock);
        static DispatchQoS.unspecified.getter();
        sub_10001C560();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v55);

        (*(v64 + 8))(v77, v67);
        (v75)(v50, v74);
        v51(v49, v73);
        (*(v76 + 8))(v72, v65);

        return v2;
      }

      (*(v10 + 8))(v77, v67);
      (*(v27 + 8))(v30, v8);
    }

    v56 = *&v2[*(*v2 + 104)];

    v57 = &v2[*(*v2 + 144)];
    v58 = v57[1];
    sub_100010520(*v57);
    v59 = *(v29 + 88);
    type metadata accessor for P2PMain();
    v60 = *(*v2 + 48);
    v61 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A5E18()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = (&v25[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received a terminate signal, will disable all interfaces", v12, 2u);
  }

  (*(v6 + 8))(v9, v5);
  v13 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v14 = *v13;
  *v4 = *v13;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v4, v0);
  if ((v14 & 1) == 0)
  {
LABEL_12:
    __break(1u);

    result = sub_100002A00(v25);
    __break(1u);
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = *(*result + 104);
    swift_beginAccess();
    v19 = *(v17 + v18);
    v20 = *(v19 + 16);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;

    if (v20)
    {
      v22 = 0;
      v23 = v19 + 32;
      while (v22 < *(v19 + 16))
      {
        sub_10002B154(v23, v25);
        sub_1003A616C(v25, v21, v20, v17);
        ++v22;
        sub_100002A00(v25);
        v23 += 40;
        if (v20 == v22)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_12;
    }

LABEL_9:
  }

  return result;
}

uint64_t sub_1003A616C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_100029B34(a1, v7);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v10 = *(v8 + 8);

  v10(sub_1003A8134, v9, v7, v8);
}

uint64_t sub_1003A6234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  *(a1 + 16) = v17;
  if (v17 == a2)
  {
    v18 = *(*a3 + 104);
    swift_beginAccess();
    v19 = *(a3 + v18);
    *(a3 + v18) = _swiftEmptyArrayStorage;

    v20 = a3 + *(*a3 + 144);
    result = swift_beginAccess();
    v21 = *v20;
    v22 = *(v20 + 8);
    *v20 = 0;
    *(v20 + 8) = 0;
    if (v21)
    {

      v21(v23);
      sub_100010520(v21);
      return sub_100010520(v21);
    }
  }

  return result;
}

char *P2PMain.deinit()
{
  v1 = v0;
  v2 = *v0;
  v45 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v49 = *(v43 - 8);
  v7 = *(v49 + 64);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v2 + 112);
  v10 = *&v1[v47];
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v46 = *(*v1 + 120);
  v11 = *&v1[v46];
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v44 = *(*v1 + 128);
  v12 = *&v1[v44];
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v14;
  v55 = sub_1003A7104;
  v56 = v16;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v42 = &v53;
  v53 = sub_10000C8B8;
  v54 = &unk_100578810;
  v17 = _Block_copy(&aBlock);
  v18 = v15;

  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  v40 = sub_10001CF14();
  v39 = sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  v41 = sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  v19 = *(v48 + 8);
  v48 += 8;
  v38 = v19;
  v20 = v3;
  v19(v6, v3);
  v21 = *(v49 + 8);
  v49 += 8;
  v37 = v21;
  v22 = v9;
  v23 = v9;
  v24 = v43;
  v21(v23, v43);

  v25 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v26 = swift_allocObject();
  *(v26 + 16) = v14;
  *(v26 + 24) = v13;
  v55 = sub_1003A7144;
  v56 = v26;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_10000C8B8;
  v54 = &unk_100578860;
  v27 = _Block_copy(&aBlock);

  v28 = v25;
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  v38(v6, v20);
  v37(v22, v24);

  (*(*(*(v45 + 80) - 8) + 8))(&v1[*(*v1 + 96)]);
  v29 = *&v1[*(*v1 + 104)];

  v30 = *&v1[v47];
  swift_unknownObjectRelease();
  v31 = *&v1[v46];
  swift_unknownObjectRelease();
  v32 = *&v1[v44];
  swift_unknownObjectRelease();

  v33 = &v1[*(*v1 + 144)];
  v34 = v33[1];
  sub_100010520(*v33);
  return v1;
}

uint64_t sub_1003A6A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v24);
}

uint64_t sub_1003A6C80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  result = swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    exit(0);
  }

  return result;
}

uint64_t P2PMain.__deallocating_deinit()
{
  P2PMain.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall P2PMain.start()()
{
  v1 = v0;
  v2 = *(v0 + *(*v0 + 112));
  swift_getObjectType();
  OS_dispatch_source.activate()();
  v3 = *(*v0 + 120);
  v4 = *(v0 + v3);
  v5 = *(v1 + v3);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  v6 = *(v1 + *(*v1 + 128));
  swift_getObjectType();
  OS_dispatch_source.activate()();
  v7 = *(v1 + *(*v1 + 136));
  sub_100444EB4();
}

uint64_t P2PMain.attached<A>(infraDriver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v31 = *v6;
  v32 = a1;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v19 = *v18;
  *v17 = *v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = *(v14 + 8);
  v21 = (v14 + 8);
  v22(v17, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v21 = sub_1003A7C2C(0, v21[2] + 1, 1, v21);
    *(v7 + a4) = v21;
    goto LABEL_5;
  }

  v33[4] = a2;
  v33[5] = a3;
  v33[6] = a4;
  v33[7] = a5;
  v33[8] = a6;
  a6 = type metadata accessor for P2PController();
  a5 = sub_100388AD0(v32);
  a4 = *(*v7 + 104);
  swift_beginAccess();
  if (!*(*(v7 + a4) + 16))
  {
    v23 = *(v7 + *(*v7 + 136));
    v24 = swift_allocObject();
    *(v24 + 16) = *(v31 + 80);
    *(v24 + 32) = a5;

    sub_100444900(sub_10001957C, v24);
  }

  swift_beginAccess();
  v21 = *(v7 + a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + a4) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v26 = v21[2];
  v27 = v21[3];
  if (v26 >= v27 >> 1)
  {
    v29 = v21[2];
    v21 = sub_1003A7C2C((v27 > 1), v26 + 1, 1, v21);
    v26 = v29;
    *(v7 + a4) = v21;
  }

  v33[0] = a5;
  sub_1003A7F78(v26, v33, (v7 + a4), a6, &off_100577B80);
  *(v7 + a4) = v21;
  return swift_endAccess();
}

uint64_t sub_1003A70F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1003A5E18();
}

char *sub_1003A7184(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&unk_100597450, &qword_1004B16D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003A72D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&unk_100598780, &qword_1004AF198);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&unk_1005968C0, &qword_1004AF230);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003A7408(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D348, &qword_100486950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1003A7534(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10005DC58(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1003A7694(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_1005987B8, &qword_1004B2788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&unk_1005987C0, &unk_1004AFD48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003A77C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100598790, &qword_1004ABAE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003A78E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10005DC58(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 8 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_1003A79F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_1005987E0, &unk_1004B4D90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003A7B10(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_1005987E8, &qword_1004B2798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003A7C2C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_100598840, &qword_1004B27B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_100598848, &unk_1004B27C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1003A7D9C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005DC58(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1003A7F78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000297D4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100029954(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1003A8010(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t sub_1003A80F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003A8170(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);
    type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

CoreP2P::NANTimeUnit sub_1003A8260(void (*a1)(void, void), uint64_t a2, int a3, uint64_t a4, void (*a5)(char *, char *, uint64_t), uint64_t (*a6)(char *, uint64_t, uint64_t), int a7, char a8, __int16 a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  LODWORD(v105) = a7;
  v111 = a6;
  v112 = a5;
  v113 = a4;
  LODWORD(rawValue) = a3;
  v110 = a1;
  v15 = *v11;
  v16 = v15[10];
  v17 = v15[11];
  v18 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v114 = v19;
  v115 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v100 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v98 - v23;
  __chkstk_darwin();
  v102 = &v98 - v24;
  __chkstk_darwin();
  v26 = &v98 - v25;
  __chkstk_darwin();
  v28 = &v98 - v27;
  v108 = *(v18 - 8);
  v29 = *(v108 + 64);
  __chkstk_darwin();
  v101 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v98 - v31;
  v32 = *&v12[v15[15]];
  swift_unownedRetainStrong();
  v116 = a2;
  LOBYTE(a2) = sub_100410360(a2 & 0xFFFFFFFFFFFFLL);

  if (a2)
  {
    v106 = v12;
    v103 = v18;
    if (a8 == 3)
    {
      a8 = sub_1003AC1F4(v116 & 0xFFFFFFFFFFFFLL);
    }

    if (v105)
    {
      if (a8 == 1)
      {
        v33 = TimeBitmap.fiveGHzOutOfBoundFrameBitmap.unsafeMutableAddressor();
      }

      else
      {
        v33 = TimeBitmap.twoGHzOutOfBoundFrameBitmap.unsafeMutableAddressor();
      }

      v43 = *v33;
      v112 = *(v33 + 1);
      v113 = v43;
      v111 = *(v33 + 2);
    }

    v44 = v110;
    sub_10011A69C(v110, v119);
    sub_1003A9488(v44, v116 & 0xFFFFFFFFFFFFLL, rawValue & 1, v113, v112, v111, a8, 0, v107, a9, a10, a11);
    v45 = v106;
    v46 = *(*v106 + 112);
    swift_beginAccess();
    v47 = v114;
    v48 = v115;
    v112 = *(v115 + 16);
    v113 = v46;
    v112(v28, &v45[v46], v114);
    v49 = v103;
    v111 = *(v108 + 48);
    LODWORD(v46) = v111(v28, 1, v103);
    v50 = *(v48 + 8);
    v115 = v48 + 8;
    v110 = v50;
    v50(v28, v47);
    if (v46 != 1)
    {
      v112(v26, &v45[v113], v47);
      result.rawValue = v111(v26, 1, v49);
      if (LODWORD(result.rawValue) == 1)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v70 = sub_1003A96A8(v49);
      v71 = v108 + 8;
      rawValue = *(v108 + 8);
      rawValue(v26, v49);
      if ((v70 & 1) == 0 || (v72 = qword_100598850, swift_beginAccess(), v117[0] = *&v45[v72], type metadata accessor for Array(), swift_getWitnessTable(), (Collection.isEmpty.getter() & 1) == 0))
      {
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.info.getter();
        v75 = os_log_type_enabled(v73, v74);
        v105 = v71;
        if (v75)
        {
          v76 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v117[0] = v98;
          *v76 = 136315138;
          v77 = WiFiAddress.description.getter(v116 & 0xFFFFFFFFFFFFLL);
          v79 = sub_100002320(v77, v78, v117);
          v80 = v108;

          *(v76 + 4) = v79;
          _os_log_impl(&_mh_execute_header, v73, v74, "Deferring transmission of out of band action frame to peer: %s", v76, 0xCu);
          sub_100002A00(v98);

          v81 = v107;
          v82 = v102;
        }

        else
        {

          v81 = v107;
          v82 = v102;
          v80 = v108;
        }

        (*(v80 + 16))(v101, v81, v49);
        v88 = v106;
        swift_beginAccess();
        type metadata accessor for Array();
        Array.append(_:)();
        swift_endAccess();
        v112(v82, &v88[v113], v114);
        result.rawValue = v111(v82, 1, v49);
        if (LODWORD(result.rawValue) != 1)
        {
          v89 = sub_1003A96A8(v49);
          v90 = rawValue;
          rawValue(v82, v49);
          if ((v89 & 1) == 0)
          {
            return v90(v81, v49);
          }

          v91 = v114;
          v92 = v99;
          v112(v99, &v88[v113], v114);
          result.rawValue = v111(v92, 1, v49);
          if (LODWORD(result.rawValue) != 1)
          {
            v93 = v92;
            v94 = *(v92 + 5);
            v95 = *(v93 + 6);

            v96 = rawValue;
            rawValue(v93, v49);
            v94(0);

            v97 = v100;
            (*(v108 + 56))(v100, 1, 1, v49);
            sub_1003AC7C0(v97);
            v110(v97, v91);
            return v96(v81, v49);
          }

          goto LABEL_41;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }
    }

    v51 = v107;
    v52 = v107 + *(v49 + 56);
    v53.rawValue = *v52;
    v54.rawValue = *(v52 + 8);
    v55 = *(v52 + 16);
    v56 = *(v52 + 18);
    v57 = *(v52 + 19);
    v58 = *(v52 + 20);
    v59 = *(v52 + 21);
    v60 = *(v52 + 22);
    v61 = *(v52 + 23);
    v115 = *(v52 + 17);
    v116 = v55;
    v113 = v57;
    v114 = v56;
    v111 = v59;
    v112 = v58;
    rawValue = v54.rawValue;
    v110 = v60;
    v62 = v53.rawValue;
    v63 = TimeBitmap.SlotsView.distance(from:to:)(v53, v54);
    v64 = _swiftEmptyArrayStorage;
    if (v63)
    {
      v65 = v63;
      v120 = _swiftEmptyArrayStorage;
      result.rawValue = sub_10002D838(0, v63 & ~(v63 >> 63), 0);
      if ((v65 & 0x8000000000000000) == 0)
      {
        v64 = v120;
        result.rawValue = NANIntervalDuration.timeUnits.getter(0);
        if (!result.rawValue)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v66 = result.rawValue;
        result.rawValue = v62;
        while (1)
        {
          v118[0] = v116;
          v118[1] = v115;
          v118[2] = v114;
          v118[3] = v113;
          v118[4] = v112;
          v118[5] = v111;
          v118[6] = v110;
          v118[7] = v61;
          if (((result.rawValue / v66) & 0x8000000000000000) != 0)
          {
            break;
          }

          v67 = v118[(result.rawValue / v66) >> 3];
          v120 = v64;
          v69 = v64[2];
          v68 = v64[3];
          if (v69 >= v68 >> 1)
          {
            v105 = result.rawValue;
            sub_10002D838((v68 > 1), v69 + 1, 1);
            result.rawValue = v105;
            v64 = v120;
          }

          v64[2] = v69 + 1;
          *(v64 + v69 + 32) = v67;
          result.rawValue = TimeBitmap.SlotsView.index(after:)(result).rawValue;
          if (!--v65)
          {
            v51 = v107;
            goto LABEL_27;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_27:
    v83 = sub_10002D874(v64);
    v85 = v84;

    v86 = v104;
    Data.load<A>(as:)(v83, v85, &type metadata for UInt64, v117);
    v87 = v108;
    if (v86)
    {
      (*(v108 + 8))(v51, v103);
      return sub_1000124C8(v83, v85);
    }

    else
    {
      sub_1000124C8(v83, v85);
      sub_1003A9F90(v51);
      return (*(v87 + 8))(v51, v103);
    }
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v119[0] = v37;
      *v36 = 136315138;
      v38 = WiFiAddress.description.getter(v116 & 0xFFFFFFFFFFFFLL);
      v40 = sub_100002320(v38, v39, v119);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to transmit out of band action frame to %s, since the peer was not found", v36, 0xCu);
      sub_100002A00(v37);
    }

    sub_10000B02C();
    swift_allocError();
    *v41 = xmmword_10049C490;
    *(v41 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1003A8DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t (*a6)(char *, uint64_t, uint64_t), int a7, char a8, unsigned __int16 a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  LODWORD(v55) = a7;
  v61 = a6;
  v62 = a5;
  v63 = a4;
  LODWORD(v58) = a3;
  v59 = a2;
  v57 = a10;
  v15 = *(*v11 + 80);
  v16 = *(*v11 + 88);
  LODWORD(v56) = a9;
  v17 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
  v60 = type metadata accessor for Optional();
  v64 = *(v60 - 8);
  v18 = *(v64 + 64);
  __chkstk_darwin();
  v52 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v51 - v20;
  __chkstk_darwin();
  v22 = &v51 - v21;
  __chkstk_darwin();
  v24 = &v51 - v23;
  v68 = *(v17 - 8);
  v25 = *(v68 + 64);
  __chkstk_darwin();
  v54 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v51 - v27;
  if (v55)
  {
    if (a8 == 1)
    {
      v28 = TimeBitmap.fiveGHzOutOfBoundFrameBitmap.unsafeMutableAddressor();
    }

    else
    {
      v28 = TimeBitmap.twoGHzOutOfBoundFrameBitmap.unsafeMutableAddressor();
    }

    v29 = *v28;
    v62 = *(v28 + 1);
    v63 = v29;
    v61 = *(v28 + 2);
  }

  sub_10011A69C(a1, v67);
  sub_1003A9488(a1, v59 & 0xFFFFFFFFFFFFLL, v58 & 1, v63, v62, v61, a8, 1, v65, v56, v57, a11);
  v30 = *(*v12 + 112);
  swift_beginAccess();
  v31 = v64;
  v62 = *(v64 + 16);
  v63 = v30;
  v32 = v60;
  v62(v24, v12 + v30, v60);
  v61 = *(v68 + 48);
  LODWORD(v30) = v61(v24, 1, v17);
  v33 = *(v31 + 8);
  v64 = v31 + 8;
  v58 = v33;
  v33(v24, v32);
  if (v30 == 1)
  {
    goto LABEL_7;
  }

  v62(v22, v12 + v63, v32);
  result = v61(v22, 1, v17);
  if (result == 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v36 = sub_1003A96A8(v17);
  v37 = v68 + 8;
  v38 = *(v68 + 8);
  v38(v22, v17);
  if (v36)
  {
    v39 = qword_100598850;
    swift_beginAccess();
    v66 = *(v12 + v39);
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
LABEL_7:
      v34 = v65;
      sub_1003A9F90(v65);
      return (*(v68 + 8))(v34, v17);
    }
  }

  v56 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  v42 = os_log_type_enabled(v40, v41);
  v57 = v37;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v66 = v55;
    *v43 = 136315138;
    v44 = WiFiAddress.description.getter(v59 & 0xFFFFFFFFFFFFLL);
    v46 = sub_100002320(v44, v45, &v66);

    *(v43 + 4) = v46;
    v32 = v60;
    _os_log_impl(&_mh_execute_header, v40, v41, "Deferring transmission of out of band action frame to: %s", v43, 0xCu);
    sub_100002A00(v55);
  }

  v47 = v53;
  (*(v68 + 16))(v54, v65, v17);
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  swift_endAccess();
  v62(v47, v12 + v63, v32);
  result = v61(v47, 1, v17);
  if (result == 1)
  {
    goto LABEL_18;
  }

  v48 = sub_1003A96A8(v17);
  v49 = v56;
  v56(v47, v17);
  if (v48)
  {
    v50 = v52;
    (*(v68 + 56))(v52, 1, 1, v17);
    sub_1003AC7C0(v50);
    v58(v50, v32);
  }

  return v49(v65, v17);
}

__n128 sub_1003A9488@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, __int16 a10, uint64_t a11, uint64_t a12)
{
  v12 = a2;
  v15 = a2 >> 8;
  v16 = a2 >> 16;
  v17 = a2 >> 24;
  *(a9 + 56) = 0;
  v18 = HIDWORD(a2);
  v19 = a2 >> 40;
  v20 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
  v21 = v20[13];
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  result = *a1;
  v23 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v23;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 33) = v12;
  *(a9 + 34) = v15;
  *(a9 + 35) = v16;
  *(a9 + 36) = v17;
  *(a9 + 37) = v18;
  *(a9 + 38) = v19;
  *(a9 + 39) = a3;
  *(a9 + 40) = a11;
  *(a9 + 48) = a12;
  v24 = (a9 + v20[14]);
  *v24 = a4;
  v24[1] = a5;
  v24[2] = a6;
  *(a9 + v20[15]) = a7;
  *(a9 + v20[16]) = a8;
  *(a9 + v20[17]) = a10;
  return result;
}

uint64_t sub_1003A95B0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  result = (*(v4 + 40))(v1 + *(a1 + 52), v7, v3);
  v9 = *(v1 + 56);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 56) = v11;
  }

  return result;
}

uint64_t sub_1003A96A8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v18 - v13;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v15 = v1 + *(a1 + 52);
  DispatchTime.distance(to:)();
  (*(v4 + 8))(v7, v3);
  *v12 = 4;
  (*(v9 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v8);
  LOBYTE(v15) = static DispatchTimeInterval.< infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  return v15 & 1;
}

uint64_t sub_1003A98B0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v41 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v24 - v8;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin();
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v24 - v13;
  __chkstk_darwin();
  v15 = &v24 - v14;
  v16 = *(v1 + 112);
  v37 = qword_100598850;
  v29 = qword_10059BB20;
  swift_beginAccess();
  v17 = v10[2];
  v42 = v16;
  v31 = v0;
  v35 = v17;
  v36 = v10 + 2;
  v17(v15, &v0[v16], v9);
  v18 = *(v5 + 48);
  v19 = v18(v15, 1, v4);
  v39 = v10[1];
  v40 = v10 + 1;
  if (v19 == 1)
  {
    v34 = (v5 + 32);
    v28 = v5 + 56;
    v27 = v10 + 5;
    v26 = v5 + 16;
    v32 = (v5 + 8);
    *&v20 = 136315394;
    v24 = v20;
    v21 = v31;
    v25 = v9;
    v33 = v15;
    do
    {
      v39(v15, v9);
      swift_beginAccess();
      type metadata accessor for Array();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v15 = v38;
      RangeReplaceableCollection<>.popLast()();
      swift_endAccess();
      if (v18(v15, 1, v4) == 1)
      {
        break;
      }

      v22 = v43;
      (*v34)(v43, v15, v4);
      sub_1003A9F90(v22);
      (*v32)(v43, v4);
      v15 = v33;
      v35(v33, &v21[v42], v9);
    }

    while (v18(v15, 1, v4) == 1);
  }

  return (v39)(v15, v9);
}

uint64_t sub_1003A9F90(uint64_t a1)
{
  v93 = a1;
  v2 = v1;
  isa = v1->isa;
  v4 = isa[11];
  v5 = *(v4 + 8);
  v6 = isa[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  v89 = AssociatedTypeWitness;
  v8 = *(v88 + 64);
  __chkstk_darwin();
  v91 = &v76 - v9;
  v86 = v4;
  v87 = v6;
  v10 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
  v90 = *(v10 - 8);
  v11 = v90[8].isa;
  __chkstk_darwin();
  v13 = &v76 - v12;
  v14 = type metadata accessor for Optional();
  v84 = *(v14 - 8);
  v85 = v14;
  v15 = *(v84 + 64);
  __chkstk_darwin();
  v17 = &v76 - v16;
  v18 = *(*(type metadata accessor for NANPeer(0) - 8) + 64);
  __chkstk_darwin();
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v76 - v21;
  __chkstk_darwin();
  v24 = &v76 - v23;
  v25 = *(&v2->isa + isa[15]);
  swift_unownedRetainStrong();
  v26 = v92;
  sub_10040CBA8();

  if (!v26)
  {
    v79 = v22;
    v80 = v20;
    v81 = v13;
    v83 = 0;
    swift_unownedRetainStrong();
    v28 = v93;
    v29 = *(v93 + 33) | (*(v93 + 35) << 16);
    v92 = v24;
    v82 = v29;
    sub_10040CD68(v29, v24);

    v30 = v90;
    v78 = v90[2].isa;
    v77 = v90 + 2;
    (v78)(v17, v28, v10);
    (v30[7].isa)(v17, 0, 1, v10);
    sub_1003AC7C0(v17);
    (*(v84 + 8))(v17, v85);
    v31 = sub_1003AA854(v94);
    if (!(v30[6].isa)(v32, 1, v10))
    {
      sub_1003A95B0(v10);
    }

    v31(v94, 0);
    v33 = v93;
    if (*(v93 + *(v10 + 60)) != 1)
    {
      goto LABEL_7;
    }

    swift_unownedRetainStrong();
    v34 = WiFiInterface.capabilities.getter();

    v94[0] = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
    v97 = v34;
    sub_1000C2A14();

    v35 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v33 = v93;

    if (v35)
    {
      v36 = NANMapID.secondary.unsafeMutableAddressor();
    }

    else
    {
LABEL_7:
      v36 = NANMapID.primary.unsafeMutableAddressor();
    }

    v37 = v92;
    LODWORD(v85) = *v36;
    v38 = v81;
    (v78)(v81, v33, v10);
    v39 = v79;
    sub_100023888(v37, v79, type metadata accessor for NANPeer);
    v40 = v37;
    v41 = v80;
    sub_100023888(v40, v80, type metadata accessor for NANPeer);
    swift_retain_n();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v77 = v2;
      v45 = v10;
      v46 = v41;
      v47 = v44;
      v84 = swift_slowAlloc();
      v94[0] = v84;
      *v47 = 136316162;
      v48 = NANMapID.description.getter(v85);
      LODWORD(v78) = v43;
      v50 = sub_100002320(v48, v49, v94);

      *(v47 + 4) = v50;
      *(v47 + 12) = 2080;
      v51 = *(v38 + 35);
      v52 = v90[1].isa;
      v90 = v42;
      v53 = *(v38 + 33);
      v54 = v38;
      v55 = v45;
      (v52)(v54, v45);
      v56 = WiFiAddress.description.getter(v53 | (v51 << 16));
      v58 = sub_100002320(v56, v57, v94);

      *(v47 + 14) = v58;
      *(v47 + 22) = 1024;
      LODWORD(v51) = sub_1002E1D94() & 1;
      sub_1000239B8(v39, type metadata accessor for NANPeer);
      *(v47 + 24) = v51;
      *(v47 + 28) = 1024;
      LODWORD(v51) = sub_1002E1BB8() & 1;
      sub_1000239B8(v46, type metadata accessor for NANPeer);
      *(v47 + 30) = v51;
      *(v47 + 34) = 2080;
      v33 = v93;
      swift_unownedRetainStrong();
      v59 = sub_100410B90();

      v60 = WiFiAddress.description.getter(v59 & 0xFFFFFFFFFFFFLL);
      v62 = v61;

      v63 = sub_100002320(v60, v62, v94);

      *(v47 + 36) = v63;
      v64 = v90;
      _os_log_impl(&_mh_execute_header, v90, v78, "Attempting to transmit OOB AF [mapId=%s] to peer: %s (5G=%{BOOL}d, 2G=%{BOOL}d) on clusterID: %s", v47, 0x2Cu);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000239B8(v41, type metadata accessor for NANPeer);
      sub_1000239B8(v39, type metadata accessor for NANPeer);

      (v90[1].isa)(v38, v10);

      v55 = v10;
    }

    v66 = v88;
    v65 = v89;
    swift_unownedRetainStrong();
    v67 = *(*v25 + 96);
    swift_beginAccess();
    (*(v66 + 16))(v91, v25 + v67, v65);

    v68 = *(v33 + 16);
    v95[0] = *v33;
    v95[1] = v68;
    v96 = *(v33 + 32);
    swift_unownedRetainStrong();
    v69 = WiFiInterface.macAddress.getter();

    swift_unownedRetainStrong();
    v70 = sub_100410B90();

    v71 = (v33 + *(v55 + 56));
    v72 = *v71;
    v73 = v71[1];
    v74 = v71[2];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 272))(v95, v69 & 0xFFFFFFFFFFFFLL, v82, v70 & 0xFFFFFFFFFFFFLL, v85, v72, v73, v74, v65, AssociatedConformanceWitness);
    (*(v66 + 8))(v91, v65);
    return sub_1000239B8(v92, type metadata accessor for NANPeer);
  }

  return result;
}

uint64_t (*sub_1003AA854(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v2 = *(*v1 + 112);
  swift_beginAccess();
  return sub_1003AA8C4;
}

uint64_t sub_1003AA8C4(uint64_t a1, char a2)
{
  if (a2)
  {

    return swift_endAccess();
  }

  else
  {
    v4 = *(a1 + 24);
    swift_endAccess();
    return sub_1003A98B0();
  }
}

uint64_t sub_1003AA900(uint64_t a1)
{
  v181 = *v1;
  v3 = v181;
  v174 = type metadata accessor for DispatchTimeInterval();
  v176 = *(v174 - 8);
  v4 = *(v176 + 64);
  __chkstk_darwin();
  v172 = &v159[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v173 = &v159[-v6];
  v7 = v3[10];
  v166 = v3[11];
  v167 = v7;
  v8 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
  v9 = type metadata accessor for Optional();
  v182 = *(v9 - 8);
  v183 = v9;
  v10 = *(v182 + 64);
  __chkstk_darwin();
  v180 = &v159[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v159[-v12];
  v184 = v8;
  v185 = *(v8 - 8);
  v14 = *(v185 + 64);
  __chkstk_darwin();
  v170 = &v159[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v164 = &v159[-v15];
  __chkstk_darwin();
  v171 = &v159[-v16];
  __chkstk_darwin();
  v165 = &v159[-v17];
  __chkstk_darwin();
  v169 = &v159[-v18];
  __chkstk_darwin();
  v168 = &v159[-v19];
  __chkstk_darwin();
  v177 = &v159[-v20];
  __chkstk_darwin();
  v175 = &v159[-v21];
  __chkstk_darwin();
  v178 = &v159[-v22];
  __chkstk_darwin();
  v179 = &v159[-v23];
  v24 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v26 = &v159[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v28 = &v159[-v27];
  __chkstk_darwin();
  v30 = &v159[-v29];
  __chkstk_darwin();
  v32 = &v159[-v31];
  sub_100023888(a1, &v159[-v31], type metadata accessor for DriverEvent);
  v186 = v32;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_100023888(v186, v28, type metadata accessor for DriverEvent);
    if (*v28 == 1)
    {
      v43 = v180;
      (*(v185 + 56))(v180, 1, 1, v184);
      sub_1003AC7C0(v43);
      (*(v182 + 8))(v43, v183);
      swift_beginAccess();
      type metadata accessor for Array();
      Array.removeAll(keepingCapacity:)(0);
      swift_endAccess();
      return sub_1000239B8(v186, type metadata accessor for DriverEvent);
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
LABEL_9:
    sub_100023888(a1, v26, type metadata accessor for DriverEvent);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v190[0] = swift_slowAlloc();
      *v46 = 136315394;
      v47 = _typeName(_:qualified:)();
      v49 = sub_100002320(v47, v48, v190);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v51 = DriverEvent.shortDescription.getter(v50);
      v53 = v52;
      sub_1000239B8(v26, type metadata accessor for DriverEvent);
      v54 = sub_100002320(v51, v53, v190);

      *(v46 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v44, v45, "%s unable to handle event: %s", v46, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000239B8(v26, type metadata accessor for DriverEvent);
    }

    return sub_1000239B8(v186, type metadata accessor for DriverEvent);
  }

  sub_100023888(v186, v30, type metadata accessor for DriverEvent);
  memcpy(v189, v30, 0x16AuLL);
  memcpy(v190, v30, 0x16AuLL);
  if (sub_100185198(v190) != 15)
  {
    sub_1001854F8(v189);
    goto LABEL_9;
  }

  v34 = NANBitmap.Channel.operatingClass.getter(v190);
  v35 = *(v34 + 2);
  v36 = *(v34 + 3);
  v37 = *(*v1 + 112);
  swift_beginAccess();
  v38 = v182;
  v39 = v1 + v37;
  v40 = v183;
  (*(v182 + 16))(v13, v39, v183);
  v42 = v184;
  v41 = v185;
  if ((*(v185 + 48))(v13, 1, v184) == 1)
  {
    (*(v38 + 8))(v13, v40);
    return sub_1000239B8(v186, type metadata accessor for DriverEvent);
  }

  v56 = *(v41 + 32);
  v57 = v179;
  v163 = v56;
  v56(v179, v13, v42);
  v58 = v57[*(v42 + 64)];
  if (v35)
  {
    if (v35 != 4)
    {
      v58 = 0;
    }

    v59 = v178;
    if (v58)
    {
LABEL_32:
      v100 = v185;
      v114 = v177;
      v77 = v179;
      (*(v185 + 16))(v177, v179, v42);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v188[0] = v118;
        *v117 = 136315138;
        v119 = *(v114 + 35);
        v108 = *(v185 + 8);
        v120 = v114;
        v121 = *(v114 + 33);
        v108(v120, v184);
        v122 = WiFiAddress.description.getter(v121 | (v119 << 16));
        v124 = sub_100002320(v122, v123, v188);
        v100 = v185;

        *(v117 + 4) = v124;
        _os_log_impl(&_mh_execute_header, v115, v116, "Successfully transmitted multicast out of band action frame to %s", v117, 0xCu);
        sub_100002A00(v118);
        v42 = v184;
      }

      else
      {
        v108 = *(v100 + 8);
        v108(v114, v42);
      }

LABEL_39:
      v130 = v180;
      (*(v100 + 56))(v180, 1, 1, v42);
      sub_1003AC7C0(v130);
      (*(v182 + 8))(v130, v183);
LABEL_40:
      v108(v77, v42);
      return sub_1000239B8(v186, type metadata accessor for DriverEvent);
    }
  }

  else
  {
    v59 = v178;
    if (!v57[*(v42 + 64)])
    {
      goto LABEL_29;
    }
  }

  v60 = v185;
  v61 = *(v185 + 16);
  v178 = (v185 + 16);
  v162 = v61;
  v61(v59, v179, v42);
  v181 = v1;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v188[0] = v161;
    *v64 = 136315650;
    v160 = v63;
    v65 = *(v59 + 35);
    v66 = v59;
    v67 = *(v59 + 33);
    (*(v60 + 8))(v66, v184);
    v68 = WiFiAddress.description.getter(v67 | (v65 << 16));
    v70 = sub_100002320(v68, v69, v188);

    *(v64 + 4) = v70;
    *(v64 + 12) = 2080;
    v187 = v35;
    v71 = String.init<A>(describing:)();
    v73 = sub_100002320(v71, v72, v188);

    *(v64 + 14) = v73;
    *(v64 + 22) = 2080;
    v187 = v36;
    v74 = String.init<A>(describing:)();
    v76 = sub_100002320(v74, v75, v188);

    *(v64 + 24) = v76;
    _os_log_impl(&_mh_execute_header, v62, v160, "Failed to transmit out of band action frame to %s: %s [%s]", v64, 0x20u);
    swift_arrayDestroy();

    v42 = v184;
  }

  else
  {
    (*(v60 + 8))(v59, v42);
  }

  if (v35 > 2)
  {
    if (v35 != 4)
    {
      v125 = v179;
      v126 = *(v179 + 6);
      (*(v179 + 5))(0);
      v127 = v185 + 56;
      v128 = v180;
      (*(v185 + 56))(v180, 1, 1, v42);
      sub_1003AC7C0(v128);
      (*(v182 + 8))(v128, v183);
      (*(v127 - 48))(v125, v42);
      return sub_1000239B8(v186, type metadata accessor for DriverEvent);
    }

    goto LABEL_32;
  }

  if ((v35 - 1) >= 2)
  {
LABEL_29:
    v100 = v185;
    v101 = v175;
    (*(v185 + 16))(v175, v179, v42);
    v102 = Logger.logObject.getter();
    v103 = v42;
    v104 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v102, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v188[0] = v106;
      *v105 = 136315138;
      v107 = *(v101 + 35);
      v108 = *(v185 + 8);
      v109 = v101;
      v110 = *(v101 + 33);
      v108(v109, v103);
      v111 = WiFiAddress.description.getter(v110 | (v107 << 16));
      v113 = sub_100002320(v111, v112, v188);

      *(v105 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v102, v104, "Successfully transmitted out of band action frame to %s", v105, 0xCu);
      sub_100002A00(v106);
      v100 = v185;
    }

    else
    {
      v108 = *(v100 + 8);
      v108(v101, v103);
    }

    v42 = v103;
    v77 = v179;
    v129 = *(v179 + 6);
    (*(v179 + 5))(1);
    goto LABEL_39;
  }

  v77 = v179;
  if (*(v179 + 7) <= 3 && (v179[*(v42 + 64)] & 1) == 0)
  {
    v144 = qword_10059BB20;
    v145 = v168;
    v146 = v162;
    v162(v168, v179, v42);
    v147 = v169;
    v146(v169, v77, v42);
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v177 = v144;
      v152 = v151;
      v188[0] = v151;
      *v150 = 134218242;
      v153 = *(v145 + 7);
      v108 = *(v185 + 8);
      v108(v145, v184);
      *(v150 + 4) = v153;
      *(v150 + 12) = 2080;
      v154 = *(v147 + 35);
      v155 = *(v147 + 33);
      v108(v147, v184);
      v156 = WiFiAddress.description.getter(v155 | (v154 << 16));
      v158 = sub_100002320(v156, v157, v188);
      v42 = v184;

      *(v150 + 14) = v158;
      v77 = v179;
      _os_log_impl(&_mh_execute_header, v148, v149, "Retry #%ld transmission of out of band action frame to %s", v150, 0x16u);
      sub_100002A00(v152);
    }

    else
    {
      v108 = *(v185 + 8);
      v108(v145, v42);
      v108(v147, v42);
    }

    sub_1003A9F90(v77);
    goto LABEL_40;
  }

  v78 = *(v181 + *(*v181 + 120));
  swift_unownedRetainStrong();
  v79 = v173;
  sub_10040E9C0(v173);

  v80 = v172;
  *v172 = 10;
  v81 = v176;
  v82 = *(v176 + 104);
  LODWORD(v175) = enum case for DispatchTimeInterval.seconds(_:);
  v83 = v174;
  v170 = v82;
  v82(v80);
  LOBYTE(v78) = static DispatchTimeInterval.< infix(_:_:)();
  v84 = *(v81 + 8);
  (v84)(v80, v83);
  v85 = v79;
  v86 = v179;
  v176 = v81 + 8;
  v177 = v84;
  (v84)(v85, v83);
  if ((v78 & 1) != 0 && v86[39] == 1)
  {
    v172 = type metadata accessor for P2PTimer();
    v88 = v173;
    v87 = v174;
    *v173 = 2;
    (v170)(v88, v175, v87);
    v175 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v89 = swift_allocObject();
    swift_weakInit();
    v90 = v165;
    v91 = v184;
    v162(v165, v86, v184);
    v92 = v185;
    v93 = (*(v185 + 80) + 40) & ~*(v185 + 80);
    v94 = swift_allocObject();
    v95 = v166;
    v94[2] = v167;
    v94[3] = v95;
    v94[4] = v89;
    v96 = v94 + v93;
    v86 = v179;
    v163(v96, v90, v91);
    v97 = v92;
    v98 = v175;

    static P2PTimer.async(after:on:execute:)(v88, v98, sub_1003AC898, v94);

    (v177)(v88, v174);
    v99 = v91;
  }

  else
  {
    v131 = v171;
    v99 = v184;
    v162(v171, v86, v184);
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v188[0] = v135;
      *v134 = 136315138;
      v136 = *(v131 + 35);
      v137 = v185;
      v138 = *(v131 + 33);
      (*(v185 + 8))(v131, v184);
      v139 = WiFiAddress.description.getter(v138 | (v136 << 16));
      v141 = sub_100002320(v139, v140, v188);
      v99 = v184;

      *(v134 + 4) = v141;
      v97 = v137;
      _os_log_impl(&_mh_execute_header, v132, v133, "Exceeded retries while transmitting out of band action frame to %s", v134, 0xCu);
      sub_100002A00(v135);
    }

    else
    {
      v97 = v185;
      (*(v185 + 8))(v131, v99);
    }

    v142 = *(v86 + 6);
    (*(v86 + 5))(0);
  }

  v143 = v180;
  (*(v97 + 56))(v180, 1, 1, v99);
  sub_1003AC7C0(v143);
  (*(v182 + 8))(v143, v183);
  (*(v97 + 8))(v86, v99);
  return sub_1000239B8(v186, type metadata accessor for DriverEvent);
}

uint64_t sub_1003ABE58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(type metadata accessor for Logger() - 8) + 64);
  __chkstk_darwin();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v7;
    v9 = *(a2 + 32);
    sub_1003A8260(v8, *(a2 + 33) | (*(a2 + 35) << 16), 0, *(a2 + *(v3 + 56)), *(a2 + *(v3 + 56) + 8), *(a2 + *(v3 + 56) + 16), 0, 3, 3000, *(a2 + 40), *(a2 + 48));
  }

  return result;
}

BOOL sub_1003AC1F4(uint64_t a1)
{
  v3 = *(*(type metadata accessor for NANPeer(0) - 8) + 64);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + *(*v1 + 120));
  swift_unownedRetainStrong();
  v7 = *(v6 + *(*v6 + 800));
  swift_unownedRetainStrong();

  v8 = sub_1003EB86C();

  v9 = CountryCode.unknown.unsafeMutableAddressor();
  if (*v9 == v8 && *(v9 + 1) == HIBYTE(v8))
  {
    return 0;
  }

  swift_unownedRetainStrong();
  v11 = WiFiInterface.capabilities.getter();

  v12 = *WiFiDriverCapabilities.supportsDualBand.unsafeMutableAddressor();
  v16[0] = v11;
  v16[1] = v12;
  sub_1000C2A14();

  v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  swift_unownedRetainStrong();
  sub_10040CD68(a1 & 0xFFFFFFFFFFFFLL, v5);

  v14 = sub_1002E1D94();
  sub_1000239B8(v5, type metadata accessor for NANPeer);
  return (v14 & 1) != 0;
}

uint64_t *sub_1003AC3AC()
{
  v1 = *v0;
  v2 = qword_10059BB20;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_100598850);

  v5 = *(*v0 + 112);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(v0 + v5, v8);
  v9 = *(v0 + *(*v0 + 120));
  swift_unownedRelease();
  return v0;
}

uint64_t sub_1003AC4C4()
{
  sub_1003AC3AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1003AC554()
{
  result = sub_1002B8BF0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1003AC654(uint64_t a1)
{
  v3 = *v1;
  Logger.init(subsystem:category:)();
  v4 = qword_100598850;
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
  *(v1 + v4) = Array.init()();
  (*(*(v7 - 8) + 56))(v1 + *(*v1 + 112), 1, 1, v7);
  *(v1 + *(*v1 + 120)) = a1;
  swift_unownedRetain();
  return v1;
}

uint64_t *sub_1003AC784(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1003AC654(a1);
}

uint64_t sub_1003AC7C0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame();
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 24))(v1 + v4, a1, v7);
  swift_endAccess();
  return sub_1003A98B0();
}

uint64_t sub_1003AC898()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for NANOutOfBoundFrameTransmitter.InFlightFrame() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1003ABE58(v4, v5);
}

uint64_t sub_1003AC920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_100367828(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 2 * result);
    v12 = *(a1 + 36);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_100367828((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    _swiftEmptyArrayStorage[v14 + 4] = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v3 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_10002BEB8(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_10002BEB8(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1003ACB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100012400(a3, v26 - v10, &qword_1005985E0, &unk_1004B0F80);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100016290(v11, &qword_1005985E0, &unk_1004B0F80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1003ACE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100012400(a3, v26 - v10, &qword_1005985E0, &unk_1004B0F80);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100016290(v11, &qword_1005985E0, &unk_1004B0F80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_10005DC58(&unk_100598610, &qword_1004B25F0);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_10005DC58(&unk_100598610, &qword_1004B25F0);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1003AD150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100012400(a3, v26 - v10, &qword_1005985E0, &unk_1004B0F80);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100016290(v11, &qword_1005985E0, &unk_1004B0F80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1003AD448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_100046A70(a1 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  if (v7)
  {
    v8 = result;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046A6CC();
      v11 = v13;
    }

    v12 = *(v11 + 56) + 24 * v8;
    *a2 = *v12;
    *(a2 + 16) = *(v12 + 16);
    result = sub_100468254(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0xB000000000000000;
  }

  return result;
}

double sub_1003AD518@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10002A440(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046CAA8();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_100029954((*(v11 + 56) + 40 * v8), a2);
    sub_100468EB8(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1003AD5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10007CD94(a1 & 0xFFFFFFFFFFFFFFLL);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046C560();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    v20 = *(v13 - 8);
    sub_100046A08(v12 + *(v20 + 72) * v8, a2, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    sub_100468C8C(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1003AD75C(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = sub_10002A440(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v18 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v18;
  }

  v14 = *(v13 + 48);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v10, v15);
  v16 = *(*(v13 + 56) + 8 * v10);
  a2(v10, v13);
  *v6 = v13;
  return v16;
}

uint64_t sub_1003AD83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100085268(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046DB78();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for BrowseEndpoints(0);
    v20 = *(v13 - 8);
    sub_100046A08(v12 + *(v20 + 72) * v8, a2, type metadata accessor for BrowseEndpoints);
    sub_100469BC8(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for BrowseEndpoints(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1003AD998@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_10002A440(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = type metadata accessor for UUID();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    sub_100046A08(v23 + *(v31 + 72) * v22, a6, a3);
    a4(v22, v19);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_1003ADB58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10002A440(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10046E3BC();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1004698A8(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1003ADC20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10002A440(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10046A3E8();
    v9 = v16;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  sub_100468250(v6, v9);
  *v2 = v9;
  return v13;
}

uint64_t sub_1003ADCFC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_6:
      result = os_transaction_create();
      if (!result)
      {
        __break(1u);
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      result = os_transaction_create();
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_6;
    }
  }

  sub_10005DC58(&qword_100599468, &unk_1004B2DB0);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1003ADDD0@<X0>(uint64_t a1@<X8>)
{
  v2 = nw_parameters_copy_custom_options();
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  type = xpc_get_type(v2);
  if (type != XPC_TYPE_DATA.getter() || (bytes_ptr = xpc_data_get_bytes_ptr(v3)) == 0 || (v10 = bytes_ptr, length = xpc_data_get_length(v3), length < 1))
  {
    swift_unknownObjectRelease();
LABEL_4:
    v5 = 1;
    goto LABEL_5;
  }

  v12 = sub_1002AAFAC(v10, length);
  v14 = v13;
  swift_unknownObjectRelease();
  static WAParametersAgentInterface.Parameters.decode(from:)();
  sub_1000124C8(v12, v14);
  v5 = 0;
LABEL_5:
  v6 = type metadata accessor for WAParametersAgentInterface.Parameters();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

Swift::Int sub_1003ADF00()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003ADF74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_DWORD *sub_1003ADFB8@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1003ADFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WAError.ErrorCode();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 - 1) > 8)
  {
    v6 = &enum case for WAError.ErrorCode.error(_:);
  }

  else
  {
    v6 = *(&off_100579850 + a1 - 1);
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_1003AE074@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 1)
  {
    if (a2 != 1)
    {
LABEL_9:
      v8 = enum case for WAError.ErrorCode.error(_:);
      v9 = type metadata accessor for WAError.ErrorCode();
      v6 = *(*(v9 - 8) + 104);
      v5 = v9;
      v10 = a3;
      v11 = v8;
      goto LABEL_18;
    }

    v5 = type metadata accessor for WAError.ErrorCode();
    v6 = *(*(v5 - 8) + 104);
    if (a1 == 1)
    {
      v7 = &enum case for WAError.ErrorCode.publisherTimeout(_:);
    }

    else if (a1)
    {
      v7 = &enum case for WAError.ErrorCode.connectionIdleTimeout(_:);
    }

    else
    {
      v7 = &enum case for WAError.ErrorCode.subscriberTimeout(_:);
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        goto LABEL_9;
      }

      v13 = a1;
      v5 = type metadata accessor for WAError.ErrorCode();
      v6 = *(*(v5 - 8) + 104);
      if (v13 == 2)
      {
        v7 = &enum case for WAError.ErrorCode.connectionFailed(_:);
        goto LABEL_17;
      }

LABEL_14:
      v7 = &enum case for WAError.ErrorCode.error(_:);
      goto LABEL_17;
    }

    v12 = a1;
    v5 = type metadata accessor for WAError.ErrorCode();
    v6 = *(*(v5 - 8) + 104);
    if (v12 != 2)
    {
      goto LABEL_14;
    }

    v7 = &enum case for WAError.ErrorCode.connectionTerminated(_:);
  }

LABEL_17:
  v11 = *v7;
  v10 = a3;
LABEL_18:

  return v6(v10, v11, v5);
}

uint64_t sub_1003AE20C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + 1);
    v4 = a1[7];
    v5 = a1[6];
    v6 = a1[5];
    v7 = a1[4];
    v8 = a1[3];
    v9 = a1[2];
    v10 = a1[1];
    v11 = *a1;
    UUID.init(uuid:)();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 56);

  return v14(a2, v12, 1, v13);
}

uint64_t sub_1003AE2C0()
{
  v1 = type metadata accessor for WASubscribableService();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&qword_100598958, &qword_1004B2858) - 8) + 64);
  __chkstk_darwin();
  v8 = v18 - v7;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v19 = 0x49656C626E75425BLL;
  v20 = 0xEA00000000003A44;
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier));
  v9._countAndFlagsBits = 0x6563697672655320;
  v9._object = 0xE90000000000003ALL;
  String.append(_:)(v9);
  sub_100012400(v0 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_wifiAwareDescriptor, v8, &qword_100598958, &qword_1004B2858);
  v10 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_100016290(v8, &qword_100598958, &qword_1004B2858);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    WABrowserAgentInterface.DescriptorToAgent.service.getter();
    (*(v11 + 8))(v8, v10);
    v12 = WASubscribableService.name.getter();
    v13 = v14;
    (*(v2 + 8))(v5, v1);
  }

  v18[0] = v12;
  v18[1] = v13;
  sub_10005DC58(&unk_100599FD0, &qword_100482530);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 93;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return v19;
}

uint64_t sub_1003AE564()
{
  v1 = v0[2];

  sub_100016290(v0 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_wifiAwareDescriptor, &qword_100598958, &qword_1004B2858);
  v2 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier + 8);

  v3 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003AE604()
{
  v1 = type metadata accessor for WAPublishableService();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&qword_100598990, &qword_1004B2888) - 8) + 64);
  __chkstk_darwin();
  v8 = v18 - v7;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v19 = 0x49656C626E75425BLL;
  v20 = 0xEA00000000003A44;
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier));
  v9._countAndFlagsBits = 0x6563697672655320;
  v9._object = 0xE90000000000003ALL;
  String.append(_:)(v9);
  sub_100012400(v0 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_wifiAwareDescriptor, v8, &qword_100598990, &qword_1004B2888);
  v10 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_100016290(v8, &qword_100598990, &qword_1004B2888);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    WAListenerAgentInterface.DescriptorToAgent.service.getter();
    (*(v11 + 8))(v8, v10);
    v12 = WAPublishableService.name.getter();
    v13 = v14;
    (*(v2 + 8))(v5, v1);
  }

  v18[0] = v12;
  v18[1] = v13;
  sub_10005DC58(&unk_100599FD0, &qword_100482530);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 93;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return v19;
}

uint64_t sub_1003AE8A8()
{
  v1 = v0[2];

  sub_100016290(v0 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_wifiAwareDescriptor, &qword_100598990, &qword_1004B2888);
  v2 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1003AE988(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v98 = &v88 - v14;
  v15 = type metadata accessor for Logger();
  v102 = *(v15 - 8);
  v16 = *(v102 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v19 = &v88 - v18;
  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v96 = v17;
    v101 = a3;
    v95 = &qword_1004B4E88[7];
    Logger.init(subsystem:category:)();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v23 = os_log_type_enabled(v21, v22);
    v100 = v15;
    v97 = a4;
    v93 = a5;
    if (v23)
    {
      v24 = a1;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v99 = v6;
      v108 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_100002320(v24, a2, &v108);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_100002320(v101, a4, &v108);
      *(v25 + 22) = 1024;
      *(v25 + 24) = a5;
      _os_log_impl(&_mh_execute_header, v21, v22, "#### Monitoring for devices paired with: %s for Service[%s] clientType: %d", v25, 0x1Cu);
      swift_arrayDestroy();
      v6 = v99;

      a1 = v24;

      v27 = *(v102 + 8);
      v28 = v19;
      v29 = v100;
    }

    else
    {

      v27 = *(v102 + 8);
      v28 = v19;
      v29 = v15;
    }

    v94 = v27;
    v27(v28, v29);
    swift_beginAccess();
    v30 = v6[14];
    v104 = a1;
    v105 = a2;
    v31 = *(v12 + 80);
    v32 = *(v12 + 88);
    active = type metadata accessor for NANAgentHandler.ActiveClient();

    Dictionary.subscript.getter();

    if (v108)
    {
      sub_1003EA068(v108, v109, v110, v111, v112);
      v34 = 0;
      v35 = 0;
      v99 = 0;
    }

    else
    {
      v34 = sub_1002DED7C(_swiftEmptyArrayStorage);
      v35 = sub_1002DED7C(_swiftEmptyArrayStorage);
      type metadata accessor for NANAgentHandler.NANAgentPairedDevicesDelegate();

      v37 = sub_1003E4258(v36, a1, a2);

      v113 = v35;
      v114[0] = v34;
      v108 = v34;
      v109 = v35;
      v110 = 0;
      v111 = 0;
      v112 = v37;
      v106 = a1;
      v107 = a2;
      swift_beginAccess();
      sub_100012400(v114, v103, &qword_100599488, &qword_1004B2DC0);
      sub_100012400(&v113, v103, &qword_100599488, &qword_1004B2DC0);
      v99 = v37;
      v38 = v37;

      sub_100012400(v114, v103, &qword_100599488, &qword_1004B2DC0);
      sub_100012400(&v113, v103, &qword_100599488, &qword_1004B2DC0);
      type metadata accessor for Dictionary();
      v39 = v38;
      Dictionary.subscript.setter();
      swift_endAccess();
      v40 = type metadata accessor for TaskPriority();
      v41 = v98;
      (*(*(v40 - 8) + 56))(v98, 1, 1, v40);
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = v34;
      *(v42 + 40) = v35;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = v39;
      *(v42 + 72) = v6;
      *(v42 + 80) = a1;
      *(v42 + 88) = a2;

      sub_1003ACB3C(0, 0, v41, &unk_1004B2DD0, v42);
    }

    v43 = v6[14];
    v104 = a1;
    v105 = a2;

    Dictionary.subscript.getter();

    v44 = v108;
    if (!v108)
    {
      sub_1003EA068(v34, v35, 0, 0, v99);
      return;
    }

    v91 = active;
    v92 = v35;
    v98 = v34;
    v45 = v112;
    v90 = v111;
    v46 = v109;
    v88 = v110;
    v47 = v96;
    Logger.init(subsystem:category:)();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    v50 = os_log_type_enabled(v48, v49);
    v89 = a1;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = a1;
      v54 = v52;
      v108 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_100002320(v53, a2, &v108);
      _os_log_impl(&_mh_execute_header, v48, v49, "service being monitored for: %s", v51, 0xCu);
      sub_100002A00(v54);
    }

    v94(v47, v100);
    v55 = v101;
    v56 = v97;
    v57 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v57 = v101 & 0xFFFFFFFFFFFFLL;
    }

    if (!v57)
    {
      sub_1003EA068(v98, v92, 0, 0, v99);

      return;
    }

    if (v93)
    {
      if (v93 == 1)
      {
        v58 = *(v46 + 16);

        v59 = v45;
        if (!v58 || (sub_1000102E8(v55, v56), (v60 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = v46;
          v67 = 1;
          v68 = v55;
          v69 = v56;
          goto LABEL_35;
        }

        if (*(v46 + 16))
        {
          v61 = v55;
          v62 = v56;
          v63 = sub_1000102E8(v61, v56);
          if (v64)
          {
            v65 = *(*(v46 + 56) + v63) + 1;
            if (((v65 >> 8) & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v108 = v46;
              v67 = v65;
              v68 = v101;
              v69 = v62;
LABEL_35:
              sub_1003E23B8(v67, v68, v69, isUniquelyReferenced_nonNull_native);
              v84 = v108;
              v85 = v44;
LABEL_38:
              v86 = v88;
              v82 = v90;
              goto LABEL_39;
            }

            goto LABEL_46;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v82 = v90 + 1;
        if (v90 != -1)
        {

          v83 = v45;
          v84 = v46;
          v85 = v44;
          v86 = v88;
LABEL_39:
          v108 = v85;
          v109 = v84;
          v110 = v86;
          v111 = v82;
          v112 = v45;
          v106 = v89;
          v107 = a2;
          swift_beginAccess();
          type metadata accessor for Dictionary();

          v87 = v45;

          Dictionary.subscript.setter();
          swift_endAccess();

          sub_1003EA068(v98, v92, 0, 0, v99);

          return;
        }

        __break(1u);
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v70 = *(v44 + 16);

    v71 = v45;
    if (v70 && (sub_1000102E8(v55, v56), (v72 & 1) != 0))
    {
      if (!*(v44 + 16))
      {
        goto LABEL_43;
      }

      v73 = v55;
      v74 = v56;
      v75 = sub_1000102E8(v73, v56);
      if ((v76 & 1) == 0)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v77 = *(*(v44 + 56) + v75) + 1;
      if ((v77 >> 8))
      {
LABEL_47:
        __break(1u);
        return;
      }

      v78 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v44;
      v79 = v77;
      v80 = v101;
      v81 = v74;
    }

    else
    {
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v44;
      v79 = 1;
      v80 = v55;
      v81 = v56;
    }

    sub_1003E23B8(v79, v80, v81, v78);
    v85 = v108;
    v84 = v46;
    goto LABEL_38;
  }
}

uint64_t sub_1003AF434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = *a5;
  v9 = *(*a5 + 88);
  v7[16] = v9;
  v7[17] = *(v9 + 8);
  v7[18] = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[19] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[20] = v11;
  v12 = *(v11 + 64) + 15;
  v7[21] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v7[22] = v13;
  v14 = *(v13 - 8);
  v7[23] = v14;
  v15 = *(v14 + 64) + 15;
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1003AF5A0, 0, 0);
}

uint64_t sub_1003AF5A0()
{
  (*(v0[23] + 16))(v0[24], *(v0[12] + 32) + qword_100598F40, v0[22]);
  if (qword_1005943E8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  sub_100037644(v0[22], qword_10059BAD0);
  sub_10001ADA4(&qword_100597540, &type metadata accessor for UUID);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v2 = v0[21];
    (*(v0[23] + 8))(v0[24], v0[22]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[20];
    v6 = v0[21];
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[17];
    v23 = v0[16];
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[13];
    v13 = *(v12 + 24);
    swift_unownedRetainStrong();
    (*(v5 + 16))(v6, v13 + *(*v13 + 112), v8);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = (*(AssociatedConformanceWitness + 136))(v8, AssociatedConformanceWitness);
    v0[25] = v15;
    (*(v5 + 8))(v6, v8);
    swift_beginAccess();
    v16 = *(v12 + 112);
    v0[10] = v11;
    v0[11] = v10;
    type metadata accessor for NANAgentHandler.ActiveClient();

    Dictionary.subscript.getter();

    v17 = v0[2];
    if (v17)
    {
      v18 = v0[6];
      v19 = v18;
      v20 = v18;
      v21 = v18;
    }

    else
    {
      v21 = 0;
      v20 = v0[6];
    }

    v0[26] = v21;
    sub_1003EA068(v17, v0[3], v0[4], v0[5], v20);
    v22 = *v15 + 536;
    v0[27] = *v22;
    v0[28] = v22 & 0xFFFFFFFFFFFFLL | 0x27A1000000000000;

    return _swift_task_switch(sub_1003AF8E4, v15, 0);
  }
}

uint64_t sub_1003AF8E4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  (*(v0 + 216))(*(v0 + 112), *(v0 + 120), *(v0 + 208), *(v0 + 192));

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1003AF96C, 0, 0);
}

uint64_t sub_1003AF96C()
{
  v1 = v0[21];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v2 = v0[1];

  return v2();
}

void sub_1003AF9F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v15 = &v65 - v14;
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    swift_beginAccess();
    v17 = v6[14];
    v71 = a1;
    v72 = a2;
    v18 = *(v12 + 80);
    v19 = *(v12 + 88);
    active = type metadata accessor for NANAgentHandler.ActiveClient();

    v70 = active;
    Dictionary.subscript.getter();

    v21 = v77;
    if (v77)
    {
      v22 = v81;
      v23 = v78;
      v24 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v24 = a3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v24)
      {

        return;
      }

      v75 = v78;
      v76 = v77;
      v68 = v77;
      v69 = v78;
      v65 = v15;
      if (a5)
      {
        if (a5 != 1)
        {
          v40 = v80 - 1;
          if (v80)
          {
            v41 = v79;

            v32 = v69;

            v42 = v22;
            goto LABEL_32;
          }

          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        LODWORD(v66) = v80;
        v67 = v79;
        v25 = *(v78 + 16);

        v26 = v22;
        if (v25)
        {
          sub_1000102E8(a3, a4);
          if (v27)
          {
            if (*(v23 + 16))
            {
              v28 = sub_1000102E8(a3, a4);
              if (v29)
              {
                v30 = *(*(v23 + 56) + v28) - 1;
                if ((v30 & 0xFFFFFF00) == 0)
                {
                  if (*(*(v23 + 56) + v28) == 1)
                  {
                    sub_100420A24(a3, a4);
                    v32 = v75;
                  }

                  else
                  {
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v77 = v23;
                    sub_1003E23B8(v30, a3, a4, isUniquelyReferenced_nonNull_native);
                    v32 = v77;
                    v75 = v77;
                  }

                  goto LABEL_31;
                }

                goto LABEL_50;
              }

              goto LABEL_48;
            }

            goto LABEL_46;
          }
        }
      }

      else
      {
        LODWORD(v66) = v80;
        v67 = v79;
        v33 = *(v77 + 16);

        v34 = v22;
        if (v33)
        {
          sub_1000102E8(a3, a4);
          if (v35)
          {
            if (!*(v21 + 16))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            v36 = sub_1000102E8(a3, a4);
            if ((v37 & 1) == 0)
            {
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v38 = *(*(v21 + 56) + v36) - 1;
            if ((v38 & 0xFFFFFF00) != 0)
            {
LABEL_51:
              __break(1u);
              return;
            }

            if (*(*(v21 + 56) + v36) == 1)
            {
              sub_100420A24(a3, a4);
              v21 = v76;
            }

            else
            {
              v39 = swift_isUniquelyReferenced_nonNull_native();
              v77 = v21;
              sub_1003E23B8(v38, a3, a4, v39);
              v21 = v77;
              v76 = v77;
            }
          }

          v32 = v69;
LABEL_31:
          v41 = v67;
          v40 = v66;
LABEL_32:
          v77 = v21;
          v78 = v32;
          v79 = v41;
          v80 = v40;
          v81 = v22;
          v73 = a1;
          v74 = a2;
          swift_beginAccess();
          type metadata accessor for Dictionary();

          v43 = v22;

          Dictionary.subscript.setter();
          swift_endAccess();
          v44 = v6[14];
          v71 = a1;
          v72 = a2;

          Dictionary.subscript.getter();

          v45 = v77;
          if (v77)
          {
            v66 = v32;
            v67 = v21;
            v46 = v43;
            v47 = v78;
            v48 = v79;
            v50 = v80;
            v49 = v81;

            sub_1003EA068(v45, v47, v48, v50, v49);
            v51 = *(v47 + 16);

            if (v51)
            {
            }

            else
            {
              v52 = v6[14];
              v71 = a1;
              v72 = a2;

              Dictionary.subscript.getter();

              v53 = v77;
              if (!v77)
              {
                goto LABEL_38;
              }

              v54 = v78;
              v55 = v79;
              v56 = v80;
              v57 = v81;

              sub_1003EA068(v58, v54, v55, v56, v57);
              v59 = *(v53 + 16);

              if (v59)
              {
                goto LABEL_38;
              }

              v60 = v6[14];
              v71 = a1;
              v72 = a2;

              Dictionary.subscript.getter();

              if (!v77 || (v61 = v80, sub_1003EA068(v77, v78, v79, v80, v81), v61))
              {
LABEL_38:
              }

              else
              {
                v62 = type metadata accessor for TaskPriority();
                v63 = v65;
                (*(*(v62 - 8) + 56))(v65, 1, 1, v62);
                v64 = swift_allocObject();
                v64[2] = 0;
                v64[3] = 0;
                v64[4] = v6;
                v64[5] = a1;
                v64[6] = a2;

                sub_1003ACB3C(0, 0, v63, &unk_1004B2E58, v64);
              }
            }
          }

          else
          {
          }

          return;
        }
      }

      v32 = v23;
      goto LABEL_31;
    }
  }
}

uint64_t sub_1003B00B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = *a4;
  v8 = *(*a4 + 88);
  v6[25] = v8;
  v6[26] = *(v8 + 8);
  v6[27] = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[28] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[29] = v10;
  v11 = *(v10 + 64) + 15;
  v6[30] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v6[31] = v12;
  v13 = *(v12 - 8);
  v6[32] = v13;
  v14 = *(v13 + 64) + 15;
  v6[33] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v6[34] = v15;
  v16 = *(v15 - 8);
  v6[35] = v16;
  v17 = *(v16 + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();

  return _swift_task_switch(sub_1003B0284, 0, 0);
}

uint64_t sub_1003B0284()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  swift_beginAccess();
  v6 = *(v4 + 112);
  v0[18] = v5;
  v0[19] = v3;
  v0[38] = type metadata accessor for NANAgentHandler.ActiveClient();

  Dictionary.subscript.getter();

  v7 = v0[2];
  if (v7)
  {
    v9 = v0[34];
    v8 = v0[35];
    v36 = v0[37];
    v37 = v0[29];
    v10 = v0[28];
    v40 = v0[27];
    v38 = v0[30];
    v39 = v0[26];
    v34 = v0[36];
    v35 = v0[22];
    v12 = v0[3];
    v11 = v0[4];
    v14 = v0[5];
    v13 = v0[6];
    v15 = v13;
    sub_1003EA068(v7, v12, v11, v14, v13);
    (*(v8 + 16))(v34, v15 + qword_100598F40, v9);

    (*(v8 + 32))(v36, v34, v9);
    v16 = *(v35 + 24);
    swift_unownedRetainStrong();
    (*(v37 + 16))(v38, v16 + *(*v16 + 112), v10);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = (*(AssociatedConformanceWitness + 136))(v10, AssociatedConformanceWitness);
    v0[39] = v18;
    (*(v37 + 8))(v38, v10);
    v19 = *v18 + 544;
    v0[40] = *v19;
    v0[41] = v19 & 0xFFFFFFFFFFFFLL | 0xD46B000000000000;

    return _swift_task_switch(sub_1003B0638, v18, 0);
  }

  else
  {
    v20 = v0[33];
    Logger.init(subsystem:category:)();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[32];
    v24 = v0[33];
    v26 = v0[31];
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "#### Unable to get identifier for pairedDeviceDelegate", v27, 2u);
    }

    (*(v25 + 8))(v24, v26);
    v29 = v0[36];
    v28 = v0[37];
    v30 = v0[33];
    v31 = v0[30];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_1003B0638()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  (*(v0 + 320))(*(v0 + 184), *(v0 + 192), *(v0 + 296));

  return _swift_task_switch(sub_1003B06B4, 0, 0);
}

uint64_t sub_1003B06B4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 160) = v5;
  *(v0 + 168) = v6;
  swift_beginAccess();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();
  (*(v4 + 8))(v1, v3);
  v9 = *(v0 + 288);
  v8 = *(v0 + 296);
  v10 = *(v0 + 264);
  v11 = *(v0 + 240);

  v12 = *(v0 + 8);

  return v12();
}

void *sub_1003B07F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v228 = a3;
  v221 = a2;
  v220 = a1;
  v4 = *v3;
  v227 = type metadata accessor for ConnectedSession(0);
  v209 = *(v227 - 8);
  v5 = *(v209 + 64);
  __chkstk_darwin();
  v225 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v208 = &v194 - v7;
  v8 = *(*(sub_10005DC58(&unk_1005989C0, &unk_1004B28C0) - 8) + 64);
  __chkstk_darwin();
  v231 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v230 = &v194 - v10;
  v203 = type metadata accessor for DispatchWorkItemFlags();
  v234 = *(v203 - 8);
  v11 = *(v234 + 64);
  __chkstk_darwin();
  v202 = &v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for DispatchQoS();
  v229 = *(v201 - 8);
  v13 = v229[8];
  __chkstk_darwin();
  v200 = &v194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for WAError.ErrorCode();
  v226 = *(v207 - 8);
  v15 = *(v226 + 8);
  __chkstk_darwin();
  v206 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = v20;
  __chkstk_darwin();
  v233 = &v194 - v22;
  v23 = *(v4 + 80);
  v224 = *(v4 + 88);
  type metadata accessor for NANAgentHandler.Client();
  v238 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v219 = type metadata accessor for Optional();
  v25 = *(v219 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin();
  v218 = &v194 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v217 = &v194 - v28;
  swift_beginAccess();
  v29 = v3[7];
  v32 = *(v29 + 64);
  v31 = v29 + 64;
  v30 = v32;
  v33 = 1 << *(v3[7] + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v30;
  v213 = v3[7];

  swift_beginAccess();
  v237 = v3;
  result = swift_beginAccess();
  v37 = 0;
  v212 = 0;
  v38 = (v33 + 63) >> 6;
  v223 = TupleTypeMetadata2;
  v216 = TupleTypeMetadata2 - 8;
  v39 = v21;
  v232 = v18 + 16;
  v236 = (v18 + 32);
  v215 = (v25 + 32);
  v195 = enum case for WAError.ErrorCode.deviceNoLongerAvailable(_:);
  v205 = (v226 + 104);
  v204 = (v226 + 8);
  v198 = &v242;
  v197 = (v234 + 8);
  v196 = (v229 + 1);
  v235 = v18;
  v40 = v18 + 8;
  v41 = v23;
  v234 = v40;
  v226 = v21;
  v222 = v23;
  v214 = v31;
  for (i = v38; ; v38 = i)
  {
    if (v35)
    {
      v42 = v37;
      v43 = v231;
      v44 = v230;
      goto LABEL_17;
    }

    v45 = v38 <= v37 + 1 ? v37 + 1 : v38;
    v46 = v45 - 1;
    v43 = v231;
    v44 = v230;
    v47 = v223;
    do
    {
      v42 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      if (v42 >= v38)
      {
        v58 = *(v223 - 8);
        v57 = v218;
        (*(v58 + 56))(v218, 1, 1, v223);
        v35 = 0;
        v37 = v46;
        goto LABEL_18;
      }

      v35 = *(v31 + 8 * v42);
      ++v37;
    }

    while (!v35);
    v37 = v42;
LABEL_17:
    v48 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v49 = v48 | (v42 << 6);
    v50 = v213;
    v51 = v235;
    v52 = v233;
    v53 = v238;
    (*(v235 + 16))(v233, *(v213 + 48) + *(v235 + 72) * v49, v238);
    v54 = *(*(v50 + 56) + 8 * v49);
    v55 = *(v223 + 48);
    v56 = *(v51 + 32);
    v47 = v223;
    v57 = v218;
    v56(v218, v52, v53);
    *&v57[v55] = v54;
    v58 = *(v47 - 8);
    (*(v58 + 56))(v57, 0, 1, v47);
    v59 = v54;
    v39 = v226;
    v41 = v222;
LABEL_18:
    v60 = v217;
    (*v215)(v217, v57, v219);
    if ((*(v58 + 48))(v60, 1, v47) == 1)
    {

      v168 = v237;
      swift_beginAccess();
      v169 = v168[10];
      v170 = (v169 + 64);
      v171 = 1 << *(v169 + 32);
      v172 = -1;
      if (v171 < 64)
      {
        v172 = ~(-1 << v171);
      }

      v173 = v172 & *(v169 + 64);
      v223 = (v171 + 63) >> 6;
      LODWORD(v224) = enum case for WAError.ErrorCode.connectionTerminated(_:);
      v229 = v169;

      v174 = 0;
      v175 = v225;
      v226 = v170;
      while (v173)
      {
        v176 = v174;
LABEL_95:
        v179 = __clz(__rbit64(v173));
        v173 &= v173 - 1;
        v180 = v179 | (v176 << 6);
        v181 = v229;
        v182 = v235;
        v183 = v233;
        v184 = v238;
        (*(v235 + 16))(v233, v229[6] + *(v235 + 72) * v180, v238);
        v185 = v208;
        sub_1003E8CDC(v181[7] + *(v209 + 72) * v180, v208, type metadata accessor for ConnectedSession);
        v186 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
        v187 = *(v186 + 48);
        v43 = v231;
        (*(v182 + 32))(v231, v183, v184);
        sub_100046A08(v185, v43 + v187, type metadata accessor for ConnectedSession);
        (*(*(v186 - 8) + 56))(v43, 0, 1, v186);
        v175 = v225;
        v44 = v230;
        v170 = v226;
LABEL_96:
        sub_10001CEA8(v43, v44, &unk_1005989C0, &unk_1004B28C0);
        v188 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
        if ((*(*(v188 - 8) + 48))(v44, 1, v188) == 1)
        {
        }

        sub_100046A08(v44 + *(v188 + 48), v175, type metadata accessor for ConnectedSession);
        if (*(v175 + *(v227 + 24)) == v228)
        {
          v189 = *(v175 + *(v227 + 40));
          v190 = v206;
          v191 = v207;
          (*v205)(v206, v224, v207);
          v192 = WAError.ErrorCode.rawValue.getter();
          result = (*v204)(v190, v191);
          if (v192 < -32768)
          {
            goto LABEL_107;
          }

          if (v192 >= 0x8000)
          {
            goto LABEL_108;
          }

          NANAgentHandler.stopConnectionSession(_:notifyClient:error:)(v189, 1, v192);
          v175 = v225;
        }

        sub_1003E8ED4(v175, type metadata accessor for ConnectedSession);
        result = (*v234)(v44, v238);
      }

      if (v223 <= v174 + 1)
      {
        v177 = v174 + 1;
      }

      else
      {
        v177 = v223;
      }

      v178 = v177 - 1;
      while (1)
      {
        v176 = v174 + 1;
        if (__OFADD__(v174, 1))
        {
          goto LABEL_106;
        }

        if (v176 >= v223)
        {
          v193 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
          (*(*(v193 - 8) + 56))(v43, 1, 1, v193);
          v173 = 0;
          v174 = v178;
          goto LABEL_96;
        }

        v173 = *&v170[8 * v176];
        ++v174;
        if (v173)
        {
          v174 = v176;
          goto LABEL_95;
        }
      }
    }

    v61 = *&v60[*(v47 + 48)];
    v62 = *v236;
    (*v236)(v39, v60, v238);
    type metadata accessor for NANAgentHandler.SubscriberClient();
    v63 = swift_dynamicCastClass();
    if (v63)
    {
      break;
    }

    type metadata accessor for NANAgentHandler.PublisherClient();
    v74 = swift_dynamicCastClass();
    v31 = v214;
    if (!v74)
    {

      result = (*v234)(v39, v238);
      continue;
    }

    v229 = v61;
    v75 = v237[6];
    if (!*(v75 + 16))
    {
      goto LABEL_103;
    }

    v76 = v74;
    v77 = v237[6];

    v78 = sub_10002A440(v39);
    if ((v79 & 1) == 0)
    {
      goto LABEL_79;
    }

    v80 = *(*(v75 + 56) + 8 * v78);

    v82 = *(v80 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier);
    v81 = *(v80 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier + 8);

    if (v82 == v220 && v81 == v221)
    {
    }

    else
    {
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v84 & 1) == 0)
      {
        goto LABEL_103;
      }
    }

    v111 = v237[6];
    if (!*(v111 + 16))
    {
      goto LABEL_103;
    }

    v112 = v237[6];

    v113 = sub_10002A440(v39);
    if ((v114 & 1) == 0)
    {
      goto LABEL_79;
    }

    v210 = v62;
    v115 = *(*(v111 + 56) + 8 * v113);

    v116 = *(v115 + 16);

    v118 = *(v116 + 48);
    v117 = *(v116 + 56);

    result = *(v76 + qword_100598DC0);
    if (!result)
    {
      goto LABEL_114;
    }

    v119 = [result allowedDeviceIDs];
    if (!v119)
    {
      goto LABEL_4;
    }

    v120 = v119;
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    sub_100388B0C();
    v121 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v122 = v212;
    sub_1003370E4(v121);
    v124 = v123;
    v212 = v122;

    v125 = *(v124 + 16);
    v126 = 32;
    do
    {
      if (!v125)
      {
LABEL_67:

        goto LABEL_5;
      }

      v127 = *(v124 + v126);
      v126 += 8;
      --v125;
    }

    while (v127 != v228);

    v128 = v237[6];
    if (!*(v128 + 16))
    {
      goto LABEL_77;
    }

    v129 = v237[6];

    v130 = sub_10002A440(v39);
    if ((v131 & 1) == 0)
    {

      goto LABEL_77;
    }

    v132 = *(*(v128 + 56) + 8 * v130);

    v133 = *(v132 + 16);

    if (!v237[2])
    {
      goto LABEL_76;
    }

    v194 = v133;
    v134 = v206;
    v135 = v207;
    (*v205)(v206, v195, v207);

    v136 = WAError.ErrorCode.rawValue.getter();
    result = (*v204)(v134, v135);
    if (v136 < 0xFFFFFFFF80000000)
    {
      goto LABEL_111;
    }

    v41 = v222;
    if (v136 > 0x7FFFFFFF)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    sub_1003F97C8(v194, v136);

LABEL_76:

LABEL_77:
    v154 = v118;
    v155 = v237;
    sub_1003AF9F0(v220, v221, v154, v117, 1);

    swift_beginAccess();
    sub_1003AD75C(v39, sub_10047710C, sub_10046D8D8);
    swift_endAccess();

    v156 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v157 = v235;
    v158 = v233;
    v159 = v238;
    (*(v235 + 16))(v233, v226, v238);
    v160 = (*(v157 + 80) + 40) & ~*(v157 + 80);
    v161 = swift_allocObject();
    v162 = v224;
    *(v161 + 2) = v41;
    *(v161 + 3) = v162;
    *(v161 + 4) = v155;
    v210(&v161[v160], v158, v159);
    v244 = sub_1003EAB28;
    v245 = v161;
    aBlock = _NSConcreteStackBlock;
    v241 = 1107296256;
    v242 = sub_10000C8B8;
    v243 = &unk_100579440;
    v152 = _Block_copy(&aBlock);

    v153 = v156;
LABEL_78:
    v163 = v200;
    static DispatchQoS.unspecified.getter();
    v239 = _swiftEmptyArrayStorage;
    sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
    v164 = v202;
    v165 = v203;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v152);

    v166 = v164;
    v39 = v226;
    (*v197)(v166, v165);
    v167 = v163;
    v41 = v222;
    (*v196)(v167, v201);
    (*(v235 + 8))(v39, v238);

LABEL_6:
    ;
  }

  v229 = v61;
  v64 = v237[4];
  v31 = v214;
  if (!*(v64 + 16))
  {
    goto LABEL_103;
  }

  v65 = v63;
  v66 = v237[4];

  v67 = sub_10002A440(v39);
  if ((v68 & 1) == 0)
  {
    goto LABEL_79;
  }

  v210 = v62;
  v69 = *(*(v64 + 56) + 8 * v67);

  v71 = *(v69 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier);
  v70 = *(v69 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier + 8);

  if (v71 == v220 && v70 == v221)
  {
  }

  else
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v73 & 1) == 0)
    {
      goto LABEL_103;
    }
  }

  v85 = v237[4];
  if (!*(v85 + 16))
  {
LABEL_103:

    return (*v234)(v39, v238);
  }

  v86 = v237[4];

  v87 = sub_10002A440(v39);
  if ((v88 & 1) == 0)
  {
LABEL_79:

    return (*v234)(v39, v238);
  }

  v89 = *(*(v85 + 56) + 8 * v87);

  v90 = *(v89 + 16);

  v92 = *(v90 + 48);
  v91 = *(v90 + 56);

  result = *(v65 + qword_100598D10);
  if (result)
  {
    v93 = [result allowedDeviceIDs];
    if (v93)
    {
      v94 = v93;
      sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
      sub_100388B0C();
      v95 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v96 = v212;
      sub_1003370E4(v95);
      v98 = v97;
      v212 = v96;

      v99 = *(v98 + 16);
      v100 = 32;
      do
      {
        if (!v99)
        {
          goto LABEL_67;
        }

        v101 = *(v98 + v100);
        v100 += 8;
        --v99;
      }

      while (v101 != v228);

      v102 = v237[4];
      if (!*(v102 + 16))
      {
        goto LABEL_70;
      }

      v103 = v237[4];

      v104 = sub_10002A440(v39);
      if ((v105 & 1) == 0)
      {

        goto LABEL_70;
      }

      v106 = *(*(v102 + 56) + 8 * v104);

      v107 = *(v106 + 16);

      if (!v237[2])
      {
        goto LABEL_69;
      }

      v194 = v107;
      v108 = v206;
      v109 = v207;
      (*v205)(v206, v195, v207);

      v110 = WAError.ErrorCode.rawValue.getter();
      result = (*v204)(v108, v109);
      if (v110 < 0xFFFFFFFF80000000)
      {
        goto LABEL_109;
      }

      v41 = v222;
      if (v110 <= 0x7FFFFFFF)
      {
        sub_1003F978C(v194, v110);

LABEL_69:

LABEL_70:
        v137 = v237;
        sub_1003AF9F0(v220, v221, v92, v91, 0);

        v138 = v137[4];
        if (*(v138 + 16))
        {

          v139 = sub_10002A440(v39);
          if (v140)
          {
            v141 = *(*(v138 + 56) + 8 * v139);

            v142 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
            swift_beginAccess();
            v143 = *(v141 + v142);
            *(v141 + v142) = &_swiftEmptyDictionarySingleton;
          }
        }

        v144 = v237;
        swift_beginAccess();
        sub_1003AD75C(v39, sub_10047710C, sub_10046D8EC);
        swift_endAccess();

        v145 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v146 = v235;
        v147 = v233;
        v148 = v238;
        (*(v235 + 16))(v233, v226, v238);
        v149 = (*(v146 + 80) + 40) & ~*(v146 + 80);
        v150 = swift_allocObject();
        v151 = v224;
        *(v150 + 2) = v41;
        *(v150 + 3) = v151;
        *(v150 + 4) = v144;
        v210(&v150[v149], v147, v148);
        v244 = sub_1003E9F14;
        v245 = v150;
        aBlock = _NSConcreteStackBlock;
        v241 = 1107296256;
        v242 = sub_10000C8B8;
        v243 = &unk_100579490;
        v152 = _Block_copy(&aBlock);
        v153 = v145;

        goto LABEL_78;
      }

LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_4:

LABEL_5:

    result = (*v234)(v39, v238);
    goto LABEL_6;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
  return result;
}

void sub_1003B2218(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = a1[7];
  type metadata accessor for UUID();
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for NANAgentHandler.Client();
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);

  Dictionary.subscript.getter();

  if (v7)
  {
    (*((swift_isaMask & *v7) + 0x98))(v6);
  }

  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
}

uint64_t sub_1003B23A4(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v80 = a1;
  v3 = *v2;
  v74 = type metadata accessor for ConnectedSession(0);
  v77 = *(v74 - 8);
  v4 = *(v77 + 64);
  __chkstk_darwin();
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v71 - v7;
  __chkstk_darwin();
  v79 = &v71 - v8;
  __chkstk_darwin();
  v81 = &v71 - v9;
  v75 = type metadata accessor for NANDriverCapabilities();
  v10 = *(*(v75 - 1) + 64);
  __chkstk_darwin();
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v3 + 88) + 8);
  v13 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Preferences();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v71 - v18;
  v20 = swift_checkMetadataState();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin();
  v24 = &v71 - v23;
  v78 = v2;
  v25 = v2[3];
  swift_unownedRetainStrong();
  (*(v21 + 16))(v24, v25 + *(*v25 + 112), v20);

  (*(AssociatedConformanceWitness + 120))(v20, AssociatedConformanceWitness);
  (*(v21 + 8))(v24, v20);
  v26 = Preferences.disableNanMaxCapabilityCheck.getter(v15);
  (*(v16 + 8))(v19, v15);
  if (v26)
  {
    return 1;
  }

  swift_unownedRetainStrong();
  v28 = sub_10040CAE8();

  v29 = *(v28 + *(*v28 + 304));
  swift_unownedRetainStrong();

  v30 = *(*v29 + 736);
  swift_beginAccess();
  v31 = v73;
  sub_1003E8CDC(v29 + v30, v73, type metadata accessor for NANDriverCapabilities);

  v32 = *(v31 + *(v75 + 11));
  sub_1003E8ED4(v31, type metadata accessor for NANDriverCapabilities);
  v33 = v32 / 3;
  if (v32 < 12)
  {
    v33 = 4;
  }

  if (v33 >= v32)
  {
    v33 = v32;
  }

  v73 = v33;
  v34 = v78;
  swift_beginAccess();
  v35 = v34[10];
  v38 = *(v35 + 64);
  v37 = v35 + 64;
  v36 = v38;
  v39 = 1 << *(v34[10] + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v36;
  v42 = (v39 + 63) >> 6;
  v78 = v34[10];

  v43 = 0;
  v75 = _swiftEmptyArrayStorage;
  v44 = v76;
  v45 = v74;
LABEL_10:
  v46 = v43;
  v47 = v77;
  if (!v41)
  {
    goto LABEL_12;
  }

  do
  {
    v43 = v46;
LABEL_15:
    v48 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v49 = v79;
    v50 = *(v47 + 72);
    sub_1003E8CDC(v78[7] + v50 * (v48 | (v43 << 6)), v79, type metadata accessor for ConnectedSession);
    v51 = v49;
    v52 = v81;
    sub_100046A08(v51, v81, type metadata accessor for ConnectedSession);
    v53 = *(v52 + *(v45 + 40));
    v54 = *(v53 + 72) == v80 && *(v53 + 80) == v44;
    if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100046A08(v81, v72, type metadata accessor for ConnectedSession);
      v55 = v75;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003679C8(0, v55[2] + 1, 1);
        v44 = v76;
        v55 = v82;
      }

      v58 = v55[2];
      v57 = v55[3];
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        sub_1003679C8(v57 > 1, v58 + 1, 1);
        v59 = v58 + 1;
        v44 = v76;
        v55 = v82;
      }

      v55[2] = v59;
      v60 = *(v77 + 80);
      v75 = v55;
      result = sub_100046A08(v72, v55 + ((v60 + 32) & ~v60) + v58 * v50, type metadata accessor for ConnectedSession);
      goto LABEL_10;
    }

    result = sub_1003E8ED4(v81, type metadata accessor for ConnectedSession);
    v46 = v43;
  }

  while (v41);
  while (1)
  {
LABEL_12:
    v43 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      return result;
    }

    if (v43 >= v42)
    {
      break;
    }

    v41 = *(v37 + 8 * v43);
    ++v46;
    if (v41)
    {
      goto LABEL_15;
    }
  }

  v61 = v75;
  v62 = v75[2];
  if (v62)
  {
    v82 = _swiftEmptyArrayStorage;
    sub_10002D838(0, v62, 0);
    v63 = v82;
    v64 = v61 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v65 = *(v47 + 72);
    do
    {
      sub_1003E8CDC(v64, v6, type metadata accessor for ConnectedSession);
      v66 = v6[*(v45 + 20)];
      sub_1003E8ED4(v6, type metadata accessor for ConnectedSession);
      v82 = v63;
      v68 = v63[2];
      v67 = v63[3];
      if (v68 >= v67 >> 1)
      {
        sub_10002D838((v67 > 1), v68 + 1, 1);
        v63 = v82;
      }

      v63[2] = v68 + 1;
      *(v63 + v68 + 32) = v66;
      v64 += v65;
      --v62;
    }

    while (v62);
  }

  else
  {

    v63 = _swiftEmptyArrayStorage;
  }

  v69 = sub_100475CC8(v63);

  v70 = *(v69 + 16);

  return v70 < v73;
}

void *sub_1003B2BC8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v19 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_100002320(a1, a2, &v20);
    *(v16 + 12) = 2048;
    *(v16 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v13, v14, "#### Paired device Deleted for bundleId: %s deviceID: %llu", v16, 0x16u);
    sub_100002A00(v17);
  }

  (*(v9 + 8))(v12, v8);
  return sub_1003B07F4(a1, a2, a3);
}

uint64_t sub_1003B2DCC(void *a1, uint64_t a2)
{
  v3 = v2;
  v201 = a2;
  v5 = *(*(sub_10005DC58(&qword_100597588, &qword_1004B1870) - 8) + 64);
  __chkstk_darwin();
  v170 = &v167 - v6;
  v7 = *(*(sub_10005DC58(&qword_100597578, &qword_1004B1860) - 8) + 64);
  __chkstk_darwin();
  v189 = &v167 - v8;
  v200 = type metadata accessor for WAError.ErrorCode();
  v219 = *(v200 - 8);
  v9 = *(v219 + 64);
  __chkstk_darwin();
  v191 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v182 = &v167 - v11;
  v12 = type metadata accessor for ConnectedSession(0);
  v215 = *(v12 - 8);
  v13 = *(v215 + 64);
  __chkstk_darwin();
  v194 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v193 = &v167 - v15;
  __chkstk_darwin();
  v217 = &v167 - v16;
  __chkstk_darwin();
  v206 = &v167 - v17;
  v18 = *(*(sub_10005DC58(&unk_1005989C0, &unk_1004B28C0) - 8) + 64);
  __chkstk_darwin();
  v214 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v167 - v20;
  v172 = *(type metadata accessor for ListenInBoundConnection(0) - 8);
  v22 = *(v172 + 64);
  __chkstk_darwin();
  v171 = &v167 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for UUID();
  v210 = *(v222 - 8);
  v24 = *(v210 + 64);
  __chkstk_darwin();
  v221 = &v167 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = &v167 - v26;
  __chkstk_darwin();
  v208 = &v167 - v27;
  v28 = *(*(sub_10005DC58(&qword_1005989B8, &qword_1004B28B8) - 8) + 64);
  __chkstk_darwin();
  v30 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v174 = &v167 - v31;
  v32 = type metadata accessor for Logger();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin();
  v199 = &v167 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v167 - v36;
  v192 = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  v38 = a1;
  v39 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.default.getter();

  LODWORD(v220) = a1;
  v40 = os_log_type_enabled(v39, a1);
  v197 = v3;
  v41 = v201;
  v218 = v12;
  v213 = v21;
  v195 = v32;
  v212 = v38;
  if (!v40)
  {

    v48 = *(v33 + 8);
    v196 = v33 + 8;
    v190 = v48;
    v48(v37, v32);
    v49 = v214;
    v50 = v215;
    v51 = v3;
    v52 = v12;
    goto LABEL_16;
  }

  v196 = v33;
  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  v226 = v44;
  *v42 = 138412546;
  *(v42 + 4) = v38;
  *v43 = v38;
  *(v42 + 12) = 2080;
  v45 = v38;
  if (v41 <= 1)
  {
    if (v41 == -1)
    {
      v46 = 0x80000001004BA5E0;
      v47 = 0xD000000000000011;
      goto LABEL_15;
    }

    if (v41 == 1)
    {
      v46 = 0xE900000000000074;
      v47 = 0x754F2064656D6954;
      goto LABEL_15;
    }

LABEL_14:
    v46 = 0xE700000000000000;
    v47 = 0x6E776F6E6B6E55;
    goto LABEL_15;
  }

  if (v41 == 2)
  {
    v46 = 0xEE00646574736575;
    v47 = 0x7165522072657355;
    goto LABEL_15;
  }

  if (v41 == 3)
  {
    v46 = 0xEC0000006572756CLL;
    v47 = 0x6961462070696843;
    goto LABEL_15;
  }

  if (v41 != 4)
  {
    goto LABEL_14;
  }

  v46 = 0x80000001004BA540;
  v47 = 0xD000000000000018;
LABEL_15:
  v53 = v220;
  v54 = v45;
  v55 = sub_100002320(v47, v46, &v226);

  *(v42 + 14) = v55;
  _os_log_impl(&_mh_execute_header, v39, v53, "#### Responder DataPath terminated for handle: %@ reason: %s", v42, 0x16u);
  sub_100016290(v43, &qword_10058B780, &qword_100480AC0);

  sub_100002A00(v44);

  v56 = *(v196 + 8);
  v196 += 8;
  v190 = v56;
  v56(v37, v195);
  v51 = v197;
  v52 = v218;
  v49 = v214;
  v50 = v215;
  v21 = v213;
LABEL_16:
  swift_beginAccess();
  v57 = *(v51 + 72);
  v58 = *(v57 + 64);
  v169 = v57 + 64;
  v59 = 1 << *(v57 + 32);
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  else
  {
    v60 = -1;
  }

  v61 = v60 & v58;
  v173 = v57;

  result = swift_beginAccess();
  v63 = 0;
  v168 = (v59 + 63) >> 6;
  v207 = v210 + 16;
  v220 = (v210 + 32);
  v216 = (v210 + 8);
  v198 = (v219 + 8);
  v184 = enum case for WAError.ErrorCode.error(_:);
  v203 = (v219 + 104);
  v180 = enum case for WAError.ErrorCode.connectionFailed(_:);
  v183 = enum case for WAError.ErrorCode.connectionTerminated(_:);
  v175 = enum case for WAError.ErrorCode.connectionIdleTimeout(_:);
  v188 = (v50 + 56);
  *&v64 = 136315906;
  v181 = v64;
  v177 = v30;
  while (1)
  {
    if (v61)
    {
      v67 = v63;
LABEL_31:
      v178 = (v61 - 1) & v61;
      v70 = __clz(__rbit64(v61)) | (v67 << 6);
      v71 = v173;
      v72 = v210;
      v73 = v208;
      v74 = v222;
      (*(v210 + 16))(v208, *(v173 + 48) + *(v210 + 72) * v70, v222);
      v75 = v171;
      sub_1003E8CDC(*(v71 + 56) + *(v172 + 72) * v70, v171, type metadata accessor for ListenInBoundConnection);
      v76 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
      v77 = *(v76 + 48);
      v78 = *(v72 + 32);
      v30 = v177;
      v78(v177, v73, v74);
      sub_100046A08(v75, &v30[v77], type metadata accessor for ListenInBoundConnection);
      (*(*(v76 - 8) + 56))(v30, 0, 1, v76);
      v69 = v67;
    }

    else
    {
      v68 = v168 <= v63 + 1 ? v63 + 1 : v168;
      v69 = v68 - 1;
      while (1)
      {
        v67 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          return result;
        }

        if (v67 >= v168)
        {
          break;
        }

        v61 = *(v169 + 8 * v67);
        ++v63;
        if (v61)
        {
          goto LABEL_31;
        }
      }

      v166 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
      (*(*(v166 - 8) + 56))(v30, 1, 1, v166);
      v178 = 0;
    }

    v79 = v174;
    sub_10001CEA8(v30, v174, &qword_1005989B8, &qword_1004B28B8);
    v80 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
    {
    }

    v81 = *(v80 + 48);
    v219 = *v220;
    (v219)(v179, v79, v222);
    v82 = *(v79 + v81);
    v83 = v79;
    v84 = v82;
    sub_1003E8ED4(v83 + v81, type metadata accessor for ListenInBoundConnection);
    v85 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
    v87 = v86;

    v88 = [v212 initiatorDataAddress];
    v89 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
    v91 = v90;

    v204 = v85;
    if (v89 == v85 && v91 == v87)
    {
      break;
    }

    v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v92 = v217;
    if (v93)
    {
      goto LABEL_37;
    }

    (*v216)(v179, v222);

    v63 = v69;
LABEL_21:
    v61 = v178;
  }

  v92 = v217;
LABEL_37:
  v205 = v87;
  v176 = v69;
  v94 = *(v197 + 80);
  v95 = v94 + 64;
  v96 = 1 << *(v94 + 32);
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  else
  {
    v97 = -1;
  }

  v98 = v97 & *(v94 + 64);
  v202 = (v96 + 63) >> 6;
  v209 = v94;

  v99 = 0;
  v100 = v215;
  v211 = v95;
  while (v98)
  {
    v103 = v99;
LABEL_54:
    v106 = __clz(__rbit64(v98));
    v98 &= v98 - 1;
    v107 = v106 | (v103 << 6);
    v108 = v209;
    v109 = v208;
    v110 = v222;
    (*(v210 + 16))(v208, *(v209 + 48) + *(v210 + 72) * v107, v222);
    v111 = v206;
    sub_1003E8CDC(*(v108 + 56) + *(v100 + 72) * v107, v206, type metadata accessor for ConnectedSession);
    v112 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
    v113 = *(v112 + 48);
    v49 = v214;
    (v219)(v214, v109, v110);
    sub_100046A08(v111, v49 + v113, type metadata accessor for ConnectedSession);
    (*(*(v112 - 8) + 56))(v49, 0, 1, v112);
    v21 = v213;
    v92 = v217;
    v52 = v218;
    v100 = v215;
LABEL_55:
    sub_10001CEA8(v49, v21, &unk_1005989C0, &unk_1004B28C0);
    v114 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
    if ((*(*(v114 - 8) + 48))(v21, 1, v114) == 1)
    {

      swift_beginAccess();
      v65 = v170;
      v66 = v179;
      sub_1003AD998(v179, type metadata accessor for ListenInBoundConnection, type metadata accessor for ListenInBoundConnection, sub_100469704, sub_10046D130, v170);
      sub_100016290(v65, &qword_100597588, &qword_1004B1870);
      swift_endAccess();
      result = (*v216)(v66, v222);
      v63 = v176;
      v30 = v177;
      goto LABEL_21;
    }

    v115 = *(v114 + 48);
    (v219)(v221, v21, v222);
    sub_100046A08(&v21[v115], v92, type metadata accessor for ConnectedSession);
    LODWORD(v115) = *(v92 + v52[5]);
    if (v115 == [v212 datapathID])
    {
      v116 = (v92 + v52[11]);
      v118 = *v116;
      v117 = v116[1];
      v225[0] = v118;
      v225[1] = v117;
      v223 = v204;
      v224 = v205;
      sub_10005E2E4();
      if (StringProtocol.contains<A>(_:)())
      {
        v119 = v92;
        v120 = v199;
        Logger.init(subsystem:category:)();
        v121 = v193;
        sub_1003E8CDC(v119, v193, type metadata accessor for ConnectedSession);
        v122 = v119;
        v123 = v194;
        sub_1003E8CDC(v119, v194, type metadata accessor for ConnectedSession);
        v124 = v205;

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v125, v126))
        {
          v186 = v126;
          v187 = v125;
          v127 = v52;
          v128 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v225[0] = v185;
          *v128 = v181;
          *(v128 + 4) = sub_100002320(v204, v124, v225);
          *(v128 + 12) = 2080;
          v129 = (v121 + v52[11]);
          v130 = v123;
          v131 = *v129;
          v132 = v129[1];

          sub_1003E8ED4(v121, type metadata accessor for ConnectedSession);
          v133 = sub_100002320(v131, v132, v225);

          *(v128 + 14) = v133;
          *(v128 + 22) = 2080;
          v134 = (v130 + v127[11]);
          v135 = *v134;
          v136 = v134[1];

          sub_1003E8ED4(v130, type metadata accessor for ConnectedSession);
          v137 = sub_100002320(v135, v136, v225);

          *(v128 + 24) = v137;
          *(v128 + 32) = 512;
          v138 = v182;
          sub_1003AE074(2u, v201, v182);
          v139 = WAError.ErrorCode.rawValue.getter();
          result = (*v198)(v138, v200);
          if (v139 < -32768)
          {
            goto LABEL_85;
          }

          if (v139 >= 0x8000)
          {
            goto LABEL_86;
          }

          *(v128 + 34) = v139;
          v140 = v187;
          _os_log_impl(&_mh_execute_header, v187, v186, "#### Terminated InBoundConnection %s datapath:id: %s connectedSession RemoteAddress %s error: %hd", v128, 0x24u);
          swift_arrayDestroy();

          v190(v199, v195);
          v141 = v201;
          v122 = v217;
          v52 = v218;
        }

        else
        {

          sub_1003E8ED4(v123, type metadata accessor for ConnectedSession);
          sub_1003E8ED4(v121, type metadata accessor for ConnectedSession);
          v190(v120, v195);
          v141 = v201;
        }

        v143 = *&v122[v52[10]];
        v144 = *(v143 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
        v145 = *(v143 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);
        if (v141 <= 1)
        {
          v146 = v184;
          if (v141 != -1)
          {
            v146 = v175;
            if (v141 != 1)
            {
LABEL_71:
              v146 = v184;
            }
          }
        }

        else
        {
          v146 = v183;
          if (v141 != 2)
          {
            v146 = v180;
            if (v141 != 3)
            {
              v146 = v184;
              if (v141 != 4)
              {
                goto LABEL_71;
              }
            }
          }
        }

        v147 = v191;
        v148 = v200;
        (*v203)(v191, v146, v200);

        v149 = WAError.ErrorCode.rawValue.getter();
        result = (*v198)(v147, v148);
        if (v149 < -32768)
        {
          goto LABEL_83;
        }

        if (v149 >= 0x8000)
        {
          goto LABEL_84;
        }

        v144(0, 0, 0, 0, 0, 0, 0, 0, 0, v149);

        v150 = *(v143 + 72);
        v151 = *(v143 + 80);
        v152 = v218[7];

        v153 = v217;
        v154 = WASubscribableService.name.getter();
        v155 = v197;
        sub_1003AF9F0(v150, v151, v154, v156, 2);

        v157 = v155;

        swift_beginAccess();
        v158 = *(v155 + 80);
        v159 = sub_10002A440(v221);
        if (v160)
        {
          v161 = v159;
          v162 = *(v157 + 80);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v164 = *(v157 + 80);
          v223 = v164;
          *(v157 + 80) = 0x8000000000000000;
          v102 = v189;
          v49 = v214;
          v100 = v215;
          v21 = v213;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10046D5AC();
            v164 = v223;
          }

          (*(v210 + 8))(*(v164 + 48) + *(v210 + 72) * v161, v222);
          sub_100046A08(*(v164 + 56) + *(v100 + 72) * v161, v102, type metadata accessor for ConnectedSession);
          sub_100469890(v161, v164);
          v165 = *(v157 + 80);
          *(v157 + 80) = v164;

          v101 = 0;
        }

        else
        {
          v101 = 1;
          v102 = v189;
          v49 = v214;
          v100 = v215;
          v21 = v213;
        }

        v52 = v218;
        (*v188)(v102, v101, 1, v218);
        sub_100016290(v102, &qword_100597578, &qword_1004B1860);
        swift_endAccess();
        v92 = v153;
      }
    }

    (*v216)(v221, v222);
    sub_1003E8ED4(v92, type metadata accessor for ConnectedSession);
    v95 = v211;
  }

  if (v202 <= v99 + 1)
  {
    v104 = v99 + 1;
  }

  else
  {
    v104 = v202;
  }

  v105 = v104 - 1;
  while (1)
  {
    v103 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      break;
    }

    if (v103 >= v202)
    {
      v142 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
      (*(*(v142 - 8) + 56))(v49, 1, 1, v142);
      v98 = 0;
      v99 = v105;
      goto LABEL_55;
    }

    v98 = *(v95 + 8 * v103);
    ++v99;
    if (v98)
    {
      v99 = v103;
      goto LABEL_54;
    }
  }

  __break(1u);
}

uint64_t NANAgentHandler.startBrowserSession(_:)(uint64_t a1)
{
  v138 = *v1;
  v3 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v139 = &v133 - v4;
  v143 = type metadata accessor for WAError.ErrorCode();
  v142 = *(v143 - 8);
  v5 = *(v142 + 64);
  __chkstk_darwin();
  v141 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent();
  v151 = *(v7 - 8);
  v152 = v7;
  v8 = *(v151 + 64);
  __chkstk_darwin();
  v136 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v9;
  __chkstk_darwin();
  v147 = &v133 - v10;
  v11 = type metadata accessor for Logger();
  v154 = *(v11 - 8);
  v155 = v11;
  v12 = *(v154 + 64);
  __chkstk_darwin();
  v149 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v133 - v14;
  __chkstk_darwin();
  v140 = &v133 - v15;
  __chkstk_darwin();
  v137 = &v133 - v16;
  __chkstk_darwin();
  v134 = &v133 - v17;
  __chkstk_darwin();
  v19 = &v133 - v18;
  v20 = *(*(sub_10005DC58(&qword_100598958, &qword_1004B2858) - 8) + 64);
  __chkstk_darwin();
  v146 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v133 - v22;
  __chkstk_darwin();
  v158 = &v133 - v23;
  v24 = type metadata accessor for Data.Deallocator();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin();
  v28 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = 0;
  v29 = sub_1003F39A8();
  v31 = v30;
  v32 = objc_allocWithZone(NSRegularExpression);
  v33 = sub_1003E0818(0xD000000000000021, 0x80000001004C0A50, 0);
  v153 = a1;
  v34 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v34 = v29;
  }

  v35 = 7;
  if (((v31 >> 60) & ((v29 & 0x800000000000000) == 0)) != 0)
  {
    v35 = 11;
  }

  v161 = 15;
  v162 = v35 | (v34 << 16);
  v159[0] = v29;
  v159[1] = v31;
  v157 = 0;
  v36 = v33;

  sub_10005DC58(&qword_100598968, &qword_1004B2870);
  sub_10000CADC(&qword_100598970, &qword_100598968, &qword_1004B2870);
  sub_10005E2E4();
  v37 = _NSRange.init<A, B>(_:in:)();
  v39 = v38;
  v40 = String._bridgeToObjectiveC()();
  v41 = v39;
  v42 = v153;
  v43 = [v36 firstMatchInString:v40 options:0 range:{v37, v41}];

  v44 = v157;

  v148 = v43 != 0;
  v45 = *(v42 + OBJC_IVAR____TtC12wifip2pdCore16NANBrowserClient_descriptor);
  v46 = nw_browse_descriptor_copy_custom_service();
  v47 = v160;
  (*(v25 + 104))(v28, enum case for Data.Deallocator.free(_:), v24);
  Data.Deallocator._deallocator.getter();
  if (v47)
  {
    v48 = type metadata accessor for __DataStorage();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();

    v51 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    v156 = sub_100003020(v51, v47);
    v157 = v52;
  }

  else
  {
    v53 = Data.Deallocator._deallocator.getter();
    v53(v46, 0);

    v156 = 0;
    v157 = 0xC000000000000000;
  }

  (*(v25 + 8))(v28, v24);
  v54 = v151;
  v55 = v152;
  v56 = *(v151 + 56);
  v56(v158, 1, 1, v152);
  Logger.init(subsystem:category:)();
  v57 = v153;

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v161 = v61;
    *v60 = 136315394;
    *(v60 + 4) = sub_100002320(*(v57 + 72), *(v57 + 80), &v161);
    *(v60 + 12) = 1024;
    *(v60 + 14) = v148;
    _os_log_impl(&_mh_execute_header, v58, v59, "#### startBrowserSession: bundleId: %s, DDUIBrowse: %{BOOL}d", v60, 0x12u);
    sub_100002A00(v61);
    v55 = v152;

    v54 = v151;
  }

  v62 = *(v154 + 8);
  v62(v19, v155);
  v63 = v150;
  static WABrowserAgentInterface.DescriptorToAgent.decode(from:)();
  if (!v44)
  {
    v71 = v158;
    sub_100016290(v158, &qword_100598958, &qword_1004B2858);
    v56(v63, 0, 1, v55);
    sub_10001CEA8(v63, v71, &qword_100598958, &qword_1004B2858);
    v72 = v71;
    v73 = v146;
    sub_100012400(v72, v146, &qword_100598958, &qword_1004B2858);
    if ((*(v54 + 48))(v73, 1, v55) == 1)
    {
      sub_100016290(v73, &qword_100598958, &qword_1004B2858);
      v74 = v144;
      Logger.init(subsystem:category:)();
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "#### WABrowserIPC.Descriptor2Agent nil ", v77, 2u);
      }

      sub_1000124C8(v156, v157);

      v70 = v74;
      goto LABEL_18;
    }

    v80 = *(v54 + 32);
    v80(v147, v73, v55);
    v81 = v153;
    v82 = *(v153 + 64);
    v83._countAndFlagsBits = 0x6269726373627553;
    v84._countAndFlagsBits = 0xD00000000000001ELL;
    v84._object = 0x80000001004B8650;
    v83._object = 0xE900000000000065;
    if (Int32.checkEntitlement(for_:capabilities:)(v84, v83))
    {
      v78 = v81[9];
      v85 = v81[10];
      v161 = v78;
      v162 = v85;
      strcpy(v159, "wifiawaretool");
      HIWORD(v159[1]) = -4864;
      sub_10005E2E4();
      if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v86 = v81[6], v87 = v81[7], (static LaunchServiceRecord.isSubscribableServiceValid(for:serviceName:)(v82, v86, v87)))
      {
        v88 = v145;
        if (sub_1003E67A8(v78, v85, 0))
        {
          v89 = type metadata accessor for TaskPriority();
          (*(*(v89 - 8) + 56))(v139, 1, 1, v89);
          v90 = v151;
          v91 = v152;
          v92 = v136;
          (*(v151 + 16))(v136, v147, v152);
          v93 = (*(v90 + 80) + 56) & ~*(v90 + 80);
          v94 = (v135 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
          v95 = swift_allocObject();
          *(v95 + 2) = 0;
          *(v95 + 3) = 0;
          v96 = v138;
          *(v95 + 4) = *(v138 + 80);
          v97 = v153;
          *(v95 + 5) = *(v96 + 88);
          *(v95 + 6) = v97;
          v80(&v95[v93], v92, v91);
          v98 = &v95[v94];
          *v98 = v88;
          v98[8] = v148;

          sub_1003AD150(0, 0, v139, &unk_1004B2868, v95);
          sub_1000124C8(v156, v157);

          (*(v90 + 8))(v147, v91);
          sub_100016290(v158, &qword_100598958, &qword_1004B2858);
          return 0;
        }

        v110 = v137;
        Logger.init(subsystem:category:)();

        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v161 = v114;
          *v113 = 136315138;
          *(v113 + 4) = sub_100002320(v78, v85, &v161);
          _os_log_impl(&_mh_execute_header, v111, v112, "#### Client %s reached max allowed services", v113, 0xCu);
          sub_100002A00(v114);
        }

        v62(v110, v155);
        v115 = v143;
        v116 = v142;
        v117 = v141;
        v118 = enum case for WAError.ErrorCode.noRadioResources(_:);
        if (*(v145 + 16))
        {
          v119 = *(v142 + 104);
          v119(v141, enum case for WAError.ErrorCode.noRadioResources(_:), v143);

          v120 = WAError.ErrorCode.rawValue.getter();
          (*(v116 + 8))(v117, v115);
          if (v120 < 0xFFFFFFFF80000000)
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          if (v120 > 0x7FFFFFFF)
          {
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          sub_1003F978C(v153, v120);
        }

        else
        {
          v119 = *(v142 + 104);
        }

        v119(v117, v118, v115);
        v78 = WAError.ErrorCode.rawValue.getter();
        sub_1000124C8(v156, v157);
        (*(v116 + 8))(v117, v115);
        (*(v151 + 8))(v147, v152);
        sub_100016290(v158, &qword_100598958, &qword_1004B2858);
        if (v78 >= 0xFFFFFFFF80000000)
        {
          if (v78 <= 0x7FFFFFFF)
          {
            return v78;
          }

          goto LABEL_59;
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    else
    {
      v99 = v140;
      Logger.init(subsystem:category:)();

      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v161 = v103;
        *v102 = 136315138;
        *(v102 + 4) = sub_100002320(v81[9], v81[10], &v161);
        _os_log_impl(&_mh_execute_header, v100, v101, "#### No Browse Entitlement for bundleId: %s", v102, 0xCu);
        sub_100002A00(v103);
      }

      v62(v99, v155);
      v104 = v143;
      v105 = v142;
      v106 = v141;
      v85 = *(v145 + 16);
      v107 = enum case for WAError.ErrorCode.entitlementMissing(_:);
      if (v85)
      {
        v108 = *(v142 + 104);
        v108(v141, enum case for WAError.ErrorCode.entitlementMissing(_:), v143);

        v109 = WAError.ErrorCode.rawValue.getter();
        (*(v105 + 8))(v106, v104);
        if (v109 < 0xFFFFFFFF80000000)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v109 > 0x7FFFFFFF)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        sub_1003F978C(v153, v109);
      }

      else
      {
        v108 = *(v142 + 104);
      }

      v108(v106, v107, v104);
      v86 = v106;
      v78 = WAError.ErrorCode.rawValue.getter();
      sub_1000124C8(v156, v157);
      v121 = *(v105 + 8);
      v87 = v105 + 8;
      v121(v106, v104);
      (*(v151 + 8))(v147, v152);
      sub_100016290(v158, &qword_100598958, &qword_1004B2858);
      if (v78 < 0xFFFFFFFF80000000)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v78 <= 0x7FFFFFFF)
      {
        return v78;
      }

      __break(1u);
    }

    v150 = v87;
    v122 = v86;
    v123 = v134;
    Logger.init(subsystem:category:)();

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v126 = 136315394;
      *(v126 + 4) = sub_100002320(v78, v85, &v161);
      *(v126 + 12) = 2080;
      *(v126 + 14) = sub_100002320(v122, v150, &v161);
      _os_log_impl(&_mh_execute_header, v124, v125, "#### Client %s has no service %s in plist", v126, 0x16u);
      swift_arrayDestroy();
    }

    v62(v123, v155);
    v127 = v143;
    v128 = v142;
    v129 = v141;
    v130 = enum case for WAError.ErrorCode.serviceNotDeclared(_:);
    if (*(v145 + 16))
    {
      v131 = *(v142 + 104);
      v131(v141, enum case for WAError.ErrorCode.serviceNotDeclared(_:), v143);

      v132 = WAError.ErrorCode.rawValue.getter();
      (*(v128 + 8))(v129, v127);
      if (v132 < 0xFFFFFFFF80000000)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (v132 > 0x7FFFFFFF)
      {
        goto LABEL_64;
      }

      sub_1003F978C(v153, v132);
    }

    else
    {
      v131 = *(v142 + 104);
    }

    v131(v129, v130, v127);
    v78 = WAError.ErrorCode.rawValue.getter();
    sub_1000124C8(v156, v157);
    (*(v128 + 8))(v129, v127);
    (*(v151 + 8))(v147, v152);
    sub_100016290(v158, &qword_100598958, &qword_1004B2858);
    if (v78 < 0xFFFFFFFF80000000)
    {
      goto LABEL_60;
    }

    if (v78 <= 0x7FFFFFFF)
    {
      return v78;
    }

    __break(1u);
    goto LABEL_55;
  }

  v64 = v149;
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138412290;
    swift_errorRetain();
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v67 + 4) = v69;
    *v68 = v69;
    _os_log_impl(&_mh_execute_header, v65, v66, "#### WABrowserIPC.Descriptor2Agent decode Error: %@", v67, 0xCu);
    sub_100016290(v68, &qword_10058B780, &qword_100480AC0);
  }

  sub_1000124C8(v156, v157);

  v70 = v64;
LABEL_18:
  v62(v70, v155);
  sub_100016290(v158, &qword_100598958, &qword_1004B2858);
  return 255;
}

uint64_t sub_1003B5B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7)
{
  *(v7 + 472) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a1;
  *(v7 + 80) = a4;
  v8 = *a6;
  v9 = type metadata accessor for WAError.ErrorCode();
  *(v7 + 104) = v9;
  v10 = *(v9 - 8);
  *(v7 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v7 + 128) = v12;
  v13 = *(v12 - 8);
  *(v7 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  v15 = type metadata accessor for WADevicesAgentInterface.Devices();
  *(v7 + 184) = v15;
  v16 = *(v15 - 8);
  *(v7 + 192) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  v18 = *(v8 + 88);
  *(v7 + 216) = v18;
  v19 = *(v18 + 8);
  *(v7 + 224) = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  *(v7 + 232) = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for Preferences();
  *(v7 + 240) = v20;
  v21 = *(v20 - 8);
  *(v7 + 248) = v21;
  v22 = *(v21 + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  v23 = swift_checkMetadataState();
  *(v7 + 264) = v23;
  v24 = *(v23 - 8);
  *(v7 + 272) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  v26 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent();
  *(v7 + 296) = v26;
  v27 = *(v26 - 8);
  *(v7 + 304) = v27;
  v28 = *(v27 + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  v29 = type metadata accessor for UUID();
  *(v7 + 320) = v29;
  v30 = *(v29 - 8);
  *(v7 + 328) = v30;
  *(v7 + 336) = *(v30 + 64);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_1003B5FA4, 0, 0);
}

uint64_t sub_1003B5FA4()
{
  v145 = v0;
  v136 = *(v0 + 368);
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 88);
  v128 = v1;
  v133 = *(v0 + 96);
  v5 = *(v0 + 80);
  UUID.init()();
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = v5[9];
  *(v0 + 376) = v7;
  v8 = v5[10];
  *(v0 + 384) = v8;
  v9 = type metadata accessor for WifiAwareBrowser(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v0 + 392) = v12;
  v13 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
  *(v12 + v13) = sub_1002DEBA4(_swiftEmptyArrayStorage);
  *(v12 + 16) = v5;
  v14 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_wifiAwareDescriptor;
  v6(v12 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_wifiAwareDescriptor, v128, v3);
  (*(v2 + 56))(v12 + v14, 0, 1, v3);
  v15 = *(v2 + 8);

  v15(v128, v3);
  v16 = (v12 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier);
  v129 = v7;
  *v16 = v7;
  v16[1] = v8;
  v121 = v8;
  swift_beginAccess();

  v17 = *(v133 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v144[0] = *(v133 + 32);
  *(v133 + 32) = 0x8000000000000000;
  sub_1003E263C(v12, v136, isUniquelyReferenced_nonNull_native, sub_10046D8EC, sub_100313B98, sub_1002E01C4);
  *(v133 + 32) = v144[0];
  swift_endAccess();
  *(v0 + 400) = v5[6];
  *(v0 + 408) = v5[7];
  v19 = objc_allocWithZone(WiFiAwareSubscribeConfiguration);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithServiceName:v20];
  *(v0 + 416) = v21;

  WABrowserAgentInterface.DescriptorToAgent.requestedDuration.getter();
  result = Duration.components.getter();
  if (result < 0)
  {
    __break(1u);
    __break(1u);
    return result;
  }

  v23 = result;
  if (*(v0 + 472) == 1)
  {
    if (!result)
    {
      v45 = v21;
      [v45 setTimeoutAfterSeconds:600];
      [v45 setAuthenticationType:0];

      goto LABEL_13;
    }

    v24 = 600;
  }

  else
  {
    v25 = *(v0 + 288);
    v27 = *(v0 + 264);
    v26 = *(v0 + 272);
    v29 = *(v0 + 248);
    v28 = *(v0 + 256);
    v30 = *(v0 + 232);
    v140 = *(v0 + 240);
    v31 = *(*(v0 + 96) + 24);
    swift_unownedRetainStrong();
    (*(v26 + 16))(v25, v31 + *(*v31 + 112), v27);

    (*(v30 + 120))(v27, v30);
    (*(v26 + 8))(v25, v27);
    LODWORD(v24) = Preferences.nanServiceTimeout.getter(v140);
    (*(v29 + 8))(v28, v140);
    v24 = v24;
    if (!v23)
    {
      goto LABEL_8;
    }
  }

  if (v24 >= v23)
  {
    v24 = v23;
  }

LABEL_8:
  v32 = *(v0 + 472);
  v33 = v21;
  [v33 setTimeoutAfterSeconds:v24];
  [v33 setAuthenticationType:0];

  if ((v32 & 1) == 0)
  {
    v35 = *(v0 + 272);
    v34 = *(v0 + 280);
    v36 = *(v0 + 264);
    v37 = *(v0 + 232);
    v38 = *(v0 + 208);
    v39 = *(v0 + 88);
    v40 = *(v0 + 96);
    WABrowserAgentInterface.DescriptorToAgent.devices.getter();
    v41 = *(v40 + 24);
    swift_unownedRetainStrong();
    (*(v35 + 16))(v34, v41 + *(*v41 + 112), v36);

    v42 = (*(v37 + 136))(v36, v37);
    *(v0 + 424) = v42;
    (*(v35 + 8))(v34, v36);
    v43 = swift_task_alloc();
    *(v0 + 432) = v43;
    *v43 = v0;
    v43[1] = sub_1003B6BF0;
    v44 = *(v0 + 208);

    return sub_1002BCA00(v42, v129, v121);
  }

LABEL_13:
  v46 = *(v0 + 392);
  v47 = *(v0 + 160);
  v48 = *(v0 + 80);
  [*(v0 + 416) setDiscoveryMode:3];
  Logger.init(subsystem:category:)();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 392);
    v141 = *(v0 + 160);
    v53 = *(v0 + 128);
    v52 = *(v0 + 136);
    v54 = *(v0 + 80);
    v55 = swift_slowAlloc();
    v144[0] = swift_slowAlloc();
    *v55 = 136315394;
    v56 = sub_1003F39A8();
    v58 = sub_100002320(v56, v57, v144);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2080;
    v59 = sub_1003AE2C0();
    v61 = sub_100002320(v59, v60, v144);

    *(v55 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v49, v50, "#### Starting a browser session:%s with custom service:%s", v55, 0x16u);
    swift_arrayDestroy();

    v62 = *(v52 + 8);
    v63 = v141;
    v64 = v53;
  }

  else
  {
    v65 = *(v0 + 160);
    v66 = *(v0 + 128);
    v67 = *(v0 + 136);

    v62 = *(v67 + 8);
    v63 = v65;
    v64 = v66;
  }

  v109 = v62;
  v62(v63, v64);
  v142 = *(v0 + 416);
  v118 = *(v0 + 392);
  v125 = *(v0 + 384);
  v68 = *(v0 + 368);
  v137 = *(v0 + 376);
  v69 = *(v0 + 360);
  v130 = v69;
  v70 = *(v0 + 328);
  v71 = *(v0 + 320);
  v113 = *(v0 + 224);
  v114 = *(v0 + 336);
  v112 = *(v0 + 216);
  v116 = *(v0 + 472);
  v110 = *(v0 + 352);
  v111 = *(v0 + 96);
  v72 = *(v0 + 80);
  type metadata accessor for NANAgentHandler.SubscriberClient();
  v73 = *(v70 + 16);
  v73(v69, v68, v71);
  v122 = *(v72 + 64);
  v74 = swift_allocObject();
  swift_weakInit();
  v108 = v73;
  v73(v110, v68, v71);
  v75 = (*(v70 + 80) + 64) & ~*(v70 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = v113;
  *(v76 + 24) = v112;
  *(v76 + 32) = v74;
  *(v76 + 40) = v72;
  *(v76 + 48) = v116;
  *(v76 + 56) = v118;
  (*(v70 + 32))(v76 + v75, v110, v71);

  LOBYTE(v144[0]) = 0;
  v77 = sub_1003BDE24(v111, v130, v142, v137, v125, v122, sub_1003EA7F8, v76);
  v78 = *(v0 + 416);
  v138 = v77;
  v79 = *(v0 + 152);

  Logger.init(subsystem:category:)();
  v80 = v78;
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = *(v0 + 416);
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v84 = 138412290;
    *(v84 + 4) = v83;
    *v85 = v83;
    v86 = v83;
    _os_log_impl(&_mh_execute_header, v81, v82, "#### Started NAN Subscriber session:%@", v84, 0xCu);
    sub_100016290(v85, &qword_10058B780, &qword_100480AC0);
  }

  v87 = *(v0 + 400);
  v131 = *(v0 + 392);
  v134 = *(v0 + 416);
  v88 = v81;
  v89 = *(v0 + 376);
  v90 = *(v0 + 384);
  v115 = *(v0 + 408);
  v117 = *(v0 + 368);
  v91 = *(v0 + 344);
  v92 = *(v0 + 320);
  v123 = *(v0 + 224);
  v126 = *(v0 + 328);
  v119 = *(v0 + 216);
  v93 = *(v0 + 152);
  v94 = *(v0 + 128);
  v95 = *(v0 + 136);
  v96 = *(v0 + 96);

  v109(v93, v94);
  sub_1003AE988(v89, v90, v87, v115, 0);
  v108(v91, v117, v92);
  *(v0 + 64) = v138;
  swift_beginAccess();
  type metadata accessor for NANAgentHandler.Client();
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
  type metadata accessor for Dictionary();
  v97 = v138;
  Dictionary.subscript.setter();
  swift_endAccess();

  (*(v126 + 8))(v117, v92);
  v99 = *(v0 + 360);
  v98 = *(v0 + 368);
  v101 = *(v0 + 344);
  v100 = *(v0 + 352);
  v102 = *(v0 + 312);
  v104 = *(v0 + 280);
  v103 = *(v0 + 288);
  v105 = *(v0 + 256);
  v106 = *(v0 + 208);
  v120 = *(v0 + 200);
  v124 = *(v0 + 176);
  v127 = *(v0 + 168);
  v132 = *(v0 + 160);
  v135 = *(v0 + 152);
  v139 = *(v0 + 144);
  v143 = *(v0 + 120);
  **(v0 + 72) = 0;

  v107 = *(v0 + 8);

  return v107();
}

uint64_t sub_1003B6BF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  v7 = v3[53];
  v8 = v3[26];
  v9 = v3[24];
  v10 = v3[23];
  v13 = *(v9 + 8);
  v11 = v9 + 8;
  v12 = v13;
  if (v1)
  {
    v12(v8, v10);

    v14 = sub_1003B7CF8;
  }

  else
  {
    v4[57] = v12;
    v4[58] = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v10);

    v14 = sub_1003B6DA4;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_1003B6DA4()
{
  v185 = v0;
  v1 = *(v0 + 440);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 184);
    v5 = *(v0 + 88);
    WABrowserAgentInterface.DescriptorToAgent.devices.getter();
    v6 = (*(v3 + 88))(v2, v4);
    v7 = *(v0 + 184);
    if (v6 == enum case for WADevicesAgentInterface.Devices.selected(_:))
    {
      v8 = *(v0 + 440);
      v9 = *(v0 + 448);
      v10 = *(v0 + 200);
      (*(*(v0 + 192) + 96))(v10, v7);
      v11 = sub_1003AC920(*v10);

      v12 = sub_100475D3C(v11);

      v14 = sub_100475D3C(v13);

      LOBYTE(v8) = sub_1003E111C(v12, v14);

      if ((v8 & 1) == 0)
      {
        v15 = *(v0 + 440);
        v16 = *(v0 + 168);
        v17 = *(v0 + 80);

        Logger.init(subsystem:category:)();

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v21 = *(v0 + 376);
          v20 = *(v0 + 384);
          v22 = *(v0 + 168);
          v23 = *(v0 + 128);
          v24 = *(v0 + 136);
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v184[0] = v26;
          *v25 = 136315138;
          *(v25 + 4) = sub_100002320(v21, v20, v184);
          _os_log_impl(&_mh_execute_header, v18, v19, "#### BrowserClient:%s Invalid Paired Devices", v25, 0xCu);
          sub_100002A00(v26);

          (*(v24 + 8))(v22, v23);
          goto LABEL_38;
        }

LABEL_37:
        v121 = *(v0 + 168);
        v122 = *(v0 + 128);
        v123 = *(v0 + 136);

        (*(v123 + 8))(v121, v122);
LABEL_38:
        v124 = enum case for WAError.ErrorCode.deviceInvalid(_:);
        if (*(*(v0 + 96) + 16))
        {
          v126 = *(v0 + 112);
          v125 = *(v0 + 120);
          v127 = *(v0 + 104);
          v128 = *(v126 + 104);
          v129 = enum case for WAError.ErrorCode.deviceInvalid(_:);
          v128(v125);

          v130 = WAError.ErrorCode.rawValue.getter();
          result = (*(v126 + 8))(v125, v127);
          if (v130 < 0xFFFFFFFF80000000)
          {
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          if (v130 > 0x7FFFFFFF)
          {
LABEL_57:
            __break(1u);
            return result;
          }

          sub_1003F978C(*(v0 + 80), v130);

          v131 = *(v0 + 112);
          v124 = v129;
        }

        else
        {
          v131 = *(v0 + 112);
          v128 = *(v131 + 104);
        }

        v132 = *(v0 + 416);
        v133 = *(v0 + 392);
        v181 = *(v0 + 368);
        v135 = *(v0 + 320);
        v134 = *(v0 + 328);
        v136 = *(v0 + 120);
        v137 = *(v0 + 104);
        (v128)(v136, v124, v137);
        v85 = WAError.ErrorCode.rawValue.getter();

        (*(v131 + 8))(v136, v137);
        result = (*(v134 + 8))(v181, v135);
        if (v85 >= 0xFFFFFFFF80000000)
        {
          if (v85 <= 0x7FFFFFFF)
          {
            goto LABEL_45;
          }

          goto LABEL_55;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      v39 = *(v0 + 464);
      (*(v0 + 456))(*(v0 + 200), v7);
      v9 = *(v0 + 448);
    }

    v178 = v9;
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100476378(_swiftEmptyArrayStorage);
    }

    v40 = *(v0 + 416);
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    sub_100388B0C();
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v40 setAllowedDeviceIDs:isa];

    v42 = *(v1 + 16);
    if (v42)
    {
      v43 = (*(v0 + 440) + 32);
      do
      {
        while (1)
        {
          v44 = *v43++;
          v45 = [*(v0 + 416) allowedDeviceIDs];
          if (v45)
          {
            break;
          }

          [*(v0 + 416) setAllowedDeviceIDs:0];
          if (!--v42)
          {
            goto LABEL_18;
          }
        }

        v46 = v45;
        v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v184[0] = v47;
        v48.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        sub_10046F988(&v183, v48.super.super.isa);

        if (v184[0])
        {
          v49.super.isa = Set._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v49.super.isa = 0;
        }

        [*(v0 + 416) setAllowedDeviceIDs:v49.super.isa];

        --v42;
      }

      while (v42);
    }

LABEL_18:
    v50 = *(v0 + 440);

    v51 = *(v0 + 392);
    v52 = *(v0 + 160);
    v53 = *(v0 + 80);
    [*(v0 + 416) setDiscoveryMode:2];
    Logger.init(subsystem:category:)();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 392);
      v173 = *(v0 + 160);
      v58 = *(v0 + 128);
      v57 = *(v0 + 136);
      v59 = *(v0 + 80);
      v60 = swift_slowAlloc();
      v184[0] = swift_slowAlloc();
      *v60 = 136315394;
      v61 = sub_1003F39A8();
      v63 = sub_100002320(v61, v62, v184);

      *(v60 + 4) = v63;
      *(v60 + 12) = 2080;
      v64 = sub_1003AE2C0();
      v66 = sub_100002320(v64, v65, v184);

      *(v60 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "#### Starting a browser session:%s with custom service:%s", v60, 0x16u);
      swift_arrayDestroy();

      v149 = *(v57 + 8);
      v149(v173, v58);
    }

    else
    {
      v67 = *(v0 + 160);
      v68 = *(v0 + 128);
      v69 = *(v0 + 136);

      v149 = *(v69 + 8);
      v149(v67, v68);
    }

    v174 = *(v0 + 416);
    v157 = *(v0 + 392);
    v70 = *(v0 + 368);
    v170 = *(v0 + 376);
    v71 = *(v0 + 360);
    v162 = *(v0 + 384);
    v165 = v71;
    v72 = *(v0 + 328);
    v73 = *(v0 + 320);
    v153 = *(v0 + 224);
    v154 = *(v0 + 336);
    v152 = *(v0 + 216);
    v155 = *(v0 + 472);
    v150 = *(v0 + 352);
    v151 = *(v0 + 96);
    v74 = *(v0 + 80);
    type metadata accessor for NANAgentHandler.SubscriberClient();
    v75 = *(v72 + 16);
    v75(v71, v70, v73);
    v159 = *(v74 + 64);
    v76 = swift_allocObject();
    swift_weakInit();
    v148 = v75;
    v75(v150, v70, v73);
    v77 = (*(v72 + 80) + 64) & ~*(v72 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = v153;
    *(v78 + 24) = v152;
    *(v78 + 32) = v76;
    *(v78 + 40) = v74;
    *(v78 + 48) = v155;
    *(v78 + 56) = v157;
    (*(v72 + 32))(v78 + v77, v150, v73);

    LOBYTE(v184[0]) = 0;
    v79 = sub_1003BDE24(v151, v165, v174, v170, v162, v159, sub_1003EA7F8, v78);
    v80 = *(v0 + 416);
    if (!v178)
    {
      v176 = v79;
      v98 = *(v0 + 152);

      Logger.init(subsystem:category:)();
      v99 = v80;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = *(v0 + 416);
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v103 = 138412290;
        *(v103 + 4) = v102;
        *v104 = v102;
        v105 = v102;
        _os_log_impl(&_mh_execute_header, v100, v101, "#### Started NAN Subscriber session:%@", v103, 0xCu);
        sub_100016290(v104, &qword_10058B780, &qword_100480AC0);
      }

      v106 = *(v0 + 400);
      v168 = *(v0 + 392);
      v171 = *(v0 + 416);
      v107 = v100;
      v108 = *(v0 + 376);
      v109 = *(v0 + 384);
      v156 = *(v0 + 408);
      v158 = *(v0 + 368);
      v110 = *(v0 + 344);
      v111 = *(v0 + 320);
      v163 = *(v0 + 224);
      v166 = *(v0 + 328);
      v160 = *(v0 + 216);
      v85 = *(v0 + 152);
      v112 = *(v0 + 128);
      v113 = *(v0 + 136);
      v114 = *(v0 + 96);

      v149(v85, v112);
      sub_1003AE988(v108, v109, v106, v156, 0);
      v148(v110, v158, v111);
      *(v0 + 64) = v176;
      swift_beginAccess();
      type metadata accessor for NANAgentHandler.Client();
      sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
      type metadata accessor for Dictionary();
      v115 = v176;
      Dictionary.subscript.setter();
      swift_endAccess();

      (*(v166 + 8))(v158, v111);
      LODWORD(v85) = 0;
      goto LABEL_45;
    }

    v81 = *(v0 + 392);
    v82 = *(v0 + 328);
    v175 = *(v0 + 320);
    v179 = *(v0 + 368);
    v83 = *(v0 + 112);
    v30 = *(v0 + 120);
    v84 = *(v0 + 104);

    (*(v83 + 104))(v30, enum case for WAError.ErrorCode.error(_:), v84);
    v85 = WAError.ErrorCode.rawValue.getter();

    (*(v83 + 8))(v30, v84);
    result = (*(v82 + 8))(v179, v175);
    if (v85 < 0xFFFFFFFF80000000)
    {
      goto LABEL_51;
    }

    if (v85 <= 0x7FFFFFFF)
    {
      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {
    v27 = *(v0 + 176);
    v28 = *(v0 + 80);
    v29 = *(v0 + 440);

    Logger.init(subsystem:category:)();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = *(v0 + 376);
      v32 = *(v0 + 384);
      v34 = *(v0 + 176);
      v35 = *(v0 + 128);
      v36 = *(v0 + 136);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v184[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100002320(v33, v32, v184);
      _os_log_impl(&_mh_execute_header, v30, v31, "#### BrowserClient:%s has no Paired Devices", v37, 0xCu);
      sub_100002A00(v38);

      (*(v36 + 8))(v34, v35);
      goto LABEL_26;
    }
  }

  v87 = *(v0 + 176);
  v88 = *(v0 + 128);
  v89 = *(v0 + 136);

  (*(v89 + 8))(v87, v88);
LABEL_26:
  v90 = enum case for WAError.ErrorCode.noPairedDevices(_:);
  if (*(*(v0 + 96) + 16))
  {
    v92 = *(v0 + 112);
    v91 = *(v0 + 120);
    v93 = *(v0 + 104);
    v94 = *(v92 + 104);
    v95 = enum case for WAError.ErrorCode.noPairedDevices(_:);
    v94(v91);

    v96 = WAError.ErrorCode.rawValue.getter();
    result = (*(v92 + 8))(v91, v93);
    if (v96 < 0xFFFFFFFF80000000)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v96 > 0x7FFFFFFF)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    sub_1003F978C(*(v0 + 80), v96);

    v97 = *(v0 + 112);
    v90 = v95;
  }

  else
  {
    v97 = *(v0 + 112);
    v94 = *(v97 + 104);
  }

  v116 = *(v0 + 416);
  v117 = *(v0 + 392);
  v180 = *(v0 + 368);
  v119 = *(v0 + 320);
  v118 = *(v0 + 328);
  v18 = *(v0 + 120);
  v120 = *(v0 + 104);
  (v94)(v18, v90, v120);
  v85 = WAError.ErrorCode.rawValue.getter();

  (*(v97 + 8))(v18, v120);
  result = (*(v118 + 8))(v180, v119);
  if (v85 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v85 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_45:
  v139 = *(v0 + 360);
  v138 = *(v0 + 368);
  v141 = *(v0 + 344);
  v140 = *(v0 + 352);
  v142 = *(v0 + 312);
  v144 = *(v0 + 280);
  v143 = *(v0 + 288);
  v145 = *(v0 + 256);
  v146 = *(v0 + 208);
  v161 = *(v0 + 200);
  v164 = *(v0 + 176);
  v167 = *(v0 + 168);
  v169 = *(v0 + 160);
  v172 = *(v0 + 152);
  v177 = *(v0 + 144);
  v182 = *(v0 + 120);
  **(v0 + 72) = v85;

  v147 = *(v0 + 8);

  return v147();
}

uint64_t sub_1003B7CF8()
{
  v53 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  Logger.init(subsystem:category:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100002320(v6, v5, &v52);
    _os_log_impl(&_mh_execute_header, v3, v4, "#### BrowserClient:%s failed to get Paired Devices", v10, 0xCu);
    sub_100002A00(v11);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 128);

    (*(v13 + 8))(v12, v14);
  }

  v15 = enum case for WAError.ErrorCode.noPairedDevices(_:);
  if (*(*(v0 + 96) + 16))
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    v19 = enum case for WAError.ErrorCode.noPairedDevices(_:);
    v20 = *(v16 + 104);
    v20(v17);

    v21 = WAError.ErrorCode.rawValue.getter();
    result = (*(v16 + 8))(v17, v18);
    if (v21 < 0xFFFFFFFF80000000)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v21 > 0x7FFFFFFF)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    sub_1003F978C(*(v0 + 80), v21);

    v23 = *(v0 + 112);
    v15 = v19;
    v24 = v20;
  }

  else
  {
    v23 = *(v0 + 112);
    v24 = *(v23 + 104);
  }

  v25 = *(v0 + 448);
  v26 = *(v0 + 416);
  v27 = *(v0 + 392);
  v28 = *(v0 + 320);
  v29 = *(v0 + 328);
  v48 = v28;
  v50 = *(v0 + 368);
  v30 = *(v0 + 120);
  v31 = *(v0 + 104);
  v24(v30, v15, v31);
  v32 = WAError.ErrorCode.rawValue.getter();

  (*(v23 + 8))(v30, v31);
  result = (*(v29 + 8))(v50, v48);
  if (v32 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v32 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v34 = *(v0 + 360);
  v33 = *(v0 + 368);
  v36 = *(v0 + 344);
  v35 = *(v0 + 352);
  v37 = *(v0 + 312);
  v38 = *(v0 + 280);
  v39 = *(v0 + 288);
  v40 = *(v0 + 256);
  v41 = *(v0 + 208);
  v43 = *(v0 + 200);
  v44 = *(v0 + 176);
  v45 = *(v0 + 168);
  v46 = *(v0 + 160);
  v47 = *(v0 + 152);
  v49 = *(v0 + 144);
  v51 = *(v0 + 120);
  **(v0 + 72) = v32;

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1003B80D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a8;
  v49 = a6;
  v45 = a4;
  v46 = a7;
  v44 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v47 = v14;
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for sessionStatus(0) - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v18 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v20 = &v39 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v41 = a9;
    v42 = result;
    v22 = type metadata accessor for TaskPriority();
    v23 = *(*(v22 - 8) + 56);
    v43 = v20;
    v23(v20, 1, 1, v22);
    v24 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1003E8CDC(v44, v24, type metadata accessor for sessionStatus);
    v25 = *(v12 + 16);
    v40 = v15;
    v25(v15, v46, v11);
    v26 = (*(v16 + 80) + 48) & ~*(v16 + 80);
    LODWORD(v46) = a5;
    v27 = (v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
    v30 = *(v12 + 80);
    v44 = v11;
    v31 = v49;
    v32 = (v30 + v29 + 8) & ~v30;
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    v34 = v41;
    *(v33 + 4) = v48;
    *(v33 + 5) = v34;
    sub_100046A08(v24, &v33[v26], type metadata accessor for sessionStatus);
    *&v33[v27] = v42;
    *&v33[v28] = a1;
    v35 = v40;
    v36 = &v33[v39];
    v37 = v44;
    *v36 = v45;
    v36[8] = v46 & 1;
    *&v33[v29] = v31;
    (*(v12 + 32))(&v33[v32], v35, v37);
    v38 = a1;

    sub_1003ACB3C(0, 0, v43, &unk_1004B2E80, v33);
  }

  return result;
}

uint64_t sub_1003B844C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 504) = v49;
  *(v8 + 512) = v50;
  *(v8 + 1208) = a8;
  *(v8 + 488) = a6;
  *(v8 + 496) = a7;
  *(v8 + 472) = a4;
  *(v8 + 480) = a5;
  v9 = *a5;
  v10 = type metadata accessor for WAError.ErrorCode();
  *(v8 + 520) = v10;
  v11 = *(v10 - 8);
  *(v8 + 528) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  v13 = *(*(sub_10005DC58(&qword_1005994A0, &qword_1004B2E08) - 8) + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  v14 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  v15 = *(*(sub_10005DC58(qword_100597590, &qword_1004B1878) - 8) + 64) + 15;
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v16 = type metadata accessor for WABrowserAgentInterface.AgentToEndpoint();
  *(v8 + 616) = v16;
  v17 = *(v16 - 8);
  *(v8 + 624) = v17;
  *(v8 + 632) = *(v17 + 64);
  *(v8 + 640) = swift_task_alloc();
  v18 = type metadata accessor for WAPairedDevice();
  *(v8 + 648) = v18;
  v19 = *(v18 - 8);
  *(v8 + 656) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  v21 = type metadata accessor for WASubscribableService();
  *(v8 + 680) = v21;
  v22 = *(v21 - 8);
  *(v8 + 688) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  v24 = type metadata accessor for NWEndpoint();
  *(v8 + 712) = v24;
  v25 = *(v24 - 8);
  *(v8 + 720) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  v27 = type metadata accessor for BrowseEndpoints(0);
  *(v8 + 752) = v27;
  v28 = *(v27 - 8);
  *(v8 + 760) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 768) = swift_task_alloc();
  v30 = type metadata accessor for String.Encoding();
  *(v8 + 776) = v30;
  v31 = *(v30 - 8);
  *(v8 + 784) = v31;
  v32 = *(v31 + 64) + 15;
  *(v8 + 792) = swift_task_alloc();
  v33 = *(*(sub_10005DC58(&qword_100594A30, &qword_1004B2E00) - 8) + 64) + 15;
  *(v8 + 800) = swift_task_alloc();
  v34 = type metadata accessor for Logger();
  *(v8 + 808) = v34;
  v35 = *(v34 - 8);
  *(v8 + 816) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();
  *(v8 + 840) = swift_task_alloc();
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  *(v8 + 904) = swift_task_alloc();
  v37 = type metadata accessor for UUID();
  *(v8 + 912) = v37;
  v38 = *(v37 - 8);
  *(v8 + 920) = v38;
  v39 = *(v38 + 64) + 15;
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = swift_task_alloc();
  *(v8 + 944) = swift_task_alloc();
  *(v8 + 952) = swift_task_alloc();
  *(v8 + 960) = swift_task_alloc();
  v40 = *(*(sub_10005DC58(&qword_1005989E8, &qword_1004B28E8) - 8) + 64) + 15;
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  *(v8 + 984) = swift_task_alloc();
  v41 = *(*(sub_10005DC58(&qword_1005989F0, &qword_1004B28F0) - 8) + 64) + 15;
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  *(v8 + 1008) = swift_task_alloc();
  v42 = *(v9 + 88);
  *(v8 + 1016) = v42;
  *(v8 + 1024) = *(v42 + 8);
  *(v8 + 1032) = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 1040) = AssociatedTypeWitness;
  v44 = *(AssociatedTypeWitness - 8);
  *(v8 + 1048) = v44;
  v45 = *(v44 + 64) + 15;
  *(v8 + 1056) = swift_task_alloc();
  v46 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64) + 15;
  *(v8 + 1064) = swift_task_alloc();

  return _swift_task_switch(sub_1003B8BB4, 0, 0);
}

uint64_t sub_1003B8BB4()
{
  v435 = v0;
  v1 = *(v0 + 1064);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  sub_1003E8CDC(*(v0 + 472), v1, type metadata accessor for sessionStatus);
  v433 = v0;
  if ((*(v2 + 48))(v1, 1, v3) != 1)
  {
    v48 = *(v0 + 552);
    v49 = *(v0 + 544);
    v50 = *(v0 + 528);
    v51 = *(v0 + 520);
    (*(v50 + 32))(v48, *(v0 + 1064), v51);
    v52 = *(v50 + 16);
    v52(v49, v48, v51);
    v53 = (*(v50 + 88))(v49, v51);
    if (v53 == enum case for WAError.ErrorCode.error(_:))
    {
      v54 = *(v0 + 488);
      if (!v54)
      {
        (*(*(v0 + 528) + 8))(*(v0 + 552), *(v0 + 520));
        goto LABEL_137;
      }

      v55 = *(v0 + 504);
      v392 = v54;
      v56 = [v392 signature];
      v57 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
      swift_beginAccess();
      v58 = *(v55 + v57);
      if (*(v58 + 16) && (v59 = sub_100085268(v56), (v60 & 1) != 0))
      {
        v61 = *(v0 + 864);
        v62 = *(v0 + 760);
        v63 = *(v0 + 752);
        v64 = *(v0 + 600);
        sub_1003E8CDC(*(v58 + 56) + *(v62 + 72) * v59, v64, type metadata accessor for BrowseEndpoints);
        (*(v62 + 56))(v64, 0, 1, v63);
        sub_100016290(v64, qword_100597590, &qword_1004B1878);
        Logger.init(subsystem:category:)();
        v65 = v392;
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 134217984;
          *(v68 + 4) = [v65 signature];

          _os_log_impl(&_mh_execute_header, v66, v67, "#### browseEndpoints remove for :%ld", v68, 0xCu);
        }

        else
        {
        }

        v178 = *(v0 + 608);
        (*(*(v0 + 816) + 8))(*(v0 + 864), *(v0 + 808));
        v179 = [v65 signature];
        swift_beginAccess();
        sub_1003AD83C(v179, v178);
        sub_100016290(v178, qword_100597590, &qword_1004B1878);
        swift_endAccess();
      }

      else
      {
        v120 = *(v0 + 600);
        (*(*(v0 + 760) + 56))(v120, 1, 1, *(v0 + 752));
        sub_100016290(v120, qword_100597590, &qword_1004B1878);
      }

      v396 = *(v0 + 760);
      v180 = *(v55 + v57);
      v183 = *(v180 + 64);
      v182 = v180 + 64;
      v181 = v183;
      v184 = -1;
      v185 = -1 << *(*(v55 + v57) + 32);
      if (-v185 < 64)
      {
        v184 = ~(-1 << -v185);
      }

      v116 = v184 & v181;
      v186 = (63 - v185) >> 6;
      v413 = (*(v0 + 720) + 16);
      v420 = *(v0 + 720);
      v401 = *(v55 + v57);

      v117 = 0;
      for (i = _swiftEmptyArrayStorage; ; (*(v420 + 32))(i + ((*(v420 + 80) + 32) & ~*(v420 + 80)) + *(v420 + 72) * v203, v204, v205))
      {
        v17 = &unk_1004B2E10;
        v428 = i;
        if (v116)
        {
          v188 = v117;
          goto LABEL_84;
        }

        if (v186 <= (v117 + 1))
        {
          v189 = v117 + 1;
        }

        else
        {
          v189 = v186;
        }

        v190 = v189 - 1;
        do
        {
          v188 = v117 + 1;
          if (__OFADD__(v117, 1))
          {
            __break(1u);
            goto LABEL_97;
          }

          if (v188 >= v186)
          {
            v206 = *(v0 + 560);
            v207 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
            (*(*(v207 - 8) + 56))(v206, 1, 1, v207);
            v116 = 0;
            v117 = v190;
            goto LABEL_85;
          }

          v116 = *(v182 + 8 * v188);
          ++v117;
        }

        while (!v116);
        v117 = v188;
LABEL_84:
        v191 = *(v0 + 768);
        v192 = *(v433 + 560);
        v193 = __clz(__rbit64(v116));
        v116 &= v116 - 1;
        v194 = v193 | (v188 << 6);
        v195 = *(*(v401 + 48) + 8 * v194);
        sub_1003E8CDC(*(v401 + 56) + *(v396 + 72) * v194, v191, type metadata accessor for BrowseEndpoints);
        v196 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
        v197 = *(v196 + 48);
        *v192 = v195;
        sub_100046A08(v191, v192 + v197, type metadata accessor for BrowseEndpoints);
        v0 = v433;
        (*(*(v196 - 8) + 56))(v192, 0, 1, v196);
LABEL_85:
        v198 = *(v0 + 568);
        sub_10001CEA8(*(v0 + 560), v198, &qword_1005994A0, &qword_1004B2E08);
        v199 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
        if ((*(*(v199 - 8) + 48))(v198, 1, v199) == 1)
        {
          v208 = *(v0 + 480);

          v209 = *(v0 + 552);
          v210 = *(v0 + 528);
          v211 = *(v0 + 520);
          if (*(v208 + 16))
          {
            v212 = *(v0 + 496);

            sub_1003F90B4(v212, v428);

            (*(v210 + 8))(v209, v211);
          }

          else
          {

            (*(v210 + 8))(v209, v211);
          }

          goto LABEL_137;
        }

        v200 = *(v0 + 568);
        v201 = *(v199 + 48);
        (*v413)(*(v0 + 728), v200 + v201, *(v0 + 712));
        sub_1003E8ED4(v200 + v201, type metadata accessor for BrowseEndpoints);
        i = v428;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          i = sub_1003A7D74(0, v428[2] + 1, 1, v428);
        }

        v203 = i[2];
        v202 = i[3];
        if (v203 >= v202 >> 1)
        {
          i = sub_1003A7D74(v202 > 1, v203 + 1, 1, i);
        }

        v204 = *(v0 + 728);
        v205 = *(v0 + 712);
        i[2] = v203 + 1;
      }
    }

    if (v53 != enum case for WAError.ErrorCode.subscriberTimeout(_:))
    {
      v91 = *(v0 + 848);
      v92 = *(v0 + 552);
      v93 = *(v0 + 536);
      v94 = *(v0 + 520);
      Logger.init(subsystem:category:)();
      v52(v93, v92, v94);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      v97 = os_log_type_enabled(v95, v96);
      v98 = *(v0 + 536);
      v99 = *(v0 + 528);
      v100 = *(v0 + 520);
      if (v97)
      {
        v101 = swift_slowAlloc();
        *v101 = 134217984;
        v102 = WAError.ErrorCode.rawValue.getter();
        v103 = *(v99 + 8);
        v103(v98, v100);
        *(v101 + 4) = v102;
        _os_log_impl(&_mh_execute_header, v95, v96, "#### error %ld", v101, 0xCu);
      }

      else
      {
        v103 = *(v99 + 8);
        v103(*(v0 + 536), *(v0 + 520));
      }

      v125 = *(v0 + 848);
      v126 = *(v0 + 816);
      v127 = *(v0 + 808);
      v128 = *(v0 + 496);
      v129 = *(v0 + 480);

      (*(v126 + 8))(v125, v127);
      sub_1003AF9F0(*(v128 + 72), *(v128 + 80), *(v128 + 48), *(v128 + 56), 0);
      if (*(v129 + 16))
      {
        v130 = *(v0 + 552);

        v131 = WAError.ErrorCode.rawValue.getter();
        if (v131 < 0xFFFFFFFF80000000)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v131 > 0x7FFFFFFF)
        {
          goto LABEL_145;
        }

        sub_1003F978C(*(v0 + 496), v131);
      }

      v425 = v103;
      v132 = *(v0 + 480);
      swift_beginAccess();
      v133 = *(v132 + 32);
      if (*(v133 + 16))
      {
        v134 = *(v0 + 512);
        v135 = *(v132 + 32);

        v136 = sub_10002A440(v134);
        if (v137)
        {
          v138 = *(*(v133 + 56) + 8 * v136);

          v139 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
          swift_beginAccess();
          v140 = *(v138 + v139);
          *(v138 + v139) = &_swiftEmptyDictionarySingleton;
        }

        else
        {
        }
      }

      v159 = *(v0 + 1032);
      v160 = *(v0 + 1016);
      v161 = *(v0 + 912);
      v412 = *(v0 + 552);
      v418 = *(v0 + 544);
      v162 = *(v0 + 528);
      v163 = *(v0 + 520);
      v164 = *(v0 + 512);
      v165 = *(v0 + 480);
      swift_beginAccess();
      sub_1003AD75C(v164, sub_10047710C, sub_10046D8EC);
      swift_endAccess();

      swift_beginAccess();
      type metadata accessor for NANAgentHandler.Client();
      sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();
      swift_endAccess();

      v425(v412, v163);
      v425(v418, v163);
      goto LABEL_137;
    }

    v69 = *(v0 + 856);
    Logger.init(subsystem:category:)();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "#### subcriberTimeout", v72, 2u);
    }

    v73 = *(v0 + 856);
    v74 = *(v0 + 816);
    v75 = *(v0 + 808);
    v76 = *(v0 + 496);
    v77 = *(v0 + 480);

    (*(v74 + 8))(v73, v75);
    sub_1003AF9F0(*(v76 + 72), *(v76 + 80), *(v76 + 48), *(v76 + 56), 0);
    if (*(v77 + 16))
    {
      v78 = *(v0 + 552);

      v79 = WAError.ErrorCode.rawValue.getter();
      if (v79 < 0xFFFFFFFF80000000)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      if (v79 > 0x7FFFFFFF)
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
      }

      sub_1003F978C(*(v0 + 496), v79);
    }

    v80 = *(v0 + 480);
    swift_beginAccess();
    v81 = *(v80 + 32);
    if (*(v81 + 16))
    {
      v82 = *(v0 + 512);
      v83 = *(v80 + 32);

      v84 = sub_10002A440(v82);
      if (v85)
      {
        v86 = *(*(v81 + 56) + 8 * v84);

        v87 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
        swift_beginAccess();
        v88 = *(v86 + v87);
        *(v86 + v87) = &_swiftEmptyDictionarySingleton;
      }

      else
      {
      }
    }

    v152 = *(v0 + 1032);
    v153 = *(v0 + 1016);
    v154 = *(v0 + 912);
    v427 = *(v0 + 552);
    v155 = *(v0 + 528);
    v156 = *(v0 + 520);
    v157 = *(v0 + 512);
    v158 = *(v0 + 480);
    swift_beginAccess();
    sub_1003AD75C(v157, sub_10047710C, sub_10046D8EC);
    swift_endAccess();

    swift_beginAccess();
    type metadata accessor for NANAgentHandler.Client();
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    (*(v155 + 8))(v427, v156);
    goto LABEL_137;
  }

  v4 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1032);
  v8 = *(v0 + 1024);
  v406 = *(v0 + 1008);
  v410 = *(v0 + 984);
  v9 = *(v0 + 688);
  v10 = *(v0 + 656);
  v11 = *(v0 + 648);
  v417 = *(v0 + 488);
  v423 = *(v0 + 680);
  v12 = *(*(v0 + 480) + 24);
  swift_unownedRetainStrong();
  (*(v5 + 16))(v4, v12 + *(*v12 + 112), v6);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 136))(v6, AssociatedConformanceWitness);
  *(v0 + 1072) = v14;
  (*(v5 + 8))(v4, v6);
  v15 = *(v10 + 56);
  *(v0 + 1080) = v15;
  *(v0 + 1088) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v406, 1, 1, v11);
  v16 = *(v9 + 56);
  *(v0 + 1096) = v16;
  *(v0 + 1104) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v410, 1, 1, v423);
  if (!v417)
  {
    v89 = *(v0 + 1008);
    v90 = *(v0 + 984);

    sub_100016290(v90, &qword_1005989E8, &qword_1004B28E8);
    sub_100016290(v89, &qword_1005989F0, &qword_1004B28F0);
    goto LABEL_137;
  }

  v17 = *(v0 + 488);
  v18 = [v17 pairedUUID];
  if (v18)
  {
    v19 = *(v0 + 960);
    v20 = *(v0 + 952);
    v21 = *(v0 + 944);
    v22 = *(v0 + 920);
    v23 = *(v0 + 912);
    v24 = *(v0 + 904);
    v25 = v18;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v22 + 32))(v19, v20, v23);
    Logger.init(subsystem:category:)();
    v26 = *(v22 + 16);
    *(v0 + 1112) = v26;
    *(v0 + 1120) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v21, v19, v23);
    v27 = v17;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 944);
    v32 = *(v0 + 920);
    v33 = *(v0 + 912);
    if (v30)
    {
      v424 = v28;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v434[0] = swift_slowAlloc();
      *v34 = 138412802;
      v36 = [v27 publisherAddress];
      *(v34 + 4) = v36;
      v411 = v35;
      *v35 = v36;
      *(v34 + 12) = 2080;
      sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v27;
      v40 = v39;
      v41 = *(v32 + 8);
      v41(v31, v33);
      v42 = sub_100002320(v37, v40, v434);
      v27 = v38;

      *(v34 + 14) = v42;
      *(v34 + 22) = 2080;
      v43 = [v38 pairedDeviceName];
      if (v43)
      {
        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0;
      }

      v0 = v433;
      v166 = *(v433 + 816);
      v400 = *(v433 + 808);
      v407 = *(v433 + 904);
      *(v433 + 424) = v45;
      *(v433 + 432) = v47;
      sub_10005DC58(&unk_100599FD0, &qword_100482530);
      v167 = String.init<A>(describing:)();
      v169 = sub_100002320(v167, v168, v434);

      *(v34 + 24) = v169;
      _os_log_impl(&_mh_execute_header, v424, v29, "#### paired peer: %@, UUID: %s, DeviceName: %s", v34, 0x20u);
      sub_100016290(v411, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      v124 = *(v166 + 8);
      v124(v407, v400);
    }

    else
    {
      v121 = *(v0 + 904);
      v122 = *(v0 + 816);
      v123 = *(v0 + 808);

      v41 = *(v32 + 8);
      v41(v31, v33);
      v124 = *(v122 + 8);
      v124(v121, v123);
    }

    *(v0 + 1136) = v41;
    *(v0 + 1128) = v124;
    v170 = [v27 pairedDeviceName];
    if (v170)
    {
      v171 = v170;
      v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v174 = v173;
    }

    else
    {
      v172 = 0;
      v174 = 0;
    }

    *(v0 + 1152) = v174;
    *(v0 + 1144) = v172;
    v175 = *(v0 + 496);
    *(v0 + 1160) = *(v175 + 72);
    *(v0 + 1168) = *(v175 + 80);
    v176 = *v14;
    *(v0 + 1176) = *(*v14 + 416);
    *(v0 + 1184) = (v176 + 416) & 0xFFFFFFFFFFFFLL | 0x6DFD000000000000;

    return _swift_task_switch(sub_1003BB2F4, v14, 0);
  }

  if (*(v0 + 1208))
  {
    v104 = [v17 serviceSpecificInfo];
    if (v104)
    {
      v105 = v104;
      v106 = WiFiAwarePublishServiceSpecificInfo.pairingSSI.getter();

      v107 = -1;
      v108 = -1 << *(v106 + 32);
      if (-v108 < 64)
      {
        v107 = ~(-1 << -v108);
      }

      v109 = v107 & *(v106 + 64);
      v110 = (63 - v108) >> 6;

      v111 = 0;
      if (v109)
      {
        while (1)
        {
          v112 = v111;
LABEL_35:
          v113 = (v112 << 10) | (16 * __clz(__rbit64(v109)));
          v114 = (*(v106 + 48) + v113);
          v115 = (*(v106 + 56) + v113);
          v116 = *v115;
          v117 = v115[1];
          if (*v114 == 0x4E676E6972696170 && v114[1] == 0xEB00000000656D61)
          {
            break;
          }

          v119 = v114[1];
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          v109 &= v109 - 1;

          sub_10000AB0C(v116, v117);

          sub_1000124C8(v116, v117);
          v111 = v112;
          if (!v109)
          {
            goto LABEL_32;
          }
        }

LABEL_97:
        v0 = v433;
        v213 = *(v433 + 792);

        sub_10000AB0C(v116, v117);

        static String.Encoding.utf8.getter();
        v419 = String.init(data:encoding:)();
        v177 = v214;
        sub_1000124C8(v116, v117);
      }

      else
      {
        while (1)
        {
LABEL_32:
          v112 = v111 + 1;
          if (__OFADD__(v111, 1))
          {
            goto LABEL_141;
          }

          if (v112 >= v110)
          {
            break;
          }

          v109 = *(v106 + 64 + 8 * v112);
          ++v111;
          if (v109)
          {
            goto LABEL_35;
          }
        }

        v419 = 0;
        v177 = 0;
      }
    }

    else
    {
      v419 = 0;
      v177 = 0;
    }

    v215 = *(v0 + 896);
    Logger.init(subsystem:category:)();
    v216 = v17;
    v217 = Logger.logObject.getter();
    v218 = static os_log_type_t.default.getter();

    v429 = v177;
    if (os_log_type_enabled(v217, v218))
    {
      v219 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      v434[0] = v220;
      *v219 = 136315138;
      v221 = [v216 serviceSpecificInfo];
      if (v221)
      {
        v222 = v221;
        v223 = WiFiAwarePublishServiceSpecificInfo.pairingSSI.getter();
      }

      else
      {
        v223 = 0;
      }

      v331 = *(v433 + 896);
      v332 = *(v433 + 816);
      v333 = *(v433 + 808);
      *(v433 + 464) = v223;
      sub_10005DC58(&unk_100595C60, &unk_1004AFD30);
      v334 = String.init<A>(describing:)();
      v336 = sub_100002320(v334, v335, v434);

      *(v219 + 4) = v336;
      _os_log_impl(&_mh_execute_header, v217, v218, "#### Unpaired Device. Fetch DeviceName from SSI: %s", v219, 0xCu);
      sub_100002A00(v220);

      v227 = *(v332 + 8);
      v227(v331, v333);
      v177 = v429;
      if (!v429)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v224 = *(v0 + 896);
      v225 = *(v0 + 816);
      v226 = *(v0 + 808);

      v227 = *(v225 + 8);
      v227(v224, v226);
      if (!v177)
      {
LABEL_134:
        v337 = *(v433 + 872);
        Logger.init(subsystem:category:)();
        v338 = Logger.logObject.getter();
        v339 = static os_log_type_t.default.getter();
        v340 = os_log_type_enabled(v338, v339);
        v341 = *(v433 + 1072);
        v342 = *(v433 + 1008);
        v431 = *(v433 + 984);
        v343 = *(v433 + 872);
        v344 = *(v433 + 816);
        v345 = *(v433 + 808);
        v346 = *(v433 + 488);
        if (v340)
        {
          v347 = swift_slowAlloc();
          *v347 = 0;
          _os_log_impl(&_mh_execute_header, v338, v339, "#### DeviceName unknown", v347, 2u);
        }

        v227(v343, v345);
        sub_100016290(v431, &qword_1005989E8, &qword_1004B28E8);
        sub_100016290(v342, &qword_1005989F0, &qword_1004B28F0);
        v0 = v433;
        goto LABEL_137;
      }
    }

    v0 = v433;
    v228 = *(v433 + 504);
    v229 = *(v433 + 488);
    v230 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
    swift_beginAccess();
    v231 = *(v228 + v230);
    v232 = v229;

    v234 = sub_1003E37EC(v233, v232);
    v236 = v235;
    v238 = v237;
    v239 = ~v237;

    if (v239)
    {
      v240 = *(v433 + 768);
      swift_beginAccess();
      sub_10046EB1C(v240, v234, v236);
      sub_1003E8ED4(v240, type metadata accessor for BrowseEndpoints);
      swift_endAccess();
      sub_100085170(v234, v236, v238);
    }

    v241 = *(v433 + 744);
    v242 = *(v433 + 720);
    v243 = *(v433 + 712);
    v244 = *(v433 + 488);
    v414 = v228;
    v245 = *(sub_10005DC58(qword_1005994E0, &qword_1004B2E90) + 80);
    *v241 = v419;
    v241[1] = v177;

    v246 = [v244 serviceName];
    v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v249 = v248;

    *(v433 + 376) = v247;
    *(v433 + 384) = v249;
    v241[2] = String.init<A>(_:)();
    v241[3] = v250;
    v241[4] = 0x6C61636F6CLL;
    v241[5] = 0xE500000000000000;
    NWInterface.init(_:)();
    (*(v242 + 104))(v241, enum case for NWEndpoint.service(_:), v243);
    *(v433 + 456) = [v244 signature];
    v251 = sub_1002AAFAC((v433 + 456), 8);
    v253 = v252;
    static WABrowserAgentInterface.browseResultSignatureKey.getter();
    sub_10000AB0C(v251, v253);
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    v384 = v251;
    v386 = v253;
    sub_1000124C8(v251, v253);

    v254 = *(v433 + 1096);
    v388 = *(v433 + 1104);
    v390 = *(v433 + 1080);
    v393 = *(v433 + 1088);
    v397 = *(v433 + 760);
    v255 = *(v433 + 752);
    v256 = *(v433 + 744);
    v257 = *(v433 + 720);
    v258 = *(v433 + 712);
    v259 = *(v433 + 680);
    v260 = *(v433 + 648);
    v261 = *(v433 + 608);
    v408 = v230;
    v262 = *(v433 + 488);
    v402 = [v262 signature];
    (*(v257 + 16))(v261, v256, v258);
    v254(v261 + v255[5], 1, 1, v259);
    v390(v261 + v255[6], 1, 1, v260);

    v263 = [v262 serviceName];
    v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v266 = v265;

    *(v433 + 392) = v264;
    *(v433 + 400) = v266;
    v267 = String.init<A>(_:)();
    v268 = (v261 + v255[7]);
    *v268 = v419;
    v268[1] = v429;
    v269 = (v261 + v255[8]);
    *v269 = v267;
    v269[1] = v270;
    (*(v397 + 56))(v261, 0, 1, v255);
    swift_beginAccess();
    sub_10033869C(v261, v402);
    swift_endAccess();
    v271 = *(v433 + 792);
    v272 = *(v433 + 784);
    v403 = *(v433 + 776);
    v273 = *(v433 + 744);
    v274 = *(v433 + 480);
    static WABrowserAgentInterface.browseResultIsPairedKey.getter();
    v275 = sub_10002D874(&off_1005730E8);
    v277 = v276;
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    sub_1000124C8(v275, v277);

    static WABrowserAgentInterface.browseResultDeviceNameKey.getter();
    static String.Encoding.utf8.getter();
    v278 = String.data(using:allowLossyConversion:)();
    v280 = v279;

    (*(v272 + 8))(v271, v403);
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    sub_100017554(v278, v280);

    v394 = v274;
    v281 = *(v274 + 16);
    if (v281)
    {
      v282 = *(v433 + 920);
      v283 = *(v433 + 912);
      v284 = *(v433 + 592);
      v285 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID;
      swift_beginAccess();
      (*(v282 + 16))(v284, v281 + v285, v283);
      v286 = 0;
    }

    else
    {
      v286 = 1;
    }

    v398 = *(v433 + 760);
    v287 = *(v433 + 744);
    v288 = *(v433 + 720);
    (*(*(v433 + 920) + 56))(*(v433 + 592), v286, 1, *(v433 + 912));
    NWEndpoint.preferredAgentIdentifier.setter();
    v289 = *(v414 + v408);
    v290 = v289 + 64;
    v291 = -1;
    v292 = -1 << *(v289 + 32);
    if (-v292 < 64)
    {
      v291 = ~(-1 << -v292);
    }

    v293 = v291 & *(v289 + 64);
    v294 = (63 - v292) >> 6;
    v415 = (v288 + 16);
    v421 = v288;
    v404 = v289;

    v295 = 0;
    v296 = _swiftEmptyArrayStorage;
    v297 = &qword_1005994A8;
    if (v293)
    {
      goto LABEL_110;
    }

LABEL_111:
    if (v294 <= v295 + 1)
    {
      v299 = v295 + 1;
    }

    else
    {
      v299 = v294;
    }

    v300 = v299 - 1;
    while (1)
    {
      v298 = v295 + 1;
      if (__OFADD__(v295, 1))
      {
        break;
      }

      if (v298 >= v294)
      {
        v319 = *(v0 + 576);
        v320 = sub_10005DC58(v297, &unk_1004B2E10);
        (*(*(v320 - 8) + 56))(v319, 1, 1, v320);
        v293 = 0;
        v295 = v300;
        goto LABEL_120;
      }

      v293 = *(v290 + 8 * v298);
      ++v295;
      if (v293)
      {
        v430 = v296;
        v295 = v298;
        while (2)
        {
          v301 = *(v0 + 768);
          v302 = *(v0 + 576);
          v303 = __clz(__rbit64(v293));
          v293 &= v293 - 1;
          v304 = v303 | (v298 << 6);
          v305 = *(*(v404 + 48) + 8 * v304);
          sub_1003E8CDC(*(v404 + 56) + *(v398 + 72) * v304, v301, type metadata accessor for BrowseEndpoints);
          v306 = v297;
          v307 = sub_10005DC58(v297, &unk_1004B2E10);
          v308 = *(v307 + 48);
          *v302 = v305;
          sub_100046A08(v301, v302 + v308, type metadata accessor for BrowseEndpoints);
          v309 = *(*(v307 - 8) + 56);
          v310 = v307;
          v297 = v306;
          v0 = v433;
          v309(v302, 0, 1, v310);
          v296 = v430;
LABEL_120:
          v311 = *(v0 + 584);
          sub_10001CEA8(*(v0 + 576), v311, &qword_1005994A0, &qword_1004B2E08);
          v312 = sub_10005DC58(v297, &unk_1004B2E10);
          if ((*(*(v312 - 8) + 48))(v311, 1, v312) != 1)
          {
            v313 = *(v0 + 584);
            v314 = *(v312 + 48);
            (*v415)(*(v0 + 736), v313 + v314, *(v0 + 712));
            sub_1003E8ED4(v313 + v314, type metadata accessor for BrowseEndpoints);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v296 = sub_1003A7D74(0, v296[2] + 1, 1, v296);
            }

            v316 = v296[2];
            v315 = v296[3];
            if (v316 >= v315 >> 1)
            {
              v296 = sub_1003A7D74(v315 > 1, v316 + 1, 1, v296);
            }

            v317 = *(v0 + 736);
            v318 = *(v0 + 712);
            v296[2] = v316 + 1;
            (*(v421 + 32))(v296 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v316, v317, v318);
            if (!v293)
            {
              goto LABEL_111;
            }

LABEL_110:
            v430 = v296;
            v298 = v295;
            continue;
          }

          break;
        }

        v321 = *(v0 + 1072);
        v322 = *(v0 + 1008);
        v323 = *(v0 + 984);
        v324 = *(v0 + 744);
        v325 = *(v0 + 720);
        v326 = *(v0 + 712);
        if (*(v394 + 16))
        {
          v426 = *(v0 + 1008);
          v328 = *(v0 + 488);
          v327 = *(v0 + 496);

          sub_1003F90B4(v327, v296);

          sub_1000124C8(v384, v386);

          (*(v325 + 8))(v324, v326);
          v151 = v323;
LABEL_130:
          sub_100016290(v151, &qword_1005989E8, &qword_1004B28E8);
          sub_100016290(v426, &qword_1005989F0, &qword_1004B28F0);
        }

        else
        {
          v329 = *(v0 + 488);
          v330 = *(v0 + 1072);

          sub_1000124C8(v384, v386);

          (*(v325 + 8))(v324, v326);
          sub_100016290(v323, &qword_1005989E8, &qword_1004B28E8);
          sub_100016290(v322, &qword_1005989F0, &qword_1004B28F0);
        }

        goto LABEL_137;
      }
    }

    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v141 = *(v0 + 888);
  Logger.init(subsystem:category:)();
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.default.getter();
  v144 = os_log_type_enabled(v142, v143);
  v145 = *(v0 + 1008);
  v146 = *(v0 + 984);
  v147 = *(v0 + 888);
  v148 = *(v0 + 816);
  v149 = *(v0 + 808);
  if (v144)
  {
    v150 = swift_slowAlloc();
    v426 = v145;
    *v150 = 0;
    _os_log_impl(&_mh_execute_header, v142, v143, "#### Unpaired Device. Dropping the result", v150, 2u);

    (*(v148 + 8))(v147, v149);
    v151 = v146;
    goto LABEL_130;
  }

  (*(v148 + 8))(v147, v149);
  sub_100016290(v146, &qword_1005989E8, &qword_1004B28E8);
  sub_100016290(v145, &qword_1005989F0, &qword_1004B28F0);
LABEL_137:
  v348 = *(v0 + 1064);
  v349 = *(v0 + 1056);
  v350 = *(v0 + 1008);
  v351 = *(v0 + 1000);
  v352 = *(v0 + 992);
  v353 = *(v0 + 984);
  v354 = *(v0 + 976);
  v355 = *(v0 + 968);
  v356 = *(v0 + 960);
  v357 = *(v433 + 952);
  v360 = *(v433 + 944);
  v361 = *(v433 + 936);
  v362 = *(v433 + 928);
  v363 = *(v433 + 904);
  v364 = *(v433 + 896);
  v365 = *(v433 + 888);
  v366 = *(v433 + 880);
  v367 = *(v433 + 872);
  v368 = *(v433 + 864);
  v369 = *(v433 + 856);
  v370 = *(v433 + 848);
  v371 = *(v433 + 840);
  v372 = *(v433 + 832);
  v373 = *(v433 + 824);
  v374 = *(v433 + 800);
  v375 = *(v433 + 792);
  v376 = *(v433 + 768);
  v377 = *(v433 + 744);
  v378 = *(v433 + 736);
  v379 = *(v433 + 728);
  v380 = *(v433 + 704);
  v381 = *(v433 + 696);
  v382 = *(v433 + 672);
  v383 = *(v433 + 664);
  v385 = *(v433 + 640);
  v387 = *(v433 + 608);
  v389 = *(v433 + 600);
  v391 = *(v433 + 592);
  v395 = *(v433 + 584);
  v399 = *(v433 + 576);
  v405 = *(v433 + 568);
  v409 = *(v433 + 560);
  v416 = *(v433 + 552);
  v422 = *(v433 + 544);
  v432 = *(v433 + 536);

  v358 = *(v433 + 8);

  return v358();
}