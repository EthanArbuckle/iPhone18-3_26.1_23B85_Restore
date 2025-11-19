void *sub_10009894C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    sub_10019F3C0(0, v4, 0);
    v36 = _swiftEmptyArrayStorage;
    v6 = v3 + 56;
    v7 = -1 << *(v3 + 32);
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v29 = v3 + 64;
    v30 = v4;
    v31 = v3 + 56;
    v32 = v3;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v33 = v9;
      v35 = *(v3 + 36);
      v12 = (*(v3 + 48) + 16 * v8);
      v13 = *v12;
      v14 = v12[1];
      sub_100069E2C(*v12, v14);
      v34 = v2;
      sub_100288788(v13, v14);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v15 = BidirectionalCollection<>.joined(separator:)();
      v17 = v16;

      result = sub_10006A178(v13, v14);
      v18 = v36;
      v20 = v36[2];
      v19 = v36[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10019F3C0((v19 > 1), v20 + 1, 1);
        v18 = v36;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = v15;
      v21[5] = v17;
      v3 = v32;
      v10 = 1 << *(v32 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v6 = v31;
      v22 = *(v31 + 8 * v11);
      if ((v22 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v36 = v18;
      if (v35 != *(v32 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v8 & 0x3F));
      if (v23)
      {
        v10 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v2 = v34;
      }

      else
      {
        v24 = v11 << 6;
        v25 = v11 + 1;
        v26 = (v29 + 8 * v11);
        v2 = v34;
        while (v25 < (v10 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1000937D4(v8, v35, 0);
            v10 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v8, v35, 0);
      }

LABEL_4:
      v9 = v33 + 1;
      v8 = v10;
      if (v33 + 1 == v30)
      {
        return v36;
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

uint64_t sub_100098C20(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v43 = _swiftEmptyArrayStorage;
  sub_10019F3C0(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v35)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v5 = *(v1 + 36);
  }

  v40 = result;
  v41 = v5;
  v42 = v35 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v32 = v1 + 56;
    v31 = v1 + 64;
    v33 = v2;
    v34 = v1;
    while (v7 < v2)
    {
      v9 = __OFADD__(v7, 1);
      v10 = v7 + 1;
      if (v9)
      {
        goto LABEL_37;
      }

      v36 = v10;
      v11 = v42;
      v37 = v41;
      v38 = v40;
      result = sub_10008EDB4(v40, v41, v42, v1);
      v12 = (result + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v13 = *(result + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      if (v13 >> 60 == 15)
      {
        goto LABEL_42;
      }

      v14 = *v12;
      sub_100069E2C(*v12, v13);
      v39 = sub_100288788(v14, v13);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v15 = BidirectionalCollection<>.joined(separator:)();
      v17 = v16;
      sub_10006A2D0(v14, v13);

      v43 = v3;
      v19 = v3[2];
      v18 = v3[3];
      if (v19 >= v18 >> 1)
      {
        sub_10019F3C0((v18 > 1), v19 + 1, 1);
        v3 = v43;
      }

      v3[2] = v19 + 1;
      v20 = &v3[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      if (v35)
      {
        v1 = v34;
        result = v38;
        if (!v11)
        {
          goto LABEL_43;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v33;
        sub_100068FC4(&qword_100502C08, &qword_100409CC8);
        v8 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v8(&v39, 0);
      }

      else
      {
        v1 = v34;
        result = v38;
        if (v11)
        {
          goto LABEL_44;
        }

        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v21 = 1 << *(v34 + 32);
        if (v38 >= v21)
        {
          goto LABEL_38;
        }

        v22 = v38 >> 6;
        v23 = *(v32 + 8 * (v38 >> 6));
        if (((v23 >> v38) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v34 + 36) != v37)
        {
          goto LABEL_40;
        }

        v24 = v23 & (-2 << (v38 & 0x3F));
        if (v24)
        {
          v21 = __clz(__rbit64(v24)) | v38 & 0x7FFFFFFFFFFFFFC0;
          v2 = v33;
        }

        else
        {
          v25 = v22 << 6;
          v26 = v22 + 1;
          v27 = (v31 + 8 * v22);
          v2 = v33;
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              result = sub_1000937D4(v38, v37, 0);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_33;
            }
          }

          result = sub_1000937D4(v38, v37, 0);
        }

LABEL_33:
        v30 = *(v34 + 36);
        v40 = v21;
        v41 = v30;
        v42 = 0;
      }

      v7 = v36;
      if (v36 == v2)
      {
        sub_1000937D4(v40, v41, v42);
        return v3;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_10009901C()
{
  v0 = type metadata accessor for AlishaPairing();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1000991C8();
  qword_10051B230 = result;
  return result;
}

void sub_10009905C(void *a1, uint64_t a2, const char *a3)
{
  v6 = v3;

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v14 = *(v6 + *a1);
    v10 = String.init<A>(describing:)();
    v12 = sub_1002FFA0C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v7, a3, v8, 0xCu);
    sub_1000752F4(v9);
  }

  else
  {
  }
}

uint64_t sub_1000991C8()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed) = 0;
  v1 = (v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_activeFirstApproachPeers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachPeers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion) = 256;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_unpairingPeerIdentifiers) = &_swiftEmptySetSingleton;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4[4] = sub_1000B2F98;
  v4[5] = v0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100193978;
  v4[3] = &unk_1004C6078;
  v2 = _Block_copy(v4);

  os_state_add_handler();
  _Block_release(v2);
  return v0;
}

_DWORD *sub_1000993A4()
{
  v1 = v0;
  v2 = 1701736302;
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  if (v3)
  {
    v4 = [v3 publicKeyIdentifier];
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *&v42 = sub_100288788(v5, v7);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v8 = BidirectionalCollection<>.joined(separator:)();
    v10 = v9;
    sub_10006A178(v5, v7);

    v43 = &type metadata for String;
    v11 = 0xE400000000000000;
    if (v10)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1701736302;
    }

    if (v10)
    {
      v11 = v10;
    }
  }

  else
  {
    v43 = &type metadata for String;
    v11 = 0xE400000000000000;
    v12 = 1701736302;
  }

  *&v42 = v12;
  *(&v42 + 1) = v11;
  sub_100075D50(&v42, v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v41, 0x746E696F70646E65, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v14 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed);
  v43 = &type metadata for Bool;
  LOBYTE(v42) = v14;
  sub_100075D50(&v42, v41);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v41, 0xD000000000000011, 0x80000001004620C0, v15);
  LOBYTE(v42) = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode);
  v16 = String.init<A>(describing:)();
  v43 = &type metadata for String;
  *&v42 = v16;
  *(&v42 + 1) = v17;
  sub_100075D50(&v42, v41);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v41, 1701080941, 0xE400000000000000, v18);
  if (!*(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {
    v43 = &type metadata for String;
    goto LABEL_13;
  }

  v19 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

  v20 = UUID.uuidString.getter();
  v22 = v21;

  v43 = &type metadata for String;
  if (!v22)
  {
LABEL_13:
    v22 = 0xE400000000000000;
    goto LABEL_14;
  }

  v2 = v20;
LABEL_14:
  *&v42 = v2;
  *(&v42 + 1) = v22;
  sub_100075D50(&v42, v41);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v41, 1919247728, 0xE400000000000000, v23);
  v24 = OBJC_IVAR____TtC10seserviced13AlishaPairing_activeFirstApproachPeers;
  swift_beginAccess();
  v25 = *(v1 + v24);

  v27 = sub_100098C20(v26);

  v28 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v43 = v28;
  *&v42 = v27;
  sub_100075D50(&v42, v41);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v41, 0xD000000000000015, 0x8000000100462260, v29);
  v30 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers;
  swift_beginAccess();
  v31 = *(v1 + v30);

  v33 = sub_10009894C(v32);

  v43 = v28;
  *&v42 = v33;
  sub_100075D50(&v42, v41);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v41, 0xD000000000000018, 0x8000000100462280, v34);
  LOBYTE(v42) = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state);
  v35 = String.init<A>(describing:)();
  v43 = &type metadata for String;
  *&v42 = v35;
  *(&v42 + 1) = v36;
  sub_100075D50(&v42, v41);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v41, 0x6574617473, 0xE500000000000000, v37);
  sub_1001950D4(&_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v39 = sub_100015DA0("alishapairing.state", isa);

  return v39;
}

void sub_100099870(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v91 = *(v4 - 8);
  v92 = v4;
  v5 = *(v91 + 64);
  __chkstk_darwin(v4);
  v89 = &v77[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = type metadata accessor for DispatchQoS();
  v88 = *(v90 - 8);
  v7 = *(v88 + 64);
  __chkstk_darwin(v90);
  v87 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UUID();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  __chkstk_darwin(v9);
  v94 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  v17 = enum case for DispatchPredicate.onQueue(_:);
  v19 = v12 + 13;
  v18 = v12[13];
  v18(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v100 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v101 = v12[1];
  v101(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_71:
    swift_once();
    goto LABEL_54;
  }

  if (!*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state))
  {
    return;
  }

  v97 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
  v98 = v18;
  v99 = v17;
  v86 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Clean up", v22, 2u);
  }

  v93 = v12 + 13;
  if (v3 == 6 || (v23 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer)) == 0)
  {
    v46 = 0;
    goto LABEL_32;
  }

  v24 = qword_100501B70;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_10051B5B0;

  v26 = sub_10024F2B4(v25, v23);

  v27 = sub_1000CA828(v26);

  if (v27)
  {
    sub_100246878();
  }

  v85 = v23;
  if (qword_100501BA0 != -1)
  {
    swift_once();
  }

  v83 = v3;
  v28 = v100;
  *v15 = v100;
  v98(v15, v99, v11);
  v81 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v101(v15, v11);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_75;
  }

  v29 = *(v95 + 16);
  v23 = v85;
  v78 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v30 = v94;
  v80 = v95 + 16;
  v79 = v29;
  v29(v94, v85 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v96);
  swift_beginAccess();
  sub_1000C4DD4(0, 0, 0, 1, v30);
  swift_endAccess();
  if (qword_100501968 != -1)
  {
LABEL_75:
    swift_once();
  }

  sub_1000E885C(v23);
  v31 = sub_1002B3B94(&off_1004C34E8);
  v84 = v32;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v31;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_1002FFA0C(0x5F4C4152454E4547, 0xED0000524F525245, aBlock);
    _os_log_impl(&_mh_execute_header, v33, v34, "Sending %s", v36, 0xCu);
    sub_1000752F4(v37);

    v31 = v35;
  }

  v38 = v85;
  v39 = v84;
  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v82 = v31;
  v40 = sub_100239160(3, 17, v31, v39);
  v42 = v41;
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v43 = v42;
  v44 = v38;
  v45 = v42;
  v46 = 0;
  sub_1000E71A0(v40, v43, v44);
  sub_10006A178(v82, v39);
  sub_10006A178(v40, v45);
  v47 = v85;
  if (*(v2 + v97) - 8 < 3)
  {
    v48 = v94;
    v49 = v96;
    v79(v94, v85 + v78, v96);
    v50 = v95;
    v51 = *(v95 + 80);
    v86 = 0;
    v52 = (v51 + 24) & ~v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v2;
    v54 = v48;
    v47 = v85;
    (*(v50 + 32))(v53 + v52, v54, v49);
    aBlock[4] = sub_1000B2C94;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004C6050;
    v96 = _Block_copy(aBlock);

    v55 = v87;
    static DispatchQoS.unspecified.getter();
    v102 = &_swiftEmptyArrayStorage;
    v95 = sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
    v56 = v89;
    v57 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v58 = v96;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v58);
    (*(v91 + 8))(v56, v57);
    v59 = v55;
    v46 = v86;
    (*(v88 + 8))(v59, v90);
  }

  LOBYTE(v3) = v83;
  if (qword_100501C40 != -1)
  {
    swift_once();
  }

  sub_1002A7730(v60);

  if (qword_100501DB0 != -1)
  {
    swift_once();
  }

  sub_1003488C8(v47);

LABEL_32:
  v18 = OBJC_IVAR____TtC10seserviced13AlishaPairing_mode;
  v19 = &unk_100504000;
  v10 = 0x100502000;
  if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode))
  {
    if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 1)
    {
      if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
      {
        swift_beginAccess();

        sub_10010DAA4();
        swift_endAccess();
      }
    }

    else
    {
      v61 = v3;
      if (v3 == 6)
      {
        if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed) == 1)
        {
          if (qword_1005018E0 != -1)
          {
            swift_once();
          }

          sub_1000684C4();
        }
      }

      else
      {
        if (qword_1005018E0 != -1)
        {
          swift_once();
        }

        sub_10006877C(v3);
      }

      if (qword_1005018E0 != -1)
      {
        swift_once();
      }

      sub_100068B94();
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000E8C60(893797958, 0xE400000000000000);
      v19 = &unk_100504000;
      if (v46)
      {
      }

      if (qword_1005019E8 != -1)
      {
        swift_once();
      }

      v3 = *(off_100504A68 + 3);
      os_unfair_lock_lock((v3 + 32));
      sub_1000B2BB4((v3 + 16));
      os_unfair_lock_unlock((v3 + 32));
      LOBYTE(v3) = v61;
      v10 = &unk_100502000;
    }
  }

  if (qword_100501B60 != -1)
  {
    goto LABEL_71;
  }

LABEL_54:
  v62 = qword_10051B5A0;
  v63 = v100;
  *v15 = v100;
  v98(v15, v99, v11);
  v64 = v63;
  LOBYTE(v63) = _dispatchPreconditionTest(_:)();
  v101(v15, v11);
  if (v63)
  {
    *(v62 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress) = 0;
    if (qword_1005019E8 == -1)
    {
      goto LABEL_56;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_56:
  v65 = v19[333];
  v66 = sub_1000CAA04();
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = __CocoaSet.count.getter();

    if (v67)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v68 = *(v66 + 16);

    if (v68)
    {
      goto LABEL_67;
    }
  }

  v69 = sub_1000CAA04();
  if ((v69 & 0xC000000000000001) != 0)
  {
    v70 = __CocoaSet.count.getter();

    if (!v70)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v71 = *(v69 + 16);

    if (!v71)
    {
LABEL_64:
      if (qword_100501B70 != -1)
      {
        swift_once();
      }

      sub_100240A9C(0);
    }
  }

LABEL_67:
  *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion) = 256;
  v72 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint) = 0;

  *(v2 + *(v10 + 3424)) = 0;
  *(v18 + v2) = 0;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_mode, &type metadata for AlishaPairing.Mode, "New pairing mode %s");
  v73 = (v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  v74 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  v75 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8);
  *v73 = 0;
  v73[1] = 0;
  sub_1000B2A4C(v74);
  v76 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);
  *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) = 0;

  *(v2 + v97) = 0;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
  if (v3 != 3)
  {
    sub_10009CCF8();
  }
}

uint64_t sub_10009A884(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC10seserviced13AlishaPairing_mode;
    if (*(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) != 2 || *(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) && (v17 = *(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer), , v18 = static UUID.== infix(_:_:)(), , (v18 & 1) != 0))
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v38 = v3;
        v36 = v22;
        v40 = v22;
        *v21 = 136315138;
        type metadata accessor for UUID();
        v37 = a2;
        sub_1000B2B6C(&unk_100507480, &type metadata accessor for UUID);
        v23 = Dictionary.description.getter();
        v25 = sub_1002FFA0C(v23, v24, &v40);
        a2 = v37;

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Read characteristics %s", v21, 0xCu);
        sub_1000752F4(v36);
        v4 = v38;
      }

      if (*(v5 + v16) != 2 || (v26 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state, *(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 1))
      {
        if (qword_100501B98 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v40 = v31;
        *v30 = 136315138;
        v39 = *(v5 + v26);
        v32 = String.init<A>(describing:)();
        v34 = sub_1002FFA0C(v32, v33, &v40);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "Wrong state %s", v30, 0xCu);
        sub_1000752F4(v31);
      }

      sub_100099870(2);
    }

    sub_100069DD8();
    swift_allocError();
    *v35 = 2;
    return swift_willThrow();
  }

  __break(1u);
LABEL_20:
  swift_once();
LABEL_12:
  result = sub_100250494(a1, a2);
  if (!v4)
  {
    *(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion) = WORD1(result);
  }

  return result;
}

void sub_10009AD40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v67 = type metadata accessor for UUID();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v67);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v19(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (!a1)
  {
    v18 = a2;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v69[0] = v43;
      *v42 = 136315138;
      v44 = UUID.uuidString.getter();
      v46 = sub_1002FFA0C(v44, v45, v69);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Channel established %s", v42, 0xCu);
      sub_1000752F4(v43);
    }

    if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
    {
      v47 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

      if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
      {
        v48 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
        if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) != 1)
        {

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v69[0] = v62;
            *v61 = 136315138;
            v68 = *(v3 + v48);
            v63 = String.init<A>(describing:)();
            v65 = sub_1002FFA0C(v63, v64, v69);

            *(v61 + 4) = v65;
            _os_log_impl(&_mh_execute_header, v59, v60, "Wrong state %s", v61, 0xCu);
            sub_1000752F4(v62);
          }

          sub_100099870(2);
          goto LABEL_34;
        }

        *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 2;
        sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
      }
    }

    if (qword_100501B70 == -1)
    {
LABEL_26:
      v49 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion);
      v69[3] = v6;
      v69[4] = &off_1004C5EF0;
      v69[0] = v3;

      sub_1002413A0(v18, v49, v69);
      sub_1000752F4(v69);
      v50 = objc_opt_self();
      UUID.uuidString.getter();
      v51 = String._bridgeToObjectiveC()();

      sub_10004CA44(v50, v51);

      return;
    }

LABEL_36:
    swift_once();
    goto LABEL_26;
  }

  v69[0] = a1;
  swift_errorRetain();
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast() && v68 == 6)
  {
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Trying to unpair since we're paired but the peripheral unpaired from us", v23, 2u);
    }

    if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode))
    {
      if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 1)
      {
        if (qword_100501968 != -1)
        {
          swift_once();
        }

        v24 = *(v7 + 16);
        v66[1] = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
        v25 = v67;
        v24(v10, v20 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v67);
        v26 = swift_allocObject();
        *(v26 + 16) = v20;
        *(v26 + 24) = v3;
        v27 = type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        v30 = swift_allocObject();
        (*(v7 + 32))(v30 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v10, v25);
        v31 = (v30 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
        *v31 = 0;
        v31[1] = 0;
        v32 = (v30 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
        *v32 = sub_1000B386C;
        v32[1] = v26;

        sub_1000E82EC();
      }

      else
      {
        if (qword_100501968 != -1)
        {
          swift_once();
        }

        v52 = v67;
        (*(v7 + 16))(v10, v20 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v67);
        v53 = type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
        v54 = *(v53 + 48);
        v55 = *(v53 + 52);
        v56 = swift_allocObject();
        (*(v7 + 32))(v56 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v10, v52);
        v57 = (v56 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
        *v57 = 0;
        v57[1] = 0;
        v58 = (v56 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
        *v58 = sub_1000B3874;
        v58[1] = v3;

        sub_1000E82EC();
      }

LABEL_34:

      return;
    }
  }

  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v69[0] = v36;
    *v35 = 136315138;
    swift_getErrorValue();
    v37 = Error.localizedDescription.getter();
    v39 = sub_1002FFA0C(v37, v38, v69);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Failed to open channel %s", v35, 0xCu);
    sub_1000752F4(v36);
  }

  sub_100099870(2);
}

uint64_t sub_10009B9B8(unint64_t a1, unint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_13;
  }

  if (*(v4 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {
    v15 = *(v4 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

    if (static UUID.== infix(_:_:)())
    {
      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      v16 = qword_10051B5A0;

      sub_100239874(a1, a2, 1, a3, v16, v4);
    }
  }

  v8 = sub_1002B3B94(&off_1004C38F8);
  a1 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1002FFA0C(0x425F454349564544, 0xEB00000000595355, v26);
    _os_log_impl(&_mh_execute_header, v19, v20, "Sending %s", v21, 0xCu);
    sub_1000752F4(v22);
  }

  if (qword_100501B60 != -1)
  {
    goto LABEL_17;
  }

LABEL_13:
  v23 = sub_100239160(3, 17, v8, a1);
  v25 = v24;
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  sub_1000E71A0(v23, v25, a3);
  sub_10006A178(v8, a1);
  return sub_10006A178(v23, v25);
}

void sub_10009BE50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  v15 = v10[13];
  v40 = enum case for DispatchPredicate.onQueue(_:);
  v39 = v15;
  v15(v13);
  v37 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v38 = v10[1];
  v38(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v35 = v10 + 13;
  v36 = v9;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v33 = v5;
  v34 = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v8;
    v21 = v20;
    v41[0] = v20;
    *v19 = 136315138;
    v22 = UUID.uuidString.getter();
    v24 = sub_1002FFA0C(v22, v23, v41);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Disconnected %s", v19, 0xCu);
    sub_1000752F4(v21);
    v8 = v32;
  }

  swift_beginAccess();
  sub_10010DAA4();
  swift_endAccess();

  v9 = v36;
  if (!*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {
LABEL_10:
    if (qword_100501B70 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v25 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_100099870(2);

  while (1)
  {
    if (qword_100501BA0 != -1)
    {
LABEL_17:
      swift_once();
    }

    *v13 = v37;
    v39(v13, v40, v9);
    v29 = _dispatchPreconditionTest(_:)();
    v38(v13, v9);
    if (v29)
    {
      break;
    }

    __break(1u);
LABEL_19:
    swift_once();
LABEL_11:
    v26 = qword_10051B5B0;

    v27 = sub_10024F2B4(v26, a1);

    v28 = sub_1000CA828(v27);

    if (v28)
    {
      sub_100246878();
    }
  }

  (*(v33 + 16))(v8, a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v34);
  swift_beginAccess();
  sub_1000C4DD4(0, 0, 0, 1, v8);
  swift_endAccess();
  v30 = objc_opt_self();
  UUID.uuidString.getter();
  v31 = String._bridgeToObjectiveC()();

  sub_1003ADC30(v30, v31);
}

void sub_10009C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v40 = v8[13];
  (v40)(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v38 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v15 = v8[1];
  v14 = v8 + 1;
  v39 = v15;
  v15(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v37 = v13;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v36 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v35 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = v14;
    v22 = v21;
    v43[0] = v21;
    *v20 = 134218754;
    *(v20 + 4) = v41;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a2;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a3;
    *(v20 + 32) = 2080;
    v23 = UUID.uuidString.getter();
    v25 = a3;
    v26 = a4;
    v27 = sub_1002FFA0C(v23, v24, v43);

    *(v20 + 34) = v27;
    a4 = v26;
    a3 = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Time sync event type %ld ticks %llu counter %llu peer %s", v20, 0x2Au);
    sub_1000752F4(v22);

    v7 = v35;
  }

  if (qword_100501BA0 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v28 = qword_10051B600;
  *v11 = v38;
  v40(v11);
  v29 = _dispatchPreconditionTest(_:)();
  v39(v11, v7);
  if (v29)
  {
    v30 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v31 = OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents;
    swift_beginAccess();
    v32 = *(v28 + v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v28 + v31);
    *(v28 + v31) = 0x8000000000000000;
    sub_100314954(v41, v36, a3, a4 + v30, isUniquelyReferenced_nonNull_native);
    *(v28 + v31) = v42;
    swift_endAccess();
    sub_1002553AC(a4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10009C71C(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v29 = v9;
  v9 = a1;
  if (qword_100501968 != -1)
  {
LABEL_7:
    swift_once();
  }

  v19 = *(v5 + 16);
  v19(v11, v9, v4);
  v20 = type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v11, v4);
  v24 = (v23 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
  *v24 = 0xD000000000000011;
  v24[1] = 0x80000001004607F0;
  v25 = (v23 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
  *v25 = sub_1000B2CF8;
  v25[1] = v2;

  sub_1000E82EC();

  v26 = v29;
  v19(v29, v9, v4);
  swift_beginAccess();
  sub_1000D6D84(v11, v26);
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_10009CA88(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v19 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = qword_10051B7F0;
    *v11 = qword_10051B7F0;
    (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
    v13 = v12;
    LOBYTE(v12) = _dispatchPreconditionTest(_:)();
    v14 = *(v8 + 8);
    v8 += 8;
    result = v14(v11, v7);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v16 = OBJC_IVAR____TtC10seserviced13AlishaPairing_unpairingPeerIdentifiers;
    swift_beginAccess();
    sub_10010D6E8(a1, v6);
    swift_endAccess();
    result = sub_100075768(v6, &unk_10050BE80, &unk_10040B360);
    if (*(*(a2 + v16) + 16))
    {
      return result;
    }

    v7 = OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing;
    swift_beginAccess();
    a2 = *(a2 + v7);
    a1 = *(a2 + 16);

    if (!a1)
    {
    }

    v6 = 0;
    v11 = (a2 + 40);
    while (v6 < *(a2 + 16))
    {
      ++v6;
      v17 = *(v11 - 1);
      v7 = *v11;

      v17(v18);

      v11 += 2;
      if (a1 == v6)
      {
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_10009CCF8()
{
  v1 = type metadata accessor for UUID();
  v79 = *(v1 - 8);
  v80 = v1;
  v2 = *(v79 + 64);
  __chkstk_darwin();
  v78 = &v64[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  i = type metadata accessor for DispatchPredicate();
  v5 = *(i - 8);
  v6 = v5[8];
  __chkstk_darwin();
  v8 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v9 = qword_10051B7F0;
    *v8 = qword_10051B7F0;
    v10 = enum case for DispatchPredicate.onQueue(_:);
    v11 = v5 + 13;
    v12 = v5[13];
    v12(v8, enum case for DispatchPredicate.onQueue(_:), i);
    v13 = v9;
    LOBYTE(v9) = _dispatchPreconditionTest(_:)();
    v15 = v5[1];
    ++v5;
    v14 = v15;
    result = (v15)(v8, i);
    if ((v9 & 1) == 0)
    {
      break;
    }

    if (*(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state))
    {
      return result;
    }

    v68 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
    v74 = v13;
    v75 = v14;
    v69 = v12;
    v70 = v10;
    v71 = v11;
    v72 = v5;
    v73 = i;
    v17 = OBJC_IVAR____TtC10seserviced13AlishaPairing_activeFirstApproachPeers;
    swift_beginAccess();
    v76 = v0;
    v67 = v17;
    v18 = *(v0 + v17);
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (v18 < 0)
      {
        v19 = *(v0 + v17);
      }

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer();
      sub_1000B2B6C(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v20 = v82[6];
      v21 = v82[7];
      v22 = v82[8];
      v23 = v82[9];
      v24 = v82[10];
    }

    else
    {
      v25 = -1 << *(v18 + 32);
      v21 = v18 + 56;
      v22 = ~v25;
      v26 = -v25;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v24 = v27 & *(v18 + 56);
      swift_bridgeObjectRetain_n();
      v23 = 0;
      v20 = v18;
    }

    v77 = v22;
    for (i = (v22 + 64) >> 6; v20 < 0; v24 = v30)
    {
      v31 = __CocoaSet.Iterator.next()();
      if (!v31)
      {
        goto LABEL_24;
      }

      v81 = v31;
      type metadata accessor for Peer();
      swift_dynamicCast();
      v5 = v82[0];
      v0 = v23;
      v30 = v24;
      if (!v82[0])
      {
        goto LABEL_24;
      }

LABEL_21:
      if (*(v5 + OBJC_IVAR____TtC10seserviced4Peer_isConnected))
      {
        sub_100093854();

        v11 = v76;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v66 = v34;
          v77 = swift_slowAlloc();
          v82[0] = v77;
          *v34 = 136315138;
          v35 = v79;
          v36 = *(v79 + 16);
          v65 = v33;
          v37 = v78;
          v38 = v80;
          v36(v78, v5 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v80);
          sub_1000B2B6C(&qword_100504C70, &type metadata accessor for UUID);
          v39 = v11;
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v42 = v41;
          (*(v35 + 8))(v37, v38);
          v43 = v40;
          v11 = v39;
          v44 = sub_1002FFA0C(v43, v42, v82);

          v45 = v66;
          *(v66 + 1) = v44;
          _os_log_impl(&_mh_execute_header, v32, v65, "Processing First Approach for %s", v45, 0xCu);
          sub_1000752F4(v77);
        }

        v14 = v74;
        v10 = v75;
        v46 = qword_1005019E8;

        if (v46 != -1)
        {
          goto LABEL_45;
        }

        goto LABEL_29;
      }

      v23 = v0;
    }

    v28 = v23;
    v29 = v24;
    v0 = v23;
    if (v24)
    {
LABEL_17:
      v30 = (v29 - 1) & v29;
      v5 = *(*(v20 + 48) + ((v0 << 9) | (8 * __clz(__rbit64(v29)))));

      if (v5)
      {
        goto LABEL_21;
      }

LABEL_24:
      sub_100093854();
    }

    while (1)
    {
      v0 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v0 >= i)
      {
        goto LABEL_24;
      }

      v29 = *(v21 + 8 * v0);
      ++v28;
      if (v29)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_43:
    swift_once();
  }

  __break(1u);
LABEL_45:
  swift_once();
LABEL_29:
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1000B2A5C;
  *(v47 + 24) = v5;

  v48 = sub_1000CAA04();

  v49 = sub_1000CA810(v48);

  if (!v49)
  {
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to retrieve endpoint", v60, 2u);
    }

    swift_beginAccess();
    sub_10010DAA4();
    swift_endAccess();

    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    v61 = qword_10051B5B0;

    v62 = sub_10024F2B4(v61, v5);

    v63 = sub_1000CA828(v62);

    if (v63)
    {
      sub_100246878();
    }
  }

  *(v11 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) = 1;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_mode, &type metadata for AlishaPairing.Mode, "New pairing mode %s");
  *(v11 + v68) = 5;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
  v50 = *(v11 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);
  *(v11 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) = v5;

  v51 = *(v11 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  *(v11 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint) = v49;
  v52 = v49;

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v53 = qword_10051B5A0;
  *v8 = v14;
  v54 = v73;
  v69(v8, v70, v73);
  v55 = v14;
  v56 = _dispatchPreconditionTest(_:)();
  v10(v8, v54);
  if ((v56 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  *(v53 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress) = 1;
  if (qword_100501968 != -1)
  {
LABEL_47:
    swift_once();
  }

  type metadata accessor for DSKBLEPairing.BLEPairingRequest();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1004098E0;
  *(v57 + 32) = v5;
  *(v57 + 40) = &off_1004C34A8;
  *(v57 + 48) = sub_1000B3F4C;
  *(v57 + 56) = v11;
  *(v57 + 64) = sub_1000B3FB8;
  *(v57 + 72) = v11;
  swift_retain_n();

  sub_1000E9034(v57);
}

void sub_10009D764()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (qword_1005018E0 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_100068B94();
  *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed) = 0;
  v9 = (v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  v10 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
  v11 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8);
  *v9 = 0;
  v9[1] = 0;
  sub_1000B2A4C(v10);
  v12 = OBJC_IVAR____TtC10seserviced13AlishaPairing_activeFirstApproachPeers;
  swift_beginAccess();
  v13 = *(v1 + v12);
  *(v1 + v12) = &_swiftEmptySetSingleton;

  v14 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers;
  swift_beginAccess();
  v15 = *(v1 + v14);
  *(v1 + v14) = &_swiftEmptySetSingleton;

  v16 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachPeers;
  swift_beginAccess();
  v17 = *(v1 + v16);
  *(v1 + v16) = &_swiftEmptySetSingleton;

  v18 = OBJC_IVAR____TtC10seserviced13AlishaPairing_unpairingPeerIdentifiers;
  swift_beginAccess();
  v19 = *(v1 + v18);
  *(v1 + v18) = &_swiftEmptySetSingleton;

  v20 = OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing;
  swift_beginAccess();
  v21 = *(v1 + v20);
  *(v1 + v20) = _swiftEmptyArrayStorage;

  v22 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint) = 0;

  *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) = 0;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_mode, &type metadata for AlishaPairing.Mode, "New pairing mode %s");
  v23 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);
  *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) = 0;

  *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 0;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
}

uint64_t sub_10009DA54(void *a1, uint64_t a2)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v4 = [a1 publicKeyIdentifier];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v9 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v8 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v7 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_10006A2BC(v9, v8);
      sub_10006A2D0(v5, v7);
      return 1;
    }

    goto LABEL_7;
  }

  if (v8 >> 60 == 15)
  {
LABEL_7:
    sub_10006A2BC(v9, v8);
    sub_10006A2D0(v5, v7);
    sub_10006A2D0(v9, v8);
    return 0;
  }

  sub_10006A2BC(v9, v8);
  sub_10006A2BC(v9, v8);
  sub_100069E2C(v5, v7);
  v11 = sub_10008FB4C(v5, v7, v9, v8);
  sub_10006A2D0(v9, v8);
  sub_10006A2D0(v9, v8);
  sub_10006A178(v5, v7);
  sub_10006A2D0(v5, v7);
  return v11 & 1;
}

void sub_10009DBC4(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v270 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v17 = qword_10051B7F0;
    *v16 = qword_10051B7F0;
    (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
    v18 = v17;
    v19 = _dispatchPreconditionTest(_:)();
    v20 = *(v13 + 8);
    v13 += 8;
    v20(v16, v12);
    if ((v19 & 1) == 0)
    {
      __break(1u);
      goto LABEL_79;
    }

    v296 = a3;
    a3 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;

    v22 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    v23 = os_log_type_enabled(v22, v19);
    v297 = a4;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v298 = v6;
      v299 = a1;
      v26 = a3;
      v27 = a2;
      v28 = v25;
      v308 = v25;
      *v24 = 136315138;
      v29 = UUID.uuidString.getter();
      v31 = sub_1002FFA0C(v29, v30, &v308);

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v19, "Pairing started %s", v24, 0xCu);
      sub_1000752F4(v28);
      a2 = v27;
      a3 = v26;
      v6 = v298;
      a1 = v299;
    }

    v12 = *(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);
    if (!v12)
    {
      goto LABEL_13;
    }

    v32 = *(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      break;
    }

    a4 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
    if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) != 5)
    {

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v308 = v43;
        *v42 = 136315138;
        LOBYTE(v306) = *(v6 + a4);
        v44 = String.init<A>(describing:)();
        v46 = sub_1002FFA0C(v44, v45, &v308);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Wrong state %s", v42, 0xCu);
        sub_1000752F4(v43);
      }

      v47 = 2;
      goto LABEL_92;
    }

    v13 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_29;
      }

      v49 = *(a1 + 16);
      v48 = *(a1 + 24);
      v50 = __OFSUB__(v48, v49);
      v51 = v48 - v49;
      if (v50)
      {
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (v51 != 6)
      {
        goto LABEL_29;
      }
    }

    else if (v13)
    {
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_107;
      }

      if (HIDWORD(a1) - a1 != 6)
      {
LABEL_29:
        sub_100069E2C(a1, a2);
        v58 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v58, v19))
        {
          sub_10006A178(a1, a2);
          goto LABEL_91;
        }

        v59 = swift_slowAlloc();
        *v59 = 134218240;
        if (v13 > 1)
        {
          if (v13 != 2)
          {
            v60 = 0;
            goto LABEL_41;
          }

          v62 = *(a1 + 16);
          v61 = *(a1 + 24);
          v50 = __OFSUB__(v61, v62);
          v60 = v61 - v62;
          if (!v50)
          {
            goto LABEL_41;
          }

          __break(1u);
        }

        else if (!v13)
        {
          v60 = BYTE6(a2);
LABEL_41:
          *(v59 + 4) = v60;
          v63 = v59;
          sub_10006A178(a1, a2);
          *(v63 + 12) = 2048;
          *(v63 + 14) = 6;
          v64 = "Invalid BTAddrA %ld != %ld";
          v65 = v19;
          v66 = v58;
          v67 = v63;
          v68 = 22;
LABEL_90:
          _os_log_impl(&_mh_execute_header, v66, v65, v64, v67, v68);

          goto LABEL_91;
        }

        LODWORD(v60) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_150;
        }

        v60 = v60;
        goto LABEL_41;
      }
    }

    else if (BYTE6(a2) != 6)
    {
      goto LABEL_29;
    }

    v52 = *(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
    if (!v52)
    {
      goto LABEL_88;
    }

    v53 = v52;
    v54 = [v53 bleDCKIdentifier];
    if (!v54)
    {
      goto LABEL_58;
    }

    v299 = a1;
    v294 = a2;
    v295 = v53;
    v55 = v54;
    a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v56;

    a2 = v19 >> 62;
    if ((v19 >> 62) <= 1)
    {
      if (!a2)
      {
        v57 = BYTE6(v19);
        v53 = v295;
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (a2 != 2)
    {

      goto LABEL_55;
    }

    v70 = *(a1 + 16);
    v69 = *(a1 + 24);
    v50 = __OFSUB__(v69, v70);
    v57 = v69 - v70;
    v53 = v295;
    if (v50)
    {
      __break(1u);
LABEL_46:
      LODWORD(v57) = HIDWORD(a1) - a1;
      v53 = v295;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        goto LABEL_158;
      }

      v57 = v57;
    }

LABEL_48:
    if (v57 != 8)
    {

LABEL_55:
      v76 = a1;
LABEL_87:
      sub_10006A178(v76, v19);
      goto LABEL_88;
    }

    v71 = [v53 bleIntroKey];
    if (!v71)
    {
      v77 = a1;
      goto LABEL_57;
    }

    v291 = a1;
    v72 = v71;
    v293 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    v292 = v74;
    a1 = v74 >> 62;
    if (a1 <= 1)
    {
      if (!a1)
      {
        v75 = BYTE6(v292);
        v53 = v295;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    if (a1 != 2)
    {

      goto LABEL_86;
    }

    v79 = *(v293 + 16);
    v78 = *(v293 + 24);
    v50 = __OFSUB__(v78, v79);
    v75 = v78 - v79;
    v53 = v295;
    if (v50)
    {
      __break(1u);
LABEL_63:
      LODWORD(v75) = HIDWORD(v293) - v293;
      v53 = v295;
      if (__OFSUB__(HIDWORD(v293), v293))
      {
        goto LABEL_197;
      }

      v75 = v75;
    }

LABEL_65:
    if (v75 != 16)
    {

LABEL_86:
      sub_10006A178(v293, v292);
      v76 = v291;
      goto LABEL_87;
    }

    v80 = [v53 bleOOBKey];
    if (!v80)
    {
      sub_10006A178(v293, v292);
      v77 = v291;
LABEL_57:
      sub_10006A178(v77, v19);
LABEL_58:

LABEL_88:
      v58 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        v64 = "Wrong parameters for pairing";
        v65 = v88;
        v66 = v58;
        v67 = v89;
        v68 = 2;
        goto LABEL_90;
      }

LABEL_91:

      v47 = 5;
LABEL_92:
      sub_100099870(v47);

      return;
    }

    v288 = a1;
    v81 = v80;
    v289 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    v290 = v83;
    v21 = v83 >> 62;
    if ((v83 >> 62) <= 1)
    {
      if (!v21)
      {
        v84 = BYTE6(v290);
        v16 = v295;
        a1 = v289;
LABEL_81:
        if (v84 == 16)
        {
          v286 = v21;
          v287 = v19;
          v19 = 0;
          v284 = sub_1001383EC(8);
          v285 = v90;
          v91 = sub_1001383EC(8);
          v280 = a5;
          v298 = v6;
          v281 = a3;
          v282 = v91;
          v283 = v92;
          if (v288 == 2)
          {
            v95 = *(v293 + 16);
            v94 = *(v293 + 24);
            v50 = __OFSUB__(v94, v95);
            v93 = v94 - v95;
            if (!v50)
            {
LABEL_101:
              if (v93 != 16)
              {
LABEL_138:
                v128 = Logger.logObject.getter();
                v129 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v128, v129))
                {
                  v130 = swift_slowAlloc();
                  *v130 = 0;
                  _os_log_impl(&_mh_execute_header, v128, v129, "Failed to encrypt DK_Identifier", v130, 2u);
                }

                sub_100099870(1);
                goto LABEL_141;
              }

              if (a2 != 2)
              {
                if (a2 == 1)
                {
                  if (__OFSUB__(HIDWORD(v291), v291))
                  {
LABEL_261:
                    __break(1u);
                    goto LABEL_262;
                  }

                  v96 = HIDWORD(v291) - v291;
LABEL_112:
                  v308 = sub_1000B07FC(v96);
                  v309 = v99;
                  v274 = sub_10008FCB4(4uLL);
                  v306 = v274;
                  v307 = v100 & 0xFFFFFFFFFFFFFFLL;
                  v275 = v100 & 0xFFFFFFFFFFFFFFLL;
                  if (a2 == 2)
                  {
                    v115 = v291;
                    a2 = *(v291 + 16);
                    a1 = *(v291 + 24);
                    sub_100069E2C(v293, v292);
                    sub_100069E2C(v284, v285);
                    sub_100069E2C(v115, v287);
                    v116 = __DataStorage._bytes.getter();
                    if (v116)
                    {
                      v117 = __DataStorage._offset.getter();
                      if (__OFSUB__(a2, v117))
                      {
LABEL_264:
                        __break(1u);
                        goto LABEL_265;
                      }

                      v116 += a2 - v117;
                    }

                    v50 = __OFSUB__(a1, a2);
                    a2 = a1 - a2;
                    if (v50)
                    {
LABEL_263:
                      __break(1u);
                      goto LABEL_264;
                    }

                    v103 = v287;
                    v118 = __DataStorage._length.getter();
                    if (v118 >= a2)
                    {
                      v119 = a2;
                    }

                    else
                    {
                      v119 = v118;
                    }

                    v120 = v116;
                    v121 = v119 + v116;
                    if (v116)
                    {
                      v122 = v121;
                    }

                    else
                    {
                      v122 = 0;
                    }

                    v123 = v291;
                    v125 = v292;
                    v124 = v293;
                    v126 = v284;
                    v127 = v285;
                    sub_1000AA9A4(v120, v122, v293, v292, v284, v285, &v308, &v306, &v304, 0, v291, v103, 4);
                    v276 = v19;
                    sub_10006A178(v124, v125);
                    sub_10006A178(v126, v127);
                    v114 = v123;
                  }

                  else
                  {
                    if (a2 != 1)
                    {
                      v131 = v291;
                      v304 = v291;
                      v132 = v287;
                      LODWORD(v305) = v287;
                      WORD2(v305) = WORD2(v287);
                      v288 = &v304 + BYTE6(v287);
                      v133 = v292;
                      v134 = v293;
                      sub_100069E2C(v293, v292);
                      v135 = v284;
                      v136 = v285;
                      sub_100069E2C(v284, v285);
                      sub_1000AA9A4(&v304, v288, v134, v133, v135, v136, &v308, &v306, &v302, 0, v131, v132, 4);
                      v276 = v19;
                      sub_10006A178(v134, v133);
                      sub_10006A178(v135, v136);
                      sub_10006A178(v131, v132);
                      if (v302)
                      {
                        goto LABEL_137;
                      }

LABEL_143:
                      v19 = v308;
                      v137 = v309;
                      v138 = v306;
                      a1 = v307;
                      sub_100069E2C(v308, v309);
                      sub_100069E2C(v138, a1);
                      v278 = v138;
                      v288 = a1;
                      sub_10006A178(v138, a1);
                      v279 = v19;
                      sub_10006A178(v19, v137);
                      v277 = v137;
                      a2 = v137 >> 62;
                      if ((v137 >> 62) <= 1)
                      {
                        if (!a2)
                        {
                          v139 = BYTE6(v277);
                          goto LABEL_153;
                        }

                        goto LABEL_151;
                      }

                      if (a2 != 2)
                      {
                        goto LABEL_168;
                      }

                      v141 = *(v279 + 16);
                      v140 = *(v279 + 24);
                      v50 = __OFSUB__(v140, v141);
                      v139 = v140 - v141;
                      if (!v50)
                      {
LABEL_153:
                        if (v139 != 8)
                        {
                          goto LABEL_168;
                        }

                        v57 = v288 >> 62;
                        if ((v288 >> 62) <= 1)
                        {
                          if (!v57)
                          {
                            v142 = BYTE6(v288);
                            goto LABEL_164;
                          }

                          goto LABEL_162;
                        }

LABEL_158:
                        if (v57 != 2)
                        {
                          goto LABEL_168;
                        }

                        v144 = *(v278 + 16);
                        v143 = *(v278 + 24);
                        v50 = __OFSUB__(v143, v144);
                        v142 = v143 - v144;
                        if (!v50)
                        {
LABEL_164:
                          if (v142 == 4)
                          {
                            v145 = v297 >> 62;
                            if ((v297 >> 62) > 1)
                            {
                              if (v145 != 2)
                              {
                                goto LABEL_210;
                              }

                              v158 = *(v296 + 16);
                              v157 = *(v296 + 24);
                              v50 = __OFSUB__(v157, v158);
                              v146 = v157 - v158;
                              if (!v50)
                              {
LABEL_200:
                                if (v146 >= 34)
                                {
                                  v160 = v296;
                                  v159 = v297;
                                  sub_100069E2C(v296, v297);
                                  v161 = v160;
                                  v162 = v276;
                                  v163 = sub_1000939AC(v161, v159, 0, 0, 0);
                                  v276 = v162;
                                  if (!v162)
                                  {
                                    if (v163 != 114)
                                    {
                                      goto LABEL_210;
                                    }

                                    v165 = v296;
                                    v164 = v297;
                                    sub_100069E2C(v296, v297);
                                    v166 = v165;
                                    v167 = v276;
                                    v168 = sub_1000939AC(v166, v164, 17, 0, 0);
                                    v276 = v167;
                                    if (!v167)
                                    {
                                      if (v168 != 99)
                                      {
                                        goto LABEL_210;
                                      }

                                      v19 = v296;
                                      v272 = Data.subdata(in:)();
                                      v273 = v169;
                                      v296 = Data.subdata(in:)();
                                      v297 = v170;
                                      if (v13 != 2)
                                      {
                                        if (v13 == 1)
                                        {
                                          LODWORD(v171) = HIDWORD(v299) - v299;
                                          if (__OFSUB__(HIDWORD(v299), v299))
                                          {
LABEL_348:
                                            __break(1u);
LABEL_349:
                                            __break(1u);
                                            goto LABEL_350;
                                          }

                                          v171 = v171;
LABEL_219:
                                          v184 = v297 >> 62;
                                          if ((v297 >> 62) > 1)
                                          {
                                            if (v184 != 2)
                                            {
                                              v185 = 0;
                                              goto LABEL_229;
                                            }

                                            v187 = *(v296 + 16);
                                            v186 = *(v296 + 24);
                                            v50 = __OFSUB__(v186, v187);
                                            v185 = v186 - v187;
                                            if (!v50)
                                            {
LABEL_229:
                                              v50 = __OFADD__(v171, v185);
                                              v188 = v171 + v185;
                                              if (!v50)
                                              {
                                                v189 = v273 >> 62;
                                                if ((v273 >> 62) > 1)
                                                {
                                                  if (v189 != 2)
                                                  {
                                                    v190 = 0;
                                                    goto LABEL_240;
                                                  }

                                                  v192 = *(v272 + 16);
                                                  v191 = *(v272 + 24);
                                                  v50 = __OFSUB__(v191, v192);
                                                  v190 = v191 - v192;
                                                  if (!v50)
                                                  {
LABEL_240:
                                                    if (!__OFADD__(v188, v190))
                                                    {
                                                      v306 = sub_1001303A8(v188 + v190);
                                                      v307 = v193;
                                                      Data.append(_:)();
                                                      Data.append(_:)();
                                                      Data.append(_:)();
                                                      v294 = v306;
                                                      v299 = v307;
                                                      if (v286 == 2)
                                                      {
                                                        v196 = *(v289 + 16);
                                                        v195 = *(v289 + 24);
                                                        v50 = __OFSUB__(v195, v196);
                                                        v194 = v195 - v196;
                                                        if (!v50)
                                                        {
LABEL_249:
                                                          if (v194 != 16)
                                                          {
LABEL_284:
                                                            v235 = Logger.logObject.getter();
                                                            v236 = static os_log_type_t.error.getter();
                                                            if (os_log_type_enabled(v235, v236))
                                                            {
                                                              v237 = swift_slowAlloc();
                                                              *v237 = 0;
                                                              _os_log_impl(&_mh_execute_header, v235, v236, "Failed to encrypt BTAddrA || Ca || ra", v237, 2u);
                                                            }

                                                            sub_100099870(1);
                                                            sub_10006A178(v291, v287);
                                                            sub_10006A178(v293, v292);
                                                            sub_10006A178(v289, v290);
                                                            v238 = v284;
                                                            v239 = v285;
                                                            goto LABEL_287;
                                                          }

                                                          v197 = v299 >> 62;
                                                          if ((v299 >> 62) <= 1)
                                                          {
                                                            if (!v197)
                                                            {
                                                              v198 = v299;
                                                              v304 = sub_1000B07FC(BYTE6(v299));
                                                              v305 = v199;
                                                              v302 = v274;
                                                              v303 = v275;
                                                              v200 = v294;
                                                              v301[0] = v294;
                                                              LOWORD(v301[1]) = v198;
                                                              BYTE2(v301[1]) = BYTE2(v198);
                                                              BYTE3(v301[1]) = BYTE3(v198);
                                                              BYTE4(v301[1]) = BYTE4(v198);
                                                              BYTE5(v301[1]) = BYTE5(v198);
                                                              v201 = v289;
                                                              v202 = v290;
                                                              sub_100069E2C(v289, v290);
                                                              v203 = v282;
                                                              v204 = v283;
                                                              sub_100069E2C(v282, v283);
                                                              v19 = v276;
                                                              sub_1000AA9A4(v301, v301 + BYTE6(v198), v201, v202, v203, v204, &v304, &v302, &v300, 0, v200, v198, 4);
                                                              sub_10006A178(v201, v202);
                                                              sub_10006A178(v203, v204);
                                                              v205 = v200;
                                                              v206 = v198;
                                                              goto LABEL_282;
                                                            }

LABEL_266:
                                                            if (!__OFSUB__(HIDWORD(v294), v294))
                                                            {
                                                              v304 = sub_1000B07FC(HIDWORD(v294) - v294);
                                                              v305 = v212;
                                                              v302 = v274;
                                                              v303 = v275;
                                                              a1 = v294;
                                                              a2 = (v294 >> 32) - v294;
                                                              if (v294 >> 32 >= v294)
                                                              {
                                                                sub_100069E2C(v289, v290);
                                                                sub_100069E2C(v282, v283);
                                                                sub_100069E2C(v294, v299);
                                                                v13 = __DataStorage._bytes.getter();
                                                                if (!v13)
                                                                {
                                                                  goto LABEL_271;
                                                                }

                                                                v213 = __DataStorage._offset.getter();
                                                                if (!__OFSUB__(a1, v213))
                                                                {
                                                                  v13 += a1 - v213;
                                                                  goto LABEL_271;
                                                                }

LABEL_356:
                                                                __break(1u);
                                                                goto LABEL_357;
                                                              }

                                                              goto LABEL_354;
                                                            }

LABEL_353:
                                                            __break(1u);
LABEL_354:
                                                            __break(1u);
                                                            goto LABEL_355;
                                                          }

                                                          if (v197 != 2)
                                                          {
                                                            v304 = sub_1000B07FC(0);
                                                            v305 = v228;
                                                            v302 = v274;
                                                            v303 = v275;
                                                            memset(v301, 0, 14);
                                                            v229 = v289;
                                                            v230 = v290;
                                                            sub_100069E2C(v289, v290);
                                                            v231 = v282;
                                                            v232 = v283;
                                                            sub_100069E2C(v282, v283);
                                                            v233 = v299;
                                                            v234 = v294;
                                                            v19 = v276;
                                                            sub_1000AA9A4(v301, v301, v229, v230, v231, v232, &v304, &v302, &v300, 0, v294, v299, 4);
                                                            sub_10006A178(v229, v230);
                                                            sub_10006A178(v231, v232);
                                                            v205 = v234;
                                                            v206 = v233;
LABEL_282:
                                                            sub_10006A178(v205, v206);
                                                            if (v300)
                                                            {
LABEL_283:
                                                              sub_10006A178(v302, v303);
                                                              sub_10006A178(v304, v305);
                                                              goto LABEL_284;
                                                            }

                                                            goto LABEL_278;
                                                          }

                                                          v208 = *(v294 + 16);
                                                          v207 = *(v294 + 24);
                                                          if (!__OFSUB__(v207, v208))
                                                          {
                                                            v304 = sub_1000B07FC(v207 - v208);
                                                            v305 = v209;
                                                            v302 = v274;
                                                            v303 = v275;
                                                            v210 = v294;
                                                            a2 = *(v294 + 16);
                                                            a1 = *(v294 + 24);
                                                            sub_100069E2C(v289, v290);
                                                            sub_100069E2C(v282, v283);
                                                            sub_100069E2C(v210, v299);
                                                            v13 = __DataStorage._bytes.getter();
                                                            if (v13)
                                                            {
                                                              v211 = __DataStorage._offset.getter();
                                                              if (__OFSUB__(a2, v211))
                                                              {
LABEL_355:
                                                                __break(1u);
                                                                goto LABEL_356;
                                                              }

                                                              v13 += a2 - v211;
                                                            }

                                                            v50 = __OFSUB__(a1, a2);
                                                            a2 = a1 - a2;
                                                            if (!v50)
                                                            {
LABEL_271:
                                                              v214 = v299;
                                                              v215 = __DataStorage._length.getter();
                                                              if (v215 >= a2)
                                                              {
                                                                v216 = a2;
                                                              }

                                                              else
                                                              {
                                                                v216 = v215;
                                                              }

                                                              v217 = v216 + v13;
                                                              if (v13)
                                                              {
                                                                v218 = v217;
                                                              }

                                                              else
                                                              {
                                                                v218 = 0;
                                                              }

                                                              v219 = v294;
                                                              v220 = v13;
                                                              v221 = v289;
                                                              v222 = v290;
                                                              v223 = v282;
                                                              v224 = v283;
                                                              v19 = v276;
                                                              sub_1000AA9A4(v220, v218, v289, v290, v282, v283, &v304, &v302, v301, 0, v294, v214, 4);
                                                              sub_10006A178(v221, v222);
                                                              sub_10006A178(v223, v224);
                                                              sub_10006A178(v219, v214);
                                                              if (LODWORD(v301[0]))
                                                              {
                                                                goto LABEL_283;
                                                              }

LABEL_278:
                                                              a1 = v304;
                                                              v13 = v305;
                                                              v226 = v302;
                                                              v225 = v303;
                                                              sub_100069E2C(v304, v305);
                                                              sub_100069E2C(v226, v225);
                                                              v276 = v226;
                                                              v286 = v225;
                                                              sub_10006A178(v226, v225);
                                                              sub_10006A178(a1, v13);
                                                              a2 = v13 >> 62;
                                                              if ((v13 >> 62) <= 1)
                                                              {
                                                                if (!a2)
                                                                {
                                                                  v227 = BYTE6(v13);
LABEL_296:
                                                                  if (v227 != 38)
                                                                  {
                                                                    goto LABEL_319;
                                                                  }

                                                                  v242 = v286 >> 62;
                                                                  if ((v286 >> 62) <= 1)
                                                                  {
                                                                    if (!v242)
                                                                    {
                                                                      v243 = BYTE6(v286);
                                                                      goto LABEL_309;
                                                                    }

LABEL_307:
                                                                    LODWORD(v243) = HIDWORD(v276) - v276;
                                                                    if (__OFSUB__(HIDWORD(v276), v276))
                                                                    {
LABEL_361:
                                                                      __break(1u);
                                                                      return;
                                                                    }

                                                                    v243 = v243;
                                                                    goto LABEL_309;
                                                                  }

                                                                  if (v242 != 2)
                                                                  {
                                                                    goto LABEL_319;
                                                                  }

                                                                  v245 = *(v276 + 16);
                                                                  v244 = *(v276 + 24);
                                                                  v50 = __OFSUB__(v244, v245);
                                                                  v243 = v244 - v245;
                                                                  if (!v50)
                                                                  {
LABEL_309:
                                                                    if (v243 == 4)
                                                                    {
                                                                      v246 = type metadata accessor for __DataStorage();
                                                                      v247 = *(v246 + 48);
                                                                      v248 = *(v246 + 52);
                                                                      swift_allocObject();
                                                                      v249 = __DataStorage.init(capacity:)();
                                                                      v304 = 0;
                                                                      v305 = v249 | 0x4000000000000000;
                                                                      Data.append(_:)();
                                                                      Data.append(_:)();
                                                                      Data.append(_:)();
                                                                      Data.append(_:)();
                                                                      Data.append(_:)();
                                                                      Data.append(_:)();
                                                                      *(v298 + a4) = 6;
                                                                      sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
                                                                      a2 = "v16@?0@SEEndPoint8";
                                                                      v274 = v304;
                                                                      v275 = v305;
                                                                      v250 = Logger.logObject.getter();
                                                                      v251 = static os_log_type_t.info.getter();
                                                                      if (os_log_type_enabled(v250, v251))
                                                                      {
                                                                        v252 = swift_slowAlloc();
                                                                        v253 = swift_slowAlloc();
                                                                        v302 = v253;
                                                                        *v252 = 136315138;
                                                                        *(v252 + 4) = sub_1002FFA0C(0xD000000000000011, 0x8000000100462240, &v302);
                                                                        _os_log_impl(&_mh_execute_header, v250, v251, "Sending %s", v252, 0xCu);
                                                                        sub_1000752F4(v253);
                                                                      }

                                                                      if (qword_100501B60 == -1)
                                                                      {
                                                                        goto LABEL_313;
                                                                      }

                                                                      goto LABEL_358;
                                                                    }

LABEL_319:
                                                                    sub_100069E2C(a1, v13);
                                                                    sub_100069E2C(v276, v286);
                                                                    v259 = Logger.logObject.getter();
                                                                    v260 = static os_log_type_t.error.getter();
                                                                    if (!os_log_type_enabled(v259, v260))
                                                                    {
                                                                      sub_10006A178(v276, v286);
                                                                      sub_10006A178(a1, v13);
LABEL_342:

                                                                      sub_100099870(1);
                                                                      sub_10006A178(v291, v287);
                                                                      sub_10006A178(v293, v292);
                                                                      sub_10006A178(v289, v290);
                                                                      sub_10006A178(v284, v285);
                                                                      sub_10006A178(v276, v286);
                                                                      v238 = a1;
                                                                      v239 = v13;
LABEL_287:
                                                                      sub_10006A178(v238, v239);
                                                                      sub_10006A178(v296, v297);
                                                                      sub_10006A178(v272, v273);
                                                                      sub_10006A178(v278, v288);
                                                                      sub_10006A178(v279, v277);
                                                                      sub_10006A178(v282, v283);

LABEL_288:
                                                                      sub_10006A178(v294, v299);
                                                                      return;
                                                                    }

                                                                    v261 = swift_slowAlloc();
                                                                    v262 = v261;
                                                                    *v261 = 134218752;
                                                                    if (a2 > 1)
                                                                    {
                                                                      if (a2 != 2)
                                                                      {
                                                                        v263 = 0;
                                                                        goto LABEL_331;
                                                                      }

                                                                      v265 = *(a1 + 16);
                                                                      v264 = *(a1 + 24);
                                                                      v50 = __OFSUB__(v264, v265);
                                                                      v263 = v264 - v265;
                                                                      if (!v50)
                                                                      {
                                                                        goto LABEL_331;
                                                                      }

                                                                      __break(1u);
                                                                    }

                                                                    else if (!a2)
                                                                    {
                                                                      v263 = BYTE6(v13);
                                                                      goto LABEL_331;
                                                                    }

                                                                    LODWORD(v263) = HIDWORD(a1) - a1;
                                                                    if (__OFSUB__(HIDWORD(a1), a1))
                                                                    {
                                                                      __break(1u);
LABEL_360:
                                                                      __break(1u);
                                                                      goto LABEL_361;
                                                                    }

                                                                    v263 = v263;
LABEL_331:
                                                                    *(v261 + 4) = v263;
                                                                    sub_10006A178(a1, v13);
                                                                    *(v262 + 12) = 2048;
                                                                    *(v262 + 14) = 38;
                                                                    *(v262 + 22) = 2048;
                                                                    v266 = v286 >> 62;
                                                                    if ((v286 >> 62) > 1)
                                                                    {
                                                                      if (v266 != 2)
                                                                      {
                                                                        v267 = 0;
                                                                        goto LABEL_341;
                                                                      }

                                                                      v269 = *(v276 + 16);
                                                                      v268 = *(v276 + 24);
                                                                      v50 = __OFSUB__(v268, v269);
                                                                      v267 = v268 - v269;
                                                                      if (!v50)
                                                                      {
                                                                        goto LABEL_341;
                                                                      }

                                                                      __break(1u);
                                                                    }

                                                                    else if (!v266)
                                                                    {
                                                                      v267 = BYTE6(v286);
LABEL_341:
                                                                      *(v262 + 24) = v267;
                                                                      sub_10006A178(v276, v286);
                                                                      *(v262 + 32) = 2048;
                                                                      *(v262 + 34) = 4;
                                                                      _os_log_impl(&_mh_execute_header, v259, v260, "Invalid E2_Payload %ld != %ld or Tag2 %ld != %ld", v262, 0x2Au);

                                                                      goto LABEL_342;
                                                                    }

                                                                    LODWORD(v267) = HIDWORD(v276) - v276;
                                                                    if (!__OFSUB__(HIDWORD(v276), v276))
                                                                    {
                                                                      v267 = v267;
                                                                      goto LABEL_341;
                                                                    }

                                                                    goto LABEL_360;
                                                                  }

                                                                  __break(1u);
                                                                  goto LABEL_304;
                                                                }

                                                                goto LABEL_294;
                                                              }

                                                              if (a2 != 2)
                                                              {
                                                                goto LABEL_319;
                                                              }

                                                              v241 = *(a1 + 16);
                                                              v240 = *(a1 + 24);
                                                              v50 = __OFSUB__(v240, v241);
                                                              v227 = v240 - v241;
                                                              if (!v50)
                                                              {
                                                                goto LABEL_296;
                                                              }

                                                              __break(1u);
LABEL_293:
                                                              __break(1u);
LABEL_294:
                                                              LODWORD(v227) = HIDWORD(a1) - a1;
                                                              if (!__OFSUB__(HIDWORD(a1), a1))
                                                              {
                                                                v227 = v227;
                                                                goto LABEL_296;
                                                              }

LABEL_357:
                                                              __break(1u);
LABEL_358:
                                                              swift_once();
LABEL_313:
                                                              v270 = sub_100239160(5, 14, v274, v275);
                                                              v271 = v254;
                                                              if (qword_100501960 != -1)
                                                              {
                                                                swift_once();
                                                              }

                                                              sub_1000E71A0(v270, v271, v280);
                                                              if (v19)
                                                              {
                                                                v255 = Logger.logObject.getter();
                                                                v256 = static os_log_type_t.error.getter();
                                                                if (os_log_type_enabled(v255, v256))
                                                                {
                                                                  v257 = swift_slowAlloc();
                                                                  v258 = swift_slowAlloc();
                                                                  v302 = v258;
                                                                  *v257 = 136315138;
                                                                  *(v257 + 4) = sub_1002FFA0C(0xD000000000000011, a2 | 0x8000000000000000, &v302);
                                                                  _os_log_impl(&_mh_execute_header, v255, v256, "Failed to send %s", v257, 0xCu);
                                                                  sub_1000752F4(v258);
                                                                }

                                                                sub_100099870(2);
                                                                sub_10006A178(v284, v285);
                                                                sub_10006A178(v282, v283);
                                                                sub_10006A178(v272, v273);
                                                                sub_10006A178(v296, v297);
                                                                sub_10006A178(v289, v290);
                                                                sub_10006A178(v293, v292);
                                                                sub_10006A178(v291, v287);

                                                                sub_10006A178(v276, v286);
                                                                sub_10006A178(a1, v13);
                                                                sub_10006A178(v278, v288);
                                                                sub_10006A178(v279, v277);
                                                                sub_10006A178(v270, v271);
                                                              }

                                                              else
                                                              {

                                                                sub_10006A178(v284, v285);
                                                                sub_10006A178(v282, v283);
                                                                sub_10006A178(v272, v273);
                                                                sub_10006A178(v296, v297);
                                                                sub_10006A178(v289, v290);
                                                                sub_10006A178(v293, v292);
                                                                sub_10006A178(v291, v287);

                                                                sub_10006A178(v276, v286);
                                                                sub_10006A178(a1, v13);
                                                                sub_10006A178(v278, v288);
                                                                sub_10006A178(v279, v277);
                                                                sub_10006A178(v270, v271);
                                                              }

                                                              sub_10006A178(v274, v275);
                                                              goto LABEL_288;
                                                            }

                                                            __break(1u);
                                                            goto LABEL_261;
                                                          }

LABEL_352:
                                                          __break(1u);
                                                          goto LABEL_353;
                                                        }

                                                        __break(1u);
                                                      }

                                                      else if (v286 == 1)
                                                      {
                                                        LODWORD(v194) = HIDWORD(v289) - v289;
                                                        if (!__OFSUB__(HIDWORD(v289), v289))
                                                        {
                                                          v194 = v194;
                                                          goto LABEL_249;
                                                        }

                                                        goto LABEL_349;
                                                      }

                                                      v194 = BYTE6(v290);
                                                      goto LABEL_249;
                                                    }

                                                    goto LABEL_347;
                                                  }

                                                  __break(1u);
                                                }

                                                else if (!v189)
                                                {
                                                  v190 = BYTE6(v273);
                                                  goto LABEL_240;
                                                }

                                                LODWORD(v190) = HIDWORD(v272) - v272;
                                                if (__OFSUB__(HIDWORD(v272), v272))
                                                {
LABEL_351:
                                                  __break(1u);
                                                  goto LABEL_352;
                                                }

                                                v190 = v190;
                                                goto LABEL_240;
                                              }

LABEL_346:
                                              __break(1u);
LABEL_347:
                                              __break(1u);
                                              goto LABEL_348;
                                            }

                                            __break(1u);
                                          }

                                          else if (!v184)
                                          {
                                            v185 = BYTE6(v297);
                                            goto LABEL_229;
                                          }

                                          LODWORD(v185) = HIDWORD(v296) - v296;
                                          if (__OFSUB__(HIDWORD(v296), v296))
                                          {
LABEL_350:
                                            __break(1u);
                                            goto LABEL_351;
                                          }

                                          v185 = v185;
                                          goto LABEL_229;
                                        }

LABEL_218:
                                        v171 = BYTE6(v294);
                                        goto LABEL_219;
                                      }

LABEL_215:
                                      v183 = *(v299 + 16);
                                      v182 = *(v299 + 24);
                                      v50 = __OFSUB__(v182, v183);
                                      v171 = v182 - v183;
                                      if (!v50)
                                      {
                                        goto LABEL_219;
                                      }

                                      __break(1u);
                                      goto LABEL_218;
                                    }
                                  }

                                  v276 = 0;
                                }

LABEL_210:
                                v173 = v296;
                                v172 = v297;
                                sub_100069E2C(v296, v297);
                                v174 = Logger.logObject.getter();
                                v175 = static os_log_type_t.error.getter();
                                sub_10006A178(v173, v172);
                                if (os_log_type_enabled(v174, v175))
                                {
                                  v176 = swift_slowAlloc();
                                  v177 = swift_slowAlloc();
                                  v306 = v177;
                                  *v176 = 136315138;
                                  v304 = sub_100288788(v296, v297);
                                  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                                  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
                                  v178 = BidirectionalCollection<>.joined(separator:)();
                                  v180 = v179;

                                  v181 = sub_1002FFA0C(v178, v180, &v306);

                                  *(v176 + 4) = v181;
                                  _os_log_impl(&_mh_execute_header, v174, v175, "Invalid OOB data %s", v176, 0xCu);
                                  sub_1000752F4(v177);
                                }

                                v156 = 5;
                                goto LABEL_192;
                              }

                              __break(1u);
LABEL_197:
                              __break(1u);
                            }

                            else if (!v145)
                            {
                              v146 = BYTE6(v297);
                              goto LABEL_200;
                            }

                            LODWORD(v146) = HIDWORD(v296) - v296;
                            if (__OFSUB__(HIDWORD(v296), v296))
                            {
                              __break(1u);
                              goto LABEL_346;
                            }

                            v146 = v146;
                            goto LABEL_200;
                          }

LABEL_168:
                          sub_100069E2C(v279, v277);
                          sub_100069E2C(v278, v288);
                          v147 = Logger.logObject.getter();
                          v19 = static os_log_type_t.error.getter();
                          if (!os_log_type_enabled(v147, v19))
                          {
                            sub_10006A178(v278, v288);
                            sub_10006A178(v279, v277);
LABEL_191:

                            v156 = 1;
LABEL_192:
                            sub_100099870(v156);
                            sub_10006A178(v278, v288);
                            sub_10006A178(v279, v277);
LABEL_141:
                            sub_10006A178(v282, v283);
                            sub_10006A178(v284, v285);
                            sub_10006A178(v289, v290);
                            sub_10006A178(v293, v292);
                            sub_10006A178(v291, v287);

                            return;
                          }

                          v148 = swift_slowAlloc();
                          v13 = v148;
                          *v148 = 134218752;
                          if (a2 > 1)
                          {
                            if (a2 != 2)
                            {
                              v149 = 0;
                              goto LABEL_180;
                            }

                            v151 = *(v279 + 16);
                            v150 = *(v279 + 24);
                            v50 = __OFSUB__(v150, v151);
                            v149 = v150 - v151;
                            if (!v50)
                            {
LABEL_180:
                              *(v148 + 4) = v149;
                              sub_10006A178(v279, v277);
                              *(v13 + 12) = 2048;
                              *(v13 + 14) = 8;
                              *(v13 + 22) = 2048;
                              v152 = v288 >> 62;
                              if ((v288 >> 62) > 1)
                              {
                                if (v152 != 2)
                                {
                                  v153 = 0;
                                  goto LABEL_190;
                                }

                                v155 = *(v278 + 16);
                                v154 = *(v278 + 24);
                                v50 = __OFSUB__(v154, v155);
                                v153 = v154 - v155;
                                if (!v50)
                                {
                                  goto LABEL_190;
                                }

                                __break(1u);
                              }

                              else if (!v152)
                              {
                                v153 = BYTE6(v288);
LABEL_190:
                                *(v13 + 24) = v153;
                                sub_10006A178(v278, v288);
                                *(v13 + 32) = 2048;
                                *(v13 + 34) = 4;
                                _os_log_impl(&_mh_execute_header, v147, v19, "Invalid E1_Payload %ld != %ld or Tag1 %ld != %ld", v13, 0x2Au);

                                goto LABEL_191;
                              }

                              LODWORD(v153) = HIDWORD(v278) - v278;
                              if (__OFSUB__(HIDWORD(v278), v278))
                              {
LABEL_305:
                                __break(1u);
                                goto LABEL_306;
                              }

                              v153 = v153;
                              goto LABEL_190;
                            }

                            __break(1u);
                          }

                          else if (!a2)
                          {
                            v149 = BYTE6(v277);
                            goto LABEL_180;
                          }

                          LODWORD(v149) = HIDWORD(v279) - v279;
                          if (__OFSUB__(HIDWORD(v279), v279))
                          {
LABEL_304:
                            __break(1u);
                            goto LABEL_305;
                          }

                          v149 = v149;
                          goto LABEL_180;
                        }

                        __break(1u);
LABEL_162:
                        LODWORD(v142) = HIDWORD(v278) - v278;
                        if (__OFSUB__(HIDWORD(v278), v278))
                        {
LABEL_306:
                          __break(1u);
                          goto LABEL_307;
                        }

                        v142 = v142;
                        goto LABEL_164;
                      }

                      __break(1u);
LABEL_150:
                      __break(1u);
LABEL_151:
                      LODWORD(v139) = HIDWORD(v279) - v279;
                      if (__OFSUB__(HIDWORD(v279), v279))
                      {
                        goto LABEL_293;
                      }

                      v139 = v139;
                      goto LABEL_153;
                    }

                    a1 = v291;
                    a2 = (v291 >> 32) - v291;
                    if (v291 >> 32 < v291)
                    {
LABEL_262:
                      __break(1u);
                      goto LABEL_263;
                    }

                    sub_100069E2C(v293, v292);
                    sub_100069E2C(v284, v285);
                    sub_100069E2C(v291, v287);
                    v101 = __DataStorage._bytes.getter();
                    if (v101)
                    {
                      v102 = __DataStorage._offset.getter();
                      if (__OFSUB__(a1, v102))
                      {
LABEL_265:
                        __break(1u);
                        goto LABEL_266;
                      }

                      v101 += a1 - v102;
                    }

                    v103 = v287;
                    v104 = __DataStorage._length.getter();
                    if (v104 >= a2)
                    {
                      v105 = a2;
                    }

                    else
                    {
                      v105 = v104;
                    }

                    v106 = v105 + v101;
                    if (v101)
                    {
                      v107 = v106;
                    }

                    else
                    {
                      v107 = 0;
                    }

                    v108 = v291;
                    v109 = v101;
                    v111 = v292;
                    v110 = v293;
                    v112 = v284;
                    v113 = v285;
                    sub_1000AA9A4(v109, v107, v293, v292, v284, v285, &v308, &v306, &v304, 0, v291, v103, 4);
                    v276 = v19;
                    sub_10006A178(v110, v111);
                    sub_10006A178(v112, v113);
                    v114 = v108;
                  }

                  sub_10006A178(v114, v103);
                  if (v304)
                  {
LABEL_137:
                    sub_10006A178(v306, v307);
                    sub_10006A178(v308, v309);
                    goto LABEL_138;
                  }

                  goto LABEL_143;
                }

LABEL_111:
                v96 = BYTE6(v287);
                goto LABEL_112;
              }

LABEL_108:
              v98 = *(v291 + 16);
              v97 = *(v291 + 24);
              v96 = v97 - v98;
              if (!__OFSUB__(v97, v98))
              {
                goto LABEL_112;
              }

              __break(1u);
              goto LABEL_111;
            }

            __break(1u);
          }

          else if (v288 == 1)
          {
            LODWORD(v93) = HIDWORD(v293) - v293;
            if (!__OFSUB__(HIDWORD(v293), v293))
            {
              v93 = v93;
              goto LABEL_101;
            }

LABEL_214:
            __break(1u);
            goto LABEL_215;
          }

          v93 = BYTE6(v292);
          goto LABEL_101;
        }

        v87 = a1;
        goto LABEL_85;
      }

LABEL_79:
      a1 = v289;
      LODWORD(v84) = HIDWORD(v289) - v289;
      v16 = v295;
      if (__OFSUB__(HIDWORD(v289), v289))
      {
        __break(1u);
        goto LABEL_214;
      }

      v84 = v84;
      goto LABEL_81;
    }

    if (v21 != 2)
    {

      v87 = v289;
LABEL_85:
      sub_10006A178(v87, v290);
      goto LABEL_86;
    }

    a1 = v289;
    v86 = *(v289 + 16);
    v85 = *(v289 + 24);
    v50 = __OFSUB__(v85, v86);
    v84 = v85 - v86;
    v16 = v295;
    if (!v50)
    {
      goto LABEL_81;
    }

    __break(1u);
LABEL_77:
    swift_once();
  }

LABEL_13:

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v308 = v36;
    *v35 = 136315138;
    v37 = UUID.uuidString.getter();
    v39 = sub_1002FFA0C(v37, v38, &v308);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Wrong peer %s", v35, 0xCu);
    sub_1000752F4(v36);
  }
}

void sub_1000A00CC(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v145 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v144 = *(v10 - 8);
  v11 = *(v144 + 64);
  __chkstk_darwin(v10);
  v143 = v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v18 = qword_10051B7F0;
  *v17 = qword_10051B7F0;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_58:
    swift_once();
LABEL_32:
    v67 = sub_100239160(3, 17, v10, v20);
    v69 = v68;
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    v70 = v138;
    sub_1000E71A0(v67, v69, a2);
    if (v70)
    {
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v144 = v10;
        v74 = v73;
        v75 = v20;
        v76 = swift_slowAlloc();
        aBlock = v76;
        *v74 = 136315138;
        *(v74 + 4) = sub_1002FFA0C(0xD00000000000001CLL, v145 | 0x8000000000000000, &aBlock);
        _os_log_impl(&_mh_execute_header, v71, v72, "Failed to send %s", v74, 0xCu);
        sub_1000752F4(v76);
        v20 = v75;

        v10 = v144;
      }

      sub_100099870(2);
      sub_10006A178(v10, v20);

      sub_10006A178(v67, v69);
    }

    else
    {
      sub_10006A178(v10, v20);

      sub_10006A178(v67, v69);
    }

    return;
  }

  v140 = v10;
  v141 = v7;
  v142 = v6;
  v21 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;

  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v3;
    v25 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = UUID.uuidString.getter();
    v28 = sub_1002FFA0C(v26, v27, &v147);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v29 = 0xE000000000000000;
    if (a1)
    {
      aBlock = 0;
      v149 = 0xE000000000000000;
      v30._countAndFlagsBits = 0x7272652068746977;
      v30._object = 0xEB0000000020726FLL;
      String.append(_:)(v30);
      v146 = a1;
      sub_100068FC4(&unk_100503F80, &qword_100409CF0);
      _print_unlocked<A, B>(_:_:)();
      v31 = aBlock;
      v29 = v149;
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_1002FFA0C(v31, v29, &v147);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "Pairing completed for %s %s", v25, 0x16u);
    swift_arrayDestroy();

    v3 = v24;
  }

  else
  {
  }

  if (!*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {
    goto LABEL_18;
  }

  v33 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

LABEL_18:

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136315138;
      v45 = UUID.uuidString.getter();
      v47 = sub_1002FFA0C(v45, v46, &aBlock);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "Wrong peer %s", v43, 0xCu);
      sub_1000752F4(v44);
    }

    return;
  }

  v34 = v3;
  v35 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
  if (*(v34 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) != 7)
  {

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock = v51;
      *v50 = 136315138;
      LOBYTE(v147) = *(v34 + v35);
      v52 = String.init<A>(describing:)();
      v54 = sub_1002FFA0C(v52, v53, &aBlock);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Wrong state %s", v50, 0xCu);
      sub_1000752F4(v51);
    }

    goto LABEL_23;
  }

  if (a1)
  {
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Pairing failed with error %@", v38, 0xCu);
      sub_100075768(v39, &unk_100503F70, &unk_10040B2E0);
    }

    sub_100099870(2);

    goto LABEL_25;
  }

  v55 = OBJC_IVAR____TtC10seserviced13AlishaPairing_mode;
  v56 = *(v34 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode);
  if (!*(v34 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode))
  {

    v48 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock = v79;
      *v78 = 136315138;
      LOBYTE(v147) = *(v34 + v55);
      v80 = String.init<A>(describing:)();
      v82 = sub_1002FFA0C(v80, v81, &aBlock);

      *(v78 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v48, v77, "Wrong mode %s", v78, 0xCu);
      sub_1000752F4(v79);
    }

LABEL_23:

LABEL_24:
    sub_100099870(2);
LABEL_25:

    return;
  }

  v139 = v21;
  if (v56 == 1)
  {
    v57 = objc_opt_self();
    UUID.uuidString.getter();
    v58 = String._bridgeToObjectiveC()();

    sub_1003AE298(v57, 5, v58);

    v138 = 0;
    goto LABEL_29;
  }

  v83 = *(v34 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  if (!v83)
  {
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "No endpoint", v98, 2u);
    }

    goto LABEL_24;
  }

  v84 = qword_100501960;
  v85 = v83;
  if (v84 != -1)
  {
    swift_once();
  }

  sub_100068FC4(&qword_100504060, &qword_10040B370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409E40;
  *(inited + 32) = a2;

  v87 = sub_1000B0570(inited);
  swift_setDeallocating();
  v88 = *(inited + 16);
  swift_arrayDestroy();
  sub_1000E616C(v87, &aBlock);
  v137 = v85;
  v138 = 0;
  v99 = aBlock;
  v100 = v149;
  v101 = v150;
  v102 = v152;
  v103 = v151;

  sub_100069E2C(v99, v100);
  sub_100069E2C(v101, v103);

  sub_10006A178(v101, v103);
  sub_10006A178(v99, v100);
  if (*(v102 + 2))
  {
    v128 = v100;
    v129 = v99;
    v130 = v103;
    v131 = v101;
    v104 = *(v102 + 4);
    v105 = *(v102 + 5);
    v107 = *(v102 + 6);
    v106 = *(v102 + 7);
    v108 = *(v102 + 8);
    v132 = *(v102 + 9);
    v109 = *(v102 + 10);
    v133 = v104;

    v135 = v105;
    v134 = v107;
    sub_100069E2C(v105, v107);
    v136 = v108;
    sub_100069E2C(v106, v108);
    v110 = v132;
    sub_100069E2C(v132, v109);

    v127 = v102;
    if (qword_100501D98 != -1)
    {
      swift_once();
    }

    v126 = qword_10051B7F8;
    v111 = swift_allocObject();
    v112 = v133;
    v111[2] = v137;
    v111[3] = v112;
    v113 = v134;
    v111[4] = v135;
    v111[5] = v113;
    v114 = v136;
    v111[6] = v106;
    v111[7] = v114;
    v111[8] = v110;
    v111[9] = v109;
    v111[10] = a2;
    v111[11] = v34;
    v124 = v109;
    v123 = v106;
    v152 = sub_1000B2B04;
    v153 = v111;
    aBlock = _NSConcreteStackBlock;
    v149 = 1107296256;
    v150 = sub_100080830;
    v151 = &unk_1004C5F60;
    v125 = _Block_copy(&aBlock);

    v137 = v137;

    v115 = v135;
    sub_100069E2C(v135, v113);
    sub_100069E2C(v106, v136);
    sub_100069E2C(v110, v109);

    v116 = v143;
    static DispatchQoS.unspecified.getter();
    v147 = _swiftEmptyArrayStorage;
    v122[1] = sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    v117 = v115;
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
    v118 = v145;
    v119 = v142;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v120 = v116;
    v121 = v125;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v121);

    sub_10006A178(v117, v134);
    sub_10006A178(v123, v136);
    sub_10006A178(v132, v124);

    sub_10006A178(v129, v128);
    sub_10006A178(v131, v130);

    (*(v141 + 8))(v118, v119);
    (*(v144 + 8))(v120, v140);

LABEL_29:
    *(v34 + v35) = 8;
    sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
    v10 = sub_1002B3B94(&off_1004C3920);
    v20 = v59;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    v62 = os_log_type_enabled(v60, v61);
    v145 = "REQUEST_OWNER_PAIRING";
    if (v62)
    {
      v63 = v20;
      v64 = swift_slowAlloc();
      v65 = v10;
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v64 = 136315138;
      *(v64 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100462200, &aBlock);
      _os_log_impl(&_mh_execute_header, v60, v61, "Sending %s", v64, 0xCu);
      sub_1000752F4(v66);
      v10 = v65;

      v20 = v63;
    }

    if (qword_100501B60 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

  sub_10006A178(v99, v100);
  sub_10006A178(v101, v103);

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    aBlock = v92;
    *v91 = 136315138;
    v93 = UUID.uuidString.getter();
    v95 = sub_1002FFA0C(v93, v94, &aBlock);

    *(v91 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v89, v90, "Failed to retrieve pairing info for %s", v91, 0xCu);
    sub_1000752F4(v92);
  }

  sub_100099870(2);
}

uint64_t sub_1000A1300(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  if (a3)
  {
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_1002FFA0C(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to process DK UWB message %s", v7, 0xCu);
      sub_1000752F4(v8);
    }

    sub_100099870(2);
  }

  else if (a2 >> 60 != 15)
  {
    v13 = result;
    sub_100069E2C(result, a2);
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000E71A0(v13, a2, a5);

    return sub_10006A2D0(v13, a2);
  }

  return result;
}

void sub_1000A15AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v128 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v126 = *(v7 - 8);
  v127 = v7;
  v8 = *(v126 + 64);
  __chkstk_darwin(v7);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v125 = *(v11 - 8);
  v12 = *(v125 + 64);
  __chkstk_darwin(v11);
  v14 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = qword_10051B7F0;
  *v19 = qword_10051B7F0;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v23 = *(v16 + 8);
  v22 = v16 + 8;
  v23(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v24 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_11;
    }

    v26 = *(a1 + 16);
    v25 = *(a1 + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (!v27)
    {
      if (v28 >= 2)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    goto LABEL_76;
  }

  if (v24)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_16;
      }

LABEL_11:
      sub_100069E2C(a1, a2);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock = v32;
        *v31 = 136315138;
        v135 = sub_100288788(a1, a2);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v33 = BidirectionalCollection<>.joined(separator:)();
        v35 = v34;

        v36 = sub_1002FFA0C(v33, v35, &aBlock);

        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "Invalid Command Complete event %s", v31, 0xCu);
        sub_1000752F4(v32);
      }

      goto LABEL_58;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
    goto LABEL_41;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_11;
  }

LABEL_16:
  sub_100069E2C(a1, a2);
  v19 = 0;
  v37 = sub_1000939AC(a1, a2, 1, 0, 0);
  v22 = v4;
  if (v37 > 0xFB)
  {
    if (v37 > 253)
    {
      if (v37 == 254)
      {
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = "Received FA_CRYPTO_OPERATION_FAILED";
          goto LABEL_56;
        }
      }

      else
      {
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = "Received WRONG_PARAMETERS";
          goto LABEL_56;
        }
      }
    }

    else if (v37 == 252)
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = "Received OOB_MISMATCH";
        goto LABEL_56;
      }
    }

    else
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = "Received BLE_PAIRING_FAILED";
LABEL_56:
        _os_log_impl(&_mh_execute_header, v45, v46, v48, v47, 2u);
      }
    }

LABEL_57:

LABEL_58:
    sub_100099870(2);
    return;
  }

  if (v37 > 127)
  {
    if (v37 == 128)
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = "Received GENERAL_ERROR";
        goto LABEL_56;
      }
    }

    else
    {
      if (v37 != 134)
      {
LABEL_60:
        sub_100069E2C(a1, a2);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.info.getter();
        sub_10006A178(a1, a2);
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          aBlock = v66;
          *v65 = 136315138;
          v135 = sub_100288788(a1, a2);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v67 = BidirectionalCollection<>.joined(separator:)();
          v69 = v68;

          v70 = sub_1002FFA0C(v67, v69, &aBlock);

          *(v65 + 4) = v70;
          _os_log_impl(&_mh_execute_header, v63, v64, "Ignoring unknown Command Complete event %s", v65, 0xCu);
          sub_1000752F4(v66);
        }

        return;
      }

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = "Received OP_DEVICE_NOT_INSIDE_VEHICLE";
        goto LABEL_56;
      }
    }

    goto LABEL_57;
  }

  if (v37)
  {
    if (v37 == 1)
    {
      v38 = v128;
      if (*(v4 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) != 2)
      {
        return;
      }

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Received BLE_PAIRING_READY", v41, 2u);
      }

      v42 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
      v43 = v4;
      if (*(v4 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 4)
      {
        *(v4 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 5;
        sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
        if (qword_100501968 != -1)
        {
          swift_once();
        }

        type metadata accessor for DSKBLEPairing.BLEPairingRequest();
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1004098E0;
        *(v44 + 32) = v38;
        *(v44 + 40) = &off_1004C3840;
        *(v44 + 48) = sub_1000B3678;
        *(v44 + 56) = v4;
        *(v44 + 64) = sub_1000B367C;
        *(v44 + 72) = v4;
        swift_retain_n();

        sub_1000E9034(v44);

        return;
      }

      v45 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        aBlock = v73;
        *v72 = 136315138;
        LOBYTE(v135) = *(v43 + v42);
        v74 = String.init<A>(describing:)();
        v76 = sub_1002FFA0C(v74, v75, &aBlock);

        *(v72 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v45, v71, "Wrong state %s", v72, 0xCu);
        sub_1000752F4(v73);
      }

      goto LABEL_57;
    }

    goto LABEL_60;
  }

  a1 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Received DESELECT_SE", v51, 2u);
  }

  if (qword_100501A30 != -1)
  {
    goto LABEL_78;
  }

LABEL_41:
  v52 = v128;
  sub_100194774(v128);
  if (*(v22 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) != 1 || *(v22 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) != 9)
  {
    return;
  }

  v124 = a1;
  *(v22 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 10;
  sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  sub_100068FC4(&qword_100504060, &qword_10040B370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409E40;
  *(inited + 32) = v52;

  v54 = sub_1000B0570(inited);
  swift_setDeallocating();
  v55 = *(inited + 16);
  swift_arrayDestroy();
  sub_1000E616C(v54, &aBlock);
  if (v19)
  {

LABEL_47:

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock = v59;
      *v58 = 136315138;
      v60 = UUID.uuidString.getter();
      v62 = sub_1002FFA0C(v60, v61, &aBlock);

      *(v58 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to retrieve pairing info for %s", v58, 0xCu);
      sub_1000752F4(v59);
    }

    goto LABEL_58;
  }

  v77 = aBlock;
  v78 = v130;
  v79 = v131;
  v80 = v132;
  v81 = v133;

  sub_100069E2C(v77, v78);
  sub_100069E2C(v79, v80);

  v122 = v80;
  sub_10006A178(v79, v80);
  sub_10006A178(v77, v78);
  if (!*(v81 + 2))
  {

    sub_10006A178(v77, v78);
    sub_10006A178(v79, v122);
    goto LABEL_47;
  }

  v114 = v78;
  v113 = v77;
  v115 = v79;
  v82 = *(v81 + 4);
  v83 = *(v81 + 5);
  v84 = *(v81 + 6);
  v85 = *(v81 + 7);
  v86 = *(v81 + 9);
  v123 = *(v81 + 8);
  v87 = *(v81 + 10);
  v116 = v82;

  v118 = v83;
  v117 = v84;
  sub_100069E2C(v83, v84);
  v119 = v85;
  sub_100069E2C(v85, v123);
  v121 = v86;
  v120 = v87;
  sub_100069E2C(v86, v87);

  v88 = (v128 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v89 = *(v128 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v89 >> 60 == 15)
  {
    v90 = v113;
    v91 = v114;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Failed to retrieve key identifier", v94, 2u);
    }

    sub_100099870(2);

    sub_10006A178(v118, v117);
    sub_10006A178(v119, v123);
    sub_10006A178(v121, v120);
    sub_10006A178(v90, v91);
    sub_10006A178(v115, v122);
  }

  else
  {
    v124 = v81;
    v95 = *v88;
    sub_100069E2C(*v88, v89);
    if (qword_100501D98 != -1)
    {
      swift_once();
    }

    v112 = qword_10051B7F8;
    v96 = swift_allocObject();
    v96[2] = v95;
    v96[3] = v89;
    v97 = v118;
    v96[4] = v116;
    v96[5] = v97;
    v98 = v119;
    v96[6] = v117;
    v96[7] = v98;
    v99 = v121;
    v96[8] = v123;
    v96[9] = v99;
    v100 = v120;
    v109 = v89;
    v101 = v95;
    v111 = v95;
    v102 = v128;
    v96[10] = v120;
    v96[11] = v102;
    v96[12] = v22;
    v133 = sub_1000B36E8;
    v134 = v96;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_100080830;
    v132 = &unk_1004C61E0;
    v110 = _Block_copy(&aBlock);

    v103 = v97;
    v104 = v117;
    sub_100069E2C(v103, v117);
    v105 = v123;
    sub_100069E2C(v98, v123);
    sub_100069E2C(v121, v100);
    v106 = v109;
    sub_10006A2BC(v101, v109);

    static DispatchQoS.unspecified.getter();
    v135 = _swiftEmptyArrayStorage;
    sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
    v107 = v127;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v108 = v110;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v108);

    sub_10006A178(v118, v104);
    sub_10006A178(v119, v105);
    sub_10006A178(v121, v120);
    sub_10006A2D0(v111, v106);
    sub_10006A178(v113, v114);
    sub_10006A178(v115, v122);

    (*(v126 + 8))(v10, v107);
    (*(v125 + 8))(v14, v11);
  }
}

void sub_1000A291C(unint64_t a1, uint64_t a2, char **a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
    v12 = v11;
    LOBYTE(v11) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v10, v6);
    if ((v11 & 1) == 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v13 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = [v13 TLVsWithData:isa];

    if (!v15)
    {
      break;
    }

    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(a1 >> 62))
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }

LABEL_18:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
LABEL_19:

      return;
    }

LABEL_6:
    v10 = 0;
    v7 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v16 = *(a1 + 8 * v10 + 32);
      }

      v17 = v16;
      v18 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v20 = v16;
      sub_1000A470C(&v20, a3, v3);

      ++v10;
      if (v18 == v6)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  __break(1u);
}

void sub_1000A2B9C(unint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_86;
  }

  if (!*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {
    goto LABEL_17;
  }

  v14 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

LABEL_17:

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v129 = v28;
      *v27 = 136315138;
      v29 = UUID.uuidString.getter();
      v31 = sub_1002FFA0C(v29, v30, &v129);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Wrong peer %s", v27, 0xCu);
      sub_1000752F4(v28);
    }

    return;
  }

  v15 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
  if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 7)
  {
    v136 = a1;
    v137 = a2;
    sub_100069E2C(a1, a2);
    v16 = sub_1001A292C(38);
    if (v17 >> 60 == 15)
    {
LABEL_12:
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Invalid length for FIRST_APPROACH_RS", v24, 2u);
      }

      sub_100099870(2);
      goto LABEL_15;
    }

    v10 = v16;
    a1 = v17;
    v18 = sub_1001A292C(8);
    if (v19 >> 60 == 15)
    {
LABEL_11:
      sub_10006A2D0(v10, a1);
      goto LABEL_12;
    }

    v126 = v19;
    v127 = v18;
    v20 = sub_1001A292C(4);
    if (v21 >> 60 == 15)
    {
      sub_10006A2D0(v127, v126);
      goto LABEL_11;
    }

    v124 = v20;
    v125 = v21;
    v39 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
    if (v39)
    {
      v40 = v39;
      v41 = [v40 bleOOBKey];
      if (v41)
      {
        v121 = v40;
        v42 = v41;
        v123 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v122 = v44;
        v45 = v44 >> 62;
        if ((v44 >> 62) > 1)
        {
          if (v45 != 2)
          {
            goto LABEL_78;
          }

          v51 = *(v123 + 16);
          v50 = *(v123 + 24);
          v52 = __OFSUB__(v50, v51);
          v46 = v50 - v51;
          if (!v52)
          {
LABEL_38:
            if (v46 == 16)
            {
              v53 = a1 >> 62;
              if ((a1 >> 62) > 1)
              {
                if (v53 != 2)
                {
                  v54 = 0;
                  goto LABEL_49;
                }

                v56 = *(v10 + 16);
                v55 = *(v10 + 24);
                v54 = v55 - v56;
                if (!__OFSUB__(v55, v56))
                {
                  goto LABEL_49;
                }

                __break(1u);
              }

              else if (!v53)
              {
                v54 = BYTE6(a1);
LABEL_49:
                v134 = sub_1000B07FC(v54);
                v135 = v57;
                v129 = sub_10008FCB4(4uLL);
                v130 = v58 & 0xFFFFFFFFFFFFFFLL;
                if (v53 > 1)
                {
                  if (v53 != 2)
                  {
                    *(&v133 + 6) = 0;
                    *&v133 = 0;
                    v85 = v122;
                    v84 = v123;
                    sub_100069E2C(v123, v122);
                    v62 = v126;
                    v86 = v127;
                    sub_10006A2BC(v127, v126);
                    sub_1000AA9A4(&v133, &v133, v84, v85, v86, v62, &v134, &v129, v128, 1, v10, a1, 4);
                    sub_10006A178(v123, v85);
                    v63 = v86;
LABEL_76:
                    sub_10006A2D0(v63, v62);
                    sub_10006A2D0(v10, a1);
                    if (v128[0])
                    {
LABEL_77:
                      sub_10006A178(v129, v130);
                      sub_10006A178(v134, v135);
                      goto LABEL_78;
                    }

LABEL_71:
                    v117 = 0;
                    v3 = v134;
                    v79 = v135;
                    v80 = v129;
                    v81 = v130;
                    sub_100069E2C(v134, v135);
                    sub_100069E2C(v80, v81);
                    sub_10006A178(v80, v81);
                    sub_10006A178(v3, v79);
                    v118 = v80;
                    v119 = v81;
                    v82 = sub_10008FB4C(v80, v81, v124, v125);
                    v120 = v79;
                    if ((v82 & 1) == 0)
                    {
                      v90 = Logger.logObject.getter();
                      v91 = static os_log_type_t.error.getter();
                      if (os_log_type_enabled(v90, v91))
                      {
                        v92 = swift_slowAlloc();
                        *v92 = 0;
                        v93 = "Failed authentication";
LABEL_97:
                        _os_log_impl(&_mh_execute_header, v90, v91, v93, v92, 2u);
                      }

LABEL_98:

                      sub_100099870(1);
                      sub_10006A2D0(v127, v126);

                      sub_10006A178(v118, v119);
                      sub_10006A2D0(v124, v125);
                      sub_10006A178(v3, v120);
LABEL_81:
                      sub_10006A178(v123, v122);
LABEL_82:
                      sub_10006A2D0(v10, a1);
LABEL_15:

                      sub_10006A178(v136, v137);
                      return;
                    }

                    v13 = v79 >> 62;
                    if ((v79 >> 62) <= 1)
                    {
                      if (!v13)
                      {
                        v83 = BYTE6(v79);
                        goto LABEL_92;
                      }

                      goto LABEL_90;
                    }

LABEL_86:
                    if (v13 != 2)
                    {
                      goto LABEL_95;
                    }

                    v95 = *(v3 + 16);
                    v94 = *(v3 + 24);
                    v52 = __OFSUB__(v94, v95);
                    v83 = v94 - v95;
                    if (!v52)
                    {
LABEL_92:
                      if (v83 == 38)
                      {
                        v115 = Data.subdata(in:)();
                        v116 = v96;
                        v114 = v3;
                        v97 = Data.subdata(in:)();
                        v99 = v98;
                        v100 = type metadata accessor for __DataStorage();
                        v101 = *(v100 + 48);
                        v102 = *(v100 + 52);
                        swift_allocObject();
                        v103 = __DataStorage.init(capacity:)();
                        *&v133 = 0;
                        *(&v133 + 1) = v103 | 0x4000000000000000;
                        v104 = sub_100068FC4(&qword_100502608, &qword_100409A28);
                        v131 = v104;
                        v111 = sub_100075C60(&qword_100502610, &qword_100502608, &qword_100409A28);
                        v132 = v111;
                        LOBYTE(v129) = 114;
                        LOBYTE(v128[0]) = *sub_1000752B0(&v129, v104);
                        Data._Representation.replaceSubrange(_:with:count:)();
                        sub_1000752F4(&v129);
                        v112 = v97;
                        v113 = v99;
                        Data.append(_:)();
                        if (*(&v133 + 1) >> 62 == 2)
                        {
                          v105 = *(v133 + 24);
                        }

                        v131 = v104;
                        v132 = v111;
                        LOBYTE(v129) = 99;
                        LOBYTE(v128[0]) = *sub_1000752B0(&v129, v104);
                        Data._Representation.replaceSubrange(_:with:count:)();
                        sub_1000752F4(&v129);
                        Data.append(_:)();
                        if (qword_100501968 == -1)
                        {
                          goto LABEL_101;
                        }

                        goto LABEL_113;
                      }

LABEL_95:
                      v90 = Logger.logObject.getter();
                      v91 = static os_log_type_t.error.getter();
                      if (os_log_type_enabled(v90, v91))
                      {
                        v92 = swift_slowAlloc();
                        *v92 = 0;
                        v93 = "Invalid OOB data length";
                        goto LABEL_97;
                      }

                      goto LABEL_98;
                    }

                    __break(1u);
LABEL_90:
                    LODWORD(v83) = HIDWORD(v3) - v3;
                    if (__OFSUB__(HIDWORD(v3), v3))
                    {
                      __break(1u);
                      return;
                    }

                    v83 = v83;
                    goto LABEL_92;
                  }

                  v64 = *(v10 + 16);
                  v65 = *(v10 + 24);
                  sub_100069E2C(v123, v122);
                  sub_10006A2BC(v127, v126);
                  sub_10006A2BC(v10, a1);
                  v66 = __DataStorage._bytes.getter();
                  if (v66)
                  {
                    v67 = __DataStorage._offset.getter();
                    if (__OFSUB__(v64, v67))
                    {
LABEL_111:
                      __break(1u);
                      goto LABEL_112;
                    }

                    v66 += v64 - v67;
                  }

                  v52 = __OFSUB__(v65, v64);
                  v68 = v65 - v64;
                  if (!v52)
                  {
                    v69 = __DataStorage._length.getter();
                    if (v69 >= v68)
                    {
                      v70 = v68;
                    }

                    else
                    {
                      v70 = v69;
                    }

                    goto LABEL_67;
                  }

LABEL_110:
                  __break(1u);
                  goto LABEL_111;
                }

                if (!v53)
                {
                  *&v133 = v10;
                  WORD4(v133) = a1;
                  BYTE10(v133) = BYTE2(a1);
                  BYTE11(v133) = BYTE3(a1);
                  BYTE12(v133) = BYTE4(a1);
                  BYTE13(v133) = BYTE5(a1);
                  v120 = &v133 + BYTE6(a1);
                  v60 = v122;
                  v59 = v123;
                  sub_100069E2C(v123, v122);
                  v62 = v126;
                  v61 = v127;
                  sub_10006A2BC(v127, v126);
                  sub_1000AA9A4(&v133, v120, v59, v60, v61, v62, &v134, &v129, v128, 1, v10, a1, 4);
                  sub_10006A178(v59, v60);
                  v63 = v127;
                  goto LABEL_76;
                }

                if (v10 >> 32 >= v10)
                {
                  sub_100069E2C(v123, v122);
                  sub_10006A2BC(v127, v126);
                  sub_10006A2BC(v10, a1);
                  v66 = __DataStorage._bytes.getter();
                  if (!v66)
                  {
                    goto LABEL_64;
                  }

                  v71 = __DataStorage._offset.getter();
                  if (!__OFSUB__(v10, v71))
                  {
                    v66 += v10 - v71;
LABEL_64:
                    v72 = __DataStorage._length.getter();
                    if (v72 >= (v10 >> 32) - v10)
                    {
                      v70 = (v10 >> 32) - v10;
                    }

                    else
                    {
                      v70 = v72;
                    }

LABEL_67:
                    v73 = v70 + v66;
                    if (v66)
                    {
                      v74 = v73;
                    }

                    else
                    {
                      v74 = 0;
                    }

                    v75 = v122;
                    v76 = v123;
                    v77 = v126;
                    v78 = v127;
                    sub_1000AA9A4(v66, v74, v123, v122, v127, v126, &v134, &v129, &v133, 1, v10, a1, 4);
                    sub_10006A178(v76, v75);
                    sub_10006A2D0(v78, v77);
                    sub_10006A2D0(v10, a1);
                    if (v133)
                    {
                      goto LABEL_77;
                    }

                    goto LABEL_71;
                  }

LABEL_112:
                  __break(1u);
LABEL_113:
                  swift_once();
LABEL_101:
                  v111 = *(&v133 + 1);
                  v106 = v133;
                  v107 = v117;
                  sub_1000E98C8(v133, *(&v133 + 1));
                  if (v107)
                  {
                    v108 = Logger.logObject.getter();
                    v109 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v108, v109))
                    {
                      v110 = swift_slowAlloc();
                      v117 = v106;
                      *v110 = 0;
                      _os_log_impl(&_mh_execute_header, v108, v109, "Failed to request pairing", v110, 2u);
                      v106 = v117;
                    }

                    sub_100099870(2);
                    sub_10006A2D0(v127, v126);

                    sub_10006A178(v112, v113);
                    sub_10006A178(v115, v116);
                    sub_10006A178(v118, v119);
                    sub_10006A2D0(v124, v125);

                    sub_10006A178(v114, v120);
                    sub_10006A178(v123, v122);
                    sub_10006A2D0(v10, a1);

                    sub_10006A178(v136, v137);
                  }

                  else
                  {
                    sub_10006A178(v136, v137);
                    sub_10006A2D0(v10, a1);
                    sub_10006A2D0(v127, v126);

                    sub_10006A178(v112, v113);
                    sub_10006A178(v115, v116);
                    sub_10006A178(v118, v119);
                    sub_10006A178(v114, v120);
                    sub_10006A178(v123, v122);
                    sub_10006A2D0(v124, v125);
                  }

                  sub_10006A178(v106, v111);
                  return;
                }

LABEL_109:
                __break(1u);
                goto LABEL_110;
              }

              if (!__OFSUB__(HIDWORD(v10), v10))
              {
                v54 = HIDWORD(v10) - v10;
                goto LABEL_49;
              }

LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

LABEL_78:
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              *v89 = 0;
              _os_log_impl(&_mh_execute_header, v87, v88, "Failed to decrypt OOB data", v89, 2u);
            }

            sub_100099870(1);
            sub_10006A2D0(v127, v126);

            sub_10006A2D0(v124, v125);
            goto LABEL_81;
          }

          __break(1u);
        }

        else if (!v45)
        {
          v46 = BYTE6(v122);
          goto LABEL_38;
        }

        LODWORD(v46) = HIDWORD(v123) - v123;
        if (__OFSUB__(HIDWORD(v123), v123))
        {
          __break(1u);
          goto LABEL_108;
        }

        v46 = v46;
        goto LABEL_38;
      }
    }

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Missing endpoint or bleOOBKey", v49, 2u);
    }

    sub_100099870(2);
    sub_10006A2D0(v127, v126);
    sub_10006A2D0(v124, v125);
    goto LABEL_82;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v129 = v35;
    *v34 = 136315138;
    LOBYTE(v136) = *(v2 + v15);
    v36 = String.init<A>(describing:)();
    v38 = sub_1002FFA0C(v36, v37, &v129);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Wrong state %s", v34, 0xCu);
    sub_1000752F4(v35);
  }

  sub_100099870(2);
}

uint64_t sub_1000A3B8C(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v7 = a3[1];
  v35 = *a3;
  v36 = a5;
  v9 = a3[2];
  v8 = a3[3];
  v10 = a3[4];
  v11 = a3[5];
  v12 = a3[6];
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = *(v43 + 64);
  __chkstk_darwin(v13);
  v42 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v40 = *(v16 - 8);
  v41 = v16;
  v17 = *(v40 + 64);
  __chkstk_darwin(v16);
  v38 = a2;
  v39 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  aBlock = sub_100288788(a1, a2);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  BidirectionalCollection<>.joined(separator:)();

  v34[0] = String._bridgeToObjectiveC()();

  v19 = swift_allocObject();
  v19[2] = v35;
  v19[3] = v7;
  v19[4] = v9;
  v19[5] = v8;
  v19[6] = v10;
  v19[7] = v11;
  v20 = v45;
  v19[8] = v12;
  v19[9] = v20;
  v51 = sub_1000B3FA8;
  v52 = v19;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v34[1] = &v49;
  v49 = sub_1000A409C;
  v50 = &unk_1004C6230;
  v21 = _Block_copy(&aBlock);

  sub_100069E2C(v7, v9);
  sub_100069E2C(v8, v10);
  sub_100069E2C(v11, v12);

  v22 = v34[0];
  v23 = SESEndPointUpdateWithBlock();
  _Block_release(v21);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v24 = swift_allocObject();
  v26 = v36;
  v25 = v37;
  v24[2] = v23;
  v24[3] = v26;
  v27 = v38;
  v24[4] = v25;
  v24[5] = v27;
  v24[6] = v45;
  v51 = sub_1000B383C;
  v52 = v24;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_100080830;
  v50 = &unk_1004C6280;
  v28 = _Block_copy(&aBlock);

  v29 = v23;

  sub_100069E2C(v25, v27);
  v30 = v39;
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  v31 = v42;
  v32 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v43 + 8))(v31, v32);
  (*(v40 + 8))(v30, v41);
}

void sub_1000A409C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1000A4104(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a1)
  {
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
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update BLE data for endpoint %@", v8, 0xCu);
      sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);
    }

    sub_100099870(2);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Endpoint updated with BLE UUID", v16, 2u);
    }

    v17 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers;
    swift_beginAccess();
    sub_10010DEBC(a3, a4, &v33);
    swift_endAccess();
    sub_10006A2D0(v33, *(&v33 + 1));
    swift_beginAccess();
    sub_10010DAA4();
    swift_endAccess();

    if (!*(*(a2 + v17) + 16))
    {
      if (qword_1005019E8 != -1)
      {
        swift_once();
      }

      v18 = *(off_100504A68 + 3);
      os_unfair_lock_lock((v18 + 32));
      sub_1000B3EF8((v18 + 16));
      os_unfair_lock_unlock((v18 + 32));
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Handing off the peripheral to Alisha", v21, 2u);
    }

    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    sub_10022E104(a5, *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion));
    v22 = sub_1002B3B94(&off_1004C3948);
    v24 = v23;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100462200, &v32);
      _os_log_impl(&_mh_execute_header, v25, v26, "Sending %s", v27, 0xCu);
      sub_1000752F4(v28);
    }

    v29 = sub_100239160(3, 17, v22, v24);
    v31 = v30;
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000E71A0(v29, v31, a5);
    sub_10006A178(v22, v24);
    sub_10006A178(v29, v31);
    sub_100099870(6);
  }
}

void sub_1000A470C(id *a1, char **a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 tag];
  switch(v6)
  {
    case 0x7F79u:
      v15 = OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion;
      if (*(a3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion) < 0x300u)
      {
        return;
      }

      if (qword_100501DB0 != -1)
      {
        swift_once();
      }

      v16 = [v5 children];
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = v16;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10034ADB0(v18, *(a3 + v15), a2);
LABEL_17:

      return;
    case 0x7F72u:
      if (qword_100501DB0 != -1)
      {
        swift_once();
      }

      v12 = [v5 children];
      if (!v12)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v13 = v12;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10034A0DC(v14, *(a3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion), a2);
      goto LABEL_17;
    case 0x5F78u:
      if (qword_100501DB0 != -1)
      {
        swift_once();
      }

      v7 = [v5 value];
      if (v7)
      {
        v8 = v7;
        v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        sub_100349188(v9, v11, a2);
        sub_10006A178(v9, v11);
        return;
      }

      goto LABEL_23;
  }

  v19 = v5;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = [v19 tag];

    _os_log_impl(&_mh_execute_header, v20, v21, "Ignoring unknown event %u", v22, 8u);
  }

  else
  {
  }
}

uint64_t sub_1000A4A18(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v6 = [a1 publicKeyIdentifier];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = sub_10008FB4C(v7, v9, a2, a3);
  sub_10006A178(v7, v9);
  return v10 & 1;
}

uint64_t sub_1000A4AC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v22 = *(v10 - 8);
  v23 = v10;
  v11 = *(v22 + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = sub_100288788(a1, a2);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  BidirectionalCollection<>.joined(separator:)();

  v14 = String._bridgeToObjectiveC()();

  v30 = sub_1000A4EF4;
  v31 = 0;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000A409C;
  v29 = &unk_1004C6370;
  v15 = _Block_copy(&aBlock);
  v16 = SESEndPointUpdateWithBlock();
  _Block_release(v15);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a3;
  v30 = sub_1000B3D18;
  v31 = v17;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100080830;
  v29 = &unk_1004C63C0;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v9, v6);
  (*(v22 + 8))(v13, v23);
}

void sub_1000A4EF4(void *a1)
{
  sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [a1 setBlePairingRequest:isa];
}

void sub_1000A4F6C(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_1002FFA0C(v5, v6, &v11);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "Failed to update endpoint %s", v3, 0xCu);
      sub_1000752F4(v4);
    }

    else
    {
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Endpoint updated with BLE pairing request", v9, 2u);
    }
  }
}

void sub_1000A517C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      return;
    }
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        return;
      }

      v79 = 0;
      v5 = BYTE6(v3);
      goto LABEL_12;
    }

    if (v2 == v2 >> 32)
    {
      return;
    }
  }

  if (v4 == 2)
  {
    v5 = *(v2 + 24);
    v79 = *(v2 + 16);
  }

  else
  {
    v79 = v2;
    v5 = v2 >> 32;
  }

LABEL_12:
  if (__OFSUB__(v5, 1))
  {
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
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
  }

  if (v79 < v5 - 1)
  {
    v6 = v5 - 2;
    v77 = v0;
    while (1)
    {
      v8 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        break;
      }

      if (v8)
      {
        if (v79 >= v2 >> 32 || v79 < v2)
        {
          goto LABEL_112;
        }

        v14 = __DataStorage._bytes.getter();
        if (!v14)
        {
          goto LABEL_142;
        }

        v11 = v14;
        v15 = __DataStorage._offset.getter();
        v13 = v79 - v15;
        if (__OFSUB__(v79, v15))
        {
          goto LABEL_114;
        }

LABEL_33:
        v9 = *(v11 + v13);
        goto LABEL_34;
      }

      if (v79 >= BYTE6(v3))
      {
        goto LABEL_111;
      }

      v80 = v2;
      LOWORD(v81) = v3;
      BYTE2(v81) = BYTE2(v3);
      HIBYTE(v81) = BYTE3(v3);
      LOBYTE(v82) = BYTE4(v3);
      HIBYTE(v82) = BYTE5(v3);
      v9 = *(&v80 + v79);
LABEL_34:
      v16 = v6 + 1;
      v17 = *v1;
      v18 = v1[1];
      v19 = v18 >> 62;
      v78 = v9;
      if ((v18 >> 62) > 1)
      {
        if (v19 != 2)
        {
          goto LABEL_143;
        }

        if (v16 < *(v17 + 16))
        {
          goto LABEL_115;
        }

        if (v16 >= *(v17 + 24))
        {
          goto LABEL_119;
        }

        v21 = __DataStorage._bytes.getter();
        if (!v21)
        {
          goto LABEL_147;
        }

        v22 = v21;
        v23 = __DataStorage._offset.getter();
        v24 = v16 - v23;
        if (__OFSUB__(v16, v23))
        {
          goto LABEL_122;
        }

        goto LABEL_49;
      }

      if (v19)
      {
        if (v16 >= v17 >> 32 || v16 < v17)
        {
          goto LABEL_118;
        }

        v25 = __DataStorage._bytes.getter();
        if (!v25)
        {
          goto LABEL_146;
        }

        v22 = v25;
        v26 = __DataStorage._offset.getter();
        v24 = v16 - v26;
        if (__OFSUB__(v16, v26))
        {
          goto LABEL_120;
        }

LABEL_49:
        v20 = *(v22 + v24);
        goto LABEL_50;
      }

      if (v16 >= BYTE6(v18))
      {
        goto LABEL_116;
      }

      v80 = *v1;
      LOWORD(v81) = v18;
      BYTE2(v81) = BYTE2(v18);
      HIBYTE(v81) = BYTE3(v18);
      LOBYTE(v82) = BYTE4(v18);
      HIBYTE(v82) = BYTE5(v18);
      v20 = *(&v80 + v6 + 1);
LABEL_50:
      v2 = *v1;
      v27 = v1[1];
      v28 = v27 >> 62;
      if ((v27 >> 62) > 1)
      {
        if (v28 != 2)
        {
          goto LABEL_145;
        }

        v30 = v27 & 0x3FFFFFFFFFFFFFFFLL;
        v31 = *v1;

        sub_10006A178(v2, v27);
        *v1 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        if (v79 < *(v2 + 16))
        {
          goto LABEL_121;
        }

        if (v79 >= *(v2 + 24))
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v2 + 16);
          v33 = *(v2 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v32, __DataStorage._offset.getter()))
            {
              goto LABEL_137;
            }

            if (__OFSUB__(v33, v32))
            {
              goto LABEL_134;
            }
          }

          else if (__OFSUB__(v33, v32))
          {
            goto LABEL_134;
          }

          v42 = type metadata accessor for __DataStorage();
          v43 = *(v42 + 48);
          v44 = *(v42 + 52);
          swift_allocObject();
          v45 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v30 = v45;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = *(v2 + 16);
          v47 = *(v2 + 24);
          type metadata accessor for Data.RangeReference();
          v48 = swift_allocObject();
          *(v48 + 16) = v46;
          *(v48 + 24) = v47;
          v16 = v6 + 1;

          v2 = v48;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v49 = __DataStorage._bytes.getter();
        if (!v49)
        {
          goto LABEL_150;
        }

        v50 = v49;
        v51 = __DataStorage._offset.getter();
        if (__OFSUB__(v79, v51))
        {
          goto LABEL_130;
        }

        *(v50 + v79 - v51) = v20;
        v29 = v30 | 0x8000000000000000;
LABEL_79:
        *v1 = v2;
        v1[1] = v29;
        goto LABEL_80;
      }

      if (v28)
      {
        v34 = v27 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v2, v27);
        *v1 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        if (v79 >= v2 >> 32 || v79 < v2)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v2, __DataStorage._offset.getter()))
          {
            goto LABEL_136;
          }

          v35 = type metadata accessor for __DataStorage();
          v36 = *(v35 + 48);
          v37 = *(v35 + 52);
          swift_allocObject();
          v38 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v34 = v38;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v39 = __DataStorage._bytes.getter();
        if (!v39)
        {
          goto LABEL_148;
        }

        v40 = v39;
        v41 = __DataStorage._offset.getter();
        if (__OFSUB__(v79, v41))
        {
          goto LABEL_126;
        }

        *(v40 + v79 - v41) = v20;
        v29 = v34 | 0x4000000000000000;
        goto LABEL_79;
      }

      sub_10006A178(v2, v27);
      v80 = v2;
      LOWORD(v81) = v27;
      BYTE2(v81) = BYTE2(v27);
      HIBYTE(v81) = BYTE3(v27);
      LOBYTE(v82) = BYTE4(v27);
      HIBYTE(v82) = BYTE5(v27);
      v83 = BYTE6(v27);
      if (v79 >= BYTE6(v27))
      {
        goto LABEL_123;
      }

      *(&v80 + v79) = v20;
      v2 = v80;
      v29 = v76 & 0xF00000000000000 | v81 | ((v82 | (v83 << 16)) << 32);
      v1 = v77;
      *v77 = v80;
      v77[1] = v29;
      v76 = v29;
LABEL_80:
      v52 = v29 >> 62;
      if ((v29 >> 62) > 1)
      {
        if (v52 != 2)
        {
          goto LABEL_149;
        }

        v53 = v29 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v2, v29);
        *v1 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        if (v16 < *(v2 + 16))
        {
          goto LABEL_127;
        }

        if (v16 >= *(v2 + 24))
        {
          goto LABEL_131;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v2 + 16);
          v55 = *(v2 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v54, __DataStorage._offset.getter()))
            {
              goto LABEL_139;
            }

            if (__OFSUB__(v55, v54))
            {
              goto LABEL_135;
            }
          }

          else if (__OFSUB__(v55, v54))
          {
            goto LABEL_135;
          }

          v64 = type metadata accessor for __DataStorage();
          v65 = *(v64 + 48);
          v66 = *(v64 + 52);
          swift_allocObject();
          v67 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v53 = v67;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = v16;
          v69 = *(v2 + 16);
          v70 = *(v2 + 24);
          type metadata accessor for Data.RangeReference();
          v71 = swift_allocObject();
          *(v71 + 16) = v69;
          *(v71 + 24) = v70;
          v16 = v68;

          v2 = v71;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v72 = __DataStorage._bytes.getter();
        if (!v72)
        {
          goto LABEL_152;
        }

        v73 = v72;
        v74 = __DataStorage._offset.getter();
        if (__OFSUB__(v16, v74))
        {
          goto LABEL_133;
        }

        *(v73 + v16 - v74) = v78;
        v3 = v53 | 0x8000000000000000;
LABEL_15:
        *v1 = v2;
        v1[1] = v3;
        goto LABEL_16;
      }

      if (v52)
      {
        v56 = v29 & 0x3FFFFFFFFFFFFFFFLL;

        sub_10006A178(v2, v29);
        *v1 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        if (v16 >= v2 >> 32 || v16 < v2)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v2, __DataStorage._offset.getter()))
          {
            goto LABEL_138;
          }

          v57 = type metadata accessor for __DataStorage();
          v58 = *(v57 + 48);
          v59 = *(v57 + 52);
          swift_allocObject();
          v60 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v56 = v60;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v61 = __DataStorage._bytes.getter();
        if (!v61)
        {
          goto LABEL_151;
        }

        v62 = v61;
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v16, v63))
        {
          goto LABEL_132;
        }

        *(v62 + v16 - v63) = v78;
        v3 = v56 | 0x4000000000000000;
        goto LABEL_15;
      }

      sub_10006A178(v2, v29);
      v80 = v2;
      LOWORD(v81) = v29;
      BYTE2(v81) = BYTE2(v29);
      HIBYTE(v81) = BYTE3(v29);
      LOBYTE(v82) = BYTE4(v29);
      HIBYTE(v82) = BYTE5(v29);
      v83 = BYTE6(v29);
      if (v16 >= BYTE6(v29))
      {
        goto LABEL_128;
      }

      v1 = v77;
      *(&v80 + v6 + 1) = v78;
      v2 = v80;
      v3 = v75 & 0xF00000000000000 | v81 | ((v82 | (v83 << 16)) << 32);
      *v77 = v80;
      v77[1] = v3;
      v75 = v3;
LABEL_16:
      if (++v79 >= v6--)
      {
        return;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_141;
    }

    if (v79 < *(v2 + 16))
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
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
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
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
      goto LABEL_140;
    }

    if (v79 >= *(v2 + 24))
    {
      goto LABEL_113;
    }

    v10 = __DataStorage._bytes.getter();
    if (!v10)
    {
      goto LABEL_144;
    }

    v11 = v10;
    v12 = __DataStorage._offset.getter();
    v13 = v79 - v12;
    if (__OFSUB__(v79, v12))
    {
      goto LABEL_117;
    }

    goto LABEL_33;
  }
}

uint64_t sub_1000A5CB0(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(char *, uint64_t))
{
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B288;
  swift_beginAccess();
  v11 = a1[2];
  v12 = a1[3];
  sub_100069E2C(a3, a4);

  sub_100069E2C(v11, v12);
  sub_100111E28(v11, v12, v10, a3, a4, a2, a1, a5);

  sub_10006A178(a3, a4);
  return sub_10006A178(v11, v12);
}

uint64_t sub_1000A5DD4(void *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v111 = a7;
  v123 = a6;
  v124 = a5;
  LODWORD(v122) = a2;
  v108 = a1;
  v119 = type metadata accessor for DispatchWorkItemFlags();
  v118 = *(v119 - 8);
  v9 = *(v118 + 64);
  __chkstk_darwin(v119);
  v116 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for DispatchQoS();
  v115 = *(v117 - 8);
  v11 = *(v115 + 64);
  __chkstk_darwin(v117);
  v114 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTimeInterval();
  v109 = *(v13 - 8);
  v14 = *(v109 + 64);
  __chkstk_darwin(v13);
  v16 = (&v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = type metadata accessor for DispatchTime();
  v112 = *(v113 - 8);
  v17 = *(v112 + 64);
  v18 = __chkstk_darwin(v113);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v110 = &v107 - v21;
  v121 = type metadata accessor for UUID();
  v120 = *(v121 - 8);
  v22 = *(v120 + 64);
  v23 = __chkstk_darwin(v121);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a3;
  v127 = a4;
  if (qword_1005019E8 != -1)
  {
    v23 = swift_once();
  }

  v26 = __chkstk_darwin(v23);
  *(&v107 - 2) = sub_1000B3FF4;
  *(&v107 - 1) = &v125;
  v28 = *(v27 + 24);
  __chkstk_darwin(v26);
  *(&v107 - 2) = sub_1000B3FF8;
  *(&v107 - 1) = v29;
  os_unfair_lock_lock(v28 + 8);
  sub_1000B3630(&v28[4], &aBlock);
  os_unfair_lock_unlock(v28 + 8);
  if (aBlock == 1)
  {
    v30 = v124;
    if (v122)
    {
      v31 = v123;

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v121 = v34;
        v122 = swift_slowAlloc();
        *&aBlock = v122;
        *v34 = 136315138;
        swift_beginAccess();
        v36 = v31[2];
        v35 = v31[3];
        sub_100069E2C(v36, v35);
        v37 = Data.description.getter();
        LODWORD(v123) = v33;
        v38 = v37;
        v40 = v39;
        v41 = v36;
        v30 = v124;
        sub_10006A178(v41, v35);
        v42 = sub_1002FFA0C(v38, v40, &aBlock);

        v43 = v121;
        *(v121 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v32, v123, "Failed to retrieve peripheral with address %s", v43, 0xCu);
        sub_1000752F4(v122);
      }

      v44 = v30;
      sub_1000A6DB8(a3, a4);
      if (qword_100501D90 != -1)
      {
        swift_once();
      }

      v124 = qword_10051B7F0;
      static DispatchTime.now()();
      *v16 = 5;
      v45 = v109;
      (*(v109 + 104))(v16, enum case for DispatchTimeInterval.seconds(_:), v13);
      v46 = v110;
      + infix(_:_:)();
      (*(v45 + 8))(v16, v13);
      v123 = *(v112 + 8);
      v47 = v113;
      (v123)(v20, v113);
      v48 = swift_allocObject();
      v48[2] = v44;
      v48[3] = a3;
      v48[4] = a4;
      v134 = sub_1000B364C;
      v135 = v48;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v133 = sub_100080830;
      *(&v133 + 1) = &unk_1004C6168;
      v49 = _Block_copy(&aBlock);
      sub_100069E2C(a3, a4);

      v50 = v114;
      static DispatchQoS.unspecified.getter();
      v131 = &_swiftEmptyArrayStorage;
      sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      v51 = v116;
      v52 = v119;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v49);
      (*(v118 + 8))(v51, v52);
      (*(v115 + 8))(v50, v117);
      (v123)(v46, v47);
    }

    else
    {
      v62 = [v108 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = type metadata accessor for Peer();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      v66 = sub_10025CF18(v25);
      v67 = (v66 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v68 = *(v66 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v69 = *(v66 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      *v67 = a3;
      v67[1] = a4;
      sub_100069E2C(a3, a4);
      sub_10006A2D0(v68, v69);
      swift_beginAccess();

      sub_1000D5D24(v130, v66);
      swift_endAccess();

      if (qword_100501B70 != -1)
      {
        swift_once();
      }

      v134 = 0;
      aBlock = 0u;
      v133 = 0u;
      sub_1002400AC(0, &aBlock);
      sub_100075768(&aBlock, &qword_100502F08, &qword_10040A000);
      v70 = v120;
      if (qword_100501B98 != -1)
      {
        swift_once();
      }

      v71 = *(qword_10051B5F8 + 16);
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;
      v75 = v123;
      swift_beginAccess();
      v76 = v75[2];
      v77 = v75[3];
      *(&v133 + 1) = &type metadata for Data;
      *&aBlock = v76;
      *(&aBlock + 1) = v77;
      sub_100075D50(&aBlock, v130);

      sub_100069E2C(v76, v77);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v71;
      sub_100315178(v130, v72, v74, isUniquelyReferenced_nonNull_native);

      v79 = v129;
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;
      v83 = v111;
      swift_beginAccess();
      v84 = *(v83 + 16);
      v85 = *(v83 + 24);
      *(&v133 + 1) = &type metadata for Data;
      *&aBlock = v84;
      *(&aBlock + 1) = v85;
      sub_100075D50(&aBlock, v130);
      sub_100069E2C(v84, v85);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v128 = v79;
      sub_100315178(v130, v80, v82, v86);

      v87 = v128;

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&aBlock = v91;
        *v90 = 136315138;

        v92 = UUID.uuidString.getter();
        v94 = v93;

        v95 = sub_1002FFA0C(v92, v94, &aBlock);

        *(v90 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v88, v89, "Requesting connection for First Approach %s", v90, 0xCu);
        sub_1000752F4(v91);
      }

      v96 = v121;
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_100068FC4(&qword_100503F10, &qword_10040A008);
      v97 = *(v70 + 72);
      v98 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100409A40;
      v100 = v99 + v98;
      if (qword_100501D30 != -1)
      {
        swift_once();
      }

      v101 = sub_1000958E4(v96, qword_10051B7A0);
      v102 = *(v70 + 16);
      v102(v100, v101, v96);
      if (qword_100501D20 != -1)
      {
        swift_once();
      }

      v103 = sub_1000958E4(v96, qword_10051B770);
      v102(v100 + v97, v103, v96);
      v104 = v100 + 2 * v97;
      if (qword_100501D28 != -1)
      {
        swift_once();
      }

      v105 = sub_1000958E4(v96, qword_10051B788);
      v102(v104, v105, v96);
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      v106 = swift_allocObject();
      *(v106 + 16) = v66;
      *(v106 + 24) = 893797958;
      *(v106 + 32) = 0xE400000000000000;
      *(v106 + 40) = v99;
      *(v106 + 64) = 0;
      *(v106 + 72) = 0;
      *(v106 + 80) = 1;
      *(v106 + 48) = v87;
      *(v106 + 56) = 0;
      *(v106 + 88) = sub_1000B3F10;
      *(v106 + 96) = v30;
      *(v106 + 104) = sub_1000B3FBC;
      *(v106 + 112) = v30;
      *(v106 + 120) = sub_1000B3F28;
      *(v106 + 128) = v30;
      *(v106 + 136) = sub_1000B3FAC;
      *(v106 + 144) = v30;
      *(v106 + 152) = sub_1000B3F38;
      *(v106 + 160) = v30;
      *(v106 + 168) = 0;
      *(v106 + 176) = 0;
      swift_retain_n();

      sub_1000EA4CC(v106, 0);
    }
  }

  else
  {
    sub_100069E2C(a3, a4);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    sub_10006A178(a3, a4);
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&aBlock = v56;
      *v55 = 136315138;
      *&v130[0] = sub_100288788(a3, a4);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v57 = BidirectionalCollection<>.joined(separator:)();
      v59 = v58;

      v60 = sub_1002FFA0C(v57, v59, &aBlock);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v53, v54, "Cancelling pending first approach due to missing endpoint %s", v55, 0xCu);
      sub_1000752F4(v56);
    }

    return sub_1000A6DB8(a3, a4);
  }
}

uint64_t sub_1000A6DB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v78 = a2;
  v81 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v9 = qword_10051B7F0;
    *v8 = qword_10051B7F0;
    (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
    v10 = v9;
    LOBYTE(v9) = _dispatchPreconditionTest(_:)();
    (*(v5 + 8))(v8, v4);
    if ((v9 & 1) == 0)
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      swift_once();
      goto LABEL_94;
    }

    v11 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers;
    swift_beginAccess();
    v12 = v78;
    sub_10010DEBC(v81, v78, &v84);
    result = swift_endAccess();
    if (*(&v84 + 1) >> 60 == 15)
    {
      return result;
    }

    sub_10006A2D0(v84, *(&v84 + 1));
    if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2 || *(*(v3 + v11) + 16))
    {
      v74 = 0;
      goto LABEL_7;
    }

    if (qword_1005019E8 != -1)
    {
      goto LABEL_112;
    }

LABEL_94:
    v59 = *(off_100504A68 + 3);
    os_unfair_lock_lock((v59 + 32));
    sub_1000B3EF8((v59 + 16));
    v74 = 0;
    os_unfair_lock_unlock((v59 + 32));
    v12 = v78;
LABEL_7:
    v14 = OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachPeers;
    swift_beginAccess();
    v68 = v14;
    v15 = *(v3 + v14);
    v69 = v3;
    v76 = v15;
    if ((v15 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer();
      sub_1000B2B6C(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v4 = v85;
      v16 = v86;
      v8 = v87;
      v17 = v88;
      v18 = v89;
    }

    else
    {
      v19 = -1 << *(v15 + 32);
      v16 = v15 + 56;
      v8 = ~v19;
      v20 = -v19;
      v21 = v20 < 64 ? ~(-1 << v20) : -1;
      v18 = v21 & *(v15 + 56);
      v4 = v15;
      swift_bridgeObjectRetain_n();
      v17 = 0;
    }

    v75 = v8;
    v3 = (v8 + 64) >> 6;
    v22 = !v81 && v12 == 0xC000000000000000;
    v23 = !v22;
    v73 = v23;
    v77 = v12 >> 62;
    v24 = __OFSUB__(HIDWORD(v81), v81);
    v71 = v24;
    v70 = HIDWORD(v81) - v81;
    v72 = BYTE6(v12);
    v79 = v4;
    v5 = v17;
    if (v4 < 0)
    {
      break;
    }

    while (1)
    {
      v29 = v5;
      v30 = v18;
      v27 = v5;
      if (!v18)
      {
        break;
      }

LABEL_30:
      v28 = (v30 - 1) & v30;
      v26 = *(*(v4 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v30)))));

      if (!v26)
      {
        goto LABEL_91;
      }

LABEL_31:
      v80 = v28;
      v32 = *(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v31 = *(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      if (v31 >> 60 == 15)
      {
        if (v12 >> 60 == 15)
        {
          sub_10006A2BC(*(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
          sub_100069E2C(v81, v12);
          sub_100093854();
          sub_10006A2D0(v32, v31);
          goto LABEL_98;
        }

LABEL_35:
        sub_10006A2BC(*(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
        v8 = v81;
        sub_100069E2C(v81, v12);

        sub_10006A2D0(v32, v31);
        sub_10006A2D0(v8, v12);
        v4 = v79;
        v18 = v80;
        v5 = v27;
        if (v79 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v12 >> 60 == 15)
        {
          goto LABEL_35;
        }

        v33 = v31 >> 62;
        if (v31 >> 62 == 3)
        {
          if (v32)
          {
            v34 = 0;
          }

          else
          {
            v34 = v31 == 0xC000000000000000;
          }

          v35 = v77;
          v37 = !v34 || v77 < 3;
          if (((v37 | v73) & 1) == 0)
          {
            sub_10006A2BC(0, 0xC000000000000000);
            sub_100069E2C(0, 0xC000000000000000);
            sub_10006A2D0(0, 0xC000000000000000);
            v32 = 0;
LABEL_96:
            sub_10006A2D0(v32, v31);
LABEL_97:
            sub_100093854();
LABEL_98:

            v12 = v69;
            swift_beginAccess();
            sub_10010DAA4();
            swift_endAccess();

            swift_beginAccess();
            sub_10010DAA4();
            swift_endAccess();

            if (qword_100501960 == -1)
            {
LABEL_99:
              sub_1000E67E4(v26);
              if (*(v12 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
              {
                v61 = *(v12 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

                if (static UUID.== infix(_:_:)())
                {
                  sub_100099870(2);
                }
              }

              if (qword_100501B70 == -1)
              {
LABEL_104:
                v62 = qword_10051B5B0;

                v63 = sub_10024F2B4(v62, v26);

                v64 = sub_1000CA828(v63);

                if (v64)
                {
                  sub_100246878();
                }
              }

LABEL_118:
              swift_once();
              goto LABEL_104;
            }

LABEL_115:
            swift_once();
            goto LABEL_99;
          }

LABEL_59:
          v38 = 0;
          if (v35 <= 1)
          {
            goto LABEL_56;
          }

          goto LABEL_60;
        }

        v35 = v77;
        if (v33 > 1)
        {
          if (v33 != 2)
          {
            goto LABEL_59;
          }

          v40 = *(v32 + 16);
          v39 = *(v32 + 24);
          v41 = __OFSUB__(v39, v40);
          v38 = v39 - v40;
          if (v41)
          {
            goto LABEL_114;
          }

          if (v77 <= 1)
          {
            goto LABEL_56;
          }
        }

        else if (v33)
        {
          LODWORD(v38) = HIDWORD(v32) - v32;
          if (__OFSUB__(HIDWORD(v32), v32))
          {
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          v38 = v38;
          if (v77 <= 1)
          {
LABEL_56:
            v42 = v72;
            if (v35)
            {
              v42 = v70;
              if (v71)
              {
                goto LABEL_111;
              }
            }

            goto LABEL_62;
          }
        }

        else
        {
          v38 = BYTE6(v31);
          if (v77 <= 1)
          {
            goto LABEL_56;
          }
        }

LABEL_60:
        if (v35 != 2)
        {
          if (!v38)
          {
LABEL_95:
            sub_10006A2BC(*(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
            v60 = v81;
            sub_100069E2C(v81, v12);
            sub_10006A2D0(v60, v12);
            goto LABEL_96;
          }

LABEL_68:
          sub_10006A2BC(*(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
          v8 = v81;
          sub_100069E2C(v81, v12);
          sub_10006A2D0(v8, v12);
          sub_10006A2D0(v32, v31);
          goto LABEL_89;
        }

        v44 = *(v81 + 16);
        v43 = *(v81 + 24);
        v41 = __OFSUB__(v43, v44);
        v42 = v43 - v44;
        if (v41)
        {
          goto LABEL_110;
        }

LABEL_62:
        if (v38 != v42)
        {
          goto LABEL_68;
        }

        if (v38 < 1)
        {
          goto LABEL_95;
        }

        if (v33 > 1)
        {
          if (v33 != 2)
          {
            memset(v83, 0, 14);
            sub_10006A2BC(v32, v31);
            sub_10006A2BC(v32, v31);
            v45 = v81;
            sub_100069E2C(v81, v12);
            goto LABEL_81;
          }

          v46 = *(v32 + 24);
          v67 = *(v32 + 16);
          v66 = v46;
          sub_10006A2BC(v32, v31);
          sub_10006A2BC(v32, v31);
          sub_100069E2C(v81, v12);
          v47 = __DataStorage._bytes.getter();
          if (v47)
          {
            v48 = v47;
            v49 = __DataStorage._offset.getter();
            v50 = v67;
            if (__OFSUB__(v67, v49))
            {
              __break(1u);
LABEL_120:
              __break(1u);
            }

            v65 = &v67[v48 - v49];
          }

          else
          {
            v65 = 0;
            v50 = v67;
          }

          if (__OFSUB__(v66, v50))
          {
            goto LABEL_117;
          }

          __DataStorage._length.getter();
          v56 = v65;
        }

        else
        {
          if (!v33)
          {
            v83[0] = *(v26 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
            LOWORD(v83[1]) = v31;
            BYTE2(v83[1]) = BYTE2(v31);
            BYTE3(v83[1]) = BYTE3(v31);
            BYTE4(v83[1]) = BYTE4(v31);
            BYTE5(v83[1]) = BYTE5(v31);
            v67 = v83 + BYTE6(v31);
            sub_10006A2BC(v32, v31);
            sub_10006A2BC(v32, v31);
            v45 = v81;
            sub_100069E2C(v81, v12);
LABEL_81:
            v54 = v12;
            v55 = v74;
            sub_10019F024(v83, v45, v54, &v82);
            v74 = v55;
            v12 = v78;
            sub_10006A2D0(v32, v31);
            sub_10006A2D0(v45, v12);
            v8 = v82;
            goto LABEL_88;
          }

          v67 = ((v32 >> 32) - v32);
          if (v32 >> 32 < v32)
          {
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          sub_10006A2BC(v32, v31);
          sub_10006A2BC(v32, v31);
          sub_100069E2C(v81, v78);
          v51 = __DataStorage._bytes.getter();
          if (v51)
          {
            v66 = v51;
            v52 = __DataStorage._offset.getter();
            if (__OFSUB__(v32, v52))
            {
              goto LABEL_120;
            }

            v53 = v32 - v52 + v66;
          }

          else
          {
            v53 = 0;
          }

          __DataStorage._length.getter();
          v56 = v53;
        }

        v57 = v78;
        v58 = v74;
        sub_10019F024(v56, v81, v78, v83);
        v74 = v58;
        v12 = v57;
        sub_10006A2D0(v32, v31);
        sub_10006A2D0(v81, v57);
        v8 = LOBYTE(v83[0]);
LABEL_88:
        sub_10006A2D0(v32, v31);
        if (v8)
        {
          goto LABEL_97;
        }

LABEL_89:
        v4 = v79;

        v18 = v80;
        v5 = v27;
        if (v4 < 0)
        {
          goto LABEL_23;
        }
      }
    }

    while (1)
    {
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v27 >= v3)
      {
        goto LABEL_91;
      }

      v30 = *(v16 + 8 * v27);
      ++v29;
      if (v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_108:
    swift_once();
  }

LABEL_23:
  v25 = __CocoaSet.Iterator.next()();
  if (v25)
  {
    v82 = v25;
    type metadata accessor for Peer();
    swift_dynamicCast();
    v26 = v83[0];
    v27 = v5;
    v28 = v18;
    if (v83[0])
    {
      goto LABEL_31;
    }
  }

LABEL_91:
  sub_100093854();
}

uint64_t sub_1000A798C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 publicKeyIdentifier];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  LOBYTE(a3) = sub_10008FB4C(v7, v9, a2, a3);
  sub_10006A178(v7, v9);
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v10 = [a1 bleUUID];
  if (v10)
  {

    return 0;
  }

  result = [a1 blePairingRequest];
  if (result)
  {

    v12 = [a1 revocationAttestation];
    if (!v12)
    {
      return 1;
    }

    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10006A178(v14, v16);
    return 0;
  }

  return result;
}

uint64_t sub_1000A7AA0(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B288;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  sub_100069E2C(a2, a3);
  v13 = qword_100501D90;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    a1 = sub_10012E6B0(0, a1[2] + 1, 1, a1);
    *(v11 + v6) = a1;
    goto LABEL_13;
  }

  v16 = *(v11 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v16 == 10 || v16 == 5)
  {
    sub_1000976F4(a2, a3);
  }

  a3 = swift_allocObject();
  *(a3 + 16) = sub_1000B3908;
  *(a3 + 24) = v12;
  v6 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  a1 = *(v11 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + v6) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  v20 = a1[2];
  v19 = a1[3];
  if (v20 >= v19 >> 1)
  {
    a1 = sub_10012E6B0((v19 > 1), v20 + 1, 1, a1);
  }

  a1[2] = v20 + 1;
  v21 = &a1[3 * v20];
  *(v21 + 32) = 1;
  v21[5] = sub_1000B3FF0;
  v21[6] = a3;
  *(v11 + v6) = a1;
  swift_endAccess();
}

uint64_t sub_1000A7D8C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v9 = OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing;
    swift_beginAccess();
    a1 = *(v9 + v2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + v2) = a1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  a1 = sub_10012EDCC(0, a1[2] + 1, 1, a1);
  *(v9 + v2) = a1;
LABEL_5:
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13 >> 1)
  {
    a1 = sub_10012EDCC((v13 > 1), v14 + 1, 1, a1);
  }

  a1[2] = v14 + 1;
  v15 = &a1[2 * v14];
  v15[4] = sub_1000B3564;
  v15[5] = v5;
  *(v9 + v2) = a1;
  return swift_endAccess();
}

void sub_1000A7FAC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
    if (v10)
    {
      v11 = *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8);
      *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 0;

      sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Restarting Owner Pairing", v14, 2u);
      }

      sub_100095A74(v10, v11);
      sub_1000B2A4C(v10);
    }

    else
    {
      sub_100099870(2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A81DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    if (v11 >> 60 != 15)
    {
      v12 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      sub_100069E2C(v12, v11);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Restarting First Approach", v15, 2u);
      }

      sub_1000A6DB8(v12, v11);
      sub_1000976F4(v12, v11);
      return sub_10006A2D0(v12, v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000A83F0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = UUID.uuidString.getter();
    v15 = sub_1002FFA0C(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "UWB Alisha session started running for %s", v11, 0xCu);
    sub_1000752F4(v12);
  }

  if (qword_100501BA0 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1002553AC(a1);
}

void sub_1000A8668(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = UUID.uuidString.getter();
      v16 = sub_1002FFA0C(v14, v15, &v22);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = sub_1002482E8(a1);
      v19 = sub_1002FFA0C(v17, v18, &v22);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "UWB Alisha session suspended for %s %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2 && *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
    {
      v20 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

      if (static UUID.== infix(_:_:)())
      {
        sub_100099870(4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000A8948()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = UUID.uuidString.getter();
      v13 = sub_1002FFA0C(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "UWB Alisha session resumed for %s", v9, 0xCu);
      sub_1000752F4(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A8B78(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_100501960 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  sub_1000E71A0(a1, a2, a3);
  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B5A0;

  sub_10023A8F8(a1, a2, 1, a3, v15, v4, a3);
}

_BYTE *sub_1000A8E24(_BYTE *result, uint64_t a2, int64_t a3)
{
  if (*result != 5 || result[1] != 13)
  {
    return result;
  }

  if (*(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2 && *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
  {
    v5 = *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

    if (static UUID.== infix(_:_:)())
    {
      v6 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
      if (*(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 2)
      {
        v7 = *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart);
        if (v7)
        {
          v8 = *(a2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8);

          v7(0);
          sub_1000B2A4C(v7);
        }

        *(a2 + v6) = 3;
        sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
        v9 = sub_1002B3B94(&off_1004C3970);
        v11 = v10;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v20 = v9;
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v21 = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_1002FFA0C(0xD000000000000015, 0x80000001004621E0, &v21);
          _os_log_impl(&_mh_execute_header, v12, v13, "Sending %s", v14, 0xCu);
          sub_1000752F4(v15);

          v9 = v20;
        }

        if (qword_100501B60 != -1)
        {
          swift_once();
        }

        v16 = sub_100239160(3, 17, v9, v11);
        v18 = v17;
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E71A0(v16, v18, a3);
        sub_10006A178(v9, v11);

        return sub_10006A178(v16, v18);
      }

      else
      {
      }
    }
  }

  swift_beginAccess();

  v19 = sub_1000D5D24(&v22, a3);
  swift_endAccess();

  if (v19)
  {
    return sub_10009CCF8();
  }

  return result;
}

void sub_1000A92D4(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
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

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315394;
      v18[7] = a1;
      v12 = String.init<A>(describing:)();
      v14 = sub_1002FFA0C(v12, v13, &v19);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      v15 = UUID.uuidString.getter();
      v17 = sub_1002FFA0C(v15, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "UWB Alisha session health update %s for %s", v11, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A9558(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v39 = a2[5];
  v40 = a3;
  v10 = a2[6];
  v37 = v5;
  v38 = v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  __chkstk_darwin(v11);
  v42 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v44 = *(v14 - 8);
  v45 = v14;
  v15 = *(v44 + 64);
  __chkstk_darwin(v14);
  v41 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 publicKeyIdentifier];
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  aBlock = sub_100288788(v18, v20);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  BidirectionalCollection<>.joined(separator:)();
  sub_10006A178(v18, v20);

  v36[0] = String._bridgeToObjectiveC()();

  v21 = swift_allocObject();
  v22 = v38;
  v21[2] = v37;
  v21[3] = v6;
  v21[4] = v7;
  v21[5] = v8;
  v24 = v39;
  v23 = v40;
  v21[6] = v9;
  v21[7] = v24;
  v21[8] = v22;
  v21[9] = v23;
  v53 = sub_1000B2B60;
  v54 = v21;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v36[1] = &v51;
  v51 = sub_1000A409C;
  v52 = &unk_1004C5FB0;
  v25 = _Block_copy(&aBlock);

  sub_100069E2C(v6, v7);
  sub_100069E2C(v8, v9);
  sub_100069E2C(v24, v22);

  v26 = v36[0];
  v27 = SESEndPointUpdateWithBlock();
  _Block_release(v25);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v28 = swift_allocObject();
  v29 = v43;
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  v53 = sub_1000B2B64;
  v54 = v28;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_100080830;
  v52 = &unk_1004C6000;
  v30 = _Block_copy(&aBlock);
  v31 = v27;

  v32 = v41;
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_1000B2B6C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  v33 = v42;
  v34 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v46 + 8))(v33, v34);
  (*(v44 + 8))(v32, v45);
}

void sub_1000A9A78(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 setBleAddress:isa];

  UUID.uuidString.getter();
  v6 = String._bridgeToObjectiveC()();

  [a1 setBleUUID:v6];
}

void sub_1000A9B20(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, v1, v2, "Failed to update BLE data for endpoint %@", v3, 0xCu);
      sub_100075768(v4, &unk_100503F70, &unk_10040B2E0);
    }

    sub_100099870(2);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Endpoint updated with BLE UUID", v7, 2u);
    }
  }
}

uint64_t sub_1000A9CF4(uint64_t a1, uint64_t a2)
{
  v103 = a1;
  v3 = 0;
  v4 = type metadata accessor for Logger();
  v86 = *(v4 - 8);
  v5 = *(v86 + 64);
  __chkstk_darwin(v4);
  v85 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v104 = *(v7 - 8);
  v8 = *(v104 + 64);
  __chkstk_darwin(v7);
  v82[0] = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v82 - v11;
  __chkstk_darwin(v13);
  v15 = v82 - v14;
  __chkstk_darwin(v16);
  v100 = v82 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(*(v18 - 8) + 64);
  v21.n128_f64[0] = __chkstk_darwin(v18);
  v23 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v24;
  if (qword_100501D90 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v25 = qword_10051B7F0;
    *v23 = qword_10051B7F0;
    v26 = *(v20 + 104);
    v94 = enum case for DispatchPredicate.onQueue(_:);
    v27 = v20;
    v92 = v26;
    v93 = v20 + 104;
    v26(v23, v21);
    v91 = v25;
    v28 = _dispatchPreconditionTest(_:)();
    v29 = *(v27 + 8);
    v95 = v23;
    v96 = v27 + 8;
    v90 = v29;
    v29(v23, v18);
    if (v28)
    {
      v89 = v12;
      v23 = v7;
      v98 = a2;
      v18 = v103;
      v30 = *(v103 + 32);
      v31 = v30 & 0x3F;
      v12 = ((1 << v30) + 63) >> 6;
      v28 = 8 * v12;

      v99 = v15;
      if (v31 <= 0xD)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
LABEL_4:
      v83 = v12;
      v84 = v4;
      v82[1] = v82;
      __chkstk_darwin(isStackAllocationSafe);
      v87 = v82 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v87, v28);
      v88 = 0;
      v12 = 0;
      v4 = v18 + 56;
      v33 = 1 << *(v18 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v15 = v34 & *(v18 + 56);
      v35 = (v33 + 63) >> 6;
      v101 = (v104 + 8);
      v102 = v104 + 16;
      v7 = v23;
      v23 = v100;
      while (v15)
      {
        v36 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v39 = v36 | (v12 << 6);
        v40 = *(v18 + 48);
        v41 = *(v104 + 72);
        v100 = v39;
        v42 = (*(v104 + 16))(v23, v40 + v41 * v39, v7);
        __chkstk_darwin(v42);
        v82[-2] = v23;
        if (qword_100501D78 != -1)
        {
          v43 = swift_once();
        }

        __chkstk_darwin(v43);
        v82[-2] = sub_1000B3510;
        v82[-1] = &v82[-4];
        v45 = *(v44 + 24);
        __chkstk_darwin(v46);
        v82[-2] = sub_100078968;
        v82[-1] = v47;
        os_unfair_lock_lock(v45 + 8);
        sub_1000B3514(&v45[4], v105);
        os_unfair_lock_unlock(v45 + 8);
        a2 = v105[0];
        (*v101)(v23, v7);
        v18 = v103;
        if ((a2 & 1) == 0)
        {
          *&v87[(v100 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v100;
          if (__OFADD__(v88++, 1))
          {
            __break(1u);
          }
        }
      }

      v37 = v12;
      while (1)
      {
        v12 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v12 >= v35)
        {
          v23 = sub_10024ACE0(v87, v83, v88, v18);
          v4 = v84;
          goto LABEL_21;
        }

        v38 = *(v4 + 8 * v12);
        ++v37;
        if (v38)
        {
          v36 = __clz(__rbit64(v38));
          v15 = (v38 - 1) & v38;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_50;
    }

    v80 = swift_slowAlloc();
    v81 = sub_1000AFE40(v80, v12, v18, sub_1000AA884);

    v7 = v23;
    v23 = v81;
LABEL_21:
    v49 = v86;
    v15 = v85;
    if (!*(v23 + 2))
    {
      break;
    }

    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    (*(v49 + 16))(v15, qword_10051B5A0 + OBJC_IVAR____TtC10seserviced6Alisha_logger, v4);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      *(v52 + 4) = *(v23 + 2);

      _os_log_impl(&_mh_execute_header, v50, v51, "Unpairing %ld unknown paired peers", v52, 0xCu);
    }

    else
    {
    }

    (*(v49 + 8))(v15, v4);
    a2 = (v23 + 56);
    v58 = 1 << v23[32];
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v15 = v59 & *(v23 + 7);
    v85 = OBJC_IVAR____TtC10seserviced13AlishaPairing_unpairingPeerIdentifiers;
    v60 = ((v58 + 63) >> 6);
    v102 = 0x80000001004607F0;
    v103 = v104 + 16;
    v101 = (v104 + 32);
    v86 = v104 + 8;

    v61 = 0;
    v88 = v23 + 56;
    v87 = v60;
    v100 = v23;
    while (v15)
    {
      v12 = v61;
      v4 = v99;
LABEL_43:
      v62 = *(v104 + 16);
      v62(v4, *(v23 + 6) + *(v104 + 72) * (__clz(__rbit64(v15)) | (v12 << 6)), v7);
      v63 = v95;
      v65 = v91;
      v64 = v92;
      *v95 = v91;
      a2 = v97;
      v64(v63, v94, v97);
      v66 = v65;
      LOBYTE(v65) = _dispatchPreconditionTest(_:)();
      v90(v63, a2);
      if ((v65 & 1) == 0)
      {
        goto LABEL_52;
      }

      if (qword_100501968 != -1)
      {
        swift_once();
      }

      v15 &= v15 - 1;
      v67 = v89;
      v62(v89, v4, v7);
      v68 = type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
      v69 = *(v68 + 48);
      v70 = *(v68 + 52);
      v71 = swift_allocObject();
      (*v101)(v71 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v67, v7);
      v72 = (v71 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
      *v72 = 0xD000000000000011;
      v72[1] = v102;
      v73 = (v71 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
      v74 = v4;
      v75 = v7;
      v76 = v98;
      *v73 = sub_1000B3FA0;
      v73[1] = v76;

      sub_1000E82EC();
      if (v3)
      {
        (*v86)(v74, v75);

        v3 = 0;
      }

      else
      {

        v77 = v82[0];
        v62(v82[0], v74, v75);
        swift_beginAccess();
        sub_1000D6D84(v67, v77);
        swift_endAccess();
        v78 = *v86;
        (*v86)(v67, v75);
        v78(v74, v75);
      }

      v61 = v12;
      v7 = v75;
      v23 = v100;
      a2 = v88;
      v60 = v87;
    }

    v4 = v99;
    while (1)
    {
      v12 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v12 >= v60)
      {
      }

      v15 = *(a2 + 8 * v12);
      ++v61;
      if (v15)
      {
        goto LABEL_43;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v79 = v20;
    swift_once();
    v20 = v79;
    v18 = v97;
  }

  v53 = OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing;
  v54 = v98;
  swift_beginAccess();
  a2 = *(v54 + v53);
  v3 = *(a2 + 16);

  if (v3)
  {
    v7 = 0;
    v12 = a2 + 40;
    while (v7 < *(a2 + 16))
    {
      ++v7;
      v15 = *(v12 - 8);
      v55 = *v12;

      (v15)(v56);

      v12 += 16;
      if (v3 == v7)
      {
      }
    }

    goto LABEL_51;
  }
}

void sub_1000AA884(uint64_t a1)
{
  if (qword_100501D78 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  v3 = *(v2 + 24);
  __chkstk_darwin(v4);
  os_unfair_lock_lock(v3 + 8);
  sub_1000B3FC0(&v3[4], &v5);
  os_unfair_lock_unlock(v3 + 8);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1000AA9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, int64_t a9@<X8>, char a10, uint64_t a11, unint64_t a12, uint64_t a13)
{
  v13 = a6;
  v15 = a4;
  v16 = a3;
  v19 = a12;
  v20 = a13;
  v21 = a11;
  v22 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_17;
  }

  v200 = a13;
  if (!v22)
  {
    v212[0] = a3;
    LOWORD(v212[1]) = a4;
    BYTE2(v212[1]) = BYTE2(a4);
    BYTE3(v212[1]) = BYTE3(a4);
    BYTE4(v212[1]) = BYTE4(a4);
    v22 = a6 >> 62;
    BYTE5(v212[1]) = BYTE5(a4);
    if ((a6 >> 62) > 1)
    {
      goto LABEL_44;
    }

    if (v22)
    {
      v198 = a9;
      v58 = a3;
      if (a5 > a5 >> 32)
      {
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v207 = a12;
      sub_100069E2C(a11, a12);
      sub_100069E2C(a5, v13);
      v69 = __DataStorage._bytes.getter();
      if (v69)
      {
        v70 = v69;
        v71 = __DataStorage._offset.getter();
        if (__OFSUB__(a5, v71))
        {
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        v72 = a5 - v71 + v70;
        goto LABEL_132;
      }

LABEL_131:
      v72 = 0;
LABEL_132:
      v25 = v58;
      __DataStorage._length.getter();
      v112 = *a7;
      v113 = a7[1];
      v114 = v113 >> 62;
      v197 = v72;
      if ((v113 >> 62) > 1)
      {
        goto LABEL_144;
      }

      v115 = v207;
      v116 = a11;
      if (v114)
      {
        v142 = *a7;
        sub_100069E2C(a11, v207);
        sub_100069E2C(v25, v15);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a11, v207);
        sub_100069E2C(v25, v15);
        v118 = v113 & 0x3FFFFFFFFFFFFFFFLL;
        sub_100069E2C(a11, v207);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        sub_100069E2C(v142, v113);
        sub_10006A178(v142, v113);
        *a7 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        a9 = v142;
        v192 = v142;
        v143 = v142 >> 32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v143 < a9)
          {
LABEL_211:
            __break(1u);
            goto LABEL_212;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(a9, __DataStorage._offset.getter()))
          {
            goto LABEL_219;
          }

          v144 = type metadata accessor for __DataStorage();
          v145 = *(v144 + 48);
          v146 = *(v144 + 52);
          swift_allocObject();
          v147 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v118 = v147;
        }

        if (v143 < a9)
        {
          goto LABEL_202;
        }

        sub_100069E2C(a11, v207);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);

        v23 = v118;
        v31 = __DataStorage._bytes.getter();
        v58 = v197;
        if (!v31)
        {
          goto LABEL_235;
        }

        v124 = v31;
        v113 = v118;
        v148 = __DataStorage._offset.getter();
        v114 = a9 - v148;
        if (!__OFSUB__(a9, v148))
        {
          goto LABEL_177;
        }

        __break(1u);
LABEL_144:
        v126 = v207;
        a9 = a11;
        if (v114 != 2)
        {
          goto LABEL_157;
        }

        v149 = v112;
        sub_100069E2C(a11, v207);
        sub_100069E2C(v25, v15);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a11, v207);
        sub_100069E2C(v25, v15);
        sub_100069E2C(a11, v207);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        sub_100069E2C(v149, v113);
        sub_10006A178(v149, v113);
        *&v211 = v149;
        *(&v211 + 1) = v113 & 0x3FFFFFFFFFFFFFFFLL;
        *a7 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        Data.LargeSlice.ensureUniqueReference()();
        v23 = *(&v211 + 1);
        v193 = v211;
        v150 = *(v211 + 16);
        sub_100069E2C(a11, v207);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v129 = v31;
          v151 = __DataStorage._offset.getter();
          v131 = v150 - v151;
          if (!__OFSUB__(v150, v151))
          {
            goto LABEL_156;
          }

          __break(1u);
          goto LABEL_149;
        }

LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
        goto LABEL_236;
      }

LABEL_152:
      v153 = v112 >> 8;
      v182 = v112 >> 16;
      v183 = v112 >> 24;
      v184 = HIDWORD(v112);
      v185 = v112 >> 40;
      v186 = HIWORD(v112);
      v187 = HIBYTE(v112);
      v154 = v112;
      v155 = v115;
      sub_100069E2C(v116, v115);
      sub_100069E2C(v25, v15);
      sub_100069E2C(a5, v13);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v116, v155);
      sub_100069E2C(v25, v15);
      sub_100069E2C(v116, v155);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v25, v15);
      sub_10006A178(v154, v113);
      LOBYTE(v211) = v154;
      BYTE1(v211) = v153;
      BYTE2(v211) = v182;
      BYTE3(v211) = v183;
      BYTE4(v211) = v184;
      BYTE5(v211) = v185;
      BYTE6(v211) = v186;
      BYTE7(v211) = v187;
      WORD4(v211) = v113;
      BYTE10(v211) = BYTE2(v113);
      BYTE11(v211) = BYTE3(v113);
      BYTE12(v211) = BYTE4(v113);
      BYTE13(v211) = BYTE5(v113);
      BYTE14(v211) = BYTE6(v113);
      sub_100069E2C(v116, v155);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v25, v15);
      v204 = sub_1000B089C(a8, a10 & 1, v25, v15, v212, a5, v13, v197, v116, v155, a1, &v211, v200);
      sub_10006A178(v116, v155);
      sub_10006A178(a5, v13);
      sub_10006A178(v25, v15);
      v156 = v211;
      v157 = DWORD2(v211) | ((WORD6(v211) | (BYTE14(v211) << 16)) << 32);
      sub_10006A178(v25, v15);
      sub_10006A178(a5, v13);
      sub_10006A178(v116, v155);
      sub_10006A178(v25, v15);
      *a7 = v156;
      a7[1] = v157;
      sub_10006A178(a5, v13);
      sub_10006A178(v116, v155);
      sub_10006A178(v116, v155);
      sub_10006A178(a5, v13);
      sub_10006A178(v25, v15);
      v158 = v116;
LABEL_178:
      v164 = v155;
      goto LABEL_179;
    }

    v210[0] = a5;
    LOWORD(v210[1]) = a6;
    BYTE2(v210[1]) = BYTE2(a6);
    BYTE3(v210[1]) = BYTE3(a6);
    BYTE4(v210[1]) = BYTE4(a6);
    a2 = *a7;
    v23 = a7[1];
    v24 = v23 >> 62;
    BYTE5(v210[1]) = BYTE5(a6);
    if ((v23 >> 62) > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_94;
      }

      v199 = a9;
      v25 = a12;
      sub_100069E2C(a5, a6);
      sub_100069E2C(a11, a12);
      sub_100069E2C(a5, v13);
      sub_100069E2C(a11, a12);
      sub_100069E2C(v16, v15);
      sub_100069E2C(a11, a12);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v16, v15);
      sub_100069E2C(a2, v23);
      sub_10006A178(a2, v23);
      *&v211 = a2;
      *(&v211 + 1) = v23 & 0x3FFFFFFFFFFFFFFFLL;
      *a7 = xmmword_1004098D0;
      sub_10006A178(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v23 = *(&v211 + 1);
      v88 = v16;
      v208 = v211;
      v16 = *(v211 + 16);
      a9 = a12;
      sub_100069E2C(a11, a12);
      sub_100069E2C(a5, v13);
      v89 = v15;
      v15 = v88;
      a2 = v89;
      sub_100069E2C(v88, v89);
      v31 = __DataStorage._bytes.getter();
      if (!v31)
      {
        __break(1u);
        goto LABEL_222;
      }

      v90 = v31;
      v91 = __DataStorage._offset.getter();
      v50 = v16 - v91;
      if (!__OFSUB__(v16, v91))
      {
        goto LABEL_93;
      }

      __break(1u);
LABEL_80:
      if (v50 != 2)
      {
        goto LABEL_94;
      }

      v199 = a9;
      v92 = v21;
      v25 = v19;
      sub_100069E2C(a5, v13);
      sub_100069E2C(v92, v25);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v92, v25);
      sub_100069E2C(v16, v15);
      sub_100069E2C(v92, v25);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v16, v15);
      sub_100069E2C(a2, v23);
      sub_10006A178(a2, v23);
      *&v211 = a2;
      *(&v211 + 1) = v23 & 0x3FFFFFFFFFFFFFFFLL;
      *a7 = xmmword_1004098D0;
      sub_10006A178(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v23 = *(&v211 + 1);
      v93 = v16;
      v208 = v211;
      v16 = *(v211 + 16);
      v94 = v92;
      a9 = v25;
      sub_100069E2C(v94, v25);
      sub_100069E2C(a5, v13);
      v95 = v15;
      v15 = v93;
      a2 = v95;
      sub_100069E2C(v93, v95);
      v31 = __DataStorage._bytes.getter();
      if (v31)
      {
        v90 = v31;
        v96 = __DataStorage._offset.getter();
        v50 = v16 - v96;
        if (!__OFSUB__(v16, v96))
        {
          goto LABEL_93;
        }

        __break(1u);
LABEL_85:
        if (v50 != 2)
        {
          goto LABEL_94;
        }

        v199 = a9;
        v97 = v21;
        v25 = v19;
        sub_100069E2C(a5, v13);
        sub_100069E2C(v97, v25);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v97, v25);
        sub_100069E2C(v16, v15);
        sub_100069E2C(v97, v25);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v16, v15);
        sub_100069E2C(a2, v23);
        sub_10006A178(a2, v23);
        *&v211 = a2;
        *(&v211 + 1) = v23 & 0x3FFFFFFFFFFFFFFFLL;
        *a7 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        Data.LargeSlice.ensureUniqueReference()();
        v23 = *(&v211 + 1);
        v98 = v16;
        v208 = v211;
        v16 = *(v211 + 16);
        v99 = v97;
        a9 = v25;
        sub_100069E2C(v99, v25);
        sub_100069E2C(a5, v13);
        v100 = v15;
        v15 = v98;
        a2 = v100;
        sub_100069E2C(v98, v100);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v90 = v31;
          v101 = __DataStorage._offset.getter();
          v50 = v16 - v101;
          if (!__OFSUB__(v16, v101))
          {
            goto LABEL_93;
          }

          __break(1u);
LABEL_90:
          if (v50 == 2)
          {
            v199 = a9;
            v102 = v21;
            v25 = v19;
            sub_100069E2C(a5, v13);
            sub_100069E2C(v102, v25);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v102, v25);
            sub_100069E2C(v16, v15);
            sub_100069E2C(v102, v25);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v16, v15);
            sub_100069E2C(a2, v23);
            sub_10006A178(a2, v23);
            *&v211 = a2;
            *(&v211 + 1) = v23 & 0x3FFFFFFFFFFFFFFFLL;
            *a7 = xmmword_1004098D0;
            sub_10006A178(0, 0xC000000000000000);
            Data.LargeSlice.ensureUniqueReference()();
            v23 = *(&v211 + 1);
            v103 = v16;
            v208 = v211;
            v104 = *(v211 + 16);
            v105 = v102;
            a9 = v25;
            sub_100069E2C(v105, v25);
            sub_100069E2C(a5, v13);
            v106 = v15;
            v15 = v103;
            a2 = v106;
            sub_100069E2C(v103, v106);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v90 = v31;
              v107 = __DataStorage._offset.getter();
              v50 = v104 - v107;
              if (__OFSUB__(v104, v107))
              {
LABEL_193:
                __break(1u);
LABEL_194:
                __break(1u);
LABEL_195:
                __break(1u);
LABEL_196:
                __break(1u);
LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
                goto LABEL_200;
              }

LABEL_93:
              v108 = v50 + v90;
              __DataStorage._length.getter();
              sub_100069E2C(a11, a9);
              sub_100069E2C(a5, v13);
              v16 = v15;
              v109 = v15;
              v15 = a2;
              sub_100069E2C(v109, a2);
              v204 = sub_1000B089C(a8, a10 & 1, v16, a2, v212, a5, v13, v210, a11, a9, a1, v108, v200);
              sub_10006A178(a11, a9);
              sub_10006A178(a5, v13);
              sub_10006A178(v16, a2);
              sub_10006A178(a11, a9);
              sub_10006A178(a5, v13);
              sub_10006A178(v16, a2);
              sub_10006A178(v16, a2);
              sub_10006A178(a5, v13);
              sub_10006A178(a11, a9);
              sub_10006A178(v16, a2);
              *a7 = v208;
              a7[1] = v23 | 0x8000000000000000;
              sub_10006A178(a5, v13);
              sub_10006A178(a11, a9);
              sub_10006A178(a11, a9);
              a9 = v199;
LABEL_168:
              sub_10006A178(a5, v13);
              result = sub_10006A178(v16, v15);
              goto LABEL_182;
            }

LABEL_224:
            __break(1u);
            goto LABEL_225;
          }

LABEL_94:
          *(&v211 + 7) = 0;
          *&v211 = 0;
          v110 = v21;
          v111 = v19;
          sub_100069E2C(v21, v19);
          sub_100069E2C(a5, v13);
          v204 = sub_1000B089C(a8, a10 & 1, v16, v15, v212, a5, v13, v210, v110, v111, a1, &v211, v200);
          v86 = v110;
          v87 = v111;
          goto LABEL_167;
        }

LABEL_223:
        __break(1u);
        goto LABEL_224;
      }

LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    v205 = a12;
    if (!v24)
    {
      goto LABEL_74;
    }

    sub_100069E2C(a5, a6);
    v25 = a2;
    sub_100069E2C(a11, a12);
    sub_100069E2C(a5, v13);
    sub_100069E2C(a11, a12);
    sub_100069E2C(v16, v15);
    sub_100069E2C(a11, a12);
    sub_100069E2C(a5, v13);
    sub_100069E2C(v16, v15);
    sub_100069E2C(a2, v23);
    sub_10006A178(a2, v23);
    *a7 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    v23 &= 0x3FFFFFFFFFFFFFFFuLL;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2 = a2;
    v194 = v25;
    v27 = v25 >> 32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v189 = v25 >> 32;
      if (v27 < v25)
      {
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

      v25 = v23;

      if (__DataStorage._bytes.getter() && __OFSUB__(a2, __DataStorage._offset.getter()))
      {
        goto LABEL_213;
      }

      v28 = type metadata accessor for __DataStorage();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v23 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v27 = v189;
    }

    if (v27 < a2)
    {
      goto LABEL_194;
    }

    sub_100069E2C(a11, a12);
    sub_100069E2C(a5, v13);
    sub_100069E2C(v16, v15);

    v31 = __DataStorage._bytes.getter();
    if (!v31)
    {
      goto LABEL_229;
    }

    v33 = v31;
    v34 = __DataStorage._offset.getter();
    v22 = a2 - v34;
    if (!__OFSUB__(a2, v34))
    {
      goto LABEL_166;
    }

    __break(1u);
LABEL_17:
    if (v22 == 2)
    {
      v35 = a5;
      v36 = v20;
      v198 = a9;
      v37 = v16;
      v38 = *(v16 + 16);
      v39 = *(v37 + 24);
      v206 = v19;
      sub_100069E2C(v21, v19);
      v188 = v35;
      v195 = v13;
      sub_100069E2C(v35, v13);
      v190 = v37;
      sub_100069E2C(v37, v15);
      v40 = __DataStorage._bytes.getter();
      a9 = v15;
      if (v40)
      {
        v41 = __DataStorage._offset.getter();
        if (__OFSUB__(v38, v41))
        {
LABEL_185:
          __break(1u);
          goto LABEL_186;
        }

        v40 += v38 - v41;
      }

      if (!__OFSUB__(v39, v38))
      {
        __DataStorage._length.getter();
        v23 = v188;
        v13 = v190;
        v25 = v195;
        sub_1000AD1F4(v40, v188, v195, a7, a8, a10 & 1, v190, &v211, v15, a11, v206, a1, a2, v36);
        v31 = a11;
        v32 = v206;
        if (!v201)
        {
          sub_10006A178(a11, v206);
          sub_10006A178(v190, v15);
          result = sub_10006A178(v188, v195);
          v204 = v211;
LABEL_181:
          a9 = v198;
          goto LABEL_182;
        }

        goto LABEL_237;
      }

LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v49 = v13 >> 62;
    memset(v212, 0, 14);
    v200 = v20;
    if ((v13 >> 62) > 1)
    {
      if (v49 == 2)
      {
        v198 = a9;
        v58 = v16;
        v64 = *(a5 + 16);
        v207 = v19;
        sub_100069E2C(v21, v19);
        sub_100069E2C(a5, v13);
        v65 = __DataStorage._bytes.getter();
        if (v65)
        {
          v66 = v65;
          v67 = __DataStorage._offset.getter();
          if (__OFSUB__(v64, v67))
          {
LABEL_190:
            __break(1u);
            goto LABEL_191;
          }

          v68 = v64 - v67 + v66;
LABEL_114:
          v25 = v58;
          __DataStorage._length.getter();
          v112 = *a7;
          v113 = a7[1];
          v114 = v113 >> 62;
          v197 = v68;
          if ((v113 >> 62) <= 1)
          {
            v115 = v207;
            v116 = a11;
            if (!v114)
            {
              goto LABEL_152;
            }

            v132 = *a7;
            sub_100069E2C(a11, v207);
            sub_100069E2C(v25, v15);
            sub_100069E2C(a5, v13);
            sub_100069E2C(a5, v13);
            sub_100069E2C(a11, v207);
            sub_100069E2C(v25, v15);
            v118 = v113 & 0x3FFFFFFFFFFFFFFFLL;
            sub_100069E2C(a11, v207);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v25, v15);
            sub_100069E2C(v132, v113);
            sub_10006A178(v132, v113);
            *a7 = xmmword_1004098D0;
            sub_10006A178(0, 0xC000000000000000);
            a9 = v132;
            v192 = v132;
            v133 = v132 >> 32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              if (v133 < a9)
              {
LABEL_210:
                __break(1u);
                goto LABEL_211;
              }

              if (__DataStorage._bytes.getter() && __OFSUB__(a9, __DataStorage._offset.getter()))
              {
                goto LABEL_218;
              }

              v134 = type metadata accessor for __DataStorage();
              v135 = *(v134 + 48);
              v136 = *(v134 + 52);
              swift_allocObject();
              v137 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

              v118 = v137;
            }

            if (v133 < a9)
            {
              goto LABEL_199;
            }

            sub_100069E2C(a11, v207);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v25, v15);

            v23 = v118;
            v31 = __DataStorage._bytes.getter();
            v58 = v197;
            if (!v31)
            {
              goto LABEL_234;
            }

            v124 = v31;
            v113 = v118;
            v138 = __DataStorage._offset.getter();
            v114 = a9 - v138;
            if (!__OFSUB__(a9, v138))
            {
              goto LABEL_177;
            }

            __break(1u);
          }

          v126 = v207;
          a9 = a11;
          if (v114 != 2)
          {
            goto LABEL_157;
          }

          v139 = v112;
          sub_100069E2C(a11, v207);
          sub_100069E2C(v25, v15);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v207);
          sub_100069E2C(v25, v15);
          sub_100069E2C(a11, v207);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);
          sub_100069E2C(v139, v113);
          sub_10006A178(v139, v113);
          *&v211 = v139;
          *(&v211 + 1) = v113 & 0x3FFFFFFFFFFFFFFFLL;
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          Data.LargeSlice.ensureUniqueReference()();
          v23 = *(&v211 + 1);
          v193 = v211;
          v140 = *(v211 + 16);
          sub_100069E2C(a11, v207);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);
          v31 = __DataStorage._bytes.getter();
          if (v31)
          {
            v129 = v31;
            v141 = __DataStorage._offset.getter();
            v131 = v140 - v141;
            if (!__OFSUB__(v140, v141))
            {
              goto LABEL_156;
            }

            __break(1u);
            goto LABEL_131;
          }

LABEL_226:
          __break(1u);
          goto LABEL_227;
        }

LABEL_113:
        v68 = 0;
        goto LABEL_114;
      }

LABEL_72:
      memset(v210, 0, 14);
      a2 = *a7;
      v23 = a7[1];
      v50 = v23 >> 62;
      if ((v23 >> 62) <= 1)
      {
        v205 = v19;
        if (v50)
        {
          sub_100069E2C(a5, v13);
          v25 = a2;
          sub_100069E2C(a11, v205);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v205);
          sub_100069E2C(v16, v15);
          sub_100069E2C(a11, v205);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v16, v15);
          sub_100069E2C(a2, v23);
          sub_10006A178(a2, v23);
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          v23 &= 0x3FFFFFFFFFFFFFFFuLL;
          v165 = swift_isUniquelyReferenced_nonNull_native();
          v194 = a2;
          v166 = a2 >> 32;
          if ((v165 & 1) == 0)
          {
            if (v166 < a2)
            {
LABEL_208:
              __break(1u);
              goto LABEL_209;
            }

            v25 = v23;

            if (__DataStorage._bytes.getter() && __OFSUB__(a2, __DataStorage._offset.getter()))
            {
              goto LABEL_216;
            }

            v167 = type metadata accessor for __DataStorage();
            v168 = *(v167 + 48);
            v169 = *(v167 + 52);
            swift_allocObject();
            v170 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

            v23 = v170;
            v166 = a2 >> 32;
          }

          if (v166 < a2)
          {
            goto LABEL_197;
          }

          sub_100069E2C(a11, v205);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v16, v15);

          v31 = __DataStorage._bytes.getter();
          if (v31)
          {
            v33 = v31;
            v171 = __DataStorage._offset.getter();
            v22 = a2 - v171;
            if (!__OFSUB__(a2, v171))
            {
LABEL_166:
              v172 = v22 + v33;
              __DataStorage._length.getter();
              sub_100069E2C(a11, v205);
              sub_100069E2C(a5, v13);
              sub_100069E2C(v16, v15);
              v204 = sub_1000B089C(a8, a10 & 1, v16, v15, v212, a5, v13, v210, a11, v205, a1, v172, v200);
              sub_10006A178(a11, v205);
              sub_10006A178(a5, v13);
              sub_10006A178(v16, v15);
              sub_10006A178(a11, v205);
              sub_10006A178(a5, v13);
              sub_10006A178(v16, v15);

              sub_10006A178(v16, v15);
              sub_10006A178(a5, v13);
              sub_10006A178(a11, v205);
              sub_10006A178(v16, v15);
              *a7 = v194;
              a7[1] = v23 | 0x4000000000000000;
              sub_10006A178(a5, v13);
              sub_10006A178(a11, v205);
              v86 = a11;
              v87 = v205;
              goto LABEL_167;
            }

            goto LABEL_201;
          }

          goto LABEL_232;
        }

        goto LABEL_74;
      }

      goto LABEL_90;
    }

    if (v49)
    {
      v198 = a9;
      v58 = v16;
      if (a5 > a5 >> 32)
      {
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      v207 = v19;
      sub_100069E2C(v21, v19);
      sub_100069E2C(a5, v13);
      v73 = __DataStorage._bytes.getter();
      if (v73)
      {
        v74 = v73;
        v75 = __DataStorage._offset.getter();
        if (__OFSUB__(a5, v75))
        {
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        v76 = a5 - v75 + v74;
LABEL_150:
        v25 = v58;
        __DataStorage._length.getter();
        v112 = *a7;
        v113 = a7[1];
        v152 = v113 >> 62;
        v197 = v76;
        if ((v113 >> 62) <= 1)
        {
          v115 = v207;
          v116 = a11;
          if (!v152)
          {
            goto LABEL_152;
          }

          v173 = *a7;
          sub_100069E2C(a11, v207);
          sub_100069E2C(v25, v15);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v207);
          sub_100069E2C(v25, v15);
          v118 = v113 & 0x3FFFFFFFFFFFFFFFLL;
          sub_100069E2C(a11, v207);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);
          sub_100069E2C(v173, v113);
          sub_10006A178(v173, v113);
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          a9 = v173;
          v192 = v173;
          v174 = v173 >> 32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            if (v174 < a9)
            {
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
LABEL_217:
              __break(1u);
LABEL_218:
              __break(1u);
LABEL_219:
              __break(1u);
              goto LABEL_220;
            }

            if (__DataStorage._bytes.getter() && __OFSUB__(a9, __DataStorage._offset.getter()))
            {
LABEL_220:
              __break(1u);
            }

            v175 = type metadata accessor for __DataStorage();
            v176 = *(v175 + 48);
            v177 = *(v175 + 52);
            swift_allocObject();
            v178 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

            v118 = v178;
          }

          if (v174 < a9)
          {
            goto LABEL_203;
          }

          sub_100069E2C(a11, v207);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);

          v23 = v118;
          v31 = __DataStorage._bytes.getter();
          v58 = v197;
          if (v31)
          {
            v124 = v31;
            v179 = __DataStorage._offset.getter();
            v114 = a9 - v179;
            if (__OFSUB__(a9, v179))
            {
LABEL_204:
              __break(1u);
              goto LABEL_205;
            }

            goto LABEL_177;
          }

LABEL_236:
          __break(1u);
LABEL_237:
          sub_10006A178(v31, v32);
          sub_10006A178(v13, a9);
          v181 = v23;
          goto LABEL_239;
        }

        v126 = v207;
        a9 = a11;
        if (v152 == 2)
        {
          v159 = *a7;
          sub_100069E2C(a11, v207);
          sub_100069E2C(v58, v15);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v207);
          sub_100069E2C(v58, v15);
          sub_100069E2C(a11, v207);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v58, v15);
          sub_100069E2C(v159, v113);
          sub_10006A178(v159, v113);
          *&v211 = v159;
          *(&v211 + 1) = v113 & 0x3FFFFFFFFFFFFFFFLL;
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          Data.LargeSlice.ensureUniqueReference()();
          v23 = *(&v211 + 1);
          v193 = v211;
          v160 = *(v211 + 16);
          sub_100069E2C(a11, v207);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v58, v15);
          v31 = __DataStorage._bytes.getter();
          if (v31)
          {
            v129 = v31;
            v161 = __DataStorage._offset.getter();
            v131 = v160 - v161;
            if (__OFSUB__(v160, v161))
            {
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
              goto LABEL_204;
            }

            goto LABEL_156;
          }

          goto LABEL_228;
        }

LABEL_157:
        *(&v211 + 7) = 0;
        *&v211 = 0;
        sub_100069E2C(a9, v126);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        v204 = sub_1000B089C(a8, a10 & 1, v25, v15, v212, a5, v13, v197, a9, v126, a1, &v211, v200);
        sub_10006A178(a9, v126);
        sub_10006A178(a5, v13);
        sub_10006A178(v25, v15);
        v158 = a9;
        v164 = v126;
LABEL_179:
        sub_10006A178(v158, v164);
        sub_10006A178(a5, v13);
        v163 = v25;
        goto LABEL_180;
      }

LABEL_149:
      v76 = 0;
      goto LABEL_150;
    }

    v210[0] = a5;
    LOWORD(v210[1]) = v13;
    BYTE2(v210[1]) = BYTE2(v13);
    BYTE3(v210[1]) = BYTE3(v13);
    BYTE4(v210[1]) = BYTE4(v13);
    a2 = *a7;
    v23 = a7[1];
    v50 = v23 >> 62;
    BYTE5(v210[1]) = BYTE5(v13);
    if ((v23 >> 62) <= 1)
    {
      v205 = v19;
      if (!v50)
      {
        goto LABEL_74;
      }

      sub_100069E2C(a5, v13);
      v25 = a2;
      sub_100069E2C(a11, v205);
      sub_100069E2C(a5, v13);
      sub_100069E2C(a11, v205);
      sub_100069E2C(v16, v15);
      sub_100069E2C(a11, v205);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v16, v15);
      sub_100069E2C(a2, v23);
      sub_10006A178(a2, v23);
      *a7 = xmmword_1004098D0;
      sub_10006A178(0, 0xC000000000000000);
      v23 &= 0x3FFFFFFFFFFFFFFFuLL;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v194 = a2;
      v52 = a2 >> 32;
      if ((v51 & 1) == 0)
      {
        if (v52 < a2)
        {
LABEL_206:
          __break(1u);
          goto LABEL_207;
        }

        v25 = v23;

        if (__DataStorage._bytes.getter() && __OFSUB__(a2, __DataStorage._offset.getter()))
        {
          goto LABEL_214;
        }

        v53 = type metadata accessor for __DataStorage();
        v54 = *(v53 + 48);
        v55 = *(v53 + 52);
        swift_allocObject();
        v56 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v23 = v56;
        v52 = a2 >> 32;
      }

      if (v52 < a2)
      {
        goto LABEL_195;
      }

      sub_100069E2C(a11, v205);
      sub_100069E2C(a5, v13);
      sub_100069E2C(v16, v15);

      v31 = __DataStorage._bytes.getter();
      if (!v31)
      {
        goto LABEL_230;
      }

      v33 = v31;
      v57 = __DataStorage._offset.getter();
      v22 = a2 - v57;
      if (!__OFSUB__(a2, v57))
      {
        goto LABEL_166;
      }

      __break(1u);
LABEL_44:
      if (v22 == 2)
      {
        v198 = a9;
        v58 = v16;
        v59 = *(a5 + 16);
        v207 = v19;
        sub_100069E2C(v21, v19);
        sub_100069E2C(a5, v13);
        v60 = __DataStorage._bytes.getter();
        if (v60)
        {
          v61 = v60;
          v62 = __DataStorage._offset.getter();
          if (__OFSUB__(v59, v62))
          {
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          v63 = v59 - v62 + v61;
        }

        else
        {
          v63 = 0;
        }

        v25 = v58;
        __DataStorage._length.getter();
        v112 = *a7;
        v113 = a7[1];
        v114 = v113 >> 62;
        v197 = v63;
        if ((v113 >> 62) <= 1)
        {
          v115 = v207;
          v116 = a11;
          if (!v114)
          {
            goto LABEL_152;
          }

          v117 = *a7;
          sub_100069E2C(a11, v207);
          sub_100069E2C(v25, v15);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v207);
          sub_100069E2C(v25, v15);
          v118 = v113 & 0x3FFFFFFFFFFFFFFFLL;
          sub_100069E2C(a11, v207);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);
          sub_100069E2C(v117, v113);
          sub_10006A178(v117, v113);
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          a9 = v117;
          v192 = v117;
          v119 = v117 >> 32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            if (v119 < a9)
            {
LABEL_209:
              __break(1u);
              goto LABEL_210;
            }

            if (__DataStorage._bytes.getter() && __OFSUB__(a9, __DataStorage._offset.getter()))
            {
              goto LABEL_217;
            }

            v120 = type metadata accessor for __DataStorage();
            v121 = *(v120 + 48);
            v122 = *(v120 + 52);
            swift_allocObject();
            v123 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

            v118 = v123;
          }

          if (v119 < a9)
          {
            goto LABEL_198;
          }

          sub_100069E2C(a11, v207);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v25, v15);

          v23 = v118;
          v31 = __DataStorage._bytes.getter();
          v58 = v197;
          if (!v31)
          {
            goto LABEL_233;
          }

          v124 = v31;
          v113 = v118;
          v125 = __DataStorage._offset.getter();
          v114 = a9 - v125;
          if (!__OFSUB__(a9, v125))
          {
LABEL_177:
            v180 = v114 + v124;
            __DataStorage._length.getter();
            v155 = v207;
            sub_100069E2C(a11, v207);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v25, v15);
            v204 = sub_1000B089C(a8, a10 & 1, v25, v15, v212, a5, v13, v58, a11, v207, a1, v180, v200);
            sub_10006A178(a11, v207);
            sub_10006A178(a5, v13);
            sub_10006A178(v25, v15);
            sub_10006A178(a11, v207);
            sub_10006A178(a5, v13);
            sub_10006A178(v25, v15);

            sub_10006A178(v25, v15);
            sub_10006A178(a5, v13);
            sub_10006A178(a11, v207);
            sub_10006A178(v25, v15);
            *a7 = v192;
            a7[1] = v118 | 0x4000000000000000;
            sub_10006A178(a5, v13);
            sub_10006A178(a11, v207);
            sub_10006A178(a11, v207);
            sub_10006A178(a5, v13);
            sub_10006A178(v25, v15);
            v158 = a11;
            goto LABEL_178;
          }

          __break(1u);
        }

        v126 = v207;
        a9 = a11;
        if (v114 != 2)
        {
          goto LABEL_157;
        }

        v127 = v112;
        sub_100069E2C(a11, v207);
        sub_100069E2C(v25, v15);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a11, v207);
        sub_100069E2C(v25, v15);
        sub_100069E2C(a11, v207);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        sub_100069E2C(v127, v113);
        sub_10006A178(v127, v113);
        *&v211 = v127;
        *(&v211 + 1) = v113 & 0x3FFFFFFFFFFFFFFFLL;
        *a7 = xmmword_1004098D0;
        sub_10006A178(0, 0xC000000000000000);
        Data.LargeSlice.ensureUniqueReference()();
        v23 = *(&v211 + 1);
        v193 = v211;
        v128 = *(v211 + 16);
        sub_100069E2C(a11, v207);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v25, v15);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v129 = v31;
          v130 = __DataStorage._offset.getter();
          v131 = v128 - v130;
          if (!__OFSUB__(v128, v130))
          {
LABEL_156:
            v162 = v131 + v129;
            __DataStorage._length.getter();
            sub_100069E2C(a11, v207);
            sub_100069E2C(a5, v13);
            sub_100069E2C(v58, v15);
            v204 = sub_1000B089C(a8, a10 & 1, v58, v15, v212, a5, v13, v197, a11, v207, a1, v162, v200);
            sub_10006A178(a11, v207);
            sub_10006A178(a5, v13);
            sub_10006A178(v58, v15);
            sub_10006A178(a11, v207);
            sub_10006A178(a5, v13);
            sub_10006A178(v58, v15);
            sub_10006A178(v58, v15);
            sub_10006A178(a5, v13);
            sub_10006A178(a11, v207);
            sub_10006A178(v58, v15);
            *a7 = v193;
            a7[1] = v23 | 0x8000000000000000;
            sub_10006A178(a5, v13);
            sub_10006A178(a11, v207);
            sub_10006A178(a11, v207);
            sub_10006A178(a5, v13);
            sub_10006A178(v58, v15);
            sub_10006A178(a11, v207);
            sub_10006A178(a5, v13);
            v163 = v58;
LABEL_180:
            result = sub_10006A178(v163, v15);
            goto LABEL_181;
          }

          __break(1u);
          goto LABEL_113;
        }

LABEL_225:
        __break(1u);
        goto LABEL_226;
      }

      memset(v210, 0, 14);
      a2 = *a7;
      v23 = a7[1];
      v50 = v23 >> 62;
      if ((v23 >> 62) <= 1)
      {
        v205 = v19;
        if (v50)
        {
          sub_100069E2C(a5, v13);
          v25 = a2;
          sub_100069E2C(a11, v205);
          sub_100069E2C(a5, v13);
          sub_100069E2C(a11, v205);
          sub_100069E2C(v16, v15);
          sub_100069E2C(a11, v205);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v16, v15);
          sub_100069E2C(a2, v23);
          sub_10006A178(a2, v23);
          *a7 = xmmword_1004098D0;
          sub_10006A178(0, 0xC000000000000000);
          v23 &= 0x3FFFFFFFFFFFFFFFuLL;
          v77 = swift_isUniquelyReferenced_nonNull_native();
          v194 = a2;
          v78 = a2 >> 32;
          if ((v77 & 1) == 0)
          {
            if (v78 < a2)
            {
LABEL_207:
              __break(1u);
              goto LABEL_208;
            }

            v25 = v23;

            if (__DataStorage._bytes.getter() && __OFSUB__(a2, __DataStorage._offset.getter()))
            {
              goto LABEL_215;
            }

            v79 = type metadata accessor for __DataStorage();
            v80 = *(v79 + 48);
            v81 = *(v79 + 52);
            swift_allocObject();
            v23 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

            v78 = a2 >> 32;
          }

          if (v78 < a2)
          {
            goto LABEL_196;
          }

          sub_100069E2C(a11, v205);
          sub_100069E2C(a5, v13);
          sub_100069E2C(v16, v15);

          v31 = __DataStorage._bytes.getter();
          if (!v31)
          {
            goto LABEL_231;
          }

          v33 = v31;
          v82 = __DataStorage._offset.getter();
          v22 = a2 - v82;
          if (!__OFSUB__(a2, v82))
          {
            goto LABEL_166;
          }

          __break(1u);
          goto LABEL_72;
        }

LABEL_74:
        sub_100069E2C(a5, v13);
        sub_100069E2C(a11, v205);
        sub_100069E2C(a5, v13);
        sub_100069E2C(a11, v205);
        sub_100069E2C(v16, v15);
        sub_100069E2C(a11, v205);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v16, v15);
        sub_10006A178(a2, v23);
        *&v211 = a2;
        WORD4(v211) = v23;
        BYTE10(v211) = BYTE2(v23);
        BYTE11(v211) = BYTE3(v23);
        BYTE12(v211) = BYTE4(v23);
        BYTE13(v211) = BYTE5(v23);
        BYTE14(v211) = BYTE6(v23);
        sub_100069E2C(a11, v205);
        sub_100069E2C(a5, v13);
        sub_100069E2C(v16, v15);
        v204 = sub_1000B089C(a8, a10 & 1, v16, v15, v212, a5, v13, v210, a11, v205, a1, &v211, v200);
        sub_10006A178(a11, v205);
        sub_10006A178(a5, v13);
        sub_10006A178(v16, v15);
        v83 = v211;
        v84 = v16;
        v85 = DWORD2(v211) | ((WORD6(v211) | (BYTE14(v211) << 16)) << 32);
        sub_10006A178(v84, v15);
        sub_10006A178(a5, v13);
        sub_10006A178(a11, v205);
        sub_10006A178(v84, v15);
        *a7 = v83;
        a7[1] = v85;
        v16 = v84;
        sub_10006A178(a5, v13);
        sub_10006A178(a11, v205);
        v86 = a11;
        v87 = v205;
LABEL_167:
        sub_10006A178(v86, v87);
        goto LABEL_168;
      }

      goto LABEL_85;
    }

    goto LABEL_80;
  }

  v43 = a9;
  v44 = a3;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_184;
  }

  sub_100069E2C(a11, a12);
  sub_100069E2C(a5, a6);
  v191 = a3;
  sub_100069E2C(a3, v15);
  v47 = __DataStorage._bytes.getter();
  if (v47)
  {
    v48 = __DataStorage._offset.getter();
    if (__OFSUB__(v44, v48))
    {
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    v47 += v44 - v48;
  }

  a9 = v43;
  __DataStorage._length.getter();
  v25 = a6;
  sub_1000AD1F4(v47, a5, a6, a7, a8, a10 & 1, v191, &v211, v15, a11, a12, a1, a2, a13);
  if (!v201)
  {
    sub_10006A178(a11, a12);
    sub_10006A178(v191, v15);
    result = sub_10006A178(a5, a6);
    v204 = v211;
LABEL_182:
    *a9 = v204;
    return result;
  }

  sub_10006A178(a11, a12);
  sub_10006A178(v191, v15);
  v181 = a5;
LABEL_239:
  sub_10006A178(v181, v25);

  __break(1u);
  return result;
}