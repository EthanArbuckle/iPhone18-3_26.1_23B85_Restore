uint64_t sub_100705E18(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C418);
  v13 = a1;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v15;
    v19 = sub_1000136BC(v17, v18, &v39);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1000136BC(a2, a3, &v39);
    _os_log_impl(&_mh_execute_header, v14, v38, "simulateAccessoryPairing type: %s name: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {

LABEL_14:
    v30 = *(a5 + 280);
    if ((sub_10110F67C(a2, a3) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_14;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      sub_1003FD838();
      swift_allocError();
      *v37 = 6;
      goto LABEL_21;
    }
  }

  v34 = *(a5 + 280);
  if ((sub_101110550(a2, a3, a4 & 1) & 1) == 0)
  {
LABEL_20:
    sub_1003FD838();
    swift_allocError();
    *v35 = 0;
LABEL_21:
    v36 = _convertErrorToNSError(_:)();
    (*(a6 + 16))(a6, v36);
  }

LABEL_15:
  v31 = *(a6 + 16);

  return v31(a6, 0);
}

uint64_t sub_1007061DC(uint64_t a1, uint64_t a2)
{
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B2D0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000136BC(0xD000000000000035, 0x800000010135D8A0, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  type metadata accessor for Transaction();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100706394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v42 = &v35[-v8];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v41 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v35[-v13];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177B7F8);
  v40 = *(v10 + 16);
  v40(v14, a1, v9);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v11;
    v19 = v18;
    v38 = swift_slowAlloc();
    v43 = v38;
    *v19 = 136315651;
    *(v19 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, &v43);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v37 = v16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v17;
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v25 = v24;
    (*(v10 + 8))(v14, v9);
    v26 = sub_1000136BC(v20, v25, &v43);
    a3 = v23;
    a2 = v22;
    a1 = v21;

    *(v19 + 24) = v26;
    v27 = v37;
    _os_log_impl(&_mh_execute_header, v37, v36, "%s for beaconUUID: %{private,mask.hash}s", v19, 0x20u);
    swift_arrayDestroy();

    v11 = v39;
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v28 = type metadata accessor for TaskPriority();
  v29 = v42;
  (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
  v30 = v41;
  v40(v41, a1, v9);
  v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v10 + 32))(v32 + v31, v30, v9);
  v33 = (v32 + ((v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = a2;
  v33[1] = a3;

  sub_10025EDD4(0, 0, v29, &unk_1013B6930, v32);
}

uint64_t sub_1007067F8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3)
{
  v161 = a2;
  v165 = type metadata accessor for Date();
  v143 = *(v165 - 8);
  v5 = *(v143 + 64);
  __chkstk_darwin(v165);
  v144 = (&v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = type metadata accessor for HashAlgorithm();
  v142 = *(v164 - 8);
  v7 = *(v142 + 64);
  __chkstk_darwin(v164);
  v163 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OwnedDeviceKeyRecord();
  v171 = *(v9 - 1);
  v10 = *(v171 + 64);
  __chkstk_darwin(v9);
  v166 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v142 - v14;
  v16 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v172 = &v142 - v18;
  v19 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v173 = *(v19 - 8);
  v174 = v19;
  v20 = *(v173 + 64);
  __chkstk_darwin(v19);
  v159 = &v142 - v21;
  v155 = type metadata accessor for URL();
  v158 = *(v155 - 1);
  v22 = *(v158 + 64);
  v23 = __chkstk_darwin(v155);
  v156 = (&v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v157 = (&v142 - v26);
  __chkstk_darwin(v25);
  v28 = (&v142 - v27);
  v29 = sub_1000BC4D4(&qword_1016A78B0, &unk_1013EB2A0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v162 = &v142 - v31;
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v151 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v176 = &v142 - v38;
  v39 = __chkstk_darwin(v37);
  v175 = &v142 - v40;
  __chkstk_darwin(v39);
  v42 = &v142 - v41;
  if (qword_1016954F0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v145 = type metadata accessor for Logger();
    sub_1000076D4(v145, qword_10177CE28);
    v43 = *(v33 + 16);
    v153 = a1;
    v167 = v43;
    v168 = v33 + 16;
    v43(v42, a1, v32);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v169 = v15;
    v170 = v9;
    v146 = a3;
    v152 = v33;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v178[0] = v48;
      *v47 = 141558275;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v33 + 8))(v42, v32);
      v52 = sub_1000136BC(v49, v51, v178);

      *(v47 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "OwnedDeviceKeyRecord for uuid %{private,mask.hash}s.", v47, 0x16u);
      sub_100007BAC(v48);
    }

    else
    {

      (*(v33 + 8))(v42, v32);
    }

    v150 = *(*(v161 + 35) + 168);
    if (qword_101695268 != -1)
    {
      swift_once();
    }

    v53 = v155;
    sub_1000076D4(v155, qword_10177C680);
    UUID.uuidString.getter();
    v154 = v28;
    URL.appendingPathComponent(_:isDirectory:)();

    v54 = v158;
    v55 = *(v158 + 16);
    v56 = v157;
    v55(v157, v28, v53);
    v57 = v174;
    v58 = *(v174 + 10);
    v161 = v58;
    v148 = type metadata accessor for DirectorySequence();
    v59 = *(v148 - 8);
    v147 = *(v59 + 56);
    v149 = v59 + 56;
    v60 = v159;
    v147(v58 + v159, 1, 1, v148);
    v55(v60, v56, v53);
    *(v60 + *(v57 + 9)) = v150;
    v55(v156, v56, v53);

    v9 = v172;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v61 = *(v54 + 8);
    v61(v56, v53);
    v61(v154, v53);
    v147(v9, 0, 1, v148);
    sub_10002311C(v9, v161 + v60, &qword_1016A5970, &unk_1013B3470);
    v62 = v174;
    v63 = *(v173 + 56);
    v64 = v162;
    v63(v162, 1, 1, v174);
    sub_10000B3A8(v64, &qword_1016A78B8, &unk_1013D6710);
    sub_1000D2AD8(v60, v64, &qword_1016A78A8, &unk_1013D66E0);
    v63(v64, 0, 1, v62);
    v65 = sub_1000BC4D4(&qword_1016A78C0, &qword_1013EB2B0);
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    v68 = swift_allocObject();
    sub_1000D2AD8(v64, v68 + *(*v68 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
    v69 = _swiftEmptyArrayStorage;
    v179 = _swiftEmptyArrayStorage;
    v70 = *(*v68 + class metadata base offset for _SequenceBox + 16);
    v71 = sub_1000BC4D4(&qword_1016A78D8, &unk_1013D6720);
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    v15 = swift_allocObject();
    sub_1000D2A70(v68 + v70, &v15[*(*v15 + class metadata base offset for _IteratorBox + 16)], &qword_1016A78B0, &unk_1013EB2A0);
    v162 = *(*v15 + class metadata base offset for _IteratorBox + 16);
    v74 = v169;
    sub_100AF5B10(v169);
    v75 = v170;
    v76 = *(v171 + 48);
    v171 += 48;
    v161 = v76;
    if (v76(v74, 1, v170) == 1)
    {
      break;
    }

    v150 = v68;
    a3 = 0;
    v158 = v142 + 104;
    v157 = (v142 + 8);
    LODWORD(v156) = enum case for HashAlgorithm.sha256(_:);
    v155 = (v143 + 8);
    v154 = (v152 + 8);
    v28 = v144;
    v77 = v166;
    v160 = v32;
    v159 = v15;
    while (1)
    {
      sub_10002AB74(v74, v77, type metadata accessor for OwnedDeviceKeyRecord);
      v78 = v167;
      v167(v175, v77 + v75[5], v32);
      v78(v176, v77 + v75[6], v32);
      a1 = v77 + v75[7];
      v79 = sub_100A7A194(*a1, *(a1 + 8));
      if (a3)
      {
        goto LABEL_63;
      }

      v80 = v79;
      v81 = v77;
      v42 = sub_100A7829C(v79, 0);
      v33 = v82;
      CCECCryptorRelease();
      v83 = v33 >> 62;
      if ((v33 >> 62) > 1)
      {
        break;
      }

      if (v83)
      {
        LODWORD(v84) = HIDWORD(v42) - v42;
        if (__OFSUB__(HIDWORD(v42), v42))
        {
          goto LABEL_42;
        }

        v84 = v84;
      }

      else
      {
        v84 = BYTE6(v33);
      }

LABEL_19:
      if (v84 != 28)
      {
        if (v83 != 1)
        {
          goto LABEL_55;
        }

        LODWORD(v89) = HIDWORD(v42) - v42;
        if (!__OFSUB__(HIDWORD(v42), v42))
        {
          v80 = v89;
          goto LABEL_68;
        }

        __break(1u);
LABEL_51:
        if (v89 == 1)
        {
          LODWORD(v83) = HIDWORD(v42) - v42;
          if (!__OFSUB__(HIDWORD(v42), v42))
          {
            a3 = v83;
            goto LABEL_70;
          }

          __break(1u);
LABEL_55:
          if (v83 != 2)
          {
            v80 = BYTE6(v33);
            goto LABEL_68;
          }

          v130 = *(v42 + 2);
          v89 = *(v42 + 3);
          v80 = v89 - v130;
          if (!__OFSUB__(v89, v130))
          {
            goto LABEL_68;
          }

          __break(1u);
        }

        if (v89 == 2)
        {
          v132 = *(v42 + 2);
          v131 = *(v42 + 3);
          a3 = v131 - v132;
          if (__OFSUB__(v131, v132))
          {
            __break(1u);
LABEL_63:
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v133 = swift_allocObject();
            *(v133 + 16) = xmmword_101385D80;
            v178[0] = a3;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v42 = String.init<A>(describing:)();
            v33 = v134;
            *(v133 + 56) = &type metadata for String;
            *(v133 + 64) = sub_100008C00();
            *(v133 + 32) = v42;
            *(v133 + 40) = v33;
            os_log(_:dso:log:_:_:)();

            sub_1001BAF88();
            v135 = swift_allocError();
            *v136 = 0;
            swift_willThrow();

            goto LABEL_66;
          }
        }

        else
        {
          a3 = BYTE6(v80);
        }

LABEL_70:
        sub_100018350();
        v135 = swift_allocError();
        *v141 = 28;
        *(v141 + 8) = a3;
        *(v141 + 16) = 0;
        swift_willThrow();
        v139 = v42;
        for (i = v80; ; i = v33)
        {
          sub_100016590(v139, i);
LABEL_66:
          v178[0] = 0;
          v178[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v137._object = 0x800000010134CB30;
          v137._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v137);
          v177 = v135;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          _Block_release(v146);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          _Block_release(v146);
          objc_autoreleasePoolPop(v178);
          __break(1u);
LABEL_67:
          v80 = 0;
LABEL_68:
          sub_100018350();
          v135 = swift_allocError();
          *v138 = 28;
          *(v138 + 8) = v80;
          *(v138 + 16) = 0;
          swift_willThrow();
          v139 = v42;
        }
      }

      v174 = v42;
      v9 = sub_100A7A194(*a1, *(a1 + 8));
      v42 = sub_100A7829C(v9, 0);
      v80 = v88;
      CCECCryptorRelease();
      v89 = v80 >> 62;
      if ((v80 >> 62) > 1)
      {
        if (v89 != 2)
        {
          a3 = 0;
          goto LABEL_70;
        }

        v92 = *(v42 + 2);
        v91 = *(v42 + 3);
        v87 = __OFSUB__(v91, v92);
        v90 = v91 - v92;
        if (v87)
        {
          goto LABEL_43;
        }
      }

      else if (v89)
      {
        LODWORD(v90) = HIDWORD(v42) - v42;
        if (__OFSUB__(HIDWORD(v42), v42))
        {
          goto LABEL_44;
        }

        v90 = v90;
      }

      else
      {
        v90 = BYTE6(v80);
      }

      if (v90 != 28)
      {
        goto LABEL_51;
      }

      v93 = v33;
      v95 = v163;
      v94 = v164;
      (*v158)(v163, v156, v164);
      v96 = Data.hash(algorithm:)();
      v9 = v97;
      sub_100016590(v42, v80);
      (*v157)(v95, v94);
      v98 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v81, v28);
      v173 = 0;
      v99 = v28;
      objc_autoreleasePoolPop(v98);
      v172 = objc_allocWithZone(SPOwnedDeviceKeyRecord);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v101 = UUID._bridgeToObjectiveC()().super.isa;
      v102 = v174;
      v103 = v93;
      v104 = Data._bridgeToObjectiveC()().super.isa;
      v105 = Data._bridgeToObjectiveC()().super.isa;
      v106 = Date._bridgeToObjectiveC()().super.isa;
      v172 = [v172 initWithIdentifier:isa deviceIdentifier:v101 advertisement:v104 hashedAdvertisement:v105 creationDate:v106];

      sub_100016590(v96, v9);
      sub_100016590(v102, v103);
      (*v155)(v99, v165);
      v107 = *v154;
      v32 = v160;
      (*v154)(v176, v160);
      v107(v175, v32);
      v108 = v172;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v28 = v99;
      if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v110 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v69 = v179;
      v77 = v166;
      sub_100721D04(v166, type metadata accessor for OwnedDeviceKeyRecord);
      v15 = v159;
      v74 = v169;
      sub_100AF5B10(v169);
      v75 = v170;
      v109 = v161(v74, 1, v170);
      a3 = v173;
      if (v109 == 1)
      {
        v68 = v150;
        goto LABEL_34;
      }
    }

    if (v83 != 2)
    {
      goto LABEL_67;
    }

    v86 = *(v42 + 2);
    v85 = *(v42 + 3);
    v87 = __OFSUB__(v85, v86);
    v84 = v85 - v86;
    if (!v87)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_34:
  swift_setDeallocating();
  sub_10000B3A8(&v15[*(*v15 + class metadata base offset for _IteratorBox + 16)], &qword_1016A78B0, &unk_1013EB2A0);
  v111 = *(*v15 + 48);
  v112 = *(*v15 + 52);
  swift_deallocClassInstance();
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v145, qword_10177B7F8);
  v113 = v151;
  v167(v151, v153, v32);

  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = v68;
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v178[0] = v118;
    *v117 = 134218499;
    if (v69 >> 62)
    {
      v119 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v119 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v117 + 4) = v119;
    *(v117 + 12) = 2160;
    *(v117 + 14) = 1752392040;
    *(v117 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v120 = v151;
    v121 = dispatch thunk of CustomStringConvertible.description.getter();
    v123 = v122;
    (*(v152 + 8))(v120, v32);
    v124 = sub_1000136BC(v121, v123, v178);

    *(v117 + 24) = v124;

    _os_log_impl(&_mh_execute_header, v114, v115, "Got %ld ownedDeviceKeyRecord for %{private,mask.hash}s.", v117, 0x20u);
    sub_100007BAC(v118);

    v125 = v146;
    v68 = v116;
  }

  else
  {

    (*(v152 + 8))(v113, v32);

    v125 = v146;
  }

  sub_100008BB8(0, &qword_1016A78D0, SPOwnedDeviceKeyRecord_ptr);
  v126 = Array._bridgeToObjectiveC()().super.isa;
  v125[2](v125, v126);

  swift_setDeallocating();
  sub_10000B3A8(v68 + *(*v68 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  v127 = *(*v68 + 48);
  v128 = *(*v68 + 52);
  swift_deallocClassInstance();
}

uint64_t sub_100707E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a2;
  v103 = type metadata accessor for Date();
  v102 = *(v103 - 8);
  v5 = *(v102 + 64);
  __chkstk_darwin(v103);
  v101 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for HashAlgorithm();
  v99 = *(v100 - 8);
  v7 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for OwnedDeviceKeyRecord();
  v9 = *(*(v106 - 8) + 64);
  v10 = __chkstk_darwin(v106);
  v105 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v94 - v12);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v107 = &v94 - v21;
  v22 = __chkstk_darwin(v20);
  v116 = &v94 - v23;
  v24 = __chkstk_darwin(v22);
  v115 = &v94 - v25;
  __chkstk_darwin(v24);
  v27 = &v94 - v26;
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_1000076D4(v28, qword_10177CE28);
  v113 = v15[2];
  v114 = v15 + 2;
  v113(v27, a1, v14);
  v111 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v104 = v19;
  v112 = v15;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v109 = v13;
    v34 = v33;
    v35 = swift_slowAlloc();
    v108 = a3;
    v36 = v35;
    v118[0] = v35;
    *v34 = 141558275;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = a1;
    v40 = v39;
    v117 = v15[1];
    v117(v27, v14);
    v41 = sub_1000136BC(v37, v40, v118);
    a1 = v38;

    *(v34 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "Creating ownedDeviceKeyRecord for uuid %{private,mask.hash}s", v34, 0x16u);
    sub_100007BAC(v36);
    a3 = v108;

    v13 = v109;
  }

  else
  {

    v117 = v15[1];
    v117(v27, v14);
  }

  v42 = v14;
  v43 = *(v110 + 280);
  sub_100A88B5C(a1, v13);
  v44 = v116;
  v110 = a1;
  v108 = a3;
  v45 = v113;
  v46 = v106;
  v113(v115, v13 + *(v106 + 20), v42);
  v45(v44, v13 + *(v46 + 24), v42);
  v47 = v13 + *(v46 + 28);
  v97 = PublicKey.advertisement.getter(*v47, *(v47 + 1));
  v96 = v48;
  v49 = PublicKey.advertisement.getter(*v47, *(v47 + 1));
  v51 = v50;
  v52 = v99;
  v53 = v98;
  v54 = v100;
  (*(v99 + 104))(v98, enum case for HashAlgorithm.sha256(_:), v100);
  v55 = Data.hash(algorithm:)();
  v107 = v42;
  v56 = v55;
  v95 = v57;
  sub_100016590(v49, v51);
  v58 = v53;
  v59 = v101;
  (*(v52 + 8))(v58, v54);
  v60 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v13, v59);
  v109 = v13;
  objc_autoreleasePoolPop(v60);
  v61 = objc_allocWithZone(SPOwnedDeviceKeyRecord);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v63 = UUID._bridgeToObjectiveC()().super.isa;
  v64 = v97;
  v65 = v96;
  v66 = Data._bridgeToObjectiveC()().super.isa;
  v94 = v56;
  v67 = v95;
  v68 = Data._bridgeToObjectiveC()().super.isa;
  v69 = Date._bridgeToObjectiveC()().super.isa;
  v70 = [v61 initWithIdentifier:isa deviceIdentifier:v63 advertisement:v66 hashedAdvertisement:v68 creationDate:v69];
  v71 = v59;
  v72 = v70;

  sub_100016590(v94, v67);
  sub_100016590(v64, v65);
  (*(v102 + 8))(v71, v103);
  v73 = v117;
  v74 = v107;
  v117(v116, v107);
  v73(v115, v74);
  v75 = v109;
  v76 = v105;
  sub_100721C9C(v109, v105, type metadata accessor for OwnedDeviceKeyRecord);
  v77 = v104;
  v113(v104, v110, v74);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v116 = v72;
    v118[0] = v81;
    *v80 = 141558787;
    *(v80 + 4) = 1752392040;
    *(v80 + 12) = 2081;
    v82 = *(v106 + 20);
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v117 = v73;
    v83 = v77;
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v85 = v76;
    v87 = v86;
    sub_100721D04(v85, type metadata accessor for OwnedDeviceKeyRecord);
    v88 = sub_1000136BC(v84, v87, v118);

    *(v80 + 14) = v88;
    *(v80 + 22) = 2160;
    *(v80 + 24) = 1752392040;
    *(v80 + 32) = 2081;
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v90;
    v117(v83, v74);
    v92 = sub_1000136BC(v89, v91, v118);

    *(v80 + 34) = v92;
    _os_log_impl(&_mh_execute_header, v78, v79, "New OwnedDeviceKeyRecord with uuid: %{private,mask.hash}s created for %{private,mask.hash}s.", v80, 0x2Au);
    swift_arrayDestroy();
    v72 = v116;

    v75 = v109;
  }

  else
  {

    v73(v77, v74);
    sub_100721D04(v76, type metadata accessor for OwnedDeviceKeyRecord);
  }

  (*(v108 + 16))(v108, v72, 0);

  return sub_100721D04(v75, type metadata accessor for OwnedDeviceKeyRecord);
}

void sub_100708A5C(char *a1, uint64_t a2, void *a3)
{
  v170 = a2;
  v159 = type metadata accessor for Date();
  v5 = *(v159 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v159);
  v151 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for HashAlgorithm();
  v132 = *(v158 - 8);
  v8 = *(v132 + 64);
  __chkstk_darwin(v158);
  v157 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for OwnedDeviceKeyRecord();
  v171 = *(v156 - 8);
  v10 = *(v171 + 64);
  __chkstk_darwin(v156);
  v164 = (&v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v166 = &v131 - v14;
  v172 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v169 = *(v172 - 8);
  v15 = *(v169 + 64);
  __chkstk_darwin(v172);
  v150 = &v131 - v16;
  v148 = type metadata accessor for URL();
  v168 = *(v148 - 1);
  v17 = *(v168 + 64);
  v18 = __chkstk_darwin(v148);
  v153 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v146 = &v131 - v21;
  __chkstk_darwin(v20);
  v167 = &v131 - v22;
  v23 = sub_1000BC4D4(&qword_1016A78B0, &unk_1013EB2A0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v165 = &v131 - v25;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v161 = &v131 - v33;
  __chkstk_darwin(v32);
  v35 = (&v131 - v34);
  if (qword_1016954F0 != -1)
  {
LABEL_27:
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = sub_1000076D4(v36, qword_10177CE28);
  v38 = *(v27 + 16);
  v39 = a1;
  v155 = v27 + 16;
  v154 = v38;
  v38(v35, a1, v26);
  v149 = v37;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v135 = a3;
  v162 = v31;
  v133 = v5;
  v147 = v27;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v173 = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v27;
    v48 = v47;
    (*(v46 + 8))(v35, v26);
    v49 = sub_1000136BC(v45, v48, &v173);

    *(v43 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "Purging ownedDeviceKeyRecord for uuid %{private,mask.hash}s.", v43, 0x16u);
    sub_100007BAC(v44);
  }

  else
  {

    (*(v27 + 8))(v35, v26);
  }

  v163 = v26;
  v145 = *(v170 + 280);
  v170 = *(v145 + 168);
  if (qword_101695268 != -1)
  {
    swift_once();
  }

  v50 = v148;
  v144 = sub_1000076D4(v148, qword_10177C680);
  v143 = v39;
  UUID.uuidString.getter();
  v51 = v167;
  URL.appendingPathComponent(_:isDirectory:)();

  v52 = v168;
  v54 = v168 + 16;
  v53 = *(v168 + 16);
  v55 = v146;
  v53(v146, v51, v50);
  v56 = v53;
  v57 = v172;
  v58 = *(v172 + 40);
  v160 = v58;
  v152 = type metadata accessor for DirectorySequence();
  v59 = *(v152 - 8);
  v60 = *(v59 + 56);
  v61 = v59 + 56;
  v62 = v150;
  v60(&v150[v58], 1, 1, v152);
  v136 = v61;
  v137 = v60;
  v141 = v56;
  v140 = v54;
  v56(v62, v55, v50);
  *&v62[*(v57 + 36)] = v170;
  v63 = v62;
  v56(v153, v55, v50);

  v64 = v166;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v65 = *(v52 + 8);
  v168 = v52 + 8;
  v142 = v65;
  v65(v55, v50);
  v66 = v167;
  v65(v167, v50);
  v60(v64, 0, 1, v152);
  v67 = v63;
  sub_10002311C(v64, v63 + v160, &qword_1016A5970, &unk_1013B3470);
  v68 = v169 + 56;
  v69 = *(v169 + 56);
  v70 = v165;
  v71 = v172;
  v69(v165, 1, 1, v172);
  v138 = v69;
  v169 = v68;
  sub_10000B3A8(v70, &qword_1016A78B8, &unk_1013D6710);
  sub_1000D2AD8(v67, v70, &qword_1016A78A8, &unk_1013D66E0);
  v69(v70, 0, 1, v71);
  v139 = sub_1000BC4D4(&qword_1016A78C0, &qword_1013EB2B0);
  v72 = *(v139 + 48);
  v73 = *(v139 + 52);
  v74 = swift_allocObject();
  sub_1000D2AD8(v70, v74 + *(*v74 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  v160 = sub_100B38224((v74 + *(*v74 + class metadata base offset for _SequenceBox + 16)));
  swift_setDeallocating();
  sub_10000B3A8(v74 + *(*v74 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  v75 = *(*v74 + 48);
  v76 = *(*v74 + 52);
  swift_deallocClassInstance();
  v77 = v145;
  v78 = *(v145 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v170 = 0;
  v134 = sub_1012E34AC(v143);

  v79 = *(v77 + 168);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  v80 = v141;
  v141(v55, v66, v50);
  v81 = v172;
  v145 = *(v172 + 40);
  v82 = v152;
  v83 = v137;
  v137((v67 + v145), 1, 1, v152);
  v80(v67, v55, v50);
  *(v67 + *(v81 + 36)) = v79;
  v80(v153, v55, v50);
  v84 = v160;

  v85 = v166;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v86 = v55;
  v87 = v142;
  v142(v86, v50);
  v87(v167, v50);
  v83(v85, 0, 1, v82);
  sub_10002311C(v85, v67 + v145, &qword_1016A5970, &unk_1013B3470);
  v88 = v165;
  v89 = v172;
  v90 = v138;
  v138(v165, 1, 1, v172);
  sub_10000B3A8(v88, &qword_1016A78B8, &unk_1013D6710);
  sub_1000D2AD8(v67, v88, &qword_1016A78A8, &unk_1013D66E0);
  v90(v88, 0, 1, v89);
  v91 = *(v139 + 48);
  v92 = *(v139 + 52);
  v93 = swift_allocObject();
  sub_1000D2AD8(v88, v93 + *(*v93 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  a3 = sub_100B38224((v93 + *(*v93 + class metadata base offset for _SequenceBox + 16)));
  swift_setDeallocating();
  sub_10000B3A8(v93 + *(*v93 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  v94 = *(*v93 + 48);
  v95 = *(*v93 + 52);
  swift_deallocClassInstance();

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 134218240;
    *(v98 + 4) = *(v84 + 16);

    *(v98 + 12) = 2048;
    *(v98 + 14) = a3[2];

    _os_log_impl(&_mh_execute_header, v96, v97, "OldRecords count = %ld recordsAfterPurge count = %ld.", v98, 0x16u);
  }

  else
  {
  }

  v26 = v151;
  v99 = v163;
  v35 = v164;
  v100 = v161;
  v31 = v162;
  a1 = _swiftEmptyArrayStorage;
  v173 = _swiftEmptyArrayStorage;
  v27 = *(v84 + 16);
  if (v27)
  {
    v5 = 0;
    v169 = v84 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
    LODWORD(v151) = enum case for HashAlgorithm.sha256(_:);
    v150 = (v132 + 104);
    v149 = (v132 + 8);
    v148 = (v133 + 8);
    ++v147;
    v153 = a3;
    v152 = v27;
    do
    {
      if (v5 >= *(v84 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_100721C9C(v169 + *(v171 + 72) * v5, v35, type metadata accessor for OwnedDeviceKeyRecord);
      if ((sub_1005C9000(v35, a3) & 1) == 0)
      {
        v101 = v156;
        v102 = v154;
        v154(v100, v35 + *(v156 + 20), v99);
        v102(v31, v35 + *(v101 + 24), v99);
        v103 = v35 + *(v101 + 28);
        v172 = PublicKey.advertisement.getter(*v103, *(v103 + 1));
        v168 = v104;
        v105 = PublicKey.advertisement.getter(*v103, *(v103 + 1));
        v107 = v106;
        v109 = v157;
        v108 = v158;
        (*v150)(v157, v151, v158);
        v110 = Data.hash(algorithm:)();
        v166 = v111;
        v167 = v110;
        sub_100016590(v105, v107);
        (*v149)(v109, v108);
        v112 = objc_autoreleasePoolPush();
        v113 = v170;
        sub_100E7AB5C(v35, v26);
        v170 = v113;
        if (v113)
        {
          _Block_release(v135);
          objc_autoreleasePoolPop(v112);
          __break(1u);
          return;
        }

        v114 = v26;
        objc_autoreleasePoolPop(v112);
        v165 = objc_allocWithZone(SPOwnedDeviceKeyRecord);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v116 = UUID._bridgeToObjectiveC()().super.isa;
        v117 = v168;
        v118 = Data._bridgeToObjectiveC()().super.isa;
        v120 = v166;
        v119 = v167;
        v121 = Data._bridgeToObjectiveC()().super.isa;
        v122 = Date._bridgeToObjectiveC()().super.isa;
        v165 = [v165 initWithIdentifier:isa deviceIdentifier:v116 advertisement:v118 hashedAdvertisement:v121 creationDate:v122];

        sub_100016590(v119, v120);
        sub_100016590(v172, v117);
        (*v148)(v114, v159);
        v123 = *v147;
        v31 = v162;
        v99 = v163;
        (*v147)(v162, v163);
        v100 = v161;
        v123(v161, v99);
        v124 = v165;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v26 = v114;
        if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v125 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        a1 = v173;
        v35 = v164;
        v84 = v160;
        a3 = v153;
        v27 = v152;
      }

      ++v5;
      sub_100721D04(v35, type metadata accessor for OwnedDeviceKeyRecord);
    }

    while (v27 != v5);
  }

  if (v134)
  {
    v126 = 0;
  }

  else
  {
    sub_100720740();
    v126 = swift_allocError();
    *v127 = 9;
  }

  v128 = v135;
  sub_100008BB8(0, &qword_1016A78D0, SPOwnedDeviceKeyRecord_ptr);
  v129.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v126)
  {
    v130 = _convertErrorToNSError(_:)();
  }

  else
  {
    v130 = 0;
  }

  v128[2](v128, v129.super.isa, v130);
}

uint64_t sub_100709DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v126 = a2;
  v5 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v113 = &v109 - v7;
  v116 = type metadata accessor for OwnedBeaconGroup(0);
  v112 = *(v116 - 8);
  v8 = *(v112 + 64);
  v9 = __chkstk_darwin(v116);
  v111 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = &v109 - v11;
  v12 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v109 - v14;
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v118 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v127 = (&v109 - v21);
  __chkstk_darwin(v20);
  v128 = &v109 - v22;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v119 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v109 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v110 = &v109 - v29;
  v30 = __chkstk_darwin(v28);
  v117 = &v109 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v109 - v33;
  __chkstk_darwin(v32);
  v36 = &v109 - v35;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_1000076D4(v37, qword_10177B7F8);
  v121 = *(v24 + 16);
  v122 = v24 + 16;
  v121(v36, a1, v23);
  v123 = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v124 = a1;
  v125 = v34;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v115 = a3;
    v43 = v42;
    v44 = swift_slowAlloc();
    v133[0] = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v120 = *(v24 + 8);
    v120(v36, v23);
    v48 = sub_1000136BC(v45, v47, v133);

    *(v43 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "notificationBeacon for subscriptionId %{private,mask.hash}s", v43, 0x16u);
    sub_100007BAC(v44);
    a1 = v124;

    a3 = v115;
  }

  else
  {

    v120 = *(v24 + 8);
    v120(v36, v23);
  }

  v49 = *(v126 + 280);
  v50 = *(v49 + 168);
  sub_100B2DFEC(a1, v15);
  found = type metadata accessor for NotifyWhenFoundRecord();
  v52 = (*(*(found - 8) + 48))(v15, 1, found);
  v53 = v127;
  v54 = v128;
  if (v52 == 1)
  {
    sub_10000B3A8(v15, &qword_10169E328, &unk_10139D740);
    (*(v24 + 56))(v53, 1, 1, v23);
    sub_100A89AEC(a1, v54);
    v55 = *(v24 + 48);
    if (v55(v53, 1, v23) != 1)
    {
      sub_10000B3A8(v53, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v121(v127, &v15[*(found + 24)], v23);
    sub_100721D04(v15, type metadata accessor for NotifyWhenFoundRecord);
    v56 = *(v24 + 56);
    v56(v53, 0, 1, v23);
    (*(v24 + 32))(v54, v53, v23);
    v56(v54, 0, 1, v23);
    v55 = *(v24 + 48);
  }

  if (v55(v54, 1, v23) != 1)
  {
    v61 = *(v24 + 32);
    v62 = v125;
    v61(v125, v54, v23);
    sub_100025020(v62, &v130);
    if (!v131)
    {
      sub_10000B3A8(&v130, &qword_101696920, &unk_10138B200);
      (*(a3 + 16))(a3, 0, 0);
      return (v120)(v62, v23);
    }

    sub_10000A748(&v130, v133);
    v63 = v23;
    v64 = v134;
    v65 = v135;
    sub_1000035D0(v133, v134);
    v66 = v64;
    v67 = v118;
    (*(v65 + 200))(v66, v65);
    if (v55(v67, 1, v63) == 1)
    {
      sub_10000B3A8(v67, &qword_1016980D0, &unk_10138F3B0);
      v68 = v125;
      v69 = v120;
    }

    else
    {
      v70 = v117;
      v61(v117, v67, v63);
      v71 = v113;
      sub_100AC53EC(v70, v113);
      if ((*(v112 + 48))(v71, 1, v116) != 1)
      {
        v115 = a3;
        v76 = v114;
        sub_10002AB74(v71, v114, type metadata accessor for OwnedBeaconGroup);
        v77 = v110;
        v121(v110, v124, v63);
        sub_10001F280(v133, &v130);
        v78 = v111;
        sub_100721C9C(v76, v111, type metadata accessor for OwnedBeaconGroup);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v129 = v128;
          *v81 = 141559299;
          *(v81 + 4) = 1752392040;
          *(v81 + 12) = 2081;
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
          v127 = v79;
          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          v83 = v77;
          v85 = v84;
          v86 = v120;
          v120(v83, v63);
          v87 = sub_1000136BC(v82, v85, &v129);

          *(v81 + 14) = v87;
          *(v81 + 22) = 2160;
          *(v81 + 24) = 1752392040;
          *(v81 + 32) = 2081;
          v89 = v131;
          v88 = v132;
          sub_1000035D0(&v130, v131);
          v90 = *(*(*(v88 + 8) + 8) + 32);
          LODWORD(v126) = v80;
          v91 = v109;
          v90(v89);
          v92 = dispatch thunk of CustomStringConvertible.description.getter();
          v94 = v93;
          v86(v91, v63);
          sub_100007BAC(&v130);
          v95 = sub_1000136BC(v92, v94, &v129);

          *(v81 + 34) = v95;
          *(v81 + 42) = 2160;
          *(v81 + 44) = 1752392040;
          *(v81 + 52) = 2081;
          v96 = v111;
          v97 = v111 + *(v116 + 24);
          v98 = dispatch thunk of CustomStringConvertible.description.getter();
          v100 = v99;
          sub_100721D04(v96, type metadata accessor for OwnedBeaconGroup);
          v101 = sub_1000136BC(v98, v100, &v129);

          *(v81 + 54) = v101;
          v102 = v127;
          _os_log_impl(&_mh_execute_header, v127, v126, "Subscription %{private,mask.hash}s. Beacon %{private,mask.hash}s.\nGroup %{private,mask.hash}s", v81, 0x3Eu);
          swift_arrayDestroy();

          v70 = v117;
        }

        else
        {

          sub_100721D04(v78, type metadata accessor for OwnedBeaconGroup);
          v86 = v120;
          v120(v77, v63);
          sub_100007BAC(&v130);
        }

        v103 = v134;
        v104 = v135;
        v105 = sub_1000035D0(v133, v134);
        v106 = sub_100B005BC(v105, v49, v103, v104);
        v107 = v114;
        v108 = sub_100AC30F0(v114);
        (*(v115 + 16))(v115, v106, v108);

        sub_100721D04(v107, type metadata accessor for OwnedBeaconGroup);
        v86(v70, v63);
        v86(v125, v63);
        return sub_100007BAC(v133);
      }

      v69 = v120;
      v120(v70, v63);
      sub_10000B3A8(v71, &unk_1016AF8B0, &unk_1013A0700);
      v68 = v125;
    }

    v72 = v134;
    v73 = v135;
    v74 = sub_1000035D0(v133, v134);
    v75 = sub_100B005BC(v74, v49, v72, v73);
    (*(a3 + 16))(a3, v75, 0);

    v69(v68, v63);
    return sub_100007BAC(v133);
  }

  sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "No record found for notify subscriptionId", v59, 2u);
  }

  return (*(a3 + 16))(a3, 0, 0);
}

void sub_10070ABB8(unint64_t a1, uint64_t a2, int a3, void *a4, void (**a5)(const void *, Class))
{
  LODWORD(v98) = a3;
  v100 = a2;
  v97 = type metadata accessor for DispatchWorkItemFlags();
  v96 = *(v97 - 8);
  v8 = *(v96 + 64);
  __chkstk_darwin(v97);
  v94 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for DispatchQoS();
  v93 = *(v95 - 8);
  v10 = *(v93 + 64);
  __chkstk_darwin(v95);
  v92 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS.QoSClass();
  v90 = *(v91 - 8);
  v12 = *(v90 + 64);
  __chkstk_darwin(v91);
  v89 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TimeBasedKey();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v18 = (v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for UUID();
  v102 = *(v19 - 8);
  v103 = v19;
  v20 = *(v102 + 64);
  __chkstk_darwin(v19);
  v99 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = swift_allocObject();
  *(v104 + 16) = a5;
  v88 = a5;
  _Block_copy(a5);
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
LABEL_32:
    swift_once();
  }

  v22 = qword_10177C370;
  v105 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10138BBE0;
  *&aBlock = *a4;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  v27 = sub_100008C00();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v27;
  v28 = v27;
  *(v23 + 64) = v27;
  *(v23 + 72) = 0xD00000000000003CLL;
  *(v23 + 80) = 0x800000010135D610;
  v101 = v22;
  os_log(_:dso:log:_:_:)();

  v29 = a4[35];
  sub_100025020(a1, &aBlock);
  if (v108)
  {
    sub_10000A748(&aBlock, v112);
    v30 = v113;
    v31 = v114;
    v32 = sub_1000035D0(v112, v113);
    v33 = v100;
    v34 = sub_100B03A58(v32, v100, 0, 1, v98 & 1, v29, v30, v31);
    v37 = v34;
    if (v36 > 1u)
    {
      v38 = v99;
      if (v36 == 2)
      {
        sub_100359088(v34, v35, 2u);
      }

      static os_log_type_t.default.getter();
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_101385D80;
      v51 = v113;
      v50 = v114;
      sub_1000035D0(v112, v113);
      (*(*(*(v50 + 8) + 8) + 32))(v51);
      v52 = UUID.uuidString.getter();
      v54 = v53;
      (*(v102 + 8))(v38, v103);
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = v28;
      *(v49 + 32) = v52;
      *(v49 + 40) = v54;
      os_log(_:dso:log:_:_:)();

      v37 = _swiftEmptyArrayStorage;
    }

    else
    {
      v38 = v99;
      if (!v36)
      {
        v98 = v35;

        v87[3] = static os_log_type_t.default.getter();
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_101385D80;
        v41 = v113;
        v40 = v114;
        sub_1000035D0(v112, v113);
        (*(*(*(v40 + 8) + 8) + 32))(v41);
        v42 = UUID.uuidString.getter();
        v44 = v43;
        (*(v102 + 8))(v38, v103);
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = v28;
        *(v39 + 32) = v42;
        *(v39 + 40) = v44;
        os_log(_:dso:log:_:_:)();
        sub_100359088(v37, v98, 0);
      }
    }

    v55 = v113;
    v56 = v114;
    v57 = sub_1000035D0(v112, v113);
    v58 = sub_100B03A58(v57, v33, 1, 1, 0, v29, v55, v56);
    v61 = v58;
    if (v60 > 1u)
    {
      if (v60 == 2)
      {
        sub_100359088(v58, v59, 2u);
      }

      static os_log_type_t.default.getter();
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_101385D80;
      v70 = v113;
      v69 = v114;
      sub_1000035D0(v112, v113);
      (*(*(*(v69 + 8) + 8) + 32))(v70);
      v71 = UUID.uuidString.getter();
      v73 = v72;
      (*(v102 + 8))(v38, v103);
      *(v68 + 56) = &type metadata for String;
      *(v68 + 64) = v28;
      *(v68 + 32) = v71;
      *(v68 + 40) = v73;
      os_log(_:dso:log:_:_:)();

      v61 = _swiftEmptyArrayStorage;
    }

    else if (!v60)
    {
      v100 = v59;

      static os_log_type_t.default.getter();
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_101385D80;
      v64 = v113;
      v63 = v114;
      sub_1000035D0(v112, v113);
      (*(*(*(v63 + 8) + 8) + 32))(v64);
      v65 = UUID.uuidString.getter();
      v67 = v66;
      (*(v102 + 8))(v38, v103);
      *(v62 + 56) = &type metadata for String;
      *(v62 + 64) = v28;
      *(v62 + 32) = v65;
      *(v62 + 40) = v67;
      os_log(_:dso:log:_:_:)();
      sub_100359088(v61, v100, 0);
    }

    *&aBlock = _swiftEmptyArrayStorage;
    v74 = v37[2];
    if (v74)
    {
      v75 = 0;
      v105 = v74 - 1;
      a4 = _swiftEmptyArrayStorage;
      do
      {
        a1 = v75;
        while (1)
        {
          if (a1 >= v37[2])
          {
            __break(1u);
            goto LABEL_32;
          }

          sub_100721C9C(v37 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * a1, v18, type metadata accessor for TimeBasedKey);
          sub_1006B4308(v18, v61, &v111);
          sub_100721D04(v18, type metadata accessor for TimeBasedKey);
          if (v111)
          {
            break;
          }

          if (v74 == ++a1)
          {
            goto LABEL_30;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v76 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v75 = a1 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a4 = aBlock;
      }

      while (v105 != a1);
    }

    else
    {
      a4 = _swiftEmptyArrayStorage;
    }

LABEL_30:

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v77 = v90;
    v78 = v89;
    v79 = v91;
    (*(v90 + 104))(v89, enum case for DispatchQoS.QoSClass.default(_:), v91);
    v80 = static OS_dispatch_queue.global(qos:)();
    (*(v77 + 8))(v78, v79);
    v81 = swift_allocObject();
    v82 = v104;
    v81[2] = sub_100720574;
    v81[3] = v82;
    v81[4] = a4;
    v109 = sub_100721F48;
    v110 = v81;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v107 = sub_100006684;
    v108 = &unk_10162EDB0;
    v83 = _Block_copy(&aBlock);

    v84 = v92;
    static DispatchQoS.unspecified.getter();
    v111 = _swiftEmptyArrayStorage;
    sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v85 = v94;
    v86 = v97;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v83);

    (*(v96 + 8))(v85, v86);
    (*(v93 + 8))(v84, v95);

    sub_100007BAC(v112);
  }

  else
  {
    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_101385D80;
    v46 = UUID.uuidString.getter();
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v28;
    *(v45 + 32) = v46;
    *(v45 + 40) = v47;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_1016A7898, SPBeaconingKey_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v88[2](v88, isa);
  }
}

void sub_10070B938(unint64_t a1, void (**a2)(const void *, Class, void))
{
  v122 = type metadata accessor for OwnedBeaconRecord();
  v4 = *(v122 - 8);
  v5 = *(v4 + 8);
  v6 = __chkstk_darwin(v122);
  v117 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v108 - v8;
  v121 = type metadata accessor for UUID();
  v111 = *(v121 - 8);
  v10 = *(v111 + 64);
  __chkstk_darwin(v121);
  v115 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for SharedBeaconRecord(0);
  v109 = *(v118 - 8);
  v12 = *(v109 + 64);
  v13 = __chkstk_darwin(v118);
  v114 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v124 = &v108 - v15;
  v110 = a2;
  _Block_copy(a2);
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    goto LABEL_72;
  }

  while (2)
  {
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10138BBE0;
    v128[0] = *a1;
    sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
    v17 = String.init<A>(describing:)();
    v116 = a1;
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    v20 = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v21 = v116;
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v20;
    *(v16 + 64) = v20;
    *(v16 + 72) = 0xD00000000000002ALL;
    *(v16 + 80) = 0x800000010135D460;
    os_log(_:dso:log:_:_:)();

    v22 = sub_10090A010(_swiftEmptyArrayStorage);
    v123 = *(v21 + 280);
    v23 = sub_100025044();
    v25 = v23[2];
    v26 = &qword_1016B3FF0[2];
    v27 = &unk_10138A000;
    if (!v25)
    {

      v127 = 0;
      goto LABEL_36;
    }

    v126 = v9;
    v28 = 0;
    v120 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
    v29 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v108 = v23;
    a1 = v23 + v29;
    *&v119 = *(v4 + 9);
    v113 = (v111 + 16);
    *&v24 = 141558275;
    v112 = v24;
    while (1)
    {
      v125 = v25;
      v30 = v22;
      v31 = v126;
      sub_100721C9C(a1, v126, type metadata accessor for OwnedBeaconRecord);
      v32 = *(v120 + v123);
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v127 = v28;
      v9 = *(v122 + 20);
      v128[0] = _swiftEmptyArrayStorage;
      v33 = sub_10130A99C(v31 + v9, 0, 0);
      if (v33)
      {
        v34 = v33;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v61 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v35 = v128[0];
      }

      else
      {
        v35 = _swiftEmptyArrayStorage;
      }

      v22 = v30;
      v4 = v126;
      v36 = sub_10130A99C(v126 + v9, 1, 0);
      if (v36)
      {
        break;
      }

      if (v35 >> 62)
      {
        goto LABEL_21;
      }

LABEL_15:
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

LABEL_4:
      sub_100721D04(v4, type metadata accessor for OwnedBeaconRecord);

LABEL_5:
      v28 = v127;
      a1 += v119;
      v25 = v125 - 1;
      if (v125 == 1)
      {

        v27 = &unk_10138A000;
        v26 = qword_1016B3FF0 + 16;
LABEL_36:
        v64 = sub_100030068();
        v9 = *(v64 + 2);
        v66 = v124;
        if (!v9)
        {
LABEL_69:

          v106 = v110;
          _Block_copy(v110);
          sub_1000BC4D4(&qword_1016A7888, &qword_1013B6818);
          sub_100003E8C(&qword_1016967B0, &type metadata accessor for UUID);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
          v106[2](v106, isa, 0);

          _Block_release(v106);

          _Block_release(v106);
          return;
        }

        v67 = *(v109 + 80);
        v117 = v64;
        v68 = &v64[(v67 + 32) & ~v67];
        v125 = v26[312];
        v69 = *(v109 + 72);
        v120 = (v111 + 16);
        *&v65 = v27[485];
        v119 = v65;
        v122 = v69;
        while (1)
        {
          sub_100721C9C(v68, v66, type metadata accessor for SharedBeaconRecord);
          if ((sub_1006BEE58(v66) & 1) == 0)
          {
            sub_100721D04(v66, type metadata accessor for SharedBeaconRecord);
            goto LABEL_39;
          }

          v70 = *(v123 + v125);
          type metadata accessor for BeaconKeyManager(0);
          v71 = v127;
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v127 = v71;
          v72 = *(v118 + 20);
          v128[0] = _swiftEmptyArrayStorage;
          v73 = sub_10130A99C(v66 + v72, 0, 0);
          if (v73)
          {
            v74 = v73;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v103 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            a1 = v128[0];
          }

          else
          {
            a1 = _swiftEmptyArrayStorage;
          }

          v75 = sub_10130A99C(v124 + v72, 1, 0);
          if (v75)
          {
            v76 = v75;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v104 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            a1 = v128[0];
            if (v128[0] >> 62)
            {
LABEL_56:
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
LABEL_57:
                v85 = v124;
                sub_100721D04(v124, type metadata accessor for SharedBeaconRecord);
                v66 = v85;

                v69 = v122;
                goto LABEL_39;
              }

              goto LABEL_51;
            }
          }

          else
          {

            if (a1 >> 62)
            {
              goto LABEL_56;
            }
          }

          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

LABEL_51:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v128[0] = v22;
          v78 = sub_1000210EC(v124 + v72);
          v80 = v22[2];
          v81 = (v79 & 1) == 0;
          v43 = __OFADD__(v80, v81);
          v82 = v80 + v81;
          if (v43)
          {
            goto LABEL_71;
          }

          v83 = v79;
          if (v22[3] >= v82)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v105 = v78;
              sub_10100B104();
              v78 = v105;
            }
          }

          else
          {
            sub_100FF2040(v82, isUniquelyReferenced_nonNull_native);
            v78 = sub_1000210EC(v124 + v72);
            if ((v83 & 1) != (v84 & 1))
            {
              goto LABEL_73;
            }
          }

          v86 = v128[0];
          v126 = v128[0];
          if (v83)
          {
            v87 = *(v128[0] + 56);
            v88 = *(v87 + 8 * v78);
            *(v87 + 8 * v78) = a1;
          }

          else
          {
            v89 = v78;
            v90 = v115;
            (*v120)(v115, v124 + v72, v121);
            sub_101012DD4(v89, v90, a1, v86);
          }

          v91 = v114;
          v92 = static os_log_type_t.info.getter();
          if (qword_101694A20 != -1)
          {
            swift_once();
          }

          v93 = qword_10177B550;
          v66 = v124;
          sub_100721C9C(v124, v91, type metadata accessor for SharedBeaconRecord);
          if (os_log_type_enabled(v93, v92))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v128[0] = v95;
            *v94 = v119;
            *(v94 + 4) = 1752392040;
            *(v94 + 12) = 2081;
            v96 = v91;
            v97 = *(v118 + 20);
            sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
            v98 = dispatch thunk of CustomStringConvertible.description.getter();
            v100 = v99;
            v4 = type metadata accessor for SharedBeaconRecord;
            v101 = v96;
            v66 = v124;
            sub_100721D04(v101, type metadata accessor for SharedBeaconRecord);
            v102 = sub_1000136BC(v98, v100, v128);

            *(v94 + 14) = v102;
            _os_log_impl(&_mh_execute_header, v93, v92, "KeyMap reconciler for shared beacon %{private,mask.hash}s.", v94, 0x16u);
            sub_100007BAC(v95);
          }

          else
          {
            sub_100721D04(v91, type metadata accessor for SharedBeaconRecord);
          }

          sub_100721D04(v66, type metadata accessor for SharedBeaconRecord);
          v22 = v126;
          v69 = v122;
LABEL_39:
          v68 += v69;
          if (!--v9)
          {
            goto LABEL_69;
          }
        }
      }
    }

    v37 = v36;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v62 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v35 = v128[0];
    if (!(v128[0] >> 62))
    {
      goto LABEL_15;
    }

LABEL_21:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_16:
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v128[0] = v22;
    v39 = sub_1000210EC(v4 + v9);
    v41 = v22[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      swift_once();
      continue;
    }

    break;
  }

  v45 = v40;
  if (v22[3] >= v44)
  {
    if ((v38 & 1) == 0)
    {
      v63 = v39;
      sub_10100B104();
      v39 = v63;
    }

    goto LABEL_25;
  }

  sub_100FF2040(v44, v38);
  v39 = sub_1000210EC(v4 + v9);
  if ((v45 & 1) == (v46 & 1))
  {
LABEL_25:
    v47 = v117;
    v22 = v128[0];
    if (v45)
    {
      v48 = *(v128[0] + 56);
      v49 = *(v48 + 8 * v39);
      *(v48 + 8 * v39) = v35;
    }

    else
    {
      v50 = v39;
      v51 = v115;
      (*v113)(v115, v4 + v9, v121);
      sub_101012DD4(v50, v51, v35, v22);
    }

    v52 = static os_log_type_t.info.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v53 = qword_10177B550;
    sub_100721C9C(v4, v47, type metadata accessor for OwnedBeaconRecord);
    if (os_log_type_enabled(v53, v52))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v128[0] = v55;
      *v54 = v112;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      v56 = *(v122 + 20);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v58;
      sub_100721D04(v47, type metadata accessor for OwnedBeaconRecord);
      v59 = sub_1000136BC(v57, v4, v128);

      *(v54 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v53, v52, "KeyMap reconciler for owned beacon %{private,mask.hash}s.", v54, 0x16u);
      sub_100007BAC(v55);

      v60 = v126;
    }

    else
    {
      sub_100721D04(v47, type metadata accessor for OwnedBeaconRecord);
      v60 = v4;
    }

    sub_100721D04(v60, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_5;
  }

LABEL_73:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10070C7F8(uint64_t *a1, uint64_t a2)
{
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10138BBE0;
    v45 = *a1;
    sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    v7 = sub_100008C00();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 96) = &type metadata for String;
    *(v3 + 104) = v7;
    *(v3 + 64) = v7;
    *(v3 + 72) = 0xD00000000000001BLL;
    *(v3 + 80) = 0x800000010135D420;
    os_log(_:dso:log:_:_:)();

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v8 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v9 = sub_101073D24(v45);

    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    *(v10 + 56) = sub_1000BC4D4(&qword_101697EA0, &qword_10138EB60);
    *(v10 + 64) = sub_1000041A4(&qword_1016A7870, &qword_101697EA0, &qword_10138EB60);
    *(v10 + 32) = v9;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);

    v11 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v12 = *(v9 + 16);
    if (!v12)
    {
      break;
    }

    specialized ContiguousArray.reserveCapacity(_:)();
    a1 = 0;
    v39 = v9;
    v40 = v9 + 32;
    v13 = &_s8SPShared19LocalizationUtilityO5TableO7defaultyA2EmFWC_ptr;
    v14 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
    v38 = v12;
    while (a1 < *(v9 + 16))
    {
      v20 = (v40 + 32 * a1);
      v44 = *v20;
      v21 = v20[3];
      v22 = *(v21 + 16);
      if (v22)
      {
        v41 = v20[1];
        v43 = a1;
        v42 = v20[2];

        specialized ContiguousArray.reserveCapacity(_:)();
        v23 = (v21 + 64);
        do
        {
          v24 = *(v23 - 4);
          v25 = *(v23 - 3);
          v26 = v14;
          v28 = *(v23 - 2);
          v27 = *(v23 - 1);
          v29 = *v23;
          v23 += 5;
          v30 = v13;
          v31 = objc_allocWithZone(v13[57]);

          v32 = String._bridgeToObjectiveC()();
          v14 = v26;

          v33 = String._bridgeToObjectiveC()();

          v34 = v31;
          v13 = v30;
          [v34 v26[81]];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v35 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v22;
        }

        while (v22);
        v12 = v38;
        v9 = v39;
        a1 = v43;
      }

      else
      {
        v15 = v20[2];
      }

      a1 = (a1 + 1);
      v16 = objc_allocWithZone(SPBeaconRoleCategory);
      v17 = String._bridgeToObjectiveC()();

      sub_100008BB8(0, &qword_1016A7878, SPBeaconRole_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v16 initWithCategoryId:v44 category:v17 roles:isa];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (a1 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_13:

  sub_100008BB8(0, &qword_1016A7880, SPBeaconRoleCategory_ptr);
  v36 = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, v36);
}

void sub_10070CD88(void *a1, uint64_t a2, void *a3, uint64_t (*a4)())
{
  v88 = a1;
  v84 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v7 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v85 = &v77 - v8;
  v83 = type metadata accessor for BeaconNamingRecord();
  v87 = *(v83 - 8);
  v9 = *(v87 + 64);
  v10 = __chkstk_darwin(v83);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v11;
  __chkstk_darwin(v10);
  v86 = (&v77 - v12);
  v13 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v77 - v15;
  v17 = type metadata accessor for OwnedBeaconRecord();
  v95 = *(v17 - 8);
  v18 = v95[8];
  v19 = __chkstk_darwin(v17);
  v79 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v20;
  __chkstk_darwin(v19);
  v90 = &v77 - v21;
  v96 = swift_allocObject();
  *(v96 + 16) = a4;
  v94 = a4;
  _Block_copy(a4);
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C370;
  v92 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  v77 = xmmword_10138BBE0;
  *(v23 + 16) = xmmword_10138BBE0;
  v97[0] = *a3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  v27 = sub_100008C00();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v27;
  v28 = v27;
  *(v23 + 64) = v27;
  *(v23 + 72) = 0xD00000000000001FLL;
  *(v23 + 80) = 0x800000010135D350;
  v93 = v22;
  os_log(_:dso:log:_:_:)();

  v80 = a3;
  v29 = a3[35];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v91 = xmmword_101385D80;
  *(v34 + 16) = xmmword_101385D80;
  (*(v31 + 16))(v34 + v33, a2, v30);
  v89 = v29;
  v35 = sub_100AA56A8(v34);
  swift_setDeallocating();
  (*(v31 + 8))(v34 + v33, v30);
  swift_deallocClassInstance();
  if (!v35[2])
  {

    (v95[7])(v16, 1, 1, v17);
    goto LABEL_9;
  }

  sub_10001F280((v35 + 4), v97);

  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v36 = swift_dynamicCast();
  v37 = v95;
  (v95[7])(v16, v36 ^ 1u, 1, v17);
  if ((v37[6])(v16, 1, v17) == 1)
  {
LABEL_9:
    sub_10000B3A8(v16, &unk_1016A9A20, &qword_10138B280);
    static os_log_type_t.error.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = v91;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = v28;
    *(v44 + 32) = v45;
    *(v44 + 40) = v46;
    os_log(_:dso:log:_:_:)();

    (*(v94 + 2))(v94, 0);
LABEL_17:

    return;
  }

  v38 = v90;
  sub_10002AB74(v16, v90, type metadata accessor for OwnedBeaconRecord);
  v39 = sub_1012BD7E8(v88);
  if (!v39)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    (*(v94 + 2))(v94, 0);
    goto LABEL_11;
  }

  v40 = v39;
  v41 = *(v89 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v39);
  *(&v77 - 2) = v42;
  *(&v77 - 1) = a2;
  v43 = v85;
  QueueSynchronizer.conditionalSync<A>(_:)();
  if ((*(v87 + 48))(v43, 1, v83) == 1)
  {
    sub_10000B3A8(v43, &unk_1016B29E0, &unk_1013B70E0);
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    (*(v94 + 2))(v94, 0);

LABEL_11:
    v47 = type metadata accessor for OwnedBeaconRecord;
    v48 = v38;
LABEL_16:
    sub_100721D04(v48, v47);
    goto LABEL_17;
  }

  v84 = 0;
  v49 = v43;
  v50 = v86;
  sub_10002AB74(v49, v86, type metadata accessor for BeaconNamingRecord);
  v51 = swift_allocObject();
  *(v51 + 16) = v77;
  v52 = *(v17 + 20);
  sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
  v53 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v51 + 56) = &type metadata for String;
  *(v51 + 64) = v28;
  *(v51 + 32) = v53;
  *(v51 + 40) = v54;
  v55 = [v40 roleId];
  *(v51 + 96) = &type metadata for Int;
  *(v51 + 104) = &protocol witness table for Int;
  *(v51 + 72) = v55;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v56 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v93 = swift_allocObject();
  *(v93 + 16) = v40;
  v57 = v38;
  v58 = v79;
  sub_100721C9C(v57, v79, type metadata accessor for OwnedBeaconRecord);
  v59 = (*(v95 + 80) + 40) & ~*(v95 + 80);
  v60 = swift_allocObject();
  v61 = v96;
  *(v60 + 2) = sub_1001BC2E0;
  *(v60 + 3) = v61;
  *(v60 + 4) = v80;
  sub_10002AB74(v58, v60 + v59, type metadata accessor for OwnedBeaconRecord);
  v88 = v40;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v62 = swift_allocObject();
  *(v62 + 16) = v91;
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = v28;
  *(v62 + 32) = 0x65736C6166;
  *(v62 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v63 = objc_autoreleasePoolPush();
  v64 = v84;
  sub_101121DD0(v50);
  v95 = v65;
  if (!v64)
  {
    objc_autoreleasePoolPop(v63);
    v66 = *(v89 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v94 = type metadata accessor for BeaconNamingRecord;
    v67 = v82;
    sub_100721C9C(v50, v82, type metadata accessor for BeaconNamingRecord);
    v68 = *(v87 + 80);
    v69 = v81;
    v70 = swift_allocObject();
    v71 = v93;
    *(v70 + 16) = sub_10071FC64;
    *(v70 + 24) = v71;
    sub_10002AB74(v67, v70 + ((v68 + 32) & ~v68), type metadata accessor for BeaconNamingRecord);

    sub_100FDCA40(v95, sub_100721F08, v70);

    v72 = swift_allocObject();
    *(v72 + 16) = sub_10071FCA8;
    *(v72 + 24) = v60;

    Future.addFailure(block:)();

    sub_100721C9C(v50, v67, v94);
    v73 = (v68 + 16) & ~v68;
    v74 = (v69 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    sub_10002AB74(v67, v75 + v73, type metadata accessor for BeaconNamingRecord);
    *(v75 + v74) = v89;
    v76 = (v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v76 = sub_10071FCA8;
    v76[1] = v60;

    Future.addSuccess(block:)();

    sub_100721D04(v90, type metadata accessor for OwnedBeaconRecord);
    v47 = type metadata accessor for BeaconNamingRecord;
    v48 = v86;
    goto LABEL_16;
  }

  _Block_release(v94);
  objc_autoreleasePoolPop(v63);
  __break(1u);
}

uint64_t sub_10070DAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v18 - v8);
  sub_1000D2A70(a1, v18 - v8, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    v18[1] = v10;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)();

    (*(a3 + 16))(a3, 0);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    (*(a3 + 16))(a3, 1);
    v16 = *(a2 + 280);
    sub_100A8306C(13);
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    v17 = *(*(v16 + 200) + 48);

    PassthroughSubject.send(_:)();

    return sub_10000B3A8(v9, &qword_1016A7808, &qword_1013D6750);
  }
}

void sub_10070DDC0(void (*a1)(char *, uint64_t), void *a2, uint64_t *a3, const void *a4)
{
  v189 = a2;
  v193 = a1;
  v176 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v177 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v8 = *(*(v185 - 8) + 64);
  v9 = __chkstk_darwin(v185);
  v172 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v184 = (&v166 - v11);
  v186 = type metadata accessor for BeaconNamingRecord();
  v188 = *(v186 - 8);
  v12 = *(v188 + 64);
  v13 = __chkstk_darwin(v186);
  v168 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v173 = &v166 - v16;
  v17 = __chkstk_darwin(v15);
  v178 = (&v166 - v18);
  __chkstk_darwin(v17);
  v187 = (&v166 - v19);
  v190 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v20 = *(*(v190 - 8) + 64);
  v21 = __chkstk_darwin(v190);
  v23 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v166 - v24;
  v26 = type metadata accessor for UUID();
  v195 = *(v26 - 8);
  v27 = *(v195 + 64);
  v28 = __chkstk_darwin(v26);
  v169 = &v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v175 = &v166 - v31;
  v32 = __chkstk_darwin(v30);
  v171 = &v166 - v33;
  v34 = __chkstk_darwin(v32);
  v170 = &v166 - v35;
  v36 = __chkstk_darwin(v34);
  v183 = &v166 - v37;
  v38 = __chkstk_darwin(v36);
  v182 = &v166 - v39;
  v174 = v40;
  __chkstk_darwin(v38);
  v194 = &v166 - v41;
  v192 = swift_allocObject();
  *(v192 + 16) = a4;
  _Block_copy(a4);
  v191 = a4;
  _Block_copy(a4);
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v180 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10138BBE0;
  v198 = *a3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v43 = String.init<A>(describing:)();
  v45 = v44;
  *(v42 + 56) = &type metadata for String;
  v46 = sub_100008C00();
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  *(v42 + 96) = &type metadata for String;
  *(v42 + 104) = v46;
  v181 = v46;
  *(v42 + 64) = v46;
  *(v42 + 72) = 0xD000000000000023;
  *(v42 + 80) = 0x800000010135D0A0;
  os_log(_:dso:log:_:_:)();

  v179 = a3;
  v47 = a3[35];
  sub_100030068();

  v49 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer;
  v50 = *(v47 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v48);
  v51 = v193;
  *(&v166 - 2) = v47;
  *(&v166 - 1) = v51;
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_1000D2AD8(v23, v25, &qword_1016980D0, &unk_10138F3B0);
  v52 = v195;
  v53 = *(v195 + 48);
  v54 = v26;
  if (v53(v25, 1, v26) == 1)
  {
    v55 = v194;
    (*(v52 + 16))(v194, v193, v54);
    if (v53(v25, 1, v54) != 1)
    {
      sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v55 = v194;
    (*(v52 + 32))(v194, v25, v54);
  }

  sub_100025020(v55, &v196);
  if (!v197)
  {
    sub_10000B3A8(&v196, &qword_101696920, &unk_10138B200);
    static os_log_type_t.error.getter();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_101385D80;
    v68 = UUID.uuidString.getter();
    v69 = v181;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = v69;
    *(v67 + 32) = v68;
    *(v67 + 40) = v70;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v71 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v72 = v191;
    (*(v191 + 2))(v191, 0);
    (*(v52 + 8))(v55, v54);
LABEL_39:

    v145 = v72;
    goto LABEL_40;
  }

  v56 = sub_10000A748(&v196, &v198);
  v57 = *(v47 + v49);
  __chkstk_darwin(v56);
  *(&v166 - 2) = v47;
  *(&v166 - 1) = v55;
  v58 = v184;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v59 = v188 + 48;
  v60 = *(v188 + 48);
  v61 = v186;
  if (v60(v58, 1, v186) == 1)
  {
    sub_10000B3A8(v58, &unk_1016B29E0, &unk_1013B70E0);
    UUID.init()();
    (*(v195 + 16))(v183, v55, v54);
    v62 = v189;
    v193 = [v189 roleId];
    v63 = [v62 name];
    if (v63)
    {
      v64 = v63;
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v190 = v66;
    }

    else
    {
      v190 = 0xE700000000000000;
      v65 = 0x4E574F4E4B4E55;
    }

    v110 = [v62 emoji];
    v111 = v54;
    if (v110)
    {
      v112 = v110;
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;
    }

    else
    {
      v113 = 0;
      v115 = 0;
    }

    v116 = v178;
    *v178 = xmmword_10138C660;
    v117 = v195;
    v118 = *(v195 + 32);
    v118(v116 + v61[5], v182, v111);
    v118(v116 + v61[6], v183, v111);
    v54 = v111;
    *(v116 + v61[7]) = v193;
    v119 = (v116 + v61[8]);
    v120 = v190;
    v72 = v191;
    *v119 = v65;
    v119[1] = v120;
    v121 = (v116 + v61[9]);
    *v121 = v113;
    v121[1] = v115;
    v100 = v117;
    _Block_copy(v72);

    v122 = v179;

    sub_100B12498(v116, 0, v47, v122, v72);
    _Block_release(v72);

    v109 = v116;
    v55 = v194;
LABEL_27:
    sub_100721D04(v109, type metadata accessor for BeaconNamingRecord);
    sub_100007BAC(&v198);
    (*(v100 + 8))(v55, v54);
    goto LABEL_39;
  }

  sub_10002AB74(v58, v187, type metadata accessor for BeaconNamingRecord);
  v73 = v189;
  if (([v189 restoreDefaultName] & 1) == 0)
  {
    v89 = [v73 name];
    if (v89)
    {
      v90 = v89;
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_101385D80;
      v95 = v187 + v61[5];
      v96 = UUID.uuidString.getter();
      v97 = v181;
      *(v94 + 56) = &type metadata for String;
      *(v94 + 64) = v97;
      *(v94 + 32) = v96;
      *(v94 + 40) = v98;
      os_log(_:dso:log:_:_:)();

      sub_10001F280(&v198, &v196);
      v99 = swift_allocObject();
      v99[2] = v189;
      v99[3] = v91;
      v99[4] = v93;
      sub_10000A748(&v196, (v99 + 5));
      v100 = v195;
      v101 = v175;
      (*(v195 + 16))(v175, v55, v54);
      v102 = (*(v100 + 80) + 24) & ~*(v100 + 80);
      v103 = (v174 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      *(v104 + 16) = v179;
      (*(v100 + 32))(v104 + v102, v101, v54);
      v105 = (v104 + v103);
      v106 = v192;
      *v105 = sub_100721F40;
      v105[1] = v106;

      v107 = v189;

      v108 = v187;
      sub_1006E90BC(v187, 1, sub_10071F4F0, v99, sub_10071F500, v104);

      v109 = v108;
      v72 = v191;
      goto LABEL_27;
    }

    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    sub_1000076D4(v138, qword_10177BA08);
    v124 = v195;
    v125 = v169;
    (*(v195 + 16))(v169, v55, v54);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *&v196 = v129;
      *v128 = 141558275;
      *(v128 + 4) = 1752392040;
      *(v128 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      v140 = v124;
      v142 = v141;
      v134 = v54;
      v135 = *(v140 + 8);
      v135(v125, v134);
      v143 = sub_1000136BC(v139, v142, &v196);

      *(v128 + 14) = v143;
      v137 = "Cannot set empty name for item. Beacon: %{private,mask.hash}s.";
      goto LABEL_36;
    }

LABEL_37:

    v134 = v54;
    v135 = *(v124 + 8);
    v135(v125, v134);
    goto LABEL_38;
  }

  sub_10001F280(&v198, &v196);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v74 = v177;
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    sub_1000076D4(v123, qword_10177BA08);
    v124 = v195;
    v125 = v171;
    (*(v195 + 16))(v171, v55, v54);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *&v196 = v129;
      *v128 = 141558275;
      *(v128 + 4) = 1752392040;
      *(v128 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      v131 = v124;
      v133 = v132;
      v134 = v54;
      v135 = *(v131 + 8);
      v135(v125, v134);
      v136 = sub_1000136BC(v130, v133, &v196);

      *(v128 + 14) = v136;
      v137 = "Cannot restore default name for owned item yet. Beacon: %{private,mask.hash}s.";
LABEL_36:
      _os_log_impl(&_mh_execute_header, v126, v127, v137, v128, 0x16u);
      sub_100007BAC(v129);

LABEL_38:
      v72 = v191;
      v144 = v187;
      (*(v191 + 2))(v191, 0);
      sub_100721D04(v144, type metadata accessor for BeaconNamingRecord);
      sub_100007BAC(&v198);
      v135(v194, v134);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v188 = v59;
  sub_100721D04(v74, type metadata accessor for SharedBeaconRecord);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_1000076D4(v75, qword_10177BA08);
  v76 = v195;
  v77 = v170;
  v189 = *(v195 + 16);
  v190 = v195 + 16;
  (v189)(v170, v55, v54);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  v80 = os_log_type_enabled(v78, v79);
  v167 = v54;
  if (v80)
  {
    v81 = swift_slowAlloc();
    LODWORD(v183) = v79;
    v82 = v77;
    v83 = v81;
    v184 = swift_slowAlloc();
    *&v196 = v184;
    *v83 = 141558275;
    *(v83 + 4) = 1752392040;
    *(v83 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v85 = v54;
    v87 = v86;
    v193 = *(v76 + 8);
    v193(v82, v85);
    v88 = sub_1000136BC(v84, v87, &v196);

    *(v83 + 14) = v88;
    _os_log_impl(&_mh_execute_header, v78, v183, "Restoring default name for shared item Beacon: %{private,mask.hash}s.", v83, 0x16u);
    sub_100007BAC(v184);
  }

  else
  {

    v193 = *(v76 + 8);
    v193(v77, v54);
  }

  v146 = swift_allocObject();
  *(v146 + 16) = sub_100721F40;
  v147 = v192;
  *(v146 + 24) = v192;
  v148 = *(v47 + v49);
  __chkstk_darwin(v147);
  v149 = v194;
  *(&v166 - 2) = v47;
  *(&v166 - 1) = v149;

  v150 = v172;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v151 = v60(v150, 1, v186);
  v152 = v173;
  if (v151 == 1)
  {
    sub_10000B3A8(v150, &unk_1016B29E0, &unk_1013B70E0);
    v153 = v191;
    (*(v191 + 2))(v191, 1);

    v154 = v167;
  }

  else
  {
    sub_10002AB74(v150, v173, type metadata accessor for BeaconNamingRecord);
    v155 = v149;
    v156 = v175;
    v154 = v167;
    (v189)(v175, v155, v167);
    v157 = v195;
    v158 = (*(v195 + 80) + 24) & ~*(v195 + 80);
    v159 = (v174 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
    v160 = swift_allocObject();
    *(v160 + 16) = v47;
    (*(v157 + 32))(v160 + v158, v156, v154);
    v161 = (v160 + v159);
    *v161 = sub_10071F5A4;
    v161[1] = v146;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_101385D80;
    sub_100721C9C(v152, v168, type metadata accessor for BeaconNamingRecord);
    v163 = String.init<A>(describing:)();
    v164 = v181;
    *(v162 + 56) = &type metadata for String;
    *(v162 + 64) = v164;
    *(v162 + 32) = v163;
    *(v162 + 40) = v165;
    os_log(_:dso:log:_:_:)();

    sub_100B1145C(v152, v47, sub_10071F5CC, v160);

    sub_100721D04(v152, type metadata accessor for BeaconNamingRecord);
    v153 = v191;
    v149 = v194;
  }

  sub_100721D04(v187, type metadata accessor for BeaconNamingRecord);
  sub_100007BAC(&v198);
  v193(v149, v154);

  v145 = v153;
LABEL_40:
  _Block_release(v145);
}

uint64_t sub_10070F468(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  v12 = *a2;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 64) = v9;
  *(v5 + 72) = 0xD00000000000002BLL;
  *(v5 + 80) = 0x800000010135CFD0;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.error.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  return (*(a3 + 16))(a3, 0);
}

uint64_t sub_10070F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v82 = a1;
  v83 = a6;
  v79 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v75 - v16;
  __chkstk_darwin(v15);
  v19 = v75 - v18;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_1000076D4(v20, qword_10177B7F8);

  v85 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v84 = a3;
  v76 = v17;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v80 = v9;
    v26 = v25;
    v27 = swift_slowAlloc();
    *v26 = 136315394;
    v86 = *a5;
    v87 = v27;
    sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
    v28 = String.init<A>(describing:)();
    v30 = sub_1000136BC(v28, v29, &v87);

    *(v26 + 4) = v30;
    a3 = v84;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1000136BC(0xD00000000000003ALL, 0x800000010135D060, &v87);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: %s", v26, 0x16u);
    swift_arrayDestroy();

    v9 = v80;
  }

  v80 = v10[2];
  v80(v19, a4, v9);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  v33 = os_log_type_enabled(v31, v32);
  v81 = v10;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v78 = v14;
    v35 = v9;
    v36 = v34;
    v37 = swift_slowAlloc();
    v77 = a4;
    v38 = v37;
    v87 = v37;
    *v36 = 134219011;
    v75[1] = v10 + 2;
    v39 = v82;
    *(v36 + 4) = v82;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v79;
    *(v36 + 22) = 2048;
    *(v36 + 24) = a3;
    *(v36 + 32) = 2160;
    *(v36 + 34) = 1752392040;
    *(v36 + 42) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = v10[1];
    v43(v19, v35);
    v44 = sub_1000136BC(v40, v42, &v87);

    *(v36 + 44) = v44;
    _os_log_impl(&_mh_execute_header, v31, v32, "setWildKeyBase called:\nbase: %lu,\ninterval: %lu,\nfallback: %lu\nbeaconUUID: %{private,mask.hash}s", v36, 0x34u);
    sub_100007BAC(v38);
    a4 = v77;

    v9 = v35;
    v14 = v78;

    if (v39)
    {
      goto LABEL_7;
    }

LABEL_10:
    v52 = v76;
    v80(v76, a4, v9);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v55 = os_log_type_enabled(v53, v54);
    v45 = v84;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v78 = v14;
      v57 = v9;
      v58 = v56;
      v59 = swift_slowAlloc();
      v77 = a4;
      v60 = v59;
      v87 = v59;
      *v58 = 141558787;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v82) = v54;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v43(v52, v57);
      v64 = sub_1000136BC(v61, v63, &v87);

      *(v58 + 14) = v64;
      *(v58 + 22) = 2048;
      *(v58 + 24) = 1;
      *(v58 + 32) = 2048;
      *(v58 + 34) = 0;
      _os_log_impl(&_mh_execute_header, v53, v82, "Ignoring setWildKeyBase update because wildIndexBase for beacon %{private,mask.hash}s:\nexisting: %llu new: %llu", v58, 0x2Au);
      sub_100007BAC(v60);
      a4 = v77;

      v9 = v57;
      v14 = v78;

      if (!v45)
      {
LABEL_14:
        v80(v14, a4, v9);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = v9;
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v87 = v69;
          *v68 = 141558787;
          *(v68 + 4) = 1752392040;
          *(v68 + 12) = 2081;
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
          v70 = dispatch thunk of CustomStringConvertible.description.getter();
          v72 = v71;
          v43(v14, v67);
          v73 = sub_1000136BC(v70, v72, &v87);

          *(v68 + 14) = v73;
          *(v68 + 22) = 2048;
          *(v68 + 24) = 1;
          *(v68 + 32) = 2048;
          *(v68 + 34) = v45;
          _os_log_impl(&_mh_execute_header, v65, v66, "Ignoring setWildKeyBase update because wildIndexFallback for beacon %{private,mask.hash}s:\nexisting: %llu new: %llu", v68, 0x2Au);
          sub_100007BAC(v69);
        }

        else
        {

          v43(v14, v9);
        }
      }
    }

    else
    {

      v43(v52, v9);
      if (!v45)
      {
        goto LABEL_14;
      }
    }

    v51 = 0;
    return (*(v83 + 16))(v83, v51);
  }

  v43 = v10[1];
  v43(v19, v9);
  if (!v82)
  {
    goto LABEL_10;
  }

LABEL_7:
  v45 = v84;
  if (!v84)
  {
    goto LABEL_14;
  }

  static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_101385D80;
  v47 = UUID.uuidString.getter();
  v49 = v48;
  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = sub_100008C00();
  *(v46 + 32) = v47;
  *(v46 + 40) = v49;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v50 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v51 = 1;
  return (*(v83 + 16))(v83, v51);
}

void sub_10070FF28(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v71 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v66 = &v64 - v14;
  __chkstk_darwin(v13);
  v16 = &v64 - v15;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_1000076D4(v17, qword_10177B7F8);

  v70 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  v21 = os_log_type_enabled(v19, v20);
  v69 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v68 = v16;
    v23 = v22;
    v24 = swift_slowAlloc();
    *v23 = 136315394;
    v72 = *a3;
    v73 = v24;
    sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
    v25 = String.init<A>(describing:)();
    v27 = sub_1000136BC(v25, v26, &v73);

    *(v23 + 4) = v27;
    a1 = v69;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1000136BC(0xD00000000000002FLL, 0x800000010135CFA0, &v73);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s: %s", v23, 0x16u);
    swift_arrayDestroy();

    v16 = v68;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v68 = a4;
    v28 = v8[2];
    v28(v16, v71, v7);
    v29 = Logger.logObject.getter();
    v30 = v16;
    v31 = static os_log_type_t.info.getter();
    v32 = os_log_type_enabled(v29, v31);
    v67 = v8;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v64 = v28;
      v34 = v33;
      v35 = swift_slowAlloc();
      v65 = v12;
      v36 = v7;
      v37 = v35;
      v73 = v35;
      *v34 = 134218499;
      *(v34 + 4) = a1;
      *(v34 + 12) = 2160;
      *(v34 + 14) = 1752392040;
      *(v34 + 22) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = v8[1];
      v41(v30, v36);
      v42 = sub_1000136BC(v38, v40, &v73);
      a1 = v69;

      *(v34 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v29, v31, "setCurrentWildKeyIndex called: index: %llu, beaconUUID: %{private,mask.hash}s", v34, 0x20u);
      sub_100007BAC(v37);
      v7 = v36;
      v12 = v65;

      v28 = v64;

      if (!a1)
      {
LABEL_8:
        v43 = v41;
        v44 = v66;
        v28(v66, v71, v7);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = v7;
          v49 = swift_slowAlloc();
          v73 = v49;
          *v47 = 141558787;
          *(v47 + 4) = 1752392040;
          *(v47 + 12) = 2081;
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          v43(v44, v48);
          v53 = sub_1000136BC(v50, v52, &v73);

          *(v47 + 14) = v53;
          *(v47 + 22) = 2048;
          *(v47 + 24) = 1;
          *(v47 + 32) = 2048;
          *(v47 + 34) = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Ignoring setCurrentWildKeyindex update because wildIndexFallback for beacon %{private,mask.hash}s:\nexisting: %llu new: %llu", v47, 0x2Au);
          sub_100007BAC(v49);
        }

        else
        {

          v43(v44, v7);
        }

        v63 = v68;
        a1 = v69;
LABEL_17:
        v63[2](v63, a1 != 0);
        return;
      }
    }

    else
    {

      v41 = v8[1];
      v41(v30, v7);
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    v28(v12, v71, v7);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v7;
      v58 = swift_slowAlloc();
      v73 = v58;
      *v56 = 141558275;
      *(v56 + 4) = 1752392040;
      *(v56 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v41(v12, v57);
      v62 = sub_1000136BC(v59, v61, &v73);
      a1 = v69;

      *(v56 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Ignoring update for wild key index for %{private,mask.hash}s", v56, 0x16u);
      sub_100007BAC(v58);
    }

    else
    {

      v41(v12, v7);
    }

    v63 = v68;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1007106F0(uint64_t a1, uint64_t a2, uint64_t *a3, void (**a4)(const void *, void))
{
  v80 = a2;
  v84 = a1;
  v74 = type metadata accessor for UUID();
  v73 = *(v74 - 8);
  v6 = *(v73 + 64);
  __chkstk_darwin(v74);
  v71 = v7;
  v72 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v78 = v69 - v10;
  v11 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v69 - v13;
  v76 = type metadata accessor for KeyAlignmentRecord();
  v15 = *(v76 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v76);
  v79 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v82 = *(v18 - 8);
  v83 = v18;
  v19 = *(v82 + 64);
  v20 = __chkstk_darwin(v18);
  v77 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69[2] = v21;
  __chkstk_darwin(v20);
  v23 = v69 - v22;
  v81 = swift_allocObject();
  *(v81 + 16) = a4;
  v70 = a4;
  _Block_copy(a4);
  LODWORD(v75) = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v69[1] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10138BBE0;
  v87[0] = *a3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v25 = a3;
  v26 = String.init<A>(describing:)();
  v28 = v27;
  *(v24 + 56) = &type metadata for String;
  v29 = sub_100008C00();
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  v30 = v25;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v29;
  *(v24 + 64) = v29;
  *(v24 + 72) = 0xD000000000000029;
  *(v24 + 80) = 0x800000010135CE10;
  os_log(_:dso:log:_:_:)();

  static Date.trustedNow.getter(v23);
  v31 = v25[35];
  v32 = *(v31 + 168);
  v33 = v84;
  sub_100B2DA4C(v14);
  if ((*(v15 + 48))(v14, 1, v76) == 1)
  {
    sub_10000B3A8(v14, &qword_10169F328, &unk_1013CB040);
    static os_log_type_t.error.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    v35 = UUID.uuidString.getter();
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v29;
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v37 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v70[2](v70, 0);
    (*(v82 + 8))(v23, v83);
  }

  else
  {
    v38 = v79;
    sub_10002AB74(v14, v79, type metadata accessor for KeyAlignmentRecord);
    v39 = type metadata accessor for Transaction();
    __chkstk_darwin(v39);
    v69[-4] = v30;
    v69[-3] = v38;
    v69[-2] = v80;
    v75 = v40;
    static Transaction.named<A>(_:with:)();
    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v78, 1, 1, v41);
    v42 = v73;
    v43 = *(v73 + 16);
    v76 = v31;
    v44 = v72;
    v45 = v23;
    v69[0] = v23;
    v46 = v74;
    v43(v72, v33, v74);
    v47 = v82;
    v48 = v45;
    v49 = v83;
    (*(v82 + 16))(v77, v48, v83);
    v50 = (*(v42 + 80) + 48) & ~*(v42 + 80);
    v51 = (v71 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (*(v47 + 80) + v51 + 8) & ~*(v47 + 80);
    v53 = swift_allocObject();
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    v54 = v81;
    *(v53 + 4) = sub_1002FB454;
    *(v53 + 5) = v54;
    v55 = v44;
    v56 = v76;
    (*(v42 + 32))(&v53[v50], v55, v46);
    v57 = v80;
    *&v53[v51] = v80;
    v58 = v57;
    v59 = &v53[v52];
    v60 = v49;
    (*(v47 + 32))(v59, v77, v49);

    v61 = v56;
    sub_10025EDD4(0, 0, v78, &unk_1013B67F0, v53);

    sub_100025020(v84, &v85);
    if (v86)
    {
      sub_10000A748(&v85, v87);
      v62 = v88;
      v63 = v89;
      v64 = sub_1000035D0(v87, v88);
      v65 = sub_100B005BC(v64, v61, v62, v63);
      v66 = swift_allocObject();
      *(v66 + 16) = v58;
      *(v66 + 24) = v65;
      v67 = v65;
      static Transaction.asyncTask(name:block:)();

      (*(v47 + 8))(v69[0], v60);
      sub_100007BAC(v87);
    }

    else
    {
      (*(v47 + 8))(v69[0], v60);
      sub_10000B3A8(&v85, &qword_101696920, &unk_10138B200);
    }

    sub_100721D04(v79, type metadata accessor for KeyAlignmentRecord);
  }
}

uint64_t sub_100710F8C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v269 = a4;
  v266 = a1;
  v322 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  v9 = *(*(v322 - 8) + 64);
  v10 = __chkstk_darwin(v322);
  v294 = &v265 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v296 = &v265 - v13;
  v14 = __chkstk_darwin(v12);
  v274 = &v265 - v15;
  __chkstk_darwin(v14);
  v276 = &v265 - v16;
  v17 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v293 = &v265 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v295 = &v265 - v22;
  v23 = __chkstk_darwin(v21);
  v273 = &v265 - v24;
  __chkstk_darwin(v23);
  v283 = &v265 - v25;
  v321 = type metadata accessor for UUID();
  v26 = *(v321 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v321);
  v305 = &v265 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v315 = &v265 - v31;
  v32 = __chkstk_darwin(v30);
  v282 = &v265 - v33;
  __chkstk_darwin(v32);
  v285 = &v265 - v34;
  v35 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v292 = &v265 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v41 = &v265 - v40;
  v42 = __chkstk_darwin(v39);
  v272 = &v265 - v43;
  __chkstk_darwin(v42);
  v281 = &v265 - v44;
  v318 = type metadata accessor for Date();
  v45 = *(*(v318 - 8) + 64);
  v46 = __chkstk_darwin(v318);
  v290 = &v265 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v289 = &v265 - v49;
  v50 = __chkstk_darwin(v48);
  v291 = &v265 - v51;
  v52 = __chkstk_darwin(v50);
  v304 = &v265 - v53;
  v54 = __chkstk_darwin(v52);
  v268 = &v265 - v55;
  v56 = __chkstk_darwin(v54);
  v267 = &v265 - v57;
  v58 = __chkstk_darwin(v56);
  v271 = &v265 - v59;
  __chkstk_darwin(v58);
  v280 = &v265 - v61;
  v284 = a3;
  v62 = a3[1];
  v287 = a5;
  if (v62 < 1)
  {
    swift_retain_n();
    v64 = _swiftEmptyArrayStorage;
LABEL_126:
    v323 = *v266;
    if (!v323)
    {
      goto LABEL_166;
    }

    v254 = v64;
    swift_retain_n();
    a5 = v254;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_160;
    }

    v255 = v254;
LABEL_129:
    v330 = v255;
    v256 = *(v255 + 2);
    if (v256 >= 2)
    {
      do
      {
        v257 = *v284;
        if (!*v284)
        {
          goto LABEL_164;
        }

        v258 = *&v255[16 * v256];
        a5 = v255;
        v259 = *&v255[16 * v256 + 24];
        v260 = (v257 + 40 * v258);
        v261 = (v257 + 40 * *&v255[16 * v256 + 16]);
        v262 = v257 + 40 * v259;
        v263 = v287;

        sub_1006EA730(v260, v261, v262, v323, v263);
        if (v6)
        {
          break;
        }

        if (v259 < v258)
        {
          goto LABEL_153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a5 = sub_100B31E68(a5);
        }

        if (v256 - 2 >= *(a5 + 16))
        {
          goto LABEL_154;
        }

        v264 = (a5 + 16 * v256);
        *v264 = v258;
        v264[1] = v259;
        v330 = a5;
        sub_100B31DDC(v256 - 1);
        v255 = v330;
        v256 = *(v330 + 16);
      }

      while (v256 > 1);
    }
  }

  v319 = (v26 + 8);
  v316 = (v60 + 32);
  v317 = (v60 + 16);
  v297 = (v60 + 8);
  swift_retain_n();
  v63 = 0;
  v64 = _swiftEmptyArrayStorage;
  v65 = &qword_10169DBE0;
  v298 = v41;
  while (1)
  {
    v275 = v64;
    v270 = v63;
    if (v63 + 1 >= v62)
    {
      v72 = v63 + 1;
      v124 = v269;
    }

    else
    {
      v286 = v62;
      v66 = *v284;
      sub_10001F280(*v284 + 40 * (v63 + 1), &v327);
      sub_10001F280(v66 + 40 * v63, &v324);
      LODWORD(v302) = sub_1006CD3D4(&v327, &v324, v287);
      if (v6)
      {
        sub_100007BAC(&v324);
        sub_100007BAC(&v327);
      }

      v323 = 0;
      sub_100007BAC(&v324);
      sub_100007BAC(&v327);
      v67 = v63 + 2;
      v288 = 40 * v63;
      a5 = v66 + 40 * v63 + 80;
      v68 = v276;
      while (1)
      {
        v72 = v286;
        if (v286 == v67)
        {
          break;
        }

        v314 = v67;
        sub_10001F280(a5, &v327);
        v313 = a5;
        sub_10001F280(a5 - 40, &v324);
        v73 = *(v287 + 280);
        v75 = v328;
        v74 = v329;
        sub_1000035D0(&v327, v328);
        v76 = v285;
        (*(*(*(v74 + 8) + 8) + 32))(v75);
        v77._object = (v320 | 0x8000000000000000);
        v77._countAndFlagsBits = 0xD000000000000015;
        prohibitAsyncContext(functionName:)(v77);
        v311 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue;
        v78 = *(v73 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue);
        __chkstk_darwin(v79);
        v312 = v73;
        *(&v265 - 2) = v73;
        *(&v265 - 1) = v76;
        v80 = v323;
        OS_dispatch_queue.sync<A>(execute:)();
        v323 = v80;
        v81 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
        v82 = *(v81 - 8);
        v310 = *(v82 + 48);
        v309 = (v82 + 48);
        if (v310(v68, 1, v81) == 1)
        {
          sub_10000B3A8(v68, &qword_101699848, &unk_1013D6610);
          v83 = sub_1000BC4D4(v65, &unk_1013BD7D0);
          v84 = v283;
          (*(*(v83 - 8) + 56))(v283, 1, 1, v83);
        }

        else
        {
          v85 = *(v68 + *(v81 + 48));
          v86 = sub_1000BC4D4(v65, &unk_1013BD7D0);
          v87 = *(v86 + 48);
          v84 = v283;
          sub_10002AB74(v68, v283, type metadata accessor for BeaconStatus);
          *(v84 + v87) = v85;
          (*(*(v86 - 8) + 56))(v84, 0, 1, v86);
        }

        v88 = v281;
        v308 = *v319;
        v308(v285, v321);
        v89 = sub_1000BC4D4(v65, &unk_1013BD7D0);
        v90 = *(v89 - 8);
        v307 = *(v90 + 48);
        if (v307(v84, 1, v89) == 1)
        {
          sub_10000B3A8(v84, &qword_10169DBD0, &unk_1013D6790);
          v91 = 1;
        }

        else
        {
          sub_10002AB74(v84, v88, type metadata accessor for BeaconStatus);
          v91 = 0;
        }

        v92 = type metadata accessor for BeaconStatus(0);
        v93 = *(v92 - 8);
        v94 = v93;
        v306 = *(v93 + 56);
        v303 = v93 + 56;
        (v306)(v88, v91, 1, v92);
        v95 = *(v94 + 48);
        if (v95(v88, 1, v92) == 1)
        {
          sub_10000B3A8(v88, &qword_10169DBD8, &qword_1013BF910);
          v69 = 0;
          v41 = v298;
          v65 = &qword_10169DBE0;
        }

        else
        {
          v301 = v95;
          v96 = v318;
          v97 = v88 + *(v92 + 24);
          v98 = v271;
          v300 = *v317;
          v300(v271, v97, v318);
          sub_100721D04(v88, type metadata accessor for BeaconStatus);
          v299 = *v316;
          v299(v280, v98, v96);
          v100 = v325;
          v99 = v326;
          sub_1000035D0(&v324, v325);
          v101 = v282;
          (*(*(*(v99 + 8) + 8) + 32))(v100);
          v102._object = (v320 | 0x8000000000000000);
          v102._countAndFlagsBits = 0xD000000000000015;
          prohibitAsyncContext(functionName:)(v102);
          v103 = *(v311 + v312);
          __chkstk_darwin(v104);
          *(&v265 - 2) = v105;
          *(&v265 - 1) = v101;
          v106 = v274;
          v107 = v323;
          OS_dispatch_queue.sync<A>(execute:)();
          v323 = v107;
          if (v310(v106, 1, v81) == 1)
          {
            sub_10000B3A8(v106, &qword_101699848, &unk_1013D6610);
            v108 = 1;
            v109 = v273;
          }

          else
          {
            v110 = *(v106 + *(v81 + 48));
            v111 = *(v89 + 48);
            v112 = v273;
            sub_10002AB74(v106, v273, type metadata accessor for BeaconStatus);
            v108 = 0;
            *(v112 + v111) = v110;
            v109 = v112;
          }

          v113 = v308;
          v114 = v307;
          (*(v90 + 56))(v109, v108, 1, v89);
          v113(v282, v321);
          v115 = v114(v109, 1, v89);
          v68 = v276;
          if (v115 == 1)
          {
            sub_10000B3A8(v109, &qword_10169DBD0, &unk_1013D6790);
            v116 = 1;
            v41 = v298;
            v117 = v272;
          }

          else
          {
            v118 = v109;
            v117 = v272;
            sub_10002AB74(v118, v272, type metadata accessor for BeaconStatus);
            v116 = 0;
            v41 = v298;
          }

          v65 = &qword_10169DBE0;
          (v306)(v117, v116, 1, v92);
          if (v301(v117, 1, v92) == 1)
          {
            (*v297)(v280, v318);
            sub_10000B3A8(v117, &qword_10169DBD8, &qword_1013BF910);
            v69 = 0;
          }

          else
          {
            v119 = v268;
            v120 = v318;
            v300(v268, v117 + *(v92 + 24), v318);
            sub_100721D04(v117, type metadata accessor for BeaconStatus);
            v121 = v267;
            v299(v267, v119, v120);
            v122 = v280;
            v69 = static Date.> infix(_:_:)();
            v123 = *v297;
            (*v297)(v121, v120);
            v123(v122, v120);
          }
        }

        v70 = v313;
        v71 = v314;
        sub_100007BAC(&v324);
        sub_100007BAC(&v327);
        v67 = v71 + 1;
        a5 = v70 + 40;
        if ((v302 & 1) != (v69 & 1))
        {
          v72 = v67 - 1;
          break;
        }
      }

      v6 = v323;
      v124 = v269;
      if (v302)
      {
        v125 = v270;
        if (v72 < v270)
        {
          goto LABEL_159;
        }

        if (v270 < v72)
        {
          a5 = 40 * v72 - 40;
          v126 = v72;
          v127 = v288;
          do
          {
            if (v125 != --v126)
            {
              v128 = v127;
              v323 = v6;
              v129 = *v284;
              if (!*v284)
              {
                goto LABEL_163;
              }

              v130 = v65;
              v131 = v72;
              v288 = v128;
              v132 = v129 + v128;
              v133 = v129 + a5;
              sub_10000A748((v129 + v128), &v327);
              v134 = *(v133 + 32);
              v135 = *(v133 + 16);
              *v132 = *v133;
              *(v132 + 16) = v135;
              *(v132 + 32) = v134;
              sub_10000A748(&v327, v133);
              v127 = v288;
              v124 = v269;
              v72 = v131;
              v65 = v130;
              v6 = v323;
            }

            ++v125;
            a5 -= 40;
            v127 += 40;
          }

          while (v125 < v126);
        }
      }
    }

    v136 = v284[1];
    if (v72 < v136)
    {
      if (__OFSUB__(v72, v270))
      {
        goto LABEL_156;
      }

      if (v72 - v270 < v124)
      {
        if (__OFADD__(v270, v124))
        {
          goto LABEL_157;
        }

        if (v270 + v124 >= v136)
        {
          a5 = v284[1];
        }

        else
        {
          a5 = v270 + v124;
        }

        if (a5 < v270)
        {
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          v255 = sub_100B31E68(a5);
          goto LABEL_129;
        }

        if (v72 != a5)
        {
          break;
        }
      }
    }

    a5 = v72;
LABEL_46:
    if (a5 < v270)
    {
      goto LABEL_155;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v277 = a5;
    if (isUniquelyReferenced_nonNull_native)
    {
      v64 = v275;
    }

    else
    {
      v64 = sub_100A5B430(0, *(v275 + 2) + 1, 1, v275);
    }

    a5 = *(v64 + 2);
    v138 = *(v64 + 3);
    v139 = a5 + 1;
    v140 = v270;
    if (a5 >= v138 >> 1)
    {
      v64 = sub_100A5B430((v138 > 1), a5 + 1, 1, v64);
      v140 = v270;
    }

    *(v64 + 2) = v139;
    v141 = &v64[16 * a5];
    *(v141 + 4) = v140;
    *(v141 + 5) = v277;
    v323 = *v266;
    if (!v323)
    {
      goto LABEL_165;
    }

    if (a5)
    {
      while (1)
      {
        v142 = v139 - 1;
        if (v139 >= 4)
        {
          break;
        }

        if (v139 == 3)
        {
          v143 = *(v64 + 4);
          v144 = *(v64 + 5);
          v153 = __OFSUB__(v144, v143);
          v145 = v144 - v143;
          v146 = v153;
LABEL_66:
          if (v146)
          {
            goto LABEL_144;
          }

          v159 = &v64[16 * v139];
          v161 = *v159;
          v160 = *(v159 + 1);
          v162 = __OFSUB__(v160, v161);
          v163 = v160 - v161;
          v164 = v162;
          if (v162)
          {
            goto LABEL_147;
          }

          v165 = &v64[16 * v142 + 32];
          v167 = *v165;
          v166 = *(v165 + 1);
          v153 = __OFSUB__(v166, v167);
          v168 = v166 - v167;
          if (v153)
          {
            goto LABEL_150;
          }

          if (__OFADD__(v163, v168))
          {
            goto LABEL_151;
          }

          if (v163 + v168 >= v145)
          {
            if (v145 < v168)
            {
              v142 = v139 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v169 = &v64[16 * v139];
        v171 = *v169;
        v170 = *(v169 + 1);
        v153 = __OFSUB__(v170, v171);
        v163 = v170 - v171;
        v164 = v153;
LABEL_80:
        if (v164)
        {
          goto LABEL_146;
        }

        v172 = &v64[16 * v142];
        v174 = *(v172 + 4);
        v173 = *(v172 + 5);
        v153 = __OFSUB__(v173, v174);
        v175 = v173 - v174;
        if (v153)
        {
          goto LABEL_149;
        }

        if (v175 < v163)
        {
          goto LABEL_3;
        }

LABEL_87:
        a5 = v142 - 1;
        if (v142 - 1 >= v139)
        {
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
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        v180 = *v284;
        if (!*v284)
        {
          goto LABEL_162;
        }

        v181 = v64;
        v182 = *&v64[16 * a5 + 32];
        v183 = *&v64[16 * v142 + 40];
        v184 = (v180 + 40 * v182);
        v185 = (v180 + 40 * *&v64[16 * v142 + 32]);
        v186 = v180 + 40 * v183;
        v187 = v287;

        sub_1006EA730(v184, v185, v186, v323, v187);
        if (v6)
        {
        }

        if (v183 < v182)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_100B31E68(v181);
        }

        v65 = &qword_10169DBE0;
        if (a5 >= *(v181 + 2))
        {
          goto LABEL_141;
        }

        v188 = &v181[16 * a5];
        *(v188 + 4) = v182;
        *(v188 + 5) = v183;
        v330 = v181;
        sub_100B31DDC(v142);
        v64 = v330;
        v139 = *(v330 + 16);
        v41 = v298;
        if (v139 <= 1)
        {
          goto LABEL_3;
        }
      }

      v147 = &v64[16 * v139 + 32];
      v148 = *(v147 - 64);
      v149 = *(v147 - 56);
      v153 = __OFSUB__(v149, v148);
      v150 = v149 - v148;
      if (v153)
      {
        goto LABEL_142;
      }

      v152 = *(v147 - 48);
      v151 = *(v147 - 40);
      v153 = __OFSUB__(v151, v152);
      v145 = v151 - v152;
      v146 = v153;
      if (v153)
      {
        goto LABEL_143;
      }

      v154 = &v64[16 * v139];
      v156 = *v154;
      v155 = *(v154 + 1);
      v153 = __OFSUB__(v155, v156);
      v157 = v155 - v156;
      if (v153)
      {
        goto LABEL_145;
      }

      v153 = __OFADD__(v145, v157);
      v158 = v145 + v157;
      if (v153)
      {
        goto LABEL_148;
      }

      if (v158 >= v150)
      {
        v176 = &v64[16 * v142 + 32];
        v178 = *v176;
        v177 = *(v176 + 1);
        v153 = __OFSUB__(v177, v178);
        v179 = v177 - v178;
        if (v153)
        {
          goto LABEL_152;
        }

        if (v145 < v179)
        {
          v142 = v139 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v62 = v284[1];
    v63 = v277;
    if (v277 >= v62)
    {
      goto LABEL_126;
    }
  }

  v189 = *v284;
  v190 = *(v287 + 280);
  v313 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue;
  v314 = v190;
  v288 = v189;
  v191 = v189 + 40 * v72;
  v192 = v270 - v72;
  v277 = a5;
LABEL_100:
  v286 = v72;
  v278 = v192;
  v194 = v192;
  v279 = v191;
  while (1)
  {
    v303 = v194;
    sub_10001F280(v191, &v327);
    v302 = v191;
    v301 = (v191 - 40);
    sub_10001F280(v191 - 40, &v324);
    v196 = v328;
    v195 = v329;
    sub_1000035D0(&v327, v328);
    v197 = v315;
    (*(*(*(v195 + 8) + 8) + 32))(v196);
    v198._object = (v320 | 0x8000000000000000);
    v198._countAndFlagsBits = 0xD000000000000015;
    prohibitAsyncContext(functionName:)(v198);
    v199 = *(v314 + v313);
    __chkstk_darwin(v200);
    *(&v265 - 2) = v201;
    *(&v265 - 1) = v197;
    v202 = v296;
    OS_dispatch_queue.sync<A>(execute:)();
    v203 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
    v204 = *(v203 - 8);
    v311 = *(v204 + 48);
    v310 = (v204 + 48);
    v205 = v311(v202, 1, v203);
    v312 = v203;
    if (v205 == 1)
    {
      sub_10000B3A8(v202, &qword_101699848, &unk_1013D6610);
      v206 = sub_1000BC4D4(v65, &unk_1013BD7D0);
      v207 = v295;
      (*(*(v206 - 8) + 56))(v295, 1, 1, v206);
    }

    else
    {
      v208 = *(v202 + *(v203 + 48));
      v209 = sub_1000BC4D4(v65, &unk_1013BD7D0);
      v210 = v202;
      v211 = *(v209 + 48);
      v207 = v295;
      sub_10002AB74(v210, v295, type metadata accessor for BeaconStatus);
      *(v207 + v211) = v208;
      (*(*(v209 - 8) + 56))(v207, 0, 1, v209);
    }

    v309 = *v319;
    v309(v315, v321);
    v212 = sub_1000BC4D4(v65, &unk_1013BD7D0);
    v306 = *(v212 - 8);
    v213 = *(v306 + 48);
    v308 = (v306 + 48);
    v307 = v213;
    v214 = v213(v207, 1, v212);
    v323 = v6;
    if (v214 == 1)
    {
      sub_10000B3A8(v207, &qword_10169DBD0, &unk_1013D6790);
      v215 = 1;
    }

    else
    {
      sub_10002AB74(v207, v41, type metadata accessor for BeaconStatus);
      v215 = 0;
    }

    v216 = type metadata accessor for BeaconStatus(0);
    v217 = *(v216 - 8);
    v218 = *(v217 + 56);
    v218(v41, v215, 1, v216);
    v219 = *(v217 + 48);
    if (v219(v41, 1, v216) == 1)
    {
      v193 = v41;
LABEL_98:
      v6 = v323;
      sub_10000B3A8(v193, &qword_10169DBD8, &qword_1013BF910);
      sub_100007BAC(&v324);
      sub_100007BAC(&v327);
LABEL_99:
      v72 = v286 + 1;
      v191 = v279 + 40;
      v192 = v278 - 1;
      a5 = v277;
      if (v286 + 1 == v277)
      {
        goto LABEL_46;
      }

      goto LABEL_100;
    }

    v220 = v318;
    v221 = &v41[*(v216 + 24)];
    v222 = v291;
    v300 = *v317;
    v300(v291, v221, v318);
    sub_100721D04(v41, type metadata accessor for BeaconStatus);
    v299 = *v316;
    v299(v304, v222, v220);
    v224 = v325;
    v223 = v326;
    sub_1000035D0(&v324, v325);
    v225 = v305;
    (*(*(*(v223 + 8) + 8) + 32))(v224);
    v226._object = (v320 | 0x8000000000000000);
    v226._countAndFlagsBits = 0xD000000000000015;
    prohibitAsyncContext(functionName:)(v226);
    v227 = *(v314 + v313);
    __chkstk_darwin(v228);
    *(&v265 - 2) = v229;
    *(&v265 - 1) = v225;
    v230 = v294;
    v231 = v323;
    OS_dispatch_queue.sync<A>(execute:)();
    v323 = v231;
    v232 = v312;
    if (v311(v230, 1, v312) == 1)
    {
      sub_10000B3A8(v230, &qword_101699848, &unk_1013D6610);
      v233 = 1;
      v234 = v293;
    }

    else
    {
      v235 = *(v230 + *(v232 + 48));
      v236 = *(v212 + 48);
      v237 = v230;
      v238 = v293;
      sub_10002AB74(v237, v293, type metadata accessor for BeaconStatus);
      v233 = 0;
      *(v238 + v236) = v235;
      v234 = v238;
    }

    (*(v306 + 56))(v234, v233, 1, v212);
    v309(v305, v321);
    v239 = v307(v234, 1, v212);
    v41 = v298;
    v65 = &qword_10169DBE0;
    if (v239 == 1)
    {
      sub_10000B3A8(v234, &qword_10169DBD0, &unk_1013D6790);
      v240 = 1;
      v241 = v292;
    }

    else
    {
      v242 = v234;
      v241 = v292;
      sub_10002AB74(v242, v292, type metadata accessor for BeaconStatus);
      v240 = 0;
    }

    v218(v241, v240, 1, v216);
    if (v219(v241, 1, v216) == 1)
    {
      (*v297)(v304, v318);
      v193 = v241;
      goto LABEL_98;
    }

    v243 = v290;
    v244 = v318;
    v300(v290, v241 + *(v216 + 24), v318);
    sub_100721D04(v241, type metadata accessor for BeaconStatus);
    v245 = v289;
    v299(v289, v243, v244);
    v246 = v304;
    v247 = static Date.> infix(_:_:)();
    v248 = *v297;
    (*v297)(v245, v244);
    v248(v246, v244);
    sub_100007BAC(&v324);
    sub_100007BAC(&v327);
    v6 = v323;
    if ((v247 & 1) == 0)
    {
      goto LABEL_99;
    }

    v249 = v303;
    if (!v288)
    {
      break;
    }

    v250 = v302;
    sub_10000A748(v302, &v327);
    v191 = v301;
    v251 = *(v301 + 1);
    *v250 = *v301;
    v250[1] = v251;
    *(v250 + 4) = *(v191 + 32);
    sub_10000A748(&v327, v191);
    v252 = __CFADD__(v249, 1);
    v194 = v249 + 1;
    if (v252)
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_162:

  __break(1u);
LABEL_163:

  __break(1u);
LABEL_164:

  __break(1u);
LABEL_165:

  __break(1u);
LABEL_166:

  __break(1u);
  return result;
}

uint64_t sub_100712D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v148 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  v12 = *(*(v148 - 8) + 64);
  v13 = __chkstk_darwin(v148);
  v113 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v101 - v15;
  v17 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v112 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = &v101 - v21;
  v141 = type metadata accessor for UUID();
  v22 = *(v141 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v141);
  v128 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v114 = &v101 - v26;
  v27 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v111 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v117 = &v101 - v31;
  v127 = type metadata accessor for Date();
  v32 = *(*(v127 - 8) + 64);
  v33 = __chkstk_darwin(v127);
  v108 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v107 = &v101 - v36;
  v37 = __chkstk_darwin(v35);
  v110 = &v101 - v38;
  result = __chkstk_darwin(v37);
  v126 = &v101 - v41;
  v102 = a2;
  if (a3 != a2)
  {
    v42 = *a4;
    v139 = *(a5 + 280);
    v138 = (v22 + 8);
    v124 = (v40 + 16);
    v137 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue;
    v123 = (v40 + 32);
    v109 = (v40 + 8);
    v106 = v42;
    v43 = v42 + 40 * a3;
    v44 = a1 - a3;
    v115 = v16;
    v45 = v114;
    while (2)
    {
      v105 = a3;
      v103 = v44;
      v47 = v44;
      v104 = v43;
      v48 = v117;
      while (1)
      {
        v122 = v47;
        sub_10001F280(v43, &v145);
        v121 = v43;
        v120 = (v43 - 40);
        sub_10001F280(v43 - 40, &v142);
        v49 = v146;
        v50 = v147;
        sub_1000035D0(&v145, v146);
        (*(*(*(v50 + 8) + 8) + 32))(v49);
        v51._object = (v140 | 0x8000000000000000);
        v51._countAndFlagsBits = 0xD000000000000015;
        prohibitAsyncContext(functionName:)(v51);
        v52 = *(v139 + v137);
        __chkstk_darwin(v53);
        *(&v101 - 2) = v54;
        *(&v101 - 1) = v45;
        v55 = v6;
        OS_dispatch_queue.sync<A>(execute:)();
        v56 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
        v57 = *(v56 - 8);
        v58 = *(v57 + 48);
        v134 = v57 + 48;
        v135 = v58;
        v59 = v58(v16, 1, v56);
        v136 = v56;
        if (v59 == 1)
        {
          sub_10000B3A8(v16, &qword_101699848, &unk_1013D6610);
          v60 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
          v61 = v116;
          (*(*(v60 - 8) + 56))(v116, 1, 1, v60);
        }

        else
        {
          v62 = v16[*(v56 + 48)];
          v63 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
          v64 = *(v63 + 48);
          v61 = v116;
          sub_10002AB74(v16, v116, type metadata accessor for BeaconStatus);
          *(v61 + v64) = v62;
          v48 = v117;
          (*(*(v63 - 8) + 56))(v61, 0, 1, v63);
        }

        v133 = *v138;
        v133(v45, v141);
        v65 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
        v130 = *(v65 - 8);
        v131 = *(v130 + 48);
        v132 = v130 + 48;
        if (v131(v61, 1, v65) == 1)
        {
          sub_10000B3A8(v61, &qword_10169DBD0, &unk_1013D6790);
          v66 = 1;
        }

        else
        {
          sub_10002AB74(v61, v48, type metadata accessor for BeaconStatus);
          v66 = 0;
        }

        v67 = type metadata accessor for BeaconStatus(0);
        v68 = *(v67 - 8);
        v129 = *(v68 + 56);
        v129(v48, v66, 1, v67);
        v69 = *(v68 + 48);
        if (v69(v48, 1, v67) == 1)
        {
          v46 = v48;
          goto LABEL_5;
        }

        v70 = v48 + *(v67 + 24);
        v71 = v110;
        v72 = v127;
        v119 = *v124;
        v119(v110, v70, v127);
        sub_100721D04(v48, type metadata accessor for BeaconStatus);
        v118 = *v123;
        v118(v126, v71, v72);
        v74 = v143;
        v73 = v144;
        sub_1000035D0(&v142, v143);
        v75 = v128;
        (*(*(*(v73 + 8) + 8) + 32))(v74);
        v76._object = (v140 | 0x8000000000000000);
        v76._countAndFlagsBits = 0xD000000000000015;
        prohibitAsyncContext(functionName:)(v76);
        v77 = *(v139 + v137);
        __chkstk_darwin(v78);
        *(&v101 - 2) = v79;
        *(&v101 - 1) = v75;
        v80 = v113;
        OS_dispatch_queue.sync<A>(execute:)();
        v125 = v55;
        v81 = v136;
        if (v135(v80, 1, v136) == 1)
        {
          sub_10000B3A8(v80, &qword_101699848, &unk_1013D6610);
          v82 = 1;
          v83 = v112;
        }

        else
        {
          v84 = *(v80 + *(v81 + 48));
          v85 = *(v65 + 48);
          v86 = v80;
          v87 = v112;
          sub_10002AB74(v86, v112, type metadata accessor for BeaconStatus);
          v82 = 0;
          *(v87 + v85) = v84;
          v83 = v87;
        }

        (*(v130 + 56))(v83, v82, 1, v65);
        v133(v128, v141);
        v88 = v131(v83, 1, v65);
        v6 = v125;
        v45 = v114;
        v48 = v117;
        if (v88 == 1)
        {
          sub_10000B3A8(v83, &qword_10169DBD0, &unk_1013D6790);
          v89 = 1;
          v90 = v111;
        }

        else
        {
          v91 = v83;
          v90 = v111;
          sub_10002AB74(v91, v111, type metadata accessor for BeaconStatus);
          v89 = 0;
        }

        v129(v90, v89, 1, v67);
        if (v69(v90, 1, v67) == 1)
        {
          break;
        }

        v92 = v108;
        v93 = v127;
        v119(v108, v90 + *(v67 + 24), v127);
        sub_100721D04(v90, type metadata accessor for BeaconStatus);
        v94 = v107;
        v118(v107, v92, v93);
        v95 = v126;
        LOBYTE(v92) = static Date.> infix(_:_:)();
        v96 = *v109;
        (*v109)(v94, v93);
        v96(v95, v93);
        sub_100007BAC(&v142);
        result = sub_100007BAC(&v145);
        if ((v92 & 1) == 0)
        {
          v16 = v115;
          goto LABEL_6;
        }

        v16 = v115;
        v97 = v122;
        if (!v106)
        {
          __break(1u);
          return result;
        }

        v98 = v121;
        sub_10000A748(v121, &v145);
        v43 = v120;
        v99 = v120[1];
        *v98 = *v120;
        v98[1] = v99;
        *(v98 + 4) = *(v43 + 32);
        result = sub_10000A748(&v145, v43);
        v100 = __CFADD__(v97, 1);
        v47 = v97 + 1;
        if (v100)
        {
          goto LABEL_6;
        }
      }

      (*v109)(v126, v127);
      v46 = v90;
LABEL_5:
      sub_10000B3A8(v46, &qword_10169DBD8, &qword_1013BF910);
      sub_100007BAC(&v142);
      result = sub_100007BAC(&v145);
      v16 = v115;
LABEL_6:
      a3 = v105 + 1;
      v43 = v104 + 40;
      v44 = v103 - 1;
      if (v105 + 1 == v102)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

Swift::Int sub_100713A5C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9[0] = (v8 + 4);
      v9[1] = v7;

      sub_100710F8C(v9, v10, a1, v6, a2);

      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_100712D90(0, v4, 1, a1, a2);
  }
}

uint64_t sub_100713BB4(void **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100B32110(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  sub_100713A5C(v7, a2);

  *a1 = v4;
}

uint64_t sub_100713C58(unint64_t a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v182 = a3;
  v187 = a2;
  v186 = type metadata accessor for BeaconEstimatedLocation();
  v4 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v185 = (&v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v193 = &v181 - v8;
  v195 = type metadata accessor for OwnedBeaconRecord();
  v9 = *(v195 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v195);
  v192 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v191 = &v181 - v13;
  v212 = type metadata accessor for BeaconObservation();
  v196 = *(v212 - 8);
  v14 = *(v196 + 64);
  __chkstk_darwin(v212);
  v211 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for SystemInfo.DeviceLockState();
  v16 = *(v208 - 8);
  v17 = *(v16 + 8);
  v18 = __chkstk_darwin(v208);
  v207 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v206 = &v181 - v20;
  v222 = type metadata accessor for Date();
  v21 = *(v222 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v222);
  v224 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v199 = &v181 - v25;
  v221 = type metadata accessor for UUID();
  v26 = *(v221 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v221);
  v30 = &v181 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v214 = &v181 - v33;
  if (a1 >> 62)
  {
LABEL_63:
    v176 = v31;
    v177 = _CocoaArrayWrapper.endIndex.getter();
    v31 = v176;
    v34 = v177;
    if (v177)
    {
      goto LABEL_3;
    }

    return v182[2](v182, 0);
  }

  v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    return v182[2](v182, 0);
  }

LABEL_3:
  v35 = 0;
  v223 = 0;
  v200 = *(v187 + 280);
  v205 = v31 & 0xC000000000000001;
  v188 = v31 & 0xFFFFFFFFFFFFFF8;
  v220 = v26 + 1;
  v216 = (v21 + 8);
  v203 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v202 = (v16 + 104);
  v201 = (v16 + 8);
  v198 = (v21 + 16);
  v189 = (v9 + 6);
  v184 = (v21 + 56);
  *&v32 = 141560067;
  v194 = v32;
  v36 = &_mh_execute_header;
  *(&v37 + 1) = 2;
  v217 = xmmword_101385D80;
  *&v37 = 141558275;
  v190 = v37;
  v183 = xmmword_10138C660;
  v204 = v31;
  v210 = v30;
  v209 = v34;
  while (1)
  {
    if (v205)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= *(v188 + 16))
      {
        goto LABEL_62;
      }

      v41 = *(v31 + 8 * v35 + 32);
    }

    v9 = v41;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v218 = v35 + 1;
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    v43 = sub_1000076D4(v42, qword_10177B7F8);
    v44 = v9;
    v215 = v43;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    v47 = os_log_type_enabled(v45, v46);
    v219 = v35;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      *&v225 = v213;
      *v48 = v194;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      v49 = [v44 beaconIdentifier];
      v50 = v214;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v51 = v221;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*v220)(v50, v51);
      v55 = sub_1000136BC(v52, v54, &v225);

      *(v48 + 14) = v55;
      *(v48 + 22) = 2082;
      v56 = SPBeaconObservationType.description.getter([v44 type]);
      v58 = sub_1000136BC(v56, v57, &v225);

      *(v48 + 24) = v58;
      *(v48 + 32) = 2082;
      v59 = [v44 date];
      v60 = v199;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E8C(&qword_1016969A0, &type metadata accessor for Date);
      v61 = v222;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = *v216;
      (*v216)(v60, v61);
      v66 = sub_1000136BC(v62, v64, &v225);

      *(v48 + 34) = v66;
      *(v48 + 42) = 2082;
      v67 = [v44 location];
      if (v67)
      {

        v68 = 0xE300000000000000;
        v69 = 7562617;
      }

      else
      {
        v68 = 0xE200000000000000;
        v69 = 28526;
      }

      v70 = sub_1000136BC(v69, v68, &v225);

      *(v48 + 44) = v70;
      *(v48 + 52) = 2082;
      v71 = [v44 location];
      if (v71)
      {
        v72 = v71;
        v73 = [v71 timestamp];

        v74 = v199;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v75 = Date.debugDescription.getter();
        v77 = v76;
        v65(v74, v222);
      }

      else
      {
        v75 = 0;
        v77 = 0xE000000000000000;
      }

      v36 = &_mh_execute_header;
      v78 = sub_1000136BC(v75, v77, &v225);

      *(v48 + 54) = v78;
      *(v48 + 62) = 2049;
      v79 = [v44 location];
      v80 = -1.0;
      v81 = -1.0;
      if (v79)
      {
        v82 = v79;
        [v79 latitude];
        v81 = v83;
      }

      *(v48 + 64) = v81;
      *(v48 + 72) = 2049;
      v84 = [v44 location];
      if (v84)
      {
        v85 = v84;
        [v84 longitude];
        v80 = v86;
      }

      *(v48 + 74) = v80;
      *(v48 + 82) = 2050;
      v87 = [v44 location];
      if (v87)
      {
        v88 = v87;
        [v87 horizontalAccuracy];
        v90 = v89;
      }

      else
      {
        v90 = -1.0;
      }

      *(v48 + 84) = v90;
      _os_log_impl(&_mh_execute_header, v45, v46, "Updating Beacon %{private,mask.hash}s observation type: %{public}s, date: %{public}s. With location: %{public}s, timestamp: %{public}s, lat: %{private}f, lon: %{private}f, acc: %{public}f.", v48, 0x5Cu);
      swift_arrayDestroy();

      v30 = v210;
    }

    else
    {
    }

    v91 = [v44 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v92 = [v44 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v213 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v93 = swift_allocObject();
    *(v93 + 16) = v217;
    v94 = UUID.uuidString.getter();
    v95 = v30;
    v97 = v96;
    *(v93 + 56) = &type metadata for String;
    *(v93 + 64) = sub_100008C00();
    *(v93 + 32) = v94;
    *(v93 + 40) = v97;
    os_log(_:dso:log:_:_:)();

    v98 = v206;
    static SystemInfo.lockState.getter();
    v99 = v207;
    v100 = v208;
    (*v202)(v207, v203, v208);
    sub_100003E8C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v93) = dispatch thunk of static Equatable.== infix(_:_:)();
    v101 = *v201;
    (*v201)(v99, v100);
    v101(v98, v100);
    if (v93)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v227 = 0;
      v225 = 0u;
      v226 = 0u;
    }

    else
    {
      v102 = sub_100007F54();
      __chkstk_darwin(v102);
      v179 = v95;
      v103 = v223;
      sub_1000314D0(sub_1004E4EC0, v102, &v225);
      v223 = v103;
    }

    v30 = v95;
    v104 = *v220;
    (*v220)(v30, v221);
    v105 = *(&v226 + 1);
    sub_10000B3A8(&v225, &qword_101696920, &unk_10138B200);
    if (v105)
    {
      break;
    }

    v16 = v44;
    v9 = v215;
    v21 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v26))
    {
      v113 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      *&v225 = v215;
      *v113 = v190;
      *(v113 + 4) = 1752392040;
      *(v113 + 12) = 2081;
      v114 = [v16 beaconIdentifier];
      v115 = v214;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v116 = v36;
      v117 = v104;
      v118 = v221;
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v120;
      v117(v115, v118);
      v36 = v116;
      v121 = sub_1000136BC(v119, v9, &v225);

      *(v113 + 14) = v121;
      _os_log_impl(v116, v21, v26, "No beacon found to updateBeaconObservations %{private,mask.hash}s.", v113, 0x16u);
      sub_100007BAC(v215);
LABEL_52:
      v30 = v210;

      goto LABEL_5;
    }

LABEL_5:
    (*v216)(v224, v222);
    v31 = v204;
    v38 = v219;
LABEL_6:
    v39 = v218;
    v40 = v209;
LABEL_7:
    v35 = v38 + 1;
    if (v39 == v40)
    {
      return v182[2](v182, 0);
    }
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v106 = qword_10177B2E8;
  v107 = [v44 beaconIdentifier];
  v108 = v211;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v109 = *v198;
  (*v198)(&v108[*(v212 + 20)], v224, v222);
  v110 = [v44 type];
  v111 = v110;
  v197 = v109;
  if (v110 >= 4)
  {
    static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v122 = swift_allocObject();
    *(v122 + 16) = v217;
    *(v122 + 56) = &type metadata for Int;
    *(v122 + 64) = &protocol witness table for Int;
    *(v122 + 32) = v111;
    os_log(_:dso:log:_:_:)();

    v112 = 32;
  }

  else
  {
    v112 = v110 | 0x20;
  }

  v123 = v211;
  v211[*(v212 + 24)] = v112;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v124 = *(v196 + 72);
  v125 = (*(v196 + 80) + 32) & ~*(v196 + 80);
  v126 = swift_allocObject();
  *(v126 + 16) = v217;
  sub_100721C9C(v123, v126 + v125, type metadata accessor for BeaconObservation);
  v127 = type metadata accessor for Transaction();
  __chkstk_darwin(v127);
  *(&v181 - 4) = v106;
  *(&v181 - 3) = v126;
  v179 = 0;
  v180 = 0;
  v128 = v223;
  static Transaction.named<A>(_:with:)();

  sub_100721D04(v123, type metadata accessor for BeaconObservation);
  v129 = [v44 location];
  v223 = v128;
  if (!v129)
  {
    v16 = v44;
    v9 = v215;
    v21 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v21, v26))
    {

      (*v216)(v224, v222);
      v31 = v204;
      goto LABEL_60;
    }

    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *&v225 = v144;
    *v143 = v190;
    *(v143 + 4) = 1752392040;
    *(v143 + 12) = 2081;
    v145 = [v16 beaconIdentifier];
    v146 = v214;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v147 = v221;
    v148 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v149;
    v104(v146, v147);
    v150 = sub_1000136BC(v148, v9, &v225);

    *(v143 + 14) = v150;
    v36 = &_mh_execute_header;
    _os_log_impl(&_mh_execute_header, v21, v26, "No location in observation for beacon %{private,mask.hash}s. Update completed.", v143, 0x16u);
    sub_100007BAC(v144);
    goto LABEL_52;
  }

  v26 = v129;
  v130 = [v44 beaconIdentifier];
  v131 = v214;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v132 = v193;
  sub_100AA33AC(v131, v193);
  v104(v131, v221);
  if ((*v189)(v132, 1, v195) == 1)
  {
    sub_10000B3A8(v132, &unk_1016A9A20, &qword_10138B280);
    v16 = v44;
    v9 = v215;
    v21 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();

    v134 = os_log_type_enabled(v21, v133);
    v40 = v209;
    if (v134)
    {
      v135 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      *&v225 = v215;
      *v135 = v190;
      *(v135 + 4) = 1752392040;
      *(v135 + 12) = 2081;
      v136 = [v16 beaconIdentifier];
      v137 = v214;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v138 = v221;
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v140;
      v141 = v138;
      v40 = v209;
      v104(v137, v141);
      v142 = sub_1000136BC(v139, v9, &v225);

      *(v135 + 14) = v142;
      v36 = &_mh_execute_header;
      _os_log_impl(&_mh_execute_header, v21, v133, "Beacon %{private,mask.hash}s is not an owned beacon. Cannot update beacon observation.", v135, 0x16u);
      sub_100007BAC(v215);

      v30 = v210;

      (*v216)(v224, v222);
      v31 = v204;
      v39 = v218;
      v38 = v219;
    }

    else
    {

      (*v216)(v224, v222);
      v31 = v204;
      v39 = v218;
      v38 = v219;
      v36 = &_mh_execute_header;
    }

    goto LABEL_7;
  }

  v151 = v132;
  v152 = v191;
  sub_10002AB74(v151, v191, type metadata accessor for OwnedBeaconRecord);
  sub_100721C9C(v152, v192, type metadata accessor for OwnedBeaconRecord);
  v153 = [v44 type];
  v213 = v127;
  if ((v153 - 1) < 3)
  {
    v154 = v153 + 1;
    goto LABEL_59;
  }

  v155 = [objc_opt_self() sharedInstance];
  v156 = [v155 isInternalBuild];

  if (!v156)
  {
    v154 = 0;
LABEL_59:
    *(&v226 + 1) = v195;
    v227 = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
    v157 = sub_1000280DC(&v225);
    v158 = v192;
    sub_100721C9C(v192, v157, type metadata accessor for OwnedBeaconRecord);
    v21 = v186;
    v159 = v185;
    v160 = v185 + *(v186 + 20);
    UUID.init()();
    v161 = *(&v226 + 1);
    v162 = v227;
    sub_1000035D0(&v225, *(&v226 + 1));
    v163 = v159 + *(v21 + 24);
    (*(*(*(v162 + 8) + 8) + 32))(v161);
    [v26 latitude];
    v165 = v164;
    [v26 longitude];
    v167 = v166;
    [v26 horizontalAccuracy];
    v169 = v168;
    v170 = *(v21 + 40);
    v171 = [v26 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v172 = *(v21 + 48);
    v16 = v224;
    v173 = v222;
    v197(v159 + v172, v224, v222);
    v174 = (*v184)(v159 + v172, 0, 1, v173);
    *v159 = v183;
    *(v159 + *(v21 + 28)) = v165;
    *(v159 + *(v21 + 32)) = v167;
    *(v159 + *(v21 + 36)) = v169;
    *(v159 + *(v21 + 44)) = v154;
    *(v159 + *(v21 + 52)) = 0;
    __chkstk_darwin(v174);
    *(&v181 - 4) = v187;
    *(&v181 - 3) = v159;
    v179 = &v225;
    LOBYTE(v180) = v154;
    v9 = v213;
    v175 = v223;
    static Transaction.named<A>(_:with:)();
    v223 = v175;

    sub_100721D04(v158, type metadata accessor for OwnedBeaconRecord);
    sub_100721D04(v191, type metadata accessor for OwnedBeaconRecord);
    (*v216)(v16, v173);
    sub_100721D04(v159, type metadata accessor for BeaconEstimatedLocation);
    sub_100007BAC(&v225);
    v31 = v204;
    v30 = v210;
LABEL_60:
    v38 = v219;
    v36 = &_mh_execute_header;
    goto LABEL_6;
  }

  _Block_release(v182);
  LODWORD(v180) = 0;
  v179 = 3827;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10071569C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v32 = a1;
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v31 = type metadata accessor for OwnedBeaconRecord();
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v31);
  v12 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  _Block_copy(a3);
  if (qword_101694840 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177B060);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v10;
    *v18 = 134217984;
    *(v18 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "offlineAdvertisingKeys for reason: %ld", v18, 0xCu);
    v10 = v30;
  }

  sub_1003DB678(v8);
  if ((*(v9 + 48))(v8, 1, v31) == 1)
  {
    sub_10000B3A8(v8, &unk_1016A9A20, &qword_10138B280);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "offlineAdvertisingKeys requested with no localBeaconRecord", v21, 2u);
    }

    sub_100008BB8(0, &qword_1016A78A0, SPOfflineAdvertisingKeys_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    (a3)[2](a3, isa);
  }

  else
  {
    sub_10002AB74(v8, v14, type metadata accessor for OwnedBeaconRecord);
    v23 = *(*(a2 + 280) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v24 = v34;
    v25 = v9;
    v26 = swift_allocObject();
    swift_weakInit();
    sub_100721C9C(v14, v12, type metadata accessor for OwnedBeaconRecord);
    v27 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v28 = swift_allocObject();
    v28[2] = v26;
    v28[3] = sub_1007205A0;
    v28[4] = v33;
    sub_10002AB74(v12, v28 + v27, type metadata accessor for OwnedBeaconRecord);
    *(v28 + ((v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v29 = type metadata accessor for Transaction();
    __chkstk_darwin(v29);
    *(&v30 - 6) = v24;
    *(&v30 - 5) = v14;
    *(&v30 - 32) = 2;
    *(&v30 - 3) = sub_1007205CC;
    *(&v30 - 2) = v28;

    static Transaction.named<A>(_:with:)();

    sub_100721D04(v14, type metadata accessor for OwnedBeaconRecord);
  }
}

uint64_t sub_100715BF4()
{
  v1 = type metadata accessor for KeySyncMetadata();
  v0[11] = v1;
  v2 = *(v1 - 8);
  v0[12] = v2;
  v3 = *(v2 + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v4 = type metadata accessor for KeySyncMetadataDisplay();
  v0[15] = v4;
  v5 = *(v4 - 8);
  v0[16] = v5;
  v6 = *(v5 + 64) + 15;
  v0[17] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v0[18] = v7;
  v8 = *(v7 - 8);
  v0[19] = v8;
  v9 = *(v8 + 64) + 15;
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_100715DB0;

  return daemon.getter();
}

uint64_t sub_100715DB0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v12 = *v1;
  v3[23] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[24] = v6;
  v7 = type metadata accessor for Daemon();
  v3[25] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[26] = v9;
  v10 = sub_100003E8C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100715F90;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100715F90(uint64_t a1)
{
  v3 = *(*v2 + 192);
  v4 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100716F5C, 0, 0);
  }

  else
  {
    v5 = v4[23];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[29] = v7;
    *v7 = v4;
    v7[1] = sub_100716104;

    return daemon.getter();
  }
}

uint64_t sub_100716104(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = *v1;
  v3[30] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[31] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100003E8C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1007162B8;
  v10 = v3[26];
  v11 = v3[25];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1007162B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  if (v1)
  {
    v7 = sub_100717000;
    v8 = 0;
  }

  else
  {
    v9 = v4[30];

    v4[7] = _swiftEmptyArrayStorage;
    v7 = sub_1007163FC;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1007163FC()
{
  v1 = *(v0 + 256);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_1007164E8;
  v5 = *(v0 + 256);

  return unsafeBlocking<A>(context:_:)(v0 + 64, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v5, v4);
}

uint64_t sub_1007164E8()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_100716600, v2, 0);
}

void sub_100716624()
{
  v1 = v0[35];
  v2 = *(v1 + 16);
  v0[36] = v2;
  if (v2)
  {
    v0[37] = 0;
    if (*(v1 + 16))
    {
      v3 = v0[21];
      sub_10001F280(v1 + 32, (v0 + 2));
      v5 = v0[5];
      v4 = v0[6];
      sub_1000035D0(v0 + 2, v5);
      (*(*(*(v4 + 8) + 8) + 32))(v5);
      sub_100007BAC(v0 + 2);
      v6 = swift_task_alloc();
      v0[38] = v6;
      *v6 = v0;
      v6[1] = sub_1007167DC;
      v7 = v0[27];
      v8 = v0[21];

      sub_1010CE238(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = v0[32];
    v10 = v0[27];
    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[17];
    v15 = v0[13];
    v14 = v0[14];

    v16 = v0[7];

    v17 = v0[1];

    v17(v16);
  }
}

uint64_t sub_1007167DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v12 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
    v5 = v3[35];
    v6 = v3[21];
    v7 = v3[18];
    v8 = v3[19];

    (*(v8 + 8))(v6, v7);
    v9 = v3[7];

    v10 = sub_1007170B0;
  }

  else
  {
    (*(v3[19] + 8))(v3[21], v3[18]);
    v10 = sub_100716940;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100716940()
{
  v1 = v0[39];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v0[9] = _swiftEmptyArrayStorage;
    sub_101124FF4(0, v2, 0);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = v0[9];
    v62 = *(v3 + 72);
    while (1)
    {
      v68 = v4;
      v69 = v5;
      v6 = v0[19];
      v7 = v0[20];
      v8 = v0[18];
      v10 = v0[13];
      v9 = v0[14];
      v11 = v0[11];
      sub_100721C9C(v4, v9, type metadata accessor for KeySyncMetadata);
      sub_100721C9C(v9, v10, type metadata accessor for KeySyncMetadata);
      (*(v6 + 16))(v7, v10, v8);
      v12 = *(v10 + *(v11 + 20));
      v70 = v2;
      if (v12 <= 3)
      {
        if (*(v10 + *(v11 + 20)) <= 1u)
        {
          if (*(v10 + *(v11 + 20)))
          {
            v14 = 0xEA00000000007265;
            v15 = 0x4F7261656E2ELL;
          }

          else
          {
            v14 = 0xE800000000000000;
            v15 = 0x6F6E6B6E752ELL;
          }

          v66 = v14;
          v67 = v15 & 0xFFFFFFFFFFFFLL | 0x6E77000000000000;
          goto LABEL_22;
        }

        if (v12 == 2)
        {
          v67 = 0x6553686374616C2ELL;
          v13 = 0xEF64657461726170;
        }

        else
        {
          v67 = 0xD00000000000001CLL;
          v13 = 0x800000010134B930;
        }
      }

      else if (*(v10 + *(v11 + 20)) <= 5u)
      {
        if (v12 == 4)
        {
          v67 = 0xD000000000000018;
          v13 = 0x800000010134B910;
        }

        else
        {
          v67 = 0x697250646C69772ELL;
          v13 = 0xEC0000007972616DLL;
        }
      }

      else if (v12 == 6)
      {
        v67 = 0x636553646C69772ELL;
        v13 = 0xEE00797261646E6FLL;
      }

      else if (v12 == 7)
      {
        v67 = 0x736142746E69682ELL;
        v13 = 0xEA00000000006465;
      }

      else
      {
        v67 = 0x67696C4179656B2ELL;
        v13 = 0xED0000746E656D6ELL;
      }

      v66 = v13;
LABEL_22:
      v16 = v0[19];
      v17 = v0[17];
      v64 = v0[18];
      v65 = v0[20];
      v19 = v0[14];
      v18 = v0[15];
      v20 = v0[13];
      v21 = v0[11];
      v22 = (v20 + *(v21 + 24));
      v23 = v22[4];
      sub_1000035D0(v22, v22[3]);
      v24 = *(v23 + 56);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v63 = v0[10];
      v26 = v22[3];
      v25 = v22[4];
      sub_1000035D0(v22, v26);
      v27 = sub_10002BD40(v26, v25);
      if (v27)
      {
        v28 = 0x61646E6F6365732ELL;
      }

      else
      {
        v28 = 0x7972616D6972702ELL;
      }

      if (v27)
      {
        v29 = 0xEA00000000007972;
      }

      else
      {
        v29 = 0xE800000000000000;
      }

      sub_100721D04(v19, type metadata accessor for KeySyncMetadata);
      v30 = *(v21 + 28);
      v31 = v18[8];
      v32 = type metadata accessor for Date();
      (*(*(v32 - 8) + 16))(v17 + v31, v20 + v30, v32);
      (*(v16 + 32))(v17, v65, v64);
      v33 = (v17 + v18[5]);
      *v33 = v67;
      v33[1] = v66;
      *(v17 + v18[6]) = v63;
      v34 = (v17 + v18[7]);
      *v34 = v28;
      v34[1] = v29;
      sub_100721D04(v20, type metadata accessor for KeySyncMetadata);
      v5 = v69;
      v0[9] = v69;
      v36 = v69[2];
      v35 = v69[3];
      if (v36 >= v35 >> 1)
      {
        sub_101124FF4(v35 > 1, v36 + 1, 1);
        v5 = v0[9];
      }

      v38 = v0[16];
      v37 = v0[17];
      v5[2] = v36 + 1;
      sub_10002AB74(v37, v5 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36, type metadata accessor for KeySyncMetadataDisplay);
      v4 = v68 + v62;
      v2 = v70 - 1;
      if (v70 == 1)
      {
        v39 = v0[39];

        goto LABEL_33;
      }
    }
  }

  v40 = v0[39];

  v5 = _swiftEmptyArrayStorage;
LABEL_33:
  v41 = v0[36];
  v42 = v0[37] + 1;
  result = sub_10039A12C(v5);
  if (v42 == v41)
  {
    v44 = v0[35];
    v45 = v0[32];
    v46 = v0[27];
    v48 = v0[20];
    v47 = v0[21];
    v49 = v0[17];
    v51 = v0[13];
    v50 = v0[14];

    v52 = v0[7];

    v53 = v0[1];

    return v53(v52);
  }

  else
  {
    v54 = v0[37] + 1;
    v0[37] = v54;
    v55 = v0[35];
    if (v54 >= *(v55 + 16))
    {
      __break(1u);
    }

    else
    {
      v56 = v0[21];
      sub_10001F280(v55 + 40 * v54 + 32, (v0 + 2));
      v57 = v0[5];
      v58 = v0[6];
      sub_1000035D0(v0 + 2, v57);
      (*(*(*(v58 + 8) + 8) + 32))(v57);
      sub_100007BAC(v0 + 2);
      v59 = swift_task_alloc();
      v0[38] = v59;
      *v59 = v0;
      v59[1] = sub_1007167DC;
      v60 = v0[27];
      v61 = v0[21];

      return sub_1010CE238(v61);
    }
  }

  return result;
}

uint64_t sub_100716F5C()
{
  v1 = v0[23];

  v2 = v0[28];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100717000()
{
  v1 = v0[30];
  v2 = v0[27];

  v3 = v0[33];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1007170B0()
{
  v1 = v0[32];
  v2 = v0[27];

  v3 = v0[40];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100717160(uint64_t a1)
{
  v2 = type metadata accessor for StableIdentifier();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for OwnedBeaconRecord();
  sub_100721C9C(a1 + *(v6 + 24), v5, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v23 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v24 = *(v5 + v23[12] + 8);

    v25 = *(v5 + v23[16] + 8);

    v26 = (v5 + v23[20]);
    v28 = *v26;
    v27 = v26[1];
    v38 = v28;
    v39 = v27;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v17 = *(v5 + v16[12] + 8);

    v18 = *(v5 + v16[16] + 8);

    v19 = (v5 + v16[20]);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + v16[28] + 8);

    v38 = v20;
    v39 = v21;
LABEL_9:
    sub_1000DF96C();
    v29 = Data.init<A>(hexString:)();
    if (v30 >> 60 == 15)
    {
      v31 = type metadata accessor for UUID();
      (*(*(v31 - 8) + 8))(v5, v31);
      return 0;
    }

    v32 = v29;
    v33 = v30;
    v38 = v29;
    v39 = v30;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      v34 = 0;
    }

    else
    {
      v34 = Data.trimmed.getter();
    }

    sub_100006654(v32, v33);
    v36 = type metadata accessor for UUID();
    (*(*(v36 - 8) + 8))(v5, v36);
    return v34;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100721D04(v5, type metadata accessor for StableIdentifier);
    return 0;
  }

  v8 = v5[1];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];

  v38 = v10;
  v39 = v11;
  sub_1000DF96C();
  v12 = Data.init<A>(hexString:)();
  if (v13 >> 60 == 15)
  {
    return 0;
  }

  v14 = v12;
  v15 = v13;
  v38 = v12;
  v39 = v13;
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v14, v15);
    return 0;
  }

  v37 = Data.trimmed.getter();
  sub_100006654(v14, v15);
  return v37;
}

void sub_100717498(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_1006D54D0(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_100717544()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100717760(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v8 = *(a1 + 64);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  return v2(v7);
}

uint64_t sub_10071782C()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 168);
  return sub_1009EFD9C(v1);
}

void sub_100717854(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedDeviceKeyRecord() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for OwnedDeviceKeyRecord, &qword_1016A7810, &qword_1013B66C0, type metadata accessor for OwnedDeviceKeyRecord, sub_1009EFD9C, type metadata accessor for OwnedDeviceKeyRecord);
}

uint64_t sub_1007179D8()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 168);
  return sub_1009F0008(v1);
}

uint64_t sub_100717A2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v106 = a2;
  v107 = a1;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v99 = &v88 - v8;
  v9 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v95 = &v88 - v11;
  v102 = type metadata accessor for MACAddress();
  v98 = *(v102 - 8);
  v12 = *(v98 + 64);
  v13 = __chkstk_darwin(v102);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v14;
  __chkstk_darwin(v13);
  v104 = &v88 - v16;
  v101 = type metadata accessor for TimeBasedKey();
  v103 = *(v101 - 8);
  v17 = *(v103 + 64);
  __chkstk_darwin(v101);
  v97 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&unk_1016A99D0, &unk_1013BB9A0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v88 - v21);
  v23 = sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v100 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v105 = &v88 - v27;
  v28 = type metadata accessor for Date();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DateInterval();
  v96 = *(v32 - 8);
  v33 = *(v96 + 64);
  __chkstk_darwin(v32);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_allocObject();
  v37 = a3;
  *(v36 + 16) = a3;
  *(v36 + 24) = a4;
  v38 = v106[35];

  sub_100025020(v107, &v109);
  if (!v110)
  {
    sub_10000B3A8(&v109, &qword_101696920, &unk_10138B200);
    type metadata accessor for SPOwnerSessionError(0);
    *&v109 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v22 = v111[0];
    swift_storeEnumTagMultiPayload();
    sub_1007B7298(v22, v37, a4);
    sub_10000B3A8(v22, &unk_1016A99D0, &unk_1013BB9A0);
  }

  v93 = v19;
  v106 = v22;
  v89 = v15;
  v92 = v32;
  v39 = v99;
  v40 = v36;
  v90 = a4;
  sub_10000A748(&v109, v111);
  static Date.trustedNow.getter(v31);
  DateInterval.init(start:duration:)();
  v41 = v112;
  v42 = v113;
  v43 = sub_1000035D0(v111, v112);
  v107 = v35;
  v44 = sub_100B03A58(v43, v35, 0, 0, 0, v38, v41, v42);
  v91 = v40;
  if (v46 <= 1u)
  {
    v47 = v102;
    v48 = v37;
    v49 = v106;
    if (v46)
    {
      v50 = v39;
      v51 = v105;
      v52 = v107;
      if (!*(v44 + 16))
      {
        v46 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v50 = v39;
      v51 = v105;
      v52 = v107;
      if (!*(v44 + 16))
      {
        v46 = 0;
LABEL_12:
        v53 = 1;
        goto LABEL_13;
      }
    }

    v54 = v44;
    v55 = v45;
    v56 = v102;
    v57 = v46;
    sub_100721C9C(v44 + ((*(v103 + 80) + 32) & ~*(v103 + 80)), v51, type metadata accessor for TimeBasedKey);
    v46 = v57;
    v47 = v56;
    v45 = v55;
    v44 = v54;
    v53 = 0;
LABEL_13:
    sub_100359088(v44, v45, v46);
    goto LABEL_14;
  }

  v53 = 1;
  v50 = v39;
  v47 = v102;
  v51 = v105;
  v49 = v106;
  v48 = v37;
  v52 = v107;
  if (v46 == 2)
  {
    goto LABEL_13;
  }

LABEL_14:
  v58 = v103;
  v59 = v53;
  v60 = v101;
  (*(v103 + 56))(v51, v59, 1, v101);
  v61 = v100;
  sub_1000D2A70(v51, v100, &qword_10169BA30, &unk_101395620);
  if ((*(v58 + 48))(v61, 1, v60) == 1)
  {
    sub_10000B3A8(v61, &qword_10169BA30, &unk_101395620);
    type metadata accessor for SPOwnerSessionError(0);
    v108 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v49 = v109;
    swift_storeEnumTagMultiPayload();
    sub_1007B7298(v49, v48, v90);
    sub_10000B3A8(v49, &unk_1016A99D0, &unk_1013BB9A0);
    sub_10000B3A8(v51, &qword_10169BA30, &unk_101395620);
    (*(v96 + 8))(v52, v92);
    sub_100007BAC(v111);
  }

  v62 = v50;
  v63 = v97;
  sub_10002AB74(v61, v97, type metadata accessor for TimeBasedKey);
  v64 = PublicKey.advertisement.getter(*(v63 + *(v60 + 24) + 16), *(v63 + *(v60 + 24) + 24));
  sub_10002EA98(6, v64, v65, &v109);
  v66 = v109;
  sub_100017D5C(v109, *(&v109 + 1));
  v67 = v95;
  MACAddress.init(addressToSanitize:type:)();
  v68 = v98;
  if ((*(v98 + 48))(v67, 1, v47) != 1)
  {
    sub_100016590(v66, *(&v66 + 1));
    v106 = *(v68 + 32);
    (v106)(v104, v67, v47);
    v69 = v112;
    v70 = v113;
    sub_1000035D0(v111, v112);
    v71 = (*(v70 + 176))(v69, v70);
    v73 = 2;
    if (v72 >> 60 != 15)
    {
      v74 = v71;
      v75 = v72;
      v76 = sub_100DE68F4(v71, v72);
      sub_100006654(v74, v75);
      if (v76)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }
    }

    v77 = type metadata accessor for TaskPriority();
    (*(*(v77 - 8) + 56))(v62, 1, 1, v77);
    v78 = v98;
    v79 = v89;
    (*(v98 + 16))(v89, v104, v47);
    v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v81 = v80 + v94;
    v82 = v47;
    v83 = (v80 + v94) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    (v106)(v84 + v80, v79, v82);
    *(v84 + v81) = v73;
    v85 = v84 + v83;
    v86 = v91;
    *(v85 + 8) = sub_100720FB0;
    *(v85 + 16) = v86;

    sub_10025EDD4(0, 0, v62, &unk_1013B68D0, v84);

    (*(v78 + 8))(v104, v82);
    sub_10000B3A8(v105, &qword_10169BA30, &unk_101395620);
    (*(v96 + 8))(v107, v92);
    sub_100721D04(v97, type metadata accessor for TimeBasedKey);
    sub_100007BAC(v111);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007184D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v106 = a2;
  v107 = a1;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v99 = &v88 - v8;
  v9 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v95 = &v88 - v11;
  v102 = type metadata accessor for MACAddress();
  v98 = *(v102 - 8);
  v12 = *(v98 + 64);
  v13 = __chkstk_darwin(v102);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v14;
  __chkstk_darwin(v13);
  v104 = &v88 - v16;
  v101 = type metadata accessor for TimeBasedKey();
  v103 = *(v101 - 8);
  v17 = *(v103 + 64);
  __chkstk_darwin(v101);
  v97 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v88 - v21);
  v23 = sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v100 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v105 = &v88 - v27;
  v28 = type metadata accessor for Date();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DateInterval();
  v96 = *(v32 - 8);
  v33 = *(v96 + 64);
  __chkstk_darwin(v32);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_allocObject();
  v37 = a3;
  *(v36 + 16) = a3;
  *(v36 + 24) = a4;
  v38 = v106[35];

  sub_100025020(v107, &v109);
  if (!v110)
  {
    sub_10000B3A8(&v109, &qword_101696920, &unk_10138B200);
    type metadata accessor for SPOwnerSessionError(0);
    *&v109 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v22 = v111[0];
    swift_storeEnumTagMultiPayload();
    sub_1007B7490(v22, v37, a4);
    sub_10000B3A8(v22, &unk_1016A99C0, &unk_1013BB530);
  }

  v93 = v19;
  v106 = v22;
  v89 = v15;
  v92 = v32;
  v39 = v99;
  v40 = v36;
  v90 = a4;
  sub_10000A748(&v109, v111);
  static Date.trustedNow.getter(v31);
  DateInterval.init(start:duration:)();
  v41 = v112;
  v42 = v113;
  v43 = sub_1000035D0(v111, v112);
  v107 = v35;
  v44 = sub_100B03A58(v43, v35, 0, 0, 0, v38, v41, v42);
  v91 = v40;
  if (v46 <= 1u)
  {
    v47 = v102;
    v48 = v37;
    v49 = v106;
    if (v46)
    {
      v50 = v39;
      v51 = v105;
      v52 = v107;
      if (!*(v44 + 16))
      {
        v46 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v50 = v39;
      v51 = v105;
      v52 = v107;
      if (!*(v44 + 16))
      {
        v46 = 0;
LABEL_12:
        v53 = 1;
        goto LABEL_13;
      }
    }

    v54 = v44;
    v55 = v45;
    v56 = v102;
    v57 = v46;
    sub_100721C9C(v44 + ((*(v103 + 80) + 32) & ~*(v103 + 80)), v51, type metadata accessor for TimeBasedKey);
    v46 = v57;
    v47 = v56;
    v45 = v55;
    v44 = v54;
    v53 = 0;
LABEL_13:
    sub_100359088(v44, v45, v46);
    goto LABEL_14;
  }

  v53 = 1;
  v50 = v39;
  v47 = v102;
  v51 = v105;
  v49 = v106;
  v48 = v37;
  v52 = v107;
  if (v46 == 2)
  {
    goto LABEL_13;
  }

LABEL_14:
  v58 = v103;
  v59 = v53;
  v60 = v101;
  (*(v103 + 56))(v51, v59, 1, v101);
  v61 = v100;
  sub_1000D2A70(v51, v100, &qword_10169BA30, &unk_101395620);
  if ((*(v58 + 48))(v61, 1, v60) == 1)
  {
    sub_10000B3A8(v61, &qword_10169BA30, &unk_101395620);
    type metadata accessor for SPOwnerSessionError(0);
    v108 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v49 = v109;
    swift_storeEnumTagMultiPayload();
    sub_1007B7490(v49, v48, v90);
    sub_10000B3A8(v49, &unk_1016A99C0, &unk_1013BB530);
    sub_10000B3A8(v51, &qword_10169BA30, &unk_101395620);
    (*(v96 + 8))(v52, v92);
    sub_100007BAC(v111);
  }

  v62 = v50;
  v63 = v97;
  sub_10002AB74(v61, v97, type metadata accessor for TimeBasedKey);
  v64 = PublicKey.advertisement.getter(*(v63 + *(v60 + 24) + 16), *(v63 + *(v60 + 24) + 24));
  sub_10002EA98(6, v64, v65, &v109);
  v66 = v109;
  sub_100017D5C(v109, *(&v109 + 1));
  v67 = v95;
  MACAddress.init(addressToSanitize:type:)();
  v68 = v98;
  if ((*(v98 + 48))(v67, 1, v47) != 1)
  {
    sub_100016590(v66, *(&v66 + 1));
    v106 = *(v68 + 32);
    (v106)(v104, v67, v47);
    v69 = v112;
    v70 = v113;
    sub_1000035D0(v111, v112);
    v71 = (*(v70 + 176))(v69, v70);
    v73 = 2;
    if (v72 >> 60 != 15)
    {
      v74 = v71;
      v75 = v72;
      v76 = sub_100DE68F4(v71, v72);
      sub_100006654(v74, v75);
      if (v76)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }
    }

    v77 = type metadata accessor for TaskPriority();
    (*(*(v77 - 8) + 56))(v62, 1, 1, v77);
    v78 = v98;
    v79 = v89;
    (*(v98 + 16))(v89, v104, v47);
    v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v81 = v80 + v94;
    v82 = v47;
    v83 = (v80 + v94) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    (v106)(v84 + v80, v79, v82);
    *(v84 + v81) = v73;
    v85 = v84 + v83;
    v86 = v91;
    *(v85 + 8) = sub_100720E74;
    *(v85 + 16) = v86;

    sub_10025EDD4(0, 0, v62, &unk_1013B68C0, v84);

    (*(v78 + 8))(v104, v82);
    sub_10000B3A8(v105, &qword_10169BA30, &unk_101395620);
    (*(v96 + 8))(v107, v92);
    sub_100721D04(v97, type metadata accessor for TimeBasedKey);
    sub_100007BAC(v111);
  }

  __break(1u);
  return result;
}

uint64_t sub_100718F74(uint64_t a1)
{
  v1[31] = a1;
  v2 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v1[32] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconRecord();
  v1[34] = v4;
  v5 = *(v4 - 8);
  v1[35] = v5;
  v6 = *(v5 + 64) + 15;
  v1[36] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryCommand();
  v1[41] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0) - 8) + 64) + 15;
  v1[44] = swift_task_alloc();
  v11 = type metadata accessor for WildModeAssociationRecord(0);
  v1[45] = v11;
  v12 = *(v11 - 8);
  v1[46] = v12;
  v13 = *(v12 + 64) + 15;
  v1[47] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v1[48] = v14;
  v15 = *(v14 - 8);
  v1[49] = v15;
  v1[50] = *(v15 + 64);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_100719248, 0, 0);
}

uint64_t sub_100719248()
{
  v23 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[57];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[31];
  v5 = type metadata accessor for Logger();
  v0[58] = sub_1000076D4(v5, qword_10177B7F8);
  v6 = *(v3 + 16);
  v0[59] = v6;
  v0[60] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[57];
  v11 = v0[48];
  v12 = v0[49];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136315651;
    *(v13 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010135C820, &v22);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[61] = v17;
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[62] = v20;
  *v20 = v0;
  v20[1] = sub_100719518;

  return daemon.getter();
}

uint64_t sub_100719518(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 496);
  v12 = *v1;
  v3[63] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[64] = v6;
  v7 = type metadata accessor for Daemon();
  v3[65] = v7;
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[66] = v9;
  v10 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_1007196F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007196F8(uint64_t a1)
{
  v3 = *(*v2 + 512);
  v4 = *v2;
  v4[67] = a1;
  v4[68] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100721F00, 0, 0);
  }

  else
  {
    v5 = v4[63];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[69] = v7;
    *v7 = v4;
    v7[1] = sub_100719870;

    return daemon.getter();
  }
}

uint64_t sub_100719870(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 552);
  v5 = *v1;
  v3[70] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[71] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100003E8C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_100719A24;
  v10 = v3[66];
  v11 = v3[65];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100719A24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 568);
  v6 = *v2;
  v4[72] = a1;
  v4[73] = v1;

  if (v1)
  {
    v7 = sub_100721E44;
    v8 = 0;
  }

  else
  {
    v9 = v4[70];

    v7 = sub_100719B60;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100719B60()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 480);
  v3 = *(v0 + 448);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 384);
  (*(v0 + 472))(v3, *(v0 + 248), v6);
  v7 = *(v5 + 80);
  *(v0 + 244) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 592) = v9;
  *(v9 + 16) = v1;
  v10 = *(v5 + 32);
  *(v0 + 600) = v10;
  *(v0 + 608) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 616) = v12;
  *v12 = v0;
  v12[1] = sub_100719CD0;
  v13 = *(v0 + 352);
  v14 = *(v0 + 360);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4F60, v9, v14);
}

uint64_t sub_100719CD0()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;

  v5 = *(v2 + 592);
  if (v0)
  {

    v6 = sub_10071A0CC;
  }

  else
  {

    v6 = sub_100719E18;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100719E18()
{
  v32 = v0[59];
  v33 = v0[60];
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[31];
  (*(v0[46] + 56))(v6, 0, 1, v5);
  sub_10002AB74(v6, v4, type metadata accessor for WildModeAssociationRecord);
  (*(v3 + 56))(v7, 1, 1, v2);
  v32(v1, v9, v2);
  v10 = *(v4 + *(v5 + 52));
  sub_1000D2A70(v7, v8, &qword_1016980D0, &unk_10138F3B0);
  v11 = *(v3 + 48);
  if (v11(v8, 1, v2) == 1)
  {
    v12 = v0[54];
    v13 = v0[48];
    v15 = v0[39];
    v14 = v0[40];
    UUID.init()();
    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    if (v11(v15, 1, v13) != 1)
    {
      sub_10000B3A8(v0[39], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v16 = v0[76];
    v17 = v0[75];
    v18 = v0[54];
    v19 = v0[48];
    v20 = v0[39];
    sub_10000B3A8(v0[40], &qword_1016980D0, &unk_10138F3B0);
    v17(v18, v20, v19);
  }

  v21 = v0[76];
  v22 = v0[75];
  v23 = v0[55];
  v24 = v0[48];
  v25 = v0[43];
  v26 = v0[41];
  v22(v25, v0[54], v24);
  v22(v25 + v26[5], v23, v24);
  v27 = v25 + v26[6];
  *v27 = xmmword_1013B6610;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = xmmword_10139BF70;
  *(v25 + v26[7]) = v10 == 3;
  *(v25 + v26[8]) = 1;
  v28 = swift_task_alloc();
  v0[80] = v28;
  *v28 = v0;
  v28[1] = sub_10071AA50;
  v29 = v0[67];
  v30 = v0[43];

  return sub_10121B780((v0 + 20), v30, 3);
}

uint64_t sub_10071A0CC()
{
  v1 = v0[72];
  v2 = v0[44];
  (*(v0[46] + 56))(v2, 1, 1, v0[45]);
  sub_10000B3A8(v2, &unk_1016C7C90, &qword_1013BB4B0);

  return _swift_task_switch(sub_10071A16C, v1, 0);
}

uint64_t sub_10071A16C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 576);
  v4 = *(v0 + 480);
  v5 = *(v0 + 448);
  v6 = *(v0 + 400);
  v7 = *(v0 + 384);
  v8 = (*(v0 + 244) + 24) & ~*(v0 + 244);
  (*(v0 + 472))(v5, *(v0 + 248), v7);
  v9 = swift_allocObject();
  *(v0 + 624) = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 632) = v11;
  *v11 = v0;
  v11[1] = sub_10071A2C0;
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100721F04, v9, v13);
}

uint64_t sub_10071A2C0()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v4 = *v0;

  return _swift_task_switch(sub_10071A3D8, 0, 0);
}

uint64_t sub_10071A3D8()
{
  v78 = v0;
  v1 = v0[33];
  v2 = (*(v0[35] + 48))(v1, 1, v0[34]);
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[48];
  if (v2 == 1)
  {
    v6 = v0[58];
    v7 = v0[51];
    v8 = v0[31];
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v4(v7, v8, v5);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[61];
    v13 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    if (v11)
    {
      v16 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v16 = 136315651;
      *(v16 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010135C820, v77);
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v12(v13, v15);
      v20 = sub_1000136BC(v17, v19, v77);

      *(v16 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s No beacon matching %{private,mask.hash}s!", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v12(v13, v15);
    }

    v41 = v0[72];
    v42 = v0[67];
    type metadata accessor for OwnerCommandService.Error(0);
    sub_100003E8C(&qword_1016A7818, type metadata accessor for OwnerCommandService.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v44 = v0[56];
    v43 = v0[57];
    v46 = v0[54];
    v45 = v0[55];
    v48 = v0[52];
    v47 = v0[53];
    v49 = v0[51];
    v50 = v0[47];
    v52 = v0[43];
    v51 = v0[44];
    v70 = v0[42];
    v71 = v0[40];
    v72 = v0[39];
    v73 = v0[38];
    v74 = v0[37];
    v75 = v0[36];
    v76 = v0[33];

    v53 = v0[1];

    return v53();
  }

  else
  {
    v21 = v0[53];
    v22 = v0[49];
    v23 = v0[38];
    v24 = v0[31];
    sub_10002AB74(v1, v0[36], type metadata accessor for OwnedBeaconRecord);
    v25 = 1;
    (*(v22 + 56))(v23, 1, 1, v5);
    v4(v21, v24, v5);
    v26 = sub_100D60CD0();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    if (v27 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v29 != v30)
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v32 = v0[48];
    v33 = v0[49];
    v35 = v0[37];
    v34 = v0[38];

    sub_1000D2A70(v34, v35, &qword_1016980D0, &unk_10138F3B0);
    v36 = *(v33 + 48);
    if (v36(v35, 1, v32) == 1)
    {
      v37 = v0[52];
      v38 = v0[48];
      v40 = v0[37];
      v39 = v0[38];
      UUID.init()();
      sub_10000B3A8(v39, &qword_1016980D0, &unk_10138F3B0);
      if (v36(v40, 1, v38) != 1)
      {
        sub_10000B3A8(v0[37], &qword_1016980D0, &unk_10138F3B0);
      }
    }

    else
    {
      v55 = v0[76];
      v56 = v0[75];
      v57 = v0[52];
      v58 = v0[48];
      v59 = v0[37];
      sub_10000B3A8(v0[38], &qword_1016980D0, &unk_10138F3B0);
      v56(v57, v59, v58);
    }

    v60 = v0[76];
    v61 = v0[75];
    v62 = v0[53];
    v63 = v0[48];
    v65 = v0[41];
    v64 = v0[42];
    v61(v64, v0[52], v63);
    v61(v64 + v65[5], v62, v63);
    v66 = v64 + v65[6];
    *v66 = xmmword_1013B6610;
    *(v66 + 16) = 0;
    *(v66 + 24) = 0;
    *(v66 + 32) = xmmword_10139BF70;
    *(v64 + v65[7]) = v25 & 1;
    *(v64 + v65[8]) = 1;
    v67 = swift_task_alloc();
    v0[82] = v67;
    *v67 = v0;
    v67[1] = sub_10071AFFC;
    v68 = v0[67];
    v69 = v0[42];

    return sub_10121B780((v0 + 8), v69, 2);
  }
}

uint64_t sub_10071AA50()
{
  v2 = *(*v1 + 640);
  v5 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_100721E94;
  }

  else
  {
    v3 = sub_10071AB64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10071AB64()
{
  v54 = v0;
  v1 = *(v0 + 376);
  sub_100721D04(*(v0 + 344), type metadata accessor for AccessoryCommand);
  sub_100721D04(v1, type metadata accessor for WildModeAssociationRecord);
  v2 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 192);
  sub_1000D2A70(v0 + 16, v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  if (!*(v0 + 136))
  {
    sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
    goto LABEL_6;
  }

  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
LABEL_6:
    v6 = *(v0 + 464);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v53 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010135C820, &v53);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Invalid primaryKeyResponse!", v9, 0xCu);
      sub_100007BAC(v10);
    }

    v11 = *(v0 + 576);
    v12 = *(v0 + 536);
    sub_1003FD838();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();

    sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v15 = *(v0 + 448);
    v14 = *(v0 + 456);
    v17 = *(v0 + 432);
    v16 = *(v0 + 440);
    v19 = *(v0 + 416);
    v18 = *(v0 + 424);
    v20 = *(v0 + 408);
    v21 = *(v0 + 376);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v38 = *(v0 + 336);
    v40 = *(v0 + 320);
    v42 = *(v0 + 312);
    v44 = *(v0 + 304);
    v46 = *(v0 + 296);
    v48 = *(v0 + 288);
    v50 = *(v0 + 264);

    v24 = *(v0 + 8);

    return v24();
  }

  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 232);
  if ((v5 >> 60) & 3 | (4 * *(v0 + 240)))
  {
    sub_10071E1B8(*(v0 + 208), *(v0 + 216), *(v0 + 224), v5, *(v0 + 240));
    goto LABEL_6;
  }

  v26 = *(v0 + 576);
  v27 = *(v0 + 536);
  v29 = *(v0 + 448);
  v28 = *(v0 + 456);
  v31 = *(v0 + 432);
  v30 = *(v0 + 440);
  v32 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 376);
  v37 = *(v0 + 352);
  v39 = *(v0 + 344);
  v41 = *(v0 + 336);
  v43 = *(v0 + 320);
  v45 = *(v0 + 312);
  v47 = *(v0 + 304);
  v49 = *(v0 + 296);
  v51 = *(v0 + 288);
  v52 = *(v0 + 264);
  sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

  v33 = *(v0 + 8);

  return v33(v4, v3);
}

uint64_t sub_10071AFFC()
{
  v2 = *(*v1 + 656);
  v5 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = sub_100721E6C;
  }

  else
  {
    v3 = sub_10071B110;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10071B110()
{
  v54 = v0;
  v1 = *(v0 + 288);
  sub_100721D04(*(v0 + 336), type metadata accessor for AccessoryCommand);
  sub_100721D04(v1, type metadata accessor for OwnedBeaconRecord);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 96);
  sub_1000D2A70(v0 + 16, v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  if (!*(v0 + 136))
  {
    sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
    goto LABEL_6;
  }

  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
LABEL_6:
    v6 = *(v0 + 464);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v53 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010135C820, &v53);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Invalid primaryKeyResponse!", v9, 0xCu);
      sub_100007BAC(v10);
    }

    v11 = *(v0 + 576);
    v12 = *(v0 + 536);
    sub_1003FD838();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();

    sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v15 = *(v0 + 448);
    v14 = *(v0 + 456);
    v17 = *(v0 + 432);
    v16 = *(v0 + 440);
    v19 = *(v0 + 416);
    v18 = *(v0 + 424);
    v20 = *(v0 + 408);
    v21 = *(v0 + 376);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v38 = *(v0 + 336);
    v40 = *(v0 + 320);
    v42 = *(v0 + 312);
    v44 = *(v0 + 304);
    v46 = *(v0 + 296);
    v48 = *(v0 + 288);
    v50 = *(v0 + 264);

    v24 = *(v0 + 8);

    return v24();
  }

  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 232);
  if ((v5 >> 60) & 3 | (4 * *(v0 + 240)))
  {
    sub_10071E1B8(*(v0 + 208), *(v0 + 216), *(v0 + 224), v5, *(v0 + 240));
    goto LABEL_6;
  }

  v26 = *(v0 + 576);
  v27 = *(v0 + 536);
  v29 = *(v0 + 448);
  v28 = *(v0 + 456);
  v31 = *(v0 + 432);
  v30 = *(v0 + 440);
  v32 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 376);
  v37 = *(v0 + 352);
  v39 = *(v0 + 344);
  v41 = *(v0 + 336);
  v43 = *(v0 + 320);
  v45 = *(v0 + 312);
  v47 = *(v0 + 304);
  v49 = *(v0 + 296);
  v51 = *(v0 + 288);
  v52 = *(v0 + 264);
  sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

  v33 = *(v0 + 8);

  return v33(v4, v3);
}

uint64_t sub_10071B5A8(uint64_t a1)
{
  v1[31] = a1;
  v2 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v1[32] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconRecord();
  v1[34] = v4;
  v5 = *(v4 - 8);
  v1[35] = v5;
  v6 = *(v5 + 64) + 15;
  v1[36] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryCommand();
  v1[41] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0) - 8) + 64) + 15;
  v1[44] = swift_task_alloc();
  v11 = type metadata accessor for WildModeAssociationRecord(0);
  v1[45] = v11;
  v12 = *(v11 - 8);
  v1[46] = v12;
  v13 = *(v12 + 64) + 15;
  v1[47] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v1[48] = v14;
  v15 = *(v14 - 8);
  v1[49] = v15;
  v1[50] = *(v15 + 64);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_10071B87C, 0, 0);
}

uint64_t sub_10071B87C()
{
  v23 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[57];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[31];
  v5 = type metadata accessor for Logger();
  v0[58] = sub_1000076D4(v5, qword_10177B7F8);
  v6 = *(v3 + 16);
  v0[59] = v6;
  v0[60] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[57];
  v11 = v0[48];
  v12 = v0[49];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136315651;
    *(v13 + 4) = sub_1000136BC(0xD000000000000020, 0x800000010135C7F0, &v22);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[61] = v17;
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[62] = v20;
  *v20 = v0;
  v20[1] = sub_10071BB4C;

  return daemon.getter();
}

uint64_t sub_10071BB4C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 496);
  v12 = *v1;
  v3[63] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[64] = v6;
  v7 = type metadata accessor for Daemon();
  v3[65] = v7;
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[66] = v9;
  v10 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_10071BD2C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10071BD2C(uint64_t a1)
{
  v3 = *(*v2 + 512);
  v4 = *v2;
  v4[67] = a1;
  v4[68] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10071DBCC, 0, 0);
  }

  else
  {
    v5 = v4[63];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[69] = v7;
    *v7 = v4;
    v7[1] = sub_10071BEA4;

    return daemon.getter();
  }
}

uint64_t sub_10071BEA4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 552);
  v5 = *v1;
  v3[70] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[71] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100003E8C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_10071C058;
  v10 = v3[66];
  v11 = v3[65];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10071C058(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 568);
  v6 = *v2;
  v4[72] = a1;
  v4[73] = v1;

  if (v1)
  {
    v7 = sub_10071DD18;
    v8 = 0;
  }

  else
  {
    v9 = v4[70];

    v7 = sub_10071C194;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10071C194()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 480);
  v3 = *(v0 + 448);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 384);
  (*(v0 + 472))(v3, *(v0 + 248), v6);
  v7 = *(v5 + 80);
  *(v0 + 244) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 592) = v9;
  *(v9 + 16) = v1;
  v10 = *(v5 + 32);
  *(v0 + 600) = v10;
  *(v0 + 608) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 616) = v12;
  *v12 = v0;
  v12[1] = sub_10071C304;
  v13 = *(v0 + 352);
  v14 = *(v0 + 360);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1004E36F8, v9, v14);
}

uint64_t sub_10071C304()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;

  v5 = *(v2 + 592);
  if (v0)
  {

    v6 = sub_10071C700;
  }

  else
  {

    v6 = sub_10071C44C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10071C44C()
{
  v32 = v0[59];
  v33 = v0[60];
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[31];
  (*(v0[46] + 56))(v6, 0, 1, v5);
  sub_10002AB74(v6, v4, type metadata accessor for WildModeAssociationRecord);
  (*(v3 + 56))(v7, 1, 1, v2);
  v32(v1, v9, v2);
  v10 = *(v4 + *(v5 + 52));
  sub_1000D2A70(v7, v8, &qword_1016980D0, &unk_10138F3B0);
  v11 = *(v3 + 48);
  if (v11(v8, 1, v2) == 1)
  {
    v12 = v0[54];
    v13 = v0[48];
    v15 = v0[39];
    v14 = v0[40];
    UUID.init()();
    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    if (v11(v15, 1, v13) != 1)
    {
      sub_10000B3A8(v0[39], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v16 = v0[76];
    v17 = v0[75];
    v18 = v0[54];
    v19 = v0[48];
    v20 = v0[39];
    sub_10000B3A8(v0[40], &qword_1016980D0, &unk_10138F3B0);
    v17(v18, v20, v19);
  }

  v21 = v0[76];
  v22 = v0[75];
  v23 = v0[55];
  v24 = v0[48];
  v25 = v0[43];
  v26 = v0[41];
  v22(v25, v0[54], v24);
  v22(v25 + v26[5], v23, v24);
  v27 = v25 + v26[6];
  *v27 = xmmword_1013B6620;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = xmmword_10139BF70;
  *(v25 + v26[7]) = v10 == 3;
  *(v25 + v26[8]) = 1;
  v28 = swift_task_alloc();
  v0[80] = v28;
  *v28 = v0;
  v28[1] = sub_10071D084;
  v29 = v0[67];
  v30 = v0[43];

  return sub_10121B780((v0 + 20), v30, 3);
}

uint64_t sub_10071C700()
{
  v1 = v0[72];
  v2 = v0[44];
  (*(v0[46] + 56))(v2, 1, 1, v0[45]);
  sub_10000B3A8(v2, &unk_1016C7C90, &qword_1013BB4B0);

  return _swift_task_switch(sub_10071C7A0, v1, 0);
}

uint64_t sub_10071C7A0()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 576);
  v4 = *(v0 + 480);
  v5 = *(v0 + 448);
  v6 = *(v0 + 400);
  v7 = *(v0 + 384);
  v8 = (*(v0 + 244) + 24) & ~*(v0 + 244);
  (*(v0 + 472))(v5, *(v0 + 248), v7);
  v9 = swift_allocObject();
  *(v0 + 624) = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 632) = v11;
  *v11 = v0;
  v11[1] = sub_10071C8F4;
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_10071E1A0, v9, v13);
}

uint64_t sub_10071C8F4()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v4 = *v0;

  return _swift_task_switch(sub_10071CA0C, 0, 0);
}

uint64_t sub_10071CA0C()
{
  v78 = v0;
  v1 = v0[33];
  v2 = (*(v0[35] + 48))(v1, 1, v0[34]);
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[48];
  if (v2 == 1)
  {
    v6 = v0[58];
    v7 = v0[51];
    v8 = v0[31];
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v4(v7, v8, v5);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[61];
    v13 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    if (v11)
    {
      v16 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v16 = 136315651;
      *(v16 + 4) = sub_1000136BC(0xD000000000000020, 0x800000010135C7F0, v77);
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v12(v13, v15);
      v20 = sub_1000136BC(v17, v19, v77);

      *(v16 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s No beacon matching %{private,mask.hash}s!", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v12(v13, v15);
    }

    v41 = v0[72];
    v42 = v0[67];
    type metadata accessor for OwnerCommandService.Error(0);
    sub_100003E8C(&qword_1016A7818, type metadata accessor for OwnerCommandService.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v44 = v0[56];
    v43 = v0[57];
    v46 = v0[54];
    v45 = v0[55];
    v48 = v0[52];
    v47 = v0[53];
    v49 = v0[51];
    v50 = v0[47];
    v52 = v0[43];
    v51 = v0[44];
    v70 = v0[42];
    v71 = v0[40];
    v72 = v0[39];
    v73 = v0[38];
    v74 = v0[37];
    v75 = v0[36];
    v76 = v0[33];

    v53 = v0[1];

    return v53();
  }

  else
  {
    v21 = v0[53];
    v22 = v0[49];
    v23 = v0[38];
    v24 = v0[31];
    sub_10002AB74(v1, v0[36], type metadata accessor for OwnedBeaconRecord);
    v25 = 1;
    (*(v22 + 56))(v23, 1, 1, v5);
    v4(v21, v24, v5);
    v26 = sub_100D60CD0();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    if (v27 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v29 != v30)
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v32 = v0[48];
    v33 = v0[49];
    v35 = v0[37];
    v34 = v0[38];

    sub_1000D2A70(v34, v35, &qword_1016980D0, &unk_10138F3B0);
    v36 = *(v33 + 48);
    if (v36(v35, 1, v32) == 1)
    {
      v37 = v0[52];
      v38 = v0[48];
      v40 = v0[37];
      v39 = v0[38];
      UUID.init()();
      sub_10000B3A8(v39, &qword_1016980D0, &unk_10138F3B0);
      if (v36(v40, 1, v38) != 1)
      {
        sub_10000B3A8(v0[37], &qword_1016980D0, &unk_10138F3B0);
      }
    }

    else
    {
      v55 = v0[76];
      v56 = v0[75];
      v57 = v0[52];
      v58 = v0[48];
      v59 = v0[37];
      sub_10000B3A8(v0[38], &qword_1016980D0, &unk_10138F3B0);
      v56(v57, v59, v58);
    }

    v60 = v0[76];
    v61 = v0[75];
    v62 = v0[53];
    v63 = v0[48];
    v65 = v0[41];
    v64 = v0[42];
    v61(v64, v0[52], v63);
    v61(v64 + v65[5], v62, v63);
    v66 = v64 + v65[6];
    *v66 = xmmword_1013B6620;
    *(v66 + 16) = 0;
    *(v66 + 24) = 0;
    *(v66 + 32) = xmmword_10139BF70;
    *(v64 + v65[7]) = v25 & 1;
    *(v64 + v65[8]) = 1;
    v67 = swift_task_alloc();
    v0[82] = v67;
    *v67 = v0;
    v67[1] = sub_10071D628;
    v68 = v0[67];
    v69 = v0[42];

    return sub_10121B780((v0 + 8), v69, 2);
  }
}

uint64_t sub_10071D084()
{
  v2 = *(*v1 + 640);
  v5 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_10071DE70;
  }

  else
  {
    v3 = sub_10071D198;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10071D198()
{
  v54 = v0;
  v1 = *(v0 + 376);
  sub_100721D04(*(v0 + 344), type metadata accessor for AccessoryCommand);
  sub_100721D04(v1, type metadata accessor for WildModeAssociationRecord);
  v2 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 192);
  sub_1000D2A70(v0 + 16, v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  if (*(v0 + 136))
  {
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 232);
      if (((v3 >> 60) & 3 | (4 * *(v0 + 240))) == 1)
      {
        v4 = *(v0 + 576);
        v5 = *(v0 + 536);
        v7 = *(v0 + 448);
        v6 = *(v0 + 456);
        v9 = *(v0 + 432);
        v8 = *(v0 + 440);
        v10 = *(v0 + 416);
        v11 = *(v0 + 424);
        v12 = *(v0 + 408);
        v34 = *(v0 + 376);
        v35 = *(v0 + 352);
        v36 = *(v0 + 344);
        v37 = *(v0 + 336);
        v38 = *(v0 + 320);
        v40 = *(v0 + 312);
        v42 = *(v0 + 304);
        v44 = *(v0 + 296);
        v46 = *(v0 + 288);
        v48 = *(v0 + 264);
        v50 = *(v0 + 208);
        v52 = *(v0 + 216);
        sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

        v13 = *(v0 + 8);

        return v13(v50, v52);
      }

      sub_10071E1B8(*(v0 + 208), *(v0 + 216), *(v0 + 224), v3, *(v0 + 240));
    }
  }

  else
  {
    sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  }

  v15 = *(v0 + 464);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v53 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000136BC(0xD000000000000020, 0x800000010135C7F0, &v53);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Invalid iCloudResponse!", v18, 0xCu);
    sub_100007BAC(v19);
  }

  v20 = *(v0 + 576);
  v21 = *(v0 + 536);
  sub_1003FD838();
  swift_allocError();
  *v22 = 3;
  swift_willThrow();

  sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);
  v24 = *(v0 + 448);
  v23 = *(v0 + 456);
  v26 = *(v0 + 432);
  v25 = *(v0 + 440);
  v28 = *(v0 + 416);
  v27 = *(v0 + 424);
  v29 = *(v0 + 408);
  v30 = *(v0 + 376);
  v32 = *(v0 + 344);
  v31 = *(v0 + 352);
  v39 = *(v0 + 336);
  v41 = *(v0 + 320);
  v43 = *(v0 + 312);
  v45 = *(v0 + 304);
  v47 = *(v0 + 296);
  v49 = *(v0 + 288);
  v51 = *(v0 + 264);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10071D628()
{
  v2 = *(*v1 + 656);
  v5 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = sub_10071E008;
  }

  else
  {
    v3 = sub_10071D73C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10071D73C()
{
  v54 = v0;
  v1 = *(v0 + 288);
  sub_100721D04(*(v0 + 336), type metadata accessor for AccessoryCommand);
  sub_100721D04(v1, type metadata accessor for OwnedBeaconRecord);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 96);
  sub_1000D2A70(v0 + 16, v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  if (*(v0 + 136))
  {
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 232);
      if (((v3 >> 60) & 3 | (4 * *(v0 + 240))) == 1)
      {
        v4 = *(v0 + 576);
        v5 = *(v0 + 536);
        v7 = *(v0 + 448);
        v6 = *(v0 + 456);
        v9 = *(v0 + 432);
        v8 = *(v0 + 440);
        v10 = *(v0 + 416);
        v11 = *(v0 + 424);
        v12 = *(v0 + 408);
        v34 = *(v0 + 376);
        v35 = *(v0 + 352);
        v36 = *(v0 + 344);
        v37 = *(v0 + 336);
        v38 = *(v0 + 320);
        v40 = *(v0 + 312);
        v42 = *(v0 + 304);
        v44 = *(v0 + 296);
        v46 = *(v0 + 288);
        v48 = *(v0 + 264);
        v50 = *(v0 + 208);
        v52 = *(v0 + 216);
        sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

        v13 = *(v0 + 8);

        return v13(v50, v52);
      }

      sub_10071E1B8(*(v0 + 208), *(v0 + 216), *(v0 + 224), v3, *(v0 + 240));
    }
  }

  else
  {
    sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  }

  v15 = *(v0 + 464);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v53 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000136BC(0xD000000000000020, 0x800000010135C7F0, &v53);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Invalid iCloudResponse!", v18, 0xCu);
    sub_100007BAC(v19);
  }

  v20 = *(v0 + 576);
  v21 = *(v0 + 536);
  sub_1003FD838();
  swift_allocError();
  *v22 = 3;
  swift_willThrow();

  sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);
  v24 = *(v0 + 448);
  v23 = *(v0 + 456);
  v26 = *(v0 + 432);
  v25 = *(v0 + 440);
  v28 = *(v0 + 416);
  v27 = *(v0 + 424);
  v29 = *(v0 + 408);
  v30 = *(v0 + 376);
  v32 = *(v0 + 344);
  v31 = *(v0 + 352);
  v39 = *(v0 + 336);
  v41 = *(v0 + 320);
  v43 = *(v0 + 312);
  v45 = *(v0 + 304);
  v47 = *(v0 + 296);
  v49 = *(v0 + 288);
  v51 = *(v0 + 264);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10071DBCC()
{
  v1 = v0[63];

  v21 = v0[68];
  v3 = v0[56];
  v2 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v7 = v0[52];
  v6 = v0[53];
  v8 = v0[51];
  v9 = v0[47];
  v11 = v0[43];
  v10 = v0[44];
  v14 = v0[42];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[36];
  v20 = v0[33];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10071DD18()
{
  v1 = v0[70];
  v2 = v0[67];

  v22 = v0[73];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v8 = v0[52];
  v7 = v0[53];
  v9 = v0[51];
  v10 = v0[47];
  v12 = v0[43];
  v11 = v0[44];
  v15 = v0[42];
  v16 = v0[40];
  v17 = v0[39];
  v18 = v0[38];
  v19 = v0[37];
  v20 = v0[36];
  v21 = v0[33];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10071DE70()
{
  v1 = v0[72];
  v2 = v0[67];
  v3 = v0[47];
  v4 = v0[43];

  sub_100721D04(v4, type metadata accessor for AccessoryCommand);
  sub_100721D04(v3, type metadata accessor for WildModeAssociationRecord);
  v24 = v0[81];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[52];
  v9 = v0[53];
  v11 = v0[51];
  v12 = v0[47];
  v14 = v0[43];
  v13 = v0[44];
  v17 = v0[42];
  v18 = v0[40];
  v19 = v0[39];
  v20 = v0[38];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[33];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10071E008()
{
  v1 = v0[72];
  v2 = v0[67];
  v3 = v0[42];
  v4 = v0[36];

  sub_100721D04(v3, type metadata accessor for AccessoryCommand);
  sub_100721D04(v4, type metadata accessor for OwnedBeaconRecord);
  v24 = v0[83];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[52];
  v9 = v0[53];
  v11 = v0[51];
  v12 = v0[47];
  v14 = v0[43];
  v13 = v0[44];
  v17 = v0[42];
  v18 = v0[40];
  v19 = v0[39];
  v20 = v0[38];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[33];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10071E1B8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = (a4 >> 60) & 3 | (4 * a5);
  if (v6 <= 2)
  {
    goto LABEL_12;
  }

  if (((a4 >> 60) & 3 | (4 * a5)) <= 5u)
  {
    if (v6 == 3)
    {
      sub_100016590(result, a2);
      a2 = a4 & 0xCFFFFFFFFFFFFFFFLL;
      result = a3;

      return sub_100016590(result, a2);
    }

    if (v6 != 4)
    {
      return result;
    }

LABEL_12:

    return sub_100016590(result, a2);
  }

  if (v6 == 6)
  {
    goto LABEL_12;
  }

  if (v6 == 7)
  {
  }

  return result;
}

uint64_t sub_10071E2F0()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 168);
  return sub_1009F0E90(v1);
}

void sub_10071E318(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareRecord() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for ShareRecord, &unk_1016B1650, &unk_1013B1110, type metadata accessor for ShareRecord, sub_1009F0E90, type metadata accessor for ShareRecord);
}

uint64_t sub_10071E468(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_10071E498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0xF000000000000000);
}

uint64_t sub_10071E4C8()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v0 + 16);
  v10 = *(v0 + v3);
  v11 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_1006C8A94(v9, v0 + v2, v10, v0 + v5, v0 + v8, v12, v13);
}

uint64_t sub_10071E654(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Date() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v1 + v9);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = (v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = *v15;
  v16 = v15[1];
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100014744;

  return sub_1006C9B18(a1, v13, v14, v1 + v5, v1 + v8, v12, v1 + v11, v17);
}

uint64_t sub_10071E860(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for ShareRecord();
  *(a1 + *(result + 44)) = v3;
  return result;
}

uint64_t sub_10071E894(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ShareRecord() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1006CA104(a1, v7, v1 + v4, v8);
}

uint64_t sub_10071EA4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_1006C3530(a1, v4, (v1 + 24));
}

uint64_t sub_10071EAF8(uint64_t a1)
{
  v3 = *(v1 + 16);

  sub_100007BAC((v1 + 24));

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_10071EB9C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001E61D8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10071EBB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_1006C2E40(a1);
}

uint64_t sub_10071EC60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_1006C2E20(a1);
}

uint64_t sub_10071ED28(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_1006C2718(a1, v1 + 16, v4);
}

uint64_t sub_10071EDD4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10069D2C0(v3, v2);
}

uint64_t sub_10071EE70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AD30EC(a1, v4, v1 + 24);
}

uint64_t sub_10071EF1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100AD30EC(a1, v4, v1 + 24);
}

uint64_t sub_10071EFC8()
{
  v1 = *(type metadata accessor for DateInterval() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1006B3094(v3, v4, v0 + v2, v6, v7);
}

uint64_t sub_10071F074()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1006B064C(v2);
}

void sub_10071F1A4(uint64_t a1)
{
  v3 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 40);

  sub_1006CEAE0(a1, v5, v1 + v4, v6, v7);
}

uint64_t sub_10071F268(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = *(v1 + v7);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_1006CABFC(a1, v10, v11, v12, v13, v1 + v6, v14, v1 + v9);
}

uint64_t sub_10071F3E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1006CB9C0(v2, v3);
}

uint64_t sub_10071F500(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1006C4188(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_10071F5A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10071F5CC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_100AC1364(a1, v5, v1 + v4, v7);
}

void sub_10071F6F0(void **a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BeaconNamingRecord() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *a1;

  sub_1006E9A14(v9, a2, v7, v2 + v6, v8);
}

uint64_t sub_10071F7C0(void (*a1)(void))
{
  v3 = type metadata accessor for OwnedBeaconRecord();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 24) & ~v4;
  v38 = *(*(v3 - 1) + 64);
  a1(*(v1 + 16));
  v6 = v1 + v5;
  sub_100016590(*(v1 + v5), *(v1 + v5 + 8));
  v7 = v3[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v1 + v5 + v7, v8);
  v11 = (v1 + v5 + v3[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v13 = v11[1];

      v14 = v11[3];

      v15 = v11 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v10(v11, v8);
      v37 = (v4 + 24) & ~v4;
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v11 + v16[12] + 8);

      v18 = *(v11 + v16[16] + 8);

      v19 = *(v11 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v5 = v37;
      v15 = (v11 + v20 + 8);
      goto LABEL_13;
    case 3:
      v10(v11, v8);
      v37 = (v4 + 24) & ~v4;
      v21 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v22 = *(v11 + v21[12] + 8);

      v23 = *(v11 + v21[16] + 8);

      v20 = v21[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v15 = v11 + 1;
LABEL_13:
      v24 = *v15;

      break;
  }

LABEL_14:
  v25 = v3[7];
  if (!(*(v9 + 48))(v6 + v25, 1, v8))
  {
    v10(v6 + v25, v8);
  }

  v26 = v3[8];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v6 + v26, v27);
  sub_100016590(*(v6 + v3[9]), *(v6 + v3[9] + 8));
  v28 = (v6 + v3[10]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v6 + v3[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  v32 = (v38 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v6 + v3[12]), *(v6 + v3[12] + 8));
  sub_100016590(*(v6 + v3[13]), *(v6 + v3[13] + 8));
  v33 = *(v6 + v3[14] + 8);

  v34 = *(v6 + v3[15] + 8);

  v35 = *(v1 + v32 + 8);

  return _swift_deallocObject(v1, v32 + 16, v4 | 7);
}

uint64_t sub_10071FB4C()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1006C4D10(v4, v0 + v3, v6, v7);
}

uint64_t sub_10071FC64(uint64_t a1)
{
  v3 = [*(v1 + 16) roleId];
  result = type metadata accessor for BeaconNamingRecord();
  *(a1 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_10071FCA8(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1006C3DDC(a1, v4, v5, v6, v7);
}

uint64_t sub_10071FD20()
{
  v1 = (type metadata accessor for BeaconNamingRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[8], v6);
  v8 = *(v0 + v2 + v1[10] + 8);

  v9 = *(v0 + v2 + v1[11] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10071FE5C()
{
  v1 = (type metadata accessor for BeaconNamingRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);
  v9 = *(v5 + v1[10] + 8);

  v10 = *(v5 + v1[11] + 8);

  v11 = *(v0 + v3);

  v12 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10071FFB8(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = *a1;

  return a3(v12, v3 + v6, v8, v10, v11);
}

uint64_t sub_10072007C()
{
  v1 = *(type metadata accessor for TimeBasedKeysCriteria() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1006BE7DC(v0 + v2, v6, v0 + v5, v8, v9);
}

uint64_t sub_100720188(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DateInterval() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100014744;

  return sub_1006B5C0C(a1, v1 + v6, v1 + v9);
}

uint64_t sub_100720318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1006B96F8(a1, v4, v1 + 24, v5);
}

uint64_t sub_1007203CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1006BDC30(a1, v4, v1 + 24, v5);
}

uint64_t sub_1007204C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1006BD9C0(a1, v4, v1 + 24, v5);
}

uint64_t sub_1007205CC()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  return sub_1006CE73C(v3, v4, v6, v0 + v2, v5);
}

uint64_t sub_100720660(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_1007206AC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  Transaction.capture()();
  return v1();
}

unint64_t sub_100720740()
{
  result = qword_1016A78C8;
  if (!qword_1016A78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A78C8);
  }

  return result;
}

uint64_t sub_100720794(uint64_t a1)
{
  sub_100007BAC((v1 + 16));
  v3 = *(v1 + 56);

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_1007207F8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100720894()
{
  v1 = *(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100720958()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 168);
  return sub_1009F074C(v1);
}

void sub_100720980(uint64_t a1)
{
  v3 = *(type metadata accessor for LeashRecord() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for LeashRecord, &qword_1016A78E0, &qword_1013B6888, type metadata accessor for LeashRecord, sub_1009F074C, type metadata accessor for LeashRecord);
}

uint64_t sub_100720B04()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 168);
  return sub_1009F04E0(v1);
}

void sub_100720B2C(uint64_t a1)
{
  v3 = *(type metadata accessor for SafeLocation() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for SafeLocation, &unk_1016B1480, &qword_1013B6890, type metadata accessor for SafeLocation, sub_1009F04E0, type metadata accessor for SafeLocation);
}

uint64_t sub_100720D10(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v4 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v7 = *(v4 + 168);
  return a2(v5);
}

uint64_t sub_100720D98(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = *(v3 + 16);

  return a3(a1, v10, v3 + v7, v9, v3 + ((v6 + v8 + 8) & ~v6));
}

uint64_t sub_100720E7C(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100014744;

  return sub_1006D952C(a1, v7, v8, v1 + v5, v12, v10, v11);
}

uint64_t sub_100720FB8()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 16);

  return _swift_deallocObject(v0, v4 + 24);
}

uint64_t sub_100721090(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100014744;

  return sub_1006D9138(a1, v7, v8, v1 + v5, v12, v10, v11);
}

uint64_t sub_10072121C(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *a1;

  return a3(v11, v7, v3 + v6, v9, v10);
}

uint64_t sub_1007212D8()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 168);
  return sub_1009F0274(v1);
}

void sub_100721300(uint64_t a1)
{
  v3 = *(type metadata accessor for LostModeRecord() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for LostModeRecord, &qword_1016B1840, &qword_1013B68F0, type metadata accessor for LostModeRecord, sub_1009F0274, type metadata accessor for LostModeRecord);
}

uint64_t sub_100721438(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_10069F014(a1, v5, v4);
}

uint64_t sub_1007214E4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_10069F2BC(a1, a2, v2);
}

uint64_t sub_100721590()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1006A4634(v2, v3);
}

uint64_t sub_100721628(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1006A87BC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100721758(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = (a5 >> 58) & 0xC | (a2 >> 60) & 3;
  if (v5 <= 5)
  {
    if (v5 == 1)
    {
      sub_100016590(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      result = a3;
      v6 = a4;
    }

    else
    {
      if (v5 != 5)
      {
        return result;
      }

      sub_100016590(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      v6 = a5 & 0xCFFFFFFFFFFFFFFFLL;
      result = a4;
    }
  }

  else
  {
    if (v5 != 6 && v5 != 7 && v5 != 9)
    {
      return result;
    }

    v6 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_100016590(result, v6);
}

uint64_t sub_10072180C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1006A52F4(v4, v5, v0 + v3, v6);
}

uint64_t sub_100721920(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1006A86FC(a1, v6, v1 + v5);
}

uint64_t sub_100721A04(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[3]);
  v4 = v2[5];

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_100721A9C(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_100698B50(a1, v4, v5);
}

uint64_t sub_100721B10(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_100698C48(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100721BB8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_100721C44(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100721C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100721D04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for AirPodsPairingLockAckEndPoint()
{
  result = qword_1016A7960;
  if (!qword_1016A7960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100721FC0()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x800000010135DA20;
  String.append(_:)(v3);
  v2(&v9, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C218;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 isInternalBuild];

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = [v4 stringForKey:v7];

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_1007221B0(uint64_t a1, char a2, char a3)
{
  *(v4 + 27) = a3;
  *(v4 + 26) = a2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v3;
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v6 = type metadata accessor for BookmarkMetaData();
  *(v4 + 112) = v6;
  v7 = *(v6 - 8);
  *(v4 + 120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016998B8, &unk_1013B6AD0) - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v10 = type metadata accessor for SystemInfo.DeviceLockState();
  *(v4 + 144) = v10;
  v11 = *(v10 - 8);
  *(v4 + 152) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v13 = type metadata accessor for BeaconKeyManager.FileKey(0);
  *(v4 + 176) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v15 = type metadata accessor for OwnerSharingCircle();
  *(v4 + 192) = v15;
  v16 = *(v15 - 8);
  *(v4 + 200) = v16;
  *(v4 + 208) = *(v16 + 64);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  *(v4 + 272) = v17;
  v18 = *(v17 - 8);
  *(v4 + 280) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  v20 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v4 + 312) = v20;
  v21 = *(v20 - 8);
  *(v4 + 320) = v21;
  v22 = *(v21 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_1007224FC, v3, 0);
}

uint64_t sub_1007224FC()
{
  v1 = *(v0 + 26);
  v2 = sub_100D110E8(*(v0 + 88), v1);
  *(v0 + 336) = v2;
  if (v1)
  {
    v5 = 0;
    *(v0 + 368) = &_swiftEmptyDictionarySingleton;
    v6 = *(v2 + 32);
    *(v0 + 41) = v6;
    v7 = 1 << v6;
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    *(v0 + 28) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v10 = (v7 + 63) >> 6;
    while (1)
    {
      *(v0 + 376) = 0;
      if (!v9)
      {
        break;
      }

LABEL_5:
      *(v0 + 384) = v9;
      *(v0 + 392) = v5;
      v11 = *(*(v2 + 48) + (__clz(__rbit64(v9)) | (v5 << 6)));
      *(v0 + 42) = v11;
      if ((v11 - 7) >= 0xC && ((1 << v11) & 0x1C) == 0)
      {
        *(v0 + 43) = ((1 << v11) & 0x21) == 0;
        v3 = *(*(v0 + 96) + 152);
        *(v0 + 440) = v3;
        v13 = sub_1007239B0;
LABEL_18:
        v2 = v13;
        v4 = 0;

        return _swift_task_switch(v2, v3, v4);
      }

      v9 &= v9 - 1;
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        v22 = *(v0 + 96);

        v23 = sub_1000035D0((v22 + 112), *(v22 + 136));
        v3 = *v23;
        *(v0 + 400) = *v23;
        v13 = sub_1007229F4;
        goto LABEL_18;
      }

      v9 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v9)
      {
        v5 = v12;
        goto LABEL_5;
      }
    }

    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    v14 = *(v0 + 192);
    v15 = *(v0 + 88);
    v16 = 0x4000201u >> (8 * *(v15 + *(v14 + 28)));
    v17 = *(v14 + 20);
    v18 = v2;
    v19 = swift_task_alloc();
    *(v0 + 344) = v19;
    *v19 = v0;
    v19[1] = sub_100722744;
    v20 = *(v0 + 96);

    return sub_100726054(v15 + v17, v16, v18);
  }
}