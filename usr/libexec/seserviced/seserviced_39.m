uint64_t sub_100338E68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v20 = *(v8 + 16);
    v37 = a1;
    v20(v11, a1, v7);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = a3;
      v24 = v23;
      v39[0] = swift_slowAlloc();
      *v24 = 136315394;
      sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v8 + 8))(v11, v7);
      v28 = sub_1002FFA0C(v25, v27, v39);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = v38;
      *(v24 + 14) = sub_1002FFA0C(v38, v36, v39);
      _os_log_impl(&_mh_execute_header, v21, v22, "Removing high priority request for connection %s client %s", v24, 0x16u);
      swift_arrayDestroy();

      a3 = v36;
    }

    else
    {

      (*(v8 + 8))(v11, v7);
      v29 = v38;
    }

    v30 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests;
    v31 = swift_beginAccess();
    v32 = *(v4 + v30);
    __chkstk_darwin(v31);
    *(&v35 - 4) = v37;
    *(&v35 - 3) = v29;
    *(&v35 - 2) = a3;

    v33 = sub_100333244(sub_10033C418, &v35 - 6, v32);
    v34 = *(v4 + v30);
    *(v4 + v30) = v33;

    return sub_10033A8B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100339298(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_logger;
    (*(v5 + 16))(v8, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v46[1] = v16;
      v20 = v19;
      v21 = swift_slowAlloc();
      v47 = a1;
      v22 = v21;
      v49[0] = v21;
      *v20 = 136315138;
      sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v5 + 8))(v8, v4);
      v26 = sub_1002FFA0C(v23, v25, v49);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Setting low priority for connection %s", v20, 0xCu);
      sub_1000752F4(v22);
      a1 = v47;
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v27 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests;
    v28 = swift_beginAccess();
    v29 = *(v2 + v27);
    __chkstk_darwin(v28);
    v46[-2] = a1;

    v30 = sub_10011F6E8(sub_10033C398, &v46[-4], v29);

    if (v30)
    {

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v48 = v34;
        *v33 = 136315138;
        v35 = *(v30 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client);
        v36 = *(v30 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client + 8);

        v37 = sub_1002FFA0C(v35, v36, &v48);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "Can't set priority to LOW because HIGH priority is requested by client %s", v33, 0xCu);
        sub_1000752F4(v34);

        return;
      }
    }

    else
    {
      v38 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
      v39 = swift_beginAccess();
      v40 = *(v2 + v38);
      __chkstk_darwin(v39);
      v46[-2] = a1;

      v41 = sub_10011F6E8(sub_10033C3D8, &v46[-4], v40);

      if (!v41)
      {
        v31 = Logger.logObject.getter();
        v42 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v31, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v31, v42, "Connection does not exist", v43, 2u);
        }

        goto LABEL_19;
      }

      *(v41 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) = 0;
      if (*(v41 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) == 1)
      {
        sub_10033A8B4();

        return;
      }

      v31 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v31, v44, "Connection priority already LOW", v45, 2u);
      }
    }

LABEL_19:

    return;
  }

  __break(1u);
}

void sub_100339910(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_logger;
    (*(v5 + 16))(v8, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v41[1] = v16;
      v21 = v20;
      v43[0] = v20;
      *v19 = 136315138;
      sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v4;
      v24 = v2;
      v25 = a1;
      v27 = v26;
      (*(v5 + 8))(v8, v23);
      v28 = sub_1002FFA0C(v22, v27, v43);
      a1 = v25;
      v2 = v24;

      *(v19 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "Setting high priority for connection %s", v19, 0xCu);
      sub_1000752F4(v21);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v29 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
    v30 = swift_beginAccess();
    v31 = *(v2 + v29);
    __chkstk_darwin(v30);
    v41[-2] = a1;

    v4 = sub_10011F6E8(sub_10033C4D4, &v41[-4], v31);

    if (!v4)
    {
      v36 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v36, v39, "Connection does not exist", v40, 2u);
      }

      goto LABEL_15;
    }

    *(v4 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) = 1;
    v32 = swift_beginAccess();
    v42 = v4;
    v33 = *(v2 + v29);
    __chkstk_darwin(v32);
    v41[-2] = &v42;

    v34 = sub_100333244(sub_10033C4FC, &v41[-4], v33);
    v35 = *(v2 + v29);

    *(v2 + v29) = v34;
    if (!(v34 >> 62))
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    return;
  }

LABEL_9:

  sub_1001A2144(0, 0, v4);

  swift_endAccess();
  if (*(v4 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent))
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Connection priority already HIGH", v38, 2u);
    }

LABEL_15:

    return;
  }

  sub_10033A8B4();
}

uint64_t sub_100339EE0()
{
  v0 = type metadata accessor for DSKBLEConnectionPriority(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100339F20();
  qword_10051B808 = result;
  return result;
}

uint64_t sub_100339F20()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections) = _swiftEmptyArrayStorage;
  v1 = v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_delegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_numHighPrioritySlots) = 2;
  *(v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests) = _swiftEmptyArrayStorage;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4[4] = sub_10033C394;
  v4[5] = v0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100193978;
  v4[3] = &unk_1004D1150;
  v2 = _Block_copy(v4);

  os_state_add_handler();
  _Block_release(v2);
  return v0;
}

void *sub_10033A094()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    goto LABEL_52;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v5 = _swiftEmptyArrayStorage;
    if (v4)
    {
      break;
    }

LABEL_31:
    v46 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
    v98 = v46;
    *&v97 = v5;
    sub_100075D50(&v97, v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v84, 0x697463656E6E6F63, 0xEB00000000736E6FLL, isUniquelyReferenced_nonNull_native);
    v48 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests;
    swift_beginAccess();
    v49 = *(v1 + v48);
    if (v49 >> 62)
    {
      v73 = *(v1 + v48);
      v50 = _CocoaArrayWrapper.endIndex.getter();
      v49 = v73;
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = _swiftEmptyArrayStorage;
    if (!v50)
    {
LABEL_47:
      v98 = v46;
      *&v97 = v51;
      sub_100075D50(&v97, v84);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      sub_100315178(v84, 0xD000000000000016, 0x800000010046F660, v69);
      sub_1001950D4(_swiftEmptyDictionarySingleton);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v71 = sub_100015DA0("dskbleconnectionpriority.state", isa);

      return v71;
    }

    *&v97 = _swiftEmptyArrayStorage;
    v52 = v49;

    result = sub_10019F464(0, v50 & ~(v50 >> 63), 0);
    if (v50 < 0)
    {
      goto LABEL_55;
    }

    v51 = v97;
    v79 = v52 & 0xC000000000000001;
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v53 = v52;
    v77 = v52;
    v54 = 0;
    while (1)
    {
      if (v79)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v55 = *(v53 + 8 * v54 + 32);
      }

      v80 = UUID.uuidString.getter();
      v81 = v56;
      v82 = *(v55 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client);
      v83 = *(v55 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client + 8);
      v1 = static _DictionaryStorage.allocate(capacity:)();

      v3 = sub_10008C908(0x696669746E656469, 0xEA00000000007265);
      if (v57)
      {
        break;
      }

      *(v1 + 64 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      v58 = (*(v1 + 48) + 16 * v3);
      *v58 = 0x696669746E656469;
      v58[1] = 0xEA00000000007265;
      v59 = (*(v1 + 56) + 16 * v3);
      *v59 = v80;
      v59[1] = v81;
      v60 = *(v1 + 16);
      v25 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v25)
      {
        goto LABEL_51;
      }

      *(v1 + 16) = v61;

      v3 = sub_10008C908(0x746E65696C63, 0xE600000000000000);
      if (v62)
      {
        break;
      }

      *(v1 + 64 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      v63 = (*(v1 + 48) + 16 * v3);
      *v63 = 0x746E65696C63;
      v63[1] = 0xE600000000000000;
      v64 = (*(v1 + 56) + 16 * v3);
      *v64 = v82;
      v64[1] = v83;
      v65 = *(v1 + 16);
      v25 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v25)
      {
        goto LABEL_51;
      }

      *(v1 + 16) = v66;

      sub_100068FC4(&unk_100504020, &qword_100409CC0);
      swift_arrayDestroy();

      *&v97 = v51;
      v68 = v51[2];
      v67 = v51[3];
      if (v68 >= v67 >> 1)
      {
        sub_10019F464((v67 > 1), v68 + 1, 1);
        v51 = v97;
      }

      ++v54;
      v51[2] = v68 + 1;
      v51[v68 + 4] = v1;
      v53 = v77;
      if (v50 == v54)
      {

        goto LABEL_47;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    v72 = v3;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v72;
  }

  *&v97 = _swiftEmptyArrayStorage;
  v6 = v3;

  result = sub_10019F464(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v74 = v1;
    v5 = v97;
    v78 = v6 & 0xC000000000000001;
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v8 = v6;
    v76 = v6;
    v9 = 0;
    v75 = v4;
    while (1)
    {
      if (v78)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v8 + 8 * v9 + 32);
      }

      v85 = 0x696669746E656469;
      v86 = 0xEA00000000007265;
      v87 = UUID.uuidString.getter();
      v88 = v11;
      v89 = 0xD000000000000010;
      v90 = 0x800000010046F640;
      v12 = *(v10 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) ? 1751607656 : 7827308;
      v13 = *(v10 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) ? 0xE400000000000000 : 0xE300000000000000;
      v91 = v12;
      v92 = v13;
      v93 = 0x70206465746E6177;
      v94 = 0xEF797469726F6972;
      v14 = *(v10 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) ? 1751607656 : 7827308;
      v15 = *(v10 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) ? 0xE400000000000000 : 0xE300000000000000;
      v95 = v14;
      v96 = v15;
      v16 = static _DictionaryStorage.allocate(capacity:)();

      v17 = v85;
      v18 = v86;
      v20 = v87;
      v19 = v88;

      v3 = sub_10008C908(v17, v18);
      if (v21)
      {
        break;
      }

      v1 = (v16 + 8);
      *(v16 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v3;
      v22 = (v16[6] + 16 * v3);
      *v22 = v17;
      v22[1] = v18;
      v23 = (v16[7] + 16 * v3);
      *v23 = v20;
      v23[1] = v19;
      v24 = v16[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_49;
      }

      v16[2] = v26;
      v27 = v89;
      v28 = v90;
      v30 = v91;
      v29 = v92;

      v3 = sub_10008C908(v27, v28);
      if (v31)
      {
        break;
      }

      *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      v32 = (v16[6] + 16 * v3);
      *v32 = v27;
      v32[1] = v28;
      v33 = (v16[7] + 16 * v3);
      *v33 = v30;
      v33[1] = v29;
      v34 = v16[2];
      v25 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v25)
      {
        goto LABEL_49;
      }

      v16[2] = v35;
      v36 = v93;
      v37 = v94;
      v39 = v95;
      v38 = v96;

      v3 = sub_10008C908(v36, v37);
      if (v40)
      {
        break;
      }

      *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      v41 = (v16[6] + 16 * v3);
      *v41 = v36;
      v41[1] = v37;
      v42 = (v16[7] + 16 * v3);
      *v42 = v39;
      v42[1] = v38;
      v43 = v16[2];
      v25 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v25)
      {
        goto LABEL_49;
      }

      v16[2] = v44;

      sub_100068FC4(&unk_100504020, &qword_100409CC0);
      swift_arrayDestroy();

      *&v97 = v5;
      v1 = v5[2];
      v45 = v5[3];
      if (v1 >= v45 >> 1)
      {
        sub_10019F464((v45 > 1), v1 + 1, 1);
        v5 = v97;
      }

      ++v9;
      v5[2] = v1 + 1;
      v5[v1 + 4] = v16;
      v8 = v76;
      if (v75 == v9)
      {

        v1 = v74;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_10033A8B4()
{
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v0 = *(v55 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v55);
  v54 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v53);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_54:
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v51 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v12 = *(v7 + 8);
  v7 += 8;
  v12(v10, v6);
  if (v11)
  {
    v13 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests;
    v14 = v62;
    swift_beginAccess();
    v10 = *(v14 + v13);
    v7 = v14;
    v49 = v0;
    v48 = v3;
    if (!(v10 >> 62))
    {
      v6 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v3 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;

  swift_beginAccess();
  v60 = v3;
  v50 = v10;
  if (v6)
  {
    v15 = v10;
    v16 = 0;
    v10 = 0;
    v59 = v15 & 0xC000000000000001;
    v58 = v15 & 0xFFFFFFFFFFFFFF8;
    v57 = v15 + 32;
    v56 = v6;
    while (1)
    {
      if (v59)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = __OFADD__(v16, 1);
        v19 = (v16 + 1);
        if (v18)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v16 >= *(v58 + 16))
        {
          goto LABEL_53;
        }

        v17 = *(v57 + 8 * v16);

        v18 = __OFADD__(v16, 1);
        v19 = (v16 + 1);
        if (v18)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      v61 = v19;
      v6 = *(v7 + v3);
      if (v6 >> 62)
      {
        if (v6 < 0)
        {
          v26 = *(v7 + v3);
        }

        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v20)
      {
        break;
      }

LABEL_7:

      v7 = v62;
      v3 = v60;
LABEL_8:
      v6 = v56;
      v16 = v61;
      if (v61 == v56)
      {
        goto LABEL_36;
      }
    }

    v0 = 0;
    v7 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v3 = v0 + 1;
        if (__OFADD__(v0, 1))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      else
      {
        if (v0 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v21 = *(v6 + 8 * v0 + 32);

        v3 = v0 + 1;
        if (__OFADD__(v0, 1))
        {
          goto LABEL_49;
        }
      }

      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      ++v0;
      if (v3 == v20)
      {
        goto LABEL_7;
      }
    }

    *(v21 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) = 1;
    v0 = v62;
    v3 = v60;
    v22 = swift_beginAccess();
    v66 = v21;
    v23 = *(v0 + v3);
    __chkstk_darwin(v22);
    *(&v48 - 2) = &v66;

    v24 = sub_100333244(sub_10033BDBC, &v48 - 4, v23);
    v7 = v0;
    v25 = *(v0 + v3);

    *(v0 + v3) = v24;
    if (!(v24 >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {

      sub_1001A2144(0, 0, v21);

      swift_endAccess();

      goto LABEL_8;
    }

    __break(1u);
  }

  v10 = 0;
LABEL_36:

  v67 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v27 = *(v7 + v3);

  sub_10033BDE0(v28, &v67, v7);

  v29 = v67;
  if (v67 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v6 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_38:
      v30 = 0;
      v31 = v29 & 0xC000000000000001;
      v0 = v29 & 0xFFFFFFFFFFFFFF8;
      v56 = v65;
      v50 = v49 + 1;
      v49 = (v48 + 8);
      v59 = 0;
      v58 = v29;
      v57 = v29 & 0xC000000000000001;
      do
      {
        if (v31)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v41 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v30 >= *(v0 + 16))
          {
            goto LABEL_51;
          }

          v40 = *(v29 + 8 * v30 + 32);

          v41 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        if ((*(v40 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) & 1) == 0)
        {
          *(v40 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) = 1;
          v32 = swift_allocObject();
          *(v32 + 16) = v7;
          *(v32 + 24) = v40;
          v65[2] = sub_10033C294;
          v65[3] = v32;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v65[0] = sub_100080830;
          v65[1] = &unk_1004D10D8;
          v61 = _Block_copy(aBlock);

          v33 = v52;
          static DispatchQoS.unspecified.getter();
          v63 = _swiftEmptyArrayStorage;
          sub_10033C34C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
          sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
          sub_1000BA838();
          v34 = v54;
          v35 = v55;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v36 = v61;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          v31 = v57;
          _Block_release(v36);

          v37 = v34;
          v29 = v58;
          v38 = v35;
          v3 = v60;
          (*v50)(v37, v38);
          v39 = v33;
          v7 = v62;
          v10 = v59;
          (*v49)(v39, v53);
        }

        ++v30;
      }

      while (v41 != v6);
    }
  }

  v42 = *(v7 + v3);
  if (v42 >> 62)
  {
    goto LABEL_72;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_60:

  if (v43)
  {
    v44 = 0;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_69:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_72:
          v43 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_60;
        }

        v45 = *(v42 + 8 * v44 + 32);

        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_69;
        }
      }

      aBlock[0] = v45;
      sub_10033B5E0(aBlock);

      ++v44;
    }

    while (v46 != v43);
  }
}

BOOL sub_10033B278(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for UUID();
  sub_10033C34C(&qword_100502C18, &type metadata accessor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_10033B31C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v6 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client) == a3 && *(v6 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client + 8) == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10033B3A8(uint64_t a1)
{
  v7 = a1;
  v2 = *v1;
  v6[2] = &v7;

  v3 = sub_100333244(sub_10033C460, v6, v2);

  *v1 = v3;

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_10033B470(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  type metadata accessor for UUID();
  sub_10033C34C(&qword_100502C18, &type metadata accessor for UUID);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    if (*(v6 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client) == a3 && *(v6 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client + 8) == a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_10033B564(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = (a1 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_delegate);
  result = swift_beginAccess();
  v7 = v5[3];
  if (v7)
  {
    v8 = *sub_1000752B0(v5, v7);
    return a3(a2 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_identifier);
  }

  return result;
}

void sub_10033B5E0(uint64_t *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_retain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    v17 = v16[0];
    *v11 = 136315650;
    (*(v4 + 16))(v7, v8 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_identifier, v3);
    sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v16[1] = v1;
    v14 = v13;
    (*(v4 + 8))(v7, v3);
    v15 = sub_1002FFA0C(v12, v14, &v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 1024;
    LODWORD(v15) = *(v8 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent);

    *(v11 + 14) = v15;

    *(v11 + 18) = 1024;
    LODWORD(v14) = *(v8 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted);

    *(v11 + 20) = v14;

    _os_log_impl(&_mh_execute_header, v9, v10, "Priority for %s current high %{BOOL}d wanted high %{BOOL}d", v11, 0x18u);
    sub_1000752F4(v16[0]);
  }

  else
  {
  }
}

uint64_t sub_10033B880()
{
  v1 = OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10033B91C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

uint64_t sub_10033B938()
{
  v1 = OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_connectionIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10033B9E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

uint64_t sub_10033BA04()
{
  v1 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections);

  sub_10033BD34(v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_delegate);
  v4 = *(v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10033BAF8()
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

uint64_t sub_10033BBD8()
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

uint64_t sub_10033BC9C()
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

uint64_t sub_10033BD34(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504090, &qword_10040B3A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10033BDE0(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v39 = a3;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v38);
  v37 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for DispatchQoS();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v36);
  v35 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    do
    {
      v13 = 0;
      v14 = a1 & 0xC000000000000001;
      v15 = a1 & 0xFFFFFFFFFFFFFF8;
      v28 = (v5 + 8);
      v29 = v43;
      v27 = (v8 + 8);
      v16 = &qword_10050B000;
      v33 = a1;
      v34 = a2;
      v31 = a1 & 0xC000000000000001;
      v32 = v12;
      v30 = a1 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_26;
        }

LABEL_12:
        v17 = *a2;
        if (*a2 >> 62)
        {
          if (v17 < 0)
          {
            v24 = *a2;
          }

          if (_CocoaArrayWrapper.endIndex.getter() > 1)
          {
            goto LABEL_15;
          }
        }

        else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
        {
          goto LABEL_15;
        }

        if (*(v8 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) == 1)
        {

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v16 = &qword_10050B000;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          goto LABEL_7;
        }

LABEL_15:
        v18 = v16[135];
        if (*(v8 + v18) == 1)
        {
          *(v8 + v18) = 0;
          if (qword_100501D90 != -1)
          {
            swift_once();
          }

          v40 = qword_10051B7F0;
          v19 = swift_allocObject();
          *(v19 + 16) = v39;
          *(v19 + 24) = v8;
          v43[2] = sub_10033C31C;
          v43[3] = v19;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v43[0] = sub_100080830;
          v43[1] = &unk_1004D1128;
          v20 = _Block_copy(aBlock);

          v21 = v35;
          static DispatchQoS.unspecified.getter();
          v41 = _swiftEmptyArrayStorage;
          sub_10033C34C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
          sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
          sub_1000BA838();
          v23 = v37;
          v22 = v38;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v20);
          (*v28)(v23, v22);
          (*v27)(v21, v36);

          a1 = v33;
          a2 = v34;
          v14 = v31;
          v12 = v32;
          v15 = v30;
          v16 = &qword_10050B000;
          goto LABEL_8;
        }

LABEL_7:

LABEL_8:
        ++v13;
        if (v5 == v12)
        {
          return result;
        }
      }

      if (v13 >= *(v15 + 16))
      {
        goto LABEL_27;
      }

      v8 = *(a1 + 8 * v13 + 32);

      v5 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_12;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      result = _CocoaArrayWrapper.endIndex.getter();
      v12 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10033C2C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10033C2DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10033C34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10033C398(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_10033C3D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return static UUID.== infix(_:_:)() & 1;
}

BOOL sub_10033C484(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = **(v2 + 16);
  v5 = *a2;
  return (static UUID.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_10033C518(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v58 = a2;
  v3 = type metadata accessor for SymmetricKey();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SharedSecret();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v60 = 0xD000000000000012;
  v61 = 0x80000001004626A0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v18 = sub_10008CA7C(v62), (v19 & 1) == 0))
  {
    sub_100092F28(v62);
    goto LABEL_7;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v18, v65);
  sub_100092F28(v62);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_1000B9C54();
    v22 = "Missing ephemeralPublicKey";
    goto LABEL_8;
  }

  v53 = v3;
  v54 = Data.init(base64Encoded:options:)();
  v21 = v20;

  v55 = v21;
  if (v21 >> 60 == 15)
  {
    sub_1000B9C54();
    v22 = "Invalid ephemeralPublicKey";
LABEL_8:
    sub_10030990C(0, 1, 0xD00000000000001ALL, (v22 - 32) | 0x8000000000000000, 0);
    return swift_willThrow();
  }

  v60 = 1635017060;
  v61 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v24 = sub_10008CA7C(v62), (v25 & 1) == 0))
  {
    sub_100092F28(v62);
    v27 = v54;
    goto LABEL_15;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v24, v65);
  sub_100092F28(v62);
  v26 = swift_dynamicCast();
  v27 = v54;
  if ((v26 & 1) == 0)
  {
LABEL_15:
    sub_1000B9C54();
    v30 = 0x20676E697373694DLL;
    goto LABEL_16;
  }

  v52 = Data.init(base64Encoded:options:)();
  v29 = v28;

  if (v29 >> 60 == 15)
  {
    sub_1000B9C54();
    v30 = 0x2064696C61766E49;
LABEL_16:
    sub_10030990C(0, 1, v30, 0xEC00000061746164, 0);
    swift_willThrow();
    v31 = v27;
    v32 = v55;
    return sub_10006A2D0(v31, v32);
  }

  v51 = v29;
  v33 = v55;
  v62[0] = v27;
  v62[1] = v55;
  sub_100069E2C(v27, v55);
  v34 = v66;
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (v34)
  {
    sub_10006A2D0(v27, v33);
    v31 = v52;
    v32 = v51;
    return sub_10006A2D0(v31, v32);
  }

  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v50 = type metadata accessor for SHA256();
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v66 = P256.KeyAgreement.PublicKey.x963Representation.getter();
  v36 = v35;
  v47 = v35;
  v58 = *(v59 + 8);
  v59 += 8;
  v58(v15, v11);
  v37 = v55;
  *&v65[0] = v27;
  *(&v65[0] + 1) = v55;
  v63 = &type metadata for Data;
  v64 = &protocol witness table for Data;
  v62[0] = v66;
  v62[1] = v36;
  v38 = sub_1000752B0(v62, &type metadata for Data);
  v39 = v38[1];
  v49 = *v38;
  v48 = v39;
  sub_10006A2BC(v27, v37);
  v40 = v66;
  v41 = v47;
  sub_100069E2C(v66, v47);
  sub_10008E4C8(v49, v48);
  v49 = 0;
  sub_10006A178(v40, v41);
  sub_1000752F4(v62);
  *v62 = v65[0];
  sub_1000B95EC(&qword_100503000, &type metadata accessor for SHA256);
  sub_1000937E0();
  SharedSecret.x963DerivedSymmetricKey<A, B>(using:sharedInfo:outputByteCount:)();
  v42 = sub_10006A178(v62[0], v62[1]);
  v66 = &v46;
  __chkstk_darwin(v42);
  v43 = v52;
  v44 = v51;
  *(&v46 - 2) = v52;
  *(&v46 - 1) = v44;
  v45 = v49;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  sub_10006A2D0(v43, v51);
  sub_10006A2D0(v27, v55);
  (*(v57 + 8))(v6, v53);
  (*(v56 + 8))(v10, v7);
  if (v45)
  {
    return (v58)(v17, v11);
  }

  v58(v17, v11);
  return v62[0];
}

char *sub_10033CCB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a1;
  v49 = a2;
  v7 = type metadata accessor for SymmetricKey();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  __chkstk_darwin(v7);
  v50 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharedSecret();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  __chkstk_darwin(v10);
  v60 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  __chkstk_darwin(v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v41 - v23;
  *&v56 = a3;
  *(&v56 + 1) = a4;
  sub_100069E2C(a3, a4);
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (!v4)
  {
    v46 = v17;
    v47 = v18;
    v45 = v13;
    P256.KeyAgreement.PrivateKey.init()();
    P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    v25 = v16;
    v44 = v24;
    v41[1] = type metadata accessor for SHA256();
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v26 = P256.KeyAgreement.PublicKey.x963Representation.getter();
    v28 = v27;
    v29 = *(v47 + 8);
    v47 += 8;
    v43 = v29;
    v29(v22, v46);
    *&v59 = v26;
    *(&v59 + 1) = v28;
    v57 = &type metadata for Data;
    v58 = &protocol witness table for Data;
    *&v56 = a3;
    *(&v56 + 1) = a4;
    v42 = v25;
    v30 = a4;
    v31 = sub_1000752B0(&v56, &type metadata for Data);
    v32 = *v31;
    v33 = v31[1];
    sub_100069E2C(a3, a4);
    sub_100069E2C(v26, v28);
    sub_10008E4C8(v32, v33);
    sub_10006A178(v26, v28);
    sub_1000752F4(&v56);
    v56 = v59;
    sub_1000B95EC(&qword_100503000, &type metadata accessor for SHA256);
    sub_1000937E0();
    v34 = v50;
    v35 = v60;
    SharedSecret.x963DerivedSymmetricKey<A, B>(using:sharedInfo:outputByteCount:)();
    v36 = sub_10006A178(v56, *(&v56 + 1));
    __chkstk_darwin(v36);
    v37 = v49;
    v41[-6] = v48;
    v41[-5] = v37;
    v41[-4] = a3;
    v41[-3] = v30;
    v38 = v42;
    v41[-2] = v42;
    sub_100068FC4(&unk_100503FB0, &unk_10040B300);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v39 = (v55 + 8);
    (*(v53 + 8))(v34, v54);
    (*(v51 + 8))(v35, v52);
    v43(v44, v46);
    v16 = v56;
    (*v39)(v38, v45);
  }

  return v16;
}

uint64_t sub_10033D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t *a7@<X8>)
{
  v85 = a6;
  v78 = a4;
  v79 = a5;
  v92 = a2;
  v93 = a3;
  v89 = a7;
  v86 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v84 = *(v86 - 8);
  v8 = *(v84 + 64);
  __chkstk_darwin(v86);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256();
  v11 = *(v10 - 8);
  v76 = v10;
  v77 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v90 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SHA256Digest();
  v15 = *(v14 - 8);
  v81 = v14;
  v82 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v80 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100068FC4(&qword_1005054B8, &unk_10040CD40);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v91 = &v75 - v20;
  v21 = type metadata accessor for AES.GCM.SealedBox();
  v87 = *(v21 - 8);
  v88 = v21;
  v22 = *(v87 + 64);
  __chkstk_darwin(v21);
  v94 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AES.GCM.Nonce();
  v95 = *(v24 - 8);
  v96 = v24;
  v25 = *(v95 + 64);
  __chkstk_darwin(v24);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SymmetricKey();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99[0] = a1;
  v99[1] = 16;
  sub_100068FC4(&qword_10050B600, &qword_100416928);
  sub_10033E17C(&qword_10050B608);
  v33 = v32;
  SymmetricKey.init<A>(data:)();
  v34 = a1 + 16;
  if (!a1)
  {
    v34 = 0;
  }

  v99[0] = v34;
  v99[1] = 16;
  sub_10033E17C(&qword_10050B610);
  v35 = v102;
  AES.GCM.Nonce.init<A>(data:)();
  if (v35)
  {
    return (*(v29 + 8))(v32, v28);
  }

  v37 = v90;
  v75 = v29;
  v102 = v28;
  v99[0] = v92;
  v99[1] = v93;
  v39 = v95;
  v38 = v96;
  v40 = v91;
  (*(v95 + 16))(v91, v27, v96);
  (*(v39 + 56))(v40, 0, 1, v38);
  sub_1000937E0();
  static AES.GCM.seal<A>(_:using:nonce:)();
  sub_1001A87BC(v40);
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  v93 = v27;
  v42 = inited;
  *(inited + 16) = xmmword_1004099F0;
  strcpy(v99, "version");
  v99[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v42 + 96) = &type metadata for String;
  *(v42 + 72) = v43;
  *(v42 + 80) = v44;
  strcpy(v99, "publicKeyHash");
  HIWORD(v99[1]) = -4864;
  AnyHashable.init<A>(_:)();
  sub_1000B95EC(&qword_100503000, &type metadata accessor for SHA256);
  v92 = v33;
  v45 = v37;
  v46 = v76;
  dispatch thunk of HashFunction.init()();
  v48 = v78;
  v47 = v79;
  sub_100069E2C(v78, v79);
  sub_100357FC4(v48, v47);
  v91 = 0;
  sub_10006A178(v48, v47);
  v49 = v80;
  dispatch thunk of HashFunction.finalize()();
  (*(v77 + 8))(v45, v46);
  v50 = v81;
  v100 = v81;
  v101 = sub_1000B95EC(&qword_100503008, &type metadata accessor for SHA256Digest);
  v51 = sub_1000B9634(v99);
  v52 = v82;
  (*(v82 + 16))(v51, v49, v50);
  sub_1000752B0(v99, v100);
  v53 = v91;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v91 = v53;
  (*(v52 + 8))(v49, v50);
  v54 = v97;
  v55 = v98;
  sub_1000752F4(v99);
  v56 = Data.base64EncodedString(options:)(0);
  sub_10006A178(v54, v55);
  *(v42 + 168) = &type metadata for String;
  *(v42 + 144) = v56;
  v99[0] = 0xD000000000000012;
  v99[1] = 0x80000001004626A0;
  AnyHashable.init<A>(_:)();
  v57 = v83;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v58 = P256.KeyAgreement.PublicKey.x963Representation.getter();
  v60 = v59;
  (*(v84 + 8))(v57, v86);
  v61 = Data.base64EncodedString(options:)(0);
  sub_10006A178(v58, v60);
  *(v42 + 240) = &type metadata for String;
  *(v42 + 216) = v61;
  v99[0] = 1635017060;
  v99[1] = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  v62 = v94;
  v63 = AES.GCM.SealedBox.ciphertext.getter();
  v65 = v64;
  v66 = AES.GCM.SealedBox.tag.getter();
  v68 = v67;
  v97 = v63;
  v98 = v65;
  v100 = &type metadata for Data;
  v101 = &protocol witness table for Data;
  v99[0] = v66;
  v99[1] = v67;
  v69 = sub_1000752B0(v99, &type metadata for Data);
  v70 = *v69;
  v90 = v69[1];
  sub_100069E2C(v63, v65);
  sub_100069E2C(v66, v68);
  sub_10008E4C8(v70, v90);
  sub_10006A178(v66, v68);
  sub_10006A178(v63, v65);
  sub_1000752F4(v99);
  v71 = v97;
  v72 = v98;
  v73 = Data.base64EncodedString(options:)(0);
  sub_10006A178(v71, v72);
  *(v42 + 312) = &type metadata for String;
  *(v42 + 288) = v73;
  v74 = sub_100090BC4(v42);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
  swift_arrayDestroy();
  (*(v87 + 8))(v62, v88);
  (*(v95 + 8))(v93, v96);
  result = (*(v75 + 8))(v92, v102);
  *v89 = v74;
  return result;
}

uint64_t sub_10033DC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v58 = a3;
  v59 = a2;
  v57 = a4;
  v5 = type metadata accessor for AES.GCM.SealedBox();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  __chkstk_darwin(v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AES.GCM.Nonce();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v16 = type metadata accessor for SymmetricKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v63 = 16;
  sub_100068FC4(&qword_10050B600, &qword_100416928);
  sub_10033E17C(&qword_10050B608);
  SymmetricKey.init<A>(data:)();
  v21 = a1 + 16;
  if (!a1)
  {
    v21 = 0;
  }

  v62 = v21;
  v63 = 16;
  sub_10033E17C(&qword_10050B610);
  v22 = v64;
  result = AES.GCM.Nonce.init<A>(data:)();
  if (v22)
  {
    return (*(v17 + 8))(v20, v16);
  }

  v51 = v16;
  v52 = v13;
  v64 = v15;
  v50 = v17;
  v24 = v56;
  v26 = v57;
  v25 = BYTE6(v58);
  v27 = v58 >> 62;
  if ((v58 >> 62) > 1)
  {
    v28 = v55;
    if (v27 != 2)
    {
      v29 = 0;
      goto LABEL_15;
    }

    v31 = *(v59 + 16);
    v30 = *(v59 + 24);
    v32 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (!v32)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v28 = v55;
    if (!v27)
    {
      v29 = BYTE6(v58);
LABEL_15:
      v33 = v20;
      goto LABEL_16;
    }
  }

  LODWORD(v29) = HIDWORD(v59) - v59;
  if (__OFSUB__(HIDWORD(v59), v59))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v33 = v20;
  v29 = v29;
LABEL_16:
  result = v52;
  v34 = v29 - 16;
  if (__OFSUB__(v29, 16))
  {
    __break(1u);
    goto LABEL_32;
  }

  v35 = v8;
  v36 = v25;
  result = (*(v28 + 16))(v52, v64, v24);
  if (v34 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = Data.subdata(in:)();
  v62 = result;
  v63 = v37;
  if (v27 > 1)
  {
    v38 = 0;
    v41 = v27 == 2;
    v39 = v26;
    v26 = v54;
    v40 = v24;
    v24 = v51;
    v42 = v33;
    v33 = v35;
    if (!v41 || (v44 = *(v59 + 16), v43 = *(v59 + 24), v38 = v43 - v44, !__OFSUB__(v43, v44)))
    {
LABEL_29:
      if (v38 >= v34)
      {
        v45 = v39;
        v60 = Data.subdata(in:)();
        v61 = v46;
        sub_1000937E0();
        AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
        v47 = static AES.GCM.open(_:using:)();
        v49 = v48;
        (*(v53 + 8))(v33, v26);
        (*(v28 + 8))(v64, v40);
        result = (*(v50 + 8))(v42, v51);
        *v45 = v47;
        v45[1] = v49;
        return result;
      }

      goto LABEL_33;
    }

    __break(1u);
  }

  else if (!v27)
  {
    v38 = v36;
    v39 = v26;
    v26 = v54;
    v40 = v24;
LABEL_28:
    v42 = v33;
    v33 = v35;
    goto LABEL_29;
  }

  if (!__OFSUB__(HIDWORD(v59), v59))
  {
    v38 = HIDWORD(v59) - v59;
    v39 = v26;
    v26 = v54;
    v40 = v24;
    goto LABEL_28;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10033E17C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_10050B600, &qword_100416928);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10033E1E8(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[29] = v7;
  v8 = *(v7 - 8);
  v3[30] = v8;
  v9 = *(v8 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_10033E338, 0, 0);
}

uint64_t sub_10033E338()
{
  v60 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 192);
  v5 = *(v3 + 16);
  *(v0 + 280) = v5;
  *(v0 + 288) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_100340DB8(v1);
  *(v0 + 313) = v6;
  if (v6 == 12)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 248);
    v8 = *(v0 + 232);
    v9 = *(v0 + 192);
    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);
    v5(v7, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 232);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v59[0] = v18;
      *v17 = 136315138;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_1002FFA0C(v19, v21, v59);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "SLAMInstall createCredential: %s is not a valid configuration", v17, 0xCu);
      sub_1000752F4(v18);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    sub_10009591C();
    swift_allocError();
    *v42 = 2;
    v44 = *(v0 + 264);
    v43 = *(v0 + 272);
    v46 = *(v0 + 248);
    v45 = *(v0 + 256);
    v47 = *(v0 + 224);
    swift_willThrow();

    v48 = *(v0 + 8);
LABEL_18:

    return v48();
  }

  v24 = *(v0 + 216);
  v23 = *(v0 + 224);
  v25 = *(v0 + 208);
  (*(v24 + 16))(v23, *(v0 + 200) + OBJC_IVAR____TtC10seserviced14SECNetworkShim__shimFailInstall, v25);
  UserDefaultBacked.wrappedValue.getter();
  (*(v24 + 8))(v23, v25);
  if (*(v0 + 312))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 256);
    v27 = *(v0 + 232);
    v28 = *(v0 + 192);
    v29 = type metadata accessor for Logger();
    sub_1000958E4(v29, qword_10051B2C8);
    v5(v26, v28, v27);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 256);
    v34 = *(v0 + 232);
    v35 = *(v0 + 240);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v59[0] = v37;
      *v36 = 136315138;
      v38 = UUID.uuidString.getter();
      v40 = v39;
      (*(v35 + 8))(v33, v34);
      v41 = sub_1002FFA0C(v38, v40, v59);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "Created credential that failed install %s", v36, 0xCu);
      sub_1000752F4(v37);
    }

    else
    {

      (*(v35 + 8))(v33, v34);
    }

    v52 = *(v0 + 288);
    v53 = *(v0 + 264);
    v54 = *(v0 + 272);
    v56 = *(v0 + 248);
    v55 = *(v0 + 256);
    v57 = *(v0 + 224);
    (*(v0 + 280))(*(v0 + 184), *(v0 + 192), *(v0 + 232));

    v48 = *(v0 + 8);
    goto LABEL_18;
  }

  v49 = objc_opt_self();
  v50 = String._bridgeToObjectiveC()();
  *(v0 + 296) = v50;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_10033E920;
  v51 = swift_continuation_init();
  *(v0 + 136) = sub_100068FC4(&qword_100503460, &qword_10040B560);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001861F4;
  *(v0 + 104) = &unk_1004D11A0;
  *(v0 + 112) = v51;
  sub_1003AF710(v49, v50, (v0 + 80));

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10033E920()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    v3 = sub_10033EE74;
  }

  else
  {
    v3 = sub_10033EA30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10033EA30()
{
  v49 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 313);

  sub_10033F064(v2);
  v3 = String._bridgeToObjectiveC()();
  v4 = String.utf8CString.getter();

  v5 = sub_100013548(v1, v4 + 32, v3);

  if (v5)
  {
    swift_willThrow();

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v48[0] = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v12 = *(v0 + 144);
      v11 = *(v0 + 152);
      v13 = *(v0 + 160);
      v14 = Error.localizedDescription.getter();
      v16 = sub_1002FFA0C(v14, v15, v48);

      *(v9 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error encountered %s", v9, 0xCu);
      sub_1000752F4(v10);
    }

    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v21 = *(v0 + 224);
    swift_willThrow();

    v22 = *(v0 + 8);
  }

  else
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v25 = *(v0 + 264);
    v26 = *(v0 + 232);
    v27 = *(v0 + 192);
    v28 = type metadata accessor for Logger();
    sub_1000958E4(v28, qword_10051B2C8);
    v24(v25, v27, v26);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 264);
    v33 = *(v0 + 232);
    v34 = *(v0 + 240);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48[0] = v36;
      *v35 = 136315138;
      v37 = UUID.uuidString.getter();
      v39 = v38;
      (*(v34 + 8))(v32, v33);
      v40 = sub_1002FFA0C(v37, v39, v48);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully created credential %s with SLAM", v35, 0xCu);
      sub_1000752F4(v36);
    }

    else
    {

      (*(v34 + 8))(v32, v33);
    }

    v41 = *(v0 + 288);
    v42 = *(v0 + 264);
    v43 = *(v0 + 272);
    v45 = *(v0 + 248);
    v44 = *(v0 + 256);
    v46 = *(v0 + 224);
    (*(v0 + 280))(*(v0 + 184), *(v0 + 192), *(v0 + 232));

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_10033EE74()
{
  v23 = v0;
  v1 = v0[37];
  v2 = v0[38];
  swift_willThrow();

  v3 = v0[38];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v22);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error encountered %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v16 = v0[33];
  v15 = v0[34];
  v18 = v0[31];
  v17 = v0[32];
  v19 = v0[28];
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

unint64_t sub_10033F064(unsigned __int8 a1)
{
  v1 = 0xD000000000000012;
  if (a1 > 5u)
  {
    v3 = 0xD000000000000020;
    v4 = 0xD000000000000014;
    if (a1 != 10)
    {
      v4 = 0xD000000000000019;
    }

    if (a1 != 9)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000017;
    if (a1 == 7)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v5;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 <= 2u)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_10033F19C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_100068FC4(&qword_100502D50, &qword_100414C30) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for SECCredentialConfig();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10033F320, 0, 0);
}

uint64_t sub_10033F320()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 120) = qword_10051B858;

  return _swift_task_switch(sub_10033F3B8, v1, 0);
}

uint64_t sub_10033F3B8()
{
  v1 = v0[15];
  v2 = v0[3];
  sub_10009453C(v0[10]);
  v0[16] = 0;

  return _swift_task_switch(sub_10033F44C, 0, 0);
}

uint64_t sub_10033F44C()
{
  v77 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v21 = *(v2 + 32);
    v21(*(v0 + 112), v3, v1);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 72);
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    v25 = *(v0 + 24);
    v26 = type metadata accessor for Logger();
    sub_1000958E4(v26, qword_10051B2C8);
    (*(v24 + 16))(v22, v25, v23);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 72);
    v31 = *(v0 + 32);
    v32 = *(v0 + 40);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76[0] = v73;
      *v33 = 136315138;
      v75 = v21;
      v34 = UUID.uuidString.getter();
      v36 = v35;
      (*(v32 + 8))(v30, v31);
      v37 = v34;
      v21 = v75;
      v38 = sub_1002FFA0C(v37, v36, v76);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Getting locally stored metadata for %s", v33, 0xCu);
      sub_1000752F4(v73);
    }

    else
    {

      (*(v32 + 8))(v30, v31);
    }

    v21(*(v0 + 16), *(v0 + 112), *(v0 + 88));
    v54 = *(v0 + 104);
    v53 = *(v0 + 112);
    v56 = *(v0 + 72);
    v55 = *(v0 + 80);
    v58 = *(v0 + 56);
    v57 = *(v0 + 64);
    v59 = *(v0 + 48);

    v60 = *(v0 + 8);
    goto LABEL_21;
  }

  sub_100075768(v3, &qword_100502D50, &qword_100414C30);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 64);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_10051B2C8);
  v9 = *(v5 + 16);
  v9(v4, v7, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 64);
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v76[0] = v71;
    *v16 = 136315138;
    v17 = UUID.uuidString.getter();
    v72 = v9;
    v19 = v18;
    v74 = *(v15 + 8);
    v74(v13, v14);
    v20 = sub_1002FFA0C(v17, v19, v76);
    v9 = v72;

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Metadata for %s absent, fetching from SHIM", v16, 0xCu);
    sub_1000752F4(v71);
  }

  else
  {

    v74 = *(v15 + 8);
    v74(v13, v14);
  }

  v39 = *(v0 + 56);
  v9(v39, *(v0 + 24), *(v0 + 32));
  v40 = sub_100340DB8(v39);
  *(v0 + 144) = v40;
  if (v40 == 12)
  {
    v9(*(v0 + 48), *(v0 + 24), *(v0 + 32));
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v45 = *(v0 + 40);
    v44 = *(v0 + 48);
    v46 = *(v0 + 32);
    if (v43)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v76[0] = v48;
      *v47 = 136315138;
      v49 = UUID.uuidString.getter();
      v51 = v50;
      v74(v44, v46);
      v52 = sub_1002FFA0C(v49, v51, v76);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "SHIM config uuid %s is invalid", v47, 0xCu);
      sub_1000752F4(v48);
    }

    else
    {

      v74(v44, v46);
    }

    sub_10009591C();
    swift_allocError();
    *v62 = 1;
    swift_willThrow();
    v64 = *(v0 + 104);
    v63 = *(v0 + 112);
    v66 = *(v0 + 72);
    v65 = *(v0 + 80);
    v68 = *(v0 + 56);
    v67 = *(v0 + 64);
    v69 = *(v0 + 48);

    v60 = *(v0 + 8);
LABEL_21:

    return v60();
  }

  v61 = *(v0 + 120);
  sub_10033FE18(v40, *(v0 + 104));

  return _swift_task_switch(sub_10033FADC, v61, 0);
}

uint64_t sub_10033FADC()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_10035E904();
  if (v2)
  {
    v0[17] = v2;
    (*(v0[12] + 8))(v0[13], v0[11]);
    v7 = sub_10033FCA8;
  }

  else
  {
    v4 = v3;
    v5 = v0[13];
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();

    (*(v0[12] + 8))(v0[13], v0[11]);
    v7 = sub_10033FBEC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10033FBEC()
{
  sub_10033FE18(*(v0 + 144), *(v0 + 16));
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10033FCA8()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10033FD60()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10033FE18@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = type metadata accessor for SECMetadata();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for UUID();
  v87 = *(v90 - 8);
  v6 = *(v87 + 64);
  __chkstk_darwin(v90);
  v83 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v82 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v80 = &v77 - v12;
  __chkstk_darwin(v13);
  v81 = &v77 - v14;
  v88 = type metadata accessor for SECCredentialInfo();
  v86 = *(v88 - 8);
  v15 = *(v86 + 64);
  __chkstk_darwin(v88);
  v78 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v79 = &v77 - v18;
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  v89 = type metadata accessor for SECMemoryInfo();
  v22 = *(v89 - 8);
  v23 = *(v22 + 8);
  __chkstk_darwin(v89);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v27 = &v77 - v26;
  __chkstk_darwin(v28);
  v30 = &v77 - v29;
  __chkstk_darwin(v31);
  v33 = &v77 - v32;
  __chkstk_darwin(v34);
  v36 = &v77 - v35;
  __chkstk_darwin(v37);
  v39 = &v77 - v38;
  __chkstk_darwin(v40);
  v44 = &v77 - v43;
  if (((1 << a1) & 0x1C7) != 0)
  {
    SECMemoryInfo.init(corSize:codSize:nvmSize:)();
    SECMemoryInfo.init(corSize:codSize:nvmSize:)();
    v82 = v22;
    v45 = *(v22 + 2);
    v46 = v89;
    v45(v36, v39, v89);
    v45(v33, v44, v46);
    SECCredentialInfo.init(modulesAIDs:packageAid:containerSize:requiredMemoryForCredential:)();
    sub_100340B84();
    v47 = v81;
    UUID.init(uuidString:)();

    v48 = v87;
    v49 = v90;
    result = (*(v87 + 48))(v47, 1, v90);
    if (result != 1)
    {
      v80 = "464143544F525954455354455854";
      sub_100068FC4(&qword_1005043D8, &qword_10040B6D8);
      v51 = v86;
      v52 = *(v86 + 72);
      v53 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1004098F0;
      (*(v51 + 16))(v54 + v53, v21, v88);
      (*(v48 + 16))(v83, v47, v49);
      v55 = v47;
      SECMetadata.init(credentialTypes:appletInstances:friendlyName:)();
      v22 = v82;
LABEL_9:
      SECCredentialConfig.init(configUUID:metadata:)();
      (*(v51 + 8))(v21, v88);
      v74 = *(v22 + 1);
      v75 = v39;
      v76 = v89;
      v74(v75, v89);
      v74(v44, v76);
      return (*(v48 + 8))(v55, v90);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((1 << a1) & 0x238) != 0)
  {
    v56 = v22;
    v57 = v88;
    SECMemoryInfo.init(corSize:codSize:nvmSize:)();
    SECMemoryInfo.init(corSize:codSize:nvmSize:)();
    v82 = v56;
    v58 = *(v56 + 2);
    v59 = v89;
    v58(v36, v27, v89);
    v58(v33, v30, v59);
    v60 = v79;
    SECCredentialInfo.init(modulesAIDs:packageAid:containerSize:requiredMemoryForCredential:)();
    sub_100340B84();
    v55 = v80;
    UUID.init(uuidString:)();

    v61 = v87;
    result = (*(v87 + 48))(v55, 1, v90);
    v51 = v86;
    if (result != 1)
    {
      sub_100068FC4(&qword_1005043D8, &qword_10040B6D8);
      v62 = *(v51 + 72);
      v63 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1004098F0;
      (*(v51 + 16))(v64 + v63, v60, v57);
      (*(v61 + 16))(v83, v55, v90);
      SECMetadata.init(credentialTypes:appletInstances:friendlyName:)();
      v21 = v60;
      v39 = v27;
      v44 = v30;
      v48 = v61;
      v22 = v82;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v65 = v42;
  v66 = v41;
  SECMemoryInfo.init(corSize:codSize:nvmSize:)();
  SECMemoryInfo.init(corSize:codSize:nvmSize:)();
  v67 = *(v22 + 2);
  v80 = v65;
  v68 = v65;
  v69 = v89;
  v67(v36, v68, v89);
  v81 = v66;
  v67(v33, v66, v69);
  v70 = v78;
  SECCredentialInfo.init(modulesAIDs:packageAid:containerSize:requiredMemoryForCredential:)();
  sub_100340B84();
  v55 = v82;
  UUID.init(uuidString:)();

  v48 = v87;
  result = (*(v87 + 48))(v55, 1, v90);
  v51 = v86;
  if (result != 1)
  {
    sub_100068FC4(&qword_1005043D8, &qword_10040B6D8);
    v71 = *(v51 + 72);
    v72 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1004098F0;
    (*(v51 + 16))(v73 + v72, v70, v88);
    (*(v48 + 16))(v83, v55, v90);
    SECMetadata.init(credentialTypes:appletInstances:friendlyName:)();
    v21 = v70;
    v39 = v80;
    v44 = v81;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1003407F0()
{
  v1 = OBJC_IVAR____TtC10seserviced14SECNetworkShim__shimFailInstall;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SECNetworkShim()
{
  result = qword_10050B648;
  if (!qword_10050B648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003408EC()
{
  sub_1002186C8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10034097C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10012E598;

  return sub_100340C84();
}

uint64_t sub_100340A1C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000C288C;

  return sub_10033E1E8(a1, a2);
}

uint64_t sub_100340AE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10012E598;

  return sub_10033F19C(a1, a2);
}

uint64_t sub_100340CA0()
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_10051B2C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Kicked off NetworkShim", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100340DB8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v280 = &v236[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v241 = &v236[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v244 = &v236[-v10];
  __chkstk_darwin(v11);
  v248 = &v236[-v12];
  __chkstk_darwin(v13);
  v255 = &v236[-v14];
  __chkstk_darwin(v15);
  v259 = &v236[-v16];
  __chkstk_darwin(v17);
  v263 = &v236[-v18];
  __chkstk_darwin(v19);
  v269 = &v236[-v20];
  __chkstk_darwin(v21);
  v268 = &v236[-v22];
  __chkstk_darwin(v23);
  v277 = &v236[-v24];
  __chkstk_darwin(v25);
  v281 = &v236[-v26];
  __chkstk_darwin(v27);
  v279 = &v236[-v28];
  __chkstk_darwin(v29);
  v31 = &v236[-v30];
  v32 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v238 = &v236[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v240 = &v236[-v36];
  __chkstk_darwin(v37);
  v243 = &v236[-v38];
  __chkstk_darwin(v39);
  v239 = &v236[-v40];
  __chkstk_darwin(v41);
  v246 = &v236[-v42];
  __chkstk_darwin(v43);
  v247 = &v236[-v44];
  __chkstk_darwin(v45);
  v242 = &v236[-v46];
  __chkstk_darwin(v47);
  v249 = &v236[-v48];
  __chkstk_darwin(v49);
  v250 = &v236[-v50];
  __chkstk_darwin(v51);
  v245 = &v236[-v52];
  __chkstk_darwin(v53);
  v253 = &v236[-v54];
  __chkstk_darwin(v55);
  v254 = &v236[-v56];
  __chkstk_darwin(v57);
  v251 = &v236[-v58];
  __chkstk_darwin(v59);
  v257 = &v236[-v60];
  __chkstk_darwin(v61);
  v258 = &v236[-v62];
  __chkstk_darwin(v63);
  v252 = &v236[-v64];
  __chkstk_darwin(v65);
  v261 = &v236[-v66];
  __chkstk_darwin(v67);
  v262 = &v236[-v68];
  __chkstk_darwin(v69);
  v256 = &v236[-v70];
  __chkstk_darwin(v71);
  v265 = &v236[-v72];
  __chkstk_darwin(v73);
  v266 = &v236[-v74];
  __chkstk_darwin(v75);
  v260 = &v236[-v76];
  __chkstk_darwin(v77);
  v271 = &v236[-v78];
  __chkstk_darwin(v79);
  v267 = &v236[-v80];
  __chkstk_darwin(v81);
  v264 = &v236[-v82];
  __chkstk_darwin(v83);
  v273 = &v236[-v84];
  __chkstk_darwin(v85);
  v274 = &v236[-v86];
  __chkstk_darwin(v87);
  v270 = &v236[-v88];
  __chkstk_darwin(v89);
  v278 = &v236[-v90];
  __chkstk_darwin(v91);
  v276 = &v236[-v92];
  __chkstk_darwin(v93);
  v272 = &v236[-v94];
  __chkstk_darwin(v95);
  v282 = &v236[-v96];
  __chkstk_darwin(v97);
  v283 = &v236[-v98];
  __chkstk_darwin(v99);
  v101 = &v236[-v100];
  __chkstk_darwin(v102);
  v104 = &v236[-v103];
  v106 = __chkstk_darwin(v105);
  v108 = &v236[-v107];
  v109 = *(v3 + 16);
  v284 = a1;
  v287 = v3 + 16;
  v290 = v109;
  (v109)(&v236[-v107], a1, v2, v106);
  v110 = *(v3 + 56);
  v291 = v3 + 56;
  v289 = v110;
  v110(v108, 0, 1, v2);
  UUID.init(uuidString:)();
  v288 = v6;
  v111 = *(v6 + 48);
  sub_1000756F8(v108, v31);
  sub_1000756F8(v104, &v31[v111]);
  v112 = *(v3 + 48);
  v113 = v112(v31, 1, v2);
  v285 = v112;
  v286 = v3 + 48;
  if (v113 == 1)
  {
    sub_100075768(v104, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v108, &unk_10050BE80, &unk_10040B360);
    if (v112(&v31[v111], 1, v2) == 1)
    {
      sub_100075768(v31, &unk_10050BE80, &unk_10040B360);
      (*(v3 + 8))(v284, v2);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1000756F8(v31, v101);
  if (v112(&v31[v111], 1, v2) == 1)
  {
    sub_100075768(v104, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v108, &unk_10050BE80, &unk_10040B360);
    (*(v3 + 8))(v101, v2);
    v112 = v285;
LABEL_6:
    v275 = v3;
    sub_100075768(v31, &qword_1005031D0, &unk_100413B20);
    v114 = v284;
    goto LABEL_7;
  }

  v129 = &v31[v111];
  v130 = v280;
  (*(v3 + 32))(v280, v129, v2);
  sub_10028527C();
  v237 = dispatch thunk of static Equatable.== infix(_:_:)();
  v275 = v3;
  v131 = *(v3 + 8);
  v131(v130, v2);
  sub_100075768(v104, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v108, &unk_10050BE80, &unk_10040B360);
  v131(v101, v2);
  sub_100075768(v31, &unk_10050BE80, &unk_10040B360);
  v114 = v284;
  v112 = v285;
  if (v237)
  {
    v131(v284, v2);
    return 0;
  }

LABEL_7:
  v115 = v283;
  (v290)(v283, v114, v2);
  v289(v115, 0, 1, v2);
  v116 = v282;
  UUID.init(uuidString:)();
  v117 = *(v288 + 48);
  v118 = v279;
  sub_1000756F8(v115, v279);
  sub_1000756F8(v116, &v118[v117]);
  if (v112(v118, 1, v2) == 1)
  {
    sub_100075768(v116, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v115, &unk_10050BE80, &unk_10040B360);
    v119 = v112(&v118[v117], 1, v2);
    v120 = v275;
    if (v119 == 1)
    {
      sub_100075768(v118, &unk_10050BE80, &unk_10040B360);
      (*(v120 + 8))(v114, v2);
      return 1;
    }

    goto LABEL_12;
  }

  v121 = v272;
  sub_1000756F8(v118, v272);
  v122 = v112(&v118[v117], 1, v2);
  v120 = v275;
  if (v122 == 1)
  {
    sub_100075768(v282, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v283, &unk_10050BE80, &unk_10040B360);
    (*(v120 + 8))(v121, v2);
LABEL_12:
    sub_100075768(v118, &qword_1005031D0, &unk_100413B20);
    goto LABEL_13;
  }

  v140 = v280;
  (*(v275 + 32))(v280, &v118[v117], v2);
  sub_10028527C();
  LODWORD(v284) = dispatch thunk of static Equatable.== infix(_:_:)();
  v141 = *(v120 + 8);
  v141(v140, v2);
  sub_100075768(v282, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v283, &unk_10050BE80, &unk_10040B360);
  v141(v121, v2);
  sub_100075768(v118, &unk_10050BE80, &unk_10040B360);
  if (v284)
  {
    v141(v114, v2);
    return 1;
  }

LABEL_13:
  v123 = v276;
  (v290)(v276, v114, v2);
  v289(v123, 0, 1, v2);
  v124 = v278;
  UUID.init(uuidString:)();
  v125 = *(v288 + 48);
  v126 = v281;
  sub_1000756F8(v123, v281);
  sub_1000756F8(v124, &v126[v125]);
  v127 = v285;
  if (v285(v126, 1, v2) == 1)
  {
    sub_100075768(v124, &unk_10050BE80, &unk_10040B360);
    v128 = v281;
    sub_100075768(v123, &unk_10050BE80, &unk_10040B360);
    if (v127(&v128[v125], 1, v2) == 1)
    {
      sub_100075768(v128, &unk_10050BE80, &unk_10040B360);
      (*(v120 + 8))(v114, v2);
      return 2;
    }

    goto LABEL_21;
  }

  v133 = v270;
  sub_1000756F8(v126, v270);
  if (v127(&v126[v125], 1, v2) == 1)
  {
    sub_100075768(v278, &unk_10050BE80, &unk_10040B360);
    v128 = v281;
    sub_100075768(v123, &unk_10050BE80, &unk_10040B360);
    (*(v120 + 8))(v133, v2);
LABEL_21:
    sub_100075768(v128, &qword_1005031D0, &unk_100413B20);
    goto LABEL_22;
  }

  v148 = &v126[v125];
  v149 = v280;
  (*(v120 + 32))(v280, v148, v2);
  sub_10028527C();
  LODWORD(v284) = dispatch thunk of static Equatable.== infix(_:_:)();
  v150 = *(v120 + 8);
  v150(v149, v2);
  sub_100075768(v278, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v123, &unk_10050BE80, &unk_10040B360);
  v150(v133, v2);
  sub_100075768(v126, &unk_10050BE80, &unk_10040B360);
  if (v284)
  {
    v150(v114, v2);
    return 2;
  }

LABEL_22:
  v134 = v274;
  (v290)(v274, v114, v2);
  v289(v134, 0, 1, v2);
  v135 = v273;
  UUID.init(uuidString:)();
  v136 = *(v288 + 48);
  v137 = v277;
  sub_1000756F8(v134, v277);
  sub_1000756F8(v135, &v137[v136]);
  v138 = v285;
  if (v285(v137, 1, v2) == 1)
  {
    sub_100075768(v135, &unk_10050BE80, &unk_10040B360);
    v139 = v277;
    sub_100075768(v134, &unk_10050BE80, &unk_10040B360);
    if (v138(&v139[v136], 1, v2) == 1)
    {
      sub_100075768(v139, &unk_10050BE80, &unk_10040B360);
      (*(v120 + 8))(v114, v2);
      return 3;
    }

    goto LABEL_30;
  }

  v142 = v264;
  sub_1000756F8(v137, v264);
  if (v138(&v137[v136], 1, v2) == 1)
  {
    sub_100075768(v273, &unk_10050BE80, &unk_10040B360);
    v139 = v277;
    sub_100075768(v274, &unk_10050BE80, &unk_10040B360);
    (*(v120 + 8))(v142, v2);
LABEL_30:
    sub_100075768(v139, &qword_1005031D0, &unk_100413B20);
    goto LABEL_31;
  }

  v158 = &v137[v136];
  v159 = v280;
  (*(v120 + 32))(v280, v158, v2);
  sub_10028527C();
  LODWORD(v284) = dispatch thunk of static Equatable.== infix(_:_:)();
  v160 = *(v120 + 8);
  v160(v159, v2);
  sub_100075768(v273, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v274, &unk_10050BE80, &unk_10040B360);
  v160(v142, v2);
  sub_100075768(v137, &unk_10050BE80, &unk_10040B360);
  if (v284)
  {
    v160(v114, v2);
    return 3;
  }

LABEL_31:
  v143 = v267;
  v290();
  v289(v143, 0, 1, v2);
  v144 = v271;
  UUID.init(uuidString:)();
  v145 = *(v288 + 48);
  v146 = v268;
  sub_1000756F8(v143, v268);
  sub_1000756F8(v144, &v146[v145]);
  v147 = v285;
  if (v285(v146, 1, v2) == 1)
  {
    sub_100075768(v144, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v143, &unk_10050BE80, &unk_10040B360);
    if (v147(&v146[v145], 1, v2) == 1)
    {
      sub_100075768(v146, &unk_10050BE80, &unk_10040B360);
      (*(v120 + 8))(v114, v2);
      return 4;
    }

    goto LABEL_39;
  }

  v151 = v260;
  sub_1000756F8(v146, v260);
  if (v147(&v146[v145], 1, v2) == 1)
  {
    sub_100075768(v271, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v143, &unk_10050BE80, &unk_10040B360);
    (*(v120 + 8))(v151, v2);
LABEL_39:
    sub_100075768(v146, &qword_1005031D0, &unk_100413B20);
    goto LABEL_40;
  }

  v171 = &v146[v145];
  v172 = v280;
  (*(v120 + 32))(v280, v171, v2);
  sub_10028527C();
  LODWORD(v284) = dispatch thunk of static Equatable.== infix(_:_:)();
  v173 = *(v120 + 8);
  v173(v172, v2);
  sub_100075768(v271, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v143, &unk_10050BE80, &unk_10040B360);
  v173(v151, v2);
  sub_100075768(v146, &unk_10050BE80, &unk_10040B360);
  if (v284)
  {
    v173(v114, v2);
    return 4;
  }

LABEL_40:
  v152 = v266;
  (v290)(v266, v114, v2);
  v289(v152, 0, 1, v2);
  v153 = v265;
  UUID.init(uuidString:)();
  v154 = *(v288 + 48);
  v155 = v269;
  sub_1000756F8(v152, v269);
  sub_1000756F8(v153, &v155[v154]);
  v156 = v285;
  if (v285(v155, 1, v2) == 1)
  {
    sub_100075768(v153, &unk_10050BE80, &unk_10040B360);
    v157 = v269;
    sub_100075768(v152, &unk_10050BE80, &unk_10040B360);
    if (v156(&v157[v154], 1, v2) == 1)
    {
      sub_100075768(v157, &unk_10050BE80, &unk_10040B360);
      (*(v120 + 8))(v114, v2);
      return 5;
    }

    goto LABEL_48;
  }

  v161 = v256;
  sub_1000756F8(v155, v256);
  if (v156(&v155[v154], 1, v2) == 1)
  {
    sub_100075768(v265, &unk_10050BE80, &unk_10040B360);
    v157 = v269;
    sub_100075768(v266, &unk_10050BE80, &unk_10040B360);
    (*(v120 + 8))(v161, v2);
LABEL_48:
    sub_100075768(v157, &qword_1005031D0, &unk_100413B20);
    goto LABEL_49;
  }

  v181 = &v155[v154];
  v182 = v280;
  (*(v120 + 32))(v280, v181, v2);
  sub_10028527C();
  LODWORD(v284) = dispatch thunk of static Equatable.== infix(_:_:)();
  v183 = *(v120 + 8);
  v183(v182, v2);
  sub_100075768(v265, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v266, &unk_10050BE80, &unk_10040B360);
  v183(v161, v2);
  sub_100075768(v155, &unk_10050BE80, &unk_10040B360);
  if (v284)
  {
    v183(v114, v2);
    return 5;
  }

LABEL_49:
  v162 = v114;
  v163 = v262;
  v164 = v162;
  (v290)(v262);
  v289(v163, 0, 1, v2);
  v165 = v261;
  UUID.init(uuidString:)();
  v166 = *(v288 + 48);
  v167 = v263;
  sub_1000756F8(v163, v263);
  sub_1000756F8(v165, &v167[v166]);
  v168 = v285;
  if (v285(v167, 1, v2) == 1)
  {
    sub_100075768(v165, &unk_10050BE80, &unk_10040B360);
    v169 = v263;
    sub_100075768(v163, &unk_10050BE80, &unk_10040B360);
    v170 = v164;
    if (v168(&v169[v166], 1, v2) == 1)
    {
      sub_100075768(v169, &unk_10050BE80, &unk_10040B360);
      (*(v120 + 8))(v164, v2);
      return 6;
    }

    goto LABEL_57;
  }

  v174 = v252;
  sub_1000756F8(v167, v252);
  if (v168(&v167[v166], 1, v2) == 1)
  {
    sub_100075768(v261, &unk_10050BE80, &unk_10040B360);
    v169 = v263;
    sub_100075768(v262, &unk_10050BE80, &unk_10040B360);
    (*(v120 + 8))(v174, v2);
    v170 = v164;
LABEL_57:
    sub_100075768(v169, &qword_1005031D0, &unk_100413B20);
    goto LABEL_58;
  }

  v191 = &v167[v166];
  v192 = v280;
  (*(v120 + 32))(v280, v191, v2);
  sub_10028527C();
  v193 = dispatch thunk of static Equatable.== infix(_:_:)();
  v194 = *(v120 + 8);
  v194(v192, v2);
  sub_100075768(v261, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v262, &unk_10050BE80, &unk_10040B360);
  v194(v174, v2);
  sub_100075768(v167, &unk_10050BE80, &unk_10040B360);
  v170 = v164;
  if (v193)
  {
    v194(v164, v2);
    return 6;
  }

LABEL_58:
  v175 = v258;
  (v290)(v258, v170, v2);
  v289(v175, 0, 1, v2);
  v176 = v257;
  UUID.init(uuidString:)();
  v177 = *(v288 + 48);
  v178 = v259;
  sub_1000756F8(v175, v259);
  sub_1000756F8(v176, &v178[v177]);
  v179 = v285;
  if (v285(v178, 1, v2) == 1)
  {
    sub_100075768(v176, &unk_10050BE80, &unk_10040B360);
    v180 = v259;
    sub_100075768(v175, &unk_10050BE80, &unk_10040B360);
    if (v179(&v180[v177], 1, v2) == 1)
    {
      sub_100075768(v180, &unk_10050BE80, &unk_10040B360);
      (*(v120 + 8))(v170, v2);
      return 7;
    }

    goto LABEL_66;
  }

  v184 = v251;
  sub_1000756F8(v178, v251);
  if (v179(&v178[v177], 1, v2) == 1)
  {
    sub_100075768(v257, &unk_10050BE80, &unk_10040B360);
    v180 = v259;
    sub_100075768(v258, &unk_10050BE80, &unk_10040B360);
    (*(v120 + 8))(v184, v2);
LABEL_66:
    sub_100075768(v180, &qword_1005031D0, &unk_100413B20);
    goto LABEL_67;
  }

  v202 = &v178[v177];
  v203 = v280;
  (*(v120 + 32))(v280, v202, v2);
  sub_10028527C();
  v204 = dispatch thunk of static Equatable.== infix(_:_:)();
  v205 = *(v120 + 8);
  v205(v203, v2);
  sub_100075768(v257, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v258, &unk_10050BE80, &unk_10040B360);
  v205(v251, v2);
  sub_100075768(v178, &unk_10050BE80, &unk_10040B360);
  if (v204)
  {
    v205(v170, v2);
    return 7;
  }

LABEL_67:
  v185 = v254;
  (v290)(v254, v170, v2);
  v289(v185, 0, 1, v2);
  v186 = v253;
  UUID.init(uuidString:)();
  v187 = *(v288 + 48);
  v188 = v255;
  sub_1000756F8(v185, v255);
  sub_1000756F8(v186, &v188[v187]);
  v189 = v285;
  if (v285(v188, 1, v2) == 1)
  {
    sub_100075768(v186, &unk_10050BE80, &unk_10040B360);
    v190 = v255;
    sub_100075768(v185, &unk_10050BE80, &unk_10040B360);
    if (v189(&v190[v187], 1, v2) == 1)
    {
      sub_100075768(v190, &unk_10050BE80, &unk_10040B360);
      (*(v120 + 8))(v170, v2);
      return 8;
    }

    goto LABEL_75;
  }

  v195 = v245;
  sub_1000756F8(v188, v245);
  if (v189(&v188[v187], 1, v2) == 1)
  {
    sub_100075768(v253, &unk_10050BE80, &unk_10040B360);
    v190 = v255;
    sub_100075768(v254, &unk_10050BE80, &unk_10040B360);
    (*(v120 + 8))(v195, v2);
LABEL_75:
    sub_100075768(v190, &qword_1005031D0, &unk_100413B20);
    v196 = v288;
    goto LABEL_76;
  }

  v212 = &v188[v187];
  v213 = v280;
  (*(v120 + 32))(v280, v212, v2);
  sub_10028527C();
  LODWORD(v284) = dispatch thunk of static Equatable.== infix(_:_:)();
  v214 = *(v120 + 8);
  v214(v213, v2);
  sub_100075768(v253, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v254, &unk_10050BE80, &unk_10040B360);
  v214(v195, v2);
  sub_100075768(v188, &unk_10050BE80, &unk_10040B360);
  v196 = v288;
  if (v284)
  {
    v214(v170, v2);
    return 8;
  }

LABEL_76:
  v197 = v250;
  (v290)(v250, v170, v2);
  v289(v197, 0, 1, v2);
  v198 = v249;
  UUID.init(uuidString:)();
  v199 = *(v196 + 48);
  v200 = v248;
  sub_1000756F8(v197, v248);
  sub_1000756F8(v198, &v200[v199]);
  v201 = v285;
  if (v285(v200, 1, v2) == 1)
  {
    sub_100075768(v198, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v197, &unk_10050BE80, &unk_10040B360);
    if (v201(&v200[v199], 1, v2) == 1)
    {
      sub_100075768(v200, &unk_10050BE80, &unk_10040B360);
      (*(v120 + 8))(v170, v2);
      return 9;
    }

    goto LABEL_84;
  }

  v206 = v242;
  sub_1000756F8(v200, v242);
  if (v201(&v200[v199], 1, v2) == 1)
  {
    sub_100075768(v249, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v250, &unk_10050BE80, &unk_10040B360);
    (*(v120 + 8))(v206, v2);
LABEL_84:
    sub_100075768(v200, &qword_1005031D0, &unk_100413B20);
    goto LABEL_85;
  }

  v222 = &v200[v199];
  v223 = v280;
  (*(v120 + 32))(v280, v222, v2);
  sub_10028527C();
  LODWORD(v284) = dispatch thunk of static Equatable.== infix(_:_:)();
  v224 = v200;
  v225 = *(v120 + 8);
  v225(v223, v2);
  sub_100075768(v249, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v250, &unk_10050BE80, &unk_10040B360);
  v225(v206, v2);
  sub_100075768(v224, &unk_10050BE80, &unk_10040B360);
  if (v284)
  {
    v225(v170, v2);
    return 9;
  }

LABEL_85:
  v207 = v247;
  (v290)(v247, v170, v2);
  v289(v207, 0, 1, v2);
  v208 = v246;
  UUID.init(uuidString:)();
  v209 = *(v196 + 48);
  v210 = v244;
  sub_1000756F8(v207, v244);
  sub_1000756F8(v208, &v210[v209]);
  v211 = v285;
  if (v285(v210, 1, v2) == 1)
  {
    sub_100075768(v208, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v207, &unk_10050BE80, &unk_10040B360);
    if (v211(&v210[v209], 1, v2) == 1)
    {
      sub_100075768(v210, &unk_10050BE80, &unk_10040B360);
      (*(v120 + 8))(v170, v2);
      return 10;
    }

    goto LABEL_93;
  }

  v215 = v239;
  sub_1000756F8(v210, v239);
  if (v211(&v210[v209], 1, v2) == 1)
  {
    sub_100075768(v246, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v247, &unk_10050BE80, &unk_10040B360);
    (*(v120 + 8))(v215, v2);
LABEL_93:
    sub_100075768(v210, &qword_1005031D0, &unk_100413B20);
    goto LABEL_94;
  }

  v228 = &v210[v209];
  v229 = v280;
  (*(v120 + 32))(v280, v228, v2);
  sub_10028527C();
  LODWORD(v284) = dispatch thunk of static Equatable.== infix(_:_:)();
  v230 = v210;
  v231 = *(v120 + 8);
  v231(v229, v2);
  sub_100075768(v246, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v247, &unk_10050BE80, &unk_10040B360);
  v231(v215, v2);
  sub_100075768(v230, &unk_10050BE80, &unk_10040B360);
  if (v284)
  {
    v231(v170, v2);
    return 10;
  }

LABEL_94:
  v216 = v243;
  (v290)(v243, v170, v2);
  v289(v216, 0, 1, v2);
  v217 = v240;
  UUID.init(uuidString:)();
  v218 = *(v196 + 48);
  v219 = v217;
  v220 = v241;
  sub_1000756F8(v216, v241);
  sub_1000756F8(v217, &v220[v218]);
  v221 = v285;
  if (v285(v220, 1, v2) == 1)
  {
    (*(v120 + 8))(v170, v2);
    sub_100075768(v219, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v216, &unk_10050BE80, &unk_10040B360);
    if (v221(&v220[v218], 1, v2) == 1)
    {
      sub_100075768(v220, &unk_10050BE80, &unk_10040B360);
      return 11;
    }

    goto LABEL_102;
  }

  v226 = v238;
  sub_1000756F8(v220, v238);
  if (v221(&v220[v218], 1, v2) == 1)
  {
    v227 = *(v120 + 8);
    v227(v170, v2);
    sub_100075768(v219, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v243, &unk_10050BE80, &unk_10040B360);
    v227(v226, v2);
LABEL_102:
    sub_100075768(v220, &qword_1005031D0, &unk_100413B20);
    return 12;
  }

  v232 = &v220[v218];
  v233 = v280;
  (*(v120 + 32))(v280, v232, v2);
  sub_10028527C();
  v234 = dispatch thunk of static Equatable.== infix(_:_:)();
  v235 = *(v120 + 8);
  v235(v170, v2);
  v235(v233, v2);
  sub_100075768(v219, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v243, &unk_10050BE80, &unk_10040B360);
  v235(v226, v2);
  sub_100075768(v220, &unk_10050BE80, &unk_10040B360);
  if (v234)
  {
    return 11;
  }

  else
  {
    return 12;
  }
}

size_t sub_1003436E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v60 = a1;
  v61 = a3;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v54 - v9;
  v11 = sub_100068FC4(&unk_100504270, &qword_10040B598);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v54 - v13;
  v59 = type metadata accessor for Calendar.Identifier();
  v15 = *(v59 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v59);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Calendar();
  v56 = *(v19 - 8);
  v57 = v19;
  v20 = *(v56 + 64);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Date();
  v54 = *(v23 - 8);
  v55 = v23;
  v24 = *(v54 + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v54 - v28;
  v30 = *(v4 + 16);
  v62 = v3;
  v30(v61, v60, v3);
  static Date.now.getter();
  v31 = v59;
  (*(v15 + 104))(v18, enum case for Calendar.Identifier.gregorian(_:), v59);
  Calendar.init(identifier:)();
  (*(v15 + 8))(v18, v31);
  TimeZone.init(abbreviation:)();
  v32 = type metadata accessor for TimeZone();
  result = (*(*(v32 - 8) + 48))(v14, 1, v32);
  if (result == 1)
  {
    goto LABEL_20;
  }

  Calendar.timeZone.setter();
  Calendar.startOfDay(for:)();
  (*(v56 + 8))(v22, v57);
  v34 = v55;
  v35 = *(v54 + 8);
  v35(v29, v55);
  Date.timeIntervalSince1970.getter();
  v37 = v36;
  v35(v27, v34);
  v38 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  v39 = v61;
  *(v61 + *(v38 + 20)) = v37 * 1000.0;
  v40 = v58;
  v41 = v39;
  if (v58 >> 62)
  {
    v53 = v58;
    v42 = _CocoaArrayWrapper.endIndex.getter();
    v40 = v53;
    if (v42)
    {
      goto LABEL_4;
    }

LABEL_17:

    result = (*(v4 + 8))(v60, v62);
    v44 = _swiftEmptyArrayStorage;
LABEL_18:
    *(v41 + *(v38 + 24)) = v44;
    return result;
  }

  v42 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_17;
  }

LABEL_4:
  v43 = v40;
  v63 = _swiftEmptyArrayStorage;
  result = sub_10019F420(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v59 = v38;
    v44 = v63;
    v45 = v43;
    if ((v43 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v42; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        CredentialInternal.identifier.getter();
        swift_unknownObjectRelease();
        v63 = v44;
        v48 = v44[2];
        v47 = v44[3];
        if (v48 >= v47 >> 1)
        {
          sub_10019F420(v47 > 1, v48 + 1, 1);
          v44 = v63;
        }

        v44[2] = v48 + 1;
        (*(v4 + 32))(v44 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v48, v10, v62);
      }
    }

    else
    {
      v49 = 32;
      do
      {
        v50 = *(v45 + v49);
        CredentialInternal.identifier.getter();

        v63 = v44;
        v52 = v44[2];
        v51 = v44[3];
        if (v52 >= v51 >> 1)
        {
          sub_10019F420(v51 > 1, v52 + 1, 1);
          v44 = v63;
        }

        v44[2] = v52 + 1;
        (*(v4 + 32))(v44 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v52, v8, v62);
        v49 += 8;
        --v42;
        v45 = v43;
      }

      while (v42);
    }

    result = (*(v4 + 8))(v60, v62);
    v41 = v61;
    v38 = v59;
    goto LABEL_18;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_100343D18()
{
  v29 = type metadata accessor for UUID();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v29);
  v28 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = 0x644974726F706572;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "timestampDay");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v6 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  *(inited + 96) = *(v0 + *(v6 + 20));
  *(inited + 120) = &type metadata for Double;
  *(inited + 128) = 7562345;
  *(inited + 136) = 0xE300000000000000;
  v7 = *(v0 + *(v6 + 24));
  v8 = *(v7 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v25[0] = inited;
    v25[1] = inited + 32;
    v30 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v8, 0);
    v9 = v30;
    v11 = *(v1 + 16);
    v10 = v1 + 16;
    v27 = v11;
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v26 = *(v10 + 56);
    v13 = (v10 - 8);
    do
    {
      v14 = v28;
      v15 = v29;
      v16 = v10;
      v27(v28, v12, v29);
      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*v13)(v14, v15);
      v30 = v9;
      v21 = v9[2];
      v20 = v9[3];
      if (v21 >= v20 >> 1)
      {
        sub_10019F3C0((v20 > 1), v21 + 1, 1);
        v9 = v30;
      }

      v9[2] = v21 + 1;
      v22 = &v9[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v12 += v26;
      --v8;
      v10 = v16;
    }

    while (v8);
    inited = v25[0];
  }

  *(inited + 168) = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *(inited + 144) = v9;
  v23 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_10034402C(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050B7C8, &qword_100416A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_100345A14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for UUID();
  sub_100345A68(&qword_1005089F8, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
    v12 = *(v3 + *(v11 + 20));
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    sub_100068FC4(&qword_10050B7B8, &qword_100416A28);
    sub_100345AB0(&qword_10050B7D0, &qword_1005089F8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100344278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_10050B7A8, &qword_100416A20);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_100345A14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v23 = a1;
  v16 = v14;
  v17 = v25;
  v32 = 0;
  sub_100345A68(&qword_100508A20, &type metadata accessor for UUID);
  v18 = v26;
  v19 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v16, v18, v4);
  v31 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v16 + *(v11 + 20)) = v20;
  sub_100068FC4(&qword_10050B7B8, &qword_100416A28);
  v30 = 2;
  sub_100345AB0(&qword_10050B7C0, &qword_100508A20);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v27 + 8))(v10, v19);
  *(v16 + *(v11 + 24)) = v29;
  sub_1003460C8(v16, v24, type metadata accessor for CredentialHeartbeatPayload.Report);
  sub_1000752F4(v23);
  return sub_100346130(v16, type metadata accessor for CredentialHeartbeatPayload.Report);
}

uint64_t sub_100344678()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 7562345;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644974726F706572;
  }
}

uint64_t sub_1003446D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100345EF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003446FC(uint64_t a1)
{
  v2 = sub_100345A14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100344738(uint64_t a1)
{
  v2 = sub_100345A14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003447A4(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050B8A0, &qword_100416BA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_100346010();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for CredentialHeartbeatPayload.Report(0);
  sub_100345A68(&qword_10050B8A8, type metadata accessor for CredentialHeartbeatPayload.Report);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for CredentialHeartbeatPayload(0) + 20));
    v12[15] = 1;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10025CC88(&qword_100508158);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1003449AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_10050B888, &qword_100416BA0);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for CredentialHeartbeatPayload(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_100346010();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v16 = v14;
  v17 = v22;
  v27 = 0;
  sub_100345A68(&qword_10050B898, type metadata accessor for CredentialHeartbeatPayload.Report);
  v18 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100346064(v24, v16);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v26 = 1;
  sub_10025CC88(&qword_100508150);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v10, v18);
  *(v16 + *(v11 + 20)) = v25;
  sub_1003460C8(v16, v21, type metadata accessor for CredentialHeartbeatPayload);
  sub_1000752F4(a1);
  return sub_100346130(v16, type metadata accessor for CredentialHeartbeatPayload);
}

unint64_t sub_100344CEC()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_100344D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010046BFC0 == a2)
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

uint64_t sub_100344E08(uint64_t a1)
{
  v2 = sub_100346010();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100344E44(uint64_t a1)
{
  v2 = sub_100346010();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100344EB0(uint64_t a1)
{
  *(v1 + 224) = a1;
  v2 = swift_task_alloc();
  *(v1 + 232) = v2;
  *v2 = v1;
  v2[1] = sub_100344F88;

  return sub_1001BDDF0(v1 + 144);
}

uint64_t sub_100344F88()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  *(v3 + 240) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100345100, 0, 0);
  }
}

uint64_t sub_100345100()
{
  v49 = v0;
  v1 = *(v0 + 224);
  sub_100068FC4(&unk_100504720, &qword_100414C40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409900;
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  *(v2 + 32) = Data.base64EncodedString(options:)(0);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  *(v2 + 48) = Data.base64EncodedString(options:)(0);
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409900;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v8 = sub_100343D18();
  v9 = sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  *(inited + 48) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000010046BFC0;
  *(inited + 120) = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *(inited + 96) = v2;
  sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  v10 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 208) = 0;
  v12 = [v10 dataWithJSONObject:isa options:0 error:v0 + 208];

  v13 = *(v0 + 208);
  if (!v12)
  {
    v27 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000958E4(v28, qword_10051B2C8);
    swift_errorRetain();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v31 = 136315394;
      swift_getErrorValue();
      v33 = *(v0 + 184);
      v32 = *(v0 + 192);
      v34 = *(v0 + 200);
      v35 = Error.localizedDescription.getter();
      v37 = sub_1002FFA0C(v35, v36, &v48);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      v38 = Dictionary.description.getter();
      v40 = v39;

      v41 = sub_1002FFA0C(v38, v40, &v48);

      *(v31 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error %s when serializing %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10009591C();
    swift_allocError();
    *v46 = 14;
    swift_willThrow();
    sub_1002F6D44(v0 + 144);

    goto LABEL_17;
  }

  v14 = *(v0 + 240);

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = sub_1001BD2A4();
  if (v14)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000958E4(v20, qword_10051B2C8);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error %@ when signing report", v23, 0xCu);
      sub_1000C2998(v24);
    }

    sub_10009591C();
    swift_allocError();
    *v26 = 6;
    swift_willThrow();

    sub_1002F6D44(v0 + 144);
    sub_10006A178(v15, v17);
LABEL_17:
    v47 = *(v0 + 8);

    return v47();
  }

  v42 = v19;
  v43 = v18;
  sub_1002F6D44(v0 + 144);
  v44 = *(v0 + 8);

  return v44(v43, v42, v15, v17);
}

uint64_t sub_1003457A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100345878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100345930()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1003459BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003459BC()
{
  if (!qword_10050B770)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10050B770);
    }
  }
}

unint64_t sub_100345A14()
{
  result = qword_10050B7B0;
  if (!qword_10050B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B7B0);
  }

  return result;
}

uint64_t sub_100345A68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100345AB0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_10050B7B8, &qword_100416A28);
    sub_100345A68(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100345B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_100345C40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100345D18()
{
  type metadata accessor for CredentialHeartbeatPayload.Report(319);
  if (v0 <= 0x3F)
  {
    sub_100345D9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100345D9C()
{
  if (!qword_10050B840)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10050B840);
    }
  }
}

unint64_t sub_100345DF0()
{
  result = qword_10050B870;
  if (!qword_10050B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B870);
  }

  return result;
}

unint64_t sub_100345E48()
{
  result = qword_10050B878;
  if (!qword_10050B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B878);
  }

  return result;
}

unint64_t sub_100345EA0()
{
  result = qword_10050B880;
  if (!qword_10050B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B880);
  }

  return result;
}

uint64_t sub_100345EF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974726F706572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEC00000079614470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
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

unint64_t sub_100346010()
{
  result = qword_10050B890;
  if (!qword_10050B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B890);
  }

  return result;
}

uint64_t sub_100346064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003460C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100346130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003461A4()
{
  result = qword_10050B8B0;
  if (!qword_10050B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B8B0);
  }

  return result;
}

unint64_t sub_1003461FC()
{
  result = qword_10050B8B8;
  if (!qword_10050B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B8B8);
  }

  return result;
}

unint64_t sub_100346254()
{
  result = qword_10050B8C0;
  if (!qword_10050B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B8C0);
  }

  return result;
}

void sub_1003462A8(Swift::UInt a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v11 = v5 + 8;
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_15;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40[0] = v16;
    *v15 = 136315138;
    if (a1)
    {
      if (a1 != 1)
      {
        v41 = a1;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v17 = 0xE400000000000000;
      v18 = 1852799308;
    }

    else
    {
      v17 = 0xE600000000000000;
      v18 = 0x616873696C41;
    }

    v19 = sub_1002FFA0C(v18, v17, v40);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "Enabling LPEM for %s", v15, 0xCu);
    sub_1000752F4(v16);
  }

  swift_beginAccess();
  sub_1000D558C(&v41, a1);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC10seserviced7DSKLPEM_state;
  if ((*(v2 + OBJC_IVAR____TtC10seserviced7DSKLPEM_state) & 0xFE) == 2)
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40[0] = v23;
      *v22 = 136315138;
      LOBYTE(v41) = *(v2 + v11);
      v24 = String.init<A>(describing:)();
      v26 = sub_1002FFA0C(v24, v25, v40);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "LPEM already %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    return;
  }

  if (qword_100501A18 != -1)
  {
    goto LABEL_26;
  }

LABEL_15:
  v27 = *(v2 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey);
  v28 = *(v2 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey + 8);
  sub_100074C60();
  if (v29 == 2)
  {
    goto LABEL_22;
  }

  v30 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = v30 & 1;
    _os_log_impl(&_mh_execute_header, v31, v32, "Retrieved LPEM state from storage %{BOOL}d", v33, 8u);
  }

  if ((v30 & 1) == 0)
  {
LABEL_22:
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Enabling LPEM", v39, 2u);
    }

    *(v2 + v11) = 3;
    sub_100347220();
  }

  else
  {
    *(v2 + v11) = 2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "LPEM state from cache already enabled", v36, 2u);
    }
  }
}

void sub_10034682C(Swift::UInt a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v42[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v11 = v5 + 8;
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    swift_once();
LABEL_16:
    v28 = *(v2 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey);
    v29 = *(v2 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey + 8);
    sub_100074C60();
    if (v30 == 2)
    {
      goto LABEL_20;
    }

    v31 = v30;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = v31 & 1;
      _os_log_impl(&_mh_execute_header, v32, v33, "Retrieved LPEM state from storage %{BOOL}d", v34, 8u);
    }

    if (v31)
    {
LABEL_20:
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Disabling LPEM", v37, 2u);
      }

      *(v2 + v11) = 1;
      sub_100347220();
    }

    else
    {
      *(v2 + v11) = 0;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "LPEM state from cache already disabled", v40, 2u);
      }
    }

    return;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v42[0] = v16;
    *v15 = 136315138;
    if (a1)
    {
      if (a1 != 1)
      {
        v41 = a1;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v17 = 0xE400000000000000;
      v18 = 1852799308;
    }

    else
    {
      v17 = 0xE600000000000000;
      v18 = 0x616873696C41;
    }

    v19 = sub_1002FFA0C(v18, v17, v42);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "Disabling LPEM for %s", v15, 0xCu);
    sub_1000752F4(v16);
  }

  v20 = OBJC_IVAR____TtC10seserviced7DSKLPEM_runningModules;
  swift_beginAccess();
  sub_10010D998(a1);
  swift_endAccess();
  if (!*(*(v2 + v20) + 16))
  {
    v11 = OBJC_IVAR____TtC10seserviced7DSKLPEM_state;
    if (*(v2 + OBJC_IVAR____TtC10seserviced7DSKLPEM_state) < 2u)
    {

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v42[0] = v24;
        *v23 = 136315138;
        LOBYTE(v41) = *(v2 + v11);
        v25 = String.init<A>(describing:)();
        v27 = sub_1002FFA0C(v25, v26, v42);

        *(v23 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "LPEM already %s", v23, 0xCu);
        sub_1000752F4(v24);
      }

      return;
    }

    if (qword_100501A18 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }
}

uint64_t sub_100346DD8()
{
  v0 = type metadata accessor for DSKLPEM();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100346E18();
  qword_10051B810 = result;
  return result;
}

uint64_t sub_100346E18()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_state) = 4;
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_isSessionRequested) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_isSupported) = 1;
  v1 = (v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey);
  *v1 = 0xD000000000000013;
  v1[1] = 0x800000010046FAE0;
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_runningModules) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetriesMax) = 5;
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter) = 0;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4[4] = sub_1003485A4;
  v4[5] = v0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100193978;
  v4[3] = &unk_1004D1440;
  v2 = _Block_copy(v4);

  os_state_add_handler();
  _Block_release(v2);
  return v0;
}

_DWORD *sub_100346FC4()
{
  v17 = &type metadata for Bool;
  LOBYTE(v16) = 1;
  sub_100075D50(&v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v15, 0x726F707075537369, 0xEB00000000646574, isUniquelyReferenced_nonNull_native);
  v2 = OBJC_IVAR____TtC10seserviced7DSKLPEM_runningModules;
  swift_beginAccess();
  v3 = *(v0 + v2);

  v5 = sub_10023FE3C(v4);

  v17 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *&v16 = v5;
  sub_100075D50(&v16, v15);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v15, 0x4D676E696E6E7572, 0xEE0073656C75646FLL, v6);
  v7 = *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter);
  v17 = &type metadata for Int;
  *&v16 = v7;
  sub_100075D50(&v16, v15);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v15, 0xD000000000000013, 0x800000010046FA90, v8);
  v9 = Dictionary.description.getter();
  v17 = &type metadata for String;
  *&v16 = v9;
  *(&v16 + 1) = v10;
  sub_100075D50(&v16, v15);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v15, 0x6574617473, 0xE500000000000000, v11);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = sub_100015DA0("dsklpem.state", isa);

  return v13;
}

void sub_100347220()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if ((*(v1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_isSessionRequested) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_isSessionRequested) = 1;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Requesting hardware manager from NF", v11, 2u);
      }

      v12 = objc_opt_self();
      aBlock[4] = sub_100348518;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000A409C;
      aBlock[3] = &unk_1004D1378;
      v13 = _Block_copy(aBlock);

      [v12 sharedHardwareManagerWithNoUI:v13];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100347498(void *a1, uint64_t a2)
{
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Requesting session from NF", v6, 2u);
  }

  v10[4] = sub_100348538;
  v10[5] = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000BBFA0;
  v10[3] = &unk_1004D13A0;
  v7 = _Block_copy(v10);

  v8 = [a1 startLPEMConfigSession:v7];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_1003475F4(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a2;
  v7[4] = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100348588;
  *(v8 + 24) = v7;
  v13[4] = sub_10021A46C;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100346DB0;
  v13[3] = &unk_1004D1418;
  v9 = _Block_copy(v13);

  swift_errorRetain();
  v10 = a1;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10034779C(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_isSessionRequested) = 0;
  v4 = OBJC_IVAR____TtC10seserviced7DSKLPEM_state;
  if ((*(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_state) | 2) == 3)
  {
    if (a2)
    {
      v5 = OBJC_IVAR____TtC10seserviced7DSKLPEM_logger;
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v87 = v9;
        *v8 = 136315138;
        swift_getErrorValue();
        v10 = Error.localizedDescription.getter();
        v12 = sub_1002FFA0C(v10, v11, &v87);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Failed to start LPEM config session %s", v8, 0xCu);
        sub_1000752F4(v9);
      }

      v13 = OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter;
      v14 = *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (!v15)
      {
        *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter) = v16;
        if (v16 <= 5)
        {

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 134217984;
            *(v42 + 4) = *(a1 + v13);

            _os_log_impl(&_mh_execute_header, v40, v41, "Retry %ld LPEM Session", v42, 0xCu);
          }

          else
          {
          }

          sub_100347220(v43);
        }

        else
        {
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, v18, "Retries exhausted", v19, 2u);
          }

          *(a1 + v4) = 2 * (*(a1 + v4) != 3);
          *(a1 + v13) = 0;
        }

        return;
      }

      __break(1u);
      goto LABEL_49;
    }

    *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter) = 0;
    if (a3)
    {

      v5 = a3;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v87 = v31;
        *v30 = 136315138;
        v84 = *(a1 + v4);
        v32 = String.init<A>(describing:)();
        v34 = sub_1002FFA0C(v32, v33, &v87);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "LPEM %s", v30, 0xCu);
        sub_1000752F4(v31);
      }

      v35 = *(a1 + v4);
      if (v35 == 1)
      {
        v87 = 0;
        v46 = [v5 disableLPEMFeature:2 error:&v87];
        v47 = v87;
        if (v46)
        {
          *(a1 + v4) = 0;
          v48 = qword_100501A18;
          v49 = v47;
          if (v48 != -1)
          {
            swift_once();
          }

          sub_10008BF48(*(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey), *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey + 8), 0);
        }

        else
        {
          v65 = v87;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_errorRetain();
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            oslogb = swift_slowAlloc();
            v87 = oslogb;
            *v68 = 136315138;
            swift_getErrorValue();
            v69 = Error.localizedDescription.getter();
            v71 = v5;
            v72 = sub_1002FFA0C(v69, v70, &v87);

            *(v68 + 4) = v72;
            v5 = v71;
            _os_log_impl(&_mh_execute_header, v66, v67, "Failed to disable LPEM %s", v68, 0xCu);
            sub_1000752F4(oslogb);
          }

          else
          {
          }

          *(a1 + v4) = 2;
        }

        goto LABEL_45;
      }

      if (v35 != 3)
      {

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v87 = v53;
          *v52 = 136315138;
          v85 = *(a1 + v4);
          v54 = String.init<A>(describing:)();
          v56 = sub_1002FFA0C(v54, v55, &v87);

          *(v52 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v50, v51, "Unexpected state %s", v52, 0xCu);
          sub_1000752F4(v53);
        }

        goto LABEL_45;
      }

      v87 = 0;
      v36 = [v5 enableLPEMFeature:2 error:&v87];
      v37 = v87;
      if (!v36)
      {
        v57 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          osloga = swift_slowAlloc();
          v87 = osloga;
          *v60 = 136315138;
          swift_getErrorValue();
          v61 = Error.localizedDescription.getter();
          v63 = v5;
          v64 = sub_1002FFA0C(v61, v62, &v87);

          *(v60 + 4) = v64;
          v5 = v63;
          _os_log_impl(&_mh_execute_header, v58, v59, "Failed to enable LPEM %s", v60, 0xCu);
          sub_1000752F4(osloga);
        }

        else
        {
        }

        *(a1 + v4) = 0;
        goto LABEL_45;
      }

      *(a1 + v4) = 2;
      v38 = qword_100501A18;
      v39 = v37;
      if (v38 == -1)
      {
LABEL_20:
        sub_10008BF48(*(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey), *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey + 8), 1);
LABEL_45:

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v87 = v76;
          *v75 = 136315138;
          v86 = *(a1 + v4);
          v77 = String.init<A>(describing:)();
          v79 = sub_1002FFA0C(v77, v78, &v87);

          *(v75 + 4) = v79;
          _os_log_impl(&_mh_execute_header, v73, v74, "LPEM is %s", v75, 0xCu);
          sub_1000752F4(v76);
        }

        [v5 endSession];
        return;
      }

LABEL_49:
      swift_once();
      goto LABEL_20;
    }

    oslog = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v44, "Got no LPEM config session", v45, 2u);
    }
  }

  else
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v87 = v23;
      *v22 = 136315138;
      v83 = *(a1 + v4);
      v24 = String.init<A>(describing:)();
      v26 = sub_1002FFA0C(v24, v25, &v87);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "State after session acquired %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter) = 0;
  }
}

uint64_t sub_1003482D0()
{
  v1 = OBJC_IVAR____TtC10seserviced7DSKLPEM_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey + 8);

  v4 = *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_runningModules);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DSKLPEM()
{
  result = qword_10050B928;
  if (!qword_10050B928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003483E4()
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

unint64_t sub_1003484C4()
{
  result = qword_10050B9E8;
  if (!qword_10050B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B9E8);
  }

  return result;
}

uint64_t sub_100348520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100348540()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1003485C0(uint64_t a1)
{
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v29 = v1;
    v41 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = UUID.uuidString.getter();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10019F3C0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = v39;
      v21[5] = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1000937D4(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003488C8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v54 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_94;
  }

LABEL_2:
  v18 = qword_10051B7F0;
  *v17 = qword_10051B7F0;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v20 = *(v14 + 8);
  v14 += 8;
  v20(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_96;
  }

  v17 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v21 = *(v9 + 16);
  v21(v12, a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v8);
  swift_beginAccess();
  sub_1000C5158(0x10000, v12);
  swift_endAccess();
  v21(v12, a1 + v17, v8);
  swift_beginAccess();
  sub_1000C5310(3, v12);
  swift_endAccess();
  swift_beginAccess();
  sub_10010D6E8(a1 + v17, v7);
  swift_endAccess();
  sub_100075768(v7, &unk_10050BE80, &unk_10040B360);
  v14 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v13 = *(v2 + v14);
  if (v13 >> 62)
  {
LABEL_96:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (!v12)
  {
  }

  v60 = v14;
  v61 = v2;
  v8 = 0;
  v9 = v13 & 0xFFFFFFFFFFFFFF8;
  v2 = &qword_10050B000;
  while ((v13 & 0xC000000000000001) == 0)
  {
    if (v8 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      swift_once();
      goto LABEL_2;
    }

    v7 = *(v13 + 8 * v8 + 32);

    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    v22 = *&v7[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer];
    if (static UUID.== infix(_:_:)())
    {
      goto LABEL_16;
    }

    ++v8;
    if (v14 == v12)
    {
    }
  }

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v14 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  v23 = *&v7[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer];
  if (v23)
  {
    sub_1003AE754(v23);
  }

  v24 = &v7[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion];
  a1 = *&v7[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion];
  v25 = v60;
  v17 = v61;
  if (a1)
  {
    v13 = v24[1];

    (a1)(262);
    sub_1000B2A4C(a1);
    v26 = *v24;
    v27 = v24[1];
    *v24 = 0;
    v24[1] = 0;
    sub_1000B2A4C(v26);
  }

  v12 = *(v17 + v25);
  v66 = &_swiftEmptyArrayStorage;
  if (v12 >> 62)
  {
    goto LABEL_99;
  }

  v8 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
  v63 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier;
  v14 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier;

  if (v8)
  {
    v17 = 0;
    v59 = 0;
    v62 = &v7[v14];
    v2 = (v12 & 0xC000000000000001);
    v9 = v12 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v2)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (v17 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v25 = *(v12 + 8 * v17 + 32);

        v14 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          v51 = v66;
          v25 = v60;
          v17 = v61;
          goto LABEL_90;
        }
      }

      if (*(v25 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) != *&v7[v63] || *(v25 + 16) != v7[16])
      {
        goto LABEL_25;
      }

      v28 = *(v25 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
      a1 = *(v25 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
      v29 = *v62;
      v30 = v62[1];
      v31 = a1 >> 62;
      v32 = v30 >> 62;
      if (a1 >> 62 == 3)
      {
        break;
      }

      if (v31 <= 1)
      {
        if (!v31)
        {
          v34 = BYTE6(a1);
          if (v32 <= 1)
          {
            goto LABEL_55;
          }

          goto LABEL_60;
        }

        LODWORD(v34) = HIDWORD(v28) - v28;
        if (__OFSUB__(HIDWORD(v28), v28))
        {
          goto LABEL_100;
        }

        v34 = v34;
        goto LABEL_54;
      }

      if (v31 == 2)
      {
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        v38 = __OFSUB__(v36, v37);
        v34 = v36 - v37;
        if (v38)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
        }

        goto LABEL_54;
      }

      v34 = 0;
      if (v32 <= 1)
      {
LABEL_55:
        if (v32)
        {
          LODWORD(v39) = HIDWORD(v29) - v29;
          if (__OFSUB__(HIDWORD(v29), v29))
          {
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            v8 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_22;
          }

          v39 = v39;
        }

        else
        {
          v39 = BYTE6(v30);
        }

        goto LABEL_62;
      }

LABEL_60:
      if (v32 != 2)
      {
        if (!v34)
        {
          goto LABEL_84;
        }

        goto LABEL_25;
      }

      v41 = *(v29 + 16);
      v40 = *(v29 + 24);
      v38 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (v38)
      {
        goto LABEL_98;
      }

LABEL_62:
      if (v34 != v39)
      {
        goto LABEL_25;
      }

      if (v34 < 1)
      {
        goto LABEL_84;
      }

      if (v31 > 1)
      {
        if (v31 != 2)
        {
          memset(v65, 0, 14);
LABEL_76:
          a1 = v59;
          sub_10019F024(v65, v29, v30, &v64);
          v59 = a1;
          if (v64)
          {
            goto LABEL_84;
          }

          goto LABEL_25;
        }

        v57 = *v62;
        v58 = v30;
        v42 = *(v28 + 16);
        v55 = *(v28 + 24);
        v56 = v42;
        v43 = __DataStorage._bytes.getter();
        if (v43)
        {
          v54 = v43;
          v44 = __DataStorage._offset.getter();
          v45 = v56;
          if (__OFSUB__(v56, v44))
          {
            goto LABEL_103;
          }

          v54 += v56 - v44;
        }

        else
        {
          v54 = 0;
          v45 = v56;
        }

        v56 = v55 - v45;
        if (__OFSUB__(v55, v45))
        {
          goto LABEL_102;
        }

        v13 = a1 & 0x3FFFFFFFFFFFFFFFLL;
        __DataStorage._length.getter();
        v50 = v54;
      }

      else
      {
        if (!v31)
        {
          v65[0] = *(v25 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
          LOWORD(v65[1]) = a1;
          BYTE2(v65[1]) = BYTE2(a1);
          BYTE3(v65[1]) = BYTE3(a1);
          BYTE4(v65[1]) = BYTE4(a1);
          BYTE5(v65[1]) = BYTE5(a1);
          goto LABEL_76;
        }

        v57 = *v62;
        v58 = v30;
        v46 = v28;
        v47 = v28 >> 32;
        v55 = v46;
        v56 = v47 - v46;
        if (v47 < v46)
        {
          goto LABEL_101;
        }

        v48 = __DataStorage._bytes.getter();
        if (v48)
        {
          v54 = v48;
          v49 = __DataStorage._offset.getter();
          if (__OFSUB__(v55, v49))
          {
            goto LABEL_104;
          }

          v55 = v55 - v49 + v54;
        }

        else
        {
          v55 = 0;
        }

        v13 = a1 & 0x3FFFFFFFFFFFFFFFLL;
        __DataStorage._length.getter();
        v50 = v55;
      }

      a1 = v59;
      sub_10019F024(v50, v57, v58, v65);
      v59 = a1;
      if (v65[0])
      {
        goto LABEL_84;
      }

LABEL_25:
      v13 = &v66;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = v66[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_26:
      ++v17;
      if (v14 == v8)
      {
        goto LABEL_88;
      }
    }

    if (v28)
    {
      v33 = 0;
    }

    else
    {
      v33 = a1 == 0xC000000000000000;
    }

    v34 = 0;
    v35 = v33 && v30 >> 62 == 3;
    if (v35 && !v29 && v30 == 0xC000000000000000)
    {
LABEL_84:

      goto LABEL_26;
    }

LABEL_54:
    if (v32 <= 1)
    {
      goto LABEL_55;
    }

    goto LABEL_60;
  }

  v51 = &_swiftEmptyArrayStorage;
LABEL_90:

  v52 = *(v17 + v25);
  *(v17 + v25) = v51;
}

void sub_100349188(uint64_t a1, unint64_t a2, char **a3)
{
  v126 = a3;
  v6 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v115[-v8];
  v10 = type metadata accessor for UUID();
  v124 = *(v10 - 8);
  v125 = v10;
  v11 = *(v124 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v115[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v115[-v15];
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v115[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v22 = qword_10051B7F0;
  *v21 = qword_10051B7F0;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v25 = *(v18 + 8);
  v24 = (v18 + 8);
  v25(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v26 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v26 != 2)
    {
      goto LABEL_18;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v29 = __OFSUB__(v27, v28);
    v30 = v27 - v28;
    if (!v29)
    {
      if (v30 >= 1)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    goto LABEL_82;
  }

  if (v26)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 1)
      {
        goto LABEL_11;
      }

LABEL_18:
      sub_100069E2C(a1, a2);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (!os_log_type_enabled(v41, v42))
      {
LABEL_22:

        return;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v129 = v44;
      *v43 = 136315138;
      v131 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v45 = BidirectionalCollection<>.joined(separator:)();
      v47 = v46;

      v48 = sub_1002FFA0C(v45, v47, &v129);

      *(v43 + 4) = v48;
      v49 = "Ignoring invalid subscription status changed payload %s";
      goto LABEL_20;
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_18;
  }

LABEL_11:
  sub_100069E2C(a1, a2);
  v31 = sub_1000939AC(a1, a2, 0, 0, 0);
  v32 = OBJC_IVAR____TtC10seserviced9AlishaRKE_logger;
  if (v31 > 1u)
  {
    if (v31 == 2)
    {

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v129 = v36;
        *v35 = 136315138;
        v99 = UUID.uuidString.getter();
        v101 = sub_1002FFA0C(v99, v100, &v129);

        *(v35 + 4) = v101;
        v40 = "Received unsubscribe request successful %s";
        goto LABEL_63;
      }

LABEL_64:

      return;
    }

    if (v31 != 3)
    {
LABEL_56:
      sub_100069E2C(a1, a2);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (!os_log_type_enabled(v41, v42))
      {
        goto LABEL_22;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v129 = v44;
      *v43 = 136315138;
      v131 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v86 = BidirectionalCollection<>.joined(separator:)();
      v88 = v87;

      v89 = sub_1002FFA0C(v86, v88, &v129);

      *(v43 + 4) = v89;
      v49 = "Received unknown subscription status %s";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v41, v42, v49, v43, 0xCu);
      sub_1000752F4(v44);

LABEL_21:

      goto LABEL_22;
    }

    v24 = v126;

    v122 = v32;
    v123 = v3;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v129 = v53;
      *v52 = 136315138;
      v54 = UUID.uuidString.getter();
      v56 = sub_1002FFA0C(v54, v55, &v129);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Received subscription possible %s", v52, 0xCu);
      sub_1000752F4(v53);

      v24 = v126;
    }

    v58 = v124;
    v57 = v125;
    (*(v124 + 16))(v14, v24 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v125);
    swift_beginAccess();
    sub_1000D6D84(v16, v14);
    swift_endAccess();
    (*(v58 + 8))(v16, v57);
    v59 = qword_1005019E8;

    if (v59 == -1)
    {
LABEL_28:
      v60 = swift_allocObject();
      *(v60 + 16) = sub_10023F6D8;
      *(v60 + 24) = v24;

      v61 = sub_1000CAA04();

      v62 = sub_1000CA810(v61);
      if (v62)
      {
        v63 = v62;
        v64 = [v62 readerIdentifier];
        if (v64)
        {
          v65 = v64;
          v124 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v125 = v66;

          v67 = [objc_opt_self() sessionManager];
          v68 = [v67 getActiveRKESessions];

          sub_10009393C(0, &qword_100507800, &off_1004BE548);
          v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v69 >> 62)
          {
            v70 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v71 = v70 == 0;
          if (!v70)
          {
            v121 = 0;
            v102 = 0;
LABEL_71:

            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.info.getter();
            v107 = os_log_type_enabled(v105, v106);
            if (v71)
            {
              if (v107)
              {
                v108 = swift_slowAlloc();
                *v108 = 0;
                _os_log_impl(&_mh_execute_header, v105, v106, "No range to subscribe", v108, 2u);
              }

              sub_10006A178(v124, v125);
            }

            else
            {
              if (v107)
              {
                v109 = swift_slowAlloc();
                v110 = swift_slowAlloc();
                v131 = v110;
                *v109 = 136315138;
                v111 = v121;
                v127 = v102;
                v128 = v121;
                v129 = 0;
                v130 = 0xE000000000000000;
                _print_unlocked<A, B>(_:_:)();
                v112._countAndFlagsBits = 3026478;
                v112._object = 0xE300000000000000;
                String.append(_:)(v112);
                _print_unlocked<A, B>(_:_:)();
                v113 = sub_1002FFA0C(v129, v130, &v131);

                *(v109 + 4) = v113;
                _os_log_impl(&_mh_execute_header, v105, v106, "Subscription range to use %s", v109, 0xCu);
                sub_1000752F4(v110);

                v114 = v126;
              }

              else
              {

                v114 = v126;
                v111 = v121;
              }

              sub_10034F23C(v111, v102, v114);

              sub_10006A178(v124, v125);
            }

            return;
          }

          v117 = v61;
          v118 = v63;
          v119 = 0;
          v121 = 0;
          v72 = 0;
          v73 = 1;
          v24 = &selRef_retrievePeripheralsWithIdentifiers_;
          v116 = v70 == 0;
          while (2)
          {
            v120 = v73;
            v74 = v72;
            while (1)
            {
              if ((v69 & 0xC000000000000001) != 0)
              {
                v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v74 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_81;
                }

                v75 = *(v69 + 8 * v74 + 32);
              }

              v76 = v75;
              v72 = v74 + 1;
              if (__OFADD__(v74, 1))
              {
                goto LABEL_80;
              }

              isa = Data._bridgeToObjectiveC()().super.isa;
              v78 = [v76 isReaderAllowed:isa];

              if (v78)
              {
                if ([v76 subscriptionRange] != 0xFFFF)
                {
                  [v76 subscriptionRange];
                  if (v79 != 0xFFFF)
                  {
                    break;
                  }
                }
              }

              ++v74;
              if (v72 == v70)
              {
                v71 = v120;
LABEL_66:
                v63 = v118;
                v102 = v119;
                goto LABEL_71;
              }
            }

            v80 = [v76 subscriptionRange];
            [v76 subscriptionRange];
            v82 = v81;

            v83 = &v80[v82];
            if (__OFADD__(v80, v82))
            {
              __break(1u);
            }

            else
            {
              if (v120)
              {
                if (v83 >= v80)
                {
                  v121 = v80;
                  v119 = &v80[v82];
                  goto LABEL_54;
                }

LABEL_88:
                __break(1u);
                swift_unexpectedError();
                __break(1u);
                return;
              }

              v84 = v121;
              if (v80 < v121)
              {
                v84 = v80;
              }

              v85 = v119;
              if (v83 > v119)
              {
                v85 = &v80[v82];
              }

              v119 = v85;
              v121 = v84;
              if (v85 >= v84)
              {
LABEL_54:
                v71 = v116;
                v73 = 0;
                if (v72 != v70)
                {
                  continue;
                }

                goto LABEL_66;
              }
            }

            break;
          }

          __break(1u);
          goto LABEL_88;
        }
      }

      v41 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v41, v103))
      {
        goto LABEL_22;
      }

      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v41, v103, "Failed to retrieve endpoint", v104, 2u);
      goto LABEL_21;
    }

LABEL_84:
    swift_once();
    goto LABEL_28;
  }

  if (v31)
  {
    if (v31 == 1)
    {

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v129 = v36;
        *v35 = 136315138;
        v37 = UUID.uuidString.getter();
        v39 = sub_1002FFA0C(v37, v38, &v129);

        *(v35 + 4) = v39;
        v40 = "Received subscription request successful %s";
LABEL_63:
        _os_log_impl(&_mh_execute_header, v33, v34, v40, v35, 0xCu);
        sub_1000752F4(v36);

        goto LABEL_64;
      }

      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v90 = v126;

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v129 = v94;
    *v93 = 136315138;
    v95 = UUID.uuidString.getter();
    v97 = sub_1002FFA0C(v95, v96, &v129);

    *(v93 + 4) = v97;
    v90 = v126;
    _os_log_impl(&_mh_execute_header, v91, v92, "Received unsubscribed all, no subscription possible %s", v93, 0xCu);
    sub_1000752F4(v94);
  }

  v98 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  swift_beginAccess();
  sub_10010D6E8(v90 + v98, v9);
  swift_endAccess();
  sub_100075768(v9, &unk_10050BE80, &unk_10040B360);
}

void sub_10034A0DC(unint64_t a1, int a2, unint64_t a3)
{
  v4 = v3;
  LODWORD(v6) = a2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_63;
  }

LABEL_2:
  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v15 = (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  if (qword_1005019E8 != -1)
  {
LABEL_65:
    v15 = swift_once();
  }

  v16 = __chkstk_darwin(v15);
  *(&v83 - 2) = sub_10023FA88;
  *(&v83 - 1) = a3;
  v9 = *(v17 + 24);
  __chkstk_darwin(v16);
  *(&v83 - 4) = sub_100078968;
  *(&v83 - 3) = v18;
  *(&v83 - 2) = v19;
  os_unfair_lock_lock((v9 + 32));
  sub_10035A1F4(v9 + 16, &v105);
  os_unfair_lock_unlock((v9 + 32));
  if (!v105)
  {
    goto LABEL_17;
  }

  v94 = v6;
  v104 = v105;
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
LABEL_67:
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "No function sequence tag", v82, 2u);
      }

      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_67;
    }
  }

  v12 = 0;
  v6 = (a1 & 0xC000000000000001);
  while (!v6)
  {
    if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
      goto LABEL_2;
    }

    v20 = *(a1 + 8 * v12 + 32);
    v21 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      goto LABEL_16;
    }

LABEL_11:
    v9 = v20;
    if ([v20 tag] == 48)
    {
      v89 = v9;
      v25 = OBJC_IVAR____TtC10seserviced9AlishaRKE_logger;

      v102 = v25;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();

      v28 = os_log_type_enabled(v26, v27);
      v90 = a3;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v105 = v30;
        *v29 = 136315138;
        v31 = UUID.uuidString.getter();
        v33 = sub_1002FFA0C(v31, v32, &v105);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v26, v27, "Received vehicle status update %s", v29, 0xCu);
        sub_1000752F4(v30);
      }

      if (qword_100501C40 != -1)
      {
        swift_once();
      }

      v34 = qword_10051B6C8;
      v6 = v90;
      v86 = sub_1002A73E0(v90);
      v9 = sub_1002A94EC(v6);
      a1 = &selRef_cacheProximityChipData_completion_;
      v35 = [v89 children];
      if (v35)
      {
        v36 = v35;
        v103 = sub_10009393C(0, &qword_100502418, SESTLV_ptr);
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = v37 & 0xFFFFFFFFFFFFFF8;
        if (v37 >> 62)
        {
          v38 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v83 = v34;

        v88 = v104;
        v85 = v9;

        v93 = v4;
        if (v38)
        {
          v12 = v38;
          v84 = 0;
          v87 = 0;
          a3 = 0;
          v104 = (v37 & 0xC000000000000001);
          *(&v39 + 1) = 0xF000000000000000;
          v101 = xmmword_1004098E0;
          *&v39 = 136315138;
          v91 = v39;
          v40 = v94;
          v92 = v37;
          v99 = v12;
          v100 = v37 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v104)
            {
              v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (a3 >= *(v8 + 16))
              {
                goto LABEL_62;
              }

              v41 = *(v37 + 8 * a3 + 32);
            }

            v6 = v41;
            v9 = a3 + 1;
            if (__OFADD__(a3, 1))
            {
              goto LABEL_61;
            }

            if ([v41 tag] != 160)
            {
              break;
            }

            v110 = 0;
            v111 = 1;
            v109 = 256;
            v105 = v101;
            v108 = 256;
            v42 = [v6 *(a1 + 96)];
            if (!v42)
            {
              goto LABEL_72;
            }

            v43 = v42;
            v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100358688(v44, &v110, &v109, v4, &v105, v40, &v108);

            if ((v111 & 1) != 0 || (v109 & 0x100) != 0)
            {
              v45 = v6;
              v46 = Logger.logObject.getter();
              LODWORD(v6) = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v46, v6))
              {
                LODWORD(v96) = v6;
                v97 = v46;
                v47 = swift_slowAlloc();
                v48 = swift_slowAlloc();
                v107 = v48;
                *v47 = v91;
                v49 = [v45 asData];
                v98 = v45;

                if (!v49)
                {
                  goto LABEL_73;
                }

                v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v95 = v50;
                v52 = v51;

                v53 = sub_100288788(v50, v52);
                LODWORD(v6) = v53;
                v106 = v53;
                sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
                v54 = BidirectionalCollection<>.joined(separator:)();
                v56 = v55;
                sub_10006A178(v95, v52);

                v57 = sub_1002FFA0C(v54, v56, &v107);

                *(v47 + 4) = v57;
                v58 = v97;
                _os_log_impl(&_mh_execute_header, v97, v96, "Failed to retrieve function identifier and status %s", v47, 0xCu);
                sub_1000752F4(v48);

                v4 = v93;
                v40 = v94;
                a1 = 0x1004F7000;
                v37 = v92;
                v45 = v98;
              }

              else
              {
              }

              sub_10006A2D0(v105, *(&v105 + 1));

              v12 = v99;
              v8 = v100;
LABEL_30:
              ++a3;
              if (v9 == v12)
              {
                goto LABEL_50;
              }
            }

            else
            {
              LODWORD(v98) = v108;
              v59 = HIBYTE(v108);
              v60 = v105;
              v61 = v110;
              LODWORD(v95) = v110;
              v62 = v109;
              v63 = [v88 publicKeyIdentifier];
              v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v96 = v64;

              v65 = v86;

              v66 = v98 | (v59 << 8);
              v40 = v94;
              LODWORD(v63) = sub_100358C38(v61, v62, v66, v60, *(&v60 + 1), v90, v65, v85);
              a1 = 0x1004F7000;

              v4 = v93;
              sub_10006A178(v97, v96);
              v87 |= v63;
              v67 = v62 == 1;
              v37 = v92;
              v68 = v84;
              if (v95 == 17)
              {
                v68 = v67;
              }

              v84 = v68;
              sub_10006A2D0(v60, *(&v60 + 1));

              ++a3;
              v12 = v99;
              v8 = v100;
              if (v9 == v99)
              {
                goto LABEL_50;
              }
            }
          }

          goto LABEL_30;
        }

        v87 = 0;
        v84 = 0;
        LODWORD(v40) = v94;
LABEL_50:

        v69 = v88;

        v70 = v90;

        swift_bridgeObjectRelease_n();
        if (v40 >= 0x300u)
        {
LABEL_57:
          if (v87)
          {
            v75 = *&v70[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier];
            v76 = *&v70[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8];
            v77 = &v70[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
            v78 = *&v70[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
            v79 = *(v77 + 1);
            sub_10006A2BC(v75, v76);
            sub_10006A2BC(v78, v79);
            sub_1003375E0(0xD000000000000042, 0x80000001004612F0, v75, v76, v78, v79, 0);

            sub_10006A2D0(v78, v79);
            sub_10006A2D0(v75, v76);
          }

          else
          {
          }

          return;
        }

        v71 = sub_1002A73E0(v70);

        v72 = *(v71 + 16);
        if (!v72)
        {
          v73 = _swiftEmptyArrayStorage;
          goto LABEL_56;
        }

        v73 = sub_1000C0148(*(v71 + 16), 0);
        v74 = sub_100358384(&v105, v73 + 16, v72, v71);

        sub_100093854();
        if (v74 == v72)
        {
          v70 = v90;
          LODWORD(v40) = v94;
          v69 = v88;
LABEL_56:
          *&v105 = v73;
          sub_1002AB1DC(&v105);

          sub_100355784(v105, v84, v40, v70);

          goto LABEL_57;
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      __break(1u);

      __break(1u);
      return;
    }

    ++v12;
    if (v21 == v8)
    {
      goto LABEL_67;
    }
  }

  v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v21 = (v12 + 1);
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to retrieve endpoint", v24, 2u);
  }
}

void sub_10034ADB0(unint64_t a1, int a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_20:
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v14)
  {
    v32 = a2;
    if (!(a1 >> 62))
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_5;
      }

LABEL_23:
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "No function sequence tag", v30, 2u);
      }

      return;
    }
  }

  else
  {
    __break(1u);
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_5:
  v15 = 0;
  v8 = a1 & 0xC000000000000001;
  a2 = a1 & 0xFFFFFFF8;
  while (1)
  {
    if (v8)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v16 = *(a1 + 8 * v15 + 32);
    }

    v7 = v16;
    v17 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v16 tag] == 48)
    {
      break;
    }

    ++v15;
    if (v17 == v11)
    {
      goto LABEL_23;
    }
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 136315138;
    v22 = UUID.uuidString.getter();
    v24 = sub_1002FFA0C(v22, v23, &v33);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Received supported functions and actions update %s", v20, 0xCu);
    sub_1000752F4(v21);
  }

  v33 = _swiftEmptyArrayStorage;
  v25 = [v7 children];
  if (v25)
  {
    v26 = v25;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003597C4(v27, v3, &v33);

    sub_100355784(v33, 0, v32, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_10034B1D0(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *(a1 + 8);
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    sub_10023EFC4();
    Set.Iterator.init(_cocoa:)();
    v4 = v22[4];
    v6 = v22[5];
    v7 = v22[6];
    v8 = v22[7];
    v9 = v22[8];
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v13 = *(a1 + 8);

    v8 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v22[0] = v18;
        if (a2(v22))
        {
          break;
        }

        v8 = v16;
        v9 = v17;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_16:
        v19 = __CocoaSet.Iterator.next()();
        if (v19)
        {
          v22[10] = v19;
          sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
          swift_dynamicCast();
          v18 = v22[0];
          v16 = v8;
          v17 = v9;
          if (v22[0])
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      sub_100093854();
      if ((*(a4 + 16) & 1) == 0)
      {
        [v18 copyWithZone:0];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
        swift_dynamicCast();
      }
    }

    else
    {
LABEL_21:
      sub_100093854();
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v7 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10034B46C(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v2 = *(a1 + 8);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(a1 + 8);
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer();
    sub_10035A294(&qword_100503F20, type metadata accessor for Peer);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    v12 = *(a1 + 8);

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (v17)
    {
      while (1)
      {
        v25 = v17;
        if (a2(&v25))
        {
          break;
        }

        v7 = v15;
        v8 = v16;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_16:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for Peer();
          swift_dynamicCast();
          v17 = v25;
          v15 = v7;
          v16 = v8;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      sub_100093854();
      v18 = sub_1002230A4();

      return v18;
    }

    else
    {
LABEL_21:
      sub_100093854();
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v6 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10034C8DC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 1);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = (v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (v7[13])(v10, enum case for DispatchPredicate.onQueue(_:), v6);
    v12 = v11;
    v13 = _dispatchPreconditionTest(_:)();
    v14 = v7[1];
    ++v7;
    v14(v10, v6);
    if ((v13 & 1) == 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for AlishaPeer();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      break;
    }

    v6 = v15;
    v16 = objc_opt_self();

    isa = Data._bridgeToObjectiveC()().super.isa;
    v18 = [v16 TLVsWithData:isa];

    if (!v18)
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Ignoring malformed TLV", v31, 2u);
      }

      goto LABEL_27;
    }

    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = a3;
    if (!(a1 >> 62))
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_7;
    }

LABEL_25:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
LABEL_26:

LABEL_27:

      return;
    }

LABEL_7:
    v19 = 0;
    a3 = a1 & 0xC000000000000001;
    while (1)
    {
      if (a3)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v20 = *(a1 + 8 * v19 + 32);
      }

      v7 = v20;
      v21 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v33 = v20;
      sub_100352A0C(&v33, v32[1], v6, v3);

      ++v19;
      if (v21 == v10)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136315138;
    v26 = UUID.uuidString.getter();
    v28 = sub_1002FFA0C(v26, v27, &v33);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to cast Peer to AlishaPeer %s", v24, 0xCu);
    sub_1000752F4(v25);
  }
}

void *sub_10034CD08(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_10019F614(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_100069E2C(v5, *v4);
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        sub_10019F614((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v4 += 2;
      v11 = &type metadata for Data;
      v12 = &off_1004C9E30;
      *&v10 = v5;
      *(&v10 + 1) = v6;
      v2[2] = v8 + 1;
      sub_1000E39E0(&v10, &v2[5 * v8 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_10034CE08(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10019F8D4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10009393C(0, &qword_10050BCA8, SESPrivacyKey_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10019F8D4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100075D50(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10009393C(0, &qword_10050BCA8, SESPrivacyKey_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10019F8D4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100075D50(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10034D004(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      UInt16._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_10034D0AC(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v170 = a3;
  v171 = a2;
  v164 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v153 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v154 = &v148 - v10;
  __chkstk_darwin(v11);
  v13 = &v148 - v12;
  v14 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v156 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v148 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_118;
  }

LABEL_2:
  v25 = qword_10051B7F0;
  *v24 = qword_10051B7F0;
  v26 = *(v22 + 104);
  v159 = enum case for DispatchPredicate.onQueue(_:);
  v27 = v22;
  v160 = v22 + 104;
  v158 = v26;
  v26(v24);
  v157 = v25;
  v28 = _dispatchPreconditionTest(_:)();
  v29 = v20;
  v30 = v28;
  v31 = *(v27 + 8);
  v161 = v24;
  v163 = v29;
  v162 = v27 + 8;
  (v31)(v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_120;
  }

  v155 = v31;
  v32 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  v33 = v168;
  swift_beginAccess();
  v31 = *(v33 + v32);
  if (v31 >> 62)
  {
LABEL_120:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v35 = v170;
  v20 = v171;

  if (!v34)
  {
LABEL_72:

    sub_100069E2C(v20, v35);
    v56 = Logger.logObject.getter();
    v57 = v171;
    v58 = v56;
    v59 = static os_log_type_t.error.getter();
    sub_10006A178(v57, v35);
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = v35;
      v63 = v61;
      v178[0] = v61;
      *v60 = 136315138;
      v179 = sub_100288788(v57, v62);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v64 = BidirectionalCollection<>.joined(separator:)();
      v66 = v65;

      v67 = sub_1002FFA0C(v64, v66, v178);

      *(v60 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v58, v59, "No RKE request in progress for %s", v60, 0xCu);
      sub_1000752F4(v63);
    }

    sub_10035CA1C();
    swift_allocError();
    *v68 = 7;
    swift_willThrow();
    return;
  }

  v149 = v13;
  v151 = v6;
  v150 = v5;
  v152 = v19;
  v13 = 0;
  v175 = v31 & 0xFFFFFFFFFFFFFF8;
  v176 = v31 & 0xC000000000000001;
  if (v20)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35 == 0xC000000000000000;
  }

  v37 = !v36;
  LODWORD(v173) = v37;
  v5 = v35 >> 62;
  v38 = __OFSUB__(HIDWORD(v20), v20);
  v167 = v38;
  v166 = (HIDWORD(v20) - v20);
  v172 = BYTE6(v35);
  v6 = v31;
  v165 = v31;
  v174 = v34;
  while (1)
  {
    if (v176)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    else
    {
      if (v13 >= *(v175 + 16))
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        v147 = v22;
        swift_once();
        v22 = v147;
        goto LABEL_2;
      }

      v24 = *(v6 + 8 * v13 + 32);

      v19 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_71;
      }
    }

    v39 = *&v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier];
    v40 = *&v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8];
    v41 = v40 >> 62;
    if (v40 >> 62 == 3)
    {
      break;
    }

    if (v41 > 1)
    {
      if (v41 != 2)
      {
        goto LABEL_43;
      }

      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      v48 = __OFSUB__(v46, v47);
      v45 = v46 - v47;
      if (v48)
      {
        goto LABEL_116;
      }

      if (v5 <= 1)
      {
        goto LABEL_40;
      }
    }

    else if (v41)
    {
      LODWORD(v45) = HIDWORD(v39) - v39;
      if (__OFSUB__(HIDWORD(v39), v39))
      {
        goto LABEL_117;
      }

      v45 = v45;
      if (v5 <= 1)
      {
LABEL_40:
        v49 = v172;
        if (v5)
        {
          v49 = v166;
          v22 = v167;
          if (v167)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      v45 = BYTE6(v40);
      if (v5 <= 1)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    if (v5 != 2)
    {
      if (!v45)
      {
        goto LABEL_75;
      }

      goto LABEL_17;
    }

    v22 = *(v20 + 16);
    v50 = *(v20 + 24);
    v48 = __OFSUB__(v50, v22);
    v49 = (v50 - v22);
    if (v48)
    {
      goto LABEL_114;
    }

LABEL_46:
    if (v45 != v49)
    {
      goto LABEL_17;
    }

    if (v45 < 1)
    {
      goto LABEL_75;
    }

    if (v41 <= 1)
    {
      if (!v41)
      {
        v178[0] = *&v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier];
        LOWORD(v178[1]) = v40;
        BYTE2(v178[1]) = BYTE2(v40);
        BYTE3(v178[1]) = BYTE3(v40);
        BYTE4(v178[1]) = BYTE4(v40);
        BYTE5(v178[1]) = BYTE5(v40);
        goto LABEL_67;
      }

      v169 = v24;
      v24 = v4;
      v4 = v39;
      if (v39 >> 32 < v39)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        swift_once();
LABEL_96:
        v171 = qword_10051B5A0;
        v105 = *&v24[v40];
        v173 = v179;
        v174 = v180;
        v175 = v105;
        v106 = v13;
        v107 = v152;
        v108 = v150;
        v172 = *(v13 + 16);
        v172(v152, &v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier], v150);
        (*(v13 + 56))(v107, 0, 1, v108);
        v109 = v161;
        v110 = v157;
        *v161 = v157;
        v111 = v163;
        v158(v109, v159, v163);
        v112 = v110;
        v113 = _dispatchPreconditionTest(_:)();
        v155(v109, v111);
        if (v113)
        {
          v114 = v156;
          sub_1000756F8(v107, v156);
          if ((*(v106 + 48))(v114, 1, v108) == 1)
          {
            sub_100075768(v114, &unk_10050BE80, &unk_10040B360);
            v109 = v175;
          }

          else
          {
            v169 = v24;
            v115 = v149;
            (*(v106 + 32))(v149, v114, v108);
            v116 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
            v109 = v175;
            swift_beginAccess();
            v170 = v116;
            v117 = v109 + v116;
            v118 = v154;
            v119 = v172;
            v172(v154, v117, v108);
            v120 = static UUID.== infix(_:_:)();
            v122 = *(v106 + 8);
            v121 = (v106 + 8);
            v123 = v118;
            v124 = v122;
            v122(v123, v108);
            if ((v120 & 1) == 0)
            {
              v151 = v121;
              v127 = v153;
              v119(v153, v115, v108);

              v128 = Logger.logObject.getter();
              v129 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v128, v129))
              {
                v130 = v127;
                v131 = swift_slowAlloc();
                v174 = swift_slowAlloc();
                v177 = v174;
                *v131 = 136315394;
                v168 = sub_10035A294(&qword_100504C70, &type metadata accessor for UUID);
                v173 = v128;
                v132 = dispatch thunk of CustomStringConvertible.description.getter();
                LODWORD(v171) = v129;
                v134 = v133;
                v124(v130, v150);
                v135 = sub_1002FFA0C(v132, v134, &v177);

                *(v131 + 4) = v135;
                *(v131 + 12) = 2080;
                v136 = v154;
                v119(v154, v109 + v170, v150);
                v108 = v150;
                v137 = dispatch thunk of CustomStringConvertible.description.getter();
                v139 = v138;
                v124(v136, v108);
                v140 = sub_1002FFA0C(v137, v139, &v177);

                *(v131 + 14) = v140;
                v141 = v173;
                _os_log_impl(&_mh_execute_header, v173, v171, "Connection identifier has changed %s %s", v131, 0x16u);
                swift_arrayDestroy();
              }

              else
              {

                v124(v127, v108);
              }

              v142 = v124;
              v24 = v169;
              v143 = v152;
              v111 = v176;
              v142(v149, v108);
              v126 = v143;
              goto LABEL_109;
            }

            v124(v115, v108);
            v24 = v169;
          }

          v113 = sub_100239160(3, 17, v173, v174);
          v108 = v125;
          v111 = v176;
          if (qword_100501960 == -1)
          {
LABEL_102:
            sub_1000E71A0(v113, v108, v109);
            if (v4)
            {
              sub_10006A178(v113, v108);
              sub_100075768(v152, &unk_10050BE80, &unk_10040B360);

LABEL_110:
              v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state] = 4;
              v144 = *&v24[v111];
              if (v144)
              {
                v145 = *&v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec];
                v146 = v144;
                sub_1003AE618(v146, v145);
              }

              sub_10006A178(v179, v180);
              return;
            }

            sub_10006A178(v113, v108);
            v126 = v152;
LABEL_109:
            sub_100075768(v126, &unk_10050BE80, &unk_10040B360);
            goto LABEL_110;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
        goto LABEL_102;
      }

      v52 = __DataStorage._bytes.getter();
      if (v52)
      {
        v54 = __DataStorage._offset.getter();
        if (__OFSUB__(v4, v54))
        {
          goto LABEL_124;
        }

        v52 += &v4[-v54];
      }

LABEL_64:
      __DataStorage._length.getter();
      v55 = v52;
      v35 = v170;
      v20 = v171;
      sub_10019F024(v55, v171, v170, v178);
      v4 = v24;
      v24 = v169;
      v6 = v165;
      if (v178[0])
      {
        goto LABEL_75;
      }

      goto LABEL_17;
    }

    if (v41 == 2)
    {
      v169 = v24;
      v24 = v4;
      v51 = *(v39 + 16);
      v4 = *(v39 + 24);
      v52 = __DataStorage._bytes.getter();
      if (v52)
      {
        v53 = __DataStorage._offset.getter();
        if (__OFSUB__(v51, v53))
        {
          goto LABEL_123;
        }

        v52 += v51 - v53;
      }

      v48 = __OFSUB__(v4, v51);
      v4 -= v51;
      if (v48)
      {
        goto LABEL_122;
      }

      goto LABEL_64;
    }

    memset(v178, 0, 14);
LABEL_67:
    sub_10019F024(v178, v20, v35, &v179);
    if (v179)
    {
      goto LABEL_75;
    }

LABEL_17:

    ++v13;
    if (v19 == v174)
    {
      goto LABEL_72;
    }
  }

  if (v39)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40 == 0xC000000000000000;
  }

  v44 = !v42 || v5 < 3;
  if ((v44 | v173))
  {
LABEL_43:
    v45 = 0;
    if (v5 <= 1)
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_75:

  v69 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier;
  v70 = v164;
  if (*&v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier] != v164)
  {

    sub_100069E2C(v20, v35);
    v78 = Logger.logObject.getter();
    v79 = v171;
    v80 = v78;
    v81 = static os_log_type_t.error.getter();
    sub_10006A178(v79, v35);
    if (os_log_type_enabled(v80, v81))
    {
      v82 = v35;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v169 = v24;
      v85 = v84;
      v178[0] = v84;
      *v83 = 33555202;
      *(v83 + 4) = v70;
      *(v83 + 6) = 512;
      *(v83 + 8) = *&v169[v69];

      *(v83 + 10) = 2080;
      v179 = sub_100288788(v79, v82);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v86 = BidirectionalCollection<>.joined(separator:)();
      v88 = v87;

      v89 = sub_1002FFA0C(v86, v88, v178);

      *(v83 + 12) = v89;
      _os_log_impl(&_mh_execute_header, v80, v81, "RKE function %hu does not match current function in progress %hu for key %s", v83, 0x14u);
      sub_1000752F4(v85);
    }

    else
    {
    }

    sub_10035CA1C();
    swift_allocError();
    v94 = 7;
LABEL_90:
    *v93 = v94;
    swift_willThrow();

    return;
  }

  v71 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer;
  v72 = *&v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer];
  if (v72)
  {
    sub_1003AE754(v72);
  }

  v40 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer;
  v13 = v151;
  if (*(*&v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer] + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) >= 0x300u)
  {
    if (v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1])
    {
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "Invalid execution identifier", v92, 2u);
      }

      sub_10035CA1C();
      swift_allocError();
      v94 = 2;
      goto LABEL_90;
    }

    v95 = v24[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier];
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_100409E40;
    v97 = [objc_opt_self() TLVWithTag:132 unsignedChar:v95];
    if (!v97)
    {
      goto LABEL_132;
    }

    *(v96 + 32) = v97;
LABEL_93:
    v179 = sub_1002B3B94(&off_1004C4F80);
    v180 = v98;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v100 = [objc_opt_self() TLVWithTag:32631 children:isa];

    if (v100)
    {
      v101 = [v100 asData];

      if (v101)
      {
        v176 = v71;
        v102 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;

        Data.append(_:)();
        sub_10006A178(v102, v104);
        if (qword_100501B60 == -1)
        {
          goto LABEL_96;
        }

        goto LABEL_125;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_130;
  }

  sub_100068FC4(&qword_100504060, &qword_10040B370);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_10040DA10;
  v74 = bswap32(*&v24[v69]) >> 16;
  v75 = objc_opt_self();
  v76 = [v75 TLVWithTag:128 unsignedShort:v74];
  if (!v76)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  *(v73 + 32) = v76;
  v77 = [v75 TLVWithTag:129 unsignedChar:v24[16]];
  if (v77)
  {
    *(v73 + 40) = v77;
    goto LABEL_93;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_10034E460(os_log_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v121 = a2;
  v117 = type metadata accessor for UUID();
  v7 = *(v117 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v117);
  v110 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - v12;
  __chkstk_darwin(v11);
  v14 = &v104 - v13;
  v15 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v112 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v120 = &v104 - v19;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v24 = (&v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v25 = qword_10051B7F0;
  *v24 = qword_10051B7F0;
  v26 = v21[13];
  LODWORD(v116) = enum case for DispatchPredicate.onQueue(_:);
  v118 = (v21 + 13);
  v115 = v26;
  v26(v24);
  v113 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v28 = v21[1];
  v27 = (v21 + 1);
  v114 = v28;
  v28(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if ((*(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType) | 2) != 2)
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Ignoring confirmation for non-enduring request";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);
    }

LABEL_17:

    return;
  }

  v29 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer;
  v30 = *(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
  if (v30)
  {
    sub_1003AE754(v30);
  }

  v31 = *(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer);
  if (*(v31 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) < 0x300u)
  {
    v106 = a3;
    v32 = v20;
    v33 = v7;
    v104 = v29;
    v109 = v31;
    v107 = v14;
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10040DA10;
    v35 = a1;
    v36 = bswap32(*(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier)) >> 16;
    v37 = objc_opt_self();
    v38 = [v37 TLVWithTag:128 unsignedShort:v36];
    if (!v38)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    *(v34 + 32) = v38;
    v39 = [v37 TLVWithTag:129 unsignedChar:LOBYTE(v35[2].isa)];
    if (!v39)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    a1 = v35;
    *(v34 + 40) = v39;
    v7 = v33;
    v20 = v32;
    v4 = v3;
    a3 = v106;
LABEL_20:
    v119 = a1;
    v127 = v34;
    v105 = a3 >> 60;
    if (a3 >> 60 != 15)
    {
      sub_100069E2C(v121, a3);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v47 = [objc_opt_self() TLVWithTag:136 value:isa];

      if (!v47)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10006A2D0(v121, a3);
    }

    v125 = sub_1002B3B94(&off_1004C39C0);
    v126 = v48;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v49 = Array._bridgeToObjectiveC()().super.isa;
    v50 = [objc_opt_self() TLVWithTag:32630 children:v49];

    if (v50)
    {
      v106 = v4;
      v51 = [v50 asData];

      if (v51)
      {
        v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        Data.append(_:)();
        sub_10006A178(v52, v54);
        v55 = v121;
        sub_10006A2BC(v121, a3);
        a1 = v119;

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.info.getter();
        sub_10006A2D0(v55, a3);
        v58 = os_log_type_enabled(v56, v57);
        v108 = v20;
        if (v58)
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v124 = v60;
          v61 = *(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
          *v59 = 33555202;
          *(v59 + 4) = v61;
          *(v59 + 6) = 256;
          *(v59 + 8) = a1[2].isa;

          *(v59 + 9) = 2080;
          if (v105 <= 0xE)
          {
            v62 = 0x7461642068746977;
          }

          else
          {
            v62 = 0;
          }

          if (v105 <= 0xE)
          {
            v63 = 0xE900000000000061;
          }

          else
          {
            v63 = 0xE000000000000000;
          }

          v64 = sub_1002FFA0C(v62, v63, &v124);

          *(v59 + 11) = v64;
          a1 = v119;
          _os_log_impl(&_mh_execute_header, v56, v57, "Sending continuation request function %hu action %hhu %s", v59, 0x13u);
          sub_1000752F4(v60);
        }

        else
        {
        }

        if (qword_100501B60 == -1)
        {
LABEL_37:
          v105 = qword_10051B5A0;
          v121 = v126;
          v122 = v125;
          v65 = *(v7 + 16);
          v66 = a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier;
          v67 = v7;
          v68 = v120;
          v69 = v117;
          v118 = v65;
          v65(v120, v66, v117);
          (*(v67 + 56))(v68, 0, 1, v69);
          v70 = v113;
          *v24 = v113;
          v71 = v108;
          v115(v24, v116, v108);
          v72 = v70;
          v73 = _dispatchPreconditionTest(_:)();
          v114(v24, v71);
          if (v73)
          {
            v74 = v112;
            sub_1000756F8(v68, v112);
            if ((*(v67 + 48))(v74, 1, v69) == 1)
            {
              sub_100075768(v74, &unk_10050BE80, &unk_10040B360);
            }

            else
            {
              v75 = v107;
              (*(v67 + 32))(v107, v74, v69);
              v76 = v69;
              v77 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
              v78 = v109;
              swift_beginAccess();
              v116 = v77;
              v79 = v111;
              v80 = v118;
              v118(v111, (v78 + v77), v76);
              LOBYTE(v77) = static UUID.== infix(_:_:)();
              v83 = *(v67 + 8);
              v81 = v67 + 8;
              v82 = v83;
              v83(v79, v76);
              if ((v77 & 1) == 0)
              {
                v122 = v81;
                v86 = v110;
                v80(v110, v75, v76);

                v87 = Logger.logObject.getter();
                v88 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v87, v88))
                {
                  v89 = swift_slowAlloc();
                  v121 = swift_slowAlloc();
                  v123 = v121;
                  *v89 = 136315394;
                  v114 = sub_10035A294(&qword_100504C70, &type metadata accessor for UUID);
                  v119 = v87;
                  v90 = dispatch thunk of CustomStringConvertible.description.getter();
                  LODWORD(v115) = v88;
                  v92 = v91;
                  v82(v86, v76);
                  v93 = sub_1002FFA0C(v90, v92, &v123);
                  v94 = v120;

                  *(v89 + 4) = v93;
                  *(v89 + 12) = 2080;
                  v95 = v78 + v116;
                  v96 = v111;
                  v118(v111, v95, v76);
                  v97 = dispatch thunk of CustomStringConvertible.description.getter();
                  v98 = v82;
                  v100 = v99;
                  v98(v96, v76);
                  v101 = sub_1002FFA0C(v97, v100, &v123);

                  *(v89 + 14) = v101;
                  v102 = v119;
                  _os_log_impl(&_mh_execute_header, v119, v115, "Connection identifier has changed %s %s", v89, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {

                  v82(v86, v76);
                  v94 = v120;
                  v98 = v82;
                }

                sub_100079E24();
                swift_allocError();
                *v103 = 2;
                swift_willThrow();
                v98(v107, v76);
                sub_100075768(v94, &unk_10050BE80, &unk_10040B360);
                goto LABEL_50;
              }

              v82(v75, v76);
              v68 = v120;
            }

            v73 = sub_100239160(3, 17, v122, v121);
            v71 = v84;
            v3 = v106;
            v27 = v119;
            if (qword_100501960 == -1)
            {
LABEL_43:
              sub_1000E71A0(v73, v71, v109);
              sub_10006A178(v73, v71);
              sub_100075768(v68, &unk_10050BE80, &unk_10040B360);
              if (!v3)
              {
                v85 = *(&v27->isa + v104);
                if (v85)
                {
                  sub_1003AE618(v85, *(&v27->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec));
                }
              }

LABEL_50:
              sub_10006A178(v125, v126);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          swift_once();
          goto LABEL_43;
        }

LABEL_52:
        swift_once();
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_57;
  }

  if (*(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1))
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Invalid execution identifier";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v104 = v29;
  v109 = v31;
  v107 = v14;
  v44 = *(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier);
  sub_100068FC4(&qword_100504060, &qword_10040B370);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100409E40;
  v45 = [objc_opt_self() TLVWithTag:132 unsignedChar:v44];
  if (v45)
  {
    *(v34 + 32) = v45;
    goto LABEL_20;
  }

LABEL_60:
  __break(1u);
}

void sub_10034F23C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v54 = a2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = v6[13];
  v12(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v52 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v53 = v6[1];
  v53(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_16:
    v38 = v58;
    v39 = v59;
    v40 = v52;
    *v9 = v52;
    (a1)(v9, HIDWORD(v48), v11);
    v41 = v40;
    LOBYTE(v40) = _dispatchPreconditionTest(_:)();
    v53(v9, v11);
    if (v40)
    {
      v38 = sub_100239160(3, 17, v38, v39);
      v9 = v42;
      if (qword_100501960 == -1)
      {
LABEL_18:
        sub_1000E71A0(v38, v9, a3);
        sub_10006A178(v38, v9);
        sub_10006A178(v58, v59);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_18;
  }

  v51 = v12;
  v13 = Logger.logObject.getter();
  v14 = v54;
  if ((a1 & 0x8000000000000000) == 0 && v54 >= a1 && v54 < 0x10000)
  {
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v13, v15);
    v49 = v5;
    HIDWORD(v48) = v11;
    if (v16)
    {
      v17 = swift_slowAlloc();
      *&v50 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v56 = a1;
      v57[0] = v19;
      *v18 = 136315138;
      v55 = v14;
      v58 = 0;
      v59 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v20._countAndFlagsBits = 3026478;
      v20._object = 0xE300000000000000;
      String.append(_:)(v20);
      _print_unlocked<A, B>(_:_:)();
      v21 = sub_1002FFA0C(v58, v59, v57);

      *(v18 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v15, "Subscribing to function identifier range %s", v18, 0xCu);
      sub_1000752F4(v19);

      a3 = v50;
    }

    v58 = sub_1002B3B94(&off_1004C3880);
    v59 = v22;
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v23 = swift_allocObject();
    v50 = xmmword_10040DA10;
    *(v23 + 16) = xmmword_10040DA10;
    v24 = swift_allocObject();
    *(v24 + 16) = v50;
    v25 = bswap32(a1) >> 16;
    v26 = objc_opt_self();
    v27 = [v26 TLVWithTag:132 unsignedShort:v25];
    if (v27)
    {
      *(v24 + 32) = v27;
      v28 = [v26 TLVWithTag:133 unsignedShort:bswap32(v54) >> 16];
      if (v28)
      {
        *(v24 + 40) = v28;
        sub_10009393C(0, &qword_100502418, SESTLV_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v30 = [v26 TLVWithTag:48 children:isa];

        if (v30)
        {
          *(v23 + 32) = v30;
          v31 = [v26 TLVWithTag:134 value:0];
          if (v31)
          {
            *(v23 + 40) = v31;
            v32 = Array._bridgeToObjectiveC()().super.isa;

            v33 = [v26 TLVWithTag:32627 children:v32];

            if (v33)
            {
              v34 = [v33 asData];

              v11 = v49;
              a1 = v51;
              if (v34)
              {
                v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v37 = v36;

                Data.append(_:)();
                sub_10006A178(v35, v37);
                if (qword_100501B60 == -1)
                {
                  goto LABEL_16;
                }

                goto LABEL_23;
              }

              goto LABEL_31;
            }

LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v56 = a1;
    v57[0] = v45;
    *v44 = 136315138;
    v55 = v14;
    v58 = 0;
    v59 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v46._countAndFlagsBits = 3026478;
    v46._object = 0xE300000000000000;
    String.append(_:)(v46);
    _print_unlocked<A, B>(_:_:)();
    v47 = sub_1002FFA0C(v58, v59, v57);

    *(v44 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v13, v43, "Invalid subscription range %s", v44, 0xCu);
    sub_1000752F4(v45);
  }
}

uint64_t sub_10034F940()
{
  v0 = type metadata accessor for AlishaRKE(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10034F980();
  qword_10051B820 = result;
  return result;
}

uint64_t sub_10034F980()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_notificationsToBeSuppressed) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_peersAvailableToSubscribe) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_rkeOEMProprietaryDataMaxLength) = 64;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_rkeTimeoutDefaultMilliseconds) = 5000;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_currentExecutionIdentifier) = 0;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_100357FA8;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004D16A8;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

uint64_t sub_10034FB20()
{
  v112 = sub_100068FC4(&qword_10050BC88, &qword_100417120);
  v1 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v111 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v110 = &v106 - v4;
  v118 = sub_100068FC4(&qword_10050BC90, &qword_100417128);
  v5 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v117 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v116 = &v106 - v8;
  v9 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v108 = v0;
  v10 = *(v0 + v9);
  if (v10 >> 62)
  {
    goto LABEL_80;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = _swiftEmptyArrayStorage;
    if (i)
    {
      *&v126 = _swiftEmptyArrayStorage;

      sub_10019F4C4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_82;
      }

      v13 = 0;
      v120 = 0;
      v12 = v126;
      v119 = v10 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v119 + 16))
          {
            goto LABEL_79;
          }

          v15 = *(v10 + 8 * v13 + 32);
        }

        v124[0] = v15;
        v16 = v120;
        sub_100356F30(v124, v125);
        v120 = v16;

        v17 = *&v125[0];
        *&v126 = v12;
        v19 = v12[2];
        v18 = v12[3];
        if (v19 >= v18 >> 1)
        {
          sub_10019F4C4((v18 > 1), v19 + 1, 1);
          v12 = v126;
        }

        v12[2] = v19 + 1;
        v12[v19 + 4] = v17;
        ++v13;
        if (v14 == i)
        {

          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_67;
    }

    v120 = 0;
LABEL_16:
    v127 = sub_100068FC4(&unk_100503EC0, &unk_100417130);
    *&v126 = v12;
    sub_100075D50(&v126, v125);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = _swiftEmptyDictionarySingleton;
    sub_100315178(v125, 0xD000000000000012, 0x800000010046FB90, isUniquelyReferenced_nonNull_native);
    v107 = v124[0];
    v10 = OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState;
    v21 = v108;
    swift_beginAccess();
    v22 = *(v21 + v10);
    v23 = *(v22 + 16);
    v24 = _swiftEmptyArrayStorage;
    if (!v23)
    {
      break;
    }

    *&v126 = _swiftEmptyArrayStorage;

    sub_10019FB50(0, v23, 0);
    v24 = v126;
    v25 = (v22 + 64);
    v26 = -1 << *(v22 + 32);
    v27 = _HashTable.startBucket.getter();
    v28 = 0;
    v29 = *(v22 + 36);
    v109 = v22 + 72;
    v113 = v23;
    v115 = (v22 + 64);
    v114 = v29;
    while ((v27 & 0x8000000000000000) == 0 && v27 < 1 << *(v22 + 32))
    {
      v32 = v27 >> 6;
      v10 = 1 << v27;
      if ((v25[v27 >> 6] & (1 << v27)) == 0)
      {
        goto LABEL_68;
      }

      if (v29 != *(v22 + 36))
      {
        goto LABEL_69;
      }

      v119 = v28;
      v33 = *(v22 + 48);
      v34 = type metadata accessor for UUID();
      v35 = *(v34 - 8);
      v36 = v116;
      (*(v35 + 16))(v116, v33 + *(v35 + 72) * v27, v34);
      LOBYTE(v33) = *(*(v22 + 56) + v27);
      v37 = v117;
      (*(v35 + 32))(v117, v36, v34);
      *(v37 + *(v118 + 48)) = v33;
      v38 = UUID.uuidString.getter();
      v40 = v39;
      LOBYTE(v125[0]) = v33;
      v41 = String.init<A>(describing:)();
      v43 = v42;
      sub_100075768(v37, &qword_10050BC90, &qword_100417128);
      *&v126 = v24;
      v45 = v24[2];
      v44 = v24[3];
      v46 = v24;
      if (v45 >= v44 >> 1)
      {
        v106 = v38;
        sub_10019FB50((v44 > 1), v45 + 1, 1);
        v38 = v106;
        v46 = v126;
      }

      v46[2] = v45 + 1;
      v47 = &v46[4 * v45];
      v47[4] = v38;
      v47[5] = v40;
      v47[6] = v41;
      v47[7] = v43;
      v30 = 1 << *(v22 + 32);
      if (v27 >= v30)
      {
        goto LABEL_70;
      }

      v25 = v115;
      v48 = v115[v32];
      if ((v48 & v10) == 0)
      {
        goto LABEL_71;
      }

      v24 = v46;
      LODWORD(v29) = v114;
      if (v114 != *(v22 + 36))
      {
        goto LABEL_72;
      }

      v49 = v48 & (-2 << (v27 & 0x3F));
      if (v49)
      {
        v30 = __clz(__rbit64(v49)) | v27 & 0x7FFFFFFFFFFFFFC0;
        v31 = v119;
      }

      else
      {
        v10 = v32 << 6;
        v50 = v32 + 1;
        v51 = (v109 + 8 * v32);
        while (v50 < (v30 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v10 += 64;
          ++v50;
          if (v53)
          {
            sub_1000937D4(v27, v114, 0);
            v30 = __clz(__rbit64(v52)) + v10;
            goto LABEL_35;
          }
        }

        sub_1000937D4(v27, v114, 0);
LABEL_35:
        v31 = v119;
      }

      v28 = v31 + 1;
      v27 = v30;
      if (v28 == v113)
      {

        goto LABEL_37;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    ;
  }

LABEL_37:
  if (v24[2])
  {
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v54 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v54 = _swiftEmptyDictionarySingleton;
  }

  *&v126 = v54;

  v56 = v120;
  sub_100357BF8(v55, 1, &v126);
  if (v56)
  {
    goto LABEL_82;
  }

  v57 = v126;
  v127 = sub_100068FC4(&qword_100502600, &unk_100417140);
  *&v126 = v57;
  sub_100075D50(&v126, v125);
  v58 = v107;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v123 = v58;
  sub_100315178(v125, 0xD000000000000011, 0x800000010046FB50, v59);
  v115 = v123;
  v60 = OBJC_IVAR____TtC10seserviced9AlishaRKE_notificationsToBeSuppressed;
  v61 = v108;
  swift_beginAccess();
  v62 = *(v61 + v60);
  v10 = *(v62 + 16);
  v63 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v114 = 0;
    *&v126 = _swiftEmptyArrayStorage;

    sub_10019FB30(0, v10, 0);
    v63 = v126;
    v64 = v62 + 64;
    v65 = -1 << *(v62 + 32);
    v66 = _HashTable.startBucket.getter();
    v67 = 0;
    v68 = *(v62 + 36);
    v116 = (v62 + 72);
    v117 = v10;
    v119 = v62 + 64;
    v118 = v68;
    while ((v66 & 0x8000000000000000) == 0 && v66 < 1 << *(v62 + 32))
    {
      v70 = v66 >> 6;
      if ((*(v64 + 8 * (v66 >> 6)) & (1 << v66)) == 0)
      {
        goto LABEL_74;
      }

      if (v68 != *(v62 + 36))
      {
        goto LABEL_75;
      }

      v120 = v67;
      v71 = *(v62 + 48);
      v72 = type metadata accessor for UUID();
      v73 = *(v72 - 8);
      v74 = v110;
      (*(v73 + 16))(v110, v71 + *(v73 + 72) * v66, v72);
      v75 = v62;
      v76 = *(*(v62 + 56) + 2 * v66);
      v77 = v111;
      (*(v73 + 32))(v111, v74, v72);
      *(v77 + *(v112 + 48)) = v76;
      v78 = UUID.uuidString.getter();
      v80 = v79;
      sub_100075768(v77, &qword_10050BC88, &qword_100417120);
      *&v126 = v63;
      v10 = v63[2];
      v81 = v63[3];
      v82 = v63;
      if (v10 >= v81 >> 1)
      {
        sub_10019FB30((v81 > 1), v10 + 1, 1);
        v82 = v126;
      }

      v82[2] = v10 + 1;
      v83 = &v82[3 * v10];
      v83[4] = v78;
      v83[5] = v80;
      *(v83 + 24) = v76;
      v69 = 1 << *(v75 + 32);
      if (v66 >= v69)
      {
        goto LABEL_76;
      }

      v62 = v75;
      v64 = v119;
      v84 = *(v119 + 8 * v70);
      if ((v84 & (1 << v66)) == 0)
      {
        goto LABEL_77;
      }

      v63 = v82;
      LODWORD(v68) = v118;
      if (v118 != *(v62 + 36))
      {
        goto LABEL_78;
      }

      v85 = v84 & (-2 << (v66 & 0x3F));
      if (v85)
      {
        v69 = __clz(__rbit64(v85)) | v66 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v86 = v70 << 6;
        v87 = v70 + 1;
        v88 = &v116[8 * v70];
        while (v87 < (v69 + 63) >> 6)
        {
          v90 = *v88++;
          v89 = v90;
          v86 += 64;
          ++v87;
          if (v90)
          {
            sub_1000937D4(v66, v118, 0);
            v69 = __clz(__rbit64(v89)) + v86;
            goto LABEL_44;
          }
        }

        sub_1000937D4(v66, v118, 0);
      }

LABEL_44:
      v67 = v120 + 1;
      v66 = v69;
      v10 = v117;
      if ((v120 + 1) == v117)
      {

        v56 = v114;
        goto LABEL_61;
      }
    }

    goto LABEL_73;
  }

LABEL_61:
  if (v63[2])
  {
    sub_100068FC4(&unk_10050AA60, &qword_1004151F8);
    v91 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v91 = _swiftEmptyDictionarySingleton;
  }

  *&v126 = v91;

  sub_10035787C(v92, 1, &v126);
  if (!v56)
  {

    v93 = v126;
    v127 = sub_100068FC4(&qword_10050BC98, &unk_100417150);
    *&v126 = v93;
    sub_100075D50(&v126, v125);
    v94 = v115;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v94;
    sub_100315178(v125, 0xD00000000000001BLL, 0x800000010046FB30, v95);
    v96 = v122;
    v97 = OBJC_IVAR____TtC10seserviced9AlishaRKE_peersAvailableToSubscribe;
    v98 = v108;
    swift_beginAccess();
    v99 = *(v98 + v97);

    v101 = sub_1003485C0(v100);

    v127 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    *&v126 = v101;
    sub_100075D50(&v126, v125);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v96;
    sub_100315178(v125, 0xD000000000000019, 0x800000010046FB70, v102);
    sub_1001950D4(v121);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v104 = sub_100015DA0("alisharke.state", isa);

    return v104;
  }

LABEL_82:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}