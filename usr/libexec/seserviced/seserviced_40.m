uint64_t sub_1003507F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v7 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v6 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v6 >> 60 != 15)
  {
    if (a3 >> 60 != 15)
    {
      v8 = a1;
      sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
      sub_10006A2BC(v7, v6);
      sub_100069E2C(a2, a3);
      v9 = sub_10008FB4C(v7, v6, a2, a3);
      sub_10006A2D0(a2, a3);
      sub_10006A2D0(v7, v6);
      sub_10006A2D0(v7, v6);
      if (v9)
      {
        return *(v8 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
      }

      return 0;
    }

LABEL_7:
    sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
    sub_100069E2C(a2, a3);
    sub_10006A2D0(v7, v6);
    sub_10006A2D0(a2, a3);
    return 0;
  }

  if (a3 >> 60 != 15)
  {
    goto LABEL_7;
  }

  v8 = a1;
  sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
  sub_100069E2C(a2, a3);
  sub_10006A2D0(v7, v6);
  return *(v8 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
}

uint64_t sub_100350958(void *a1, uint64_t a2, unint64_t a3)
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
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  result = [a1 bleUUID];
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_100350A24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    _StringGuts.grow(_:)(54);
    v8._object = 0x8000000100470070;
    v8._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v8);
    sub_100288788(a3, a4);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x6F6974636E756620;
    v13._object = 0xEA0000000000206ELL;
    String.append(_:)(v13);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x206E6F6974636120;
    v15._object = 0xE800000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    sub_100350C40(v7, 5, 0, 0xE000000000000000, 2147483655);
  }

  return result;
}

void sub_100350C40(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v79 = a2;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v15 = qword_10051B7F0;
    *v14 = qword_10051B7F0;
    (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    v17 = *(v11 + 8);
    v11 += 8;
    v17(v14, v10);
    if (v15)
    {
      v82 = a3;
      v18 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
      swift_beginAccess();
      v81 = v5;
      v14 = *(v5 + v18);
      v88 = _swiftEmptyArrayStorage;
      v80 = v18;
      if (!(v14 >> 62))
      {
        v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    v20 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier;
    v10 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier;

    if (!v19)
    {
      break;
    }

    v77 = a4;
    v78 = a5;
    a4 = 0;
    v83 = 0;
    v84 = v20;
    v85 = (a1 + v10);
    v86 = v14 & 0xC000000000000001;
    a5 = v14 & 0xFFFFFFFFFFFFFF8;
    while (v86)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a3 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
LABEL_72:
        __break(1u);
LABEL_73:
        v52 = v88;
        a5 = v78;
        a4 = v77;
        goto LABEL_75;
      }

LABEL_14:
      if (*(v10 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) != *(a1 + v20) || *(v10 + 16) != *(a1 + 16))
      {
        goto LABEL_9;
      }

      v21 = *(v10 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
      v11 = *(v10 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
      v22 = *v85;
      v23 = v85[1];
      v24 = v11 >> 62;
      v25 = v23 >> 62;
      if (v11 >> 62 == 3)
      {
        if (v21)
        {
          v26 = 0;
        }

        else
        {
          v26 = v11 == 0xC000000000000000;
        }

        v27 = 0;
        v28 = v26 && v23 >> 62 == 3;
        if (v28 && !v22 && v23 == 0xC000000000000000)
        {
LABEL_51:

          v20 = v84;
          goto LABEL_10;
        }

LABEL_38:
        if (v25 <= 1)
        {
          goto LABEL_39;
        }

        goto LABEL_44;
      }

      if (v24 <= 1)
      {
        if (!v24)
        {
          v27 = BYTE6(v11);
          if (v25 <= 1)
          {
            goto LABEL_39;
          }

          goto LABEL_44;
        }

        LODWORD(v27) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_87;
        }

        v27 = v27;
        goto LABEL_38;
      }

      if (v24 == 2)
      {
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        v31 = __OFSUB__(v29, v30);
        v27 = v29 - v30;
        if (v31)
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
        }

        goto LABEL_38;
      }

      v27 = 0;
      if (v25 <= 1)
      {
LABEL_39:
        if (v25)
        {
          LODWORD(v32) = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_82;
          }

          v32 = v32;
        }

        else
        {
          v32 = BYTE6(v23);
        }

        goto LABEL_46;
      }

LABEL_44:
      if (v25 != 2)
      {
        if (!v27)
        {
          goto LABEL_51;
        }

LABEL_8:
        v20 = v84;
        goto LABEL_9;
      }

      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
      v31 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v31)
      {
        goto LABEL_83;
      }

LABEL_46:
      if (v27 != v32)
      {
        goto LABEL_8;
      }

      if (v27 < 1)
      {
        goto LABEL_51;
      }

      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v36 = *(v21 + 16);
          v35 = *(v21 + 24);
          v75 = v36;
          v76 = v22;
          v74 = v35;
          v37 = __DataStorage._bytes.getter();
          if (v37)
          {
            v73 = v37;
            v38 = __DataStorage._offset.getter();
            v39 = v75;
            if (__OFSUB__(v75, v38))
            {
              goto LABEL_90;
            }

            v40 = v75 - v38 + v73;
          }

          else
          {
            v40 = 0;
            v39 = v75;
          }

          if (__OFSUB__(v74, v39))
          {
            goto LABEL_89;
          }

          v5 = (v11 & 0x3FFFFFFFFFFFFFFFLL);
          v11 = v40;
          v75 = v74 - v39;
          __DataStorage._length.getter();
          v49 = v11;
LABEL_68:
          v50 = v23;
          v51 = v83;
          sub_10019F024(v49, v76, v50, v89);
          v83 = v51;
          v20 = v84;
          if (v89[0])
          {
LABEL_69:

            goto LABEL_10;
          }

          goto LABEL_9;
        }

        memset(v89, 0, 14);
      }

      else
      {
        if (v24)
        {
          v41 = v21;
          v42 = v21 >> 32;
          v43 = v42 < v41;
          v44 = v42 - v41;
          if (v43)
          {
            goto LABEL_88;
          }

          v74 = v41;
          v75 = v44;
          v76 = v22;
          v45 = __DataStorage._bytes.getter();
          if (v45)
          {
            v73 = v45;
            v46 = __DataStorage._offset.getter();
            if (__OFSUB__(v74, v46))
            {
              goto LABEL_91;
            }

            v74 = v74 - v46 + v73;
          }

          else
          {
            v74 = 0;
          }

          v5 = (v11 & 0x3FFFFFFFFFFFFFFFLL);
          __DataStorage._length.getter();
          v49 = v74;
          goto LABEL_68;
        }

        v89[0] = *(v10 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
        LOWORD(v89[1]) = v11;
        BYTE2(v89[1]) = BYTE2(v11);
        BYTE3(v89[1]) = BYTE3(v11);
        BYTE4(v89[1]) = BYTE4(v11);
        BYTE5(v89[1]) = BYTE5(v11);
      }

      v47 = v23;
      v48 = v83;
      sub_10019F024(v89, v22, v47, &v87);
      v83 = v48;
      v20 = v84;
      if (v87)
      {
        goto LABEL_69;
      }

LABEL_9:
      v5 = &v88;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = v88[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_10:
      ++a4;
      if (a3 == v19)
      {
        goto LABEL_73;
      }
    }

    if (a4 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v14 + 8 * a4 + 32);

      a3 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        goto LABEL_72;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    swift_once();
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_75:
  v53 = v20;

  v54 = *(v81 + v80);
  *(v81 + v80) = v52;

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v89[0] = v58;
    *v57 = 136315138;
    v59 = v82;
    *(v57 + 4) = sub_1002FFA0C(v82, a4, v89);
    _os_log_impl(&_mh_execute_header, v55, v56, "%s", v57, 0xCu);
    sub_1000752F4(v58);
  }

  else
  {

    v59 = v82;
  }

  v60 = (a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
  v61 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
  if (v61)
  {
    v62 = v60[1];

    v61(v79 | 0x100u);
    sub_1000B2A4C(v61);
    v63 = *v60;
    v64 = v60[1];
    *v60 = 0;
    v60[1] = 0;
    sub_1000B2A4C(v63);
  }

  sub_100359E48(a1, v59, a4);
  v65 = objc_opt_self();
  v66 = *(a1 + v53);
  v67 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType);
  v68 = *(a1 + 16);
  v69 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_readerInformation);
  v70 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_readerInformation + 8);
  v71 = String._bridgeToObjectiveC()();
  sub_10004D990(v65, 1, v66, v68, a5, v67, v71);
}

void sub_100351414(NSObject *a1, int a2, void (*a3)(char *, char *), char *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v182 = a7;
  v180 = a6;
  v179 = a5;
  LODWORD(isa) = a2;
  v183 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v165 = &v162 - v16;
  __chkstk_darwin(v15);
  v166 = &v162 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v167 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v181 = &v162 - v27;
  v175 = type metadata accessor for SHA256();
  v174 = *(v175 - 8);
  v28 = *(v174 + 64);
  __chkstk_darwin(v175);
  v173 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for SHA256Digest();
  v177 = *(v178 - 1);
  v30 = *(v177 + 64);
  __chkstk_darwin(v178);
  v176 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v33 = *(&v32->isa + a3);
  v171 = v9;
  v172 = v10;
  v164 = v14;
  v185 = a3;
  v170 = v18;
  v169 = v19;
  v168 = v22;
  v186 = a4;
  if (v33 >> 62)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v34)
  {
    v35 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v187 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v32 = (v35 + 1);
        if (__OFADD__(v35, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_57;
        }

        v187 = *&v33[8 * v35 + 32];

        v32 = (v35 + 1);
        if (__OFADD__(v35, 1))
        {
          goto LABEL_13;
        }
      }

      a3 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer;
      v22 = v187;
      v36 = *&v187[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer] + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      ++v35;
      if (v32 == v34)
      {
        goto LABEL_14;
      }
    }

    v163 = a3;

    if (isa)
    {
      v193 = 0;
      v194 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v193 = 0xD000000000000011;
      v194 = 0x800000010046FF50;
      LOBYTE(v197) = v183;
      sub_100075400();
      v44._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v44);

      sub_100350C40(v187, 2, v193, v194, 2147483650);

      return;
    }

    v45 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state;
    v46 = v187;
    if (v187[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state] != 2)
    {
      v193 = 0;
      v194 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);
      v58._countAndFlagsBits = 0xD00000000000001ELL;
      v58._object = 0x800000010046FF10;
      String.append(_:)(v58);
      v197 = sub_100288788(*(v46 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier), *(v46 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8));
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v59 = BidirectionalCollection<>.joined(separator:)();
      v61 = v60;

      v62._countAndFlagsBits = v59;
      v62._object = v61;
      String.append(_:)(v62);

      v63._countAndFlagsBits = 0x74617473206E6920;
      v63._object = 0xEA00000000002065;
      String.append(_:)(v63);
      LOBYTE(v197) = *(v46 + v45);
      _print_unlocked<A, B>(_:_:)();
      sub_100350C40(v46, 2, v193, v194, 2147483649);

      return;
    }

    v197 = Data.subdata(in:)();
    v198 = v47;
    LOWORD(v191) = bswap32(*(v46 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier)) >> 16;
    v195 = &type metadata for UnsafeRawBufferPointer;
    v196 = &protocol witness table for UnsafeRawBufferPointer;
    v193 = &v191;
    v194 = &v191 + 2;
    v48 = sub_1000752B0(&v193, &type metadata for UnsafeRawBufferPointer);
    v50 = *v48;
    v49 = v48[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v193);
    LOBYTE(v191) = *(v46 + 16);
    v195 = &type metadata for UnsafeRawBufferPointer;
    v196 = &protocol witness table for UnsafeRawBufferPointer;
    v193 = &v191;
    v194 = &v191 + 1;
    v51 = sub_1000752B0(&v193, &type metadata for UnsafeRawBufferPointer);
    v53 = *v51;
    v52 = v51[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v193);
    v180 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
    if (*(v182 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) >= 0x300u)
    {
      if (*(v46 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1) == 1)
      {
        v54 = 0x800000010046FF70;
        v55 = v46;
        v56 = 0xD00000000000001CLL;
        v57 = 2147483649;
        goto LABEL_38;
      }

      LOBYTE(v191) = *(v46 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier);
      v195 = &type metadata for UnsafeRawBufferPointer;
      v196 = &protocol witness table for UnsafeRawBufferPointer;
      v193 = &v191;
      v194 = &v191 + 1;
      v64 = sub_1000752B0(&v193, &type metadata for UnsafeRawBufferPointer);
      v66 = *v64;
      v65 = v64[1];
      Data._Representation.append(contentsOf:)();
      sub_1000752F4(&v193);
    }

    v179 = v45;
    v67 = *(v46 + 24);
    v68 = *(v46 + 32);
    sub_100069E2C(v67, v68);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v67, v68);
    v69 = *(v46 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
    v70 = *(v46 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
    sub_100069E2C(v69, v70);
    v71.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v69, v70);
    v73 = v197;
    v72 = v198;
    sub_10035A294(&qword_100503000, &type metadata accessor for SHA256);
    v74 = v173;
    v75 = v175;
    dispatch thunk of HashFunction.init()();
    sub_100069E2C(v73, v72);
    sub_100357FC4(v73, v72);
    sub_10006A178(v73, v72);
    v76 = v176;
    dispatch thunk of HashFunction.finalize()();
    (*(v174 + 8))(v74, v75);
    v77 = v178;
    v195 = v178;
    v196 = sub_10035A294(&qword_100503008, &type metadata accessor for SHA256Digest);
    v78 = sub_1000B9634(&v193);
    v79 = v177;
    (*(v177 + 16))(v78, v76, v77);
    sub_1000752B0(&v193, v195);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v79 + 8))(v76, v77);
    v80 = v191;
    v81 = v192;
    sub_1000752F4(&v193);
    v82.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v80, v81);
    v83 = 0;
    v84 = *(v46 + 48);
    if (v84 >> 60 != 15)
    {
      v85 = *(v46 + 40);
      sub_100069E2C(v85, *(v46 + 48));
      v83 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A2D0(v85, v84);
    }

    v86 = isa;
    v87 = sub_10004851C(v183, isa, v71.super.isa, v82.super.isa, v83, 0);

    if (*(v46 + 48) >> 60 != 15)
    {
      v88 = *&v186[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier];
      v89 = *&v186[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8];
      v90 = *&v186[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
      v91 = *&v186[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8];
      sub_10006A2BC(v88, v89);
      sub_10006A2BC(v90, v91);
      sub_1003375E0(0xD000000000000042, 0x800000010046FFC0, v88, v89, v90, v91, 0);
      sub_10006A2D0(v90, v91);
      sub_10006A2D0(v88, v89);
    }

    if (!v87)
    {
      v56 = 0xD000000000000027;
      v54 = 0x800000010046FF90;
      v55 = v46;
      v57 = 2147483651;
LABEL_38:
      sub_100350C40(v55, 2, v56, v54, v57);

      goto LABEL_64;
    }

    isa = 0;
    v92 = [v87 signedData];
    v93 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v191 = v93;
    v192 = v95;
    v96 = [v87 signature];
    v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    v100 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v97, v99);
    v101 = objc_opt_self();
    v102 = [v101 TLVWithTag:158 value:v100];

    if (v102)
    {
      v186 = v87;
      v103 = [v102 asData];

      if (v103)
      {
        v104 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v105;

        Data.append(_:)();
        sub_10006A178(v104, v106);
        v107 = v191;
        v108 = v192;
        sub_100069E2C(v191, v192);
        v109 = Data._bridgeToObjectiveC()().super.isa;
        sub_10006A178(v107, v108);
        v110 = [v101 TLVWithTag:32557 value:v109];

        if (v110)
        {
          v111 = [v110 asData];

          if (v111)
          {
            v112 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v114 = v113;

            v189 = v112;
            v190 = v114;
            if (*(v182 + v180) < 0x300u)
            {
              goto LABEL_42;
            }

            if (v187[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1] == 1)
            {
              sub_100350C40(v187, 2, 0xD00000000000001CLL, 0x800000010046FF70, 2147483651);

              sub_10006A178(v107, v108);
              v115 = v112;
              v116 = v114;
              goto LABEL_63;
            }

            v117 = [v101 TLVWithTag:132 unsignedChar:v187[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier]];
            if (v117)
            {
              v118 = v117;
              v119 = [v117 asData];

              if (v119)
              {
                v120 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v122 = v121;

                Data.append(_:)();
                sub_10006A178(v120, v122);
LABEL_42:
                v123 = v163;
                if (qword_100501B60 != -1)
                {
                  swift_once();
                  v123 = v163;
                }

                v182 = qword_10051B5A0;
                v124 = *&v123[v187];
                v185 = v189;
                v183 = v190;
                v125 = v172;
                v126 = v172[2];
                v127 = v181;
                v22 = v171;
                (v126)(v181, &v187[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier], v171);
                v125[7](v127, 0, 1, v22);
                if (qword_100501D90 != -1)
                {
                  swift_once();
                }

                v128 = qword_10051B7F0;
                v129 = v168;
                *v168 = qword_10051B7F0;
                v130 = v169;
                v131 = v170;
                (*(v169 + 104))(v129, enum case for DispatchPredicate.onQueue(_:), v170);
                v132 = v128;
                v133 = _dispatchPreconditionTest(_:)();
                (*(v130 + 8))(v129, v131);
                if ((v133 & 1) == 0)
                {
                  __break(1u);
                  goto LABEL_67;
                }

                v134 = v167;
                sub_1000756F8(v181, v167);
                if ((v125[6])(v134, 1, v22) == 1)
                {
                  sub_100075768(v134, &unk_10050BE80, &unk_10040B360);
                  goto LABEL_51;
                }

                v33 = v166;
                (v125[4])(v166, v134, v22);
                v135 = v125;
                v136 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
                swift_beginAccess();
                v137 = v165;
                (v126)(v165, v124 + v136, v22);
                v138 = static UUID.== infix(_:_:)();
                v141 = v135[1];
                v139 = v135 + 1;
                v140 = v141;
                v141(v137, v22);
                if (v138)
                {
                  v140(v33, v22);
LABEL_51:
                  v125 = isa;
                  v129 = sub_100239160(5, 21, v185, v183);
                  v133 = v142;
                  v126 = v187;
                  v22 = v179;
                  if (qword_100501960 == -1)
                  {
LABEL_52:
                    sub_1000E71A0(v129, v133, v124);
                    sub_10006A178(v129, v133);
                    sub_100075768(v181, &unk_10050BE80, &unk_10040B360);
                    if (v125)
                    {
                    }

                    goto LABEL_59;
                  }

LABEL_67:
                  swift_once();
                  goto LABEL_52;
                }

                v185 = v140;
                v172 = v139;
                a3 = v164;
                (v126)(v164, v33, v22);

                v32 = Logger.logObject.getter();
                v143 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v32, v143))
                {
                  v144 = swift_slowAlloc();
                  v183 = v32;
                  v145 = a3;
                  v146 = v144;
                  isa = swift_slowAlloc();
                  v188 = isa;
                  *v146 = 136315394;
                  v180 = sub_10035A294(&qword_100504C70, &type metadata accessor for UUID);
                  LODWORD(v182) = v143;
                  v147 = dispatch thunk of CustomStringConvertible.description.getter();
                  v149 = v148;
                  v150 = v185;
                  v185(v145, v22);
                  v151 = sub_1002FFA0C(v147, v149, &v188);

                  *(v146 + 4) = v151;
                  *(v146 + 12) = 2080;
                  v152 = v124 + v136;
                  v153 = v165;
                  (v126)(v165, v152, v22);
                  v154 = dispatch thunk of CustomStringConvertible.description.getter();
                  v156 = v155;
                  v150(v153, v22);
                  v157 = sub_1002FFA0C(v154, v156, &v188);

                  *(v146 + 14) = v157;
                  v158 = v183;
                  _os_log_impl(&_mh_execute_header, v183, v182, "Connection identifier has changed %s %s", v146, 0x16u);
                  swift_arrayDestroy();

                  v33 = v166;

LABEL_58:
                  v126 = v187;
                  v150(v33, v22);
                  sub_100075768(v181, &unk_10050BE80, &unk_10040B360);
                  v22 = v179;
LABEL_59:
                  v22[v126] = 3;
                  v159 = *&v126[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer];
                  if (v159)
                  {
                    v160 = *&v126[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec];
                    v161 = v159;
                    sub_1003AE618(v161, v160);

                    sub_10006A178(v191, v192);
                  }

                  else
                  {
                    sub_10006A178(v191, v192);
                  }

                  v115 = v189;
                  v116 = v190;
LABEL_63:
                  sub_10006A178(v115, v116);
LABEL_64:
                  sub_10006A178(v197, v198);
                  return;
                }

LABEL_57:

                v150 = v185;
                v185(a3, v22);
                goto LABEL_58;
              }

              goto LABEL_73;
            }

LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            return;
          }

LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_70;
  }

LABEL_14:

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v193 = v40;
    *v39 = 136315138;
    v41 = UUID.uuidString.getter();
    v43 = sub_1002FFA0C(v41, v42, &v193);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "Failed to retrieve RKE request in progress for %s", v39, 0xCu);
    sub_1000752F4(v40);
  }
}

void sub_100352A0C(void **a1, uint64_t a2, char *a3, char **a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [v13 tag];
  if (v14 <= 32625)
  {
    if (v14 != 24440)
    {
      if (v14 != 32625)
      {
LABEL_21:
        v36 = v13;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 67109120;
          *(v39 + 4) = [v36 tag];

          _os_log_impl(&_mh_execute_header, v37, v38, "Ignoring unknown event %u", v39, 8u);
        }

        else
        {
        }

        return;
      }

      v19 = [v13 children];
      if (v19)
      {
        v20 = v19;
        sub_10009393C(0, &qword_100502418, SESTLV_ptr);
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100352ED8(v21, a3);
        goto LABEL_18;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v31 = [v13 value];
    if (v31)
    {
      v32 = v31;
      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      sub_100349188(v33, v35, a4);
      sub_10006A178(v33, v35);
      return;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v14 == 32626)
  {
    v40 = v4;
    v22 = [v13 children];
    if (v22)
    {
      v23 = v22;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
      sub_10034A0DC(v24, *&a3[OBJC_IVAR____TtC10seserviced10AlishaPeer_version], a3);

      if (*&a3[v25] <= 0x2FFu)
      {
        v26 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
        v27 = *(v9 + 16);
        v27(v12, a4 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v8);
        swift_beginAccess();
        sub_1000C5158(0x10000, v12);
        swift_endAccess();
        v27(v12, a4 + v26, v8);
        swift_beginAccess();
        sub_1000C5310(3, v12);
        swift_endAccess();
      }

      return;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v14 == 32629)
  {
    v28 = [v13 children];
    if (v28)
    {
      v29 = v28;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003544C8(v30, a3);
      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14 != 32633)
  {
    goto LABEL_21;
  }

  v15 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
  if (*&a3[OBJC_IVAR____TtC10seserviced10AlishaPeer_version] >= 0x300u)
  {
    v16 = [v13 children];
    if (v16)
    {
      v17 = v16;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10034ADB0(v18, *&a3[v15], a3);
LABEL_18:

      return;
    }

    goto LABEL_28;
  }
}

void sub_100352ED8(unint64_t a1, char *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  __chkstk_darwin(v9);
  v13 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_34;
  }

LABEL_2:
  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 13))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 1))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_36:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
LABEL_37:
      v162 = 0;
      LODWORD(v161) = 0;
      v163 = 0;
      LODWORD(v164) = 0;
      LODWORD(v167) = 1;
      LODWORD(v165) = 1;
      v168 = 1;
      LODWORD(v166) = 1;
      goto LABEL_38;
    }

    goto LABEL_5;
  }

  v158 = v5;
  v159 = v4;
  v160 = v8;
  v170 = a2;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_37;
  }

LABEL_5:
  LODWORD(v164) = 0;
  v163 = 0;
  LODWORD(v161) = 0;
  v162 = 0;
  v10 = 0;
  v9 = 0;
  LODWORD(v166) = 1;
  v16 = &selRef_mockFleetIntermediateCert;
  v168 = 1;
  LODWORD(v165) = 1;
  LODWORD(v167) = 1;
  do
  {
LABEL_6:
    v8 = v10;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v17 = *(a1 + 8 * v8 + 32);
      }

      a2 = v17;
      v10 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        swift_once();
        goto LABEL_2;
      }

      v18 = [v17 v16[490]];
      if (v18 > 129)
      {
        break;
      }

      if (v18 == 128)
      {
        v29 = [a2 value];
        if (!v29)
        {
          goto LABEL_207;
        }

        v30 = v29;
        v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_100090214(v4, v32, 0, 0, 0);
        v168 = 0;
        v163 = v33;
        sub_10006A178(v4, v32);
LABEL_28:
        v16 = &selRef_mockFleetIntermediateCert;

        if (v10 == v13)
        {
          goto LABEL_38;
        }

        goto LABEL_6;
      }

      if (v18 == 129)
      {
        v24 = [a2 value];
        if (!v24)
        {
          goto LABEL_206;
        }

        v25 = v24;
        v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v27;

        v28 = sub_1000939AC(v26, v4, 0, 0, 0);
        LODWORD(v165) = 0;
        LODWORD(v161) = v28;
        goto LABEL_28;
      }

LABEL_7:

      ++v8;
      if (v10 == v13)
      {
        goto LABEL_38;
      }
    }

    if (v18 == 130)
    {
      v34 = [a2 value];
      if (!v34)
      {
        goto LABEL_205;
      }

      v35 = v34;
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v37;

      v38 = sub_1000939AC(v36, v4, 0, 0, 0);
      LODWORD(v167) = 0;
      v162 = v38;
      goto LABEL_28;
    }

    if (v18 != 132)
    {
      goto LABEL_7;
    }

    v19 = [a2 value];
    if (!v19)
    {
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
      return;
    }

    v20 = v19;
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v22;

    v23 = sub_1000939AC(v21, v4, 0, 0, 0);
    LODWORD(v166) = 0;
    LODWORD(v164) = v23;

    v16 = &selRef_mockFleetIntermediateCert;
  }

  while (v10 != v13);
LABEL_38:
  v39 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
  v40 = v170;
  if (*&v170[OBJC_IVAR____TtC10seserviced10AlishaPeer_version] >= 0x300u)
  {
    v46 = v169;
    if (v166)
    {
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_56;
      }

      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "Ignoring invalid execution identifier";
LABEL_55:
      _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);

      goto LABEL_56;
    }

    if ((v167 & 1) == 0)
    {
      if (v162 != 4)
      {
        goto LABEL_73;
      }

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_56;
      }

      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "Ignoring execution status pending";
      goto LABEL_55;
    }

LABEL_53:
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_56;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Ignoring invalid execution status";
    goto LABEL_55;
  }

  v41 = v169;
  if ((v168 | v165))
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "Ignoring invalid function and/or action identifiers";
      goto LABEL_55;
    }

LABEL_56:

    return;
  }

  if (v167)
  {
    goto LABEL_53;
  }

  if ((v163 - 3) == 65534 || (v163 - 3) == 0xFFFF)
  {
    if (v161 == 81)
    {

      v47 = v41;
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v175[0] = v82;
        *v81 = 136315138;

        v83 = UUID.uuidString.getter();
        v85 = v84;

        v86 = sub_1002FFA0C(v83, v85, v175);

        *(v81 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v79, v80, "Vehicle unlocked using passive entry for %s", v81, 0xCu);
        sub_1000752F4(v82);
      }

      v87 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      v57 = OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState;
      swift_beginAccess();
      v88 = *(v47 + v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = *(v47 + v57);
      *(v47 + v57) = 0x8000000000000000;
      v60 = &v40[v87];
      v61 = 2;
      goto LABEL_97;
    }

    if (v161 == 80)
    {

      v47 = v41;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v175[0] = v51;
        *v50 = 136315138;

        v52 = UUID.uuidString.getter();
        v54 = v53;

        v55 = sub_1002FFA0C(v52, v54, v175);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v48, v49, "Vehicle locked using passive entry for %s", v50, 0xCu);
        sub_1000752F4(v51);
      }

      v56 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      v57 = OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState;
      swift_beginAccess();
      v58 = *(v47 + v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = *(v47 + v57);
      *(v47 + v57) = 0x8000000000000000;
      v60 = &v40[v56];
      v61 = 1;
LABEL_97:
      sub_100314CF0(v61, v60, isUniquelyReferenced_nonNull_native);
      *(v47 + v57) = v174;
      swift_endAccess();
      return;
    }
  }

  v62 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v63 = *(v41 + v62);
  v157 = v39;
  if (v63 >> 62)
  {
    goto LABEL_196;
  }

  v39 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {

    if (!v39)
    {
      goto LABEL_87;
    }

    v64 = 0;
    v46 = v63 & 0xFFFFFFFFFFFFFF8;
LABEL_64:
    if ((v63 & 0xC000000000000001) == 0)
    {
      if (v64 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        v39 = _CocoaArrayWrapper.endIndex.getter();
        continue;
      }

      v65 = *(v63 + 8 * v64 + 32);

      v66 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_72;
      }

LABEL_67:
      v67 = *(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {

        ++v64;
        if (v66 == v39)
        {
          goto LABEL_87;
        }

        goto LABEL_64;
      }

      v76 = v169;
      if (*(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) == v163)
      {
        v77 = *(v65 + 16);
        v78 = &v178;
        goto LABEL_100;
      }

LABEL_88:
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Ignoring execution status for a request which we didn't start", v75, 2u);
      }

      goto LABEL_90;
    }

    break;
  }

  v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v66 = v64 + 1;
  if (!__OFADD__(v64, 1))
  {
    goto LABEL_67;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  v68 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v63 = *(v46 + v68);
  v157 = v39;
  if (v63 >> 62)
  {
    v69 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v69 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v69)
  {
LABEL_87:

    goto LABEL_88;
  }

  v70 = 0;
  while (1)
  {
    if ((v63 & 0xC000000000000001) != 0)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v71 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v70 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_194;
      }

      v65 = *(v63 + 8 * v70 + 32);

      v71 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    v72 = (v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier);
    if ((*(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1) & 1) == 0 && *v72 == v164)
    {
      break;
    }

    ++v70;
    if (v71 == v69)
    {
      goto LABEL_87;
    }
  }

  v76 = v169;
  if (v72[1])
  {
    goto LABEL_88;
  }

  v77 = *v72;
  v78 = &v179;
LABEL_100:
  if (v77 != *(v78 - 64))
  {
    goto LABEL_88;
  }

  v89 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer;
  v90 = *(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
  if (v90)
  {
    sub_1003AE754(v90);
  }

  if (v162 != 1)
  {
    v91 = (v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
    v92 = *(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
    v93 = v162;
    if (v92)
    {
      v94 = v91[1];

      v92(v93);
      sub_1000B2A4C(v92);
      v95 = *v91;
      v96 = v91[1];
      *v91 = 0;
      v91[1] = 0;
      sub_1000B2A4C(v95);
    }

    sub_10035A00C(v65, v93);
    v63 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
    swift_beginAccess();
    v97 = *(v76 + v63);
    v172 = _swiftEmptyArrayStorage;
    if (v97 >> 62)
    {
      goto LABEL_200;
    }

    v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_110:
    v169 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier;
    v99 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier;

    if (!v98)
    {
      v130 = _swiftEmptyArrayStorage;
LABEL_185:

      v139 = *(v76 + v63);
      *(v76 + v63) = v130;

      v140 = objc_opt_self();
      v141 = *(v65 + v169);
      v142 = *(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType);
      v143 = *(v65 + 16);
      v144 = *(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_readerInformation);
      v145 = *(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_readerInformation + 8);
      v146 = String._bridgeToObjectiveC()();
      v147 = v162;
      sub_10004D990(v140, 1, v141, v143, v162, v142, v146);

      if (*&v170[v157] < 0x300u && !v147 && (v168 & 1) == 0)
      {
        v148 = v163;
        if ((v163 - 1) < 2u)
        {
          v149 = v160;
          (*(v158 + 16))(v160, &v170[OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier], v159);
          swift_beginAccess();
          sub_1000C5158(v148, v149);
          swift_endAccess();
        }
      }

      goto LABEL_91;
    }

    v164 = v63;
    v100 = 0;
    v165 = (v65 + v99);
    v166 = v97 & 0xFFFFFFFFFFFFFF8;
    v167 = v97 & 0xC000000000000001;
    v101 = v98;
    while (1)
    {
      if (v167)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v102 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v100 >= *(v166 + 16))
        {
          goto LABEL_195;
        }

        v63 = *(v97 + 8 * v100 + 32);

        v102 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
LABEL_180:
          __break(1u);
LABEL_181:
          v130 = v172;
          v63 = v164;
          goto LABEL_185;
        }
      }

      if (*(v63 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) != *(v65 + v169) || *(v63 + 16) != *(v65 + 16))
      {
        goto LABEL_154;
      }

      v103 = *(v63 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
      v104 = *(v63 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
      v105 = *v165;
      v106 = v165[1];
      v107 = v104 >> 62;
      v108 = v106 >> 62;
      if (v104 >> 62 == 3)
      {
        if (v103)
        {
          v109 = 0;
        }

        else
        {
          v109 = v104 == 0xC000000000000000;
        }

        v110 = 0;
        v111 = v109 && v106 >> 62 == 3;
        if (v111 && !v105 && v106 == 0xC000000000000000)
        {
LABEL_159:

          goto LABEL_157;
        }
      }

      else if (v107 > 1)
      {
        if (v107 == 2)
        {
          v113 = *(v103 + 16);
          v112 = *(v103 + 24);
          v114 = __OFSUB__(v112, v113);
          v110 = v112 - v113;
          if (v114)
          {
            __break(1u);
LABEL_201:
            __break(1u);
          }
        }

        else
        {
          v110 = 0;
        }
      }

      else if (v107)
      {
        LODWORD(v110) = HIDWORD(v103) - v103;
        if (__OFSUB__(HIDWORD(v103), v103))
        {
          goto LABEL_201;
        }

        v110 = v110;
      }

      else
      {
        v110 = BYTE6(v104);
      }

      if (v108 > 1)
      {
        if (v108 != 2)
        {
          if (!v110)
          {
            goto LABEL_159;
          }

LABEL_154:
          v118 = v76;
          goto LABEL_155;
        }

        v117 = *(v105 + 16);
        v116 = *(v105 + 24);
        v114 = __OFSUB__(v116, v117);
        v115 = v116 - v117;
        if (v114)
        {
          goto LABEL_199;
        }
      }

      else if (v108)
      {
        LODWORD(v115) = HIDWORD(v105) - v105;
        if (__OFSUB__(HIDWORD(v105), v105))
        {
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          v98 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_110;
        }

        v115 = v115;
      }

      else
      {
        v115 = BYTE6(v106);
      }

      if (v110 != v115)
      {
        goto LABEL_154;
      }

      if (v110 < 1)
      {
        goto LABEL_159;
      }

      if (v107 > 1)
      {
        if (v107 != 2)
        {
          v118 = v76;
          memset(v173, 0, 14);
LABEL_169:
          sub_10019F024(v173, v105, v106, &v171);
          if (v171)
          {
            goto LABEL_177;
          }

          goto LABEL_155;
        }

        v156 = *v165;
        v161 = v106;
        v118 = v76;
        v121 = *(v103 + 16);
        v120 = *(v103 + 24);
        v155 = v121;
        v154 = v120;
        v122 = __DataStorage._bytes.getter();
        if (v122)
        {
          v153 = v122;
          v123 = __DataStorage._offset.getter();
          v124 = v155;
          if (__OFSUB__(v155, v123))
          {
            goto LABEL_208;
          }

          v153 += v155 - v123;
        }

        else
        {
          v153 = 0;
          v124 = v155;
        }

        v155 = v154 - v124;
        if (__OFSUB__(v154, v124))
        {
          goto LABEL_203;
        }

        __DataStorage._length.getter();
        v129 = &v176;
      }

      else
      {
        if (!v107)
        {
          v118 = v76;
          v173[0] = *(v63 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
          LOWORD(v173[1]) = v104;
          BYTE2(v173[1]) = BYTE2(v104);
          BYTE3(v173[1]) = BYTE3(v104);
          BYTE4(v173[1]) = BYTE4(v104);
          BYTE5(v173[1]) = BYTE5(v104);
          goto LABEL_169;
        }

        v156 = *v165;
        v161 = v106;
        v125 = v103;
        v126 = v103 >> 32;
        v154 = v125;
        v155 = v126 - v125;
        if (v126 < v125)
        {
          __break(1u);
LABEL_203:
          __break(1u);
          goto LABEL_204;
        }

        v118 = v76;
        v127 = __DataStorage._bytes.getter();
        if (v127)
        {
          v153 = v127;
          v128 = __DataStorage._offset.getter();
          if (__OFSUB__(v154, v128))
          {
            goto LABEL_209;
          }

          v154 = v154 - v128 + v153;
        }

        else
        {
          v154 = 0;
        }

        __DataStorage._length.getter();
        v129 = &v177;
      }

      sub_10019F024(*(v129 - 32), v156, v161, v173);
      if (v173[0])
      {
LABEL_177:

        goto LABEL_156;
      }

LABEL_155:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v119 = v172[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_156:
      v76 = v118;
      v98 = v101;
LABEL_157:
      ++v100;
      if (v102 == v98)
      {
        goto LABEL_181;
      }
    }
  }

  if (*(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType) == 1)
  {
    sub_100350C40(v65, 1, 0xD000000000000030, 0x800000010046FD10, 2147483656);
    goto LABEL_91;
  }

  swift_retain_n();
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v174 = v134;
    *v133 = 136315650;
    v173[0] = sub_100288788(*(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier), *(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8));
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v135 = BidirectionalCollection<>.joined(separator:)();
    v137 = v136;

    v138 = sub_1002FFA0C(v135, v137, &v174);

    *(v133 + 4) = v138;
    *(v133 + 12) = 512;
    LOWORD(v138) = *(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);

    *(v133 + 14) = v138;

    *(v133 + 16) = 256;
    LOBYTE(v138) = *(v65 + 16);

    *(v133 + 18) = v138;

    _os_log_impl(&_mh_execute_header, v131, v132, "Vehicle for key %s started execution of function %hu action %hhu", v133, 0x13u);
    sub_1000752F4(v134);
  }

  else
  {
  }

  v150 = *(v65 + v89);
  if (v150)
  {
    v151 = *(v65 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec);
    v73 = v150;
    sub_1003AE618(v73, v151);
LABEL_90:
  }

LABEL_91:
}

void sub_1003544C8(uint64_t a1, int64_t a2)
{
  v135 = type metadata accessor for UUID();
  v4 = *(v135 - 1);
  v5 = *(v4 + 8);
  v6 = __chkstk_darwin(v135);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v120 = &v118 - v10;
  __chkstk_darwin(v9);
  v121 = &v118 - v11;
  v12 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = (&v118 - v17);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_117;
  }

LABEL_2:
  v24 = qword_10051B7F0;
  *v23 = qword_10051B7F0;
  v25 = *(v20 + 104);
  LODWORD(v129) = enum case for DispatchPredicate.onQueue(_:);
  v130 = v20 + 104;
  v128 = v25;
  v25(v23);
  v126 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  v27 = *(v20 + 8);
  v20 += 8;
  v131 = v23;
  v132 = v19;
  v127 = v27;
  v27(v23, v19);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_119:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_8;
  }

  v123 = v20;
  v144 = 0;
  v145 = 1;
  v143 = 256;
  v142 = 256;
  v141 = xmmword_1004098E0;
  v28 = v136;

  sub_1003598C4(a1, &v144, &v143, &v142, v28, &v141);
  v122 = 0;

  v20 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
  v29 = *(a2 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) >= 0x300u;
  v125 = v4;
  v119 = v8;
  v124 = v16;
  if (v29 && (v142 & 0x100) == 0)
  {
LABEL_19:
    v133 = v20;
    v20 = v142;
    a1 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
    v32 = v136;
    swift_beginAccess();
    v33 = *&v32[a1];
    v23 = v135;
    if (!(v33 >> 62))
    {
      v16 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }

    goto LABEL_121;
  }

  a1 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  v30 = v136;
  swift_beginAccess();
  v26 = *&v30[a1];
  v23 = v135;
  if (v26 >> 62)
  {
    goto LABEL_119;
  }

  v16 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (!v16)
  {
    goto LABEL_35;
  }

  v133 = v20;
  v134 = v18;
  v8 = 0;
  v20 = v26 & 0xC000000000000001;
  v23 = (v26 & 0xFFFFFFFFFFFFFF8);
  v19 = &qword_10050B000;
  v18 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  do
  {
    if (v20)
    {
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v8 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        swift_once();
        goto LABEL_2;
      }

      a1 = *(v26 + 8 * v8 + 32);

      v4 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }
    }

    v31 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer);
    if (static UUID.== infix(_:_:)())
    {
LABEL_49:

      v46 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
      v18 = v134;
      v23 = v135;
      v20 = v133;

      if (v46)
      {
        sub_1003AE754(v46);
      }

      v74 = *(a2 + v20);
      v34 = v74 < 0x300;
      if (*(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state) == 4)
      {
        goto LABEL_72;
      }

      if (v74 >= 0x300)
      {
        if ((v142 & 0x100) == 0)
        {
          if ((*(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1) & 1) != 0 || *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier) != v142)
          {
            goto LABEL_103;
          }

LABEL_95:

          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v140 = v97;
            *v96 = 33555202;
            *(v96 + 4) = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
            *(v96 + 6) = 256;
            *(v96 + 8) = *(a1 + 16);

            *(v96 + 9) = 2080;
            swift_beginAccess();
            if (*(&v141 + 1) >> 60 == 15)
            {
              v98 = 0;
            }

            else
            {
              v98 = 0x7461642068746977;
            }

            if (*(&v141 + 1) >> 60 == 15)
            {
              v99 = 0xE000000000000000;
            }

            else
            {
              v99 = 0xE900000000000061;
            }

            v100 = sub_1002FFA0C(v98, v99, &v140);

            *(v96 + 11) = v100;
            _os_log_impl(&_mh_execute_header, v94, v95, "Received confirmation request for function %hu action %hhu %s", v96, 0x13u);
            sub_1000752F4(v97);
          }

          else
          {
          }

          v101 = *(a1 + 56);
          if (v101)
          {
            v102 = *(a1 + 64);

            v103 = Logger.logObject.getter();
            v104 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v103, v104))
            {
              v105 = swift_slowAlloc();
              *v105 = 0;
              _os_log_impl(&_mh_execute_header, v103, v104, "Sending continuation request to client", v105, 2u);
            }

            v106 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
            v107 = *(a1 + 16);
            swift_beginAccess();
            v108 = v141;
            v109 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
            v110 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
            sub_10006A2BC(v141, *(&v141 + 1));
            sub_100069E2C(v109, v110);
            v101(v106, v107, v108, *(&v108 + 1), v109, v110);
            sub_10006A178(v109, v110);
            sub_10006A2D0(v108, *(&v108 + 1));
            v111 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
            if (v111)
            {
              v112 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec);
              v113 = v111;
              sub_1003AE618(v113, v112);
              sub_1000B2A4C(v101);
            }

            else
            {
              sub_1000B2A4C(v101);
            }
          }

          else
          {
            v114 = Logger.logObject.getter();
            v115 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v114, v115))
            {
              v116 = swift_slowAlloc();
              *v116 = 0;
              _os_log_impl(&_mh_execute_header, v114, v115, "Automatically sending an event to continue the enduring request", v116, 2u);
            }

            v117 = v122;
            sub_10034E460(a1, 0, 0xF000000000000000);
            if (v117)
            {
            }
          }

LABEL_85:

LABEL_92:
          sub_10006A2D0(v141, *(&v141 + 1));
          return;
        }
      }

      else if ((v145 & 1) == 0 && (v143 & 0x100) == 0)
      {
        if (*(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) != v144 || *(a1 + 16) != v143)
        {
LABEL_103:
          sub_100350C40(a1, 2, 0xD000000000000016, 0x800000010046FDF0, 2147483654);
LABEL_72:

          v35 = 0;
          goto LABEL_36;
        }

        goto LABEL_95;
      }

      sub_100350C40(a1, 2, 0xD000000000000025, 0x800000010046FDC0, 2147483653);
      goto LABEL_85;
    }

    ++v8;
  }

  while (v4 != v16);
LABEL_33:
  v18 = v134;
  v23 = v135;
  while (1)
  {
    v20 = v133;
LABEL_35:

    a1 = 0;
    v34 = *(a2 + v20) < 0x300u;
    v35 = 1;
LABEL_36:
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Sending an event to stop the enduring RKE execution", v38, 2u);
    }

    if (v34)
    {
      if ((v145 & 1) != 0 || (v143 & 0x100) != 0)
      {
LABEL_48:

        goto LABEL_92;
      }
    }

    else if ((v142 & 0x100) != 0)
    {
      goto LABEL_48;
    }

    v39 = *(a2 + v20);
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    if (v39 >= 0x300)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100409E40;
      if ((v142 & 0x100) != 0)
      {
        goto LABEL_125;
      }

      v48 = v47;
      v49 = [objc_opt_self() TLVWithTag:132 unsignedChar:v142];
      if (!v49)
      {
        goto LABEL_127;
      }

      *(v48 + 32) = v49;
    }

    else
    {
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10040DA10;
      if (v145)
      {
        goto LABEL_124;
      }

      v41 = v40;
      v42 = bswap32(v144) >> 16;
      v43 = objc_opt_self();
      v44 = [v43 TLVWithTag:128 unsignedShort:v42];
      if (!v44)
      {
        goto LABEL_126;
      }

      *(v41 + 32) = v44;
      if ((v143 & 0x100) != 0)
      {
        goto LABEL_128;
      }

      v45 = [v43 TLVWithTag:129 unsignedChar:v143];
      if (!v45)
      {
        goto LABEL_129;
      }

      *(v41 + 40) = v45;
    }

    v137 = sub_1002B3B94(&off_1004C39E8);
    v138 = v50;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v52 = [objc_opt_self() TLVWithTag:32631 children:isa];

    if (!v52)
    {
      break;
    }

    v53 = [v52 asData];

    if (!v53)
    {
      goto LABEL_123;
    }

    v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    Data.append(_:)();
    sub_10006A178(v54, v56);
    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v133 = qword_10051B5A0;
    v135 = v138;
    v136 = v137;
    v20 = v125;
    v57 = v124;
    v4 = v35;
    if (v35)
    {
      v58 = 1;
    }

    else
    {
      (*(v125 + 16))(v18, a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier, v23);
      v58 = 0;
    }

    (*(v20 + 56))(v18, v58, 1, v23);
    v33 = v23;
    v23 = v131;
    v59 = v126;
    *v131 = v126;
    v60 = v132;
    v128(v23, v129, v132);
    v61 = v59;
    LOBYTE(v59) = _dispatchPreconditionTest(_:)();
    v127(v23, v60);
    if (v59)
    {
      sub_1000756F8(v18, v57);
      if ((*(v20 + 48))(v57, 1, v33) == 1)
      {
        sub_100075768(v57, &unk_10050BE80, &unk_10040B360);
        v62 = v4;
        goto LABEL_66;
      }

      LODWORD(v132) = v4;
      v134 = v18;
      v63 = v121;
      (*(v20 + 32))(v121, v57, v33);
      v64 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
      swift_beginAccess();
      v65 = v33;
      v66 = *(v20 + 16);
      v131 = v64;
      v67 = v120;
      v66(v120, a2 + v64, v65);
      v68 = static UUID.== infix(_:_:)();
      v69 = *(v20 + 8);
      v69(v67, v65);
      if (v68)
      {
        v69(v63, v65);
        v18 = v134;
        v62 = v132;
LABEL_66:
        v70 = sub_100239160(3, 17, v136, v135);
        v72 = v71;
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        v73 = v122;
        sub_1000E71A0(v70, v72, a2);
        if (v73)
        {
          sub_10006A178(v70, v72);
          sub_100075768(v18, &unk_10050BE80, &unk_10040B360);

          if (v62)
          {
LABEL_91:
            sub_10006A178(v137, v138);
            goto LABEL_92;
          }
        }

        else
        {
          sub_10006A178(v70, v72);
          sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
          if (v62)
          {
            goto LABEL_91;
          }
        }
      }

      else
      {
        v75 = v119;
        v135 = v66;
        v66(v119, v63, v65);

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v136 = v69;
          v79 = v78;
          v133 = swift_slowAlloc();
          v139 = v133;
          *v79 = 136315394;
          sub_10035A294(&qword_100504C70, &type metadata accessor for UUID);
          LODWORD(v130) = v77;
          v129 = v76;
          v80 = dispatch thunk of CustomStringConvertible.description.getter();
          v82 = v81;
          (v136)(v75, v65);
          v83 = sub_1002FFA0C(v80, v82, &v139);

          *(v79 + 4) = v83;
          *(v79 + 12) = 2080;
          v84 = v131 + a2;
          v85 = v120;
          (v135)(v120, v84, v65);
          v86 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v87;
          (v136)(v85, v65);
          v89 = sub_1002FFA0C(v86, v88, &v139);

          *(v79 + 14) = v89;
          v90 = v129;
          _os_log_impl(&_mh_execute_header, v129, v130, "Connection identifier has changed %s %s", v79, 0x16u);
          swift_arrayDestroy();

          v69 = v136;
          v63 = v121;
        }

        else
        {

          v69(v75, v65);
        }

        v69(v63, v65);
        sub_100075768(v134, &unk_10050BE80, &unk_10040B360);
        if (v132)
        {
          goto LABEL_91;
        }
      }

      v91 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
      if (v91)
      {
        v92 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec);
        v93 = v91;
        sub_1003AE618(v93, v92);
      }

      goto LABEL_91;
    }

    __break(1u);
LABEL_121:
    v16 = _CocoaArrayWrapper.endIndex.getter();
LABEL_21:

    if (v16)
    {
      v134 = v18;
      v8 = 0;
      v23 = (v33 & 0xC000000000000001);
      v19 = (v33 & 0xFFFFFFFFFFFFFF8);
      v18 = &unk_10051B000;
      while (1)
      {
        if (v23)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v8 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_116;
          }

          a1 = *(v33 + 8 * v8 + 32);

          v4 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        if ((*(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1) & 1) == 0 && *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier) == v20)
        {
          goto LABEL_49;
        }

        ++v8;
        if (v4 == v16)
        {
          goto LABEL_33;
        }
      }
    }
  }

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
}

void sub_100355784(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v61 = a2;
  v62 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v58 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501C40 != -1)
  {
    swift_once();
  }

  v59 = qword_10051B6C8;
  sub_1002A86D4(a1, a4);
  v60 = a4;
  v16 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v17 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v17 >> 60 == 15)
  {
    v63 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v63, v18, "Failed to retrieve key identifier", v19, 2u);
    }

    v20 = v63;

    return;
  }

  v55 = v13;
  v56 = v11;
  v21 = __chkstk_darwin(*v16);
  *(&v50 - 2) = v21;
  *(&v50 - 1) = v17;
  v57 = v21;
  v22 = sub_100069E2C(v21, v17);
  if (qword_1005019E8 != -1)
  {
    v22 = swift_once();
  }

  v23 = __chkstk_darwin(v22);
  *(&v50 - 2) = sub_1000B3C64;
  *(&v50 - 1) = &v50 - 4;
  v25 = *(v24 + 24);
  __chkstk_darwin(v23);
  *(&v50 - 4) = sub_1000B3FFC;
  *(&v50 - 3) = v26;
  *(&v50 - 2) = v27;
  os_unfair_lock_lock(v25 + 8);
  sub_10035CA80(&v25[4], aBlock);
  os_unfair_lock_unlock(v25 + 8);
  v28 = aBlock[0];
  if (aBlock[0])
  {
    v29 = [aBlock[0] supportedRKEFunctions];
    v30 = _swiftEmptyArrayStorage;
    v53 = v8;
    if (!v29)
    {
      v35 = _swiftEmptyArrayStorage;
      goto LABEL_30;
    }

    v31 = v29;
    v52 = v7;
    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (v32)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
LABEL_15:
        v50 = v28;
        v51 = v17;
        v54 = v12;
        aBlock[0] = _swiftEmptyArrayStorage;
        v33 = aBlock;
        sub_10019F554(0, v32 & ~(v32 >> 63), 0);
        if (v32 < 0)
        {
          __break(1u);
LABEL_38:
          swift_once();
LABEL_36:
          v45 = swift_allocObject();
          v45[2] = v28;
          v45[3] = v33;
          v45[4] = v63;
          aBlock[4] = sub_10035A288;
          aBlock[5] = v45;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100080830;
          aBlock[3] = &unk_1004D1720;
          v46 = _Block_copy(aBlock);
          v47 = v28;

          v48 = v58;
          static DispatchQoS.unspecified.getter();
          v64 = v4;
          sub_10035A294(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
          sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
          sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
          v49 = v56;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          sub_10006A2D0(v57, v30);
          _Block_release(v46);

          (*(v53 + 8))(v49, v7);
          (*(v55 + 8))(v48, v54);

          return;
        }

        v34 = 0;
        v35 = aBlock[0];
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v36 = *(v7 + 8 * v34 + 32);
          }

          v37 = v36;
          v38 = [v36 unsignedShortValue];

          aBlock[0] = v35;
          v40 = v35[2];
          v39 = v35[3];
          if (v40 >= v39 >> 1)
          {
            sub_10019F554((v39 > 1), v40 + 1, 1);
            v35 = aBlock[0];
          }

          ++v34;
          v35[2] = v40 + 1;
          *(v35 + v40 + 16) = v38;
        }

        while (v32 != v34);

        v17 = v51;
        v7 = v52;
        v12 = v54;
        v28 = v50;
LABEL_30:
        if (v62 <= 0x2FFu && (v61 & 1) != 0 && v35[2] || (v33 = sub_1002A91CC(v60), v44 = sub_10008C58C(v33, v35), , (v44 & 1) != 0))
        {

          sub_10006A2D0(v57, v17);
          return;
        }

        v4 = _swiftEmptyArrayStorage;
        v54 = v12;
        v30 = v17;
        if (qword_100501D98 == -1)
        {
          goto LABEL_36;
        }

        goto LABEL_38;
      }
    }

    v35 = _swiftEmptyArrayStorage;
    v7 = v52;
    goto LABEL_30;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Failed to retrieve endpoint", v43, 2u);
  }

  sub_10006A2D0(v57, v17);
}

void sub_100355F64(id *a1, uint64_t a2, char **a3)
{
  v4 = v3;
  v8 = type metadata accessor for Data.Iterator();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if ([*a1 tag] == 160)
  {
    v62 = a3;
    v14 = [v13 children];
    if (!v14)
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v15 = v14;
    v65 = v13;
    v66 = a2;
    v63 = v12;
    v64 = v8;
    v67 = v9;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
LABEL_31:
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v72 = v4;
      if (v17)
      {
LABEL_5:
        LODWORD(v68) = 0;
        v18 = 0;
        v19 = 0;
        v70 = 0xF000000000000000;
        LODWORD(v71) = 1;
        v4 = &selRef_mockFleetIntermediateCert;
        while (2)
        {
          v69 = v18;
LABEL_7:
          v20 = v19;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v20 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v21 = *(v16 + 8 * v20 + 32);
            }

            v22 = v21;
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

            v23 = [v21 v4[490]];
            if (v23 == 137)
            {
              break;
            }

            if (v23 == 128)
            {
              v24 = [v22 value];
              if (!v24)
              {
                goto LABEL_61;
              }

              v25 = v24;
              v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              v29 = v72;
              v30 = sub_100090214(v26, v28, 0, 0, 0);
              LODWORD(v71) = v29 != 0;
              if (v29)
              {
                sub_10006A178(v26, v28);

                LODWORD(v68) = 0;
                v72 = 0;
              }

              else
              {
                LODWORD(v68) = v30;
                v72 = 0;
                sub_10006A178(v26, v28);
              }

              v4 = &selRef_mockFleetIntermediateCert;
              if (v19 == v17)
              {
LABEL_28:
                v36 = v69;
                v35 = v70;
                goto LABEL_33;
              }

              goto LABEL_7;
            }

            ++v20;
            if (v19 == v17)
            {
              goto LABEL_28;
            }
          }

          v31 = [v22 value];
          if (v31)
          {
            v32 = v31;
            v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v34;

            v36 = v33;
            v4 = &selRef_mockFleetIntermediateCert;
          }

          else
          {
            v36 = 0;
            v35 = 0xF000000000000000;
          }

          sub_10006A2D0(v69, v70);

          v70 = v35;
          v18 = v36;
          if (v19 != v17)
          {
            continue;
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v72 = v3;
      if (v17)
      {
        goto LABEL_5;
      }
    }

    v36 = 0;
    LODWORD(v68) = 0;
    LODWORD(v71) = 1;
    v35 = 0xF000000000000000;
LABEL_33:

    if ((v71 & 1) == 0 && v35 >> 60 != 15)
    {
      v37 = v35 >> 62;
      if ((v35 >> 62) > 1)
      {
        v38 = v63;
        v39 = v64;
        if (v37 != 2)
        {
          goto LABEL_45;
        }

        v54 = *(v36 + 16);
      }

      else
      {
        v38 = v63;
        v39 = v64;
        if (!v37)
        {
          goto LABEL_45;
        }
      }

      sub_100069E2C(v36, v35);
LABEL_45:
      sub_100069E2C(v36, v35);
      Data.Iterator.init(_:at:)();
      sub_10035A294(&qword_100509A50, &type metadata accessor for Data.Iterator);
      do
      {
        dispatch thunk of IteratorProtocol.next()();
        if (BYTE1(v74))
        {
          sub_10006A2D0(v36, v35);
          (*(v67 + 8))(v38, v39);
          goto LABEL_57;
        }
      }

      while (!v74);
      (*(v67 + 8))(v38, v39);
      if (v68 == 1 || v68 == 2)
      {
        sub_10006A2D0(v36, v35);
      }

      else
      {
        v55 = v62;
        v56 = *v62;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v55 = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = sub_100130164(0, *(v56 + 2) + 1, 1, v56);
          *v55 = v56;
        }

        v59 = *(v56 + 2);
        v58 = *(v56 + 3);
        if (v59 >= v58 >> 1)
        {
          v61 = sub_100130164((v58 > 1), v59 + 1, 1, v56);
          *v62 = v61;
        }

        sub_10006A2D0(v36, v35);
        v60 = *v62;
        *(v60 + 2) = v59 + 1;
        *&v60[2 * v59 + 32] = v68;
      }

LABEL_57:
      v53 = v36;
      goto LABEL_58;
    }

    v40 = v65;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v41, v42))
    {

      sub_10006A2D0(v36, v35);
      return;
    }

    LODWORD(v69) = v42;
    v71 = v36;
    v43 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v74 = v68;
    v70 = v43;
    *v43 = 136315138;
    v44 = [v40 asData];

    if (v44)
    {
      v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v73 = sub_100288788(v45, v47);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v48 = BidirectionalCollection<>.joined(separator:)();
      v50 = v49;
      sub_10006A178(v45, v47);

      v51 = sub_1002FFA0C(v48, v50, &v74);

      v52 = v70;
      *(v70 + 1) = v51;
      _os_log_impl(&_mh_execute_header, v41, v69, "Failed to retrieve function identifier and supported action identifier user flows %s", v52, 0xCu);
      sub_1000752F4(v68);

      v53 = v71;
LABEL_58:
      sub_10006A2D0(v53, v35);
      return;
    }

LABEL_62:
    __break(1u);
  }
}

uint64_t sub_10035667C(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v13 = [a1 publicKeyIdentifier];
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  aBlock = sub_100288788(v14, v16);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  BidirectionalCollection<>.joined(separator:)();
  sub_10006A178(v14, v16);

  v17 = String._bridgeToObjectiveC()();

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v39 = sub_10035A314;
  v40 = v18;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_1000A409C;
  v38 = &unk_1004D1770;
  v19 = _Block_copy(&aBlock);

  v20 = SESEndPointUpdateWithBlock();
  _Block_release(v19);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v21 = swift_allocObject();
  v23 = v29;
  v22 = v30;
  v21[2] = v20;
  v21[3] = v23;
  v21[4] = v22;
  v39 = sub_10035A364;
  v40 = v21;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100080830;
  v38 = &unk_1004D17C0;
  v24 = _Block_copy(&aBlock);
  v25 = v20;

  v26 = v22;
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10035A294(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v33 + 8))(v8, v5);
  (*(v31 + 8))(v12, v32);
}

void sub_100356B24(void *a1, uint64_t a2)
{
  sub_10034D004(a2);
  sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setSupportedRKEFunctions:isa];
}

uint64_t sub_100356BB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = &selRef_mockFleetIntermediateCert;
  if (a1)
  {
    swift_errorRetain();
    v5 = a3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v8 = 136315394;
      v32 = v7;
      v9 = [v5 publicKeyIdentifier];
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      sub_100288788(v10, v12);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      v4 = &selRef_mockFleetIntermediateCert;
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v13 = BidirectionalCollection<>.joined(separator:)();
      v15 = v14;
      sub_10006A178(v10, v12);

      v16 = sub_1002FFA0C(v13, v15, &v33);

      *(v8 + 4) = v16;
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_1002FFA0C(v17, v18, &v33);

      *(v8 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v6, v32, "Failed to update supported RKE functions for %s %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Endpoint updated with supported RKE functions", v22, 2u);
    }
  }

  v23 = [a3 appletIdentifier];
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = [a3 v4[91]];
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  sub_1003375E0(0xD000000000000042, 0x80000001004612F0, v24, v26, v28, v30, 0);
  sub_10006A178(v28, v30);
  return sub_10006A178(v24, v26);
}

uint64_t sub_100356F30@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040F420;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000010046BB80;
  *(inited + 48) = *(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
  *(inited + 72) = &type metadata for UInt16;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000010046FC40;
  *(inited + 96) = *(v2 + 16);
  *(inited + 120) = &type metadata for UInt8;
  strcpy((inited + 128), "keyIdentifier");
  *(inited + 142) = -4864;
  sub_100288788(*(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier), *(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8));
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  v4 = BidirectionalCollection<>.joined(separator:)();
  v6 = v5;

  *(inited + 144) = v4;
  *(inited + 152) = v6;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x8000000100465F50;
  sub_100288788(*(v2 + 24), *(v2 + 32));
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  *(inited + 192) = v7;
  *(inited + 200) = v9;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 1919247728;
  *(inited + 232) = 0xE400000000000000;
  v10 = *(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  *(inited + 240) = UUID.uuidString.getter();
  *(inited + 248) = v11;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0x5474736575716572;
  *(inited + 280) = 0xEB00000000657079;
  v18 = *(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType);
  *(inited + 288) = String.init<A>(describing:)();
  *(inited + 296) = v12;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x6574617473;
  *(inited + 328) = 0xE500000000000000;
  v19 = *(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state);
  *(inited + 336) = String.init<A>(describing:)();
  *(inited + 344) = v13;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0x5374756F656D6974;
  *(inited + 376) = 0xEA00000000006365;
  v14 = *(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec);
  *(inited + 408) = &type metadata for Double;
  *(inited + 384) = v14;
  v15 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  result = swift_arrayDestroy();
  *a2 = v15;
  return result;
}

char *sub_10035727C()
{
  sub_10006A178(*(v0 + 3), *(v0 + 4));
  sub_10006A2D0(*(v0 + 5), *(v0 + 6));
  v1 = *(v0 + 8);
  sub_1000B2A4C(*(v0 + 7));
  v2 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion + 8];
  sub_1000B2A4C(*&v0[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion]);
  sub_10006A178(*&v0[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier], *&v0[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8]);
  v5 = *&v0[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer];

  v6 = *&v0[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_readerInformation + 8];

  return v0;
}

uint64_t sub_100357350()
{
  sub_10035727C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *sub_1003573B4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1003573CC()
{
  v1 = OBJC_IVAR____TtC10seserviced9AlishaRKE_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_notificationsToBeSuppressed);

  v4 = *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState);

  v5 = *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_peersAvailableToSubscribe);

  v6 = *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003574D0()
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

uint64_t sub_1003575B8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_100357720()
{
  result = qword_10050BC68;
  if (!qword_10050BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050BC68);
  }

  return result;
}

unint64_t sub_100357778()
{
  result = qword_10050BC70;
  if (!qword_10050BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050BC70);
  }

  return result;
}

unint64_t sub_1003577D0()
{
  result = qword_10050BC78;
  if (!qword_10050BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050BC78);
  }

  return result;
}

unint64_t sub_100357828()
{
  result = qword_10050BC80;
  if (!qword_10050BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050BC80);
  }

  return result;
}

uint64_t sub_10035787C(uint64_t a1, char a2, void *a3)
{
  v40 = *(a1 + 16);
  if (!v40)
  {
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOWORD(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_10008C908(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10031048C(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_10008C908(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_100314674();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 2 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x8000000100466020;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v40 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_10008C908(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_10031048C(v31, 1);
        v32 = *a3;
        v27 = sub_10008C908(v7, v6);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v7;
      v35[1] = v6;
      *(v34[7] + 2 * v27) = v25;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v34[2] = v37;
      v5 += 12;
      if (v40 == v8)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100357BF8(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10008C908(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10031072C(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_10008C908(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1003147DC();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x8000000100466020;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v25;
  if (v42 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_10008C908(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_10031072C(v32, 1);
        v33 = *a3;
        v28 = sub_10008C908(v6, v5);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v6;
      v36[1] = v5;
      v37 = (v35[7] + 16 * v28);
      *v37 = v26;
      v37[1] = v8;
      v38 = v35[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v35[2] = v39;
      v4 += 4;
      if (v42 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100357FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100357FC4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_10035A294(&qword_100503000, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1003581A4(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1003581A4(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_10035A294(&qword_100503000, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1003581A4(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_10035A294(&qword_100503000, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100358284(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100358384(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100358484(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v19 = *(v18 + 8);
      v20 = *(v18 + 32);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 32) = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 40;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_10035860C(uint64_t a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_10034B1D0(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_100358638(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) == *(a2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) && *(a1 + 16) == *(a2 + 16))
  {
    return sub_10008FB4C(*(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier), *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8), *(a2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier), *(a2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8));
  }

  else
  {
    return 0;
  }
}

void sub_100358688(unint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5, uint64_t a6, _BYTE *a7)
{
  v8 = v7;
  if (a1 >> 62)
  {
LABEL_60:
    v68 = a6;
    v69 = _CocoaArrayWrapper.endIndex.getter();
    a6 = v68;
    v11 = v69;
    if (!v69)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  v12 = 0;
  v75 = a6;
  v78 = v11;
  v71 = a7;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v16 = [v13 tag];
    if (v16 <= 149)
    {
      if (v16 == 128)
      {
        v32 = [v14 value];
        if (!v32)
        {
          goto LABEL_68;
        }

        v33 = v32;
        v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = v8;
        v38 = sub_100090214(v34, v36, 0, 0, 0);
        if (v8)
        {
          sub_10006A178(v34, v36);

          v39 = 0;
        }

        else
        {
          v49 = v38;
          sub_10006A178(v34, v36);
          v39 = v49;
        }

        v8 = 0;
        *a2 = v39;
        *(a2 + 2) = v37 != 0;
        v11 = v78;
      }

      else if (v16 == 131)
      {
        v17 = [v14 value];
        if (!v17)
        {
          goto LABEL_67;
        }

        v18 = v17;
        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = v8;
        v23 = sub_1000939AC(v19, v21, 0, 0, 0);
        if (v8)
        {

          v23 = 0;
        }

        v8 = 0;
        v11 = v78;
        *a3 = v23;
        a3[1] = v22 != 0;
      }

      goto LABEL_5;
    }

    if (v16 == 150)
    {
      if (v75 > 0x2FF)
      {
        v40 = [v14 value];
        if (!v40)
        {
          goto LABEL_69;
        }

        v41 = v40;
        v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = v8;
        v46 = sub_1000939AC(v42, v44, 0, 0, 0);
        if (v8)
        {

          v46 = 0;
        }

        v8 = 0;
        v11 = v78;
        *a7 = v46;
        a7[1] = v45 != 0;
      }

      goto LABEL_5;
    }

    if (v16 != 192)
    {
      goto LABEL_5;
    }

    v24 = [v14 value];
    if (!v24)
    {
      goto LABEL_66;
    }

    v25 = v24;
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v28;
    v30 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v30 != 2)
      {
        sub_10006A178(v26, v28);
        v11 = v78;
LABEL_43:
        v60 = [v14 value];
        if (v60)
        {
          v61 = v60;
          v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;

          v11 = v78;
        }

        else
        {
          v62 = 0;
          v64 = 0xF000000000000000;
        }

        v65 = *a5;
        v66 = a5[1];
        *a5 = v62;
        a5[1] = v64;
        sub_10006A2D0(v65, v66);
        goto LABEL_5;
      }

      v48 = *(v26 + 16);
      v47 = *(v26 + 24);
      sub_10006A178(v26, v29);
      v31 = v47 - v48;
      if (__OFSUB__(v47, v48))
      {
        goto LABEL_63;
      }

      goto LABEL_31;
    }

    if (v30)
    {
      break;
    }

    sub_10006A178(v26, v28);
    v31 = BYTE6(v28);
LABEL_31:
    v11 = v78;
    if (v31 < 65)
    {
      goto LABEL_43;
    }

LABEL_37:
    v50 = v14;
    v14 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v51))
    {
      v72 = v51;
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      v73 = v50;
      v53 = [v50 value];
      if (!v53)
      {
        goto LABEL_70;
      }

      v54 = v53;
      v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = v57 >> 62;
      if ((v57 >> 62) > 1)
      {
        if (v58 == 2)
        {
          v67 = *(v55 + 16);
          v70 = *(v55 + 24);
          sub_10006A178(v55, v57);
          v59 = v70 - v67;
          if (__OFSUB__(v70, v67))
          {
            goto LABEL_65;
          }
        }

        else
        {
          sub_10006A178(v55, v57);
          v59 = 0;
        }
      }

      else if (v58)
      {
        sub_10006A178(v55, v57);
        LODWORD(v59) = HIDWORD(v55) - v55;
        if (__OFSUB__(HIDWORD(v55), v55))
        {
          goto LABEL_64;
        }

        v59 = v59;
      }

      else
      {
        sub_10006A178(v55, v57);
        v59 = BYTE6(v57);
      }

      v11 = v78;
      *(v52 + 4) = v59;

      _os_log_impl(&_mh_execute_header, v14, v72, "Ignoring proprietary data too large %ld bytes", v52, 0xCu);

      a7 = v71;
    }

    else
    {

      v14 = v50;
    }

LABEL_5:

    ++v12;
    if (v15 == v11)
    {
      return;
    }
  }

  sub_10006A178(v26, v28);
  v11 = v78;
  if (!__OFSUB__(HIDWORD(v26), v26))
  {
    if (HIDWORD(v26) - v26 < 65)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:

  __break(1u);
}

uint64_t sub_100358C38(int a1, int a2, int a3, uint64_t a4, unint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v89 = a6;
  LODWORD(v84) = a3;
  v90 = a2;
  v86 = type metadata accessor for UUID();
  v88 = *(v86 - 8);
  v13 = *(v88 + 64);
  v14 = __chkstk_darwin(v86);
  v85 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v23 = qword_10051B7F0;
  *v22 = qword_10051B7F0;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_109:
    swift_once();
LABEL_10:
    v34 = v90;
    sub_1002A821C(v90, a1, v17);
    sub_1002A8AE0(a4, a5, a1, v17);
    if (a1 == 16)
    {
      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      sub_1002353D0(v34 == 1, v17);
    }

    return 1;
  }

  if (!*(a7 + 16) || (v25 = sub_10008CA34(a1), (v26 & 1) == 0))
  {
    v17 = v89;
    if (qword_100501C40 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_109;
  }

  v27 = *(*(a7 + 56) + v25);
  v28 = v89;
  if (*(a8 + 16) && (v29 = sub_10008CA34(a1), (v30 & 1) != 0))
  {
    v31 = (*(a8 + 56) + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
    sub_100069E2C(*v31, v33);
  }

  else
  {
    v32 = 0;
    v33 = 0xF000000000000000;
  }

  if (v27 == v90)
  {
    if (v33 >> 60 == 15)
    {
      if (a5 >> 60 == 15)
      {
        sub_10006A2BC(a4, a5);
LABEL_47:
        sub_10006A2D0(v32, v33);
        return 0;
      }

      goto LABEL_20;
    }

    if (a5 >> 60 == 15)
    {
LABEL_20:
      sub_10006A2BC(v32, v33);
      sub_10006A2BC(a4, a5);
      sub_10006A2D0(v32, v33);
      sub_10006A2D0(a4, a5);
      goto LABEL_21;
    }

    sub_10006A2BC(v32, v33);
    sub_10006A2BC(a4, a5);
    v50 = sub_10008FB4C(v32, v33, a4, a5);
    sub_10006A2D0(a4, a5);
    sub_10006A2D0(v32, v33);
    if (v50)
    {
      goto LABEL_47;
    }
  }

LABEL_21:
  v83 = v32;
  if (qword_100501C40 != -1)
  {
    swift_once();
  }

  sub_1002A821C(v90, a1, v28);
  sub_1002A8AE0(a4, a5, a1, v28);
  type metadata accessor for AlishaPeer();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {
    sub_10006A2D0(v83, v33);
    return 1;
  }

  v36 = v35;
  v39 = *(a7 + 16) && (v37 = sub_10008CA34(0x10u), (v38 & 1) != 0) && *(*(a7 + 56) + v37) == 1;
  v40 = v83;
  if (*(v36 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) < 0x300u)
  {
    if ((a1 - 1) <= 1u)
    {
      v84 = v33;
      v41 = v36;
      v81 = *(*(v36 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 65);
      if (v81)
      {
        v82 = v39;
        v42 = v36;
        v43 = *(v88 + 16);

        v44 = v86;
      }

      else
      {
        v43 = *(v88 + 16);
        v42 = v41;
        v43(v17, v41 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v86);
        v52 = OBJC_IVAR____TtC10seserviced9AlishaRKE_notificationsToBeSuppressed;
        v53 = v87;
        swift_beginAccess();
        v54 = *(v53 + v52);
        v55 = *(v54 + 16);

        if (v55 && (v56 = sub_10008C808(v17), (v57 & 1) != 0))
        {
          v58 = *(*(v54 + 56) + 2 * v56);
          swift_endAccess();
          v59 = v17;
          v60 = v86;
          (*(v88 + 8))(v59, v86);
          v61 = v58 == a1;
          v44 = v60;
          v62 = v61;
          v82 = v62 | v39;
        }

        else
        {
          v82 = v39;
          swift_endAccess();
          v44 = v86;
          (*(v88 + 8))(v17, v86);
        }
      }

      v66 = v85;
      v43(v85, v42 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v44);
      v67 = OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState;
      v68 = v87;
      swift_beginAccess();
      v69 = *(v68 + v67);
      v70 = *(v69 + 16);

      if (v70)
      {
        v71 = sub_10008C808(v66);
        v33 = v84;
        if (v72)
        {
          v73 = *(*(v69 + 56) + v71);
        }

        else
        {
          v73 = 0;
        }
      }

      else
      {
        v73 = 0;
        v33 = v84;
      }

      v36 = v42;
      swift_endAccess();
      (*(v88 + 8))(v66, v44);
      if (v90 > 3u || v90 == 1)
      {
LABEL_70:
        if (v27 <= 3 && v27 != 1)
        {
          if (v82)
          {
            goto LABEL_76;
          }

          v74 = v81;
          if (v73 == 2)
          {
            v74 = 0;
          }

          if (v74)
          {
LABEL_76:

LABEL_95:
            if (qword_100501B60 != -1)
            {
              swift_once();
            }

            v80 = 0;
LABEL_103:
            sub_100235820(v80, v36);
            goto LABEL_104;
          }

          v76 = *(v42 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
          v77 = *(v42 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
          v78 = *(v42 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v79 = *(v42 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
          sub_10006A2BC(v76, v77);
          sub_10006A2BC(v78, v79);

LABEL_93:
          sub_1003375E0(0xD00000000000003BLL, 0x800000010046FE30, v76, v77, v78, v79, 0);
          sub_10006A2D0(v78, v79);
          sub_10006A2D0(v76, v77);
          goto LABEL_95;
        }

LABEL_77:

LABEL_104:
        v40 = v83;
        goto LABEL_105;
      }

      if (v27 <= 3 && v27 != 1)
      {
        if (!v90 || v90 == 3 || v90 == 2)
        {
          goto LABEL_77;
        }

        goto LABEL_70;
      }

      if (v82)
      {
        goto LABEL_82;
      }

      v75 = v81;
      if (v73 == 1)
      {
        v75 = 0;
      }

      if (v75)
      {
LABEL_82:

LABEL_100:
        if (qword_100501B60 != -1)
        {
          swift_once();
        }

        v80 = 1;
        goto LABEL_103;
      }

      v45 = *(v42 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
      v46 = *(v42 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      v47 = *(v42 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v48 = *(v42 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      sub_10006A2BC(v45, v46);
      sub_10006A2BC(v47, v48);

      goto LABEL_99;
    }

    goto LABEL_42;
  }

  if (a1 != 3)
  {
LABEL_42:

    if (a1 == 16)
    {
      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      sub_1002353D0(v90 == 1, v36);
      v49 = v83;
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  if ((v84 & 0x100) == 0)
  {
    if (!v90)
    {
      goto LABEL_85;
    }

    if (v90 <= 0xAu && (v27 - 1) >= 0xAu)
    {
      if (v39 || v84 != 4 && v84 != 11)
      {

        goto LABEL_100;
      }

      v45 = *(v36 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
      v46 = *(v36 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      v47 = *(v36 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v48 = *(v36 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);

      sub_10006A2BC(v45, v46);
      sub_10006A2BC(v47, v48);
LABEL_99:
      sub_1003375E0(0xD000000000000039, 0x800000010046FE70, v45, v46, v47, v48, 0);
      sub_10006A2D0(v47, v48);
      sub_10006A2D0(v45, v46);
      goto LABEL_100;
    }

    if (v90 >= 0xBu)
    {
LABEL_85:
      if (v27 && v27 <= 0xA)
      {
        if (v39 || v84 != 4 && v84 != 11)
        {

          goto LABEL_95;
        }

        v76 = *(v36 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
        v77 = *(v36 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
        v78 = *(v36 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
        v79 = *(v36 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);

        sub_10006A2BC(v76, v77);
        sub_10006A2BC(v78, v79);
        goto LABEL_93;
      }
    }

LABEL_105:
    v49 = v40;
LABEL_106:
    sub_10006A2D0(v49, v33);

    return 1;
  }

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Missing source of change", v65, 2u);
  }

  sub_10006A2D0(v83, v33);

  return 0;
}

void sub_1003597C4(unint64_t a1, uint64_t a2, char **a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_100355F64(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1003598C4(unint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  if (a1 >> 62)
  {
LABEL_62:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  v11 = 0;
  v74 = v10;
  v68 = a6;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v14 = *(a1 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v17 = [v14 tag];
    if (v17 > 131)
    {
      break;
    }

    if (v17 == 128)
    {
      v32 = [v15 value];
      if (!v32)
      {
        goto LABEL_71;
      }

      v33 = v32;
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = v7;
      v38 = sub_100090214(v34, v36, 0, 0, 0);
      if (v7)
      {
        sub_10006A178(v34, v36);

        v39 = 0;
      }

      else
      {
        v48 = v38;
        sub_10006A178(v34, v36);
        v39 = v48;
      }

      v7 = 0;
      *a2 = v39;
      *(a2 + 2) = v37 != 0;
      goto LABEL_50;
    }

    if (v17 == 129)
    {
      v18 = [v15 value];
      if (!v18)
      {
        goto LABEL_70;
      }

      v19 = v18;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v7;
      v24 = sub_1000939AC(v20, v22, 0, 0, 0);
      if (v7)
      {

        v24 = 0;
      }

      v7 = 0;
      v10 = v74;
      v12 = v23 != 0;
      v13 = a3;
LABEL_5:
      *v13 = v24;
      v13[1] = v12;
    }

LABEL_6:

    ++v11;
    if (v16 == v10)
    {
      return;
    }
  }

  if (v17 == 132)
  {
    v40 = [v15 value];
    if (!v40)
    {
      goto LABEL_69;
    }

    v41 = v40;
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = v7;
    v24 = sub_1000939AC(v42, v44, 0, 0, 0);
    if (v7)
    {

      v24 = 0;
    }

    v7 = 0;
    v13 = a4;
    v10 = v74;
    v12 = v45 != 0;
    goto LABEL_5;
  }

  if (v17 != 135)
  {
    goto LABEL_6;
  }

  v25 = [v15 value];
  if (!v25)
  {
    goto LABEL_68;
  }

  v26 = v25;
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = v29;
  v31 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v31 != 2)
    {
      sub_10006A178(v27, v29);
LABEL_45:
      v59 = [v15 value];
      if (v59)
      {
        v60 = v59;
        v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0xF000000000000000;
      }

      v64 = *a6;
      v65 = a6[1];
      *a6 = v61;
      a6[1] = v63;
      sub_10006A2D0(v64, v65);
LABEL_50:
      v10 = v74;
      goto LABEL_6;
    }

    v47 = *(v27 + 16);
    v46 = *(v27 + 24);
    sub_10006A178(v27, v30);
    if (__OFSUB__(v46, v47))
    {
      goto LABEL_65;
    }

    if (v46 - v47 < 65)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  if (!v31)
  {
    sub_10006A178(v27, v29);
    if (BYTE6(v29) < 0x41uLL)
    {
      goto LABEL_45;
    }

LABEL_39:
    v49 = v15;
    v15 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v50))
    {

      v15 = v49;
      goto LABEL_50;
    }

    v69 = v50;
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    v70 = v49;
    v52 = [v49 value];
    if (!v52)
    {
      goto LABEL_72;
    }

    v53 = v52;
    v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = v56 >> 62;
    if ((v56 >> 62) > 1)
    {
      if (v57 == 2)
      {
        v66 = *(v54 + 16);
        v67 = *(v54 + 24);
        sub_10006A178(v54, v56);
        v58 = v67 - v66;
        if (__OFSUB__(v67, v66))
        {
          goto LABEL_67;
        }
      }

      else
      {
        sub_10006A178(v54, v56);
        v58 = 0;
      }
    }

    else if (v57)
    {
      sub_10006A178(v54, v56);
      LODWORD(v58) = HIDWORD(v54) - v54;
      if (__OFSUB__(HIDWORD(v54), v54))
      {
        goto LABEL_66;
      }

      v58 = v58;
    }

    else
    {
      sub_10006A178(v54, v56);
      v58 = BYTE6(v56);
    }

    v10 = v74;
    *(v51 + 4) = v58;

    _os_log_impl(&_mh_execute_header, v15, v69, "Ignoring arbitrary data too large %ld bytes", v51, 0xCu);

    a6 = v68;
    goto LABEL_6;
  }

  sub_10006A178(v27, v29);
  if (!__OFSUB__(HIDWORD(v27), v27))
  {
    if (HIDWORD(v27) - v27 < 65)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
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
}

uint64_t sub_100359E48(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType))
  {
    v5 = *(result + 24);
    v6 = *(result + 32);
    v7 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
    v8 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
    v9 = result;
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409A40;
    strcpy((inited + 32), "rkeFunctionID");
    *(inited + 46) = -4864;
    *(inited + 48) = *(v9 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
    *(inited + 72) = &type metadata for UInt16;
    *(inited + 80) = 0x6F69746341656B72;
    *(inited + 88) = 0xEB0000000044496ELL;
    *(inited + 96) = *(v9 + 16);
    *(inited + 120) = &type metadata for UInt8;
    *(inited + 128) = 0x726F727265;
    *(inited + 168) = &type metadata for String;
    *(inited + 136) = 0xE500000000000000;
    *(inited + 144) = a2;
    *(inited + 152) = a3;

    v11 = sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    sub_1003375E0(0xD000000000000048, 0x800000010046FD50, v5, v6, v7, v8, v11);
  }

  return result;
}

uint64_t sub_10035A00C(uint64_t result, char a2)
{
  if (!*(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType))
  {
    v3 = *(result + 24);
    v4 = *(result + 32);
    v5 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
    v6 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
    v7 = result;
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409A40;
    strcpy((inited + 32), "rkeFunctionID");
    *(inited + 46) = -4864;
    *(inited + 48) = *(v7 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
    *(inited + 72) = &type metadata for UInt16;
    *(inited + 80) = 0x6F69746341656B72;
    *(inited + 88) = 0xEB0000000044496ELL;
    *(inited + 96) = *(v7 + 16);
    *(inited + 120) = &type metadata for UInt8;
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x800000010046FDA0;
    *(inited + 168) = &type metadata for UInt8;
    *(inited + 144) = a2;
    v9 = sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    sub_1003375E0(0xD000000000000048, 0x800000010046FD50, v3, v4, v5, v6, v9);
  }

  return result;
}

uint64_t sub_10035A1BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10035A20C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10034B1D0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = v5;
  }
}

uint64_t sub_10035A240()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10035A294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10035A2DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10035A31C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10035A370()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_10006A178(v0[4], v0[5]);
  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10035A3D4(uint64_t result)
{
  if (!*(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType))
  {
    v1 = *(result + 24);
    v2 = *(result + 32);
    v3 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
    v4 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
    v5 = result;
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    strcpy((inited + 32), "rkeFunctionID");
    *(inited + 46) = -4864;
    *(inited + 48) = *(v5 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
    *(inited + 72) = &type metadata for UInt16;
    *(inited + 80) = 0x6F69746341656B72;
    *(inited + 88) = 0xEB0000000044496ELL;
    v7 = *(v5 + 16);
    *(inited + 120) = &type metadata for UInt8;
    *(inited + 96) = v7;
    v8 = sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    sub_1003375E0(0xD000000000000045, 0x8000000100470020, v1, v2, v3, v4, v8);
  }

  return result;
}

void sub_10035A558(unsigned int a1, int a2, uint64_t a3, unint64_t a4, int a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, void (*a14)(Class, id), unint64_t a15)
{
  v261 = a8;
  v260 = a7;
  v270 = a6;
  LODWORD(v278) = a5;
  v282 = a4;
  v283 = a3;
  v273 = a2;
  v274 = a1;
  v15 = a15;
  v16 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v251 = &v236 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v264 = &v236 - v20;
  v258 = type metadata accessor for Logger();
  v257 = *(v258 - 8);
  v21 = *(v257 + 64);
  __chkstk_darwin(v258);
  v266 = &v236 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UUID();
  v267 = *(v23 - 8);
  v24 = *(v267 + 64);
  __chkstk_darwin(v23);
  v26 = &v236 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v236 - v28;
  __chkstk_darwin(v30);
  v32 = &v236 - v31;
  __chkstk_darwin(v33);
  v271 = &v236 - v34;
  v35 = type metadata accessor for DispatchPredicate();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = (&v236 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = swift_allocObject();
  v279 = a14;
  *(v40 + 16) = a14;
  *(v40 + 24) = a15;
  v41 = qword_100501D90;
  swift_retain_n();
  if (v41 != -1)
  {
LABEL_165:
    swift_once();
  }

  v42 = qword_10051B7F0;
  *v39 = qword_10051B7F0;
  v43 = *(v36 + 104);
  v254 = enum case for DispatchPredicate.onQueue(_:);
  v255 = (v36 + 104);
  v253 = v43;
  v43(v39);
  v265 = v42;
  v44 = _dispatchPreconditionTest(_:)();
  v46 = *(v36 + 8);
  v45 = (v36 + 8);
  v256 = v39;
  v252 = v46;
  v46(v39, v35);
  if (v44)
  {
    v249 = v45;
    v250 = v35;
    v44 = swift_allocObject();
    v47 = v283;
    v48 = v282;
    *(v44 + 16) = v283;
    *(v44 + 24) = v48;
    sub_100069E2C(v47, v48);
    if (qword_100501D78 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v39 = a13;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_10035C978;
  *(v49 + 24) = v44;

  v35 = sub_1000CAAC4();

  v50 = sub_1000CA840(v35);
  if (!v50)
  {
LABEL_77:

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Vehicle is not connected", v79, 2u);
    }

    sub_1002E3370(264, v279);

    goto LABEL_161;
  }

  v51 = v50;
  v247 = a11;
  v246 = a10;
  v245 = a9;
  if (!v278)
  {
    type metadata accessor for AlishaPeer();
    v80 = swift_dynamicCastClass();
    if (v80)
    {
      if (*(v80 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) >= 0x300u && v274 == 1)
      {

        if (v273)
        {
          v81 = 13;
        }

        else
        {
          v81 = 3;
        }

        sub_10035A558(3, v81, v283, v282, 0, v270, v260, v261, v245, v246, v247, a12, a13, v279, v15);

        return;
      }
    }
  }

  v243 = a12;
  v240 = v26;
  v241 = v29;
  v242 = v32;
  v272 = v40;
  v52 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v244 = v52;
  v36 = *(a13 + v52);
  if (v36 >> 62)
  {
LABEL_170:
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v282;
  v269 = v39;
  v268 = v35;
  v248 = v23;
  v277 = v51;
  v259 = v15;

  v26 = v283;
  v51 = v36;
  if (!v32)
  {
    v36 = 0;
LABEL_88:

    v70 = swift_allocObject();
    *(v70 + 16) = v26;
    *(v70 + 24) = v40;
    sub_100069E2C(v26, v40);
    if (qword_1005019E8 != -1)
    {
LABEL_173:
      swift_once();
    }

    v82 = swift_allocObject();
    *(v82 + 16) = sub_10035C980;
    *(v82 + 24) = v70;

    v83 = sub_1000CAA04();

    v84 = sub_1000CA810(v83);
    v23 = v277;
    v15 = v268;
    v85 = v269;
    if (v84)
    {
      v86 = v84;
      v87 = [v84 readerInfo];
      if (v87)
      {
        v285 = v83;
        v88 = v87;
        v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;

        type metadata accessor for AlishaPeer();
        v91 = swift_dynamicCastClass();
        if (!v91)
        {

          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            *&aBlock = v119;
            *v118 = 136315138;

            v120 = UUID.uuidString.getter();
            v122 = v121;

            v123 = sub_1002FFA0C(v120, v122, &aBlock);

            *(v118 + 4) = v123;
            _os_log_impl(&_mh_execute_header, v116, v117, "Failed to cast Peer to AlishaPeer %s", v118, 0xCu);
            sub_1000752F4(v119);
          }

          sub_1002E3370(258, v279);

          return;
        }

        v92 = v91;
        v239 = v36;
        v93 = *(*(v91 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 88);
        if (*(v93 + 16))
        {
          v94 = sub_10008CA34(v274);
          v95 = v267;
          if (v96)
          {
            v97 = *(*(v93 + 56) + 8 * v94);
          }

          else
          {
            v97 = 5000.0;
          }
        }

        else
        {
          v97 = 5000.0;
          v95 = v267;
        }

        if ([v86 getEndpointUser] <= 1)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v124;
          v125 = objc_opt_self();
          v126 = String._bridgeToObjectiveC()();

          sub_10004D584(v125, v126);
        }

        v127 = *(v92 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version);
        v275 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
        if (v127 >= 0x300)
        {
          v128 = *(v85 + OBJC_IVAR____TtC10seserviced9AlishaRKE_currentExecutionIdentifier);
          v129 = *(v85 + OBJC_IVAR____TtC10seserviced9AlishaRKE_currentExecutionIdentifier);
          if (((v129 + 1) & 0x100) != 0)
          {
            v130 = 1;
          }

          else
          {
            v130 = v129 + 1;
          }

          *(v85 + OBJC_IVAR____TtC10seserviced9AlishaRKE_currentExecutionIdentifier) = v130;
        }

        else
        {
          v128 = 0;
        }

        v284 = v92;
        v281 = v90;
        v131 = v270;
        if (v270 > 0xFF)
        {
LABEL_176:
          __break(1u);
        }

        else
        {
          v237 = v127;
          v132 = v127 < 0x300;
          v262 = v86;
          v133 = [v86 appletIdentifier];
          v134 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v263 = v134;
          v136 = v135;
          v280 = v135;

          v137 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
          swift_beginAccess();
          v138 = *(v95 + 16);
          v238 = v137;
          (v138)(v271, v23 + v137, v248);
          v139 = type metadata accessor for AlishaRKE.RKERequest(0);
          v140 = *(v139 + 48);
          v141 = *(v139 + 52);
          v15 = swift_allocObject();
          v142 = (v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
          *v142 = 0;
          v142[1] = 0;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state) = 0;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer) = 0;
          v143 = (v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
          v144 = v283;
          v145 = v282;
          *v143 = v283;
          v143[1] = v145;
          *(v15 + 24) = v134;
          *(v15 + 32) = v136;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) = v274;
          *(v15 + 16) = v273;
          v146 = (v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier);
          v236 = v128;
          *v146 = v128;
          v146[1] = v132;
          v147 = v145;
          *(v15 + 17) = v131;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType) = v278;
          v148 = v245;
          v149 = v246;
          *(v15 + 56) = v245;
          *(v15 + 64) = v149;
          v150 = v243;
          *(v15 + 40) = v247;
          *(v15 + 48) = v150;
          v151 = (v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_readerInformation);
          v152 = v281;
          *v151 = v276;
          v151[1] = v152;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer) = v284;
          v278 = v95 + 16;
          v279 = v138;
          (v138)(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier, v271, v248);
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec) = v97 / 1000.0;
          v153 = (v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
          v154 = v272;
          *v153 = sub_10035C960;
          v153[1] = v154;
          v276 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state) = 0;

          sub_100069E2C(v144, v147);
          v23 = v263;

          sub_100069E2C(v23, v280);
          sub_100113B54(v148);
          sub_10006A2BC(v247, v150);
          v155 = qword_100501DB0;

          if (v155 == -1)
          {
            goto LABEL_118;
          }
        }

        swift_once();
LABEL_118:
        v156 = v257;
        v157 = v258;
        (*(v257 + 16))(v266, qword_10051B820 + OBJC_IVAR____TtC10seserviced9AlishaRKE_logger, v258);

        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.info.getter();

        v160 = os_log_type_enabled(v158, v159);
        v161 = v269;
        v162 = v282;
        if (v160)
        {
          v163 = swift_slowAlloc();
          *v163 = 134217984;
          *(v163 + 4) = *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec);
          _os_log_impl(&_mh_execute_header, v158, v159, "RKE request timer set to %f sec", v163, 0xCu);
          v162 = v282;
        }

        sub_10006A178(v23, v280);
        (*(v156 + 8))(v266, v157);
        v164 = v267;
        v165 = *(v267 + 8);
        v166 = v271;
        v280 = v267 + 8;
        v271 = v165;
        (v165)(v166, v248);
        v167 = swift_allocObject();
        swift_weakInit();
        v168 = swift_allocObject();
        *(v168 + 16) = v167;
        *(v168 + 24) = v161;
        v169 = v283;
        *(v168 + 32) = v283;
        *(v168 + 40) = v162;
        v170 = v161;
        v171 = v274;
        *(v168 + 48) = v274;
        *(v168 + 50) = v273;
        v172 = v162;
        v173 = objc_allocWithZone(SESTimer);
        v291 = sub_10035CA08;
        v292 = v168;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v289 = sub_100080830;
        v290 = &unk_1004D1928;
        v174 = _Block_copy(&aBlock);
        sub_100069E2C(v169, v172);
        v283 = v167;

        v175 = sub_1003AE50C(v173, v265, v174);
        _Block_release(v174);

        v176 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer;
        v177 = *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
        *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer) = v175;

        v178 = v244;
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v170 + v178) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v170 + v178) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v231 = *((*(v170 + v178) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v282 = v176;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_100068FC4(&qword_100504060, &qword_10040B370);
        v179 = swift_allocObject();
        *(v179 + 16) = xmmword_10040DA10;
        v180 = objc_opt_self();
        v181 = [v180 TLVWithTag:128 unsignedShort:bswap32(v171) >> 16];
        v182 = v270;
        if (v181)
        {
          *(v179 + 32) = v181;
          v183 = [v180 TLVWithTag:129 unsignedChar:v273];
          if (v183)
          {
            *(v179 + 40) = v183;
            v286 = v179;
            if (*(v284 + v275) >= 0x300u)
            {
              if (v237 < 0x300)
              {
LABEL_184:

                __break(1u);
                goto LABEL_185;
              }

              if (![v180 TLVWithTag:132 unsignedChar:v236])
              {
LABEL_185:

                __break(1u);
                goto LABEL_186;
              }

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v286 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v286 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v232 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if (v261 >> 60 != 15)
              {
                sub_100069E2C(v260, v261);
                isa = Data._bridgeToObjectiveC()().super.isa;
                v185 = [v180 TLVWithTag:136 value:isa];

                if (!v185)
                {
LABEL_187:

                  __break(1u);
                  goto LABEL_188;
                }

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v286 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v286 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v234 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                sub_10006A2D0(v260, v261);
              }

              if (![v180 TLVWithTag:193 unsignedChar:v182])
              {
LABEL_186:

                __break(1u);
                goto LABEL_187;
              }

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v286 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v286 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v233 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if ((v182 - 1) <= 1u)
              {
                if (![v180 TLVWithTag:144 unsignedShort:4097])
                {
LABEL_188:

                  __break(1u);

                  __break(1u);
                  return;
                }

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v286 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v286 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v235 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }
            }

            *&aBlock = sub_1002B3B94(&off_1004C4FA8);
            *(&aBlock + 1) = v186;
            sub_10009393C(0, &qword_100502418, SESTLV_ptr);
            v187 = Array._bridgeToObjectiveC()().super.isa;
            v188 = [v180 TLVWithTag:32624 children:v187];

            if (v188)
            {
              v189 = [v188 asData];

              v190 = v256;
              if (v189)
              {

                v191 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v193 = v192;

                Data.append(_:)();
                sub_10006A178(v191, v193);
                if (qword_100501B60 != -1)
                {
                  swift_once();
                }

                v194 = qword_10051B5A0;
                v196 = *(&aBlock + 1);
                v195 = aBlock;
                v197 = v264;
                v198 = v248;
                (v279)(v264, v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier, v248);
                (*(v164 + 56))(v197, 0, 1, v198);
                v199 = v265;
                *v190 = v265;
                v200 = v250;
                v253(v190, v254, v250);
                v201 = v199;
                LOBYTE(v199) = _dispatchPreconditionTest(_:)();
                v252(v190, v200);
                if (v199)
                {
                  v202 = v251;
                  sub_1000756F8(v197, v251);
                  if ((*(v164 + 48))(v202, 1, v198) == 1)
                  {
                    sub_100075768(v202, &unk_10050BE80, &unk_10040B360);
                  }

                  else
                  {
                    v284 = v194;
                    v285 = v15;
                    v203 = v242;
                    (*(v164 + 32))(v242, v202, v198);
                    v204 = v277;
                    v205 = v241;
                    v206 = v279;
                    (v279)(v241, v277 + v238, v198);
                    v207 = static UUID.== infix(_:_:)();
                    v208 = v271;
                    (v271)(v205, v198);
                    if ((v207 & 1) == 0)
                    {
                      v214 = v240;
                      (v206)(v240, v203, v198);

                      v215 = Logger.logObject.getter();
                      v216 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v215, v216))
                      {
                        v217 = swift_slowAlloc();
                        v287 = swift_slowAlloc();
                        *v217 = 136315394;
                        sub_10035A294(&qword_100504C70, &type metadata accessor for UUID);
                        LODWORD(v284) = v216;
                        v218 = dispatch thunk of CustomStringConvertible.description.getter();
                        v220 = v219;
                        v221 = v214;
                        v222 = v271;
                        (v271)(v221, v198);
                        v223 = sub_1002FFA0C(v218, v220, &v287);

                        *(v217 + 4) = v223;
                        *(v217 + 12) = 2080;
                        v224 = v241;
                        (v279)(v241, v204 + v238, v198);
                        v225 = dispatch thunk of CustomStringConvertible.description.getter();
                        v227 = v226;
                        v222(v224, v198);
                        v228 = sub_1002FFA0C(v225, v227, &v287);

                        *(v217 + 14) = v228;
                        _os_log_impl(&_mh_execute_header, v215, v284, "Connection identifier has changed %s %s", v217, 0x16u);
                        swift_arrayDestroy();
                      }

                      else
                      {

                        v229 = v214;
                        v222 = v271;
                        (v271)(v229, v198);
                      }

                      v211 = v262;
                      v212 = &qword_10050B000;
                      v213 = v282;
                      v15 = v285;
                      v222(v242, v198);
                      sub_100075768(v264, &unk_10050BE80, &unk_10040B360);
                      v198 = v276;
LABEL_158:
                      *(v15 + v198) = 1;
                      v230 = *(v15 + v213);
                      if (v230)
                      {
                        sub_1003AE618(v230, *(v15 + v212[358]));
                      }

                      sub_10035A3D4(v15);

                      sub_10006A178(aBlock, *(&aBlock + 1));

                      goto LABEL_161;
                    }

                    v208(v203, v198);
                    v15 = v285;
                  }

                  v196 = sub_100239160(3, 17, v195, v196);
                  v190 = v209;
                  v210 = v239;
                  v198 = v276;
                  if (qword_100501960 == -1)
                  {
LABEL_152:
                    sub_1000E71A0(v196, v190, v277);

                    sub_10006A178(v196, v190);
                    sub_100075768(v264, &unk_10050BE80, &unk_10040B360);
                    v211 = v262;
                    v212 = &qword_10050B000;
                    v213 = v282;
                    if (v210)
                    {
                    }

                    goto LABEL_158;
                  }
                }

                else
                {
                  __break(1u);
                }

                swift_once();
                v210 = v239;
                goto LABEL_152;
              }

              goto LABEL_183;
            }

LABEL_182:

            __break(1u);
LABEL_183:

            __break(1u);
            goto LABEL_184;
          }
        }

        else
        {

          __break(1u);
        }

        __break(1u);
        goto LABEL_182;
      }
    }

    sub_100069E2C(v26, v40);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();
    sub_10006A178(v26, v40);
    if (os_log_type_enabled(v107, v108))
    {
      v109 = v40;
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *&aBlock = v111;
      *v110 = 136315138;
      v293 = sub_100288788(v26, v109);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v112 = BidirectionalCollection<>.joined(separator:)();
      v114 = v113;

      v115 = sub_1002FFA0C(v112, v114, &aBlock);

      *(v110 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v107, v108, "Failed to retrieve valid endpoint for key %s", v110, 0xCu);
      sub_1000752F4(v111);
    }

    sub_1002E3370(256, v279);

    goto LABEL_161;
  }

  v35 = v32;
  v15 = 0;
  v36 = 0;
  v284 = v51 & 0xFFFFFFFFFFFFFF8;
  v285 = v51 & 0xC000000000000001;
  if (v283)
  {
    v53 = 0;
  }

  else
  {
    v53 = v40 == 0xC000000000000000;
  }

  v54 = !v53;
  LODWORD(v281) = v54;
  v23 = v40 >> 62;
  v55 = __OFSUB__(HIDWORD(v283), v283);
  LODWORD(v276) = v55;
  v275 = HIDWORD(v283) - v283;
  v280 = BYTE6(v40);
  v263 = v51;
  v262 = v32;
  while (1)
  {
    if (v285)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v39 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }
    }

    else
    {
      if (v15 >= *(v284 + 16))
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      v32 = *(v51 + 8 * v15 + 32);

      v39 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_76;
      }
    }

    v56 = *&v32[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier];
    v29 = *&v32[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8];
    v57 = v29 >> 62;
    if (v29 >> 62 == 3)
    {
      break;
    }

    if (v57 > 1)
    {
      if (v57 != 2)
      {
        goto LABEL_47;
      }

      v63 = *(v56 + 16);
      v62 = *(v56 + 24);
      v64 = __OFSUB__(v62, v63);
      v61 = v62 - v63;
      if (v64)
      {
        __break(1u);
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      if (v23 <= 1)
      {
LABEL_44:
        v65 = v280;
        if (v23)
        {
          v65 = v275;
          if (v276)
          {
            goto LABEL_164;
          }
        }

        goto LABEL_50;
      }
    }

    else if (v57)
    {
      LODWORD(v61) = HIDWORD(v56) - v56;
      if (__OFSUB__(HIDWORD(v56), v56))
      {
        goto LABEL_169;
      }

      v61 = v61;
      if (v23 <= 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v61 = BYTE6(v29);
      if (v23 <= 1)
      {
        goto LABEL_44;
      }
    }

LABEL_48:
    if (v23 != 2)
    {
      if (!v61)
      {
        goto LABEL_95;
      }

LABEL_20:

      goto LABEL_21;
    }

    v67 = *(v26 + 2);
    v66 = *(v26 + 3);
    v64 = __OFSUB__(v66, v67);
    v65 = v66 - v67;
    if (v64)
    {
      goto LABEL_163;
    }

LABEL_50:
    if (v61 != v65)
    {
      goto LABEL_20;
    }

    if (v61 < 1)
    {
      goto LABEL_95;
    }

    if (v57 <= 1)
    {
      if (!v57)
      {
        *&aBlock = *&v32[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier];
        WORD4(aBlock) = v29;
        BYTE10(aBlock) = BYTE2(v29);
        BYTE11(aBlock) = BYTE3(v29);
        BYTE12(aBlock) = BYTE4(v29);
        BYTE13(aBlock) = BYTE5(v29);
        goto LABEL_72;
      }

      v26 = 0;
      v36 = v56;
      v73 = v56 >> 32;
      v70 = v73 - v36;
      if (v73 < v36)
      {
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      v74 = __DataStorage._bytes.getter();
      if (v74)
      {
        v75 = __DataStorage._offset.getter();
        if (__OFSUB__(v36, v75))
        {
          goto LABEL_175;
        }

        v74 += v36 - v75;
      }

      __DataStorage._length.getter();
      v76 = v74;
      v40 = v282;
      v36 = 0;
      sub_10019F024(v76, v283, v282, &aBlock);

      v72 = aBlock;
      v26 = v283;
LABEL_69:
      v51 = v263;
      v35 = v262;
      if (v72)
      {
        goto LABEL_96;
      }

      goto LABEL_21;
    }

    if (v57 == 2)
    {
      v68 = *(v56 + 16);
      v26 = *(v56 + 24);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v69 = __DataStorage._offset.getter();
        if (__OFSUB__(v68, v69))
        {
          __break(1u);
LABEL_175:
          __break(1u);
          goto LABEL_176;
        }

        v40 += v68 - v69;
      }

      v64 = __OFSUB__(v26, v68);
      v70 = &v26[-v68];
      if (v64)
      {
        goto LABEL_172;
      }

      __DataStorage._length.getter();
      v71 = v40;
      v26 = v283;
      v40 = v282;
      sub_10019F024(v71, v283, v282, &aBlock);

      v72 = aBlock;
      goto LABEL_69;
    }

    *(&aBlock + 6) = 0;
    *&aBlock = 0;
LABEL_72:
    sub_10019F024(&aBlock, v26, v40, &v293);

    if (v293)
    {
      goto LABEL_96;
    }

LABEL_21:
    ++v15;
    if (v39 == v35)
    {
      goto LABEL_88;
    }
  }

  if (v56)
  {
    v58 = 0;
  }

  else
  {
    v58 = v29 == 0xC000000000000000;
  }

  v60 = !v58 || v23 < 3;
  if ((v60 | v281))
  {
LABEL_47:
    v61 = 0;
    if (v23 <= 1)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

LABEL_95:

LABEL_96:

  sub_100069E2C(v26, v40);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.error.getter();
  sub_10006A178(v26, v40);
  if (os_log_type_enabled(v98, v99))
  {
    v100 = v40;
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&aBlock = v102;
    *v101 = 136315138;
    v293 = sub_100288788(v26, v100);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v103 = BidirectionalCollection<>.joined(separator:)();
    v105 = v104;

    v106 = sub_1002FFA0C(v103, v105, &aBlock);

    *(v101 + 4) = v106;
    _os_log_impl(&_mh_execute_header, v98, v99, "An action is already in progress for key %s", v101, 0xCu);
    sub_1000752F4(v102);
  }

  sub_1002E3370(260, v279);

LABEL_161:
}

uint64_t sub_10035C988()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10035C9C0()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_10006A178(v0[4], v0[5]);

  return _swift_deallocObject(v0, 51, 7);
}

uint64_t sub_10035CA08()
{
  v1 = *(v0 + 50);
  v2 = *(v0 + 48);
  return sub_100350A24(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

unint64_t sub_10035CA1C()
{
  result = qword_10050BCA0;
  if (!qword_10050BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050BCA0);
  }

  return result;
}

void sub_10035CAB8()
{
  if (SESInternalVariant())
  {
    v0 = objc_opt_self();
    v1 = String._bridgeToObjectiveC()();
    LODWORD(v0) = [v0 isFirstLaunchAfterBootForKey:v1];

    if (v0)
    {

      sub_10035CB54();
    }
  }
}

void sub_10035CB54()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v65 = *(v5 - 8);
  v6 = *(v65 + 64);
  __chkstk_darwin(v5);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  __chkstk_darwin(v8);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v16 = MobileGestalt_get_current_device();
  if (v16)
  {
    v17 = v16;
    v18 = MobileGestalt_copy_buildVersion_obj();

    if (v18)
    {
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (qword_100501DB8 != -1)
      {
        swift_once();
      }

      v21 = sub_1000958E4(v11, qword_10050BCB0);
      swift_beginAccess();
      v22 = *(v12 + 16);
      v59 = v21;
      v22(v15, v21, v11);
      UserDefaultBacked.wrappedValue.getter();
      (*(v12 + 8))(v15, v11);
      v23 = v72;
      v68 = aBlock;
      v66 = sub_10035DAB8();
      if (qword_100501DC0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000958E4(v24, qword_10050BCC8);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      v27 = os_log_type_enabled(v25, v26);
      v58 = v5;
      v57 = v4;
      if (v27)
      {
        v28 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        aBlock = v56;
        *v28 = 136315650;
        v29 = v20;
        v30 = v1;
        v31 = v0;
        if (v23)
        {
          v32 = v68;
        }

        else
        {
          v32 = 0x3E6C696E3CLL;
        }

        if (v23)
        {
          v33 = v23;
        }

        else
        {
          v33 = 0xE500000000000000;
        }

        v34 = sub_1002FFA0C(v32, v33, &aBlock);

        *(v28 + 4) = v34;
        v0 = v31;
        v1 = v30;
        v20 = v29;
        *(v28 + 12) = 2080;
        v35 = v67;
        *(v28 + 14) = sub_1002FFA0C(v67, v29, &aBlock);
        *(v28 + 22) = 1024;
        v36 = v66;
        *(v28 + 24) = v66 & 1;
        _os_log_impl(&_mh_execute_header, v25, v26, "lastCheckedVersion %s current %s tethered %{BOOL}d", v28, 0x1Cu);
        swift_arrayDestroy();

        if (v23)
        {
          goto LABEL_15;
        }
      }

      else
      {

        v35 = v67;
        v36 = v66;
        if (v23)
        {
LABEL_15:
          if (v68 == v35 && v23 == v20)
          {

LABEL_27:
            v69 = v35;
            v70 = v20;
            swift_beginAccess();
            UserDefaultBacked.wrappedValue.setter();
            swift_endAccess();
            v41 = objc_opt_self();
            v42 = String._bridgeToObjectiveC()();
            [v41 setFirstLaunchAfterBootDoneForKey:v42];

            return;
          }

          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v43 | v36))
          {
            goto LABEL_27;
          }

          goto LABEL_29;
        }
      }

      if (v36)
      {
        goto LABEL_27;
      }

LABEL_29:
      sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
      v44 = v35;
      v46 = v60;
      v45 = v61;
      v47 = v20;
      v48 = v62;
      (*(v61 + 104))(v60, enum case for DispatchQoS.QoSClass.default(_:), v62);
      v49 = static OS_dispatch_queue.global(qos:)();
      (*(v45 + 8))(v46, v48);
      v50 = swift_allocObject();
      v51 = v63;
      v50[2] = v63;
      v50[3] = v44;
      v50[4] = v47;
      v50[5] = v51;
      v75 = sub_10035DD04;
      v76 = v50;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_100080830;
      v74 = &unk_1004D1978;
      v52 = _Block_copy(&aBlock);
      v53 = v64;
      static DispatchQoS.unspecified.getter();
      v69 = _swiftEmptyArrayStorage;
      sub_1000BA7E0();
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      v54 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v52);

      (*(v1 + 8))(v54, v0);
      (*(v65 + 8))(v53, v58);

      return;
    }

    if (qword_100501DC0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000958E4(v37, qword_10050BCC8);
    v68 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v68, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v68, v38, "MG buildVersion not available?", v39, 2u);
    }

    v40 = v68;
  }

  else
  {
    __break(1u);
  }
}

void sub_10035D424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v15 = objc_opt_self();

  v16 = String._bridgeToObjectiveC()();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = sub_10035DD28;
  v17[4] = v14;
  aBlock[4] = sub_10019F2DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BBFA0;
  aBlock[3] = &unk_1004D19F0;
  v18 = _Block_copy(aBlock);
  v19 = v13;

  sub_1003AF710(v15, v16, v18);
  _Block_release(v18);
}

void sub_10035D67C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_100501DC0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10050BCC8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_1001A1EF0(a1, 1);
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_1002FFA0C(v10, v11, v19);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to get SE %s", v8, 0xCu);
      sub_1000752F4(v9);
    }

    else
    {
    }
  }

  else
  {
    sub_10035E10C(a1, a2);
    if (qword_100501DB8 != -1)
    {
      swift_once();
    }

    v15 = sub_100068FC4(&qword_100504228, &unk_10040F470);
    sub_1000958E4(v15, qword_10050BCB0);
    v19[3] = a4;
    v19[4] = a5;
    swift_beginAccess();

    UserDefaultBacked.wrappedValue.setter();
    swift_endAccess();
    v16 = objc_opt_self();
    v17 = String._bridgeToObjectiveC()();
    [v16 setFirstLaunchAfterBootDoneForKey:v17];
  }
}

uint64_t sub_10035D904()
{
  v0 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  sub_1000B6A94(v0, qword_10050BCB0);
  sub_1000958E4(v0, qword_10050BCB0);
  sub_100068FC4(&qword_1005048A0, &qword_100409C80);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_10035DA40()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_10050BCC8);
  sub_1000958E4(v0, qword_10050BCC8);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10035DAB8()
{
  if (MSURetrievePreviousUpdateState())
  {
    if (qword_100501DC0 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_1000958E4(v0, qword_10050BCC8);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 67109120;
      swift_beginAccess();
      *(v3 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v1, v2, "MSURetrievePreviousUpdateState %u", v3, 8u);
    }

    swift_beginAccess();
    return 0;
  }

  else
  {
    if (qword_100501DC0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10050BCC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to MSURetrievePreviousUpdateState", v8, 2u);
    }

    return 0;
  }
}

uint64_t sub_10035DCCC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10035DD10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10035DD38()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10035DD78(void *a1)
{
  v2 = sub_1002B3B94(&off_1004C5000);
  v4 = v3;
  v5 = sub_1002B3B94(&off_1004C5028);
  v7 = v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v29 = 0;
  v9 = sub_1003AF230(a1, isa, 1, &v29);

  if (!v9)
  {
    v25 = v29;
LABEL_9:
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10006A178(v2, v4);
    sub_10006A178(v5, v7);

    return;
  }

  v10 = v29;

  v11 = Data._bridgeToObjectiveC()().super.isa;
  v29 = 0;
  v12 = [a1 transceive:v11 error:&v29];

  v13 = v29;
  if (!v12)
  {
    v25 = v13;
    goto LABEL_9;
  }

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (qword_100501DC0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000958E4(v17, qword_10050BCC8);
  sub_100069E2C(v14, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  sub_10006A178(v14, v16);
  if (os_log_type_enabled(v18, v19))
  {
    v28 = v5;
    v20 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v20 = 136315138;
    sub_100288788(v14, v16);
    log = v18;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v21 = BidirectionalCollection<>.joined(separator:)();
    v23 = v22;

    v24 = sub_1002FFA0C(v21, v23, &v29);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, log, v19, "Dumped Slot Info : %s", v20, 0xCu);
    sub_1000752F4(v27);

    sub_10006A178(v2, v4);
    sub_10006A178(v28, v7);
    sub_10006A178(v14, v16);
  }

  else
  {
    sub_10006A178(v2, v4);
    sub_10006A178(v5, v7);

    sub_10006A178(v14, v16);
  }
}

void sub_10035E10C(char *a1, const char *a2)
{
  v2 = a1;
  v3 = sub_1003AF3C4(a1, a2);
  v4 = [v3 isProd];

  if (!v4)
  {
    return;
  }

  v6 = sub_1003AF3C4(v2, v5);
  v7 = [v6 chipId];

  v8 = sub_10035E7B0(v7);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [objc_opt_self() getLoggedEvents];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v57 = sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    goto LABEL_17;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_18:

LABEL_19:
    v31 = objc_opt_self();
    v32 = String._bridgeToObjectiveC()();
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *&v58[0] = 0x617453746E657645;
    *(&v58[0] + 1) = 0xEB00000000737574;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 0;
    sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v31 postCAEventFor:v32 eventInput:isa];

    v30 = 0;
LABEL_20:
    if (qword_100501DC0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000958E4(v35, qword_10050BCC8);
    v36 = v2;
    v37 = v9;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v54 = v9;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 134218498;
      v43 = sub_1003AF3C4(v36, v42);
      v44 = [v43 csn];

      *(v40 + 4) = v44;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v41 = v54;
      *(v40 + 22) = 1024;
      *(v40 + 24) = v30;
      v45 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "Got SE CSN %lu expected CSN %@, eventLogged: %{BOOL}d", v40, 0x1Cu);
      sub_100075768(v41, &unk_100503F70, &unk_10040B2E0);
    }

    else
    {

      v38 = v36;
    }

    v47 = sub_1003AF3C4(v36, v46);
    v48 = [v47 csn];

    if (((v48 >= [v37 unsignedIntegerValue]) & ~v30) == 0)
    {
      sub_10035DD78(v36);
      v49 = objc_opt_self();
      v50 = String._bridgeToObjectiveC()();
      v51 = String._bridgeToObjectiveC()();
      [v49 requestTapToRadar:v50 client:v51 fullArchive:1];
    }

    return;
  }

  while (1)
  {
    v52 = v2;
    v53 = v9;
    v55 = objc_opt_self();
    if (v13 < 1)
    {
      break;
    }

    v56 = v12 & 0xC000000000000001;
    v2 = "23SecureElementVersionTTR";
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v14 = 0;
    v9 = &v61;
    while (1)
    {
      v15 = v56 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v12 + 8 * v14 + 32);
      v16 = v15;
      v17 = String._bridgeToObjectiveC()();
      *&v58[0] = 0x617453746E657645;
      *(&v58[0] + 1) = 0xEB00000000737574;
      AnyHashable.init<A>(_:)();
      v62[8] = v57;
      v62[5] = v16;
      v18 = static _DictionaryStorage.allocate(capacity:)();
      v19 = v16;
      sub_10035E888(v62, v58);
      v20 = sub_10008CA7C(v58);
      if (v21)
      {
        break;
      }

      v18[(v20 >> 6) + 8] |= 1 << v20;
      v22 = v18[6] + 40 * v20;
      v23 = v58[0];
      v24 = v58[1];
      *(v22 + 32) = v59;
      *v22 = v23;
      *(v22 + 16) = v24;
      sub_100075D50(&v60, (v18[7] + 32 * v20));
      v25 = v18[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_16;
      }

      ++v14;
      v18[2] = v27;
      sub_100075768(v62, &qword_100502C48, &qword_10040B2D0);
      v28 = v12;
      v29 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v55 postCAEventFor:v17 eventInput:v29];

      v12 = v28;
      if (v13 == v14)
      {

        v30 = 1;
        v2 = v52;
        v9 = v53;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

_UNKNOWN **sub_10035E7B0(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 99)
  {
    if (a1 > 54)
    {
      if (a1 != 55)
      {
        if (a1 != 56)
        {
          goto LABEL_20;
        }

        v1 = &off_1004DCAC8;
        goto LABEL_19;
      }
    }

    else
    {
      if (a1 == 44)
      {
        v1 = &off_1004DCA98;
        goto LABEL_19;
      }

      if (a1 != 54)
      {
        goto LABEL_20;
      }
    }

    v1 = &off_1004DCAB0;
LABEL_19:
    v2 = v1;
    goto LABEL_20;
  }

  if (a1 <= 199)
  {
    if (a1 == 100)
    {
      v1 = &off_1004DCAE0;
    }

    else
    {
      if (a1 != 115)
      {
        goto LABEL_20;
      }

      v1 = &off_1004DCAF8;
    }

    goto LABEL_19;
  }

  if (a1 == 200 || a1 == 210)
  {
    v1 = &off_1004DCB10;
    goto LABEL_19;
  }

LABEL_20:

  return v1;
}

uint64_t sub_10035E888(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10035E904()
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v61 - v4;
  v6 = type metadata accessor for NSPersistentStore.StoreType();
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL.DirectoryHint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v61 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + 120);
  if (v25)
  {
    v26 = *(v0 + 120);
  }

  else
  {
    v64 = v10;
    v65 = v9;
    v66 = v6;
    v67 = v24;
    v68 = v22;
    v61 = v5;
    v69 = v1;
    v62 = v0;
    if (qword_100501DD0 != -1)
    {
      v60 = v21;
      swift_once();
      v21 = v60;
    }

    v28 = v21;
    sub_1000958E4(v21, qword_10050BD20);
    v29 = objc_allocWithZone(NSManagedObjectModel);
    URL._bridgeToObjectiveC()(v30);
    v26 = v31;
    v32 = [v29 initWithContentsOfURL:v31];

    if (!v32)
    {
      sub_10009591C();
      swift_allocError();
      *v48 = 6;
      swift_willThrow();
      return v26;
    }

    v33 = v14;
    v72 = 0xD00000000000001BLL;
    v73 = 0x8000000100470340;
    v70 = qword_10050BD10;
    v71 = off_10050BD18;

    v70 = String.init<A>(_:)();
    v71 = v34;
    String.append<A>(contentsOf:)();
    v35 = v68;
    v36 = *(v68 + 56);
    v63 = v28;
    v36(v18, 1, 1, v28);
    (*(v11 + 104))(v33, enum case for URL.DirectoryHint.inferFromPath(_:), v64);
    v37 = v67;
    URL.init(filePath:directoryHint:relativeTo:)();
    v38 = [objc_allocWithZone(NSPersistentStoreCoordinator) initWithManagedObjectModel:v32];
    v39 = v65;
    static NSPersistentStore.StoreType.sqlite.getter();
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v41;
    AnyHashable.init<A>(_:)();
    v42 = sub_100156F48();
    v43.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    *(inited + 96) = v42;
    *(inited + 72) = v43;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v44;
    AnyHashable.init<A>(_:)();
    v45.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    *(inited + 168) = v42;
    *(inited + 144) = v45;
    sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    v26 = v38;
    v46 = v69;
    v47 = NSPersistentStoreCoordinator.addPersistentStore(type:configuration:at:options:)();
    if (v46)
    {

      (*(v74 + 8))(v39, v66);
      (*(v35 + 8))(v37, v63);
      return v26;
    }

    v50 = v47;

    (*(v74 + 8))(v39, v66);
    v51 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    [v51 setPersistentStoreCoordinator:v38];
    v52 = v62;
    v53 = *(v62 + 120);
    *(v62 + 120) = v51;
    v26 = v51;

    v54 = type metadata accessor for TaskPriority();
    v55 = v61;
    (*(*(v54 - 8) + 56))(v61, 1, 1, v54);
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v57[4] = v56;
    v58 = sub_1001F9BE8(0, 0, v55, &unk_100417220, v57);

    (*(v35 + 8))(v37, v63);
    v59 = *(v52 + 112);
    *(v52 + 112) = v58;

    v25 = 0;
  }

  v27 = v25;
  return v26;
}

uint64_t sub_10035F05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for CancellationError();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10035F178, 0, 0);
}

uint64_t sub_10035F178()
{
  v1 = *(v0 + 120);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_10035F244;
  v3 = *(v0 + 120);

  return sub_1003633BC(0xD02AB486CEDC0000, 0, 0, 0, 1);
}

uint64_t sub_10035F244()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[14] + 8))(v2[15], v2[13]);
  if (v0)
  {
    v5 = sub_10035F7E4;
  }

  else
  {
    v5 = sub_10035F3AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10035F3AC()
{
  v1 = v0[17];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v0[19] = v1;
    v2 = v0[12];
    v3 = v0[10];
    v0[8] = v1;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {

      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000958E4(v4, qword_10051B2C8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Cleanup timer is cancelled, leaving MOC alive", v7, 2u);
      }

      v9 = v0[11];
      v8 = v0[12];
      v10 = v0[10];

      (*(v9 + 8))(v8, v10);
      v11 = v0[8];
LABEL_23:

LABEL_24:
      v29 = v0[15];
      v30 = v0[12];

      v31 = v0[1];

      return v31();
    }

    v20 = v0[8];

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000958E4(v21, qword_10051B2C8);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error %@ while scheduling cleanup task for MOC, cleanup MOC", v24, 0xCu);
      sub_100075768(v25, &unk_100503F70, &unk_10040B2E0);
    }

    v27 = v0[9];

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (!Strong)
    {
      goto LABEL_23;
    }

    v18 = Strong;
    v19 = sub_10035FBA8;
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Cleanup timer fired, cleaning up MOC", v15, 2u);
    }

    v16 = v0[9];

    swift_beginAccess();
    v17 = swift_weakLoadStrong();
    v0[18] = v17;
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = sub_10035FB2C;
  }

  return _swift_task_switch(v19, v18, 0);
}

uint64_t sub_10035F7E4()
{
  v1 = v0[17];
  v0[8] = v1;
  v0[19] = v1;
  v2 = v0[12];
  v3 = v0[10];
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Cleanup timer is cancelled, leaving MOC alive", v7, 2u);
    }

    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[10];

    (*(v9 + 8))(v8, v10);
    v11 = v0[8];
LABEL_15:

    v21 = v0[15];
    v22 = v0[12];

    v23 = v0[1];

    return v23();
  }

  v12 = v0[8];

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_10051B2C8);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error %@ while scheduling cleanup task for MOC, cleanup MOC", v16, 0xCu);
    sub_100075768(v17, &unk_100503F70, &unk_10040B2E0);
  }

  v19 = v0[9];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
    goto LABEL_15;
  }

  return _swift_task_switch(sub_10035FBA8, Strong, 0);
}

uint64_t sub_10035FB2C()
{
  v1 = v0[18];
  sub_10035FC8C();

  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10035FBA8()
{
  v1 = *(v0 + 160);
  sub_10035FC8C();

  return _swift_task_switch(sub_10035FC18, 0, 0);
}

uint64_t sub_10035FC18()
{
  v1 = v0[19];

  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

void sub_10035FC8C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    if ([v1 hasChanges])
    {
      v2 = *(v0 + 120);
      if (v2)
      {
        v7 = 0;
        if ([v2 save:&v7])
        {
          v3 = v7;
        }

        else
        {
          v4 = v7;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v5 = *(v0 + 120);
          [v5 rollback];
        }
      }
    }
  }

  v6 = *(v0 + 120);
  *(v0 + 120) = 0;
}

uint64_t sub_10035FD78()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);

    Task.cancel()();

    v2 = *(v0 + 112);
  }

  v3 = *(v0 + 136);

  v4 = *(v0 + 152);

  v5 = *(v0 + 168);

  v6 = *(v0 + 184);

  v7 = *(v0 + 200);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10035FE18()
{
  sub_10035FD78();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10035FE68(void *a1@<X0>, void *a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v81 = a4;
  v85 = a5;
  v86 = a6;
  v87 = a3;
  v84 = a2;
  v80 = a7;
  v8 = type metadata accessor for StateInternal.Discriminant();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StateInternal();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecureElementCredentialEntity();
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v83 = a1;
  v19 = [v18 initWithContext:a1];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v19 setUuid:isa];

  v21 = UUID._bridgeToObjectiveC()().super.isa;
  [v19 setProductConfigUUID:v21];

  v22 = String._bridgeToObjectiveC()();
  v84 = v19;
  [v19 setFriendlyName:v22];

  (*(v14 + 104))(v17, enum case for StateInternal.installationPending(_:), v13);
  StateInternal.discriminant.getter();
  (*(v14 + 8))(v17, v13);
  v23 = v12;
  v24 = StateInternal.Discriminant.rawValue.getter();
  (*(v9 + 8))(v12, v8);
  if (v24 < -32768)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v24 >= 0x8000)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v25 = v84;
  [v84 setState:v24];
  v88 = &_swiftEmptySetSingleton;
  v26 = *(v81 + 144);
  v27 = *(v81 + 152);
  v28 = objc_allocWithZone(NSFetchRequest);
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 initWithEntityName:v29];

  v31 = type metadata accessor for SecureElementApplicationEntity();
  v32 = v82;
  v33 = NSManagedObjectContext.fetch<A>(_:)();
  if (v32)
  {

    goto LABEL_45;
  }

  v23 = v33;

  v81 = v31;
  v82 = 0;
  if (v23 >> 62)
  {
LABEL_39:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (v34)
    {
      goto LABEL_7;
    }

LABEL_40:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_1000958E4(v72, qword_10051B2C8);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v75 = os_log_type_enabled(v73, v74);
    v30 = v84;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v89 = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_1002FFA0C(0xD00000000000003FLL, 0x80000001004703E0, &v89);
      _os_log_impl(&_mh_execute_header, v73, v74, "%s: App entity should have been created when passing TCC check", v76, 0xCu);
      sub_1000752F4(v77);
    }

    sub_10009591C();
    swift_allocError();
    *v78 = 6;
    swift_willThrow();
    goto LABEL_45;
  }

  v34 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_40;
  }

LABEL_7:
  v35 = 0;
  v87 = v23 & 0xC000000000000001;
  while (1)
  {
    if (v87)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v36 = *(v23 + 8 * v35 + 32);
    }

    v37 = v36;
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v39 = [v36 identifier];
    if (!v39)
    {
      goto LABEL_8;
    }

    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (v41 == v85 && v43 == v86)
    {
      break;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      v47 = v85;
      v46 = v86;
      goto LABEL_22;
    }

LABEL_8:

    ++v35;
    if (v38 == v34)
    {
      goto LABEL_40;
    }
  }

  v47 = v85;
  v46 = v86;

LABEL_22:

  v48 = v37;
  sub_1000D7E70(&v89, v48);

  sub_1003639C0(&unk_10050BEC0, type metadata accessor for SecureElementApplicationEntity);
  v49 = Set._bridgeToObjectiveC()().super.isa;

  v50 = v84;
  [v84 setOwnerApplications:v49];

  v51 = [objc_allocWithZone(NSSet) init];
  [v50 setUserApplications:v51];

  type metadata accessor for CredentialInternal();
  v30 = v50;

  v52 = sub_1000BC43C(v30, v47, v46);
  v53 = v83;
  if (v52)
  {
    v54 = v52;
    v89 = 0;
    if ([v83 save:&v89])
    {
      v55 = v89;
      [v53 refreshAllObjects];

      *v80 = v54;
      return;
    }

    v62 = v89;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_1000958E4(v63, qword_10051B2C8);
    swift_errorRetain();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v84 = v30;
      v89 = v67;
      *v66 = 136315394;
      *(v66 + 4) = sub_1002FFA0C(0xD00000000000003FLL, 0x80000001004703E0, &v89);
      *(v66 + 12) = 2080;
      swift_getErrorValue();
      v68 = Error.localizedDescription.getter();
      v70 = sub_1002FFA0C(v68, v69, &v89);

      *(v66 + 14) = v70;
      v53 = v83;
      _os_log_impl(&_mh_execute_header, v64, v65, "%s: CoreData error %s encountered while saving view context", v66, 0x16u);
      swift_arrayDestroy();
      v30 = v84;
    }

    [v53 reset];
    sub_10009591C();
    swift_allocError();
    *v71 = 0;
    swift_willThrow();

    v30 = v54;
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000958E4(v56, qword_10051B2C8);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v89 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_1002FFA0C(0xD00000000000003FLL, 0x80000001004703E0, &v89);
      _os_log_impl(&_mh_execute_header, v57, v58, "%s: Unable to create internal representation of credential", v59, 0xCu);
      sub_1000752F4(v60);
    }

    sub_10009591C();
    swift_allocError();
    *v61 = 6;
    swift_willThrow();
  }

LABEL_45:
}

void sub_10036088C(void *a1, uint64_t a2, void *a3)
{
  v61 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v60 - v12;
  v15 = *(a2 + 128);
  v14 = *(a2 + 136);
  v16 = objc_allocWithZone(NSFetchRequest);
  v17 = String._bridgeToObjectiveC()();
  v18 = v16;
  v19 = a1;
  v20 = [v18 initWithEntityName:v17];

  type metadata accessor for SecureElementCredentialEntity();
  v21 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v3)
  {
    __chkstk_darwin(v22);
    v23 = v61;
    *(&v60 - 2) = v61;
    v24 = sub_10011F6D0(sub_100363A08, (&v60 - 4), v21);
    v60 = 0;

    if (v24)
    {
      [v19 deleteObject:v24];
      v62 = 0;
      if ([v19 save:&v62])
      {
        v25 = v7;
        v26 = v62;
        [v19 refreshAllObjects];
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_1000958E4(v27, qword_10051B2C8);
        v28 = v23;
        v29 = v6;
        (*(v7 + 16))(v13, v28, v6);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v62 = v33;
          *v32 = 136315138;
          v34 = UUID.uuidString.getter();
          v61 = v24;
          v36 = v35;
          (*(v25 + 8))(v13, v29);
          v37 = sub_1002FFA0C(v34, v36, &v62);

          *(v32 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v30, v31, "Successfully deleted credential %s from persistent container", v32, 0xCu);
          sub_1000752F4(v33);
        }

        else
        {

          (*(v7 + 8))(v13, v29);
        }
      }

      else
      {
        v49 = v62;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_1000958E4(v50, qword_10051B2C8);
        swift_errorRetain();
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v53 = 136315394;
          *(v53 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x8000000100470240, &v62);
          *(v53 + 12) = 2080;
          swift_getErrorValue();
          v54 = Error.localizedDescription.getter();
          v56 = v19;
          v57 = sub_1002FFA0C(v54, v55, &v62);

          *(v53 + 14) = v57;
          v19 = v56;
          _os_log_impl(&_mh_execute_header, v51, v52, "%s: CoreData error %s encountered while saving view context", v53, 0x16u);
          swift_arrayDestroy();
        }

        [v19 reset];
        sub_10009591C();
        swift_allocError();
        *v58 = 0;
        swift_willThrow();
      }
    }

    else
    {
      v38 = v7;
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000958E4(v39, qword_10051B2C8);
      v40 = v23;
      v41 = v6;
      (*(v7 + 16))(v11, v40, v6);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v44 = 136315394;
        *(v44 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x8000000100470240, &v62);
        *(v44 + 12) = 2080;
        v45 = UUID.uuidString.getter();
        v47 = v46;
        (*(v38 + 8))(v11, v41);
        v48 = sub_1002FFA0C(v45, v47, &v62);

        *(v44 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v42, v43, "%s: Credential Info with %s does not exist or no access", v44, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v38 + 8))(v11, v6);
      }

      sub_10009591C();
      swift_allocError();
      *v59 = 1;
      swift_willThrow();
    }
  }
}

void sub_100361020(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  *&v128 = a5;
  v137 = a4;
  v138 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 128);
  v14 = *(a2 + 136);
  v15 = objc_allocWithZone(NSFetchRequest);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithEntityName:v16];

  type metadata accessor for SecureElementCredentialEntity();
  v18 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {
    goto LABEL_2;
  }

  v135 = v12;
  v136 = v9;
  v132 = a2;
  v134 = a1;
  v19 = v18;

  __chkstk_darwin(v20);
  v21 = v138;
  *(&v123 - 2) = v138;
  v22 = sub_10011F6D0(sub_1003639A0, (&v123 - 4), v19);

  if (!v22)
  {
    v41 = v21;
    if (qword_1005019D8 != -1)
    {
      goto LABEL_88;
    }

    goto LABEL_38;
  }

  v24 = v22;
  v141 = &_swiftEmptySetSingleton;
  v130 = v137[2];
  v124 = v22;
  if (!v130)
  {
    v78 = &_swiftEmptySetSingleton;
    v26 = 0;
    v27 = v132;
    v29 = &stru_1004F5000;
    goto LABEL_45;
  }

  v25 = 0;
  v129 = v137 + 4;
  *&v126 = "alInfoModel.momd";
  *&v23 = 136315138;
  v127 = v23;
  *&v23 = 136315394;
  v125 = v23;
  v26 = 0;
  v27 = v132;
  v28 = &NSInferMappingModelAutomaticallyOption_ptr;
  v29 = &stru_1004F5000;
  while (2)
  {
    v133 = v25;
    v34 = &v129[2 * v25];
    v35 = v34[1];
    v136 = *v34;
    v36 = *(v27 + 144);
    v37 = *(v27 + 152);
    v38 = objc_allocWithZone(v28[4]);
    v137 = v35;

    v39 = String._bridgeToObjectiveC()();
    v40 = [v38 *&v29[109].align];

    v41 = type metadata accessor for SecureElementApplicationEntity();
    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v26)
    {

      return;
    }

    v43 = v42;

    v135 = 0;
    v131 = v41;
    if (v43 >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (!v44)
      {
LABEL_33:

        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_1000958E4(v60, qword_10051B2C8);
        v8 = v137;

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();

        v63 = os_log_type_enabled(v61, v62);
        v26 = v135;
        v29 = &stru_1004F5000;
        if (v63)
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v140 = v65;
          *v64 = v127;
          *(v64 + 4) = sub_1002FFA0C(v136, v8, &v140);
          _os_log_impl(&_mh_execute_header, v61, v62, "Adding new app entity for appId %s -- This entity does not have bundleIdentifier field populated until the app's first launch", v64, 0xCu);
          sub_1000752F4(v65);
        }

        v27 = v132;
        v66 = v133;
        v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v31 = [v30 initWithContext:v134];
        v32 = String._bridgeToObjectiveC()();

        [v31 setIdentifier:v32];

        [v31 setBundleIdentifier:0];
        v33 = v31;
        goto LABEL_7;
      }
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
        goto LABEL_33;
      }
    }

    v45 = 0;
    v138 = (v43 & 0xC000000000000001);
    while (1)
    {
      if (v138)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_85;
        }

        v46 = *(v43 + 8 * v45 + 32);
      }

      v8 = v46;
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v48 = [v46 identifier];
      if (!v48)
      {
        goto LABEL_12;
      }

      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (v50 == v136 && v52 == v137)
      {
        break;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
        goto LABEL_26;
      }

LABEL_12:

      ++v45;
      if (v47 == v44)
      {
        goto LABEL_33;
      }
    }

LABEL_26:

    v26 = v135;
    v29 = &stru_1004F5000;
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000958E4(v54, qword_10051B2C8);
    v55 = v137;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v58 = v125;
      *(v58 + 4) = sub_1002FFA0C(0xD00000000000002CLL, v126 | 0x8000000000000000, &v140);
      *(v58 + 12) = 2080;
      v59 = sub_1002FFA0C(v136, v55, &v140);

      *(v58 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v56, v57, "%s :Using existing app entity for appId %s", v58, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v27 = v132;
    v66 = v133;
    v33 = v8;
LABEL_7:
    sub_1000D7E70(&v140, v33);

    v25 = v66 + 1;
    v28 = &NSInferMappingModelAutomaticallyOption_ptr;
    if (v25 != v130)
    {
      continue;
    }

    break;
  }

  v78 = v141;
  v24 = v124;
LABEL_45:
  v8 = type metadata accessor for SecureElementApplicationEntity();
  v80 = sub_1003639C0(&unk_10050BEC0, type metadata accessor for SecureElementApplicationEntity);
  *&v125 = v78;
  v131 = v8;
  v123 = v80;
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v24 setOwnerApplications:isa];

  v140 = &_swiftEmptySetSingleton;
  v130 = *(v128 + 16);
  if (!v130)
  {
LABEL_81:

    v119 = Set._bridgeToObjectiveC()().super.isa;

    [v24 setUserApplications:v119];

    v139 = 0;
    v17 = v24;
    v120 = v134;
    if ([v134 save:&v139])
    {
      v121 = v139;
      [v120 refreshAllObjects];
    }

    else
    {
      v122 = v139;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

LABEL_2:

    return;
  }

  v83 = 0;
  v129 = (v128 + 32);
  *&v127 = "alInfoModel.momd";
  *&v82 = 136315138;
  v128 = v82;
  *&v82 = 136315394;
  v126 = v82;
  v84 = &NSInferMappingModelAutomaticallyOption_ptr;
  while (2)
  {
    v89 = &v129[2 * v83];
    v90 = v89[1];
    v136 = *v89;
    v91 = *(v27 + 144);
    v92 = *(v27 + 152);
    v93 = objc_allocWithZone(v84[4]);
    v137 = v90;

    v41 = String._bridgeToObjectiveC()();
    v94 = [v93 *&v29[109].align];

    v95 = NSManagedObjectContext.fetch<A>(_:)();
    if (v26)
    {

      return;
    }

    v96 = v95;

    v135 = 0;
    v133 = v83;
    if (!(v96 >> 62))
    {
      v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v97)
      {
        break;
      }

      goto LABEL_74;
    }

    v97 = _CocoaArrayWrapper.endIndex.getter();
    if (!v97)
    {
LABEL_74:

      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v113 = type metadata accessor for Logger();
      sub_1000958E4(v113, qword_10051B2C8);
      v8 = v137;

      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.debug.getter();

      v116 = os_log_type_enabled(v114, v115);
      v26 = v135;
      v107 = v133;
      if (v116)
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v139 = v118;
        *v117 = v128;
        *(v117 + 4) = sub_1002FFA0C(v136, v8, &v139);
        _os_log_impl(&_mh_execute_header, v114, v115, "Adding new app entity for appId %s -- This entity does not have bundleIdentifier field populated until the app's first launch", v117, 0xCu);
        sub_1000752F4(v118);
      }

      v27 = v132;
      v85 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v86 = [v85 initWithContext:v134];
      v87 = String._bridgeToObjectiveC()();

      [v86 setIdentifier:v87];

      [v86 setBundleIdentifier:0];
      v88 = v86;
LABEL_48:
      sub_1000D7E70(&v139, v88);

      v83 = v107 + 1;
      v84 = &NSInferMappingModelAutomaticallyOption_ptr;
      if (v83 == v130)
      {
        v24 = v124;
        goto LABEL_81;
      }

      continue;
    }

    break;
  }

  v98 = 0;
  v138 = (v96 & 0xC000000000000001);
  while (1)
  {
    if (v138)
    {
      v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v98 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v99 = *(v96 + 8 * v98 + 32);
    }

    v100 = v99;
    v8 = (v98 + 1);
    if (__OFADD__(v98, 1))
    {
      break;
    }

    v101 = [v99 identifier];
    if (v101)
    {
      v102 = v101;
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;

      if (v103 == v136 && v105 == v137)
      {

        v29 = &stru_1004F5000;
LABEL_67:

        v26 = v135;
        v107 = v133;
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v108 = type metadata accessor for Logger();
        sub_1000958E4(v108, qword_10051B2C8);
        v109 = v137;

        v110 = Logger.logObject.getter();
        v8 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v110, v8))
        {
          v111 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v139 = v138;
          *v111 = v126;
          *(v111 + 4) = sub_1002FFA0C(0xD00000000000002CLL, v127 | 0x8000000000000000, &v139);
          *(v111 + 12) = 2080;
          v112 = sub_1002FFA0C(v136, v109, &v139);

          *(v111 + 14) = v112;
          _os_log_impl(&_mh_execute_header, v110, v8, "%s: Using existing app entity for appId %s", v111, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v27 = v132;
        v88 = v100;
        goto LABEL_48;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v29 = &stru_1004F5000;
      if (v41)
      {
        goto LABEL_67;
      }
    }

    ++v98;
    if (v8 == v97)
    {
      goto LABEL_74;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  swift_once();
LABEL_38:
  v67 = type metadata accessor for Logger();
  sub_1000958E4(v67, qword_10051B2C8);
  v68 = v135;
  v69 = v136;
  (*(v136 + 16))(v135, v41, v8);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *v72 = 136315394;
    *(v72 + 4) = sub_1002FFA0C(0xD00000000000002CLL, 0x80000001004703B0, &v141);
    *(v72 + 12) = 2080;
    v73 = UUID.uuidString.getter();
    v74 = v68;
    v76 = v75;
    (*(v69 + 8))(v74, v8);
    v77 = sub_1002FFA0C(v73, v76, &v141);

    *(v72 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v70, v71, "%s: Credential Info with %s does not exist or no access", v72, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v69 + 8))(v68, v8);
  }

  sub_10009591C();
  swift_allocError();
  *v79 = 1;
  swift_willThrow();
}

uint64_t sub_100362020(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v34 - v17;
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  v21 = *a1;
  (*(v5 + 16))(&v34 - v19, a2, v4);
  v37 = v5;
  v22 = *(v5 + 56);
  v23 = 1;
  v22(v20, 0, 1, v4);
  v24 = [v21 uuid];
  if (v24)
  {
    v25 = v24;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  v22(v18, v23, 1, v4);
  v26 = *(v8 + 48);
  sub_1000756F8(v20, v11);
  sub_1000756F8(v18, &v11[v26]);
  v27 = *(v37 + 48);
  if (v27(v11, 1, v4) != 1)
  {
    v29 = v36;
    sub_1000756F8(v11, v36);
    if (v27(&v11[v26], 1, v4) != 1)
    {
      v30 = v37;
      v31 = v35;
      (*(v37 + 32))(v35, &v11[v26], v4);
      sub_1003639C0(&qword_100502C18, &type metadata accessor for UUID);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v30 + 8);
      v32(v31, v4);
      sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
      v32(v36, v4);
      sub_100075768(v11, &unk_10050BE80, &unk_10040B360);
      return v28 & 1;
    }

    sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
    (*(v37 + 8))(v29, v4);
    goto LABEL_8;
  }

  sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
  if (v27(&v11[v26], 1, v4) != 1)
  {
LABEL_8:
    sub_100075768(v11, &qword_1005031D0, &unk_100413B20);
    v28 = 0;
    return v28 & 1;
  }

  sub_100075768(v11, &unk_10050BE80, &unk_10040B360);
  v28 = 1;
  return v28 & 1;
}

void sub_1003624AC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v56 = a4;
  v57 = a3;
  v7 = type metadata accessor for UUID();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StateInternal.Discriminant();
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  __chkstk_darwin(v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 128);
  v16 = *(a2 + 136);
  v17 = objc_allocWithZone(NSFetchRequest);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithEntityName:v18];

  type metadata accessor for SecureElementCredentialEntity();
  v20 = NSManagedObjectContext.fetch<A>(_:)();

  if (v4)
  {
    return;
  }

  v52 = v10;
  v53 = v11;
  v22 = v54;
  v23 = v55;
  v24 = v51;
  __chkstk_darwin(v21);
  v51[-2] = v57;
  v25 = sub_10011F6D0(sub_100363A08, &v51[-4], v20);
  v51[1] = 0;

  if (!v25)
  {
    v24 = v57;
    if (qword_1005019D8 == -1)
    {
LABEL_8:
      v28 = type metadata accessor for Logger();
      sub_1000958E4(v28, qword_10051B2C8);
      v29 = v23;
      v30 = *(v23 + 16);
      v31 = v52;
      v30(v52, v24, v7);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v34 = 136315394;
        *(v34 + 4) = sub_1002FFA0C(0xD00000000000001BLL, 0x8000000100470260, &v58);
        *(v34 + 12) = 2080;
        v35 = UUID.uuidString.getter();
        v36 = v31;
        v38 = v37;
        (*(v29 + 8))(v36, v7);
        v39 = sub_1002FFA0C(v35, v38, &v58);

        *(v34 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v32, v33, "%s: Credential Info with %s does not exist", v34, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v29 + 8))(v31, v7);
      }

      sub_10009591C();
      swift_allocError();
      *v50 = 1;
      swift_willThrow();
      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  StateInternal.discriminant.getter();
  v26 = StateInternal.Discriminant.rawValue.getter();
  (*(v22 + 8))(v14, v53);
  if (v26 < -32768)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v26 >= 0x8000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v25 setState:v26];
  v58 = 0;
  if ([a1 save:&v58])
  {
    v27 = v58;
    [a1 refreshAllObjects];
  }

  else
  {
    v40 = v25;
    v41 = v58;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000958E4(v42, qword_10051B2C8);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v45 = 136315394;
      *(v45 + 4) = sub_1002FFA0C(0xD00000000000001BLL, 0x8000000100470260, &v58);
      *(v45 + 12) = 2080;
      swift_getErrorValue();
      v46 = Error.localizedDescription.getter();
      v48 = sub_1002FFA0C(v46, v47, &v58);

      *(v45 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s: CoreData error %s encountered while saving view context", v45, 0x16u);
      swift_arrayDestroy();
    }

    [a1 reset];
    sub_10009591C();
    swift_allocError();
    *v49 = 0;
    swift_willThrow();
  }
}

void *sub_100362B68(uint64_t a1, uint64_t a2)
{
  v6 = sub_10035E904();
  if (!v3)
  {
    v7 = v6;
    v50 = a1;
    v9 = *(v2 + 128);
    v8 = *(v2 + 136);
    v10 = objc_allocWithZone(NSFetchRequest);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithEntityName:v11];

    sub_100068FC4(&unk_10050BE90, &qword_100417210);
    v23 = NSManagedObjectContext.fetch<A>(_:)();

    v54 = _swiftEmptyArrayStorage;
    v24 = v23 & 0xFFFFFFFFFFFFFF8;
    if (v23 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v26 = v50;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v50;
      if (v25)
      {
LABEL_10:
        v27 = 0;
        v52 = v23 & 0xC000000000000001;
        v14 = _swiftEmptyArrayStorage;
        v46 = a2;
        v47 = v23 & 0xFFFFFFFFFFFFFF8;
        v51 = v25;
        while (1)
        {
          v45 = v14;
          v28 = v27;
          while (1)
          {
            if (v52)
            {
              v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v27 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (v28 >= *(v24 + 16))
              {
                goto LABEL_36;
              }

              v29 = *(v23 + 8 * v28 + 32);
              swift_unknownObjectRetain();
              v27 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
LABEL_35:
                __break(1u);
LABEL_36:
                __break(1u);
                goto LABEL_37;
              }
            }

            type metadata accessor for SecureElementCredentialEntity();
            v30 = swift_dynamicCastClass();
            if (!v30)
            {
              if (qword_1005019D8 != -1)
              {
                swift_once();
              }

              v32 = type metadata accessor for Logger();
              sub_1000958E4(v32, qword_10051B2C8);
              swift_unknownObjectRetain();
              v33 = Logger.logObject.getter();
              v34 = static os_log_type_t.fault.getter();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                v49 = swift_slowAlloc();
                v53 = v49;
                *v35 = 136315138;
                v36 = [v29 description];
                log = v33;
                v37 = v23;
                v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v40 = v39;

                v41 = v38;
                v23 = v37;
                v42 = sub_1002FFA0C(v41, v40, &v53);
                a2 = v46;

                *(v35 + 4) = v42;
                v26 = v50;
                _os_log_impl(&_mh_execute_header, log, v34, "Credential %s failed downcast as Entity", v35, 0xCu);
                sub_1000752F4(v49);

                v24 = v47;

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v25 = v51;
              goto LABEL_13;
            }

            v31 = v30;
            type metadata accessor for CredentialInternal();
            if (a2)
            {
              break;
            }

            if (sub_1000BF55C(v31))
            {
              goto LABEL_30;
            }

LABEL_13:
            ++v28;
            if (v27 == v25)
            {
              v14 = v45;
              goto LABEL_40;
            }
          }

          if (!sub_1000BC43C(v31, v26, a2))
          {
            goto LABEL_13;
          }

LABEL_30:
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v43 = a2;
            v44 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            a2 = v43;
            v26 = v50;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v14 = v54;
          v24 = v47;
          if (v27 == v25)
          {
LABEL_40:

            return v14;
          }
        }
      }
    }

    v14 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  if (qword_1005019D8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_1000958E4(v13, qword_10051B2C8);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_1002FFA0C(0xD000000000000014, 0x8000000100470320, &v54);
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v14 = v19;
    v20 = sub_1002FFA0C(v18, v19, &v54);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: CoreData error %s encountered while fetching entity", v17, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();

  return v14;
}

void *sub_100363134()
{
  type metadata accessor for SECPersistenceController();
  v0 = swift_allocObject();
  result = sub_10036331C();
  qword_10051B858 = v0;
  return result;
}

uint64_t sub_100363170()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for URL();
  sub_1000B6A94(v9, qword_10050BD20);
  sub_1000958E4(v9, qword_10050BD20);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

void *sub_10036331C()
{
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0xD00000000000001DLL;
  v0[17] = 0x8000000100470280;
  v0[18] = 0xD00000000000001ELL;
  v0[19] = 0x80000001004702A0;
  v0[20] = 0xD000000000000018;
  v0[21] = 0x80000001004702C0;
  v0[22] = 0xD000000000000016;
  v0[23] = 0x80000001004702E0;
  v0[24] = 0xD000000000000017;
  v0[25] = 0x8000000100470300;
  return v0;
}

uint64_t sub_1003633BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1003634BC, 0, 0);
}

uint64_t sub_1003634BC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1003639C0(&qword_10050BEB0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1003639C0(&qword_10050BEB8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10036364C;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10036364C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100363808, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}