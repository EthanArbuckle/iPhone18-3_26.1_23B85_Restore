uint64_t sub_10018F614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = sub_1000BCFD0();

  if (a3 && (sub_1001A1CF8(a2, a3, v11) & 1) != 0)
  {

    return 1;
  }

  if (a5)
  {
    v13 = sub_1001A1CF8(a4, a5, v11);

    if (v13)
    {
      return 1;
    }

    v14 = *a6;
    if (!*a6)
    {
      return 0;
    }
  }

  else
  {

    v14 = *a6;
    if (!*a6)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  static Published.subscript.getter();

  v16 = *(v19 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID);
  v17 = v16;

  if (v16)
  {
    v18 = [v15 isEqual:v17];

    if (v18)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10018F7D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1001920A8(a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13);
}

uint64_t *sub_10018F844(uint64_t *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, uint64_t))
{
  v5 = *result;
  if (*result)
  {
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_100349658);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_100017494(a2, a3, &v16);
      *(v12 + 12) = 2080;
      v13 = sub_1000092A0();
      v15 = sub_100017494(v13, v14, &v16);

      *(v12 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "### request %s failed to %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    return a5(0, 0, v5);
  }

  return result;
}

void sub_10018FA18(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8, char a9)
{
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection);
    *(Strong + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection) = v14;
    v17 = v14;
  }

  v18 = String._bridgeToObjectiveC()();
  sub_10011A14C(a5);
  v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (isa)
  {
    sub_10011A14C(isa);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;
  *(v20 + 32) = a9 & 1;
  *(v20 + 40) = a2;
  aBlock[4] = sub_100192FB0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100151C6C;
  aBlock[3] = &unk_10030D8E0;
  v21 = _Block_copy(aBlock);

  [v14 sendRequestID:v18 request:v19.super.isa options:isa responseHandler:v21];
  _Block_release(v21);
}

uint64_t sub_10018FC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, char a6)
{
  result = a4();
  if ((a6 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_10007306C();
    }
  }

  return result;
}

void sub_10018FCC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v1)
  {
    v12 = v1;
    if ([v12 controlFlags] == 6)
    {
    }

    else
    {
      if (qword_100339118 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_100003078(v2, qword_100349658);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v5 = 136315394;
        type metadata accessor for RPControlFlags(0);
        v6 = String.init<A>(describing:)();
        v8 = sub_100017494(v6, v7, &v13);

        *(v5 + 4) = v8;
        *(v5 + 12) = 2080;
        v9 = String.init<A>(describing:)();
        v11 = sub_100017494(v9, v10, &v13);

        *(v5 + 14) = v11;
        _os_log_impl(&_mh_execute_header, v3, v4, "Updating control flags: %s -> %s", v5, 0x16u);
        swift_arrayDestroy();
      }

      [v12 setControlFlags:6];
    }
  }
}

void sub_10018FFF4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = sub_10019301C;
  v7[3] = v6;
  v7[4] = a3;
  v10[4] = sub_10019305C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100124498;
  v10[3] = &unk_10030D980;
  v8 = _Block_copy(v10);

  v9 = a3;

  [v9 activateWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_100190110(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return a2(a4, 0);
  }

  swift_errorRetain();
  a2(a1, 1);
}

uint64_t sub_10019018C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = sub_100007B90(v2);

  return v0 & 1;
}

void sub_100190220(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
    if (v4)
    {
      v5 = [v4 activeDevices];
      sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = v5;
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_1001902EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = *&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_telephonyProxy];
      sub_1001C5B78();
    }
  }
}

uint64_t RPCompanionLinkFlags.description.getter(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100009088((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x687475616E75;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100009088((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x72656B61657073;
    *(v8 + 5) = 0xE700000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100009088((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 1936941424;
    *(v11 + 5) = 0xE400000000000000;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100009088((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 1701670760;
  *(v14 + 5) = 0xE400000000000000;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100009088((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 7352944;
    *(v17 + 5) = 0xE300000000000000;
  }

LABEL_31:
  if ((a1 & 0x20) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v20 = *(v2 + 2);
    v19 = *(v2 + 3);
    if (v20 >= v19 >> 1)
    {
      v2 = sub_100009088((v19 > 1), v20 + 1, 1, v2);
    }

    *(v2 + 2) = v20 + 1;
    v21 = &v2[16 * v20];
    *(v21 + 4) = 0x6669576365736E75;
    *(v21 + 5) = 0xE900000000000069;
    if ((a1 & 0x40) == 0)
    {
LABEL_33:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_52;
    }
  }

  else if ((a1 & 0x40) == 0)
  {
    goto LABEL_33;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v23 = *(v2 + 2);
  v22 = *(v2 + 3);
  if (v23 >= v22 >> 1)
  {
    v2 = sub_100009088((v22 > 1), v23 + 1, 1, v2);
  }

  *(v2 + 2) = v23 + 1;
  v24 = &v2[16 * v23];
  *(v24 + 4) = 0x6C61636F6CLL;
  *(v24 + 5) = 0xE500000000000000;
  if ((a1 & 0x80) == 0)
  {
LABEL_34:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_57;
  }

LABEL_52:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_100009088((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v27 = &v2[16 * v26];
  *(v27 + 4) = 0x72656461654C736DLL;
  *(v27 + 5) = 0xE800000000000000;
  if ((a1 & 0x100) == 0)
  {
LABEL_35:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_62;
  }

LABEL_57:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  if (v29 >= v28 >> 1)
  {
    v2 = sub_100009088((v28 > 1), v29 + 1, 1, v2);
  }

  *(v2 + 2) = v29 + 1;
  v30 = &v2[16 * v29];
  *(v30 + 4) = 0x6E6F43616964656DLL;
  *(v30 + 5) = 0xE800000000000000;
  if ((a1 & 0x200) == 0)
  {
LABEL_36:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_62:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v32 = *(v2 + 2);
  v31 = *(v2 + 3);
  if (v32 >= v31 >> 1)
  {
    v2 = sub_100009088((v31 > 1), v32 + 1, 1, v2);
  }

  *(v2 + 2) = v32 + 1;
  v33 = &v2[16 * v32];
  *(v33 + 4) = 0x6461654C72657375;
  *(v33 + 5) = 0xEA00000000007265;
  if ((a1 & 0x400) == 0)
  {
LABEL_37:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_72;
  }

LABEL_67:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v35 = *(v2 + 2);
  v34 = *(v2 + 3);
  if (v35 >= v34 >> 1)
  {
    v2 = sub_100009088((v34 > 1), v35 + 1, 1, v2);
  }

  *(v2 + 2) = v35 + 1;
  v36 = &v2[16 * v35];
  *(v36 + 4) = 6580584;
  *(v36 + 5) = 0xE300000000000000;
  if ((a1 & 0x800) == 0)
  {
LABEL_38:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_77;
  }

LABEL_72:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v38 = *(v2 + 2);
  v37 = *(v2 + 3);
  if (v38 >= v37 >> 1)
  {
    v2 = sub_100009088((v37 > 1), v38 + 1, 1, v2);
  }

  *(v2 + 2) = v38 + 1;
  v39 = &v2[16 * v38];
  *(v39 + 4) = 1769105779;
  *(v39 + 5) = 0xE400000000000000;
  if ((a1 & 0x1000) == 0)
  {
LABEL_39:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

LABEL_82:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v44 = *(v2 + 2);
    v43 = *(v2 + 3);
    if (v44 >= v43 >> 1)
    {
      v2 = sub_100009088((v43 > 1), v44 + 1, 1, v2);
    }

    *(v2 + 2) = v44 + 1;
    v45 = &v2[16 * v44];
    *(v45 + 4) = 0x504165726F6E6769;
    *(v45 + 5) = 0xE800000000000000;
    goto LABEL_87;
  }

LABEL_77:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v41 = *(v2 + 2);
  v40 = *(v2 + 3);
  if (v41 >= v40 >> 1)
  {
    v2 = sub_100009088((v40 > 1), v41 + 1, 1, v2);
  }

  *(v2 + 2) = v41 + 1;
  v42 = &v2[16 * v41];
  *(v42 + 4) = 0x75706E4974786574;
  *(v42 + 5) = 0xE900000000000074;
  if ((a1 & 0x4000) != 0)
  {
    goto LABEL_82;
  }

LABEL_40:
  if (!*(v2 + 2))
  {

    return 1701736302;
  }

LABEL_87:
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0);
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49._countAndFlagsBits = v46;
  v49._object = v48;
  String.append(_:)(v49);

  v50._countAndFlagsBits = 93;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  return 91;
}

uint64_t RPStatusFlags.description.getter(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100009088((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x657069507462;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100009088((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 6646882;
    *(v8 + 5) = 0xE300000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100009088((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x6172666E69;
    *(v11 + 5) = 0xE500000000000000;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100009088((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 1818523489;
  *(v14 + 5) = 0xE400000000000000;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_27:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_100009088((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 7233902;
  *(v17 + 5) = 0xE300000000000000;
  if ((a1 & 0x20) != 0)
  {
LABEL_32:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_100009088((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    v20 = &v2[16 * v19];
    *(v20 + 4) = 0x7065656C7361;
    *(v20 + 5) = 0xE600000000000000;
  }

LABEL_37:
  if ((a1 & 0x40) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v23 = *(v2 + 2);
    v22 = *(v2 + 3);
    if (v23 >= v22 >> 1)
    {
      v2 = sub_100009088((v22 > 1), v23 + 1, 1, v2);
    }

    *(v2 + 2) = v23 + 1;
    v24 = &v2[16 * v23];
    *(v24 + 4) = 0x6F696E61706D6F63;
    *(v24 + 5) = 0xE90000000000006ELL;
    if ((a1 & 0x80) == 0)
    {
LABEL_39:
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_71;
    }
  }

  else if ((a1 & 0x80) == 0)
  {
    goto LABEL_39;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_100009088((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v27 = &v2[16 * v26];
  *(v27 + 4) = 0x6C616E6F73726570;
  *(v27 + 5) = 0xE800000000000000;
  if ((a1 & 0x100) == 0)
  {
LABEL_40:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_76;
  }

LABEL_71:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  if (v29 >= v28 >> 1)
  {
    v2 = sub_100009088((v28 > 1), v29 + 1, 1, v2);
  }

  *(v2 + 2) = v29 + 1;
  v30 = &v2[16 * v29];
  *(v30 + 4) = 0x636E795374657564;
  *(v30 + 5) = 0xE800000000000000;
  if ((a1 & 0x200) == 0)
  {
LABEL_41:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_81;
  }

LABEL_76:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v32 = *(v2 + 2);
  v31 = *(v2 + 3);
  if (v32 >= v31 >> 1)
  {
    v2 = sub_100009088((v31 > 1), v32 + 1, 1, v2);
  }

  *(v2 + 2) = v32 + 1;
  v33 = &v2[16 * v32];
  *(v33 + 4) = 0x70325069666977;
  *(v33 + 5) = 0xE700000000000000;
  if ((a1 & 0x400) == 0)
  {
LABEL_42:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_81:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v35 = *(v2 + 2);
  v34 = *(v2 + 3);
  if (v35 >= v34 >> 1)
  {
    v2 = sub_100009088((v34 > 1), v35 + 1, 1, v2);
  }

  *(v2 + 2) = v35 + 1;
  v36 = &v2[16 * v35];
  *(v36 + 4) = 0x696475416576696CLL;
  *(v36 + 5) = 0xE90000000000006FLL;
  if ((a1 & 0x800) == 0)
  {
LABEL_43:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_86:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v38 = *(v2 + 2);
  v37 = *(v2 + 3);
  if (v38 >= v37 >> 1)
  {
    v2 = sub_100009088((v37 > 1), v38 + 1, 1, v2);
  }

  *(v2 + 2) = v38 + 1;
  v39 = &v2[16 * v38];
  *(v39 + 4) = 0x65746F6D6572;
  *(v39 + 5) = 0xE600000000000000;
  if ((a1 & 0x1000) == 0)
  {
LABEL_44:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_96;
  }

LABEL_91:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v41 = *(v2 + 2);
  v40 = *(v2 + 3);
  if (v41 >= v40 >> 1)
  {
    v2 = sub_100009088((v40 > 1), v41 + 1, 1, v2);
  }

  *(v2 + 2) = v41 + 1;
  v42 = &v2[16 * v41];
  *(v42 + 4) = 0x7473657567;
  *(v42 + 5) = 0xE500000000000000;
  if ((a1 & 0x2000) == 0)
  {
LABEL_45:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_101;
  }

LABEL_96:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v44 = *(v2 + 2);
  v43 = *(v2 + 3);
  if (v44 >= v43 >> 1)
  {
    v2 = sub_100009088((v43 > 1), v44 + 1, 1, v2);
  }

  *(v2 + 2) = v44 + 1;
  v45 = &v2[16 * v44];
  *(v45 + 4) = 1701670760;
  *(v45 + 5) = 0xE400000000000000;
  if ((a1 & 0x4000) == 0)
  {
LABEL_46:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_106;
  }

LABEL_101:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v47 = *(v2 + 2);
  v46 = *(v2 + 3);
  if (v47 >= v46 >> 1)
  {
    v2 = sub_100009088((v46 > 1), v47 + 1, 1, v2);
  }

  *(v2 + 2) = v47 + 1;
  v48 = &v2[16 * v47];
  *(v48 + 4) = 0x796C696D6166;
  *(v48 + 5) = 0xE600000000000000;
  if ((a1 & 0x8000) == 0)
  {
LABEL_47:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_111;
  }

LABEL_106:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v50 = *(v2 + 2);
  v49 = *(v2 + 3);
  if (v50 >= v49 >> 1)
  {
    v2 = sub_100009088((v49 > 1), v50 + 1, 1, v2);
  }

  *(v2 + 2) = v50 + 1;
  v51 = &v2[16 * v50];
  *(v51 + 4) = 0x646572696170;
  *(v51 + 5) = 0xE600000000000000;
  if ((a1 & 0x10000) == 0)
  {
LABEL_48:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_116;
  }

LABEL_111:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v53 = *(v2 + 2);
  v52 = *(v2 + 3);
  if (v53 >= v52 >> 1)
  {
    v2 = sub_100009088((v52 > 1), v53 + 1, 1, v2);
  }

  *(v2 + 2) = v53 + 1;
  v54 = &v2[16 * v53];
  *(v54 + 4) = 30324;
  *(v54 + 5) = 0xE200000000000000;
  if ((a1 & 0x20000) == 0)
  {
LABEL_49:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_121;
  }

LABEL_116:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v56 = *(v2 + 2);
  v55 = *(v2 + 3);
  if (v56 >= v55 >> 1)
  {
    v2 = sub_100009088((v55 > 1), v56 + 1, 1, v2);
  }

  *(v2 + 2) = v56 + 1;
  v57 = &v2[16 * v56];
  *(v57 + 4) = 0x646E65697266;
  *(v57 + 5) = 0xE600000000000000;
  if ((a1 & 0x40000) == 0)
  {
LABEL_50:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_126;
  }

LABEL_121:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v59 = *(v2 + 2);
  v58 = *(v2 + 3);
  if (v59 >= v58 >> 1)
  {
    v2 = sub_100009088((v58 > 1), v59 + 1, 1, v2);
  }

  *(v2 + 2) = v59 + 1;
  v60 = &v2[16 * v59];
  *(v60 + 4) = 0x6863756F74;
  *(v60 + 5) = 0xE500000000000000;
  if ((a1 & 0x80000) == 0)
  {
LABEL_51:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_131;
  }

LABEL_126:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v62 = *(v2 + 2);
  v61 = *(v2 + 3);
  if (v62 >= v61 >> 1)
  {
    v2 = sub_100009088((v61 > 1), v62 + 1, 1, v2);
  }

  *(v2 + 2) = v62 + 1;
  v63 = &v2[16 * v62];
  *(v63 + 4) = 0x72656E776FLL;
  *(v63 + 5) = 0xE500000000000000;
  if ((a1 & 0x100000) == 0)
  {
LABEL_52:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_136;
  }

LABEL_131:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v65 = *(v2 + 2);
  v64 = *(v2 + 3);
  if (v65 >= v64 >> 1)
  {
    v2 = sub_100009088((v64 > 1), v65 + 1, 1, v2);
  }

  *(v2 + 2) = v65 + 1;
  v66 = &v2[16 * v65];
  *(v66 + 4) = 0x64756F6C63;
  *(v66 + 5) = 0xE500000000000000;
  if ((a1 & 0x200000) == 0)
  {
LABEL_53:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_141;
  }

LABEL_136:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v68 = *(v2 + 2);
  v67 = *(v2 + 3);
  if (v68 >= v67 >> 1)
  {
    v2 = sub_100009088((v67 > 1), v68 + 1, 1, v2);
  }

  *(v2 + 2) = v68 + 1;
  v69 = &v2[16 * v68];
  *(v69 + 4) = 0x496E676953707061;
  *(v69 + 5) = 0xE90000000000006ELL;
  if ((a1 & 0x400000) == 0)
  {
LABEL_54:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_146;
  }

LABEL_141:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v71 = *(v2 + 2);
  v70 = *(v2 + 3);
  if (v71 >= v70 >> 1)
  {
    v2 = sub_100009088((v70 > 1), v71 + 1, 1, v2);
  }

  *(v2 + 2) = v71 + 1;
  v72 = &v2[16 * v71];
  *(v72 + 4) = 0x646E61486C6C6163;
  *(v72 + 5) = 0xEB0000000066666FLL;
  if ((a1 & 0x800000) == 0)
  {
LABEL_55:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_151;
  }

LABEL_146:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v74 = *(v2 + 2);
  v73 = *(v2 + 3);
  if (v74 >= v73 >> 1)
  {
    v2 = sub_100009088((v73 > 1), v74 + 1, 1, v2);
  }

  *(v2 + 2) = v74 + 1;
  v75 = &v2[16 * v74];
  *(v75 + 4) = 0x796150656C707061;
  *(v75 + 5) = 0xE800000000000000;
  if ((a1 & 0x1000000) == 0)
  {
LABEL_56:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_156;
  }

LABEL_151:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v77 = *(v2 + 2);
  v76 = *(v2 + 3);
  if (v77 >= v76 >> 1)
  {
    v2 = sub_100009088((v76 > 1), v77 + 1, 1, v2);
  }

  *(v2 + 2) = v77 + 1;
  v78 = &v2[16 * v77];
  *(v78 + 4) = 6452085;
  *(v78 + 5) = 0xE300000000000000;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_57:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_161;
  }

LABEL_156:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v80 = *(v2 + 2);
  v79 = *(v2 + 3);
  if (v80 >= v79 >> 1)
  {
    v2 = sub_100009088((v79 > 1), v80 + 1, 1, v2);
  }

  *(v2 + 2) = v80 + 1;
  v81 = &v2[16 * v80];
  strcpy(v81 + 32, "awdlDegraded");
  v81[45] = 0;
  *(v81 + 23) = -5120;
  if ((a1 & 0x4000000) == 0)
  {
LABEL_58:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_166:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v86 = *(v2 + 2);
    v85 = *(v2 + 3);
    if (v86 >= v85 >> 1)
    {
      v2 = sub_100009088((v85 > 1), v86 + 1, 1, v2);
    }

    *(v2 + 2) = v86 + 1;
    v87 = &v2[16 * v86];
    strcpy(v87 + 32, "communalDevice");
    v87[47] = -18;
    goto LABEL_171;
  }

LABEL_161:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v83 = *(v2 + 2);
  v82 = *(v2 + 3);
  if (v83 >= v82 >> 1)
  {
    v2 = sub_100009088((v82 > 1), v83 + 1, 1, v2);
  }

  *(v2 + 2) = v83 + 1;
  v84 = &v2[16 * v83];
  *(v84 + 4) = 0x727465526C647761;
  *(v84 + 5) = 0xE90000000000006FLL;
  if ((a1 & 0x800000000) != 0)
  {
    goto LABEL_166;
  }

LABEL_59:
  if (!*(v2 + 2))
  {

    return 1701736302;
  }

LABEL_171:
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0);
  v88 = BidirectionalCollection<>.joined(separator:)();
  v90 = v89;

  v91._countAndFlagsBits = v88;
  v91._object = v90;
  String.append(_:)(v91);

  v92._countAndFlagsBits = 93;
  v92._object = 0xE100000000000000;
  String.append(_:)(v92);
  return 91;
}

uint64_t sub_100191AB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v1;
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return 0;
  }

  return result;
}

uint64_t sub_100191C14(uint64_t a1)
{
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349658);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v7 = sub_1001EE1E4(v6);
    v9 = sub_100017494(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating connection to %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v10 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture;
  if (!*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture))
  {
    v14 = sub_100191AB0();
    if (!v14)
    {
      sub_100192FC0();
      result = swift_allocError();
      *v19 = 3;
      return result;
    }

    v15 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = v27;
    if (v27)
    {
      v17 = 1028;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v16 = v27;
      if (!v27)
      {
        v17 = 1028;
        goto LABEL_16;
      }

      v17 = 4228352;
    }

LABEL_16:
    v20 = [objc_allocWithZone(RPCompanionLinkClient) init];
    [v20 setDestinationDevice:v15];
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    [v20 setDispatchQueue:qword_10038B5B8];
    [v20 setFlags:1];
    [v20 setControlFlags:v17];
    *(swift_allocObject() + 16) = v20;
    v21 = sub_100035D04(&qword_100342B90, &qword_100278AF8);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = v20;
    v25 = Future.init(_:)();

    v26 = *(a1 + v10);
    *(a1 + v10) = v25;

    return 0;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Attempt to create two connections on one device was ignored", v13, 2u);
  }

  return 0;
}

uint64_t sub_1001920A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, void (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = a9;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a11;
  v17[7] = a12;
  v18 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture;
  v19 = *(a3 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture);

  if (v19)
  {
    goto LABEL_2;
  }

  v29 = sub_100191C14(a3);
  if (v29)
  {
    sub_100123D18(0, v29, a7, a8, a9);
  }

  else
  {
    v19 = *(a3 + v18);
    if (v19)
    {
LABEL_2:
      v20 = qword_100339118;

      if (v20 != -1)
      {
        swift_once();
      }

      v48 = v19;
      v21 = type metadata accessor for Logger();
      sub_100003078(v21, qword_100349658);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v24 = 136315394;
        v25 = a1;
        *(v24 + 4) = sub_100017494(a1, a2, &v53);
        *(v24 + 12) = 2080;
        v26 = sub_1000092A0();
        v28 = sub_100017494(v26, v27, &v53);

        *(v24 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "Sending request %s to %s", v24, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v25 = a1;
      }

      v53 = v48;
      v31 = swift_allocObject();
      v31[2] = v25;
      v31[3] = a2;
      v31[4] = a3;
      v31[5] = sub_100193068;
      v31[6] = v17;
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v25;
      *(v33 + 32) = a2;
      *(v33 + 40) = a4;
      *(v33 + 48) = a5;
      *(v33 + 56) = sub_100193068;
      *(v33 + 64) = v17;
      *(v33 + 72) = a6 & 1;

      swift_bridgeObjectRetain_n();
      swift_retain_n();

      sub_100035D04(&qword_100342B90, &qword_100278AF8);
      sub_10000E244(&qword_100342B98, &qword_100342B90, &qword_100278AF8);
      v34 = Publisher.sink(receiveCompletion:receiveValue:)();

      v35 = *(a3 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask);
      *(a3 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask) = v34;
    }

    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100003078(v36, qword_100349658);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Device has no paired connection?", v39, 2u);
    }

    sub_10001618C();
    v40 = swift_allocError();
    *v41 = 0xD000000000000014;
    *(v41 + 8) = 0x800000010029F0B0;
    *(v41 + 16) = 9;
    swift_errorRetain();
    if (qword_100339040 != -1)
    {
      swift_once();
    }

    sub_100003078(v36, qword_100345B38);

    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v53 = v46;
      *v44 = 136315394;
      *(v44 + 4) = sub_100017494(a7, a8, &v53);
      *(v44 + 12) = 2112;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v47;
      *v45 = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "### %s RangingTokenRequest failed: %@", v44, 0x16u);
      sub_1000097E8(v45, &qword_100339940, &unk_100272C50);
      v16 = a9;

      sub_10000903C(v46);
    }

    swift_errorRetain();
    (v16)(v40, 0, 1);
  }
}

uint64_t sub_10019278C(void *a1)
{
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28[-v4];
  v6 = [a1 statusFlags];
  v7 = [a1 statusFlags];
  if ((v6 & 4) != 0 && (v7 & 0x800000000) == 0)
  {
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_100349658);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_8;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Ignoring non-communal device.";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

LABEL_8:

    return 1;
  }

  if (qword_100338FB0 != -1)
  {
    swift_once();
  }

  v14 = *(*(qword_10038B138 + 24) + 48);
  v15 = *(v14 + 24);

  CurrentValueSubject.value.getter();
  v16 = v29;
  if (v29 == 2)
  {
    v17 = *(v14 + 16);
    CurrentValueSubject.value.getter();

    v18 = v33;
    v19 = v34;
    if (v32 == 1)
    {
      return 0;
    }
  }

  else
  {
    v18 = v30;
    v19 = v31;

    if (v16 == 1)
    {
      return 0;
    }
  }

  if (v19)
  {
    if (v18 == 0x466957656C707041 && v19 == 0xEF65727563655369)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    v21 = [a1 homeKitIdentifier];
    if (v21)
    {
      v22 = v21;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
      sub_1000097E8(v5, &unk_100348F30, &unk_100272540);
    }

    else
    {
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
      sub_1000097E8(v5, &unk_100348F30, &unk_100272540);
      if (qword_100338F18 != -1)
      {
        swift_once();
      }

      v25 = *(qword_10038B0B8 + 256);
      v26 = sub_1000031CC();

      if ((v26 & 1) == 0)
      {
        if (qword_100339118 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100003078(v27, qword_100349658);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v9, v10))
        {
          goto LABEL_8;
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "AppleWiFiSecure detected - Ignoring guest device.";
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  return 0;
}

void sub_100192BF0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_100349658);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_100017494(a1, a2, &v9);
      _os_log_impl(&_mh_execute_header, v5, v6, "Observed key path changed. kp=%s", v7, 0xCu);
      sub_10000903C(v8);
    }

    if (a1 == 0xD000000000000012 && 0x80000001002A36C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x776F6C6C41703270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_10018FCC0();
    }
  }
}

uint64_t sub_100192E04(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_10018E6B8(a1);
}

uint64_t sub_100192E10()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100192E58(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_10018E820(a1);
}

unint64_t sub_100192EF8()
{
  result = qword_100349738;
  if (!qword_100349738)
  {
    sub_100035D4C(&qword_100349720, &unk_100283B28);
    sub_100076FC4(&qword_10033D610, &qword_10033D618, RPCompanionLinkDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349738);
  }

  return result;
}

unint64_t sub_100192FC0()
{
  result = qword_100349750;
  if (!qword_100349750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349750);
  }

  return result;
}

uint64_t sub_10019301C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_100193068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v7 = *(v3 + 56);
  return sub_1001235DC(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32));
}

uint64_t sub_1001930D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100193134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1001931C8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100349758);
  sub_100003078(v0, qword_100349758);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100193240@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100194684(v3, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      if (__OFSUB__(a1, 1))
      {
        __break(1u);
      }

      else
      {
        v11 = *v9;
        if (*(v11 + 16) - 1 >= a1 - 1)
        {
          v12 = a1 - 1;
        }

        else
        {
          v12 = *(v11 + 16) - 1;
        }

        if ((v12 & 0x8000000000000000) == 0)
        {
          v13 = type metadata accessor for DispatchTimeInterval();
          (*(*(v13 - 8) + 16))(a2, v11 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)) + *(*(v13 - 8) + 72) * v12, v13);
        }
      }

      __break(1u);
    }

    else
    {
      *a2 = 0;
      v15 = enum case for DispatchTimeInterval.seconds(_:);
      v16 = type metadata accessor for DispatchTimeInterval();
      return (*(*(v16 - 8) + 104))(a2, v15, v16);
    }
  }

  else
  {
    v14 = type metadata accessor for DispatchTimeInterval();
    return (*(*(v14 - 8) + 32))(a2, v9, v14);
  }

  return result;
}

void sub_1001933FC()
{
  v1 = v0;
  if (qword_100339120 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349758);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v10 = *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState);
    v6 = String.init<A>(describing:)();
    v8 = sub_100017494(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "attemptState: %s", v4, 0xCu);
    sub_10000903C(v5);
  }

  else
  {
  }
}

void sub_100193598()
{
  v1 = v0;
  if (qword_100339120 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState;
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState))
  {
    if (*(v1 + 48))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
      return;
    }

    *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) = v9;
    *(v1 + v6) = 1;
    sub_1001933FC();
    if (*(v1 + 48))
    {
      goto LABEL_11;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) >= *(v1 + 40))
  {
LABEL_12:
    *(v1 + v6) = 3;

    sub_1001933FC();
    return;
  }

LABEL_11:
  if (*(v1 + v6) == 2)
  {
    goto LABEL_12;
  }

  sub_1001938F4();
}

void sub_100193720()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) == 2)
  {

    sub_1001940C0();
  }

  else
  {
    if (qword_100339120 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_100349758);

    v3 = v0;
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v11 = *(v3 + v1);
      v7 = String.init<A>(describing:)();
      v9 = sub_100017494(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, oslog, v4, "### Not retrying after delay. attemptState=%s", v5, 0xCu);
      sub_10000903C(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_1001938F4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  __chkstk_darwin(v2);
  v61 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  v5 = *(v60 + 64);
  __chkstk_darwin(v62);
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  v9 = __chkstk_darwin(v7);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v50 - v11;
  v12 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchTimeInterval();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v50 - v23;
  __chkstk_darwin(v22);
  v26 = &v50 - v25;
  sub_100194684(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_retryInterval, v15);
  sub_100193240(*(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount), v26);
  sub_1001946E8(v15);
  if (qword_100339120 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100003078(v27, qword_100349758);
  v28 = v17[2];
  v28(v24, v26, v16);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v65 = v26;
  v54 = v16;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v51 = v1;
    v33 = v32;
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136315138;
    v28(v21, v24, v16);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = v17[1];
    v52 = (v17 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v38;
    v38(v24, v16);
    v39 = sub_100017494(v35, v37, aBlock);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Scheduling retry. delay=%s", v33, 0xCu);
    sub_10000903C(v34);

    v1 = v51;
  }

  else
  {

    v40 = v17[1];
    v52 = (v17 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v40;
    v40(v24, v16);
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) = 2;
  sub_1001933FC();
  v51 = *(v1 + 32);
  v41 = v55;
  static DispatchTime.now()();
  v42 = v56;
  + infix(_:_:)();
  v43 = v58;
  v57 = *(v57 + 8);
  (v57)(v41, v58);
  v44 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100194744;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030DBE8;
  v45 = _Block_copy(aBlock);

  v46 = v59;
  static DispatchQoS.unspecified.getter();
  v66 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  v47 = v61;
  v48 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v45);
  (*(v63 + 8))(v47, v48);
  (*(v60 + 8))(v46, v62);
  (v57)(v42, v43);
  v53(v65, v54);
}

void sub_100193FA8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100193720();
  }

  else
  {
    if (qword_100339120 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_100003078(v0, qword_100349758);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "### nil self after scheduled retry", v3, 2u);
    }
  }
}

uint64_t sub_1001940C0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[4];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  v10(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount;
    v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (!v12)
    {
      *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) = v13;
      *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) = 1;
      sub_1001933FC();
      if (qword_100339120 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  swift_once();
LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_100349758);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *(v1 + v9);

    _os_log_impl(&_mh_execute_header, v15, v16, "Starting action. Attempts=%ld", v17, 0xCu);
  }

  else
  {
  }

  v19 = v1[2];
  v18 = v1[3];

  v19(v20);
}

void sub_100194300()
{
  v1 = v0;
  if (qword_100339120 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Succeeded", v5, 2u);
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) = 0;

  sub_1001933FC();
}

uint64_t sub_100194404()
{
  v1 = *(v0 + 24);

  sub_1001946E8(v0 + OBJC_IVAR____TtC17proximitycontrold7Retrier_retryInterval);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100194480()
{
  result = type metadata accessor for Retrier.RetryIntervalPolicy(319);
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

void sub_100194560()
{
  type metadata accessor for DispatchTimeInterval();
  if (v0 <= 0x3F)
  {
    sub_1001945D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001945D4()
{
  if (!qword_100349990)
  {
    type metadata accessor for DispatchTimeInterval();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100349990);
    }
  }
}

unint64_t sub_100194630()
{
  result = qword_1003499C0;
  if (!qword_1003499C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003499C0);
  }

  return result;
}

uint64_t sub_100194684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001946E8(uint64_t a1)
{
  v2 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100194764(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100194780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1001947D0(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
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

void *sub_100194838(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[3] = result[3] & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0x8000000000000000;
    result[4] = 0;
    result[5] = 0;
  }

  return result;
}

uint64_t sub_100194884(uint64_t a1)
{
  if ((*(a1 + 56) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1001948A0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001948CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001948E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 58))
  {
    return (*a1 + 61);
  }

  v3 = (HIBYTE(*(a1 + 56)) & 0x3C | (*(a1 + 56) >> 14)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10019493C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = (((-a2 >> 2) & 0xF) - 16 * a2) << 10;
    }
  }

  return result;
}

uint64_t sub_1001949E0(void *a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_100035D04(&qword_10034A0C8, &qword_100286BD8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v22 = &v21 - v5;
  v6 = sub_100035D04(&qword_10034A0D0, &qword_100286BE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100035D04(&qword_10034A0D8, &qword_100286BE8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v16 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001A1440();
  v17 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v17 & 0x8000000000) != 0)
  {
    v28 = 1;
    sub_1001A1494();
    v18 = v22;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v17;
    sub_1001A13EC();
    v19 = v24;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v23 + 8))(v18, v19);
  }

  else
  {
    v26 = 0;
    sub_1001A14E8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    (*(v7 + 8))(v10, v6);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100194CF4(void *a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100349E58, &qword_100285698);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019F730();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_100035D04(&qword_100349E40, &qword_100285690);
  sub_10019F784(&qword_100349E60, sub_10019F850);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100194E80()
{
  if (*v0)
  {
    result = 0x6E6F69676572;
  }

  else
  {
    result = 0x65636E6174736964;
  }

  *v0;
  return result;
}

uint64_t sub_100194EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000)
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

uint64_t sub_100194F90(uint64_t a1)
{
  v2 = sub_1001A1440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194FCC(uint64_t a1)
{
  v2 = sub_1001A1440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100195008(uint64_t a1)
{
  v2 = sub_1001A14E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100195044(uint64_t a1)
{
  v2 = sub_1001A14E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100195080(uint64_t a1)
{
  v2 = sub_1001A1494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001950BC(uint64_t a1)
{
  v2 = sub_1001A1494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001950F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100199758(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result);
  }

  return result;
}

uint64_t sub_100195164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
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

uint64_t sub_1001951E8(uint64_t a1)
{
  v2 = sub_10019F730();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100195224(uint64_t a1)
{
  v2 = sub_10019F730();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100195260@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100199C84(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001952A8(void *a1, uint64_t a2, int a3)
{
  v25 = a2;
  v24 = a3;
  v4 = sub_100035D04(&qword_10034A050, &qword_100286B98);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_100035D04(&qword_10034A058, &qword_100286BA0);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = sub_100035D04(&qword_10034A060, &qword_100286BA8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  v17 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001A0DBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = (v13 + 8);
  if (v24)
  {
    LOBYTE(v26) = 1;
    sub_1001A0E10();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v25;
    sub_1001A0F0C();
    v19 = v23;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v22 + 8))(v7, v19);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_1001A0EB8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v25;
    sub_1001A0F0C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v11, v8);
  }

  return (*v18)(v16, v12);
}

uint64_t sub_1001955EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = a3;
  v33 = a5;
  v24 = a4;
  v28 = a2;
  v6 = sub_100035D04(&qword_100349CF0, &qword_1002855D0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_100035D04(&qword_100349CF8, &qword_1002855D8);
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_100035D04(&qword_100349D00, &qword_1002855E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019DD38();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v33)
  {
    LOBYTE(v31) = 1;
    sub_10019DD8C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v28;
    LOBYTE(v32) = v29 & 1;
    sub_10019DE88();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v25 + 8))(v9, v6);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_10019DDE0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v28;
    v32 = v29;
    v34 = 0;
    sub_10019DEDC();
    v20 = v27;
    v21 = v30;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v21)
    {
      (*(v26 + 8))(v13, v20);
      return (*(v15 + 8))(v18, v14);
    }

    v31 = v24;
    v34 = 1;
    sub_100035D04(&qword_100349CB0, &qword_1002855A8);
    sub_10019DF30(&qword_100349D10, &qword_100349D18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v13, v20);
  }

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1001959E4(void *a1, uint64_t a2, int a3)
{
  v17 = a3;
  v16 = a2;
  v4 = sub_100035D04(&qword_100349CC8, &qword_1002855B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = sub_100035D04(&qword_100349CD0, &qword_1002855B8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019DB94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10019DBE8();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v18 = v16;
  v19 = v17 & 1;
  sub_10019DE88();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100195C04(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100349A40, &qword_100284248);
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v48 = &v38 - v6;
  v44 = sub_100035D04(&qword_100349A48, &qword_100284250);
  v43 = *(v44 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v44);
  v42 = &v38 - v8;
  v9 = sub_100035D04(&qword_100349A50, &qword_100284258);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v41 = sub_100035D04(&qword_100349A58, &qword_100284260);
  v40 = *(v41 - 8);
  v13 = *(v40 + 64);
  __chkstk_darwin(v41);
  v39 = &v38 - v14;
  v15 = sub_100035D04(&qword_100349A60, &qword_100284268);
  v45 = *(v15 - 8);
  v16 = *(v45 + 64);
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v53 = sub_100035D04(&qword_100349A68, &qword_100284270);
  v51 = *(v53 - 8);
  v19 = *(v51 + 64);
  __chkstk_darwin(v53);
  v21 = &v38 - v20;
  v22 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019BC00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = v2[1];
  v56 = *v2;
  v57 = v23;
  v58 = v2[2];
  v24 = v56;
  v25 = BYTE8(v23);
  if (*(&v23 + 1) >> 62)
  {
    if (*(&v23 + 1) >> 62 == 1)
    {
      *(&v57 + 1) = *(&v23 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      sub_10019BEF4(&v56, v59);
      LOBYTE(v54[0]) = 4;
      sub_10019BC54();
      v26 = v48;
      v27 = v53;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019BEF4(v59, v54);
      sub_10019BF0C();
      v28 = v50;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v29 = v49;
LABEL_4:
      (*(v29 + 8))(v26, v28);
      return (*(v51 + 8))(v21, v27);
    }

    v35 = *(&v58 + 1) | v58;
    if (*(&v23 + 1) != 0x8000000000000000 || v35 | v56 | v57 | *(&v56 + 1))
    {
      v27 = v53;
      if (*(&v23 + 1) != 0x8000000000000000 || v56 != 1 || v35 | v57 | *(&v56 + 1))
      {
        LOBYTE(v54[0]) = 3;
        sub_10019BCFC();
        v26 = v42;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_10019BF60();
        v28 = v44;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v29 = v43;
        goto LABEL_4;
      }

      LOBYTE(v54[0]) = 1;
      sub_10019BE4C();
      v37 = v39;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v40 + 8))(v37, v41);
      return (*(v51 + 8))(v21, v27);
    }

    else
    {
      LOBYTE(v54[0]) = 0;
      sub_10019BEA0();
      v36 = v53;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v45 + 8))(v18, v15);
      return (*(v51 + 8))(v21, v36);
    }
  }

  else
  {
    v31 = *(&v56 + 1);
    v32 = v57;
    LOBYTE(v54[0]) = 2;
    sub_10019BDA4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54[0] = v24;
    v54[1] = v31;
    v54[2] = v32;
    v55 = v25 & 1;
    v60 = 0;
    sub_10019BFB4();
    v33 = v47;
    v34 = v52;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v34)
    {
      (*(v46 + 8))(v12, v33);
      return (*(v51 + 8))(v21, v53);
    }

    else
    {
      LOBYTE(v54[0]) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v46 + 8))(v12, v33);
      return (*(v51 + 8))(v21, v53);
    }
  }
}

uint64_t sub_100196340(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100349AF0, &qword_1002842A0);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  __chkstk_darwin(v4);
  v46 = &v41 - v6;
  v7 = sub_100035D04(&qword_100349AF8, &qword_1002842A8);
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = sub_100035D04(&qword_100349B00, &qword_1002842B0);
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_100035D04(&qword_100349B08, &qword_1002842B8);
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  v19 = sub_100035D04(&qword_100349B10, &qword_1002842C0);
  v49 = *(v19 - 8);
  v50 = v19;
  v20 = *(v49 + 64);
  __chkstk_darwin(v19);
  v22 = &v41 - v21;
  v23 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019CA00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = *v2;
  v25 = *(v2 + 28);
  v26 = v25 >> 14;
  if (v25 >> 14 > 1)
  {
    v30 = v2[1];
    v29 = v2[2];
    v32 = v2[3];
    v31 = v2[4];
    if (v26 == 2)
    {
      LOBYTE(v51) = 2;
      sub_10019CAFC();
      v33 = v50;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = v24;
      v52 = v30;
      v53 = v29;
      v54 = v32;
      LOBYTE(v55) = v31;
      sub_10019CCF4();
      v34 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v44 + 8))(v10, v34);
      return (*(v49 + 8))(v22, v33);
    }

    else
    {
      v37 = v2[5];
      v45 = v2[6];
      v43 = v37;
      LODWORD(v44) = v25 & 0x3FFF;
      LOBYTE(v51) = 3;
      sub_10019CA54();
      v38 = v46;
      v39 = v50;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = v24;
      v52 = v30;
      v53 = v29;
      v54 = v32;
      v55 = v31;
      v56 = v43;
      v57 = v45;
      v58 = v44;
      sub_10019CCA0();
      v40 = v48;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v47 + 8))(v38, v40);
      return (*(v49 + 8))(v22, v39);
    }
  }

  else if (v26)
  {
    LOBYTE(v51) = 1;
    sub_10019CBA4();
    v35 = v50;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LODWORD(v51) = v24;
    BYTE4(v51) = BYTE4(v24);
    sub_10019CD48();
    v36 = v43;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v42 + 8))(v14, v36);
    return (*(v49 + 8))(v22, v35);
  }

  else
  {
    LOBYTE(v51) = 0;
    sub_10019CC4C();
    v27 = v50;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v41 + 8))(v18, v15);
    return (*(v49 + 8))(v22, v27);
  }
}

uint64_t sub_1001968E8()
{
  if (*v0)
  {
    result = 0x7465736E75;
  }

  else
  {
    result = 7628147;
  }

  *v0;
  return result;
}

uint64_t sub_100196918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7628147 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7465736E75 && a2 == 0xE500000000000000)
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

uint64_t sub_1001969F0(uint64_t a1)
{
  v2 = sub_1001A0DBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196A2C(uint64_t a1)
{
  v2 = sub_1001A0DBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100196A68(uint64_t a1)
{
  v2 = sub_1001A0EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196AA4(uint64_t a1)
{
  v2 = sub_1001A0EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100196AE0(uint64_t a1)
{
  v2 = sub_1001A0E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196B1C(uint64_t a1)
{
  v2 = sub_1001A0E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100196B58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100199E38(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_100196BAC()
{
  if (*v0)
  {
    result = 0x656469727265766FLL;
  }

  else
  {
    result = 0x704168636E75616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_100196BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x704168636E75616CLL && a2 == 0xE900000000000070;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xE800000000000000)
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

uint64_t sub_100196CD0(uint64_t a1)
{
  v2 = sub_10019DD38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196D0C(uint64_t a1)
{
  v2 = sub_10019DD38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100196D48()
{
  if (*v0)
  {
    result = 0x736E6F6974706FLL;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_100196D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t sub_100196E4C(uint64_t a1)
{
  v2 = sub_10019DDE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196E88(uint64_t a1)
{
  v2 = sub_10019DDE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100196EC4(uint64_t a1)
{
  v2 = sub_10019DD8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196F00(uint64_t a1)
{
  v2 = sub_10019DD8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100196F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10019A358(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_100196FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E6573657270 && a2 == 0xE700000000000000)
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

uint64_t sub_100197038(uint64_t a1)
{
  v2 = sub_10019DC90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197074(uint64_t a1)
{
  v2 = sub_10019DC90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001970B0(uint64_t a1)
{
  v2 = sub_10019DCE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001970EC(uint64_t a1)
{
  v2 = sub_10019DCE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197140(void *a1)
{
  v2 = sub_100035D04(&qword_100349CE0, &qword_1002855C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = sub_100035D04(&qword_100349CE8, &qword_1002855C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019DC90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10019DCE4();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100197330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE800000000000000)
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

uint64_t sub_1001973B8(uint64_t a1)
{
  v2 = sub_10019DB94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001973F4(uint64_t a1)
{
  v2 = sub_10019DB94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197430(uint64_t a1)
{
  v2 = sub_10019DBE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019746C(uint64_t a1)
{
  v2 = sub_10019DBE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001974A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10019ACB8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1001974FC()
{
  v1 = *v0;
  v2 = 0x5374736575716572;
  v3 = 0x656369766564;
  v4 = 0x6B63616264656566;
  if (v1 != 3)
  {
    v4 = 0x6D6574737973;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1819044203;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100197590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019B04C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001975C4(uint64_t a1)
{
  v2 = sub_10019BC00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197600(uint64_t a1)
{
  v2 = sub_10019BC00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019763C()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_100197658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_100197724(uint64_t a1)
{
  v2 = sub_10019BDA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197760(uint64_t a1)
{
  v2 = sub_10019BDA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019779C(uint64_t a1)
{
  v2 = sub_10019BCFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001977D8(uint64_t a1)
{
  v2 = sub_10019BCFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197814(uint64_t a1)
{
  v2 = sub_10019BE4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197850(uint64_t a1)
{
  v2 = sub_10019BE4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019788C(uint64_t a1)
{
  v2 = sub_10019BEA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001978C8(uint64_t a1)
{
  v2 = sub_10019BEA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197904(uint64_t a1)
{
  v2 = sub_10019BC54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197940(uint64_t a1)
{
  v2 = sub_10019BC54();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10019797C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10019B1F8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1001979E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6580592 && a2 == 0xE300000000000000)
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

uint64_t sub_100197A70(uint64_t a1)
{
  v2 = sub_10019F634();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197AAC(uint64_t a1)
{
  v2 = sub_10019F634();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197AE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100035D04(&qword_100349DC0, &qword_100285630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019F634();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_10000903C(a1);
  *a2 = v11;
  *(a2 + 4) = BYTE4(v11) & 1;
  return result;
}

uint64_t sub_100197C68(void *a1)
{
  v3 = sub_100035D04(&qword_100349E28, &qword_100285680);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = *v1;
  v9 = *(v1 + 4);
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019F634();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[28] = v9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_100197DB0()
{
  v1 = 6580592;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100197E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019C008(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100197E4C(uint64_t a1)
{
  v2 = sub_10019CA00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197E88(uint64_t a1)
{
  v2 = sub_10019CA00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197EC4(uint64_t a1)
{
  v2 = sub_10019CAFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197F00(uint64_t a1)
{
  v2 = sub_10019CAFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197F3C(uint64_t a1)
{
  v2 = sub_10019CC4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197F78(uint64_t a1)
{
  v2 = sub_10019CC4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197FB4(uint64_t a1)
{
  v2 = sub_10019CA54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197FF0(uint64_t a1)
{
  v2 = sub_10019CA54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019802C(uint64_t a1)
{
  v2 = sub_10019CBA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198068(uint64_t a1)
{
  v2 = sub_10019CBA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001980A4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_10019C174(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 10);
    *(a2 + 42) = *(v7 + 10);
  }

  return result;
}

uint64_t sub_100198108(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100349E00, &qword_100285658);
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v43 = &v37 - v6;
  v7 = sub_100035D04(&qword_100349E08, &qword_100285660);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = sub_100035D04(&qword_100349E10, &qword_100285668);
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = sub_100035D04(&qword_100349E18, &qword_100285670);
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 64);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v19 = sub_100035D04(&qword_100349E20, &qword_100285678);
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = *(v47 + 64);
  __chkstk_darwin(v19);
  v22 = &v37 - v21;
  v23 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019F490();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = *v2;
  v25 = v2[1];
  if (*(v2 + 32) > 1u)
  {
    if (*(v2 + 32) == 2)
    {
      v53 = 2;
      sub_10019F538();
      v32 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v33 = v42;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v41 + 8))(v10, v33);
      return (*(v47 + 8))(v22, v32);
    }

    v54 = 3;
    sub_10019F4E4();
    v35 = v43;
    v34 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v36 = v45;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v44 + 8))(v35, v36);
    return (*(v47 + 8))(v22, v34);
  }

  if (*(v2 + 32))
  {
    v52 = 1;
    sub_10019F58C();
    v34 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v38 + 8))(v14, v11);
    return (*(v47 + 8))(v22, v34);
  }

  v26 = v2[2];
  v27 = v2[3];
  v51 = 0;
  sub_10019F5E0();
  v28 = v48;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v50 = 0;
  v29 = v40;
  v30 = v46;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v30)
  {
    v49 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v39 + 8))(v18, v29);
  return (*(v47 + 8))(v22, v28);
}

uint64_t sub_100198684(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100349DD0, &qword_100285638);
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v34 = &v30 - v6;
  v7 = sub_100035D04(&qword_100349DD8, &qword_100285640);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = sub_100035D04(&qword_100349DE0, &qword_100285648);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v37 = sub_100035D04(&qword_100349DE8, &qword_100285650);
  v15 = *(v37 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v37);
  v18 = &v30 - v17;
  v19 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019F298();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v2;
  v20 = v2[1];
  if (*(v2 + 57))
  {
    if (*(v2 + 57) == 1)
    {
      LOBYTE(v38) = 1;
      sub_10019F394();
      v22 = v37;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v23 = v33;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v32 + 8))(v10, v23);
      return (*(v15 + 8))(v18, v22);
    }

    else
    {
      LOBYTE(v38) = 2;
      sub_10019F2EC();
      v26 = v34;
      v27 = v37;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v21;
      v39 = v20;
      v28 = *(v2 + 2);
      *v40 = *(v2 + 1);
      *&v40[16] = v28;
      *&v40[25] = *(v2 + 41);
      sub_10019F688();
      v29 = v36;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      (*(v35 + 8))(v26, v29);
      return (*(v15 + 8))(v18, v27);
    }
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_10019F3E8();
    v25 = v37;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = v21;
    v39 = v20;
    *v40 = *(v2 + 1);
    *&v40[14] = *(v2 + 30);
    sub_10019F6DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v31 + 8))(v14, v11);
    return (*(v15 + 8))(v18, v25);
  }
}

uint64_t sub_100198AF0()
{
  v1 = 0x436E6F6973736573;
  v2 = 0x746E657665;
  if (*v0 != 2)
  {
    v2 = 0x746365666665;
  }

  if (*v0)
  {
    v1 = 0x6168436574617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100198B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019DFFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100198BA0(uint64_t a1)
{
  v2 = sub_10019F490();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198BDC(uint64_t a1)
{
  v2 = sub_10019F490();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100198C18(uint64_t a1)
{
  v2 = sub_10019F4E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198C54(uint64_t a1)
{
  v2 = sub_10019F4E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100198C90(uint64_t a1)
{
  v2 = sub_10019F538();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198CCC(uint64_t a1)
{
  v2 = sub_10019F538();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100198D08()
{
  if (*v0)
  {
    result = 0x614E656369766564;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_100198D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
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

uint64_t sub_100198E18(uint64_t a1)
{
  v2 = sub_10019F5E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198E54(uint64_t a1)
{
  v2 = sub_10019F5E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100198E90(uint64_t a1)
{
  v2 = sub_10019F58C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198ECC(uint64_t a1)
{
  v2 = sub_10019F58C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100198F08@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10019E164(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100198F68()
{
  v1 = 0x6F4C656369766564;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7055656369766564;
  }
}

uint64_t sub_100198FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019EA30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100198FFC(uint64_t a1)
{
  v2 = sub_10019F298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100199038(uint64_t a1)
{
  v2 = sub_10019F298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100199074(uint64_t a1)
{
  v2 = sub_10019F394();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001990B0(uint64_t a1)
{
  v2 = sub_10019F394();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001990EC(uint64_t a1)
{
  v2 = sub_10019F3E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100199128(uint64_t a1)
{
  v2 = sub_10019F3E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100199164(uint64_t a1)
{
  v2 = sub_10019F2EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001991A0(uint64_t a1)
{
  v2 = sub_10019F2EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001991DC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_10019EB5C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 10);
    *(a2 + 42) = *(v7 + 10);
  }

  return result;
}

uint64_t sub_1001993E0(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034A088, &qword_100286BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001A1344();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v18[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 8);
    v16 = *(v3 + 36);
    v18[13] = 2;
    v18[12] = v16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18[11] = *(v3 + 37);
    v18[10] = 3;
    sub_1001A13EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001995F0()
{
  v1 = 25705;
  v2 = 0x65636E6174736964;
  if (*v0 != 2)
  {
    v2 = 0x6E6F69676572;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100199654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A0F60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019967C(uint64_t a1)
{
  v2 = sub_1001A1344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001996B8(uint64_t a1)
{
  v2 = sub_1001A1344();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001996F4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001A10B8(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 30) = *&v7[14];
  }

  return result;
}

uint64_t sub_100199758(uint64_t *a1)
{
  v33 = sub_100035D04(&qword_10034A098, &qword_100286BC0);
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v33);
  v4 = &v32 - v3;
  v5 = sub_100035D04(&qword_10034A0A0, &qword_100286BC8);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v9 = sub_100035D04(&qword_10034A0A8, &qword_100286BD0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v37 = a1;
  v16 = sub_10000EBC0(a1, v15);
  sub_1001A1440();
  v17 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v36 = v10;
    v18 = KeyedDecodingContainer.allKeys.getter();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_10021800C();
    v21 = v9;
    if (v20 == 2 || v40 != v41 >> 1)
    {
      v16 = v13;
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      v27 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v26 = &type metadata for ProxControlDemoClientMessage.OverrideMessage.Overrides.Value;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v36 + 8))(v16, v9);
      swift_unknownObjectRelease();
    }

    else if (v20)
    {
      v42 = 1;
      sub_1001A1494();
      v22 = v13;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v23 = v36;
      sub_1001A1398();
      v30 = v33;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      (*(v35 + 8))(v4, v30);
      (*(v23 + 8))(v22, v21);
      swift_unknownObjectRelease();
      v16 = v42 | 0x8000000000;
    }

    else
    {
      v42 = 0;
      sub_1001A14E8();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v29 = v36;
      v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      (*(v34 + 8))(v8, v5);
      (*(v29 + 8))(v13, v9);
      swift_unknownObjectRelease();
      v16 = v31 & 0x1FFFFFFFFLL;
    }
  }

  sub_10000903C(v37);
  return v16;
}

void *sub_100199C84(uint64_t *a1)
{
  v3 = sub_100035D04(&qword_100349E30, &qword_100285688);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000EBC0(a1, a1[3]);
  sub_10019F730();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000903C(a1);
  }

  else
  {
    sub_100035D04(&qword_100349E40, &qword_100285690);
    sub_10019F784(&qword_100349E48, sub_10019F7FC);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000903C(a1);
  }

  return v9;
}

void *sub_100199E38(uint64_t *a1)
{
  v32 = sub_100035D04(&qword_10034A018, &qword_100286B80);
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v4 = v31 - v3;
  v5 = sub_100035D04(&qword_10034A020, &qword_100286B88);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = v31 - v7;
  v9 = sub_100035D04(&qword_10034A028, &qword_100286B90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v31 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v36 = a1;
  v16 = sub_10000EBC0(a1, v15);
  sub_1001A0DBC();
  v17 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_7;
  }

  v18 = v4;
  v35 = v10;
  v19 = v13;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = (2 * *(v20 + 16)) | 1;
  v37 = v20;
  v38 = v20 + 32;
  v39 = 0;
  v40 = v21;
  v22 = sub_10021800C();
  v23 = v9;
  if (v22 == 2 || v39 != v40 >> 1)
  {
    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    v29 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v28 = &type metadata for ProxControlDemoClientMessage.OverrideMessage;
    v16 = v19;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
    swift_willThrow();
    (*(v35 + 8))(v19, v23);
    swift_unknownObjectRelease();
LABEL_7:
    sub_10000903C(v36);
    return v16;
  }

  v31[1] = v22;
  if (v22)
  {
    LOBYTE(v41) = 1;
    sub_1001A0E10();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v35;
    sub_1001A0E64();
    v25 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v34 + 8))(v18, v25);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_1001A0EB8();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v35;
    sub_1001A0E64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v33 + 8))(v8, v5);
  }

  (*(v24 + 8))(v19, v23);
  swift_unknownObjectRelease();
  v16 = v41;
  sub_10000903C(v36);
  return v16;
}

uint64_t sub_10019A358(uint64_t *a1)
{
  v32 = sub_100035D04(&qword_100349C78, &qword_100285590);
  v30 = *(v32 - 8);
  v2 = *(v30 + 64);
  __chkstk_darwin(v32);
  v4 = v29 - v3;
  v5 = sub_100035D04(&qword_100349C80, &qword_100285598);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v8 = v29 - v7;
  v9 = sub_100035D04(&qword_100349C88, &qword_1002855A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v29 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v34 = a1;
  sub_10000EBC0(a1, v15);
  sub_10019DD38();
  v16 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v32;
    v33 = v10;
    v18 = KeyedDecodingContainer.allKeys.getter();
    v19 = (2 * *(v18 + 16)) | 1;
    v37 = v18;
    v38 = v18 + 32;
    v39 = 0;
    v40 = v19;
    v20 = sub_10021800C();
    if (v20 == 2 || v39 != v40 >> 1)
    {
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      v5 = v9;
      v25 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v24 = &type metadata for ProxControlDemoClientMessage.DeviceMessage;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
      swift_willThrow();
      (*(v33 + 8))(v13, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v29[3] = v20;
      if (v20)
      {
        LOBYTE(v36) = 1;
        sub_10019DD8C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v21 = v33;
        sub_10019DC3C();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v30 + 8))(v4, v17);
        (*(v21 + 8))(v13, v9);
        swift_unknownObjectRelease();
        v5 = v36;
      }

      else
      {
        LOBYTE(v36) = 0;
        sub_10019DDE0();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v27 = v33;
        v32 = v13;
        LOBYTE(v41) = 0;
        sub_10019DE34();
        v28 = v5;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v5 = v36;
        sub_100035D04(&qword_100349CB0, &qword_1002855A8);
        v35 = 1;
        sub_10019DF30(&qword_100349CB8, &qword_100349CC0);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v31 + 8))(v8, v28);
        (*(v27 + 8))(v32, v9);
        swift_unknownObjectRelease();
      }
    }
  }

  sub_10000903C(v34);
  return v5;
}

uint64_t sub_10019A96C(uint64_t *a1)
{
  v3 = sub_100035D04(&qword_100349C58, &qword_100285580);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100035D04(&qword_100349C60, &qword_100285588);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10019DC90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = KeyedDecodingContainer.allKeys.getter();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_100218014() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    v20 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v19 = &type metadata for ProxControlDemoClientMessage.FeedbackMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return sub_10000903C(v22);
  }

  sub_10019DCE4();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return sub_10000903C(v22);
}

void *sub_10019ACB8(uint64_t *a1)
{
  v3 = sub_100035D04(&qword_100349C30, &qword_100285570);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_100035D04(&qword_100349C38, &qword_100285578);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = a1[4];
  v12 = sub_10000EBC0(a1, a1[3]);
  sub_10019DB94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v24 = a1;
  v13 = v31;
  v14 = v25;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = (2 * *(v15 + 16)) | 1;
  v27 = v15;
  v28 = v15 + 32;
  v29 = 0;
  v30 = v16;
  v17 = v10;
  if ((sub_100218014() & 1) != 0 || v29 != v30 >> 1)
  {
    v18 = v7;
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    v22 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v21 = &type metadata for ProxControlDemoClientMessage.SystemMessage;
    v12 = v17;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v14 + 8))(v17, v18);
    swift_unknownObjectRelease();
    a1 = v24;
LABEL_6:
    sub_10000903C(a1);
    return v12;
  }

  sub_10019DBE8();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  sub_10019DC3C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v6, v3);
  (*(v14 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v12 = v26;
  sub_10000903C(v24);
  return v12;
}

uint64_t sub_10019B04C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5374736575716572 && a2 == 0xEC00000065746174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819044203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10019B1F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v3 = sub_100035D04(&qword_1003499C8, &qword_100284210);
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v61 = &v50 - v6;
  v56 = sub_100035D04(&qword_1003499D0, &qword_100284218);
  v58 = *(v56 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v56);
  v62 = &v50 - v8;
  v54 = sub_100035D04(&qword_1003499D8, &qword_100284220);
  v57 = *(v54 - 8);
  v9 = *(v57 + 64);
  __chkstk_darwin(v54);
  v64 = &v50 - v10;
  v52 = sub_100035D04(&qword_1003499E0, &qword_100284228);
  v55 = *(v52 - 8);
  v11 = *(v55 + 64);
  __chkstk_darwin(v52);
  v13 = &v50 - v12;
  v14 = sub_100035D04(&qword_1003499E8, &qword_100284230);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v18 = sub_100035D04(&qword_1003499F0, &unk_100284238);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v66 = a1;
  sub_10000EBC0(a1, v23);
  sub_10019BC00();
  v25 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return sub_10000903C(v66);
  }

  v65 = v14;
  v26 = v62;
  v51 = v19;
  v27 = v63;
  v28 = KeyedDecodingContainer.allKeys.getter();
  v29 = (2 * *(v28 + 16)) | 1;
  v71 = v28;
  v72 = v28 + 32;
  v73 = 0;
  v74 = v29;
  v30 = sub_100218020();
  if (v30 == 5 || v73 != v74 >> 1)
  {
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    v36 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v35 = &type metadata for ProxControlDemoClientMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
    swift_willThrow();
    (*(v51 + 8))(v22, v18);
    swift_unknownObjectRelease();
    return sub_10000903C(v66);
  }

  if (v30 <= 1u)
  {
    if (v30)
    {
      LOBYTE(v67) = 1;
      sub_10019BE4C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v55 + 8))(v13, v52);
      (*(v51 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0x8000000000000000;
      v49 = 1;
    }

    else
    {
      LOBYTE(v67) = 0;
      sub_10019BEA0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v53 + 8))(v17, v65);
      (*(v51 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v49 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0x8000000000000000;
    }
  }

  else if (v30 == 2)
  {
    LOBYTE(v67) = 2;
    sub_10019BDA4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v65 = v22;
    v75 = 0;
    sub_10019BDF8();
    v40 = v54;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v61 = v18;
    v49 = v67;
    v44 = v68;
    v45 = v69;
    v48 = v70;
    v75 = 1;
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v42;
    v43 = (v51 + 8);
    v62 = 0;
    v46 = v41;
    (*(v57 + 8))(v64, v40);
    (*v43)(v65, v61);
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = v51;
    if (v30 == 3)
    {
      LOBYTE(v67) = 3;
      sub_10019BCFC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019BD50();
      v32 = v56;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v58 + 8))(v26, v32);
      (*(v31 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0x8000000000000000;
      v49 = 2;
    }

    else
    {
      LOBYTE(v67) = 4;
      sub_10019BC54();
      v38 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019BCA8();
      v39 = v59;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v60 + 8))(v38, v39);
      (*(v31 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v49 = v67;
      v44 = v68;
      v48 = 0x4000000000000000;
    }
  }

  result = sub_10000903C(v66);
  *v27 = v49;
  v27[1] = v44;
  v27[2] = v45;
  v27[3] = v48;
  v27[4] = v46;
  v27[5] = v47;
  return result;
}

unint64_t sub_10019BC00()
{
  result = qword_1003499F8;
  if (!qword_1003499F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003499F8);
  }

  return result;
}

unint64_t sub_10019BC54()
{
  result = qword_100349A00;
  if (!qword_100349A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A00);
  }

  return result;
}

unint64_t sub_10019BCA8()
{
  result = qword_100349A08;
  if (!qword_100349A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A08);
  }

  return result;
}

unint64_t sub_10019BCFC()
{
  result = qword_100349A10;
  if (!qword_100349A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A10);
  }

  return result;
}

unint64_t sub_10019BD50()
{
  result = qword_100349A18;
  if (!qword_100349A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A18);
  }

  return result;
}

unint64_t sub_10019BDA4()
{
  result = qword_100349A20;
  if (!qword_100349A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A20);
  }

  return result;
}

unint64_t sub_10019BDF8()
{
  result = qword_100349A28;
  if (!qword_100349A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A28);
  }

  return result;
}

unint64_t sub_10019BE4C()
{
  result = qword_100349A30;
  if (!qword_100349A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A30);
  }

  return result;
}

unint64_t sub_10019BEA0()
{
  result = qword_100349A38;
  if (!qword_100349A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A38);
  }

  return result;
}

uint64_t sub_10019BEF4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *a2 = v2;
  return a2;
}

unint64_t sub_10019BF0C()
{
  result = qword_100349A70;
  if (!qword_100349A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A70);
  }

  return result;
}

unint64_t sub_10019BF60()
{
  result = qword_100349A78;
  if (!qword_100349A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A78);
  }

  return result;
}

unint64_t sub_10019BFB4()
{
  result = qword_100349A80;
  if (!qword_100349A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A80);
  }

  return result;
}

uint64_t sub_10019C008(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001002A3840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001002A3860 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_10019C174@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v54 = a2;
  v50 = sub_100035D04(&qword_100349A88, &qword_100284278);
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  __chkstk_darwin(v50);
  v56 = &v45 - v4;
  v5 = sub_100035D04(&qword_100349A90, &qword_100284280);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v55 = &v45 - v8;
  v48 = sub_100035D04(&qword_100349A98, &qword_100284288);
  v49 = *(v48 - 8);
  v9 = *(v49 + 64);
  __chkstk_darwin(v48);
  v11 = &v45 - v10;
  v12 = sub_100035D04(&qword_100349AA0, &qword_100284290);
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  __chkstk_darwin(v12);
  v15 = (&v45 - v14);
  v16 = sub_100035D04(&qword_100349AA8, &qword_100284298);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v58 = a1;
  sub_10000EBC0(a1, v22);
  sub_10019CA00();
  v23 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    goto LABEL_8;
  }

  v46 = v15;
  v24 = v11;
  v26 = v55;
  v25 = v56;
  *&v57 = v17;
  v27 = KeyedDecodingContainer.allKeys.getter();
  v28 = (2 * *(v27 + 16)) | 1;
  v66 = v27;
  v67 = v27 + 32;
  v68 = 0;
  v69 = v28;
  v29 = sub_100218018();
  if (v29 == 4 || v68 != v69 >> 1)
  {
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    v38 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v37 = &type metadata for ProxControlDemoServerMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, enum case for DecodingError.typeMismatch(_:), v35);
    swift_willThrow();
    (*(v57 + 8))(v20, v16);
    swift_unknownObjectRelease();
LABEL_8:
    sub_10000903C(v58);
    return result;
  }

  if (v29 > 1u)
  {
    v40 = v57;
    if (v29 == 2)
    {
      LOBYTE(v59) = 2;
      sub_10019CAFC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019CB50();
      v41 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v52 + 8))(v26, v41);
      (*(v40 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v32 = v59;
      v57 = v60;
      v31 = v61;
      v20 = v62;
      v16 = HIDWORD(v59);
      v34 = v59 & 0xFFFFFF0000000000;
      v33 = 0x8000;
    }

    else
    {
      LOBYTE(v59) = 3;
      sub_10019CA54();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019CAA8();
      v43 = v50;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v53 + 8))(v25, v43);
      (*(v40 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v32 = v59;
      v57 = v60;
      v31 = v61;
      v20 = v62;
      v12 = v64;
      v56 = v63;
      v33 = v65 & 0x3FF | 0xC000;
      v16 = HIDWORD(v59);
      v34 = v59 & 0xFFFFFF0000000000;
    }
  }

  else if (v29)
  {
    LOBYTE(v59) = 1;
    sub_10019CBA4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10019CBF8();
    v42 = v48;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = (v57 + 8);
    (*(v49 + 8))(v24, v42);
    (*v31)(v20, v16);
    swift_unknownObjectRelease();
    v34 = 0;
    v32 = v59;
    LOBYTE(v16) = BYTE4(v59);
    v70 = BYTE4(v59);
    v33 = 0x4000;
  }

  else
  {
    LOBYTE(v59) = 0;
    sub_10019CC4C();
    v30 = v46;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v30;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v47 + 8))(v30, v12);
    (*(v57 + 8))(v20, v16);
    swift_unknownObjectRelease();
    v33 = 0;
    LOBYTE(v16) = 0;
    v34 = 0;
  }

  sub_10000903C(v58);
  v44 = v54;
  *v54 = v34 | (v16 << 32) | v32;
  result = *&v57;
  *(v44 + 1) = v57;
  v44[3] = v31;
  v44[4] = v20;
  v44[5] = v56;
  v44[6] = v12;
  *(v44 + 28) = v33;
  return result;
}

unint64_t sub_10019CA00()
{
  result = qword_100349AB0;
  if (!qword_100349AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AB0);
  }

  return result;
}

unint64_t sub_10019CA54()
{
  result = qword_100349AB8;
  if (!qword_100349AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AB8);
  }

  return result;
}

unint64_t sub_10019CAA8()
{
  result = qword_100349AC0;
  if (!qword_100349AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AC0);
  }

  return result;
}

unint64_t sub_10019CAFC()
{
  result = qword_100349AC8;
  if (!qword_100349AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AC8);
  }

  return result;
}

unint64_t sub_10019CB50()
{
  result = qword_100349AD0;
  if (!qword_100349AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AD0);
  }

  return result;
}

unint64_t sub_10019CBA4()
{
  result = qword_100349AD8;
  if (!qword_100349AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AD8);
  }

  return result;
}

unint64_t sub_10019CBF8()
{
  result = qword_100349AE0;
  if (!qword_100349AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AE0);
  }

  return result;
}

unint64_t sub_10019CC4C()
{
  result = qword_100349AE8;
  if (!qword_100349AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AE8);
  }

  return result;
}

unint64_t sub_10019CCA0()
{
  result = qword_100349B18;
  if (!qword_100349B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B18);
  }

  return result;
}

unint64_t sub_10019CCF4()
{
  result = qword_100349B20;
  if (!qword_100349B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B20);
  }

  return result;
}

unint64_t sub_10019CD48()
{
  result = qword_100349B28;
  if (!qword_100349B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B28);
  }

  return result;
}

uint64_t sub_10019CE7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10019CEC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10019CF28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 58))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 57);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10019CF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t sub_10019CFDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10019D024(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_10019D098()
{
  result = qword_100349B30;
  if (!qword_100349B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B30);
  }

  return result;
}

unint64_t sub_10019D0F0()
{
  result = qword_100349B38;
  if (!qword_100349B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B38);
  }

  return result;
}

unint64_t sub_10019D148()
{
  result = qword_100349B40;
  if (!qword_100349B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B40);
  }

  return result;
}

unint64_t sub_10019D1A0()
{
  result = qword_100349B48;
  if (!qword_100349B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B48);
  }

  return result;
}

unint64_t sub_10019D1F8()
{
  result = qword_100349B50;
  if (!qword_100349B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B50);
  }

  return result;
}

unint64_t sub_10019D250()
{
  result = qword_100349B58;
  if (!qword_100349B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B58);
  }

  return result;
}

unint64_t sub_10019D2A8()
{
  result = qword_100349B60;
  if (!qword_100349B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B60);
  }

  return result;
}

unint64_t sub_10019D300()
{
  result = qword_100349B68;
  if (!qword_100349B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B68);
  }

  return result;
}

unint64_t sub_10019D358()
{
  result = qword_100349B70;
  if (!qword_100349B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B70);
  }

  return result;
}

unint64_t sub_10019D3B0()
{
  result = qword_100349B78;
  if (!qword_100349B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B78);
  }

  return result;
}

unint64_t sub_10019D408()
{
  result = qword_100349B80;
  if (!qword_100349B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B80);
  }

  return result;
}

unint64_t sub_10019D460()
{
  result = qword_100349B88;
  if (!qword_100349B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B88);
  }

  return result;
}

unint64_t sub_10019D4B8()
{
  result = qword_100349B90;
  if (!qword_100349B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B90);
  }

  return result;
}

unint64_t sub_10019D510()
{
  result = qword_100349B98;
  if (!qword_100349B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B98);
  }

  return result;
}

unint64_t sub_10019D568()
{
  result = qword_100349BA0;
  if (!qword_100349BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BA0);
  }

  return result;
}

unint64_t sub_10019D5C0()
{
  result = qword_100349BA8;
  if (!qword_100349BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BA8);
  }

  return result;
}

unint64_t sub_10019D618()
{
  result = qword_100349BB0;
  if (!qword_100349BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BB0);
  }

  return result;
}

unint64_t sub_10019D670()
{
  result = qword_100349BB8;
  if (!qword_100349BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BB8);
  }

  return result;
}

unint64_t sub_10019D6C8()
{
  result = qword_100349BC0;
  if (!qword_100349BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BC0);
  }

  return result;
}

unint64_t sub_10019D720()
{
  result = qword_100349BC8;
  if (!qword_100349BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BC8);
  }

  return result;
}

unint64_t sub_10019D778()
{
  result = qword_100349BD0;
  if (!qword_100349BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BD0);
  }

  return result;
}

unint64_t sub_10019D7D0()
{
  result = qword_100349BD8;
  if (!qword_100349BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BD8);
  }

  return result;
}

unint64_t sub_10019D828()
{
  result = qword_100349BE0;
  if (!qword_100349BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BE0);
  }

  return result;
}

unint64_t sub_10019D880()
{
  result = qword_100349BE8;
  if (!qword_100349BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BE8);
  }

  return result;
}

unint64_t sub_10019D8D8()
{
  result = qword_100349BF0;
  if (!qword_100349BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BF0);
  }

  return result;
}

unint64_t sub_10019D930()
{
  result = qword_100349BF8;
  if (!qword_100349BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BF8);
  }

  return result;
}

unint64_t sub_10019D988()
{
  result = qword_100349C00;
  if (!qword_100349C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C00);
  }

  return result;
}

unint64_t sub_10019D9E0()
{
  result = qword_100349C08;
  if (!qword_100349C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C08);
  }

  return result;
}

unint64_t sub_10019DA38()
{
  result = qword_100349C10;
  if (!qword_100349C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C10);
  }

  return result;
}

unint64_t sub_10019DA90()
{
  result = qword_100349C18;
  if (!qword_100349C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C18);
  }

  return result;
}

unint64_t sub_10019DAE8()
{
  result = qword_100349C20;
  if (!qword_100349C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C20);
  }

  return result;
}

unint64_t sub_10019DB40()
{
  result = qword_100349C28;
  if (!qword_100349C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C28);
  }

  return result;
}

unint64_t sub_10019DB94()
{
  result = qword_100349C40;
  if (!qword_100349C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C40);
  }

  return result;
}

unint64_t sub_10019DBE8()
{
  result = qword_100349C48;
  if (!qword_100349C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C48);
  }

  return result;
}

unint64_t sub_10019DC3C()
{
  result = qword_100349C50;
  if (!qword_100349C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C50);
  }

  return result;
}

unint64_t sub_10019DC90()
{
  result = qword_100349C68;
  if (!qword_100349C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C68);
  }

  return result;
}

unint64_t sub_10019DCE4()
{
  result = qword_100349C70;
  if (!qword_100349C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C70);
  }

  return result;
}

unint64_t sub_10019DD38()
{
  result = qword_100349C90;
  if (!qword_100349C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C90);
  }

  return result;
}

unint64_t sub_10019DD8C()
{
  result = qword_100349C98;
  if (!qword_100349C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C98);
  }

  return result;
}

unint64_t sub_10019DDE0()
{
  result = qword_100349CA0;
  if (!qword_100349CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349CA0);
  }

  return result;
}

unint64_t sub_10019DE34()
{
  result = qword_100349CA8;
  if (!qword_100349CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349CA8);
  }

  return result;
}

unint64_t sub_10019DE88()
{
  result = qword_100349CD8;
  if (!qword_100349CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349CD8);
  }

  return result;
}

unint64_t sub_10019DEDC()
{
  result = qword_100349D08;
  if (!qword_100349D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D08);
  }

  return result;
}

uint64_t sub_10019DF30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100349CB0, &qword_1002855A8);
    sub_10019DFB8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019DFB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LaunchAppRequest.Option();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019DFFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x436E6F6973736573 && a2 == 0xEE006465676E6168;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436574617473 && a2 == 0xEC0000006465676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746365666665 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10019E164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v80 = sub_100035D04(&qword_100349D70, &qword_100285608);
  v75 = *(v80 - 8);
  v3 = *(v75 + 64);
  __chkstk_darwin(v80);
  v79 = &v68 - v4;
  v74 = sub_100035D04(&qword_100349D78, &qword_100285610);
  v76 = *(v74 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin(v74);
  v78 = &v68 - v6;
  v7 = sub_100035D04(&qword_100349D80, &qword_100285618);
  v8 = *(v7 - 8);
  v72 = v7;
  v73 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v68 - v10;
  v12 = sub_100035D04(&qword_100349D88, &qword_100285620);
  v71 = *(v12 - 8);
  v13 = *(v71 + 64);
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  v16 = sub_100035D04(&qword_100349D90, &qword_100285628);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v68 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v82 = a1;
  sub_10000EBC0(a1, v22);
  sub_10019F490();
  v23 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_10000903C(v82);
  }

  v68 = v12;
  v69 = v11;
  v24 = v15;
  v26 = v78;
  v25 = v79;
  v70 = 0;
  v27 = v80;
  v81 = v17;
  v28 = KeyedDecodingContainer.allKeys.getter();
  v29 = (2 * *(v28 + 16)) | 1;
  v83 = v28;
  v84 = v28 + 32;
  v85 = 0;
  v86 = v29;
  v30 = sub_100218018();
  v31 = v16;
  if (v30 == 4 || v85 != v86 >> 1)
  {
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    v36 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v35 = &type metadata for HandoffSessionMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
    swift_willThrow();
    (*(v81 + 8))(v20, v31);
    goto LABEL_9;
  }

  v87 = v30;
  if (v30 > 1u)
  {
    v38 = v77;
    if (v30 == 2)
    {
      v88 = 2;
      sub_10019F538();
      v39 = v26;
      v40 = v31;
      v41 = v70;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v81;
      if (!v41)
      {
        v43 = v38;
        v44 = v74;
        v45 = 0;
        v54 = KeyedDecodingContainer.decode(_:forKey:)();
        v56 = v55;
        v70 = 0;
        (*(v76 + 8))(v39, v44);
        (*(v42 + 8))(v20, v31);
        swift_unknownObjectRelease();
        v57 = 0;
        v58 = v43;
        goto LABEL_21;
      }
    }

    else
    {
      v88 = 3;
      sub_10019F4E4();
      v48 = v25;
      v40 = v31;
      v49 = v70;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v81;
      if (!v49)
      {
        v52 = KeyedDecodingContainer.decode(_:forKey:)();
        v53 = v48;
        v56 = v65;
        v70 = 0;
        v66 = v52;
        v58 = v38;
        (*(v75 + 8))(v53, v27);
        v54 = v66;
        (*(v42 + 8))(v20, v31);
        swift_unknownObjectRelease();
        v57 = 0;
        v45 = 0;
        goto LABEL_21;
      }
    }

    (*(v42 + 8))(v20, v40);
    goto LABEL_9;
  }

  if (v30)
  {
    v88 = 1;
    sub_10019F58C();
    v47 = v69;
    v46 = v70;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v46)
    {
      goto LABEL_7;
    }

    v51 = v72;
    v45 = 0;
    v63 = KeyedDecodingContainer.decode(_:forKey:)();
    v56 = v64;
    v70 = 0;
    (*(v73 + 8))(v47, v51);
    (*(v81 + 8))(v20, v31);
    v54 = v63;
    swift_unknownObjectRelease();
    v57 = 0;
    v58 = v77;
  }

  else
  {
    v88 = 0;
    sub_10019F5E0();
    v32 = v70;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v32)
    {
LABEL_7:
      (*(v81 + 8))(v20, v31);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_10000903C(v82);
    }

    v88 = 0;
    v50 = v68;
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v80 = v59;
    v60 = v20;
    v88 = 1;
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = (v81 + 8);
    v70 = 0;
    v57 = v61;
    v45 = v67;
    (*(v71 + 8))(v24, v50);
    (*v62)(v60, v31);
    swift_unknownObjectRelease();
    v58 = v77;
    v54 = v79;
    v56 = v80;
  }

LABEL_21:
  result = sub_10000903C(v82);
  *v58 = v54;
  *(v58 + 8) = v56;
  *(v58 + 16) = v57;
  *(v58 + 24) = v45;
  *(v58 + 32) = v87;
  return result;
}

uint64_t sub_10019EA30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7055656369766564 && a2 == 0xEC00000065746164;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEA00000000007473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001002A3880 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_10019EB5C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = sub_100035D04(&qword_100349D20, &qword_1002855E8);
  v48 = *(v46 - 8);
  v3 = *(v48 + 64);
  __chkstk_darwin(v46);
  v49 = &v43 - v4;
  v44 = sub_100035D04(&qword_100349D28, &qword_1002855F0);
  v47 = *(v44 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v44);
  v7 = &v43 - v6;
  v8 = sub_100035D04(&qword_100349D30, &qword_1002855F8);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  v12 = sub_100035D04(&qword_100349D38, &qword_100285600);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v52 = a1;
  sub_10000EBC0(a1, v17);
  sub_10019F298();
  v19 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    goto LABEL_8;
  }

  v43 = v8;
  *&v51 = v13;
  v20 = v49;
  v21 = v50;
  v22 = v16;
  v23 = KeyedDecodingContainer.allKeys.getter();
  v24 = (2 * *(v23 + 16)) | 1;
  v61 = v23;
  v62 = v23 + 32;
  v63 = 0;
  v64 = v24;
  v25 = sub_100218008();
  if (v25 == 3 || v63 != v64 >> 1)
  {
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    v33 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v32 = &type metadata for RangingProxyStateMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, enum case for DecodingError.typeMismatch(_:), v30);
    swift_willThrow();
    (*(v51 + 8))(v22, v12);
    swift_unknownObjectRelease();
LABEL_8:
    sub_10000903C(v52);
    return result;
  }

  v65 = v25;
  if (v25)
  {
    if (v25 == 1)
    {
      LOBYTE(v53) = 1;
      sub_10019F394();
      v26 = v7;
      v11 = v22;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = v44;
      v28 = KeyedDecodingContainer.decode(_:forKey:)();
      v29 = v26;
      v39 = v28;
      v41 = v40;
      (*(v47 + 8))(v29, v27);
      v42 = v51 + 8;
      (*(v51 + 8))(v11, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v53) = 2;
      sub_10019F2EC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019F340();
      v27 = v46;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v38 = v51;
      (*(v48 + 8))(v20, v27);
      (*(v38 + 8))(v16, v12);
      swift_unknownObjectRelease();
      v39 = v53;
      v41 = v54;
      v51 = v55;
      LODWORD(v11) = v56;
      v42 = v57;
      LOBYTE(v27) = v58;
      *v60 = *v59;
      *(&v60[1] + 7) = *&v59[15];
    }
  }

  else
  {
    LOBYTE(v53) = 0;
    sub_10019F3E8();
    v35 = v16;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10019F43C();
    v36 = v43;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = v51;
    (*(v45 + 8))(v11, v36);
    (*(v37 + 8))(v35, v12);
    swift_unknownObjectRelease();
    v39 = v53;
    v41 = v54;
    v51 = v55;
    LODWORD(v11) = v56;
    v42 = v57;
    LOBYTE(v27) = v58;
    v66 = v57;
  }

  sub_10000903C(v52);
  *v21 = v39;
  *(v21 + 8) = v41;
  *(v21 + 16) = v51;
  *(v21 + 32) = v11;
  *(v21 + 36) = v42;
  *(v21 + 37) = v27;
  result = v60[0];
  *(v21 + 38) = *v60;
  *(v21 + 53) = *(&v60[1] + 7);
  *(v21 + 57) = v65;
  return result;
}

unint64_t sub_10019F298()
{
  result = qword_100349D40;
  if (!qword_100349D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D40);
  }

  return result;
}

unint64_t sub_10019F2EC()
{
  result = qword_100349D48;
  if (!qword_100349D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D48);
  }

  return result;
}

unint64_t sub_10019F340()
{
  result = qword_100349D50;
  if (!qword_100349D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D50);
  }

  return result;
}

unint64_t sub_10019F394()
{
  result = qword_100349D58;
  if (!qword_100349D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D58);
  }

  return result;
}

unint64_t sub_10019F3E8()
{
  result = qword_100349D60;
  if (!qword_100349D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D60);
  }

  return result;
}

unint64_t sub_10019F43C()
{
  result = qword_100349D68;
  if (!qword_100349D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D68);
  }

  return result;
}

unint64_t sub_10019F490()
{
  result = qword_100349D98;
  if (!qword_100349D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D98);
  }

  return result;
}

unint64_t sub_10019F4E4()
{
  result = qword_100349DA0;
  if (!qword_100349DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DA0);
  }

  return result;
}

unint64_t sub_10019F538()
{
  result = qword_100349DA8;
  if (!qword_100349DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DA8);
  }

  return result;
}

unint64_t sub_10019F58C()
{
  result = qword_100349DB0;
  if (!qword_100349DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DB0);
  }

  return result;
}

unint64_t sub_10019F5E0()
{
  result = qword_100349DB8;
  if (!qword_100349DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DB8);
  }

  return result;
}

unint64_t sub_10019F634()
{
  result = qword_100349DC8;
  if (!qword_100349DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DC8);
  }

  return result;
}

unint64_t sub_10019F688()
{
  result = qword_100349DF0;
  if (!qword_100349DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DF0);
  }

  return result;
}

unint64_t sub_10019F6DC()
{
  result = qword_100349DF8;
  if (!qword_100349DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DF8);
  }

  return result;
}

unint64_t sub_10019F730()
{
  result = qword_100349E38;
  if (!qword_100349E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E38);
  }

  return result;
}

uint64_t sub_10019F784(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100349E40, &qword_100285690);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019F7FC()
{
  result = qword_100349E50;
  if (!qword_100349E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E50);
  }

  return result;
}

unint64_t sub_10019F850()
{
  result = qword_100349E68;
  if (!qword_100349E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProxControlDemoClientMessage.OverrideMessage.Overrides.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 5))
  {
    return (*a1 + 127);
  }

  v3 = ((*(a1 + 4) >> 7) & 0xFFFFFF81 | (2 * ((*(a1 + 4) >> 1) & 0x3F))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ProxControlDemoClientMessage.OverrideMessage.Overrides.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 4) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

__n128 sub_10019FAC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10019FAD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019FB1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10019FB88()
{
  result = qword_100349E70;
  if (!qword_100349E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E70);
  }

  return result;
}

unint64_t sub_10019FBE0()
{
  result = qword_100349E78;
  if (!qword_100349E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E78);
  }

  return result;
}

unint64_t sub_10019FC38()
{
  result = qword_100349E80;
  if (!qword_100349E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E80);
  }

  return result;
}

unint64_t sub_10019FC90()
{
  result = qword_100349E88;
  if (!qword_100349E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E88);
  }

  return result;
}

unint64_t sub_10019FCE8()
{
  result = qword_100349E90;
  if (!qword_100349E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E90);
  }

  return result;
}

unint64_t sub_10019FD40()
{
  result = qword_100349E98;
  if (!qword_100349E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E98);
  }

  return result;
}

unint64_t sub_10019FD98()
{
  result = qword_100349EA0;
  if (!qword_100349EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EA0);
  }

  return result;
}

unint64_t sub_10019FDF0()
{
  result = qword_100349EA8;
  if (!qword_100349EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EA8);
  }

  return result;
}

unint64_t sub_10019FE48()
{
  result = qword_100349EB0;
  if (!qword_100349EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EB0);
  }

  return result;
}

unint64_t sub_10019FEA0()
{
  result = qword_100349EB8;
  if (!qword_100349EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EB8);
  }

  return result;
}

unint64_t sub_10019FEF8()
{
  result = qword_100349EC0;
  if (!qword_100349EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EC0);
  }

  return result;
}

unint64_t sub_10019FF50()
{
  result = qword_100349EC8;
  if (!qword_100349EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EC8);
  }

  return result;
}

unint64_t sub_10019FFA8()
{
  result = qword_100349ED0;
  if (!qword_100349ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349ED0);
  }

  return result;
}

unint64_t sub_1001A0000()
{
  result = qword_100349ED8;
  if (!qword_100349ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349ED8);
  }

  return result;
}

unint64_t sub_1001A0058()
{
  result = qword_100349EE0;
  if (!qword_100349EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EE0);
  }

  return result;
}

unint64_t sub_1001A00B0()
{
  result = qword_100349EE8;
  if (!qword_100349EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EE8);
  }

  return result;
}

unint64_t sub_1001A0108()
{
  result = qword_100349EF0;
  if (!qword_100349EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EF0);
  }

  return result;
}

unint64_t sub_1001A0160()
{
  result = qword_100349EF8;
  if (!qword_100349EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EF8);
  }

  return result;
}

unint64_t sub_1001A01B8()
{
  result = qword_100349F00;
  if (!qword_100349F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F00);
  }

  return result;
}

unint64_t sub_1001A0210()
{
  result = qword_100349F08;
  if (!qword_100349F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F08);
  }

  return result;
}

unint64_t sub_1001A0268()
{
  result = qword_100349F10;
  if (!qword_100349F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F10);
  }

  return result;
}

unint64_t sub_1001A02C0()
{
  result = qword_100349F18;
  if (!qword_100349F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F18);
  }

  return result;
}

unint64_t sub_1001A0318()
{
  result = qword_100349F20;
  if (!qword_100349F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F20);
  }

  return result;
}

unint64_t sub_1001A0370()
{
  result = qword_100349F28;
  if (!qword_100349F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F28);
  }

  return result;
}

unint64_t sub_1001A03C8()
{
  result = qword_100349F30;
  if (!qword_100349F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F30);
  }

  return result;
}

unint64_t sub_1001A0420()
{
  result = qword_100349F38;
  if (!qword_100349F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F38);
  }

  return result;
}

unint64_t sub_1001A0478()
{
  result = qword_100349F40;
  if (!qword_100349F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F40);
  }

  return result;
}

unint64_t sub_1001A04D0()
{
  result = qword_100349F48;
  if (!qword_100349F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F48);
  }

  return result;
}

unint64_t sub_1001A0528()
{
  result = qword_100349F50;
  if (!qword_100349F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F50);
  }

  return result;
}

unint64_t sub_1001A0580()
{
  result = qword_100349F58;
  if (!qword_100349F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F58);
  }

  return result;
}

unint64_t sub_1001A05D8()
{
  result = qword_100349F60;
  if (!qword_100349F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F60);
  }

  return result;
}

unint64_t sub_1001A0630()
{
  result = qword_100349F68;
  if (!qword_100349F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F68);
  }

  return result;
}

unint64_t sub_1001A0688()
{
  result = qword_100349F70;
  if (!qword_100349F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F70);
  }

  return result;
}

unint64_t sub_1001A06E0()
{
  result = qword_100349F78;
  if (!qword_100349F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F78);
  }

  return result;
}

unint64_t sub_1001A0738()
{
  result = qword_100349F80;
  if (!qword_100349F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F80);
  }

  return result;
}

unint64_t sub_1001A0790()
{
  result = qword_100349F88;
  if (!qword_100349F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F88);
  }

  return result;
}

unint64_t sub_1001A07E8()
{
  result = qword_100349F90;
  if (!qword_100349F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F90);
  }

  return result;
}

unint64_t sub_1001A0840()
{
  result = qword_100349F98;
  if (!qword_100349F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F98);
  }

  return result;
}

unint64_t sub_1001A0898()
{
  result = qword_100349FA0;
  if (!qword_100349FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FA0);
  }

  return result;
}

unint64_t sub_1001A08F0()
{
  result = qword_100349FA8;
  if (!qword_100349FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FA8);
  }

  return result;
}

unint64_t sub_1001A0948()
{
  result = qword_100349FB0;
  if (!qword_100349FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FB0);
  }

  return result;
}

unint64_t sub_1001A09A0()
{
  result = qword_100349FB8;
  if (!qword_100349FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FB8);
  }

  return result;
}

unint64_t sub_1001A09F8()
{
  result = qword_100349FC0;
  if (!qword_100349FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FC0);
  }

  return result;
}

unint64_t sub_1001A0A50()
{
  result = qword_100349FC8;
  if (!qword_100349FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FC8);
  }

  return result;
}

unint64_t sub_1001A0AA8()
{
  result = qword_100349FD0;
  if (!qword_100349FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FD0);
  }

  return result;
}

unint64_t sub_1001A0B00()
{
  result = qword_100349FD8;
  if (!qword_100349FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FD8);
  }

  return result;
}

unint64_t sub_1001A0B58()
{
  result = qword_100349FE0;
  if (!qword_100349FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FE0);
  }

  return result;
}

unint64_t sub_1001A0BB0()
{
  result = qword_100349FE8;
  if (!qword_100349FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FE8);
  }

  return result;
}

unint64_t sub_1001A0C08()
{
  result = qword_100349FF0;
  if (!qword_100349FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FF0);
  }

  return result;
}

unint64_t sub_1001A0C60()
{
  result = qword_100349FF8;
  if (!qword_100349FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FF8);
  }

  return result;
}

unint64_t sub_1001A0CB8()
{
  result = qword_10034A000;
  if (!qword_10034A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A000);
  }

  return result;
}

unint64_t sub_1001A0D10()
{
  result = qword_10034A008;
  if (!qword_10034A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A008);
  }

  return result;
}

unint64_t sub_1001A0D68()
{
  result = qword_10034A010;
  if (!qword_10034A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A010);
  }

  return result;
}

unint64_t sub_1001A0DBC()
{
  result = qword_10034A030;
  if (!qword_10034A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A030);
  }

  return result;
}

unint64_t sub_1001A0E10()
{
  result = qword_10034A038;
  if (!qword_10034A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A038);
  }

  return result;
}

unint64_t sub_1001A0E64()
{
  result = qword_10034A040;
  if (!qword_10034A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A040);
  }

  return result;
}

unint64_t sub_1001A0EB8()
{
  result = qword_10034A048;
  if (!qword_10034A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A048);
  }

  return result;
}

unint64_t sub_1001A0F0C()
{
  result = qword_10034A068;
  if (!qword_10034A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A068);
  }

  return result;
}

uint64_t sub_1001A0F60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001A10B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100035D04(&qword_10034A070, &qword_100286BB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001A1344();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v28 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v23 = v11;
  v27 = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v22 = v14;
  v26 = 2;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = 3;
  sub_1001A1398();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v25;
  result = sub_10000903C(a1);
  v19 = v22;
  *a2 = v23;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  BYTE4(v19) = BYTE4(v21);
  *(a2 + 32) = v21;
  *(a2 + 36) = BYTE4(v19) & 1;
  *(a2 + 37) = v17;
  return result;
}

unint64_t sub_1001A1344()
{
  result = qword_10034A078;
  if (!qword_10034A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A078);
  }

  return result;
}

unint64_t sub_1001A1398()
{
  result = qword_10034A080;
  if (!qword_10034A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A080);
  }

  return result;
}

unint64_t sub_1001A13EC()
{
  result = qword_10034A090;
  if (!qword_10034A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A090);
  }

  return result;
}

unint64_t sub_1001A1440()
{
  result = qword_10034A0B0;
  if (!qword_10034A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0B0);
  }

  return result;
}

unint64_t sub_1001A1494()
{
  result = qword_10034A0B8;
  if (!qword_10034A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0B8);
  }

  return result;
}

unint64_t sub_1001A14E8()
{
  result = qword_10034A0C0;
  if (!qword_10034A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0C0);
  }

  return result;
}

unint64_t sub_1001A15B0()
{
  result = qword_10034A0E0;
  if (!qword_10034A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0E0);
  }

  return result;
}

unint64_t sub_1001A1608()
{
  result = qword_10034A0E8;
  if (!qword_10034A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0E8);
  }

  return result;
}

unint64_t sub_1001A1660()
{
  result = qword_10034A0F0;
  if (!qword_10034A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0F0);
  }

  return result;
}

unint64_t sub_1001A16B8()
{
  result = qword_10034A0F8;
  if (!qword_10034A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0F8);
  }

  return result;
}

unint64_t sub_1001A1710()
{
  result = qword_10034A100;
  if (!qword_10034A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A100);
  }

  return result;
}

unint64_t sub_1001A1768()
{
  result = qword_10034A108;
  if (!qword_10034A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A108);
  }

  return result;
}

unint64_t sub_1001A17C0()
{
  result = qword_10034A110;
  if (!qword_10034A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A110);
  }

  return result;
}

unint64_t sub_1001A1818()
{
  result = qword_10034A118;
  if (!qword_10034A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A118);
  }

  return result;
}

unint64_t sub_1001A1870()
{
  result = qword_10034A120;
  if (!qword_10034A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A120);
  }

  return result;
}

unint64_t sub_1001A18C8()
{
  result = qword_10034A128;
  if (!qword_10034A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A128);
  }

  return result;
}

unint64_t sub_1001A1920()
{
  result = qword_10034A130;
  if (!qword_10034A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A130);
  }

  return result;
}

unint64_t sub_1001A1978()
{
  result = qword_10034A138;
  if (!qword_10034A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A138);
  }

  return result;
}

unint64_t sub_1001A19D0()
{
  result = qword_10034A140;
  if (!qword_10034A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A140);
  }

  return result;
}

unint64_t sub_1001A1A28()
{
  result = qword_10034A148;
  if (!qword_10034A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A148);
  }

  return result;
}

unint64_t sub_1001A1A80()
{
  result = qword_10034A150;
  if (!qword_10034A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A150);
  }

  return result;
}

unint64_t sub_1001A1AD8()
{
  result = qword_10034A158;
  if (!qword_10034A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A158);
  }

  return result;
}

unint64_t sub_1001A1B30()
{
  result = qword_10034A160;
  if (!qword_10034A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A160);
  }

  return result;
}

unint64_t sub_1001A1B88()
{
  result = qword_10034A168;
  if (!qword_10034A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A168);
  }

  return result;
}

unint64_t sub_1001A1BE0()
{
  result = qword_10034A170;
  if (!qword_10034A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A170);
  }

  return result;
}

unint64_t sub_1001A1C38()
{
  result = qword_10034A178;
  if (!qword_10034A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A178);
  }

  return result;
}

unint64_t sub_1001A1C90()
{
  result = qword_10034A180;
  if (!qword_10034A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A180);
  }

  return result;
}

uint64_t sub_1001A1CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1001A1DF0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034A190);
  sub_100003078(v0, qword_10034A190);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001A1E70()
{
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  off_10034A1A8 = result;
  return result;
}

uint64_t sub_1001A1EB8()
{
  if (qword_1003391D8 != -1)
  {
    result = swift_once();
  }

  byte_10038B440 = byte_10038B5A8;
  return result;
}

uint64_t sub_1001A1F10()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___nearbyInteractionEventPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___nearbyInteractionEventPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___nearbyInteractionEventPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_nearbyInteractionEventSubject);
    sub_100035D04(&qword_10034A438, &qword_100287690);
    sub_10000E244(&qword_10034A440, &qword_10034A438, &qword_100287690);
    v3 = v0;
    v2 = Publisher.eraseToAnyPublisher()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001A1FEC()
{
  v1 = sub_100035D04(&qword_10034A360, &qword_100287620);
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = *(v51 + 64);
  __chkstk_darwin(v1);
  v4 = &v44 - v3;
  v5 = sub_100035D04(&qword_10034A368, &qword_100287628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v44 - v8;
  v10 = sub_100035D04(&unk_10034A370, &unk_100287630);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = sub_100035D04(&qword_10033E928, &qword_10028C7C0);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  __chkstk_darwin(v15);
  v53 = &v44 - v17;
  v18 = sub_100035D04(&qword_10034A380, &qword_100287640);
  v56 = *(v18 - 8);
  v19 = *(v56 + 64);
  __chkstk_darwin(v18);
  v54 = &v44 - v20;
  v21 = sub_100035D04(&qword_10034A388, &qword_100287648);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___localMotionStatePublisher))
  {
    v26 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___localMotionStatePublisher);
  }

  else
  {
    v48 = v24;
    v49 = v25;
    v50 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___localMotionStatePublisher;
    v47 = &v44 - v23;
    sub_100035D04(&qword_10034A390, &qword_100287650);
    v27 = swift_allocObject();
    v46 = v18;
    v28 = v27;
    *(v27 + 16) = xmmword_1002727F0;
    v45 = v15;
    swift_beginAccess();
    sub_100035D04(&qword_10034A398, &qword_100287658);
    v29 = v0;
    Published.projectedValue.getter();
    swift_endAccess();
    sub_10000E244(&qword_10034A3A0, &unk_10034A370, &unk_100287630);
    Publisher.map<A>(_:)();
    v44 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_10000E244(&qword_10034A3A8, &qword_10034A368, &qword_100287628);
    v30 = Publisher.eraseToAnyPublisher()();
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v10);
    v28[4] = v30;
    v31 = *(v29 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState);

    v57 = sub_10000C49C();
    sub_100035D04(&qword_10034A3B0, &qword_100287660);
    sub_10000E244(&qword_10034A3B8, &qword_10034A3B0, &qword_100287660);
    v32 = Publisher.eraseToAnyPublisher()();

    v57 = v32;
    sub_100035D04(&qword_10034A3C0, &qword_100287668);
    sub_10000E244(&qword_10034A3C8, &qword_10034A3C0, &qword_100287668);
    Publisher.map<A>(_:)();
    sub_10000E244(&unk_10034A3D0, &qword_10034A360, &qword_100287620);
    v33 = v52;
    v34 = Publisher.eraseToAnyPublisher()();

    (*(v51 + 8))(v4, v33);
    v28[5] = v34;
    v57 = *(v29 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_localMotionStateDidChangeSubject);
    sub_100035D04(&qword_10034C750, &unk_100287670);
    sub_10000E244(&unk_10034A3E0, &qword_10034C750, &unk_100287670);
    v28[6] = Publisher.eraseToAnyPublisher()();
    sub_100035D04(&qword_10033D630, &unk_100274960);
    sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960);
    v35 = v53;
    Publishers.MergeMany.init(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100035D04(&qword_10034A3F8, &qword_100287680);
    sub_10000E244(&qword_10034A400, &qword_10033E928, &qword_10028C7C0);
    v36 = v54;
    v37 = v45;
    Publisher.map<A>(_:)();

    (*(v55 + 8))(v35, v37);
    sub_10000E244(&qword_10034A408, &qword_10034A380, &qword_100287640);
    sub_1001AC0D8();
    v39 = v46;
    v38 = v47;
    Publisher<>.removeDuplicates()();
    (*(v56 + 8))(v36, v39);
    sub_10000E244(&qword_10034A420, &qword_10034A388, &qword_100287648);
    v40 = v48;
    v41 = Publisher.share()();
    (*(v49 + 8))(v38, v40);
    v57 = v41;
    sub_100035D04(&qword_10034A428, &qword_100287688);
    sub_10000E244(&qword_10034A430, &qword_10034A428, &qword_100287688);
    v26 = Publisher.eraseToAnyPublisher()();

    v42 = *(v29 + v50);
    *(v29 + v50) = v26;
  }

  return v26;
}

uint64_t sub_1001A2914()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100036838(v0, qword_10034A1B0);
  *sub_100003078(v0, qword_10034A1B0) = 5;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_1001A29A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1001A2A18(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  v3 = a1;
  v4 = v1;
  static Published.subscript.setter();
  if (qword_100339160 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] = 0;
}

char *sub_1001A2B38(void *a1)
{
  v2 = v1;
  v127 = type metadata accessor for Logger();
  v114 = *(v127 - 8);
  v4 = *(v114 + 64);
  __chkstk_darwin(v127);
  v112 = v5;
  v113 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10034A448, &unk_100287698);
  v116 = *(v6 - 8);
  v117 = v6;
  v7 = *(v116 + 64);
  __chkstk_darwin(v6);
  v115 = &v102 - v8;
  v9 = sub_100035D04(&qword_10034A450, &qword_100278A90);
  v120 = *(v9 - 8);
  v121 = v9;
  v10 = *(v120 + 64);
  __chkstk_darwin(v9);
  v118 = &v102 - v11;
  v12 = sub_100035D04(&qword_10034A458, &qword_1002876A8);
  v122 = *(v12 - 8);
  v123 = v12;
  v13 = *(v122 + 64);
  __chkstk_darwin(v12);
  v119 = &v102 - v14;
  v111 = sub_100035D04(&qword_10034A460, &qword_1002876B0);
  v110 = *(v111 - 8);
  v15 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = &v102 - v16;
  v104 = type metadata accessor for DispatchTimeInterval();
  v128 = *(v104 - 8);
  v17 = *(v128 + 64);
  __chkstk_darwin(v104);
  v107 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  v19 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v108 = (&v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100035D04(&qword_10034A398, &qword_100287658);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v102 - v24;
  v26 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_nearbyAgent;
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens;
  KeyPath = swift_getKeyPath();
  v29 = sub_100035D04(&qword_10034A468, &qword_1002876D8);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_10006D374(KeyPath, 0);

  *&v2[v27] = v32;
  v33 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_nearbyInteractionEventSubject;
  v34 = sub_100035D04(&qword_10034A438, &qword_100287690);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *&v2[v33] = PassthroughSubject.init()();
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___nearbyInteractionEventPublisher] = 0;
  v37 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_localMotionStateDidChangeSubject;
  v38 = sub_100035D04(&qword_10034C750, &unk_100287670);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *&v2[v37] = PassthroughSubject.init()();
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___localMotionStatePublisher] = 0;
  v41 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_defaults;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  *&v2[v41] = qword_10038B0B8;
  v42 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_lockscreenAnalytics;
  v43 = qword_1003390D8;

  if (v43 != -1)
  {
    swift_once();
  }

  *&v2[v42] = qword_10038B2D8;
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivation] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier] = 0;
  v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState] = 0;
  v44 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState;
  sub_100035D04(&qword_10034A470, &qword_1002876E0);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *&v2[v44] = v45;
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_tasks] = &_swiftEmptySetSingleton;
  v46 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy__session;
  v131[0] = 0;

  v105 = sub_100035D04(&qword_10034A280, &qword_1002873E8);
  Published.init(initialValue:)();
  (*(v22 + 32))(&v2[v46], v25, v21);
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v125 = sub_100003078(v127, qword_10034A190);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v124 = a1;
  if (v49)
  {
    v126 = v26;
    v50 = v22;
    v51 = v21;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v131[0] = v53;
    *v52 = 136315138;
    if (qword_100339138 != -1)
    {
      swift_once();
    }

    if (byte_10038B440)
    {
      v54 = 0x726F68636E61;
    }

    else
    {
      v54 = 0x656C69626F6DLL;
    }

    v55 = sub_100017494(v54, 0xE600000000000000, v131);

    *(v52 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v47, v48, "Configuration role = %s", v52, 0xCu);
    sub_10000903C(v53);

    v21 = v51;
    v22 = v50;
  }

  else
  {
  }

  swift_unknownObjectWeakAssign();
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "Ranging was enabled", v58, 2u);
  }

  v126 = v34;

  v59 = [objc_allocWithZone(NISession) init];
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v60 = qword_10038B5B8;
  [v59 setDelegateQueue:qword_10038B5B8];
  swift_beginAccess();
  (*(v22 + 8))(&v2[v46], v21);
  v130 = v59;
  Published.init(initialValue:)();
  swift_endAccess();
  v61 = type metadata accessor for RangingProxy();
  v129.receiver = v2;
  v129.super_class = v61;
  v62 = objc_msgSendSuper2(&v129, "init");
  v131[0] = _swiftEmptyArrayStorage;
  v105 = v62;
  v103 = v60;
  sub_1000CE168(0, 5, 0);
  v63 = 0;
  v64 = v131[0];
  v65 = enum case for DispatchTimeInterval.seconds(_:);
  v66 = *(v128 + 104);
  v67 = v104;
  v68 = v107;
  do
  {
    *v68 = *(&off_100300FE0 + v63 + 32);
    v66(v68, v65, v67);
    v131[0] = v64;
    v70 = v64[2];
    v69 = v64[3];
    if (v70 >= v69 >> 1)
    {
      sub_1000CE168(v69 > 1, v70 + 1, 1);
      v64 = v131[0];
    }

    v64[2] = v70 + 1;
    (*(v128 + 32))(v64 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v70, v68, v67);
    v63 += 8;
  }

  while (v63 != 40);
  v71 = v108;
  *v108 = v64;
  swift_storeEnumTagMultiPayload();
  v72 = swift_allocObject();
  v73 = v105;
  swift_unknownObjectWeakInit();

  v74 = type metadata accessor for Retrier(0);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  v77 = swift_allocObject();
  *(v77 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) = 0;
  *(v77 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) = 0;
  *(v77 + 16) = sub_1001AC1D4;
  *(v77 + 24) = v72;
  *(v77 + 32) = v103;
  *(v77 + 40) = 0;
  *(v77 + 48) = 1;
  sub_1001AC1DC(v71, v77 + OBJC_IVAR____TtC17proximitycontrold7Retrier_retryInterval);
  v78 = *&v73[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier];
  *&v73[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier] = v77;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v79 = v131[0];
  if (v131[0])
  {
    [v131[0] setDelegate:v73];
  }

  v131[0] = sub_1001A1FEC();
  sub_100035D04(&qword_10034A478, &qword_1002876E8);
  sub_10000E244(&qword_10034A480, &qword_10034A478, &qword_1002876E8);
  v80 = v109;
  Publisher.map<A>(_:)();

  v128 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_nearbyInteractionEventSubject;
  v81 = *&v73[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_nearbyInteractionEventSubject];
  sub_10000E244(&qword_10034A488, &qword_10034A460, &qword_1002876B0);
  v82 = sub_10000E244(&unk_10034A490, &qword_10034A438, &qword_100287690);

  v83 = v111;
  v108 = v82;
  Publisher.subscribe<A>(_:)();

  (*(v110 + 8))(v80, v83);
  v84 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_tasks;
  swift_beginAccess();
  v111 = v84;
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_100339130 != -1)
  {
    swift_once();
  }

  v131[0] = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
  v85 = Publisher.eraseToAnyPublisher()();

  v86 = static os_log_type_t.info.getter();
  v131[0] = v85;
  v87 = v114;
  v88 = v113;
  v89 = v127;
  (*(v114 + 16))(v113, v125, v127);
  v90 = (*(v87 + 80) + 64) & ~*(v87 + 80);
  v91 = v90 + v112;
  v92 = swift_allocObject();
  *(v92 + 2) = 0;
  *(v92 + 3) = 0;
  *(v92 + 4) = 0xD000000000000015;
  *(v92 + 5) = 0x80000001002A3C50;
  *(v92 + 6) = 0;
  *(v92 + 7) = 0xE000000000000000;
  (*(v87 + 32))(&v92[v90], v88, v89);
  v92[v91] = v86;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
  v93 = v115;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034A4B8, &qword_10034A448, &unk_100287698);
  v94 = v117;
  v95 = Publisher.eraseToAnyPublisher()();

  (*(v116 + 8))(v93, v94);
  v131[0] = v95;
  v96 = v118;
  Publisher<>.removeDuplicates()();

  sub_10000E244(&qword_10034A4C0, &qword_10034A450, &qword_100278A90);
  v97 = v119;
  v98 = v121;
  Publisher.map<A>(_:)();
  (*(v120 + 8))(v96, v98);
  v99 = *&v73[v128];
  sub_10000E244(&qword_10034A4C8, &qword_10034A458, &qword_1002876A8);

  v100 = v123;
  Publisher.subscribe<A>(_:)();

  (*(v122 + 8))(v97, v100);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v73;
}

void sub_1001A3C6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001A5270();
  }
}

uint64_t *sub_1001A3CC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*(result + 8))
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = 0;
  return result;
}

unsigned __int8 *sub_1001A3CDC@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 2;
  return result;
}

id sub_1001A3CF0()
{
  sub_1001A5108();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RangingProxy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A3EB8()
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034A190);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activating", v3, 2u);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t sub_1001A3FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = qword_1003391E8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = sub_1000FBAA8;
  v16[4] = v14;
  aBlock[4] = sub_1001AC0CC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030F790;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1001AC18C(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

void sub_1001A4340(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_1000036FC())
    {
      sub_10000B620();
    }

    else
    {
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_10034A190);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Shouldn't start ranging at activation, deferring session start.", v9, 2u);
      }
    }

    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_10034A190);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Activated", v13, 2u);
    }

    (a2)(0, 0);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v5 = 0x666C6573206C696ELL;
    *(v5 + 8) = 0xE800000000000000;
    *(v5 + 16) = 9;
    a2();
  }
}

void sub_1001A46D4(NSObject *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v45;
  if (!v45)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003078(v16, qword_10034A190);
    v17 = a1;
    v4 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v4, v18, "### Not adding token, no session. Token = %@", v19, 0xCu);
      sub_1000030B0(v20);
    }

    goto LABEL_37;
  }

  v5 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState;
  if (*(*&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) != 2)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003078(v22, qword_10034A190);
    v23 = v2;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v45 = v27;
      *v26 = 136315138;
      if (*(*&v2[v5] + 24) > 1u)
      {
        if (*(*&v2[v5] + 24) == 2)
        {
          v28 = 0xE700000000000000;
          v29 = 0x676E696E6E7572;
        }

        else
        {
          v28 = 0xE900000000000064;
          v29 = 0x65646E6570737573;
        }
      }

      else if (*(*&v2[v5] + 24))
      {
        v28 = 0xE600000000000000;
        v29 = 0x646573756170;
      }

      else
      {
        v28 = 0xE800000000000000;
        v29 = 0x6576697463616E69;
      }

      v44 = sub_100017494(v29, v28, &v45);

      *(v26 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v24, v25, "Not adding token, session state = %s", v26, 0xCu);
      sub_10000903C(v27);
    }

    goto LABEL_37;
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded;
  if (*&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] > 29)
  {
    if (qword_100339128 == -1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034A190);
    v8 = a1;
    a1 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(a1, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v8;
      *v11 = v8;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, a1, v9, "Adding token: %@", v10, 0xCu);
      sub_1000030B0(v11);
    }

    [v4 _addObject:v8];
    v13 = *&v2[v6];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      *&v2[v6] = v15;
      return;
    }

    __break(1u);
  }

  swift_once();
LABEL_21:
  v30 = type metadata accessor for Logger();
  sub_100003078(v30, qword_10034A190);
  v31 = a1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "### Max number of tokens already added, not adding %@", v34, 0xCu);
    sub_1000030B0(v35);
  }

  v37 = *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens];
  __chkstk_darwin(v38);
  type metadata accessor for TrackedToken();
  type metadata accessor for UUID();
  sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v39 = v37 + qword_100346AF8;

  os_unfair_lock_lock(v39);
  v45 = *(v39 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v39);

  v40 = *(v46 + 16);
  if (!v40)
  {

    v41 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_30;
  }

  v41 = sub_100009194(*(v46 + 16), 0);
  v42 = sub_100009A04(&v45, v41 + 32, v40, v46);
  sub_100004F98();
  if (v42 == v40)
  {

    if (v41 < 0)
    {
      goto LABEL_40;
    }

LABEL_30:
    if ((v41 & 0x4000000000000000) == 0)
    {
      v43 = *(v41 + 16);
LABEL_32:

      sub_1001198C4(v43, *&v2[v6]);
LABEL_37:

      return;
    }

LABEL_40:
    v43 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_32;
  }

  __break(1u);
}

void sub_1001A4DEC(unsigned __int8 a1)
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A190);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    v7 = 0xE700000000000000;
    *v5 = 136315138;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0x4F64657265776F70;
    v10 = 0xE90000000000006ELL;
    if (a1 != 5)
    {
      v9 = 0x7463697274736572;
      v10 = 0xEA00000000006465;
    }

    v11 = 0xEC00000064657A69;
    v12 = 0x726F687475616E75;
    if (a1 != 3)
    {
      v12 = 0x4F64657265776F70;
      v11 = 0xEA00000000006666;
    }

    if (a1 <= 4u)
    {
      v9 = v12;
      v10 = v11;
    }

    v13 = 0x6E69747465736572;
    v14 = 0xE900000000000067;
    if (a1 != 1)
    {
      v13 = 0x726F707075736E75;
      v14 = 0xEB00000000646574;
    }

    if (a1)
    {
      v8 = v13;
      v7 = v14;
    }

    if (a1 <= 2u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v9;
    }

    if (a1 <= 2u)
    {
      v16 = v7;
    }

    else
    {
      v16 = v10;
    }

    v17 = sub_100017494(v15, v16, &v21);

    *(v5 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "BT State changed to %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  if (sub_1001A9F9C(a1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v21)
    {
    }

    else
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "BT turned ON, reactivating session", v20, 2u);
      }

      sub_1001A5270();
    }
  }
}

void sub_1001A5108()
{
  v1 = v0;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A190);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidate", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens);

  sub_1001AC418();

  sub_1001A692C();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  [v7 invalidate];
}

void sub_1001A5270()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivation;
  if (*&v0[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivation])
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10034A190);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "### Duplicate simultaneous reactivation?", v4, 2u);
    }
  }

  else
  {
    v5 = v0;
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_10034A190);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Reactivating", v9, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = v19;
    if (v19)
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Invalidating existing session", v13, 2u);
      }

      [v19 invalidate];
      swift_getKeyPath();
      swift_getKeyPath();
      v14 = v5;
      static Published.subscript.setter();
      if (qword_100339160 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_unknownObjectWeakAssign();

      *&v14[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] = 0;
      v15 = *&v14[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState];
      *(v15 + 24) = 0;

      sub_10000C49C();
      v20 = *(v15 + 24);
      CurrentValueSubject.send(_:)();

      sub_1000143FC();
    }

    sub_1001A3EB8();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100035D04(&qword_100345FE0, &qword_1002795C0);
    sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0);
    v16 = Publisher.sink(receiveCompletion:receiveValue:)();

    v17 = *&v5[v1];
    *&v5[v1] = v16;
  }
}

char *sub_1001A571C(void *a1)
{
  if (!*a1)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034A190);
    v2 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v8))
    {
      goto LABEL_11;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v8, "Reactivated", v9, 2u);
LABEL_10:

LABEL_11:

    goto LABEL_13;
  }

  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034A190);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Reactivated: %@", v4, 0xCu);
    sub_1000030B0(v5);

    goto LABEL_10;
  }

LABEL_13:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *&result[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivation];
    *&result[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivation] = 0;
  }

  return result;
}

void sub_1001A594C()
{
  v1 = *&v0[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens];
  type metadata accessor for TrackedToken();
  type metadata accessor for UUID();
  sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v2 = v1 + qword_100346AF8;

  os_unfair_lock_lock(v2);
  v21 = *(v2 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v2);

  v3 = *(v22 + 16);
  if (v3)
  {
    v4 = sub_100009194(*(v22 + 16), 0);
    v5 = sub_100009A04(&v21, v4 + 32, v3);
    sub_100004F98();
    if (v5 != v3)
    {
      __break(1u);
LABEL_26:
      swift_once();
      goto LABEL_19;
    }

    if (v4 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }
  }

  if ((v4 & 0x4000000000000000) == 0)
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
LABEL_24:

      return;
    }

    goto LABEL_8;
  }

LABEL_23:
  while (2)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_24;
    }

LABEL_8:
    v7 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

LABEL_12:
      if (static UUID.== infix(_:_:)())
      {
        goto LABEL_18;
      }

      ++v7;
      if (v9 == v6)
      {
        goto LABEL_24;
      }
    }

    if (v7 >= *(v4 + 16))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v8 = *(v4 + 8 * v7 + 32);

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
LABEL_18:

  v0 = *(v8 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token);

  if (qword_100339128 != -1)
  {
    goto LABEL_26;
  }

LABEL_19:
  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_10034A190);
  v11 = v0;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v17 = v11;
    v18 = sub_1000092A0();
    v20 = sub_100017494(v18, v19, &v21);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Re-adding token %@ from %s", v14, 0x16u);
    sub_1000030B0(v15);

    sub_10000903C(v16);
  }

  sub_1001A46D4(v11);
}