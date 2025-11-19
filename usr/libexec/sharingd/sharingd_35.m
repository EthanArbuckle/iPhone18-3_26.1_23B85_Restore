uint64_t sub_1004F4BDC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981A10);
  v1 = sub_10000C4AC(v0, qword_100981A10);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004F4CA4(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock;
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v3 + v8) = v9;
  *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID) = &_swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltksLoaded) = 0;
  *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_checkAndStartRegistration) = 1;
  *(v3 + 16) = a1;
  v10._countAndFlagsBits = qword_100807E78[a1];
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xA3A734B544C20;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12 = (v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_label);
  *v12 = 0x207373616C43;
  v12[1] = 0xE600000000000000;
  v13 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectory;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 32))(v3 + v13, a2, v14);
  return v3;
}

void sub_1004F4E10()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for URL();
  v93 = *(v4 - 8);
  v5 = *(v93 + 64);
  v6 = __chkstk_darwin(v4);
  v91 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v100 = &v83 - v8;
  os_unfair_lock_assert_owner((*(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock) + 16));
  if (qword_100973998 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    v10 = sub_10000C4AC(v9, qword_100981A10);

    v92 = v10;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v102[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000C4E4(*(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_label), *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_label + 8), v102);
      _os_log_impl(&_mh_execute_header, v11, v12, "Loading %s", v13, 0xCu);
      sub_10000C60C(v14);
    }

    v15 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(&unk_1009A0000);
    v17 = v16;
    v102[0] = 0;
    v84 = v15;
    v18 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:v102];

    v19 = v102[0];
    if (!v18)
    {
      break;
    }

    v86 = v3;
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v19;

    v90 = *(v20 + 16);
    if (!v90)
    {
LABEL_28:

      return;
    }

    v23 = 0;
    v3 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
    v98 = v93 + 16;
    v24 = (v93 + 8);
    *&v22 = 136315394;
    v85 = v22;
    v25 = v86;
    v88 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
    v89 = v20;
    v99 = (v93 + 8);
    while (v23 < *(v20 + 16))
    {
      v28 = v20 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
      v29 = *(v93 + 72);
      v97 = v23;
      v30 = *(v93 + 16);
      v30(v100, v28 + v29 * v23, v4);
      v31 = Data.init(contentsOf:options:)();
      if (v2)
      {
        (*v24)(v100, v4);
        goto LABEL_28;
      }

      v33 = v31;
      v34 = v32;
      v35 = swift_allocObject();
      swift_weakInit();
      v36 = swift_allocObject();
      swift_weakInit();
      sub_100294008(v33, v34);
      v37 = sub_10031F2E0(v33, v34, sub_1004F66C0, v35, sub_1004F66C4, v36);

      v38 = v91;
      v30(v91, v100, v4);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      v94 = v40;
      v96 = v39;
      v41 = os_log_type_enabled(v39, v40);
      v42 = v99;
      v95 = 0;
      if (v41)
      {
        v43 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v102[0] = v87;
        *v43 = v85;

        v45 = sub_10031E940(v44);
        v46 = v4;
        v48 = v47;

        v49 = sub_10000C4E4(v45, v48, v102);

        *(v43 + 4) = v49;
        *(v43 + 12) = 2080;
        sub_100010F40(&qword_100975160, &type metadata accessor for URL);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        v53 = v38;
        v54 = *v99;
        (*v99)(v53, v46);
        v55 = sub_10000C4E4(v50, v52, v102);
        v4 = v46;

        *(v43 + 14) = v55;
        v56 = v96;
        _os_log_impl(&_mh_execute_header, v96, v94, "Loaded LocalLTK %s from %s", v43, 0x16u);
        swift_arrayDestroy();

        v25 = v86;

        sub_100026AC0(v33, v34);
      }

      else
      {
        sub_100026AC0(v33, v34);

        v57 = v38;
        v54 = *v42;
        (*v42)(v57, v4);
      }

      v54(v100, v4);
      v2 = *(v37 + 16);
      v58 = *(v37 + 24);
      v3 = v88;
      swift_beginAccess();

      v59 = *(v25 + v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = *(v25 + v3);
      v61 = v101;
      *(v25 + v3) = 0x8000000000000000;
      v62 = sub_100012854(v2, v58);
      v64 = v61[2];
      v65 = (v63 & 1) == 0;
      v66 = __OFADD__(v64, v65);
      v67 = v64 + v65;
      if (v66)
      {
        goto LABEL_30;
      }

      v68 = v63;
      if (v61[3] < v67)
      {
        sub_100576E34(v67, isUniquelyReferenced_nonNull_native);
        v62 = sub_100012854(v2, v58);
        if ((v68 & 1) != (v69 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

LABEL_19:
        v70 = v101;
        if (v68)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v74 = v62;
      sub_1002D1958();
      v62 = v74;
      v70 = v101;
      if (v68)
      {
LABEL_7:
        v26 = v70[7];
        v27 = *(v26 + 8 * v62);
        *(v26 + 8 * v62) = v37;

        goto LABEL_8;
      }

LABEL_20:
      v70[(v62 >> 6) + 8] |= 1 << v62;
      v71 = (v70[6] + 16 * v62);
      *v71 = v2;
      v71[1] = v58;
      *(v70[7] + 8 * v62) = v37;
      v72 = v70[2];
      v66 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v66)
      {
        goto LABEL_31;
      }

      v70[2] = v73;
LABEL_8:
      v23 = v97 + 1;
      *(v25 + v3) = v70;
      swift_endAccess();

      v20 = v89;
      v2 = v95;
      v24 = v99;
      if (v90 == v23)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  v75 = v102[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v102[0] = v79;
    *v78 = 136315138;
    sub_100010F40(&qword_100975160, &type metadata accessor for URL);
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = sub_10000C4E4(v80, v81, v102);

    *(v78 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v76, v77, "Failed to list items in %s", v78, 0xCu);
    sub_10000C60C(v79);
  }
}

uint64_t sub_1004F57A4(uint64_t a1)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Data.init(contentsOf:options:)();
  if (!v1)
  {
    v11 = v9;
    v12 = v10;
    v37 = v5;
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    swift_weakInit();
    sub_100294008(v11, v12);
    v2 = sub_10031F2E0(v11, v12, sub_1004F66C0, v13, sub_1004F66C4, v14);

    v38 = 0;
    if (qword_100973998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100981A10);
    v17 = v37;
    (*(v37 + 16))(v8, a1, v4);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = v19;
      v21 = v17;
      v22 = v20;
      v36 = swift_slowAlloc();
      v39 = v36;
      *v22 = 136315394;

      v34 = v18;
      v24 = sub_10031E940(v23);
      v26 = v25;

      v27 = sub_10000C4E4(v24, v26, &v39);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      sub_100010F40(&qword_100975160, &type metadata accessor for URL);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v21 + 8))(v8, v4);
      v31 = sub_10000C4E4(v28, v30, &v39);

      *(v22 + 14) = v31;
      v32 = v34;
      _os_log_impl(&_mh_execute_header, v34, v35, "Loaded LocalLTK %s from %s", v22, 0x16u);
      swift_arrayDestroy();

      sub_100026AC0(v11, v12);
    }

    else
    {
      sub_100026AC0(v11, v12);

      (*(v17 + 8))(v8, v4);
    }
  }

  return v2;
}

uint64_t sub_1004F5BA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v58 = a2;
  v8 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  if (a4)
  {
    v17 = v8 == 2;
  }

  else
  {
    v17 = (0x101020100uLL >> (8 * a3));
  }

  v18 = sub_100312270(v17, 1);
  if (!v4)
  {
    v20 = v18;
    v21 = v19;
    v56 = v10;
    sub_10030DE60();
    v57 = 0;
    v52 = v20;
    v54 = v21;
    v55 = a3;
    if (qword_100973998 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100981A10);
    v23 = v56;
    v24 = *(v56 + 16);
    v25 = v14;
    v50 = v16;
    v26 = v16;
    v27 = v9;
    v24(v14, v26, v9);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v23;
      v32 = swift_slowAlloc();
      v59[0] = v32;
      *v30 = 136315138;
      LODWORD(v51) = v29;
      v49 = UUID.uuidString.getter();
      v34 = v33;
      v35 = v31;
      v27 = v9;
      v53 = *(v35 + 8);
      v53(v25, v9);
      v36 = sub_10000C4E4(v49, v34, v59);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v51, "Generated local LTK, keybagID: %s", v30, 0xCu);
      sub_10000C60C(v32);
    }

    else
    {

      v53 = *(v23 + 8);
      v53(v25, v9);
    }

    v37 = v50;
    v59[0] = UUID.uuid.getter();
    v59[1] = v38;
    v39 = sub_1005698E0(v59, &v60);
    v51 = v40;
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    swift_weakInit();
    _s8LocalLTKCMa();
    v8 = swift_allocObject();
    *(v8 + 104) = &_swiftEmptyDictionarySingleton;
    sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v8 + 112) = v43;
    *(v8 + 120) = 1;
    v44 = v58;
    *(v8 + 16) = a1;
    *(v8 + 24) = v44;
    *(v8 + 32) = v55;
    *(v8 + 33) = a4 & 1;
    v45 = v54;
    *(v8 + 72) = v52;
    *(v8 + 80) = v45;
    v46 = v51;
    *(v8 + 88) = v39;
    *(v8 + 96) = v46;
    *(v8 + 40) = sub_1004F6640;
    *(v8 + 48) = v41;
    *(v8 + 56) = sub_1004F665C;
    *(v8 + 64) = v42;

    v47 = v57;
    sub_10031D088();
    v53(v37, v27);
    if (v47)
    {
    }
  }

  return v8;
}

uint64_t sub_1004F605C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v9 = *(Strong + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock), sub_1000387D0(v9), , v9))
  {
    v9(a1, a2, a3);
    return sub_100015D04(v9);
  }

  else
  {
    v11 = type metadata accessor for URL();
    return (*(*(v11 - 8) + 56))(a4, 1, 1, v11);
  }
}

uint64_t sub_1004F6164(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock);
    sub_1000387D0(v3);

    if (v3)
    {
      v4 = v3(a1);
      sub_100015D04(v3);
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004F6218()
{
  v1 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectory;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock + 8);
  sub_100015D04(*(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock));
  v4 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock + 8);
  sub_100015D04(*(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock));
  v5 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);

  v6 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID);

  v7 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_label + 8);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s13LTKCollectionCMa()
{
  result = qword_100981A70;
  if (!qword_100981A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004F6364()
{
  result = type metadata accessor for URL();
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

uint64_t sub_1004F643C()
{
  v21 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_label);
  v22 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_label + 8);
  v1 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v23 = *(v0 + v1);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v8; result = )
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = *(*(v23 + 56) + ((v12 << 9) | (8 * v13)));

    v16 = sub_10031E940(v15);
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      String.append(_:)(v20);

      return v21;
    }

    v8 = *(v4 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004F66C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004F681C, v9, 0);
}

void sub_1004F681C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[5];
    v6 = v0[2];
    v7 = v0[3];
    v8 = SFAirDropReceive.AskRequest.urlItems.getter();
    v9 = 0;
    v10 = v8 + 56;
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v8 + 56);
    v14 = (63 - v12) >> 6;
    v25 = v8;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v0[6];
      v17 = v0[4];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v5 + 16))(v16, *(v25 + 48) + *(v5 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1003D9F30(&off_1008D6E48);
      (*(v5 + 8))(v16, v17);
      v20 = *(v7 + 24);
      *(v7 + 24) = v19;

      if (!*(v7 + 24))
      {

        sub_10032B298(&unk_1008D6E68);
        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        sub_10032B298(&unk_1008D6E68);

        v21 = 1;
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v21 = 0;
LABEL_15:
    v22 = v0[9];
    v23 = v0[6];

    v24 = v0[1];

    v24(v21);
  }
}

unint64_t sub_1004F6A2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F76A0(v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    v13 = URLComponents.scheme.getter();
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      v17 = sub_1004F7120(a1);
      v18 = v15 == v2[4] && v16 == v2[5];
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (v17)
        {
          v19 = 0xD00000000000001FLL;
        }

        else
        {
          v19 = 0xD000000000000019;
        }

LABEL_12:
        (*(v9 + 8))(v12, v8);
        return v19;
      }

      if (v15 == v2[6] && v16 == v2[7])
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (v17)
      {
        v19 = 0xD00000000000001BLL;
      }

      else
      {
        v19 = 0xD000000000000015;
      }

      goto LABEL_12;
    }

LABEL_18:
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  sub_100005508(v7, &qword_1009803B8, &unk_100807F30);
  return 0;
}

uint64_t sub_1004F6CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 24);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1004F7120(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v41 - v6;
  v8 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v41 - v10;
  v12 = type metadata accessor for URLComponents();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100974F70, &unk_100804260);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100807E90;
  *(v17 + 32) = CNContactEmailAddressesKey;
  *(v17 + 40) = CNContactPhoneNumbersKey;
  v18 = CNContactEmailAddressesKey;
  v19 = CNContactPhoneNumbersKey;
  sub_1004F76A0(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    v20 = &qword_1009803B8;
    v21 = &unk_100807F30;
    v22 = v11;
LABEL_5:
    sub_100005508(v22, v20, v21);
    return 0;
  }

  v41[0] = a1;
  (*(v13 + 32))(v16, v11, v12);
  URLComponents.scheme.setter();
  URLComponents.url.getter();
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {

    (*(v13 + 8))(v16, v12);
    v20 = &unk_100974E00;
    v21 = &qword_1007F8940;
    v22 = v7;
    goto LABEL_5;
  }

  v26 = URL.absoluteString.getter();
  v28 = v27;
  (*(v24 + 8))(v7, v23);
  v41[6] = v26;
  v41[7] = v28;
  v41[4] = 12079;
  v41[5] = 0xE200000000000000;
  v41[2] = 0;
  v41[3] = 0xE000000000000000;
  v39 = sub_10001229C();
  v40 = v39;
  v38[0] = &type metadata for String;
  v38[1] = v39;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v13 + 8))(v16, v12);

  SFAirDropReceive.AskRequest.contactIdentifier.getter();
  if (v29)
  {

    v30 = *(v2 + 16);
    if (!v30)
    {
      __break(1u);
      return result;
    }

    v31 = String._bridgeToObjectiveC()();

    sub_10028088C(&unk_10097A940, &unk_100807F40);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v33 = [v30 contactsWithPhoneNumberOrEmail:v31 keys:isa];

    if (v33)
    {
      sub_100389A64();
      sub_1002D7FB0();
      v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v35);
      v39 = v41[0];
      sub_1002CC5FC(sub_1004F85C4, v38, v34);
      v37 = v36;

      if (v37)
      {

        return 1;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1004F75DC(void **a1)
{
  v1 = *a1;
  v2 = SFAirDropReceive.AskRequest.contactIdentifier.getter();
  v4 = v3;
  v5 = [v1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v4)
  {
    if (v2 == v6 && v4 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1004F76A0@<X0>(char *a1@<X8>)
{
  v46 = a1;
  v1 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v43 - v3;
  v54 = type metadata accessor for URLComponents();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v54);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v43 - v9;
  v51 = type metadata accessor for URL();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v51);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = SFAirDropReceive.AskRequest.urlItems.getter();
  v15 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 56);
  v19 = (v16 + 63) >> 6;
  v49 = v10 + 8;
  v50 = v10 + 16;
  v48 = (v5 + 48);
  v45 = (v5 + 32);
  v53 = v14;

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  while (1)
  {
    v23 = v21;
    if (!v18)
    {
      break;
    }

LABEL_8:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v51;
    (*(v10 + 16))(v13, *(v53 + 48) + *(v10 + 72) * (v24 | (v21 << 6)), v51);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    (*(v10 + 8))(v13, v25);
    if ((*v48)(v4, 1, v54) == 1)
    {
      result = sub_100005508(v4, &qword_1009803B8, &unk_100807F30);
    }

    else
    {
      v26 = *v45;
      (*v45)(v44, v4, v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_10028E7AC(0, v22[2] + 1, 1, v22);
      }

      v28 = v22[2];
      v27 = v22[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v43 = v28 + 1;
        v30 = v22;
        v31 = v28;
        v32 = sub_10028E7AC(v27 > 1, v28 + 1, 1, v30);
        v29 = v43;
        v28 = v31;
        v22 = v32;
      }

      v22[2] = v29;
      result = (v26)(v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28, v44, v54);
    }
  }

  while (1)
  {
    v21 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v23;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v33 = v22[2];
  v34 = v54;
  v35 = v52;
  if (v33)
  {
    for (i = 0; v33 != i; ++i)
    {
      if (i >= v22[2])
      {
        goto LABEL_32;
      }

      (*(v5 + 16))(v35, v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, v34);
      URLComponents.scheme.getter();
      if (v38)
      {
        v39 = String.lowercased()();

        v40 = v47;
        if (v39._countAndFlagsBits == *(v47 + 32) && v39._object == *(v47 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v39._countAndFlagsBits == *(v40 + 48) && v39._object == *(v40 + 56))
        {

          v35 = v52;
LABEL_29:
          v42 = v46;
          (*v45)(v46, v35, v34);
          v41 = 0;
          return (*(v5 + 56))(v42, v41, 1, v34);
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v35 = v52;
        if (v37)
        {

          goto LABEL_29;
        }
      }

      result = (*(v5 + 8))(v35, v34);
    }
  }

  v41 = 1;
  v42 = v46;
  return (*(v5 + 56))(v42, v41, 1, v34);
}

uint64_t sub_1004F7BE4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

double sub_1004F7C58@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPhoneLinks();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() sharedMonitor];
  result = 0.0;
  *(v2 + 24) = xmmword_100807EA0;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 7103860;
  *(v2 + 56) = 0xE300000000000000;
  *a1 = v2;
  return result;
}

uint64_t sub_1004F7CD8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1004F66C8(a1);
}

void sub_1004F7DE0(uint64_t a1, char a2)
{
  v3 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v12 == 1)
  {
    v13 = SFAirDropReceive.AskRequest.urlItems.getter();
    sub_1002FB398(v13, v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      URL._bridgeToObjectiveC()(v14);
      v16 = v15;
      v17 = [v15 formattedPhoneNumber];

      if (v17)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        sub_1003D8D18(&off_1008D6AD8, a2 & 1);
        sub_100005508(&unk_1008D6AF8, &qword_100981D40, &unk_1007FA6C0);
        v21 = String._bridgeToObjectiveC()();
        v22 = SFLocalizedStringForKey();

        if (v22)
        {

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1007F5670;
          *(v23 + 56) = &type metadata for String;
          *(v23 + 64) = sub_100026764();
          *(v23 + 32) = v18;
          *(v23 + 40) = v20;
          static String.localizedStringWithFormat(_:_:)();

          (*(v8 + 8))(v11, v7);
          return;
        }

        goto LABEL_11;
      }

      (*(v8 + 8))(v11, v7);
    }
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  v29 = xmmword_1007F5670;
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x494C5F454E4F4850;
  v25 = inited + 32;
  *(inited + 40) = 0xEA00000000004B4ELL;
  *(inited + 48) = v12;
  sub_1003D8D18(inited, a2 & 1);
  swift_setDeallocating();
  sub_100005508(v25, &qword_100981D40, &unk_1007FA6C0);
  v26 = String._bridgeToObjectiveC()();
  v27 = SFLocalizedStringForKey();

  if (v27)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v28 = swift_allocObject();
    *(v28 + 16) = v29;
    *(v28 + 56) = &type metadata for Int;
    *(v28 + 64) = &protocol witness table for Int;
    *(v28 + 32) = v12;
    static String.localizedStringWithFormat(_:_:)();

    return;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1004F8218()
{
  v0 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v30 = &v29 - v2;
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  sub_1004F76A0(&v29 - v12);
  v32 = v4;
  v14 = *(v4 + 48);
  v15 = v3;
  LODWORD(v3) = v14(v13, 1, v3);
  sub_100005508(v13, &qword_1009803B8, &unk_100807F30);
  result = 0;
  if (v3 != 1)
  {
    sub_1004F76A0(v11);
    if (v14(v11, 1, v15) == 1)
    {
      v17 = &qword_1009803B8;
      v18 = &unk_100807F30;
      v19 = v11;
LABEL_6:
      sub_100005508(v19, v17, v18);
      return 0;
    }

    v20 = v31;
    v21 = v32;
    (*(v32 + 32))(v31, v11, v15);
    URLComponents.scheme.setter();
    v22 = v30;
    URLComponents.url.getter();
    v23 = type metadata accessor for URL();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      (*(v21 + 8))(v20, v15);
      v17 = &unk_100974E00;
      v18 = &qword_1007F8940;
      v19 = v22;
      goto LABEL_6;
    }

    v25 = URL.absoluteString.getter();
    v27 = v26;
    (*(v24 + 8))(v22, v23);
    v37 = v25;
    v38 = v27;
    v35 = 12079;
    v36 = 0xE200000000000000;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_10001229C();
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    (*(v21 + 8))(v20, v15);

    return v28;
  }

  return result;
}

uint64_t sub_1004F85E4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981D48);
  v1 = sub_10000C4AC(v0, qword_100981D48);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004F86AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SFPlatform();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v2[16] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004F88BC, v15, 0);
}

uint64_t sub_1004F88BC()
{
  v1 = v0[2];
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2 && (v3 = v0[2], v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16), , !v4) && SFWalletAppAvailable())
  {
    v0[17] = objc_opt_self();
    type metadata accessor for MainActor();
    v0[18] = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1004F89FC, v6, v5);
  }

  else
  {
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[6];

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_1004F89FC()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  *(v0 + 152) = [v2 canAddPasses];

  return _swift_task_switch(sub_1004F8A7C, v3, 0);
}

uint64_t sub_1004F8A7C()
{
  v57 = v0;
  v1 = *(v0 + 152);
  if ([objc_opt_self() isPassLibraryAvailable])
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
LABEL_18:
    v19 = 0;
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = SFAirDropReceive.AskRequest.files.getter();
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = *(v0 + 112);
      v54 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      while (v7 < *(v5 + 16))
      {
        v9 = *(v0 + 120);
        v10 = *(v0 + 104);
        (*(v8 + 16))(v9, v54 + *(v8 + 72) * v7, v10);
        SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
        v11 = String._bridgeToObjectiveC()();

        SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
        (*(v8 + 8))(v9, v10);
        v12 = String._bridgeToObjectiveC()();

        v13 = [v12 pathExtension];

        if (!v13)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = String._bridgeToObjectiveC()();
        }

        v14 = SFIsPass();

        if ((v14 & 1) == 0)
        {

          goto LABEL_18;
        }

        if (v6 == ++v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      swift_once();
      v23 = *(v0 + 64);
      v22 = *(v0 + 72);
      v24 = *(v0 + 56);
      v25 = *(v0 + 16);
      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_100981D48);
      (*(v23 + 16))(v22, v25, v24);
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 64);
      v31 = *(v0 + 72);
      v32 = *(v0 + 56);
      if (v29)
      {
        v34 = *(v0 + 40);
        v33 = *(v0 + 48);
        v35 = *(v0 + 32);
        v53 = v28;
        v36 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = v55;
        *v36 = 136315394;
        v51 = v27;
        SFAirDropReceive.AskRequest.id.getter();
        sub_1004FABEC(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v32;
        v39 = v38;
        (*(v34 + 8))(v33, v35);
        (*(v30 + 8))(v31, v37);
        v40 = sub_10000C4E4(v50, v39, &v56);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2112;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 14) = v41;
        *v52 = v41;
        _os_log_impl(&_mh_execute_header, v51, v53, "Failed to get Wallet app for ask request %s: %@", v36, 0x16u);
        sub_100005508(v52, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v55);
      }

      else
      {

        (*(v30 + 8))(v31, v32);
      }
    }

    else
    {
LABEL_12:
      v16 = *(v0 + 88);
      v15 = *(v0 + 96);
      v17 = *(v0 + 80);

      static SFPlatform.macOS.getter();
      v18 = static SFPlatform.isPlatform(_:)();
      (*(v16 + 8))(v15, v17);
      if (v18)
      {
        v19 = 1;
        goto LABEL_21;
      }

      v20 = objc_allocWithZone(LSApplicationRecord);
      v21 = sub_10066F3F8(0xD000000000000012, 0x80000001007940B0, 1);
      v42 = *(v0 + 24);
      v43 = *(v42 + 16);
      *(v42 + 16) = v21;
    }

    v19 = *(*(v0 + 24) + 16) != 0;
  }

LABEL_21:
  v44 = *(v0 + 120);
  v45 = *(v0 + 96);
  v46 = *(v0 + 72);
  v47 = *(v0 + 48);

  v48 = *(v0 + 8);

  return v48(v19);
}

uint64_t sub_1004F8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  v5 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[27] = v6;
  v7 = *(v6 - 8);
  v4[28] = v7;
  v8 = *(v7 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v4[31] = v9;
  v10 = *(v9 - 8);
  v4[32] = v10;
  v11 = *(v10 + 64) + 15;
  v4[33] = swift_task_alloc();
  v12 = *(*(sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v4[36] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004F91D8, v13, 0);
}

uint64_t sub_1004F91D8()
{
  *(v0 + 296) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 304) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004F92B0, v2, v1);
}

uint64_t sub_1004F92B0()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);

  *(v0 + 336) = [v2 canAddPasses];

  return _swift_task_switch(sub_1004F9364, v3, 0);
}

uint64_t sub_1004F9364()
{
  v66 = v0;
  v1 = *(v0 + 336);
  if ([objc_opt_self() isPassLibraryAvailable])
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (qword_1009739A0 != -1)
    {
LABEL_40:
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100981D48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Wallet not available. Abort", v6, 2u);
    }

    v7 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1004FABEC(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v7);
    swift_willThrow();
    v10 = *(v0 + 272);
    v9 = *(v0 + 280);
    v11 = *(v0 + 264);
    v13 = *(v0 + 232);
    v12 = *(v0 + 240);
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 256);
    v64 = *(v0 + 248);
    v19 = *(v0 + 224);
    v20 = *(*(v0 + 192) + 16);
    v21 = 0;
    v58 = [objc_allocWithZone(PKPassLibrary) init];
    *(v0 + 312) = v58;
    v59 = v19;
    v22 = (v18 + 48);
    v61 = (v19 + 32);
    v62 = (v18 + 56);
    v60 = (v19 + 8);
    v63 = _swiftEmptyArrayStorage;
    *(v0 + 144) = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 320) = v63;
      if (v21 == v20)
      {
        v23 = 1;
        v21 = v20;
      }

      else
      {
        if (v21 >= v20)
        {
          goto LABEL_38;
        }

        if (__OFADD__(v21, 1))
        {
          goto LABEL_39;
        }

        v24 = *(v0 + 264);
        v25 = *(v0 + 272);
        v26 = *(v0 + 216);
        v27 = *(v0 + 192) + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v21;
        v28 = *(v64 + 48);
        *v24 = v21;
        (*(v59 + 16))(&v24[v28], v27, v26);
        sub_10002C4E4(v24, v25, &qword_10097A3B0, &unk_1007FD5B0);
        v23 = 0;
        ++v21;
      }

      v29 = *(v0 + 272);
      v30 = *(v0 + 280);
      v31 = *(v0 + 248);
      (*v62)(v29, v23, 1, v31);
      sub_10002C4E4(v29, v30, &qword_10097A3B8, &qword_1007FE9C0);
      if ((*v22)(v30, 1, v31) == 1)
      {
        break;
      }

      v32 = *(v0 + 280);
      v33 = *v32;
      (*v61)(*(v0 + 240), &v32[*(v64 + 48)], *(v0 + 216));
      v41 = Data.init(contentsOf:options:)();
      v43 = v42;
      v44 = objc_allocWithZone(PKPass);
      sub_100294008(v41, v43);
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 160) = 0;
      v46 = [v44 initWithData:isa error:v0 + 160];

      v47 = *(v0 + 160);
      if (v46)
      {
        v48 = v47;
        sub_100026AC0(v41, v43);
        v49 = v46;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v55 = *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        sub_100026AC0(v41, v43);

        v63 = *(v0 + 144);
        v40 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
        v54 = v47;
        sub_100026AC0(v41, v43);
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100026AC0(v41, v43);
        if (qword_1009739A0 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_10000C4AC(v34, qword_100981D48);
        swift_errorRetain();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v37 = 138412290;
          swift_errorRetain();
          v39 = _swift_stdlib_bridgeErrorToNSError();
          *(v37 + 4) = v39;
          *v38 = v39;
          _os_log_impl(&_mh_execute_header, v35, v36, "Wallet pass add or initWithData failed: %@", v37, 0xCu);
          sub_100005508(v38, &qword_100975400, &qword_1007F65D0);

          v40 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {

          v40 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_37;
          }
        }
      }

      v50 = *(v0 + 240);
      v51 = *(v0 + 216);
      v52 = *(v0 + 176);
      v53 = *(v0 + 184);
      v65[0] = v40 / (v20 + 1);
      v52(v65);
      (*v60)(v50, v51);
    }

    sub_1004FABA0();
    v56 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 328) = v56;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_1004F9B78;
    v57 = swift_continuation_init();
    *(v0 + 136) = sub_10028088C(&qword_100981E48, &unk_100807FE0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1004FA190;
    *(v0 + 104) = &unk_1008E5858;
    *(v0 + 112) = v57;
    [v58 addPasses:v56 withCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1004F9B78()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return _swift_task_switch(sub_1004F9C98, v1, 0);
}

uint64_t sub_1004F9C98()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 320);
  if (!v1)
  {
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v25 = *(v0 + 320);
      }

      v26 = *(v0 + 320);
      v3 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v26;
      if (v3)
      {
LABEL_5:
        v4 = __OFSUB__(v3, 1);
        v5 = v3 - 1;
        if (v4)
        {
          __break(1u);
        }

        else if ((v2 & 0xC000000000000001) == 0)
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v5 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v6 = *(*(v0 + 320) + 8 * v5 + 32);
            goto LABEL_10;
          }

          __break(1u);
        }

        v46 = *(v0 + 320);
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v47 = *(v0 + 320);
LABEL_10:

        v7 = [v6 passURL];

        if (v7)
        {
          v8 = *(v0 + 200);
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v9 = 0;
        }

        else
        {
          v9 = 1;
        }

        v10 = *(v0 + 216);
        v11 = *(v0 + 224);
        v13 = *(v0 + 200);
        v12 = *(v0 + 208);
        (*(v11 + 56))(v13, v9, 1, v10);
        sub_10002C4E4(v13, v12, &unk_100974E00, &qword_1007F8940);
        if ((*(v11 + 48))(v12, 1, v10) != 1)
        {
          v14 = *(v0 + 312);
          v48 = *(v0 + 280);
          v49 = *(v0 + 272);
          v15 = *(v0 + 264);
          v16 = *(v0 + 232);
          v18 = *(v0 + 216);
          v17 = *(v0 + 224);
          v50 = *(v0 + 200);
          v19 = *(v0 + 168);
          v20 = *(v17 + 32);
          v17 += 32;
          v20(v16, *(v0 + 208), v18);
          sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
          v21 = *(v17 + 40);
          v22 = (*(v17 + 48) + 32) & ~*(v17 + 48);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1007F5670;
          v20(v23 + v22, v16, v18);

          *v19 = v23;

          v24 = *(v0 + 8);
          goto LABEL_25;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_5;
      }
    }

    v27 = *(v0 + 320);
    v28 = *(v0 + 216);
    v29 = *(v0 + 224);
    v30 = *(v0 + 208);

    (*(v29 + 56))(v30, 1, 1, v28);
LABEL_19:
    sub_100005508(*(v0 + 208), &unk_100974E00, &qword_1007F8940);
    goto LABEL_20;
  }

LABEL_20:
  if (qword_1009739A0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000C4AC(v31, qword_100981D48);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v32, v33, "Wallet pass add failed with status: %ld", v34, 0xCu);
  }

  v35 = *(v0 + 312);

  v36 = type metadata accessor for SFAirDropReceive.Failure();
  sub_1004FABEC(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v36 - 8) + 104))(v37, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v36);
  swift_willThrow();

  v39 = *(v0 + 272);
  v38 = *(v0 + 280);
  v40 = *(v0 + 264);
  v42 = *(v0 + 232);
  v41 = *(v0 + 240);
  v44 = *(v0 + 200);
  v43 = *(v0 + 208);

  v24 = *(v0 + 8);
LABEL_25:

  return v24();
}

uint64_t sub_1004FA190(uint64_t a1, uint64_t a2)
{
  v3 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1004FA1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1004FA658@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerWalletItems();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1004FA690(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1004F86AC(a1);
}

uint64_t sub_1004FA72C(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_1004FA830(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v3 == 1 && (v4 = SFAirDropReceive.AskRequest.itemsDescription.getter(), v5))
  {
    v6 = v4;
    v7 = v5;
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x5449575F53534150;
    v9 = inited + 32;
    *(inited + 40) = 0xEF454C5449545F48;
    *(inited + 48) = 1;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v9, &qword_100981D40, &unk_1007FA6C0);
    v10 = String._bridgeToObjectiveC()();
    v11 = SFLocalizedStringForKey();

    if (v11)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1007F5670;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_100026764();
      *(v12 + 32) = v6;
      *(v12 + 40) = v7;
LABEL_7:
      static String.localizedStringWithFormat(_:_:)();

      return;
    }
  }

  else
  {
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1007F5670;
    *(v13 + 32) = 1397965136;
    v14 = v13 + 32;
    *(v13 + 40) = 0xE400000000000000;
    *(v13 + 48) = v3;
    sub_1003D8D18(v13, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v14, &qword_100981D40, &unk_1007FA6C0);
    v15 = String._bridgeToObjectiveC()();
    v16 = SFLocalizedStringForKey();

    if (v16)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1007F5670;
      *(v17 + 56) = &type metadata for Int;
      *(v17 + 64) = &protocol witness table for Int;
      *(v17 + 32) = v3;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004FAAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C00;

  return sub_1004F8FB0(a1, a2, a3, v8);
}

unint64_t sub_1004FABA0()
{
  result = qword_100981E40;
  if (!qword_100981E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100981E40);
  }

  return result;
}

uint64_t sub_1004FABEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004FAC34()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981E50);
  v1 = sub_10000C4AC(v0, qword_100981E50);
  if (qword_100973718 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0990);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004FACFC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = sub_1004FC2CC(v2, *(v0 + 33));
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    if (*(v1 + 34) == 1)
    {
      [objc_opt_self() playAlertForType:12];
    }

    v31 = sub_1004FD2D0;
    v32 = v1;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1005CC610;
    v30 = &unk_1008E58D0;
    v7 = _Block_copy(&aBlock);

    [v5 setErrorHandler:v7];
    _Block_release(v7);
    v31 = sub_1004FB378;
    v32 = 0;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1005F14B8;
    v30 = &unk_1008E58F8;
    v8 = _Block_copy(&aBlock);
    [v5 setResponseHandler:v8];
    _Block_release(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v1;
    v31 = sub_1004FD2D8;
    v32 = v9;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1004FB720;
    v30 = &unk_1008E5948;
    v10 = _Block_copy(&aBlock);

    [v5 setDictionaryResponseHandler:v10];
    _Block_release(v10);
    v11 = *(v1 + 24);
    *(v1 + 24) = v5;
    v12 = v5;

    if (qword_1009739A8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100981E50);

    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v2;
      *v18 = v5;
      v18[1] = v2;
      v19 = v14;
      v20 = v2;
      _os_log_impl(&_mh_execute_header, v15, v16, "IncomingAirDropAlert: Presenting AirDrop alert: %@ for transfer %@.", v17, 0x16u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();
    }

    [v14 present];
  }

  else
  {
    if (qword_1009739A8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100981E50);

    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v2;
      *v24 = v2;
      v25 = v2;
      _os_log_impl(&_mh_execute_header, oslog, v22, "Failed to populate AirDrop alert for transfer %@.", v23, 0xCu);
      sub_100005508(v24, &qword_100975400, &qword_1007F65D0);
    }
  }
}

void sub_1004FB1CC(uint64_t a1, uint64_t a2)
{
  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100981E50);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_errorRetain();
    sub_10028088C(&unk_100985A40, &qword_1007FE740);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Alert error handler called with error: %s.", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v11 = [*(a2 + 16) cancelAction];
  if (v11)
  {
    v12 = v11;
    sub_1004FB7B0(v11);
  }
}

void sub_1004FB378(int a1)
{
  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100981E50);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Alert response handler called with: %d.", v4, 8u);
  }
}

void sub_1004FB478(uint64_t a1, uint64_t a2)
{
  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100981E50);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = Dictionary.description.getter();
      v11 = v10;
    }

    else
    {
      v11 = 0xE90000000000003ELL;
      v9 = 0x74636964206F6E3CLL;
    }

    v12 = sub_10000C4E4(v9, v11, v19);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Dictionary response handler called %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  if (a1)
  {
    v18 = SBSUserNotificationButtonDefinitionResponseIndexKey;
    v13 = SBSUserNotificationButtonDefinitionResponseIndexKey;
    sub_10028088C(&unk_100975620, &qword_1007F89E0);
    sub_100294298();
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v14 = sub_100570754(v19), (v15 & 1) != 0))
    {
      sub_10000C5B0(*(a1 + 56) + 32 * v14, v20);
      sub_100285E74(v19);
      if (swift_dynamicCast())
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_16;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v18 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(a2 + 8 * v18 + 32);
LABEL_16:
          v17 = v16;
          sub_1004FB7B0(v16);

          return;
        }

        __break(1u);
      }
    }

    else
    {
      sub_100285E74(v19);
    }
  }
}

uint64_t sub_1004FB720(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_1004FB7B0(void *a1)
{
  [a1 triggerAction];
  *(v1 + 32) = 1;
  v3 = [*(v1 + 16) cancelAction];
  if (v3 && (v4 = v3, sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr), v5 = a1, v6 = static NSObject.== infix(_:_:)(), v4, v5, (v6 & 1) != 0))
  {
    v7 = 2;
  }

  else
  {
    v7 = [a1 shouldUpdateUserResponse];
  }

  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100981E50);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = SFAirDropTransferUserResponseToString();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10000C4E4(v14, v16, &v19);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "User response is %s, dismissing alert.", v11, 0xCu);
    sub_10000C60C(v12);
  }

  return sub_1004FB9C8(v7);
}

uint64_t sub_1004FB9C8(uint64_t a1)
{
  v2 = v1;
  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100981E50);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = [*(v2 + 16) identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10000C4E4(v10, v12, &v20);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Dismiss alert for transfer %s.", v7, 0xCu);
    sub_10000C60C(v8);
  }

  [*(v2 + 24) invalidate];
  v14 = *(v2 + 24);
  *(v2 + 24) = 0;

  v15 = *(v2 + 40);
  if (v15)
  {
    v16 = *(v2 + 48);

    v15(a1);
    sub_100015D04(v15);
    v17 = *(v2 + 40);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v2 + 48);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;

  return sub_100015D04(v17);
}

uint64_t sub_1004FBBC8()
{
  v1 = *(v0 + 48);
  sub_100015D04(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1004FBC34(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100981E50);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = [v11 identifier];
    v27 = a3;
    v16 = a4;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10000C4E4(v17, v19, &v28);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    if (a2)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (a2)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = sub_10000C4E4(v21, v22, &v28);

    *(v14 + 14) = v23;
    a4 = v16;
    a3 = v27;
    _os_log_impl(&_mh_execute_header, v12, v13, "IncomingAirDropAlert created for transfer %s, playSound=%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  *(v5 + 16) = v11;
  *(v5 + 34) = a2 & 1;
  v24 = *(v5 + 40);
  v25 = *(v5 + 48);
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  sub_1000387D0(a3);
  sub_100015D04(v24);
  return v5;
}

void sub_1004FBE7C(int a1, id a2, char a3)
{
  if ([a2 transferState] == 6)
  {
    return;
  }

  v5 = [a2 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a2 metaData];
  v10 = [v9 previewImage];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005508(&v31, &unk_1009746F0, &qword_1007F90B0);
    v11 = [a2 metaData];
    v12 = [v11 contactIdentifier];

    if (v12)
    {

      goto LABEL_6;
    }

    if ((a3 & 1) == 0)
    {
LABEL_12:

      return;
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    sub_100005508(&v31, &unk_1009746F0, &qword_1007F90B0);
    if ((a3 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_6:
  v13 = [objc_allocWithZone(NSExtensionItem) init];
  sub_10028088C(&qword_100985A60, &unk_100808040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *&v31 = 25705;
  *(&v31 + 1) = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v6;
  *(inited + 80) = v8;

  sub_10027FD18(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_1009832B0, &unk_1007F64D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 setUserInfo:isa];

  v16 = objc_opt_self();
  sub_10028088C(&qword_100974F70, &unk_100804260);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007FD580;
  *(v17 + 32) = v13;
  sub_1000276B4(0, &qword_100981FA8, NSExtensionItem_ptr);
  v18 = v13;
  v19 = Array._bridgeToObjectiveC()().super.isa;

  *&v31 = 0;
  v20 = [v16 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v31];

  v21 = v31;
  if (v20)
  {
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (SBUserNotificationExtensionIdentifierKey)
    {
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v32 + 1) = &type metadata for String;
      *&v31 = 0xD000000000000020;
      *(&v31 + 1) = 0x80000001007941F0;
      sub_1002AF99C(&v31, v25, v26);
      if (SBUserNotificationExtensionItemsKey)
      {

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
        *(&v32 + 1) = &type metadata for Data;
        *&v31 = v22;
        *(&v31 + 1) = v24;
        sub_100294008(v22, v24);
        sub_1002AF99C(&v31, v27, v29);

        sub_100026AC0(v22, v24);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v30 = v21;

    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1004FC2CC(void *a1, int a2)
{
  v102 = a2;
  v3 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v104 = &v100 - v8;
  v105 = type metadata accessor for URL();
  v107 = *(v105 - 8);
  v9 = *(v107 + 64);
  __chkstk_darwin(v105);
  v100 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(SFUserAlert) init];
  v12 = [a1 possibleActions];
  sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [a1 cancelAction];
  v113 = a1;
  v15 = [a1 contentsTitle];
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  v16 = [v15 length];
  if (v16 >= 1000)
  {
    v17 = 1000;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v15 substringToIndex:v17];
  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  [v11 setTitle:v18];
  v19 = [v113 contentsDescription];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v101 = v7;
  v20 = [v19 length];
  if (v20 >= 1000)
  {
    v21 = 1000;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v19 substringToIndex:v21];
  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  [v11 setMessage:v22];
  v103 = v11;
  [v11 setHasDefaultButton:0];
  v23 = _swiftEmptyArrayStorage;
  v119 = _swiftEmptyArrayStorage;
  v24 = [v113 needsAction];
  v25 = _swiftEmptyArrayStorage;
  v26 = v13;
  v112 = v13;
  v108 = v14;
  if (v24)
  {
    v109 = v13 >> 62;
    if (v13 >> 62)
    {
      goto LABEL_45;
    }

    v27 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      do
      {
        v28 = 0;
        v29 = v26 & 0xFFFFFFFFFFFFFF8;
        v110 = v26 & 0xFFFFFFFFFFFFFF8;
        v111 = v26 & 0xC000000000000001;
        if (v26 < 0)
        {
          v29 = v26;
        }

        v106 = v29;
        while (1)
        {
          if (v111)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v28 >= *(v110 + 16))
            {
              goto LABEL_44;
            }

            v30 = *(v26 + 8 * v28 + 32);
          }

          v31 = v30;
          v13 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (![v113 userResponse])
          {
            if (v109)
            {
              if (_CocoaArrayWrapper.endIndex.getter() == 1)
              {
LABEL_41:
                result = [v31 singleItemLocalizedTitle];
                if (!result)
                {
                  goto LABEL_92;
                }

                goto LABEL_30;
              }
            }

            else if (*(v110 + 16) == 1)
            {
              goto LABEL_41;
            }
          }

          result = [v31 localizedTitle];
          if (!result)
          {
            goto LABEL_91;
          }

LABEL_30:
          v33 = result;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v34 = objc_allocWithZone(SBSMutableUserNotificationButtonDefinition);
          v35 = String._bridgeToObjectiveC()();

          v36 = [v34 initWithTitle:v35];

          if (!v23[2])
          {
            [v36 setIsPreferredButton:1];
          }

          v37 = [v36 build];
          v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_10028E2FC(0, v23[2] + 1, 1, v23);
          }

          v40 = v23[2];
          v39 = v23[3];
          if (v40 >= v39 >> 1)
          {
            v23 = sub_10028E2FC((v39 > 1), v40 + 1, 1, v23);
          }

          v23[2] = v40 + 1;
          v23[v40 + 4] = v38;
          v41 = v31;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          ++v28;
          v26 = v112;
          if (v13 == v27)
          {
            v25 = v119;
            goto LABEL_47;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v42 = _CocoaArrayWrapper.endIndex.getter();
        v26 = v13;
        v27 = v42;
      }

      while (v42);
    }

    v25 = v23;
LABEL_47:
    v14 = v108;
  }

  if (v14)
  {
    v43 = v14;
    result = [v43 localizedTitle];
    if (!result)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v44 = result;
    v45 = [objc_allocWithZone(SBSMutableUserNotificationButtonDefinition) initWithTitle:result];

    v46 = [v45 build];
    v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (v25 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 2)
      {
        goto LABEL_52;
      }
    }

    else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
LABEL_52:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_10028E2FC(0, v23[2] + 1, 1, v23);
      }

      v49 = v23[2];
      v48 = v23[3];
      if (v49 >= v48 >> 1)
      {
        v23 = sub_10028E2FC((v48 > 1), v49 + 1, 1, v23);
      }

      v23[2] = v49 + 1;
      v23[v49 + 4] = v47;
      v50 = v43;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v99 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_66:

      goto LABEL_67;
    }

    v51 = v23[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v23;
    if (!isUniquelyReferenced_nonNull_native || v51 >= v23[3] >> 1)
    {
      v23 = sub_10028E2FC(isUniquelyReferenced_nonNull_native, v51 + 1, 1, v23);
      v120 = v23;
    }

    sub_10057F0D0(0, 0, 1, v47);

    if (v25 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }
    }

    sub_10057F2EC(0, 0, v43);
    v50 = v45;
    v45 = v43;
    goto LABEL_66;
  }

LABEL_67:
  sub_10028088C(&unk_100987070, &unk_10080DA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  result = kCFUserNotificationAlertTopMostKey;
  if (!kCFUserNotificationAlertTopMostKey)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v54;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  result = SBUserNotificationDontDismissOnUnlock;
  if (!SBUserNotificationDontDismissOnUnlock)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v55;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  result = SBUserNotificationDismissOnLock;
  if (!SBUserNotificationDismissOnLock)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v56;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 0;
  result = SBUserNotificationAllowLockscreenDismissalKey;
  if (!SBUserNotificationAllowLockscreenDismissalKey)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v57;
  *(inited + 192) = 0;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD00000000000001DLL;
  *(inited + 264) = &type metadata for String;
  *(inited + 232) = 0x8000000100794170;
  *(inited + 240) = 0xD000000000000020;
  *(inited + 248) = 0x8000000100794190;
  v58 = sub_100011040(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_1009744D0, &qword_1007F8A20);
  swift_arrayDestroy();
  v118 = v58;
  result = SBSUserNotificationButtonDefinitionsKey;
  if (!SBSUserNotificationButtonDefinitionsKey)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  v117 = sub_10028088C(&qword_100974BE0, &qword_1007F7B20);
  *&v116 = v23;
  sub_1000106E0(&v116, v115);

  v62 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v58;
  sub_100011170(v115, v59, v61, v62);

  v118 = v114;
  v63 = String._bridgeToObjectiveC()();
  v64 = [objc_opt_self() bundleWithIdentifier:v63];

  if (!v64)
  {

    v72 = v104;
    (*(v107 + 56))(v104, 1, 1, v105);
LABEL_79:

    sub_100005508(v72, &unk_100974E00, &qword_1007F8940);
    v73 = v103;
    if (qword_1009739A8 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_10000C4AC(v74, qword_100981E50);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Could not find assets catalog.", v77, 2u);
    }

    goto LABEL_87;
  }

  v65 = String._bridgeToObjectiveC()();
  v66 = String._bridgeToObjectiveC()();
  v67 = [v64 URLForResource:v65 withExtension:v66];

  if (v67)
  {
    v68 = v101;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = 0;
    v70 = v105;
    v71 = v107;
  }

  else
  {
    v69 = 1;
    v70 = v105;
    v71 = v107;
    v68 = v101;
  }

  (*(v71 + 56))(v68, v69, 1, v70);
  v72 = v104;
  sub_1003332E8(v68, v104);
  if ((*(v71 + 48))(v72, 1, v70) == 1)
  {

    goto LABEL_79;
  }

  v78 = v100;
  (*(v71 + 32))(v100, v72, v70);
  result = SBUserNotificationIconImageAssetCatalogPathKey;
  if (!SBUserNotificationIconImageAssetCatalogPathKey)
  {
    goto LABEL_99;
  }

  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;
  v82 = URL.path.getter();
  v117 = &type metadata for String;
  *&v116 = v82;
  *(&v116 + 1) = v83;
  sub_1000106E0(&v116, v115);
  v84 = v118;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v84;
  sub_100011170(v115, v79, v81, v85);

  v118 = v114;
  if (!SBUserNotificationIconImageAssetCatalogImageKey)
  {
LABEL_100:
    __break(1u);
    return result;
  }

  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v87;
  v117 = &type metadata for String;
  *&v116 = 0x706F7244726941;
  *(&v116 + 1) = 0xE700000000000000;
  sub_1000106E0(&v116, v115);
  v89 = v118;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v89;
  sub_100011170(v115, v86, v88, v90);

  (*(v107 + 8))(v78, v70);
  v118 = v114;
  v73 = v103;
LABEL_87:
  v91 = [v113 metaData];
  v92 = [v91 contactIdentifier];

  if (v92)
  {
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v117 = &type metadata for String;
    *&v116 = v93;
    *(&v116 + 1) = v95;
    sub_1000106E0(&v116, v115);
    v96 = v118;
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v96;
    sub_100011170(v115, 0xD000000000000023, 0x80000001007941C0, v97);
    v118 = v114;
  }

  sub_1004FBE7C(&v118, v113, v102 & 1);
  sub_1003CE294(v118);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v73 setAdditionalInfo:isa];

  return v73;
}

uint64_t Optional.tryAuthUnwrap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v12);
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a4, v11, v13);
  }

  (*(v8 + 8))(v11, a3);

  v15 = sub_100010F88(10, a1, a2);
  v17 = v16;
  sub_1000115C8();
  swift_allocError();
  *v18 = v15;
  *(v18 + 8) = v17;
  return swift_willThrow();
}

uint64_t sub_1004FD4B0(uint64_t a1, int a2)
{
  v58 = a2;
  v57 = *&a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  __chkstk_darwin(v4);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  v7 = *(v66 + 64);
  __chkstk_darwin(v68);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchTimeInterval();
  v59 = *(v64 - 8);
  v9 = *(v59 + 64);
  v10 = __chkstk_darwin(v64);
  v63 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v54 - v12;
  v13 = type metadata accessor for DispatchTime();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v20 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v29 = v30;
  (*(v26 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v25);
  v56 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v29, v25);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_8;
  }

  v55 = v2;
  v54 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer;
  if (*&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  if (v58)
  {
    v3 = 15.0;
  }

  else
  {
    v3 = v57;
  }

  sub_1000276B4(0, &qword_10097DBA0, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1004FFF00(&unk_100977390, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10028088C(&qword_1009820E0, &qword_1008085E0);
  sub_100011630(qword_1009773A0, &qword_1009820E0, &qword_1008085E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v21 + 8))(v24, v20);
  swift_getObjectType();
  static DispatchTime.now()();
  + infix(_:_:)();
  v32 = v61;
  v60 = *(v60 + 8);
  (v60)(v17, v61);
  v33 = v59;
  v34 = v62;
  v35 = v64;
  (*(v59 + 104))(v62, enum case for DispatchTimeInterval.never(_:), v64);
  v36 = v63;
  sub_1002EABF8(v63);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v37 = *(v33 + 8);
  v37(v36, v35);
  v37(v34, v35);
  v38 = v31;
  (v60)(v19, v32);
  v39 = swift_allocObject();
  v24 = v55;
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004FFEF8;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E5B38;
  v40 = _Block_copy(aBlock);

  v41 = v65;
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
  v42 = v67;
  sub_1005944AC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v40);
  (*(v69 + 8))(v42, v70);
  (*(v66 + 8))(v41, v68);

  v43 = *&v24[v54];
  *&v24[v54] = v38;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (qword_1009739B8 != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v44 = type metadata accessor for Logger();
  sub_10000C4AC(v44, qword_100981FB0);
  v45 = v24;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315394;
    type metadata accessor for UUID();
    sub_1004FFF00(&qword_100978CE0, &type metadata accessor for UUID);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = sub_10000C4E4(v50, v51, aBlock);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2048;
    *(v48 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v46, v47, "Starting response timer for %s to fire in %f sec", v48, 0x16u);
    sub_10000C60C(v49);
  }

  OS_dispatch_source.activate()();
  return swift_unknownObjectRelease();
}

uint64_t sub_1004FDD9C()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer;
  if (!*&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer])
  {
    return result;
  }

  v11 = qword_1009739B8;
  v12 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer];
  swift_unknownObjectRetain();
  if (v11 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100981FB0);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    type metadata accessor for UUID();
    sub_1004FFF00(&qword_100978CE0, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_10000C4E4(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Canceling response timer for %s", v17, 0xCu);
    sub_10000C60C(v18);
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v22 = *&v2[v1];
  *&v2[v1] = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1004FE068(uint64_t a1)
{
  if ((a1 - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return qword_100808968[a1 - 1];
  }
}

uint64_t sub_1004FE08C(unint64_t a1)
{
  if (a1 > 0x17)
  {
    return 3;
  }

  else
  {
    return byte_100808A08[a1];
  }
}

uint64_t sub_1004FE0AC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_1009739B8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100981FB0);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    type metadata accessor for UUID();
    sub_1004FFF00(&qword_100978CE0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = sub_10000C4E4(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Invalidating %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  return sub_1004FDD9C();
}

uint64_t SFAuthenticationErrorCode.description.getter()
{
  v0 = SFAuthenticationErrorCodeToString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t sub_1004FE388(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_10028088C(&qword_1009820C0, &qword_1008085C8);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_10028088C(&qword_1009820C8, &qword_1008085D0);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = sub_10028088C(&unk_1009820D0, &qword_1008085D8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004FFDFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1004FFE50();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1004FFEA4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_1004FE644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1801678668 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955787 && a2 == 0xE300000000000000)
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

uint64_t sub_1004FE720(uint64_t a1)
{
  v2 = sub_1004FFDFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004FE75C(uint64_t a1)
{
  v2 = sub_1004FFDFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004FE7A4(uint64_t a1)
{
  v2 = sub_1004FFE50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004FE7E0(uint64_t a1)
{
  v2 = sub_1004FFE50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004FE81C(uint64_t a1)
{
  v2 = sub_1004FFEA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004FE858(uint64_t a1)
{
  v2 = sub_1004FFEA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004FE894@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004FF788(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1004FE8E0(unint64_t a1)
{
  v2 = SFDeviceClassCodeGet();
  v3 = sub_100027628(a1);
  v4 = sub_10000EF9C(8u, v3);

  if (v4)
  {
    if (!SFDeviceIsRealityDevice())
    {
      goto LABEL_3;
    }

LABEL_6:
    if (a1 >= 0x17)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0x19A71u >> a1;
    }

    return v5 & 1;
  }

  v6 = sub_100027628(a1);
  v7 = sub_10000EF9C(v2, v6);

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 0x7E658Eu >> a1;
  if (a1 >= 0x17)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

unint64_t sub_1004FE99C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1004FF754(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1004FEA04(uint64_t a1)
{
  v2 = sub_1004FFF00(&qword_1009744A0, type metadata accessor for SFAuthenticationErrorCode);

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1004FEA70(uint64_t a1)
{
  v2 = sub_1004FFF00(&qword_1009744A0, type metadata accessor for SFAuthenticationErrorCode);

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1004FEADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004FFF00(&qword_1009744A0, type metadata accessor for SFAuthenticationErrorCode);

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t sub_1004FEB60()
{
  v1 = *v0;
  v2 = SFAuthenticationErrorCodeToString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1004FEBB0()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1009A0C10 = result;
  *algn_1009A0C18 = v1;
  return result;
}

Swift::Int sub_1004FEBE0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 2006);
  return Hasher._finalize()();
}

Swift::Int sub_1004FEC58()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 2006);
  return Hasher._finalize()();
}

uint64_t sub_1004FEC9C@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004FFD78(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1004FECE8(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
    case 6:
      result = 0xD000000000000024;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1004FEE3C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981FB0);
  v1 = sub_10000C4AC(v0, qword_100981FB0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004FEF04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x100))();
  }
}

id sub_1004FEFC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAuthenticationSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004FF0E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1004FF170@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  return sub_1004FFD8C(v3 + v4, a1);
}

uint64_t sub_1004FF1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *v6;
  v11 = *a4;
  swift_beginAccess();
  sub_10000C788(a1, v10 + v11, a5, a6);
  return swift_endAccess();
}

uint64_t sub_1004FF2B4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 14;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004FF2E8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004FF3F8()
{
  result = qword_100981FE8;
  if (!qword_100981FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981FE8);
  }

  return result;
}

uint64_t type metadata accessor for SDAuthenticationSession()
{
  result = qword_100982048;
  if (!qword_100982048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004FF4E8()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1004FF5C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1004FF610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004FF664()
{
  result = qword_100982058;
  if (!qword_100982058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982058);
  }

  return result;
}

unint64_t sub_1004FF700()
{
  result = qword_100982070;
  if (!qword_100982070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982070);
  }

  return result;
}

unint64_t sub_1004FF754(unint64_t result)
{
  if (result > 0x17 || ((1 << result) & 0xFE7FFF) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1004FF788(uint64_t *a1)
{
  v29 = sub_10028088C(&qword_100982088, &qword_1008085A8);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v29);
  v4 = v25 - v3;
  v5 = sub_10028088C(&qword_100982090, &qword_1008085B0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = sub_10028088C(&qword_100982098, &qword_1008085B8);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v13 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004FFDFC();
  v14 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_10000C60C(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = KeyedDecodingContainer.allKeys.getter();
  if (*(v18 + 16) != 1)
  {
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v23 = *(sub_10028088C(&qword_1009820A8, &qword_1008085C0) + 48);
    *v22 = &type metadata for SDAuthenticationRole;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_10000C60C(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_1004FFE50();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_1004FFEA4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  sub_10000C60C(v31);
  return v32;
}

uint64_t sub_1004FFBC4(void *a1, uint64_t a2)
{
  v4 = [a1 code];
  if (v4 == -6727)
  {
    a2 = 20;
  }

  else if (v4 == -6722)
  {
    a2 = 12;
  }

  sub_100011040(_swiftEmptyArrayStorage);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v21 = sub_1000276B4(0, &qword_1009753F0, NSError_ptr);
  *&v20 = a1;
  sub_1000106E0(&v20, v19);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100011170(v19, v5, v7, isUniquelyReferenced_nonNull_native);

  v10 = [v8 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v21 = &type metadata for String;
  *&v20 = v11;
  *(&v20 + 1) = v13;
  sub_1000106E0(&v20, v19);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100011170(v19, v14, v16, v17);

  return a2;
}

uint64_t sub_1004FFD78(int a1)
{
  if ((a1 - 2006) >= 0xD)
  {
    return 13;
  }

  else
  {
    return (a1 - 2006);
  }
}

uint64_t sub_1004FFD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100982080, &unk_1007FDD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004FFDFC()
{
  result = qword_1009820A0;
  if (!qword_1009820A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009820A0);
  }

  return result;
}

unint64_t sub_1004FFE50()
{
  result = qword_1009820B0;
  if (!qword_1009820B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009820B0);
  }

  return result;
}

unint64_t sub_1004FFEA4()
{
  result = qword_1009820B8;
  if (!qword_1009820B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009820B8);
  }

  return result;
}

uint64_t sub_1004FFF00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SDAuthenticationTransportMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDAuthenticationTransportMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100500110()
{
  result = qword_1009820F8;
  if (!qword_1009820F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009820F8);
  }

  return result;
}

unint64_t sub_100500168()
{
  result = qword_100982100;
  if (!qword_100982100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982100);
  }

  return result;
}

unint64_t sub_1005001C0()
{
  result = qword_100982108;
  if (!qword_100982108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982108);
  }

  return result;
}

unint64_t sub_100500218()
{
  result = qword_100982110;
  if (!qword_100982110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982110);
  }

  return result;
}

unint64_t sub_100500270()
{
  result = qword_100982118;
  if (!qword_100982118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982118);
  }

  return result;
}

unint64_t sub_1005002C8()
{
  result = qword_100982120;
  if (!qword_100982120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982120);
  }

  return result;
}

unint64_t sub_100500320()
{
  result = qword_100982128;
  if (!qword_100982128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982128);
  }

  return result;
}

unint64_t sub_100500378()
{
  result = qword_100982130;
  if (!qword_100982130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982130);
  }

  return result;
}

uint64_t sub_1005003E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005004E4, v6, 0);
}

uint64_t sub_1005004E4()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100500580;
  v3 = v0[2];

  return sub_100419510(v3);
}

uint64_t sub_100500580(char a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100500698, v3, 0);
}

void sub_100500698()
{
  if (*(v0 + 72) == 1)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 16);
    v3 = SFAirDropReceive.AskRequest.files.getter();
    v4 = 0;
    v11 = *(v3 + 16);
    while (1)
    {
      v5 = v11 == v4;
      if (v11 == v4)
      {
LABEL_6:

        goto LABEL_8;
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      v6 = *(v0 + 48);
      v7 = *(v0 + 32);
      (*(v1 + 16))(v6, v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v4++, v7);
      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      (*(v1 + 8))(v6, v7);
      v8 = String._bridgeToObjectiveC()();

      LOBYTE(v7) = SFIsPDF();

      if ((v7 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
LABEL_8:
    v9 = *(v0 + 48);

    v10 = *(v0 + 8);

    v10(v5);
  }
}

uint64_t sub_10050080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a1;
  v5 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v35 - v8;
  v41 = type metadata accessor for URL();
  v39 = *(v41 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v41);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SFPlatform();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v3 + 16);
  if (SFFilesAppAvailable())
  {
    v35 = a3;
    static SFPlatform.visionOS.getter();
    v22 = static SFPlatform.isPlatform(_:)();
    v23 = *(v17 + 8);
    v23(v20, v16);
    if (v22)
    {
      v24 = 0;
    }

    else
    {
      static SFPlatform.macOS.getter();
      v25 = static SFPlatform.isPlatform(_:)();
      v23(v20, v16);
      if (v25)
      {
        v24 = 1;
      }

      else
      {
        v24 = *(v21 + 24) ^ 1;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  (*(v12 + 16))(v15, v42, v11);
  if ((*(v12 + 88))(v15, v11) == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    (*(v12 + 96))(v15, v11);
    v27 = v38;
    v26 = v39;
    v28 = v41;
    (*(v39 + 32))(v38, v15, v41);
    v29 = v40;
    (*(v26 + 16))(v40, v27, v28);
    (*(v26 + 56))(v29, 0, 1, v28);
    v44 = 0;
    v30 = v37;
    sub_100333278(v29, v37);
    v31 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v32 = swift_allocObject();
    sub_1003332E8(v30, v32 + v31);
    *(v32 + ((v6 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v29, &unk_100974E00, &qword_1007F8940);
    return (*(v26 + 8))(v27, v28);
  }

  else
  {
    v44 = 0;
    v34 = swift_allocObject();
    *(v34 + 16) = v43;
    *(v34 + 24) = v24 & 1;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_100500DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v20 = a2;
  v6 = type metadata accessor for SFPlatform();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  static SFPlatform.iOS.getter();
  v17 = static SFPlatform.isPlatform(_:)();
  (*(v7 + 8))(v10, v6);
  if (v17)
  {
    *v15 = 0xD000000000000011;
    *(v15 + 1) = 0x8000000100788500;
    (*(v12 + 104))(v15, enum case for SFAirDropReceive.ItemDestination.customApp(_:), v11);
  }

  else
  {
    (*(v12 + 16))(v15, v20, v11);
  }

  sub_100419DB8(a1, v15, a3);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100500FD0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPDFs();
  v2 = swift_allocObject();
  type metadata accessor for SDAirDropContentHandlerGenericFiles();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_100501028(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1005003E8(a1);
}

void sub_10050113C(uint64_t a1, char a2)
{
  v4 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v4 < 2)
  {

    sub_1003D8E44(a1, a2 & 1);
  }

  else
  {
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 4605008;
    v6 = inited + 32;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v4;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v6, &qword_100981D40, &unk_1007FA6C0);
    v7 = String._bridgeToObjectiveC()();
    v8 = SFLocalizedStringForKey();

    if (v8)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007F5670;
      *(v9 + 56) = &type metadata for Int;
      *(v9 + 64) = &protocol witness table for Int;
      *(v9 + 32) = v4;
      static String.localizedStringWithFormat(_:_:)();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005012F0(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((SFFilesAppAvailable() & 1) == 0)
  {
    (*(v3 + 16))(v6, a1, v2);
    v9 = (*(v3 + 88))(v6, v2);
    if (v9 == enum case for SFAirDropReceive.ItemDestination.customApp(_:))
    {
      (*(v3 + 96))(v6, v2);
      if (*v6 != 0xD000000000000034 || 0x800000010078AA10 != v6[1])
      {
        v11 = v6[1];
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v12 ^ 1;
        return v7 & 1;
      }

      v13 = v6[1];
    }

    else if (v9 != enum case for SFAirDropReceive.ItemDestination.noItem(_:))
    {
      (*(v3 + 8))(v6, v2);
      v7 = 1;
      return v7 & 1;
    }
  }

  v7 = 0;
  return v7 & 1;
}

void sub_10050149C()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener;
  if (!*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener])
  {
    if (qword_1009739C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100982220);
    v3 = v0;
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      type metadata accessor for UUID();
      sub_100005478(&qword_100978CE0, &type metadata accessor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = sub_10000C4E4(v9, v10, &v21);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting AirDrop Near Field Server for transaction %s", v7, 0xCu);
      sub_10000C60C(v8);
    }

    sub_100636164(*&v4[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_localIdentity]);
    v12 = NWParameters.nw.getter();
    v13 = nw_listener_create(v12);
    swift_unknownObjectRelease();
    if (v13)
    {
      type metadata accessor for NWListener();
      swift_unknownObjectRetain();
      v14 = NWListener.__allocating_init(_:)();
      v15 = *&v3[v1];
      *&v3[v1] = v14;

      v16 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_networkListener];
      *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_networkListener] = v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v17 = swift_allocObject();
      *(v17 + 16) = v4;
      *(v17 + 24) = v14;
      v18 = v4;

      NWListener.stateUpdateHandler.setter();
      *(swift_allocObject() + 16) = v18;
      v19 = v18;
      NWListener.newConnectionHandler.setter();
      v20 = *&v19[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_queue];
      NWListener.start(queue:)();

      swift_unknownObjectRelease();
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t sub_100501834(unint64_t a1, char **a2)
{
  v38 = type metadata accessor for NWConnection.State();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v38);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v31 - v9;
  if (qword_100973790 != -1)
  {
LABEL_28:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097AD70);
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v32 = v11;
  if (v14)
  {
    v37 = v5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v42 = v16;
    *v15 = 136315138;
    if (*(v11 + *a1))
    {
      if (*(v11 + *a1) == 1)
      {
        a1 = 0xEE00726576726553;
        v17 = 0x2072756F6A6E6F42;
      }

      else
      {
        a1 = 0xEA0000000000646CLL;
        v17 = 0x656946207261654ELL;
      }
    }

    else
    {
      a1 = 0x800000010078D790;
      v17 = 0xD00000000000001ALL;
    }

    v18 = sub_10000C4E4(v17, a1, &v42);

    *(v15 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Cleaning up connections for %s", v15, 0xCu);
    sub_10000C60C(v16);

    v5 = v37;
  }

  else
  {
  }

  v19 = *a2;
  v2 = v32;
  swift_beginAccess();
  v20 = *&v19[v2];
  v41 = _swiftEmptyArrayStorage;
  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {
    v31 = v19;
    v22 = 0;
    v37 = v20 & 0xC000000000000001;
    v35 = v21;
    v36 = v20 & 0xFFFFFFFFFFFFFF8;
    v34 = enum case for NWConnection.State.cancelled(_:);
    v33 = (v5 + 104);
    a2 = (v5 + 8);
    while (1)
    {
      if (v37)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v28 = v41;
          v19 = v31;
          v2 = v32;
          goto LABEL_26;
        }
      }

      else
      {
        if (v22 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v24 = *(v20 + 8 * v22 + 32);

        v5 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_23;
        }
      }

      v25 = v39;
      NWConnection.state.getter();
      v26 = v40;
      v2 = v38;
      (*v33)(v40, v34, v38);
      sub_100005478(&qword_1009822A0, &type metadata accessor for NWConnection.State);
      a1 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *a2;
      (*a2)(v26, v2);
      (v27)(v25, v2);
      if (a1)
      {
      }

      else
      {
        v2 = &v41;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v23 = v41[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v22;
      if (v5 == v35)
      {
        goto LABEL_24;
      }
    }
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_26:

  v29 = *&v19[v2];
  *&v19[v2] = v28;
}

uint64_t sub_100501CBC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982220);
  v1 = sub_10000C4AC(v0, qword_100982220);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100501D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NWListener.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v13;
  (*(v6 + 32))(&v15[v14], &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v15[(v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;

  sub_1002B3398(0, 0, v11, &unk_100808C20, v15);
}

uint64_t sub_100501FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return _swift_task_switch(sub_100501FC8, 0, 0);
}

uint64_t sub_100501FC8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_1005020C4;
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);

    return sub_1005021D8(v5, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1005020C4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100369FD4, 0, 0);
}

uint64_t sub_1005021D8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for NWError();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for NWListener.State();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v3[17] = static AirDropActor.shared;

  return _swift_task_switch(sub_100502358, v10, 0);
}

uint64_t sub_100502358()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 16))(v1, v0[5], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for NWListener.State.waiting(_:))
  {
    v5 = v0[16];
    v6 = v0[13];
    v7 = v0[8];
    v8 = v0[9];
    (*(v0[15] + 96))(v5, v0[14]);
    (*(v8 + 32))(v6, v5, v7);
    if (qword_1009739C0 != -1)
    {
      swift_once();
    }

    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[8];
    v12 = v0[9];
    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100982220);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[8];
    v21 = v0[9];
    if (v17)
    {
      v83 = v14;
      v22 = swift_slowAlloc();
      v84 = v18;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      sub_100005478(&qword_100977BF8, &type metadata accessor for NWError);
      swift_allocError();
      v83(v24, v19, v20);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v21 + 8);
      v26(v19, v20);
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "AirDrop Near Field server waiting with error %@", v22, 0xCu);
      sub_10028924C(v23);

      v26(v84, v20);
    }

    else
    {

      v47 = *(v21 + 8);
      v47(v19, v20);
      v47(v18, v20);
    }

    goto LABEL_42;
  }

  if (v4 != enum case for NWListener.State.failed(_:))
  {
    if (v4 == enum case for NWListener.State.setup(_:))
    {
      if (qword_1009739C0 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10000C4AC(v48, qword_100982220);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_18;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "AirDrop Near Field server setting up";
    }

    else
    {
      if (v4 == enum case for NWListener.State.ready(_:))
      {
        if (qword_1009739C0 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_10000C4AC(v59, qword_100982220);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "AirDrop Near Field server ready", v62, 2u);
        }

        v63 = v0[7];

        sub_1005034B4();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v65 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServerErrors;
          v66 = Strong;
          swift_beginAccess();
          v67 = *(v66 + v65);
          *(v66 + v65) = _swiftEmptySetSingleton;

          swift_unknownObjectRelease();
        }

        goto LABEL_42;
      }

      if (v4 != enum case for NWListener.State.cancelled(_:))
      {
        if (qword_1009739C0 != -1)
        {
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        sub_10000C4AC(v70, qword_100982220);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&_mh_execute_header, v71, v72, "Unknown AirDrop Near Field server state", v73, 2u);
        }

        v75 = v0[15];
        v74 = v0[16];
        v76 = v0[14];

        (*(v75 + 8))(v74, v76);
        goto LABEL_42;
      }

      if (qword_1009739C0 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_10000C4AC(v69, qword_100982220);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_18;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "AirDrop Near Field server stopped";
    }

    _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);

LABEL_18:

LABEL_42:
    v77 = v0[16];
    v78 = v0[12];
    v79 = v0[13];
    v81 = v0[10];
    v80 = v0[11];

    v82 = v0[1];

    return v82();
  }

  v27 = v0[16];
  v28 = v0[11];
  v29 = v0[8];
  v30 = v0[9];
  (*(v0[15] + 96))(v27, v0[14]);
  (*(v30 + 32))(v28, v27, v29);
  if (qword_1009739C0 != -1)
  {
    swift_once();
  }

  v31 = v0[10];
  v32 = v0[11];
  v33 = v0[8];
  v34 = v0[9];
  v35 = type metadata accessor for Logger();
  sub_10000C4AC(v35, qword_100982220);
  v36 = *(v34 + 16);
  v36(v31, v32, v33);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v39 = os_log_type_enabled(v37, v38);
  v41 = v0[9];
  v40 = v0[10];
  v42 = v0[8];
  if (v39)
  {
    v43 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v43 = 138412290;
    sub_100005478(&qword_100977BF8, &type metadata accessor for NWError);
    swift_allocError();
    v36(v44, v40, v42);
    v45 = _swift_stdlib_bridgeErrorToNSError();
    v46 = *(v41 + 8);
    v46(v40, v42);
    *(v43 + 4) = v45;
    *v85 = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop Near Field server failed with error %@", v43, 0xCu);
    sub_10028924C(v85);
  }

  else
  {

    v46 = *(v41 + 8);
    v46(v40, v42);
  }

  v0[18] = v46;
  v54 = v0[6];
  v53 = v0[7];
  NWListener.cancel()();
  v55 = swift_unknownObjectWeakLoadStrong();
  v0[19] = v55;
  if (!v55)
  {
    v68 = v0[9] + 8;
    (v0[18])(v0[11], v0[8]);
    goto LABEL_42;
  }

  v56 = swift_task_alloc();
  v0[20] = v56;
  *v56 = v0;
  v56[1] = sub_10040A960;
  v57 = v0[11];

  return sub_10035E6D4(0, v57);
}

uint64_t sub_100502CCC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;

  sub_1002B3398(0, 0, v5, &unk_100808BF8, v8);
}

uint64_t sub_100502E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100502E24, 0, 0);
}

uint64_t sub_100502E24()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v3 = static AirDropActor.shared;

    return _swift_task_switch(sub_100502F20, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100502F20()
{
  v1 = *(v0 + 64);
  sub_100502F8C(*(v0 + 56));

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_100502F8C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  sub_100501834(&OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_serverType, &OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_connections);
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_connections;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v22 = *((*(v1 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_transactionID;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + v13, v4);
  v16 = qword_1009735E0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;
  v18 = sub_100005478(&qword_100977C00, type metadata accessor for AirDropActor);
  v19 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = v18;
  *(v20 + 4) = a1;
  *(v20 + 5) = v15;
  (*(v5 + 32))(&v20[v19], v7, v4);

  sub_1002B3098(0, 0, v11, &unk_100808C08, v20);
}

uint64_t sub_1005032C0()
{
  if (qword_1009739C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100982220);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    type metadata accessor for UUID();
    sub_100005478(&qword_100978CE0, &type metadata accessor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10000C4E4(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping AirDrop Near Field Server for transaction %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  sub_100374AA0();
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener;
  if (*&v2[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener])
  {
    v11 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener];

    NWListener.cancel()();

    v12 = *&v2[v10];
  }

  *&v2[v10] = 0;
}

void sub_1005034B4()
{
  if (*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_networkListener])
  {
    v1 = qword_1009739C0;
    v2 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_networkListener];
    swift_unknownObjectRetain();
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100982220);
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_remotePublicKey];
      v10 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_remotePublicKey + 8];
      v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
      *(v7 + 4) = v11;
      v8->super.isa = v11.super.isa;
      _os_log_impl(&_mh_execute_header, v5, v6, "Setting Near Field server advertised remote public keys to %@", v7, 0xCu);
      sub_10028924C(v8);
    }

    UUID.uuidString.getter();
    v12 = String.utf8CString.getter();

    v13 = String.utf8CString.getter();
    v14 = String.utf8CString.getter();
    nw_endpoint_create_bonjour_service((v12 + 32), (v13 + 32), (v14 + 32));

    sub_10028088C(&unk_100985A50, &qword_1007F8340);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007F5670;
    v16 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_remotePublicKey];
    v17 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_remotePublicKey + 8];
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    sub_100294008(v16, v17);
    isa = Array._bridgeToObjectiveC()().super.isa;

    nw_endpoint_set_public_keys();

    nw_array_create();
    sub_1001BCAD8();
    nw_listener_set_advertise_endpoints();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009739C0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100982220);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v20, "No listener available to add advertised endpoints", v21, 2u);
    }
  }
}

uint64_t sub_100503838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = type metadata accessor for SDAirDropServerConnection(0);
  v6[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_100503908, v9, 0);
}

uint64_t sub_100503908()
{
  v27 = v0;
  if (qword_1009739C0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100982220);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    v0[5] = v5;
    type metadata accessor for NWConnection();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v26);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirDrop Near Field server received connection: %s", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v11 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = swift_unknownObjectWeakLoadStrong(), v0[11] = v14, v13, v14))
  {
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];
    v18 = v0[6];
    v19 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    *v15 = v18;
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 16))(&v15[v19], v17, v20);
    swift_storeEnumTagMultiPayload();

    v21 = swift_task_alloc();
    v0[12] = v21;
    *v21 = v0;
    v21[1] = sub_100503C00;
    v22 = v0[10];

    return sub_100359E00(v22);
  }

  else
  {
    v24 = v0[10];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_100503C00()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v8 = *v0;

  swift_unknownObjectRelease();
  sub_100375730(v4);
  v5 = *(v1 + 80);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t type metadata accessor for SDAirDropNearFieldServer()
{
  result = qword_100982290;
  if (!qword_100982290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100503ED0()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100503FE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100502E00(a1, v4, v5, v7, v6);
}

uint64_t sub_1005040A4(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_100503838(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1005041A8(uint64_t a1)
{
  v4 = *(type metadata accessor for NWListener.State() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_100501FA4(a1, v6, v7, v8, v1 + v5, v9);
}

Swift::Int sub_1005042E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100504350()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void sub_100504390(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005043F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100332530();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_100504438()
{
  result = qword_1009822A8;
  if (!qword_1009822A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009822A8);
  }

  return result;
}

uint64_t sub_10050448C()
{
  v0 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = qword_1009735E0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v8 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v5;

  sub_1002B3398(0, 0, v3, &unk_100809038, v9);
}

uint64_t sub_100504674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_100504714, v5, 0);
}

uint64_t sub_100504714()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_100504808;

    return sub_100504934();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100504808()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_1002F7F9C, v3, 0);
}

uint64_t sub_100504934()
{
  v1[2] = v0;
  v2 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDropReceive.Transfer();
  v1[15] = v14;
  v15 = *(v14 - 8);
  v1[16] = v15;
  v16 = *(v15 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;
  v1[19] = static AirDropActor.shared;

  return _swift_task_switch(sub_100504BC4, v17, 0);
}

uint64_t sub_100504BC4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  v2 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  v3 = swift_allocError();
  v0[20] = v3;
  (*(*(v2 - 8) + 104))(v4, enum case for SFAirDropReceive.Failure.receiverCancelled(_:), v2);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_100504D04;

  return sub_100641284(v3);
}

uint64_t sub_100504D04()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return _swift_task_switch(sub_100504E30, v3, 0);
}

uint64_t sub_100504E30()
{
  v80 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = *(v0[2] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  (*(v4 + 16))(v2, v1, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  if (v8)
  {
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    v15 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79 = v78;
    *v15 = 136315138;
    v77 = v11;
    SFAirDropReceive.Transfer.id.getter();
    sub_100530ED4(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v7;
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    v19 = *(v10 + 8);
    v19(v9, v77);
    v20 = sub_10000C4E4(v16, v18, &v79);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v76, "Receiver cancelled transfer %s", v15, 0xCu);
    sub_10000C60C(v78);
  }

  else
  {

    v19 = *(v10 + 8);
    v19(v9, v11);
  }

  v21 = v0[18];
  v23 = v0[10];
  v22 = v0[11];
  v24 = v0[9];
  SFAirDropReceive.Transfer.state.getter();
  v25 = (*(v23 + 88))(v22, v24);
  if (v25 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    goto LABEL_5;
  }

  if (v25 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    v33 = v0[18];
    v34 = v0[15];
    v35 = v0[16];
    v36 = v0[11];
    v38 = v0[4];
    v37 = v0[5];
    v39 = v0[3];
    (*(v0[10] + 96))(v36, v0[9]);
    v40 = &qword_10097C688;
    v41 = &unk_1008042A0;
LABEL_8:
    v42 = sub_10028088C(v40, v41);
    (*(v38 + 32))(v37, v36 + *(v42 + 48), v39);
    SFAirDrop.PermissionRequest.cancel()();
    (*(v38 + 8))(v37, v39);
    v19(v33, v34);
    v43 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_14:
    (*(*(v43 - 8) + 8))(v36, v43);
    goto LABEL_15;
  }

  if (v25 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
  {
LABEL_5:
    v26 = v0[18];
    v27 = v0[15];
    v28 = v0[16];
    v29 = v0[11];
    v30 = v0[8];
    v31 = v0[6];
    v32 = v0[7];
    (*(v0[10] + 96))(v29, v0[9]);
    (*(v32 + 32))(v30, v29, v31);
    SFAirDrop.PermissionRequest.cancel()();
    (*(v32 + 8))(v30, v31);
    v19(v26, v27);
    goto LABEL_15;
  }

  if (v25 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:) || v25 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:))
  {
    v44 = v0[18];
    v45 = v0[15];
    v46 = v0[16];
    v36 = v0[11];
    v47 = v0[8];
    v48 = v0[6];
    v49 = v0[7];
    (*(v0[10] + 96))(v36, v0[9]);
    v50 = sub_10028088C(&qword_100974E80, &qword_100808F40);
    v51 = *(v36 + *(v50 + 48));

    v52 = *(v50 + 64);
LABEL_13:
    (*(v49 + 32))(v47, v36 + v52, v48);
    SFAirDrop.PermissionRequest.cancel()();
    (*(v49 + 8))(v47, v48);
    v19(v44, v45);
    v43 = type metadata accessor for SFAirDropReceive.ItemDestination();
    goto LABEL_14;
  }

  if (v25 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:) || v25 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
  {
    v44 = v0[18];
    v45 = v0[15];
    v61 = v0[16];
    v36 = v0[11];
    v47 = v0[8];
    v48 = v0[6];
    v49 = v0[7];
    (*(v0[10] + 96))(v36, v0[9]);
    v62 = sub_10028088C(&unk_10097C670, &qword_100805110);
    v63 = *(v36 + v62[12]);

    v64 = *(v36 + v62[16]);

    v52 = v62[20];
    goto LABEL_13;
  }

  if (v25 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
  {
    v33 = v0[18];
    v34 = v0[15];
    v65 = v0[16];
    v36 = v0[11];
    v37 = v0[8];
    v39 = v0[6];
    v38 = v0[7];
    (*(v0[10] + 96))(v36, v0[9]);
    v40 = &unk_10097E9C0;
    v41 = &unk_100808DC0;
    goto LABEL_8;
  }

  if (v25 == enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
  {
    v33 = v0[18];
    v34 = v0[15];
    v66 = v0[16];
    v36 = v0[11];
    v38 = v0[4];
    v37 = v0[5];
    v39 = v0[3];
    (*(v0[10] + 96))(v36, v0[9]);
    v40 = &qword_10097C658;
    v41 = &unk_1008042B0;
    goto LABEL_8;
  }

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "Nothing to cancel for transfer state", v69, 2u);
  }

  v70 = v0[18];
  v71 = v0[15];
  v72 = v0[16];
  v74 = v0[10];
  v73 = v0[11];
  v75 = v0[9];

  v19(v70, v71);
  (*(v74 + 8))(v73, v75);
LABEL_15:
  v54 = v0[17];
  v53 = v0[18];
  v55 = v0[14];
  v56 = v0[11];
  v57 = v0[8];
  v58 = v0[5];

  v59 = v0[1];

  return v59();
}

uint64_t sub_100505550(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10028088C(&qword_100982580, &qword_100808FD0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.AskResponse();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.AcceptContext();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v2[13] = v13;
  v14 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[14] = v14;
  v15 = *(v14 - 8);
  v2[15] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v2[16] = v17;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2[17] = static AirDropActor.shared;
  v18 = swift_task_alloc();
  v2[18] = v18;
  *v18 = v2;
  v18[1] = sub_1005057E4;

  return sub_100505DCC(v17, v13);
}

uint64_t sub_1005057E4()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_100505B84;
  }

  else
  {
    v4 = sub_10050590C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10050590C()
{
  v2 = v0[15];
  v1 = v0[16];
  v27 = v1;
  v3 = v0[14];
  v28 = v0[13];
  v4 = v0[12];
  v26 = v4;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v22 = v0[7];
  v23 = v0[6];
  v24 = v0[5];
  v8 = v0[4];
  v20 = v0[11];
  v21 = v0[3];
  v25 = v0[2];
  v9 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
  (*(v2 + 16))(v6, v1, v3);
  (*(v4 + 16))(v6 + v9, v28, v20);
  (*(v5 + 104))(v6, enum case for SFAirDropReceive.AskResponse.accept(_:), v7);
  v10 = *(v5 + 16);
  v10(v8, v6, v7);
  (*(v5 + 56))(v8, 0, 1, v7);
  sub_100688450(v8);
  sub_100005508(v8, &qword_100982580, &qword_100808FD0);
  (*(v23 + 8))(v22, v24);
  v10(v25, v6, v7);
  v11 = *(v21 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  v12 = v25 + *(_s6RunnerC19PreAcceptRunResultsVMa(0) + 20);
  CurrentValueSubject.value.getter();
  (*(v5 + 8))(v6, v7);
  (*(v26 + 8))(v28, v20);
  (*(v2 + 8))(v27, v3);
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[4];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100505B84()
{
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_100505C1C;
  v2 = v0[19];
  v3 = v0[2];
  v4 = v0[3];

  return sub_10050C3B4(v3, v2);
}

uint64_t sub_100505C1C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100505D2C, v2, 0);
}

uint64_t sub_100505D2C()
{
  v1 = v0[19];

  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100505DCC(uint64_t a1, uint64_t a2)
{
  v3[70] = v2;
  v3[69] = a2;
  v3[68] = a1;
  v4 = *(*(sub_10028088C(&qword_100976928, &qword_1007F98A8) - 8) + 64) + 15;
  v3[71] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&qword_100976908, &unk_100801D60) - 8) + 64) + 15;
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3[74] = v6;
  v7 = *(v6 - 8);
  v3[75] = v7;
  v8 = *(v7 + 64) + 15;
  v3[76] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskRequest();
  v3[77] = v9;
  v10 = *(v9 - 8);
  v3[78] = v10;
  v11 = *(v10 + 64) + 15;
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[83] = v12;
  v13 = *(v12 - 8);
  v3[84] = v13;
  v14 = *(v13 + 64) + 15;
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDrop.TransferType();
  v3[91] = v15;
  v16 = *(v15 - 8);
  v3[92] = v16;
  v17 = *(v16 + 64) + 15;
  v3[93] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3[94] = v18;
  v19 = *(v18 - 8);
  v3[95] = v19;
  v20 = *(v19 + 64) + 15;
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v21 = static AirDropActor.shared;
  v3[103] = static AirDropActor.shared;

  return _swift_task_switch(sub_100506164, v21, 0);
}

uint64_t sub_100506164()
{
  v300 = v0;
  v1 = v0[70];
  v0[104] = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ask request START", v4, 2u);
  }

  v5 = v0[70];

  sub_10039D0AC();
  v6 = static NSUserDefaults.airdrop.getter();
  v7 = SFAirDropUserDefaults.alwaysAutoAccept.getter();

  v253 = [*(v5 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_deviceStatus) disableAutoAccept];
  if (v7)
  {
    log = 1;
  }

  else
  {
    v8 = v0[70];
    v9 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
    swift_beginAccess();
    sub_1002A9938(v8 + v9, (v0 + 2));
    v10 = v0[5];
    v11 = v0[6];
    sub_10002CDC0(v0 + 2, v10);
    log = (*(v11 + 8))(v10, v11);
    sub_10000C60C(v0 + 2);
  }

  v12 = v0[93];
  v13 = v0[92];
  v14 = v0[91];
  v295 = v0;
  v15 = v0[90];
  v16 = v0[84];
  v17 = v0[83];
  v18 = v295[70];
  v295[105] = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_askRequest;
  SFAirDropReceive.AskRequest.type.getter();
  v266 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v19 = *(v13 + 8);
  v295[106] = v19;
  v295[107] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v12, v14);
  v295[108] = *(v18 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  v261 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
  v20 = *(v16 + 8);
  v295[109] = v20;
  v295[110] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v283 = v20;
  v20(v15, v17);
  v256 = sub_100530DF8();
  SFAirDropReceive.AskRequest.type.getter();
  v21 = SFAirDrop.TransferType.isCustom.getter();
  v22 = v21 & 1;
  *(v295 + 1132) = v21 & 1;
  v19(v12, v14);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67110144;
    *(v25 + 4) = log & 1;
    *(v25 + 8) = 1024;
    *(v25 + 10) = v266 & 1;
    *(v25 + 14) = 1024;
    *(v25 + 16) = v261 & 1;
    *(v25 + 20) = 1024;
    *(v25 + 22) = v256;
    *(v25 + 26) = 1024;
    *(v25 + 28) = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "contentCanAutoAccept: %{BOOL}d isOnlyExchange: %{BOOL}d isPreviewSensitive: %{BOOL}d isDeviceLocked: %{BOOL}d isCustom: %{BOOL}d", v25, 0x20u);
  }

  v26 = v295[89];
  v27 = v295[83];
  v28 = v295[82];
  v29 = v295[70];

  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v283(v26, v27);
  sub_100529D78(v28);
  v42 = v295[88];
  v43 = v295[83];
  v44 = v295[82];
  v45 = v295[81];
  v46 = v295[78];
  v47 = v295[77];
  v48 = *(v46 + 8);
  v295[111] = v48;
  v295[112] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v44, v47);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v283(v42, v43);
  v49 = SFAirDropReceive.AskRequest.canAutoAccept.getter();
  v48(v45, v47);
  v50 = v295[70];
  if (v49)
  {
    v51 = 0;
  }

  else
  {
    v51 = *(v50 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_delegateCanAutoAccept) ^ 1;
  }

  v52 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  v295[113] = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v50 + v52, (v295 + 12));
  v295[114] = sub_10028088C(&qword_1009892F0, &qword_1007F9888);
  sub_10028088C(&qword_100982588, &qword_100808FF0);
  if (swift_dynamicCast())
  {
    sub_1000121F8((v295 + 17), (v295 + 7));
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Content overrides canAutoAccept - checking...", v55, 2u);
    }

    v56 = v295[87];
    v57 = v295[83];
    v58 = v295[80];

    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v283(v56, v57);
    v59 = swift_task_alloc();
    v295[115] = v59;
    *v59 = v295;
    v59[1] = sub_100507B40;
    v60 = v295[80];
    v61 = sub_10044F490;
    goto LABEL_19;
  }

  v295[21] = 0;
  *(v295 + 19) = 0u;
  *(v295 + 17) = 0u;
  sub_100005508((v295 + 17), &qword_100982590, &qword_100808FF8);
  if ((v253 | v51) & 1 | ((log & 1) == 0) | ((v266 | v261) | v256) & 1)
  {
    v62 = v295[70] + v295[104];
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Waiting for permission request task", v65, 2u);
    }

    v66 = v295[113];
    v67 = v295[108];
    v68 = v295[86];
    v69 = v295[71];
    v70 = v295[70];

    sub_1002A9938(v70 + v66, (v295 + 22));
    v71 = v295[25];
    v72 = v295[26];
    sub_10002CDC0(v295 + 22, v71);
    CurrentValueSubject.value.getter();
    v73 = *(v70 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
    v74 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation;
    v75 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
    v76 = *(v75 - 8);
    (*(v76 + 16))(v69, v73 + v74, v75);
    (*(v76 + 56))(v69, 0, 1, v75);
    v77 = swift_task_alloc();
    v295[117] = v77;
    *v77 = v295;
    v77[1] = sub_100509260;
    v78 = v295[86];
    v79 = v295[73];
    v80 = v295[71];

    return sub_100586750(v79, v78, v80, v71, v72);
  }

  v81 = (v295 + 37);
  v279 = v295[109];
  v285 = v295[110];
  v82 = v295[102];
  v83 = v295[95];
  v290 = v295[94];
  v84 = v295[90];
  v85 = v295[83];
  v86 = v295[76];
  v87 = v295[75];
  v88 = v295[74];
  v89 = v295[70];
  v90 = *(v87 + 104);
  v90(v86, enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:), v88);
  sub_100687AF8(v86, v84);
  v91 = *(v87 + 8);
  v92 = v88;
  v93 = v295;
  v91(v86, v92);
  v279(v84, v85);
  (*(v83 + 104))(v82, enum case for SFAirDropReceive.ItemDestination.default(_:), v290);
  *(v295 + 282) = 1;
  v295[126] = v90;
  v295[125] = v91;
  v94 = v295[114];
  sub_1002A9938(v93[70] + v93[113], (v93 + 32));
  sub_10028088C(&qword_100982598, &qword_100809008);
  if (swift_dynamicCast())
  {
    v95 = v295[112];
    v291 = v295[111];
    v96 = v295[110];
    v97 = v295[109];
    v98 = v295[108];
    v99 = v295[90];
    v100 = v295[83];
    v101 = v295[79];
    v280 = v295[102];
    v286 = v295[77];
    sub_1000121F8(v81, (v295 + 27));
    v102 = v295[30];
    v103 = v295[31];
    sub_10002CDC0(v295 + 27, v102);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v97(v99, v100);
    v104 = *(v103 + 8);
    v105 = v103;
    v93 = v295;
    v106 = v104(v280, v101, v102, v105);
    v291(v101, v286);
    sub_10000C60C(v295 + 27);
  }

  else
  {
    v295[41] = 0;
    *v81 = 0u;
    *(v295 + 39) = 0u;
    sub_100005508(v81, &qword_1009825A0, &qword_100809010);
    v106 = 0;
  }

  *(v93 + 1134) = v106 & 1;
  if (*(v93 + 1132) == 1)
  {
    v107 = v93[100];
    v108 = v93[95];
    v109 = v93[94];
    (*(v108 + 16))(v107, v93[102], v109);
    if ((*(v108 + 88))(v107, v109) != enum case for SFAirDropReceive.ItemDestination.metadata(_:))
    {
      v186 = v93[114];
      v187 = v93[113];
      v188 = v93[100];
      v189 = v93[95];
      v190 = v93[94];
      v191 = v93[70];
      v192 = *(v189 + 8);
      v93[127] = v192;
      v93[128] = (v189 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v192(v188, v190);
      sub_1002A9938(v191 + v187, (v93 + 52));
      sub_10028088C(&qword_1009825A8, &qword_100809020);
      if (swift_dynamicCast())
      {
        v193 = v93[105];
        v194 = v93[70];
        sub_1000121F8((v93 + 57), (v93 + 47));
        v195 = swift_task_alloc();
        v93[129] = v195;
        *v195 = v93;
        v195[1] = sub_10050AAE0;
        v60 = v194 + v193;
        v61 = sub_10044F920;
LABEL_19:

        return (v61)(v60);
      }

      v93[61] = 0;
      *(v93 + 57) = 0u;
      *(v93 + 59) = 0u;
      sub_100005508((v93 + 57), &qword_1009825B0, &qword_100809028);
      v113 = 0;
      v114 = 0xF000000000000000;
LABEL_55:
      v219 = v93[70] + v93[105];
      v220 = SFAirDropReceive.AskRequest.customPayload.getter();
      v222 = v93[104];
      v223 = v93[70];
      if (v221 >> 60 == 15)
      {
        v224 = Logger.logObject.getter();
        v225 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v224, v225))
        {
          v226 = "Failed to receive senderMetadata";
LABEL_60:
          v227 = swift_slowAlloc();
          *v227 = 0;
          _os_log_impl(&_mh_execute_header, v224, v225, v226, v227, 2u);
        }
      }

      else
      {
        sub_10028BCC0(v220, v221);
        v224 = Logger.logObject.getter();
        v225 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v224, v225))
        {
          v226 = "Receiver metadata was not found";
          goto LABEL_60;
        }
      }

      v228 = v93[102];
      v229 = v93[95];
      v230 = v93[94];

      v231 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v231 - 8) + 104))(v232, enum case for SFAirDropReceive.Failure.badRequest(_:), v231);
      swift_willThrow();
      sub_10028BCC0(v113, v114);
      (*(v229 + 8))(v228, v230);
      v30 = v93[102];
      v31 = v93[101];
      v32 = v93[100];
      v33 = v93[99];
      v34 = v93[98];
      v35 = v93[97];
      v36 = v93;
      v37 = v93[96];
      v38 = v36[93];
      v39 = v36[90];
      v40 = v36[89];
      v246 = v36[88];
      v248 = v36[87];
      v251 = v36[86];
      v254 = v36[85];
      v257 = v36[82];
      v262 = v36[81];
      v267 = v36[80];
      logd = v36[79];
      v275 = v36[76];
      v278 = v36[73];
      v284 = v36[72];
      v296 = v36[71];

      v185 = v36[1];
LABEL_9:

      return v185();
    }

    v110 = v93[104];
    v111 = v93[100];
    v112 = v93[70];
    (*(v93[95] + 96))(v111, v93[94]);
    v113 = *v111;
    v114 = v111[1];
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "Retrieved receiverMetadata via destination", v117, 2u);
    }

    if (v114 >> 60 == 15)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v113 = 0;
    v114 = 0xF000000000000000;
  }

  v93[134] = v114;
  v93[133] = v113;
  v118 = v93[70] + v93[104];
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = *(v93 + 1134);
    v122 = *(v93 + 282);
    v123 = swift_slowAlloc();
    *v123 = 67109376;
    *(v123 + 4) = v122;
    *(v123 + 8) = 1024;
    *(v123 + 10) = v121;
    _os_log_impl(&_mh_execute_header, v119, v120, "Ask request END - Accept {didAutoAccept: %{BOOL}d, shouldExtractMedia: %{BOOL}d}", v123, 0xEu);
  }

  v258 = v93[111];
  v263 = v93[112];
  v124 = v93[110];
  v125 = v93[109];
  v126 = v93[108];
  loga = v93[106];
  v276 = v93[107];
  v127 = v93[93];
  v268 = v93[91];
  v128 = v93;
  v129 = v93[90];
  v130 = v128[83];
  v131 = v128[79];
  v132 = v128[77];

  v281 = sub_10049F1E0();
  v287 = v133;
  v292 = v134;
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v125(v129, v130);
  SFAirDropReceive.AskRequest.type.getter();
  v258(v131, v132);
  LOBYTE(v126) = SFAirDrop.TransferType.isFiles.getter();
  (loga)(v127, v268);
  if ((v126 & 1) == 0)
  {
    goto LABEL_42;
  }

  v135 = v128[112];
  v136 = v128[111];
  v137 = v128[110];
  v138 = v128[109];
  v139 = v128[108];
  v140 = v128[90];
  v141 = v128[83];
  v142 = v128[79];
  v143 = v128[77];
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v138(v140, v141);
  LOBYTE(v139) = SFAirDropReceive.AskRequest.senderIsMe.getter();
  v136(v142, v143);
  if (v139)
  {
    goto LABEL_42;
  }

  v196 = v128[110];
  v197 = v128[109];
  v198 = v128[108];
  v199 = v128[90];
  v200 = v128[83];
  CurrentValueSubject.value.getter();
  LOBYTE(v198) = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
  v197(v199, v200);
  if ((v198 & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v292 != 2)
  {
    goto LABEL_42;
  }

  v201 = v128[102];
  v202 = v128[99];
  v203 = v128[95];
  v204 = v128[94];
  (*(v203 + 104))(v202, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v204);
  sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
  LOBYTE(v201) = dispatch thunk of static Equatable.== infix(_:_:)();
  v205 = *(v203 + 8);
  v128[135] = v205;
  v128[136] = (v203 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v205(v202, v204);
  if (v201)
  {
LABEL_42:
    v144 = v128[104];
    v145 = v128[70];
    v297 = *(v128[95] + 16);
    v297(v128[96], v128[102], v128[94]);
    swift_retain_n();
    sub_100530B64(v281, v287, v292);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    sub_1003C3F0C(v281, v287, v292);
    if (os_log_type_enabled(v146, v147))
    {
      v244 = v128[111];
      v245 = v128[112];
      v148 = v128[110];
      v149 = v128[109];
      v150 = v128[108];
      v264 = v128[95];
      v247 = v128[94];
      v249 = v128[96];
      logb = v146;
      v151 = v128[90];
      v152 = v128[83];
      v153 = v128[79];
      v243 = v128[77];
      v154 = v128[70];
      v155 = swift_slowAlloc();
      v299[0] = swift_slowAlloc();
      *v155 = 67109890;
      v259 = v147;
      CurrentValueSubject.value.getter();
      v156 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
      v149(v151, v152);
      *(v155 + 4) = v156 & 1;

      *(v155 + 8) = 1024;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v149(v151, v152);
      v157 = SFAirDropReceive.AskRequest.senderIsMe.getter();
      v244(v153, v243);
      *(v155 + 10) = v157 & 1;

      *(v155 + 14) = 2080;
      v158 = sub_100498E20(v281, v287, v292);
      v160 = v159;
      sub_1003C3F0C(v281, v287, v292);
      v161 = sub_10000C4E4(v158, v160, v299);

      *(v155 + 16) = v161;
      *(v155 + 24) = 2080;
      sub_100530ED4(&qword_100982570, &type metadata accessor for SFAirDropReceive.ItemDestination);
      v162 = dispatch thunk of CustomStringConvertible.description.getter();
      v164 = v163;
      v165 = *(v264 + 8);
      v165(v249, v247);
      v166 = sub_10000C4E4(v162, v164, v299);

      *(v155 + 26) = v166;
      _os_log_impl(&_mh_execute_header, logb, v259, "Ask sensitive preview SKIP. {transfer.isPreviewSensitive: %{BOOL}d, isSenderMe: %{BOOL}d, userSafetyMode: %s, askStepDestination: %s}", v155, 0x22u);
      swift_arrayDestroy();
    }

    else
    {
      v167 = v128[96];
      v168 = v128[95];
      v169 = v128[94];
      v170 = v128[70];
      sub_1003C3F0C(v281, v287, v292);

      v165 = *(v168 + 8);
      v165(v167, v169);
    }

    v171 = *(v128 + 1134);
    v172 = v128[102];
    v173 = v128[94];
    v174 = v128[69];
    v297(v128[68], v172, v173);
    SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
    v165(v172, v173);
    v175 = v128[102];
    v176 = v128[101];
    v177 = v128[100];
    v178 = v128[99];
    v179 = v128[98];
    v180 = v128[97];
    v181 = v128[96];
    v182 = v128[93];
    v183 = v128[90];
    v184 = v128[89];
    v250 = v128[88];
    v252 = v128[87];
    v255 = v128[86];
    v260 = v128[85];
    v265 = v128[82];
    v269 = v128[81];
    logc = v128[80];
    v277 = v128[79];
    v282 = v128[76];
    v288 = v128[73];
    v293 = v128[72];
    v298 = v128[71];

    v185 = v128[1];
    goto LABEL_9;
  }

  v206 = v128[104];
  v207 = v128[70];
  sub_1003C3F0C(v281, v287, 2u);
  v208 = Logger.logObject.getter();
  v209 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v208, v209))
  {
    v210 = swift_slowAlloc();
    *v210 = 0;
    _os_log_impl(&_mh_execute_header, v208, v209, "Ask sensitive preview START", v210, 2u);
  }

  v211 = v295;
  v212 = v295[113];
  v213 = v295[108];
  v214 = v295[102];
  v215 = v295[85];
  v216 = v295[72];
  v217 = v295[70];

  sub_1002A9938(v217 + v212, (v295 + 42));
  v218 = v295[46];
  sub_10002CDC0(v211 + 42, v211[45]);
  CurrentValueSubject.value.getter();
  sub_100589278(v215, v214, v216);
  v289 = v295[126];
  v294 = v295[125];
  v233 = v295[110];
  v234 = v295[109];
  v235 = v295[90];
  v236 = v295[83];
  v237 = v295[76];
  v238 = v295[75];
  v239 = v295[74];
  v240 = v295[72];
  v241 = v295[70];
  v234(v211[85], v211[83]);
  sub_10000C60C(v295 + 42);
  v242 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v242 - 8) + 16))(v237, v240, v242);
  v289(v237, enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:), v239);
  sub_100687AF8(v237, v235);
  v294(v237, v239);
  v234(v235, v236);

  return _swift_task_switch(sub_10050B9E4, 0, 0);
}

uint64_t sub_100507B40(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *v2;
  *(v4 + 1133) = a1;
  *(v4 + 928) = v1;

  v7 = *(v3 + 896);
  v8 = *(v3 + 824);
  (*(v3 + 888))(*(v3 + 640), *(v3 + 616));
  if (v1)
  {
    v9 = sub_1005090B8;
  }

  else
  {
    v9 = sub_100507CD0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100507CD0()
{
  v251 = v0;
  v1 = *(v0 + 560) + *(v0 + 832);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1133);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Content overrides canAutoAccept - willAutoAccept = %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 1133);

  sub_10000C60C((v0 + 56));
  if (v6 != 1)
  {
    v26 = *(v0 + 560) + *(v0 + 832);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Waiting for permission request task", v29, 2u);
    }

    v30 = *(v0 + 904);
    v31 = *(v0 + 864);
    v32 = *(v0 + 688);
    v33 = *(v0 + 568);
    v34 = *(v0 + 560);

    sub_1002A9938(v34 + v30, v0 + 176);
    v35 = *(v0 + 200);
    v36 = *(v0 + 208);
    sub_10002CDC0((v0 + 176), v35);
    CurrentValueSubject.value.getter();
    v37 = *(v34 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
    v38 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation;
    v39 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
    v40 = *(v39 - 8);
    (*(v40 + 16))(v33, v37 + v38, v39);
    (*(v40 + 56))(v33, 0, 1, v39);
    v41 = swift_task_alloc();
    *(v0 + 936) = v41;
    *v41 = v0;
    v41[1] = sub_100509260;
    v42 = *(v0 + 688);
    v43 = *(v0 + 584);
    v44 = *(v0 + 568);

    return sub_100586750(v43, v42, v44, v35, v36);
  }

  v204 = *(v0 + 928);
  v228 = *(v0 + 872);
  v234 = *(v0 + 880);
  v7 = *(v0 + 760);
  v239 = *(v0 + 752);
  v245 = *(v0 + 816);
  v8 = *(v0 + 720);
  v9 = *(v0 + 664);
  v10 = *(v0 + 608);
  v11 = *(v0 + 600);
  v12 = *(v0 + 592);
  v13 = *(v0 + 560);
  v14 = *(v11 + 104);
  v14(v10, enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:), v12);
  sub_100687AF8(v10, v8);
  v15 = *(v11 + 8);
  v15(v10, v12);
  v228(v8, v9);
  (*(v7 + 104))(v245, enum case for SFAirDropReceive.ItemDestination.default(_:), v239);
  *(v0 + 1128) = 1;
  *(v0 + 1008) = v14;
  *(v0 + 1000) = v15;
  v16 = *(v0 + 912);
  sub_1002A9938(*(v0 + 560) + *(v0 + 904), v0 + 256);
  sub_10028088C(&qword_100982598, &qword_100809008);
  if (swift_dynamicCast())
  {
    v240 = *(v0 + 888);
    v246 = *(v0 + 896);
    v17 = *(v0 + 880);
    v18 = *(v0 + 872);
    v19 = *(v0 + 864);
    v20 = *(v0 + 720);
    v21 = *(v0 + 664);
    v22 = *(v0 + 632);
    v229 = *(v0 + 816);
    v235 = *(v0 + 616);
    sub_1000121F8((v0 + 296), v0 + 216);
    v23 = *(v0 + 240);
    v24 = *(v0 + 248);
    sub_10002CDC0((v0 + 216), v23);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v18(v20, v21);
    v25 = (*(v24 + 8))(v229, v22, v23, v24);
    v240(v22, v235);
    sub_10000C60C((v0 + 216));
  }

  else
  {
    *(v0 + 328) = 0;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    sub_100005508(v0 + 296, &qword_1009825A0, &qword_100809010);
    v25 = 0;
  }

  *(v0 + 1134) = v25 & 1;
  if (*(v0 + 1132) != 1)
  {
    v52 = 0;
    v53 = 0xF000000000000000;
LABEL_19:
    v208 = v53;
    v211 = v52;
    *(v0 + 1072) = v53;
    *(v0 + 1064) = v52;
    v57 = *(v0 + 560) + *(v0 + 832);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 1134);
      v61 = *(v0 + 1128);
      v62 = swift_slowAlloc();
      *v62 = 67109376;
      *(v62 + 4) = v61;
      *(v62 + 8) = 1024;
      *(v62 + 10) = v60;
      _os_log_impl(&_mh_execute_header, v58, v59, "Ask request END - Accept {didAutoAccept: %{BOOL}d, shouldExtractMedia: %{BOOL}d}", v62, 0xEu);
    }

    v214 = *(v0 + 888);
    v218 = *(v0 + 896);
    v63 = *(v0 + 880);
    v64 = *(v0 + 872);
    v65 = *(v0 + 864);
    v225 = *(v0 + 848);
    v230 = *(v0 + 856);
    v66 = *(v0 + 744);
    log = *(v0 + 728);
    v67 = *(v0 + 720);
    v68 = *(v0 + 664);
    v69 = *(v0 + 632);
    v70 = *(v0 + 616);

    v236 = sub_10049F1E0();
    v241 = v71;
    v247 = v72;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v64(v67, v68);
    SFAirDropReceive.AskRequest.type.getter();
    v214(v69, v70);
    LOBYTE(v65) = SFAirDrop.TransferType.isFiles.getter();
    v225(v66, log);
    if ((v65 & 1) == 0)
    {
      goto LABEL_23;
    }

    v73 = *(v0 + 896);
    v74 = *(v0 + 888);
    v75 = *(v0 + 880);
    v76 = *(v0 + 872);
    v77 = *(v0 + 864);
    v78 = *(v0 + 720);
    v79 = *(v0 + 664);
    v80 = *(v0 + 632);
    v81 = *(v0 + 616);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v76(v78, v79);
    LOBYTE(v77) = SFAirDropReceive.AskRequest.senderIsMe.getter();
    v74(v80, v81);
    if (v77)
    {
      goto LABEL_23;
    }

    v134 = *(v0 + 880);
    v135 = *(v0 + 872);
    v136 = *(v0 + 864);
    v137 = *(v0 + 720);
    v138 = *(v0 + 664);
    CurrentValueSubject.value.getter();
    LOBYTE(v136) = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
    v135(v137, v138);
    if ((v136 & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v247 != 2)
    {
      goto LABEL_23;
    }

    v139 = *(v0 + 816);
    v140 = *(v0 + 792);
    v141 = *(v0 + 760);
    v142 = *(v0 + 752);
    (*(v141 + 104))(v140, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v142);
    sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
    LOBYTE(v139) = dispatch thunk of static Equatable.== infix(_:_:)();
    v143 = *(v141 + 8);
    *(v0 + 1080) = v143;
    *(v0 + 1088) = (v141 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v143(v140, v142);
    if (v139)
    {
LABEL_23:
      v82 = *(v0 + 832);
      v83 = *(v0 + 560);
      v231 = *(*(v0 + 760) + 16);
      v231(*(v0 + 768), *(v0 + 816), *(v0 + 752));
      swift_retain_n();
      sub_100530B64(v236, v241, v247);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      sub_1003C3F0C(v236, v241, v247);
      if (os_log_type_enabled(v84, v85))
      {
        v197 = *(v0 + 888);
        v198 = *(v0 + 896);
        v86 = *(v0 + 880);
        v87 = *(v0 + 872);
        v88 = *(v0 + 864);
        v215 = *(v0 + 760);
        v199 = *(v0 + 752);
        v201 = *(v0 + 768);
        loga = v84;
        v89 = *(v0 + 720);
        v90 = *(v0 + 664);
        v91 = *(v0 + 632);
        v196 = *(v0 + 616);
        v92 = *(v0 + 560);
        v93 = swift_slowAlloc();
        v250[0] = swift_slowAlloc();
        *v93 = 67109890;
        v205 = v85;
        CurrentValueSubject.value.getter();
        v94 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
        v87(v89, v90);
        *(v93 + 4) = v94 & 1;

        *(v93 + 8) = 1024;
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v87(v89, v90);
        v95 = SFAirDropReceive.AskRequest.senderIsMe.getter();
        v197(v91, v196);
        *(v93 + 10) = v95 & 1;

        *(v93 + 14) = 2080;
        v96 = sub_100498E20(v236, v241, v247);
        v98 = v97;
        sub_1003C3F0C(v236, v241, v247);
        v99 = sub_10000C4E4(v96, v98, v250);

        *(v93 + 16) = v99;
        *(v93 + 24) = 2080;
        sub_100530ED4(&qword_100982570, &type metadata accessor for SFAirDropReceive.ItemDestination);
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        v103 = *(v215 + 8);
        v103(v201, v199);
        v104 = sub_10000C4E4(v100, v102, v250);

        *(v93 + 26) = v104;
        _os_log_impl(&_mh_execute_header, loga, v205, "Ask sensitive preview SKIP. {transfer.isPreviewSensitive: %{BOOL}d, isSenderMe: %{BOOL}d, userSafetyMode: %s, askStepDestination: %s}", v93, 0x22u);
        swift_arrayDestroy();
      }

      else
      {
        v105 = *(v0 + 768);
        v106 = *(v0 + 760);
        v107 = *(v0 + 752);
        v108 = *(v0 + 560);
        sub_1003C3F0C(v236, v241, v247);

        v103 = *(v106 + 8);
        v103(v105, v107);
      }

      v109 = *(v0 + 1134);
      v110 = *(v0 + 816);
      v111 = *(v0 + 752);
      v112 = *(v0 + 552);
      v231(*(v0 + 544), v110, v111);
      SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
      v103(v110, v111);
      v113 = *(v0 + 816);
      v114 = *(v0 + 808);
      v115 = *(v0 + 800);
      v116 = *(v0 + 792);
      v117 = *(v0 + 784);
      v118 = *(v0 + 776);
      v119 = *(v0 + 768);
      v120 = *(v0 + 744);
      v121 = *(v0 + 720);
      v122 = *(v0 + 712);
      v202 = *(v0 + 704);
      v206 = *(v0 + 696);
      v209 = *(v0 + 688);
      v212 = *(v0 + 680);
      v216 = *(v0 + 656);
      v219 = *(v0 + 648);
      logb = *(v0 + 640);
      v226 = *(v0 + 632);
      v232 = *(v0 + 608);
      v237 = *(v0 + 584);
      v242 = *(v0 + 576);
      v248 = *(v0 + 568);

      v123 = *(v0 + 8);
      goto LABEL_47;
    }

    v144 = *(v0 + 832);
    v145 = *(v0 + 560);
    sub_1003C3F0C(v236, v241, 2u);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      _os_log_impl(&_mh_execute_header, v146, v147, "Ask sensitive preview START", v148, 2u);
    }

    v149 = *(v0 + 904);
    v150 = *(v0 + 864);
    v151 = *(v0 + 816);
    v152 = *(v0 + 680);
    v153 = *(v0 + 576);
    v154 = *(v0 + 560);

    sub_1002A9938(v154 + v149, v0 + 336);
    v155 = *(v0 + 368);
    sub_10002CDC0((v0 + 336), *(v0 + 360));
    CurrentValueSubject.value.getter();
    sub_100589278(v152, v151, v153);
    if (v204)
    {
      v156 = *(v0 + 880);
      v157 = *(v0 + 872);
      v158 = *(v0 + 816);
      v159 = *(v0 + 752);
      v160 = *(v0 + 680);
      v161 = *(v0 + 664);
      sub_10028BCC0(v211, v208);
      v157(v160, v161);
      v143(v158, v159);
      sub_10000C60C((v0 + 336));
LABEL_46:
      v176 = *(v0 + 816);
      v177 = *(v0 + 808);
      v178 = *(v0 + 800);
      v179 = *(v0 + 792);
      v180 = *(v0 + 784);
      v181 = *(v0 + 776);
      v182 = *(v0 + 768);
      v183 = *(v0 + 744);
      v184 = *(v0 + 720);
      v185 = *(v0 + 712);
      v200 = *(v0 + 704);
      v203 = *(v0 + 696);
      v207 = *(v0 + 688);
      v210 = *(v0 + 680);
      v213 = *(v0 + 656);
      v217 = *(v0 + 648);
      v220 = *(v0 + 640);
      logc = *(v0 + 632);
      v227 = *(v0 + 608);
      v233 = *(v0 + 584);
      v238 = *(v0 + 576);
      v243 = *(v0 + 568);

      v123 = *(v0 + 8);
LABEL_47:

      return v123();
    }

    v244 = *(v0 + 1008);
    v249 = *(v0 + 1000);
    v186 = *(v0 + 880);
    v187 = *(v0 + 872);
    v188 = *(v0 + 720);
    v189 = *(v0 + 664);
    v190 = *(v0 + 608);
    v191 = *(v0 + 600);
    v192 = *(v0 + 592);
    v193 = *(v0 + 576);
    v194 = *(v0 + 560);
    v187(*(v0 + 680), v189);
    sub_10000C60C((v0 + 336));
    v195 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v195 - 8) + 16))(v190, v193, v195);
    v244(v190, enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:), v192);
    sub_100687AF8(v190, v188);
    v249(v190, v192);
    v187(v188, v189);

    return _swift_task_switch(sub_10050B9E4, 0, 0);
  }

  v46 = *(v0 + 800);
  v47 = *(v0 + 760);
  v48 = *(v0 + 752);
  (*(v47 + 16))(v46, *(v0 + 816), v48);
  if ((*(v47 + 88))(v46, v48) == enum case for SFAirDropReceive.ItemDestination.metadata(_:))
  {
    v49 = *(v0 + 832);
    v50 = *(v0 + 800);
    v51 = *(v0 + 560);
    (*(*(v0 + 760) + 96))(v50, *(v0 + 752));
    v52 = *v50;
    v53 = v50[1];
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Retrieved receiverMetadata via destination", v56, 2u);
    }

    if (v53 >> 60 == 15)
    {
LABEL_39:
      v162 = *(v0 + 560) + *(v0 + 840);
      v163 = SFAirDropReceive.AskRequest.customPayload.getter();
      v165 = *(v0 + 832);
      v166 = *(v0 + 560);
      if (v164 >> 60 == 15)
      {
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = "Failed to receive senderMetadata";
LABEL_44:
          v170 = swift_slowAlloc();
          *v170 = 0;
          _os_log_impl(&_mh_execute_header, v167, v168, v169, v170, 2u);
        }
      }

      else
      {
        sub_10028BCC0(v163, v164);
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = "Receiver metadata was not found";
          goto LABEL_44;
        }
      }

      v171 = *(v0 + 816);
      v172 = *(v0 + 760);
      v173 = *(v0 + 752);

      v174 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v174 - 8) + 104))(v175, enum case for SFAirDropReceive.Failure.badRequest(_:), v174);
      swift_willThrow();
      sub_10028BCC0(v52, v53);
      (*(v172 + 8))(v171, v173);
      goto LABEL_46;
    }

    goto LABEL_19;
  }

  v124 = *(v0 + 912);
  v125 = *(v0 + 904);
  v126 = *(v0 + 800);
  v127 = *(v0 + 760);
  v128 = *(v0 + 752);
  v129 = *(v0 + 560);
  v130 = *(v127 + 8);
  *(v0 + 1016) = v130;
  *(v0 + 1024) = (v127 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v130(v126, v128);
  sub_1002A9938(v129 + v125, v0 + 416);
  sub_10028088C(&qword_1009825A8, &qword_100809020);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 488) = 0;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_100005508(v0 + 456, &qword_1009825B0, &qword_100809028);
    v52 = 0;
    v53 = 0xF000000000000000;
    goto LABEL_39;
  }

  v131 = *(v0 + 840);
  v132 = *(v0 + 560);
  sub_1000121F8((v0 + 456), v0 + 376);
  v133 = swift_task_alloc();
  *(v0 + 1032) = v133;
  *v133 = v0;
  v133[1] = sub_10050AAE0;

  return (sub_10044F920)(v132 + v131);
}

uint64_t sub_1005090B8()
{
  sub_10000C60C(v0 + 7);
  v25 = v0[116];
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[93];
  v9 = v0[90];
  v10 = v0[89];
  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[82];
  v18 = v0[81];
  v19 = v0[80];
  v20 = v0[79];
  v21 = v0[76];
  v22 = v0[73];
  v23 = v0[72];
  v24 = v0[71];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100509260()
{
  v2 = *v1;
  v3 = (*v1)[117];
  v4 = *v1;
  (*v1)[118] = v0;

  v5 = v2[110];
  v6 = v2[109];
  v7 = v2[103];
  v8 = v2[86];
  v9 = v2[83];
  sub_100005508(v2[71], &qword_100976928, &qword_1007F98A8);
  v6(v8, v9);
  if (v0)
  {
    v10 = sub_10050C20C;
  }

  else
  {
    v10 = sub_100509424;
  }

  return _swift_task_switch(v10, v7, 0);
}

uint64_t sub_100509424()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[90];
  v4 = v0[83];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v0[70];
  sub_10000C60C(v0 + 22);
  v10 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v10 - 8) + 16))(v5, v8, v10);
  v11 = enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:);
  v12 = *(v6 + 104);
  v0[119] = v12;
  v12(v5, v11, v7);
  sub_100687AF8(v5, v3);
  v13 = *(v6 + 8);
  v0[120] = v13;
  v13(v5, v7);
  v2(v3, v4);

  return _swift_task_switch(sub_100509578, 0, 0);
}

uint64_t sub_100509578()
{
  v1 = v0[73];
  v2 = swift_task_alloc();
  v0[121] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[122] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[123] = v5;
  *v5 = v0;
  v5[1] = sub_100509680;
  v6 = v0[101];
  v7 = v0[94];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_100809000, v2, sub_1002E3960, v3, 0, 0, v7);
}

uint64_t sub_100509680()
{
  v2 = *v1;
  v3 = *(*v1 + 984);
  v10 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v4 = sub_10050A8B0;
    v5 = 0;
  }

  else
  {
    v6 = v2[122];
    v7 = v2[121];
    v8 = v2[103];

    v4 = sub_1005097B4;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1005097B4()
{
  v218 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 760);
  v4 = *(v0 + 752);
  sub_100005508(*(v0 + 584), &qword_100976908, &unk_100801D60);
  (*(v3 + 32))(v1, v2, v4);
  v175 = *(v0 + 992);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  *(v0 + 1128) = 0;
  *(v0 + 1008) = v6;
  *(v0 + 1000) = v5;
  v7 = *(v0 + 912);
  sub_1002A9938(*(v0 + 560) + *(v0 + 904), v0 + 256);
  sub_10028088C(&qword_100982598, &qword_100809008);
  if (swift_dynamicCast())
  {
    v208 = *(v0 + 888);
    v213 = *(v0 + 896);
    v8 = *(v0 + 880);
    v9 = *(v0 + 872);
    v10 = *(v0 + 864);
    v11 = *(v0 + 720);
    v12 = *(v0 + 664);
    v13 = *(v0 + 632);
    v199 = *(v0 + 816);
    v204 = *(v0 + 616);
    sub_1000121F8((v0 + 296), v0 + 216);
    v14 = *(v0 + 240);
    v15 = *(v0 + 248);
    sub_10002CDC0((v0 + 216), v14);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v9(v11, v12);
    v16 = (*(v15 + 8))(v199, v13, v14, v15);
    v208(v13, v204);
    sub_10000C60C((v0 + 216));
  }

  else
  {
    *(v0 + 328) = 0;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    sub_100005508(v0 + 296, &qword_1009825A0, &qword_100809010);
    v16 = 0;
  }

  *(v0 + 1134) = v16 & 1;
  if (*(v0 + 1132) != 1)
  {
    v26 = 0;
    v27 = 0xF000000000000000;
LABEL_11:
    v179 = v27;
    v182 = v26;
    *(v0 + 1072) = v27;
    *(v0 + 1064) = v26;
    v31 = *(v0 + 560) + *(v0 + 832);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 1134);
      v35 = *(v0 + 1128);
      v36 = swift_slowAlloc();
      *v36 = 67109376;
      *(v36 + 4) = v35;
      *(v36 + 8) = 1024;
      *(v36 + 10) = v34;
      _os_log_impl(&_mh_execute_header, v32, v33, "Ask request END - Accept {didAutoAccept: %{BOOL}d, shouldExtractMedia: %{BOOL}d}", v36, 0xEu);
    }

    v185 = *(v0 + 888);
    v189 = *(v0 + 896);
    v37 = *(v0 + 880);
    v38 = *(v0 + 872);
    v39 = *(v0 + 864);
    v196 = *(v0 + 848);
    v200 = *(v0 + 856);
    v40 = *(v0 + 744);
    log = *(v0 + 728);
    v41 = *(v0 + 720);
    v42 = *(v0 + 664);
    v43 = *(v0 + 632);
    v44 = *(v0 + 616);

    v205 = sub_10049F1E0();
    v209 = v45;
    v214 = v46;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v38(v41, v42);
    SFAirDropReceive.AskRequest.type.getter();
    v185(v43, v44);
    LOBYTE(v39) = SFAirDrop.TransferType.isFiles.getter();
    v196(v40, log);
    if ((v39 & 1) == 0)
    {
      goto LABEL_15;
    }

    v47 = *(v0 + 896);
    v48 = *(v0 + 888);
    v49 = *(v0 + 880);
    v50 = *(v0 + 872);
    v51 = *(v0 + 864);
    v52 = *(v0 + 720);
    v53 = *(v0 + 664);
    v54 = *(v0 + 632);
    v55 = *(v0 + 616);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v50(v52, v53);
    LOBYTE(v51) = SFAirDropReceive.AskRequest.senderIsMe.getter();
    v48(v54, v55);
    if (v51)
    {
      goto LABEL_15;
    }

    v105 = *(v0 + 880);
    v106 = *(v0 + 872);
    v107 = *(v0 + 864);
    v108 = *(v0 + 720);
    v109 = *(v0 + 664);
    CurrentValueSubject.value.getter();
    LOBYTE(v107) = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
    v106(v108, v109);
    if ((v107 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v214 != 2)
    {
      goto LABEL_15;
    }

    v110 = *(v0 + 816);
    v111 = *(v0 + 792);
    v112 = *(v0 + 760);
    v113 = *(v0 + 752);
    (*(v112 + 104))(v111, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v113);
    sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
    LOBYTE(v110) = dispatch thunk of static Equatable.== infix(_:_:)();
    v114 = *(v112 + 8);
    *(v0 + 1080) = v114;
    *(v0 + 1088) = (v112 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v114(v111, v113);
    if (v110)
    {
LABEL_15:
      v56 = *(v0 + 832);
      v57 = *(v0 + 560);
      v201 = *(*(v0 + 760) + 16);
      v201(*(v0 + 768), *(v0 + 816), *(v0 + 752));
      swift_retain_n();
      sub_100530B64(v205, v209, v214);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      sub_1003C3F0C(v205, v209, v214);
      if (os_log_type_enabled(v58, v59))
      {
        v168 = *(v0 + 888);
        v169 = *(v0 + 896);
        v60 = *(v0 + 880);
        v61 = *(v0 + 872);
        v62 = *(v0 + 864);
        v186 = *(v0 + 760);
        v170 = *(v0 + 752);
        v172 = *(v0 + 768);
        loga = v58;
        v63 = *(v0 + 720);
        v64 = *(v0 + 664);
        v65 = *(v0 + 632);
        v167 = *(v0 + 616);
        v66 = *(v0 + 560);
        v67 = swift_slowAlloc();
        v217[0] = swift_slowAlloc();
        *v67 = 67109890;
        v176 = v59;
        CurrentValueSubject.value.getter();
        v68 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
        v61(v63, v64);
        *(v67 + 4) = v68 & 1;

        *(v67 + 8) = 1024;
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v61(v63, v64);
        v69 = SFAirDropReceive.AskRequest.senderIsMe.getter();
        v168(v65, v167);
        *(v67 + 10) = v69 & 1;

        *(v67 + 14) = 2080;
        v70 = sub_100498E20(v205, v209, v214);
        v72 = v71;
        sub_1003C3F0C(v205, v209, v214);
        v73 = sub_10000C4E4(v70, v72, v217);

        *(v67 + 16) = v73;
        *(v67 + 24) = 2080;
        sub_100530ED4(&qword_100982570, &type metadata accessor for SFAirDropReceive.ItemDestination);
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        v76 = v75;
        v77 = *(v186 + 8);
        v77(v172, v170);
        v78 = sub_10000C4E4(v74, v76, v217);

        *(v67 + 26) = v78;
        _os_log_impl(&_mh_execute_header, loga, v176, "Ask sensitive preview SKIP. {transfer.isPreviewSensitive: %{BOOL}d, isSenderMe: %{BOOL}d, userSafetyMode: %s, askStepDestination: %s}", v67, 0x22u);
        swift_arrayDestroy();
      }

      else
      {
        v79 = *(v0 + 768);
        v80 = *(v0 + 760);
        v81 = *(v0 + 752);
        v82 = *(v0 + 560);
        sub_1003C3F0C(v205, v209, v214);

        v77 = *(v80 + 8);
        v77(v79, v81);
      }

      v83 = *(v0 + 1134);
      v84 = *(v0 + 816);
      v85 = *(v0 + 752);
      v86 = *(v0 + 552);
      v201(*(v0 + 544), v84, v85);
      SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
      v77(v84, v85);
      v87 = *(v0 + 816);
      v88 = *(v0 + 808);
      v89 = *(v0 + 800);
      v90 = *(v0 + 792);
      v91 = *(v0 + 784);
      v92 = *(v0 + 776);
      v93 = *(v0 + 768);
      v94 = *(v0 + 744);
      v95 = *(v0 + 720);
      v96 = *(v0 + 712);
      v173 = *(v0 + 704);
      v177 = *(v0 + 696);
      v180 = *(v0 + 688);
      v183 = *(v0 + 680);
      v187 = *(v0 + 656);
      v190 = *(v0 + 648);
      logb = *(v0 + 640);
      v197 = *(v0 + 632);
      v202 = *(v0 + 608);
      v206 = *(v0 + 584);
      v210 = *(v0 + 576);
      v215 = *(v0 + 568);

      v97 = *(v0 + 8);
      goto LABEL_39;
    }

    v115 = *(v0 + 832);
    v116 = *(v0 + 560);
    sub_1003C3F0C(v205, v209, 2u);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "Ask sensitive preview START", v119, 2u);
    }

    v120 = *(v0 + 904);
    v121 = *(v0 + 864);
    v122 = *(v0 + 816);
    v123 = *(v0 + 680);
    v124 = *(v0 + 576);
    v125 = *(v0 + 560);

    sub_1002A9938(v125 + v120, v0 + 336);
    v126 = *(v0 + 368);
    sub_10002CDC0((v0 + 336), *(v0 + 360));
    CurrentValueSubject.value.getter();
    sub_100589278(v123, v122, v124);
    if (v175)
    {
      v127 = *(v0 + 880);
      v128 = *(v0 + 872);
      v129 = *(v0 + 816);
      v130 = *(v0 + 752);
      v131 = *(v0 + 680);
      v132 = *(v0 + 664);
      sub_10028BCC0(v182, v179);
      v128(v131, v132);
      v114(v129, v130);
      sub_10000C60C((v0 + 336));
LABEL_38:
      v147 = *(v0 + 816);
      v148 = *(v0 + 808);
      v149 = *(v0 + 800);
      v150 = *(v0 + 792);
      v151 = *(v0 + 784);
      v152 = *(v0 + 776);
      v153 = *(v0 + 768);
      v154 = *(v0 + 744);
      v155 = *(v0 + 720);
      v156 = *(v0 + 712);
      v171 = *(v0 + 704);
      v174 = *(v0 + 696);
      v178 = *(v0 + 688);
      v181 = *(v0 + 680);
      v184 = *(v0 + 656);
      v188 = *(v0 + 648);
      v191 = *(v0 + 640);
      logc = *(v0 + 632);
      v198 = *(v0 + 608);
      v203 = *(v0 + 584);
      v207 = *(v0 + 576);
      v211 = *(v0 + 568);

      v97 = *(v0 + 8);
LABEL_39:

      return v97();
    }

    v212 = *(v0 + 1008);
    v216 = *(v0 + 1000);
    v157 = *(v0 + 880);
    v158 = *(v0 + 872);
    v159 = *(v0 + 720);
    v160 = *(v0 + 664);
    v161 = *(v0 + 608);
    v162 = *(v0 + 600);
    v163 = *(v0 + 592);
    v164 = *(v0 + 576);
    v165 = *(v0 + 560);
    v158(*(v0 + 680), v160);
    sub_10000C60C((v0 + 336));
    v166 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v166 - 8) + 16))(v161, v164, v166);
    v212(v161, enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:), v163);
    sub_100687AF8(v161, v159);
    v216(v161, v163);
    v158(v159, v160);

    return _swift_task_switch(sub_10050B9E4, 0, 0);
  }

  v17 = *(v0 + 800);
  v18 = *(v0 + 760);
  v19 = *(v0 + 752);
  (*(v18 + 16))(v17, *(v0 + 816), v19);
  v20 = (*(v18 + 88))(v17, v19);
  v21 = *(v0 + 800);
  v22 = *(v0 + 760);
  v23 = *(v0 + 752);
  v24 = *(v0 + 560);
  if (v20 == enum case for SFAirDropReceive.ItemDestination.metadata(_:))
  {
    v25 = *(v0 + 832);
    (*(v22 + 96))(*(v0 + 800), v23);
    v26 = *v21;
    v27 = v21[1];
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Retrieved receiverMetadata via destination", v30, 2u);
    }

    if (v27 >> 60 == 15)
    {
LABEL_31:
      v133 = *(v0 + 560) + *(v0 + 840);
      v134 = SFAirDropReceive.AskRequest.customPayload.getter();
      v136 = *(v0 + 832);
      v137 = *(v0 + 560);
      if (v135 >> 60 == 15)
      {
        v138 = Logger.logObject.getter();
        v139 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v138, v139))
        {
          v140 = "Failed to receive senderMetadata";
LABEL_36:
          v141 = swift_slowAlloc();
          *v141 = 0;
          _os_log_impl(&_mh_execute_header, v138, v139, v140, v141, 2u);
        }
      }

      else
      {
        sub_10028BCC0(v134, v135);
        v138 = Logger.logObject.getter();
        v139 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v138, v139))
        {
          v140 = "Receiver metadata was not found";
          goto LABEL_36;
        }
      }

      v142 = *(v0 + 816);
      v143 = *(v0 + 760);
      v144 = *(v0 + 752);

      v145 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v145 - 8) + 104))(v146, enum case for SFAirDropReceive.Failure.badRequest(_:), v145);
      swift_willThrow();
      sub_10028BCC0(v26, v27);
      (*(v143 + 8))(v142, v144);
      goto LABEL_38;
    }

    goto LABEL_11;
  }

  v98 = *(v0 + 912);
  v99 = *(v0 + 904);
  v100 = *(v22 + 8);
  *(v0 + 1016) = v100;
  *(v0 + 1024) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v100(v21, v23);
  sub_1002A9938(v24 + v99, v0 + 416);
  sub_10028088C(&qword_1009825A8, &qword_100809020);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 488) = 0;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_100005508(v0 + 456, &qword_1009825B0, &qword_100809028);
    v26 = 0;
    v27 = 0xF000000000000000;
    goto LABEL_31;
  }

  v101 = *(v0 + 840);
  v102 = *(v0 + 560);
  sub_1000121F8((v0 + 456), v0 + 376);
  v103 = swift_task_alloc();
  *(v0 + 1032) = v103;
  *v103 = v0;
  v103[1] = sub_10050AAE0;

  return (sub_10044F920)(v102 + v101);
}

uint64_t sub_10050A8B0()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[103];

  return _swift_task_switch(sub_10050A928, v3, 0);
}

uint64_t sub_10050A928()
{
  sub_100005508(v0[73], &qword_100976908, &unk_100801D60);
  v25 = v0[124];
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[93];
  v9 = v0[90];
  v10 = v0[89];
  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[82];
  v18 = v0[81];
  v19 = v0[80];
  v20 = v0[79];
  v21 = v0[76];
  v22 = v0[73];
  v23 = v0[72];
  v24 = v0[71];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10050AAE0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1032);
  v7 = *v3;
  v5[130] = a1;
  v5[131] = a2;
  v5[132] = v2;

  v8 = v4[103];
  if (v2)
  {
    v9 = sub_10050B828;
  }

  else
  {
    v9 = sub_10050AC1C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10050AC1C()
{
  v171 = v0;
  v1 = *(v0 + 560) + *(v0 + 832);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieved receiverMetadata via content handler", v4, 2u);
  }

  sub_10000C60C((v0 + 376));
  v5 = *(v0 + 1056);
  v6 = *(v0 + 1040);
  v138 = *(v0 + 1048);
  *(v0 + 1072) = v138;
  v131 = v5;
  v135 = v6;
  *(v0 + 1064) = v6;
  v7 = *(v0 + 560) + *(v0 + 832);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1134);
    v11 = *(v0 + 1128);
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = v11;
    *(v12 + 8) = 1024;
    *(v12 + 10) = v10;
    _os_log_impl(&_mh_execute_header, v8, v9, "Ask request END - Accept {didAutoAccept: %{BOOL}d, shouldExtractMedia: %{BOOL}d}", v12, 0xEu);
  }

  v141 = *(v0 + 888);
  v145 = *(v0 + 896);
  v13 = *(v0 + 880);
  v14 = *(v0 + 872);
  v15 = *(v0 + 864);
  v152 = *(v0 + 848);
  v155 = *(v0 + 856);
  v16 = *(v0 + 744);
  log = *(v0 + 728);
  v17 = *(v0 + 720);
  v18 = *(v0 + 664);
  v19 = *(v0 + 632);
  v20 = *(v0 + 616);

  v162 = sub_10049F1E0();
  v22 = v21;
  v166 = v23;
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v14(v17, v18);
  SFAirDropReceive.AskRequest.type.getter();
  v141(v19, v20);
  LOBYTE(v15) = SFAirDrop.TransferType.isFiles.getter();
  v152(v16, log);
  v159 = v22;
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  v24 = *(v0 + 896);
  v25 = *(v0 + 888);
  v26 = *(v0 + 880);
  v27 = *(v0 + 872);
  v28 = *(v0 + 864);
  v29 = *(v0 + 720);
  v30 = *(v0 + 664);
  v31 = *(v0 + 632);
  v32 = *(v0 + 616);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v27(v29, v30);
  LOBYTE(v28) = SFAirDropReceive.AskRequest.senderIsMe.getter();
  v25(v31, v32);
  v22 = v159;
  if (v28)
  {
    goto LABEL_7;
  }

  v76 = *(v0 + 880);
  v77 = *(v0 + 872);
  v78 = *(v0 + 864);
  v79 = *(v0 + 720);
  v80 = *(v0 + 664);
  CurrentValueSubject.value.getter();
  LOBYTE(v78) = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
  v77(v79, v80);
  v22 = v159;
  if ((v78 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v166 != 2)
  {
    goto LABEL_7;
  }

  v81 = *(v0 + 816);
  v82 = *(v0 + 792);
  v83 = *(v0 + 760);
  v84 = *(v0 + 752);
  (*(v83 + 104))(v82, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v84);
  sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
  LOBYTE(v81) = dispatch thunk of static Equatable.== infix(_:_:)();
  v85 = *(v83 + 8);
  *(v0 + 1080) = v85;
  *(v0 + 1088) = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85(v82, v84);
  if (v81)
  {
LABEL_7:
    v33 = *(v0 + 832);
    v34 = *(v0 + 560);
    v156 = *(*(v0 + 760) + 16);
    v156(*(v0 + 768), *(v0 + 816), *(v0 + 752));
    swift_retain_n();
    sub_100530B64(v162, v22, v166);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    sub_1003C3F0C(v162, v22, v166);
    if (os_log_type_enabled(v35, v36))
    {
      v124 = *(v0 + 888);
      v125 = *(v0 + 896);
      v37 = *(v0 + 880);
      v38 = *(v0 + 872);
      v39 = *(v0 + 864);
      v142 = *(v0 + 760);
      v126 = *(v0 + 752);
      v128 = *(v0 + 768);
      loga = v35;
      v40 = *(v0 + 720);
      v41 = *(v0 + 664);
      v42 = *(v0 + 632);
      v123 = *(v0 + 616);
      v43 = *(v0 + 560);
      v44 = swift_slowAlloc();
      v170[0] = swift_slowAlloc();
      *v44 = 67109890;
      v132 = v36;
      CurrentValueSubject.value.getter();
      v45 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
      v38(v40, v41);
      *(v44 + 4) = v45 & 1;

      *(v44 + 8) = 1024;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v38(v40, v41);
      v46 = SFAirDropReceive.AskRequest.senderIsMe.getter();
      v124(v42, v123);
      *(v44 + 10) = v46 & 1;

      *(v44 + 14) = 2080;
      v47 = sub_100498E20(v162, v159, v166);
      v49 = v48;
      sub_1003C3F0C(v162, v159, v166);
      v50 = sub_10000C4E4(v47, v49, v170);

      *(v44 + 16) = v50;
      *(v44 + 24) = 2080;
      sub_100530ED4(&qword_100982570, &type metadata accessor for SFAirDropReceive.ItemDestination);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      v54 = *(v142 + 8);
      v54(v128, v126);
      v55 = sub_10000C4E4(v51, v53, v170);

      *(v44 + 26) = v55;
      _os_log_impl(&_mh_execute_header, loga, v132, "Ask sensitive preview SKIP. {transfer.isPreviewSensitive: %{BOOL}d, isSenderMe: %{BOOL}d, userSafetyMode: %s, askStepDestination: %s}", v44, 0x22u);
      swift_arrayDestroy();
    }

    else
    {
      v56 = *(v0 + 768);
      v57 = *(v0 + 760);
      v58 = *(v0 + 752);
      v59 = *(v0 + 560);
      sub_1003C3F0C(v162, v22, v166);

      v54 = *(v57 + 8);
      v54(v56, v58);
    }

    v60 = *(v0 + 1134);
    v61 = *(v0 + 816);
    v62 = *(v0 + 752);
    v63 = *(v0 + 552);
    v156(*(v0 + 544), v61, v62);
    SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
    v54(v61, v62);
    v64 = *(v0 + 816);
    v65 = *(v0 + 808);
    v66 = *(v0 + 800);
    v67 = *(v0 + 792);
    v68 = *(v0 + 784);
    v69 = *(v0 + 776);
    v70 = *(v0 + 768);
    v71 = *(v0 + 744);
    v72 = *(v0 + 720);
    v73 = *(v0 + 712);
    v129 = *(v0 + 704);
    v133 = *(v0 + 696);
    v136 = *(v0 + 688);
    v139 = *(v0 + 680);
    v143 = *(v0 + 656);
    v146 = *(v0 + 648);
    logb = *(v0 + 640);
    v153 = *(v0 + 632);
    v157 = *(v0 + 608);
    v160 = *(v0 + 584);
    v163 = *(v0 + 576);
    v167 = *(v0 + 568);

    v74 = *(v0 + 8);
    goto LABEL_11;
  }

  v86 = *(v0 + 832);
  v87 = *(v0 + 560);
  sub_1003C3F0C(v162, v159, 2u);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&_mh_execute_header, v88, v89, "Ask sensitive preview START", v90, 2u);
  }

  v91 = *(v0 + 904);
  v92 = *(v0 + 864);
  v168 = *(v0 + 816);
  v93 = *(v0 + 680);
  v94 = *(v0 + 576);
  v95 = *(v0 + 560);

  sub_1002A9938(v95 + v91, v0 + 336);
  v96 = *(v0 + 368);
  sub_10002CDC0((v0 + 336), *(v0 + 360));
  CurrentValueSubject.value.getter();
  sub_100589278(v93, v168, v94);
  if (v131)
  {
    v97 = *(v0 + 880);
    v98 = *(v0 + 872);
    v99 = *(v0 + 816);
    v100 = *(v0 + 752);
    v101 = *(v0 + 680);
    v102 = *(v0 + 664);
    sub_10028BCC0(v135, v138);
    v98(v101, v102);
    v85(v99, v100);
    sub_10000C60C((v0 + 336));
    v103 = *(v0 + 816);
    v104 = *(v0 + 808);
    v105 = *(v0 + 800);
    v106 = *(v0 + 792);
    v107 = *(v0 + 784);
    v108 = *(v0 + 776);
    v109 = *(v0 + 768);
    v110 = *(v0 + 744);
    v111 = *(v0 + 720);
    v112 = *(v0 + 712);
    v127 = *(v0 + 704);
    v130 = *(v0 + 696);
    v134 = *(v0 + 688);
    v137 = *(v0 + 680);
    v140 = *(v0 + 656);
    v144 = *(v0 + 648);
    v147 = *(v0 + 640);
    logc = *(v0 + 632);
    v154 = *(v0 + 608);
    v158 = *(v0 + 584);
    v161 = *(v0 + 576);
    v164 = *(v0 + 568);

    v74 = *(v0 + 8);
LABEL_11:

    return v74();
  }

  v165 = *(v0 + 1008);
  v169 = *(v0 + 1000);
  v113 = *(v0 + 880);
  v114 = *(v0 + 872);
  v115 = *(v0 + 720);
  v116 = *(v0 + 664);
  v117 = *(v0 + 608);
  v118 = *(v0 + 600);
  v119 = *(v0 + 592);
  v120 = *(v0 + 576);
  v121 = *(v0 + 560);
  v114(*(v0 + 680), v116);
  sub_10000C60C((v0 + 336));
  v122 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v122 - 8) + 16))(v117, v120, v122);
  v165(v117, enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:), v119);
  sub_100687AF8(v117, v115);
  v169(v117, v119);
  v114(v115, v116);

  return _swift_task_switch(sub_10050B9E4, 0, 0);
}

uint64_t sub_10050B828()
{
  v1 = *(v0 + 1024);
  (*(v0 + 1016))(*(v0 + 816), *(v0 + 752));
  sub_10000C60C((v0 + 376));
  v26 = *(v0 + 1056);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v9 = *(v0 + 744);
  v10 = *(v0 + 720);
  v11 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = *(v0 + 640);
  v21 = *(v0 + 632);
  v22 = *(v0 + 608);
  v23 = *(v0 + 584);
  v24 = *(v0 + 576);
  v25 = *(v0 + 568);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10050B9E4()
{
  v1 = v0[72];
  v2 = swift_task_alloc();
  v0[137] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[138] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  v0[139] = v5;
  *v5 = v0;
  v5[1] = sub_10050BAEC;
  v6 = v0[98];
  v7 = v0[94];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_100809018, v2, sub_1002E3960, v3, 0, 0, v7);
}

uint64_t sub_10050BAEC()
{
  v2 = *v1;
  v3 = *(*v1 + 1112);
  v10 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v4 = sub_10050BFB0;
    v5 = 0;
  }

  else
  {
    v6 = v2[138];
    v7 = v2[137];
    v8 = v2[103];

    v4 = sub_10050BC20;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10050BC20()
{
  v56 = v0;
  v1 = *(v0 + 832);
  v2 = *(v0 + 560);
  v3 = *(*(v0 + 760) + 16);
  v3(*(v0 + 776), *(v0 + 784), *(v0 + 752));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1080);
  if (v6)
  {
    v51 = *(v0 + 1088);
    v8 = *(v0 + 792);
    v9 = *(v0 + 776);
    v10 = *(v0 + 752);
    v11 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55 = v49;
    *v11 = 136315138;
    v3(v8, v9, v10);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    v7(v9, v10);
    v15 = sub_10000C4E4(v12, v14, &v55);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Ask sensitive preview END. Accepting transfer for sensitive content {destination: %s}", v11, 0xCu);
    sub_10000C60C(v49);
  }

  else
  {
    v16 = *(v0 + 776);
    v17 = *(v0 + 752);

    v7(v16, v17);
  }

  v18 = v3;
  v19 = *(v0 + 1088);
  v20 = *(v0 + 1080);
  v21 = *(v0 + 1072);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1134);
  v24 = *(v0 + 816);
  v25 = *(v0 + 784);
  v26 = *(v0 + 752);
  v53 = *(v0 + 576);
  v27 = *(v0 + 552);
  v18(*(v0 + 544), v25, v26);
  SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
  v20(v25, v26);
  v20(v24, v26);
  sub_100005508(v53, &qword_100976908, &unk_100801D60);
  v28 = *(v0 + 816);
  v29 = *(v0 + 808);
  v30 = *(v0 + 800);
  v31 = *(v0 + 792);
  v32 = *(v0 + 784);
  v33 = *(v0 + 776);
  v34 = *(v0 + 768);
  v35 = *(v0 + 744);
  v36 = *(v0 + 720);
  v37 = *(v0 + 712);
  v40 = *(v0 + 704);
  v41 = *(v0 + 696);
  v42 = *(v0 + 688);
  v43 = *(v0 + 680);
  v44 = *(v0 + 656);
  v45 = *(v0 + 648);
  v46 = *(v0 + 640);
  v47 = *(v0 + 632);
  v48 = *(v0 + 608);
  v50 = *(v0 + 584);
  v52 = *(v0 + 576);
  v54 = *(v0 + 568);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10050BFB0()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[103];

  return _swift_task_switch(sub_10050C028, v3, 0);
}

uint64_t sub_10050C028()
{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[102];
  v4 = v0[94];
  v5 = v0[72];
  sub_10028BCC0(v0[133], v0[134]);
  v2(v3, v4);
  sub_100005508(v5, &qword_100976908, &unk_100801D60);
  v30 = v0[140];
  v6 = v0[102];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[99];
  v10 = v0[98];
  v11 = v0[97];
  v12 = v0[96];
  v13 = v0[93];
  v14 = v0[90];
  v15 = v0[89];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[86];
  v21 = v0[85];
  v22 = v0[82];
  v23 = v0[81];
  v24 = v0[80];
  v25 = v0[79];
  v26 = v0[76];
  v27 = v0[73];
  v28 = v0[72];
  v29 = v0[71];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10050C20C()
{
  sub_10000C60C(v0 + 22);
  v25 = v0[118];
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[93];
  v9 = v0[90];
  v10 = v0[89];
  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[82];
  v18 = v0[81];
  v19 = v0[80];
  v20 = v0[79];
  v21 = v0[76];
  v22 = v0[73];
  v23 = v0[72];
  v24 = v0[71];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10050C3B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v3[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_10050C4B4, v7, 0);
}

uint64_t sub_10050C4B4()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v0[9] = *(v3 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10050C57C;
  v5 = v0[3];

  return sub_100641BA8(v5);
}

uint64_t sub_10050C57C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_10050C68C, v2, 0);
}

uint64_t sub_10050C68C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  v4 = swift_allocError();
  v0[11] = v4;
  (*(v2 + 16))(v5, v1, v3);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10050C79C;
  v7 = v0[9];

  return sub_100641284(v4);
}

uint64_t sub_10050C79C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 16);
  v5 = *v0;

  v6 = *(_s6RunnerC19PreAcceptRunResultsVMa(0) + 20);
  v7 = swift_task_alloc();
  v1[13] = v7;
  *v7 = v5;
  v7[1] = sub_10050C93C;
  v8 = v1[7];
  v9 = v1[4];

  return sub_10068E200(v4 + v6, v8);
}

uint64_t sub_10050C93C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_10050CA4C, v2, 0);
}

uint64_t sub_10050CA4C()
{
  v1 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v2 = enum case for SFAirDropReceive.AskResponse.error(_:);
  v3 = type metadata accessor for SFAirDropReceive.AskResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10050CB1C(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = *(*(sub_10028088C(&unk_1009892C0, &qword_10080F030) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3[23] = v8;
  v9 = *(v8 - 8);
  v3[24] = v9;
  v10 = *(v9 + 64) + 15;
  v3[25] = swift_task_alloc();
  v11 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v12 = *(*(sub_10028088C(&unk_1009892D0, &qword_1007F9870) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v13 = *(*(sub_10028088C(&qword_100982508, &unk_100808D50) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v14 = *(*(sub_10028088C(&qword_10097B1C0, &qword_1007FE4C8) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDropReceive.AskResponse();
  v3[30] = v15;
  v16 = *(v15 - 8);
  v3[31] = v16;
  v17 = *(v16 + 64) + 15;
  v3[32] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3[33] = v18;
  v19 = *(v18 - 8);
  v3[34] = v19;
  v20 = *(v19 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v21 = static AirDropActor.shared;
  v3[38] = static AirDropActor.shared;

  return _swift_task_switch(sub_10050CE60, v21, 0);
}

uint64_t sub_10050CE60()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v2 + 16))(v1, v0[17], v3);
  if ((*(v2 + 88))(v1, v3) == enum case for SFAirDropReceive.AskResponse.accept(_:))
  {
    v4 = v0[37];
    v5 = v0[33];
    v6 = v0[34];
    v7 = v0[32];
    (*(v0[31] + 96))(v7, v0[30]);
    v8 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
    (*(v6 + 32))(v4, v7, v5);
    v9 = type metadata accessor for SFAirDropReceive.AcceptContext();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
    v10 = swift_task_alloc();
    v0[39] = v10;
    *v10 = v0;
    v10[1] = sub_10050D2A0;
    v11 = v0[29];
    v12 = v0[18];

    return sub_10050EF78(v11);
  }

  else
  {
    v14 = v0[30];
    v15 = v0[31];
    v16 = v0[17];
    v17 = type metadata accessor for SFError();
    sub_100530ED4(&qword_100976248, &type metadata accessor for SFError);
    v18 = swift_allocError();
    v20 = v19;
    _StringGuts.grow(_:)(60);
    v21._object = 0x80000001007949C0;
    v21._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v21);
    sub_100530ED4(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 125;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    v20[2] = 0xD00000000000006ALL;
    v20[3] = 0x8000000100794A00;
    v20[4] = 97;
    (*(*(v17 - 8) + 104))(v20, enum case for SFError.unexpected(_:), v17);
    swift_willThrow();
    v24 = *(v15 + 8);
    v25 = v0[32];
    v26 = v0[30];
    v0[58] = v18;
    v28 = v0[20];
    v27 = v0[21];
    v29 = v0[18];
    v30 = v0[19];
    v24(v25, v26);
    swift_errorRetain();
    SFAirDropReceive.Failure.init(_:)();
    v31 = *(v29 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
    sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    v32 = swift_allocError();
    v0[59] = v32;
    (*(v28 + 16))(v33, v27, v30);
    v34 = swift_task_alloc();
    v0[60] = v34;
    *v34 = v0;
    v34[1] = sub_10050E2BC;

    return sub_100641284(v32);
  }
}

uint64_t sub_10050D2A0()
{
  v2 = *(*v1 + 312);
  v3 = *v1;
  v3[40] = v0;

  if (v0)
  {
    v4 = v3[38];

    return _swift_task_switch(sub_10050E670, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[41] = v5;
    *v5 = v3;
    v5[1] = sub_10050D414;
    v6 = v3[18];
    v7 = v3[37];

    return sub_100510A44(v7);
  }
}

uint64_t sub_10050D414(uint64_t a1, double a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 328);
  v7 = *v3;
  *(v5 + 336) = a1;
  *(v5 + 344) = a2;
  *(v5 + 352) = v2;

  v8 = *(v4 + 304);
  if (v2)
  {
    v9 = sub_10050E7C4;
  }

  else
  {
    v9 = sub_10050D550;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10050D550()
{
  v1 = v0[17];
  v2 = v0[18];
  sub_10068EB40();
  v3 = v1 + *(_s6RunnerC19PreAcceptRunResultsVMa(0) + 20);
  v4 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_10050D610;
  v6 = v0[42];
  v7 = v0[36];
  v8 = v0[37];
  v9 = v0[18];

  return sub_100513FD0(v7, v6, v8, v4 & 1);
}

uint64_t sub_10050D610(char a1)
{
  v3 = *(*v2 + 360);
  v4 = *v2;
  *(v4 + 496) = a1;
  *(v4 + 368) = v1;

  if (v1)
  {
    v5 = *(v4 + 336);
    v6 = *(v4 + 304);

    return _swift_task_switch(sub_10050E934, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v4 + 376) = v7;
    *v7 = v4;
    v7[1] = sub_10050D798;
    v8 = *(v4 + 288);
    v9 = *(v4 + 144);
    v10 = *(v4 + 336);

    return sub_100688640(v10, v8);
  }
}

uint64_t sub_10050D798(uint64_t a1, double a2)
{
  v6 = *v3;
  v7 = *(*v3 + 376);
  v8 = *v3;
  *(v6 + 384) = a1;
  *(v6 + 392) = v2;

  if (v2)
  {
    v9 = *(v6 + 336);
    v10 = *(v6 + 304);

    return _swift_task_switch(sub_10050EAA4, v10, 0);
  }

  else
  {
    v11 = *(v6 + 344) + a2;
    v12 = swift_task_alloc();
    *(v6 + 400) = v12;
    *v12 = v8;
    v12[1] = sub_10050D954;
    v13 = *(v6 + 496);
    v14 = *(v6 + 336);
    v15 = *(v6 + 280);
    v16 = *(v6 + 288);
    v17 = *(v6 + 224);
    v18 = *(v6 + 144);

    return sub_100517478(v15, v17, v13, v14, a1, v16, v11);
  }
}

uint64_t sub_10050D954(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 400);
  v5 = *v3;
  v5[51] = a2;
  v5[52] = v2;

  if (v2)
  {
    v6 = v5[48];
    v7 = v5[42];
    v8 = v5[38];

    return _swift_task_switch(sub_10050EC30, v8, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v5[53] = v9;
    *v9 = v5;
    v9[1] = sub_10050DAE0;
    v10 = v5[29];
    v11 = v5[18];
    v12 = v5[28];

    return sub_10051CA68(v12, v10);
  }
}

uint64_t sub_10050DAE0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 424);
  v15 = *v3;
  *(*v3 + 432) = v2;

  if (v2)
  {
    v8 = v6[51];
    v9 = v6[48];
    v10 = v6[42];
    v11 = v6[38];

    v12 = sub_10050EDBC;
    v13 = v11;
  }

  else
  {
    v13 = v6[38];
    v6[55] = a2;
    v6[56] = a1;
    v12 = sub_10050DC34;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_10050DC34()
{
  v29 = v0[55];
  v30 = v0[56];
  v32 = v0[51];
  v28 = v0[48];
  v26 = v0[42];
  v1 = v0[35];
  v35 = v0[34];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v25 = v0[24];
  v27 = v0[23];
  v33 = v0[22];
  v34 = v0[33];
  v5 = v0[18];
  v31 = v0[16];
  v6 = enum case for SFAirDropReceive.Transfer.Metrics.TransferResult.success(_:);
  v7 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_metrics;
  swift_beginAccess();
  SFAirDropReceive.Transfer.Metrics.result.setter();
  swift_endAccess();
  static Date.now.getter();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  swift_beginAccess();
  SFAirDropReceive.Transfer.Metrics.endDate.setter();
  swift_endAccess();
  v11 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
  v12 = v11[12];
  v13 = (v4 + v11[16]);
  v14 = v11[20];
  v23 = v11[24];
  v15 = v11[28];
  v16 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v16 - 8) + 16))(v4, v5 + v9, v16);
  v24 = *(v35 + 16);
  v24(v4 + v12, v1, v34);
  *v13 = v30;
  v13[1] = v29;
  *(v4 + v14) = v26;
  *(v4 + v23) = v28;
  *(v4 + v15) = v32;
  (*(v25 + 104))(v4, enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:), v27);
  sub_100687AF8(v4, v31);
  (*(v25 + 8))(v4, v27);
  v17 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v5 + v17, (v0 + 2));
  v18 = v0[5];
  v19 = v0[6];
  sub_10002CDC0(v0 + 2, v18);
  v24(v33, v1, v34);
  (*(v35 + 56))(v33, 0, 1, v34);
  (*(v19 + 96))(v31, 1, v33, v18, v19);
  sub_100005508(v33, &unk_1009892C0, &qword_10080F030);
  sub_10000C60C(v0 + 2);
  v20 = *(v5 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  v21 = swift_task_alloc();
  v0[57] = v21;
  *v21 = v0;
  v21[1] = sub_10050E044;

  return sub_100641284(0);
}

uint64_t sub_10050E044()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_10050E154, v2, 0);
}

uint64_t sub_10050E154()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v6 = v0[29];
  sub_100005508(v0[28], &qword_100982508, &unk_100808D50);
  v7 = *(v4 + 8);
  v7(v3, v5);
  v7(v1, v5);
  sub_100005508(v6, &qword_10097B1C0, &qword_1007FE4C8);
  v7(v2, v5);
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[35];
  v11 = v0[32];
  v13 = v0[28];
  v12 = v0[29];
  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[25];
  v17 = v0[22];
  v20 = v0[21];

  v18 = v0[1];

  return v18();
}