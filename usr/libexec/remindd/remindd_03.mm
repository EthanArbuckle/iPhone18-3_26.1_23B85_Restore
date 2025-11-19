unint64_t sub_10004285C()
{
  result = qword_100939688;
  if (!qword_100939688)
  {
    sub_1000F514C(&qword_100939680, &qword_100795F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939688);
  }

  return result;
}

void sub_1000428C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  [v6 setEntity:a2];
  [v6 setPredicate:a3];
  [a1 setFetchRequest:v6];
}

void sub_100042968(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t initializeBufferWithCopyOfBuffer for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_100042A14(uint64_t a1, char a2, void *a3, uint64_t (*a4)(void))
{
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10093B458);
  v9 = a3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = a4;
    v14 = swift_slowAlloc();
    v27 = v14;
    *v12 = 67109378;
    *(v12 + 4) = a2 & 1;
    *(v12 + 8) = 2082;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = sub_10000668C(v15, v16, &v27);

    *(v12 + 10) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "XPCSyncInterface.SyncCloudKit: CloudKit Sync did finish {discretionary: %{BOOL}d, reason: %{public}s}", v12, 0x12u);
    sub_10000607C(v14);
    a4 = v13;
  }

  if (a1)
  {
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_10000668C(v22, v23, &v27);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "XPCSyncInterface.SyncCloudKit: Sync interface cloudkit sync finished with error {error: %s}", v20, 0xCu);
      sub_10000607C(v21);
    }

    else
    {
    }
  }

  if (sub_100042E00())
  {
    v25 = a1;
  }

  else
  {
    v25 = 0;
  }

  return a4(v25);
}

void sub_100042CBC(void *a1@<X8>)
{
  if (_swiftEmptyArrayStorage >> 62)
  {
    v6 = a1;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(_swiftEmptyArrayStorage);
      v5 = v7;
    }

    else
    {
      v5 = &_swiftEmptySetSingleton;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(_swiftEmptyArrayStorage);
      v4 = v8;
    }

    else
    {
      v4 = &_swiftEmptySetSingleton;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(_swiftEmptyArrayStorage);
      v3 = v9;
    }

    else
    {
      v3 = &_swiftEmptySetSingleton;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(_swiftEmptyArrayStorage);
      v2 = v10;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(_swiftEmptyArrayStorage);
    }

    else
    {
      v1 = &_swiftEmptySetSingleton;
    }

    a1 = v6;
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    v2 = &_swiftEmptySetSingleton;
    v3 = &_swiftEmptySetSingleton;
    v4 = &_swiftEmptySetSingleton;
    v5 = &_swiftEmptySetSingleton;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

uint64_t sub_100042E00()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v9 != v10)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_6;
      }

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v15 != v16)
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_15;
      }
    }

LABEL_14:
    v6 = 1;
LABEL_15:

    return v6 & 1;
  }

LABEL_6:
  v6 = 1;
  return v6 & 1;
}

uint64_t sub_100042F60()
{
  v1 = swift_allocObject();
  *(v1 + 16) = _swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  sub_100043224(KeyPath, 0xD000000000000010, 0x80000001007F68B0, v0, v1);

  v3 = swift_getKeyPath();
  sub_100043224(v3, 0xD000000000000011, 0x80000001007F68D0, v0, v1);

  v4 = swift_getKeyPath();
  sub_100043224(v4, 0xD000000000000014, 0x80000001007F68F0, v0, v1);

  v5 = swift_getKeyPath();
  sub_100043224(v5, 0x4C64657461647075, 0xEC00000073747369, v0, v1);

  v6 = swift_getKeyPath();
  sub_100043224(v6, 0xD000000000000010, 0x80000001007F6910, v0, v1);

  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    v13 = *(v1 + 16);

    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
    v7 = BidirectionalCollection<>.joined(separator:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 125;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);

    return 123;
  }

  else
  {

    return 0x3E7974706D653CLL;
  }
}

uint64_t sub_1000431EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *a4;
  v30 = a4[1];
  v31 = v8;
  v9 = a4[2];
  v28 = a4[3];
  v29 = v9;
  v10 = a4[4];
  v11 = *(a4 + 1);
  v24 = *a4;
  v25 = v11;
  v26 = a4[4];
  v27 = v10;
  sub_100043478(&v31, &v23);
  sub_100043478(&v30, &v23);
  sub_100043478(&v29, &v23);
  sub_100043478(&v28, &v23);
  sub_100043478(&v27, &v23);
  swift_getAtKeyPath();
  sub_1000050A4(&v31, &qword_100944F78, qword_1007AABF0);
  sub_1000050A4(&v30, &qword_100944F78, qword_1007AABF0);
  sub_1000050A4(&v29, &qword_100944F78, qword_1007AABF0);
  sub_1000050A4(&v28, &qword_100944F78, qword_1007AABF0);
  sub_1000050A4(&v27, &qword_100944F78, qword_1007AABF0);
  v12 = v23;
  v13 = v23 & 0xC000000000000001;
  if ((v23 & 0xC000000000000001) == 0)
  {
    if (*(v23 + 16))
    {
      goto LABEL_3;
    }
  }

  if (!__CocoaSet.count.getter())
  {
  }

LABEL_3:
  *&v24 = a2;
  *(&v24 + 1) = a3;

  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  if (v13)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *(v12 + 16);
  }

  v23 = v15;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18 = v24;
  swift_beginAccess();
  v19 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_100365788(0, *(v19 + 2) + 1, 1, v19);
    *(a5 + 16) = v19;
  }

  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    v19 = sub_100365788((v21 > 1), v22 + 1, 1, v19);
  }

  *(v19 + 2) = v22 + 1;
  *&v19[16 * v22 + 32] = v18;
  *(a5 + 16) = v19;
  return swift_endAccess();
}

uint64_t sub_100043478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100944F78, qword_1007AABF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000434E8(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for REMObjectID_Codable();
    sub_100728EC8(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_10001B860();
      return;
    }

    while (1)
    {
      sub_100379240(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for REMObjectID_Codable();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1000436E4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100279C80(&v5, (v3 + 32), v2, v1, &type metadata accessor for REMObjectID_Codable, &qword_100943E80, &type metadata accessor for REMObjectID_Codable);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_1000437C4(uint64_t a1)
{
  v3 = sub_100043AA8();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v3];

  sub_100050AD0(v7);

  sub_1003FE014(&_swiftEmptySetSingleton);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  v10 = a1;
  NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
    type metadata accessor for REMObjectID_Codable();
    sub_10000CB48(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
    sub_100050DB0(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
    v10 = Sequence.mapToSet<A>(_:)();
  }

  return v10;
}

uint64_t sub_100043AA8()
{
  v992 = type metadata accessor for REMSearchableListType();
  v1020 = *(v992 - 8);
  v0 = *(v1020 + 64);
  v1 = __chkstk_darwin(v992);
  v990 = &v990 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v991 = &v990 - v3;
  v1055 = type metadata accessor for REMStringMatchingStyle();
  v1018 = *(v1055 - 8);
  v4 = *(v1018 + 64);
  v5 = __chkstk_darwin(v1055);
  v1012 = &v990 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v1051 = &v990 - v7;
  v1072 = type metadata accessor for REMSearchCriterion.Inclusion();
  v1019 = *(v1072 - 8);
  v8 = *(v1019 + 64);
  v9 = __chkstk_darwin(v1072);
  v1050 = &v990 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v1071 = &v990 - v11;
  v1076 = type metadata accessor for REMSearchCriterion();
  v1075 = *(v1076 - 8);
  v12 = *(v1075 + 8);
  v13 = __chkstk_darwin(v1076);
  v1080 = &v990 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v1056 = &v990 - v16;
  v17 = __chkstk_darwin(v15);
  v1011 = &v990 - v18;
  v19 = __chkstk_darwin(v17);
  v1077 = (&v990 - v20);
  __chkstk_darwin(v19);
  v1078 = &v990 - v21;
  v1100 = type metadata accessor for UUID();
  v1096 = *(v1100 - 8);
  v22 = *(v1096 + 64);
  v23 = __chkstk_darwin(v1100);
  v1093 = &v990 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v1074 = &v990 - v25;
  v1070 = sub_1000F5104(&qword_100945FE8, qword_1007A6B20);
  v26 = *(v1070[-1].isa + 8);
  v27 = __chkstk_darwin(v1070);
  v1045 = (&v990 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v1069 = (&v990 - v30);
  v31 = __chkstk_darwin(v29);
  v1047 = (&v990 - v32);
  v33 = __chkstk_darwin(v31);
  *&v1068 = &v990 - v34;
  __chkstk_darwin(v33);
  v1046 = &v990 - v35;
  v1087 = type metadata accessor for Date();
  v1088 = *(v1087 - 8);
  v36 = *(v1088 + 64);
  v37 = __chkstk_darwin(v1087);
  v1010 = &v990 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v1002 = &v990 - v40;
  v41 = __chkstk_darwin(v39);
  v1001 = &v990 - v42;
  v43 = __chkstk_darwin(v41);
  v999 = &v990 - v44;
  v45 = __chkstk_darwin(v43);
  v1009 = &v990 - v46;
  v47 = __chkstk_darwin(v45);
  v1005 = &v990 - v48;
  v49 = __chkstk_darwin(v47);
  v1008 = &v990 - v50;
  v51 = __chkstk_darwin(v49);
  v1004 = &v990 - v52;
  v53 = __chkstk_darwin(v51);
  v1066 = &v990 - v54;
  v55 = __chkstk_darwin(v53);
  v1003 = &v990 - v56;
  v57 = __chkstk_darwin(v55);
  v1007 = &v990 - v58;
  v59 = __chkstk_darwin(v57);
  v1042 = &v990 - v60;
  v61 = __chkstk_darwin(v59);
  v1067 = &v990 - v62;
  v63 = __chkstk_darwin(v61);
  v1006 = &v990 - v64;
  v65 = __chkstk_darwin(v63);
  v1000 = &v990 - v66;
  __chkstk_darwin(v65);
  v1084 = &v990 - v67;
  v68 = type metadata accessor for Calendar.Component();
  v1016 = *(v68 - 8);
  v1017 = v68;
  v69 = *(v1016 + 64);
  __chkstk_darwin(v68);
  v1043 = &v990 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Calendar();
  v1014 = *(v71 - 8);
  v1015 = v71;
  v72 = *(v1014 + 64);
  __chkstk_darwin(v71);
  v1040 = &v990 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v75 = *(*(v74 - 8) + 64);
  v76 = __chkstk_darwin(v74 - 8);
  v1041 = &v990 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __chkstk_darwin(v76);
  v1044 = &v990 - v79;
  v80 = __chkstk_darwin(v78);
  v1037 = (&v990 - v81);
  v82 = __chkstk_darwin(v80);
  v1060 = (&v990 - v83);
  v84 = __chkstk_darwin(v82);
  v1034 = &v990 - v85;
  v86 = __chkstk_darwin(v84);
  v1039 = &v990 - v87;
  v88 = __chkstk_darwin(v86);
  v1021 = &v990 - v89;
  v90 = __chkstk_darwin(v88);
  v1059 = &v990 - v91;
  v92 = __chkstk_darwin(v90);
  v994 = &v990 - v93;
  v94 = __chkstk_darwin(v92);
  v993 = &v990 - v95;
  v96 = __chkstk_darwin(v94);
  v996 = &v990 - v97;
  v98 = __chkstk_darwin(v96);
  v995 = &v990 - v99;
  v100 = __chkstk_darwin(v98);
  v997 = &v990 - v101;
  v102 = __chkstk_darwin(v100);
  v998 = &v990 - v103;
  v104 = __chkstk_darwin(v102);
  v1038 = &v990 - v105;
  v106 = __chkstk_darwin(v104);
  v1031 = &v990 - v107;
  v108 = __chkstk_darwin(v106);
  v1054 = &v990 - v109;
  v110 = __chkstk_darwin(v108);
  v1065 = (&v990 - v111);
  v112 = __chkstk_darwin(v110);
  v1036 = (&v990 - v113);
  v114 = __chkstk_darwin(v112);
  v1030 = (&v990 - v115);
  v116 = __chkstk_darwin(v114);
  v1053 = &v990 - v117;
  v118 = __chkstk_darwin(v116);
  v1064 = (&v990 - v119);
  v120 = __chkstk_darwin(v118);
  v1048 = &v990 - v121;
  v122 = __chkstk_darwin(v120);
  v1033 = &v990 - v123;
  v124 = __chkstk_darwin(v122);
  v1049 = &v990 - v125;
  v126 = __chkstk_darwin(v124);
  v1035 = (&v990 - v127);
  v128 = __chkstk_darwin(v126);
  v1032 = (&v990 - v129);
  v130 = __chkstk_darwin(v128);
  v1029 = &v990 - v131;
  v132 = __chkstk_darwin(v130);
  v1052 = &v990 - v133;
  v134 = __chkstk_darwin(v132);
  v1063 = (&v990 - v135);
  v136 = __chkstk_darwin(v134);
  v1013 = &v990 - v137;
  __chkstk_darwin(v136);
  v1085 = &v990 - v138;
  v1082 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v1081 = *(v1082 - 1);
  v139 = *(v1081 + 8);
  v140 = __chkstk_darwin(v1082);
  v1028 = &v990 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __chkstk_darwin(v140);
  v1058 = &v990 - v143;
  v144 = __chkstk_darwin(v142);
  v1062 = &v990 - v145;
  v146 = __chkstk_darwin(v144);
  v1073 = &v990 - v147;
  v148 = __chkstk_darwin(v146);
  v1061 = &v990 - v149;
  v150 = __chkstk_darwin(v148);
  v1023 = &v990 - v151;
  v152 = __chkstk_darwin(v150);
  v1022 = &v990 - v153;
  v154 = __chkstk_darwin(v152);
  v1024 = &v990 - v155;
  v156 = __chkstk_darwin(v154);
  v1027 = &v990 - v157;
  v158 = __chkstk_darwin(v156);
  v1026 = &v990 - v159;
  v160 = __chkstk_darwin(v158);
  v1079 = &v990 - v161;
  __chkstk_darwin(v160);
  v1025 = &v990 - v162;
  v163 = sub_1000F5104(&unk_100939D90, "8\n\r");
  *&v1098 = *(v163 - 8);
  v164 = *(v1098 + 64);
  v165 = __chkstk_darwin(v163 - 8);
  v1092 = &v990 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = __chkstk_darwin(v165);
  v1090 = &v990 - v168;
  v169 = __chkstk_darwin(v167);
  v171 = &v990 - v170;
  v172 = __chkstk_darwin(v169);
  v174 = &v990 - v173;
  v175 = __chkstk_darwin(v172);
  v1089 = (&v990 - v176);
  v177 = __chkstk_darwin(v175);
  v179 = &v990 - v178;
  v180 = __chkstk_darwin(v177);
  v1091 = &v990 - v181;
  __chkstk_darwin(v180);
  v183 = &v990 - v182;
  v184 = _s10PredicatesOMa(0);
  v185 = *(*(v184 - 8) + 64);
  __chkstk_darwin(v184);
  v187 = &v990 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1086 = 0;
  v1097 = _s10PredicatesO19CompletionPredicateOMa(0);
  v188 = *(*(v1097 - 8) + 64);
  v189 = __chkstk_darwin(v1097);
  v1094 = (&v990 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = __chkstk_darwin(v189);
  v193 = &v990 - v192;
  v194 = __chkstk_darwin(v191);
  v196 = &v990 - v195;
  v197 = __chkstk_darwin(v194);
  v199 = &v990 - v198;
  v200 = __chkstk_darwin(v197);
  v1083 = &v990 - v201;
  v202 = __chkstk_darwin(v200);
  v1057 = (&v990 - v203);
  __chkstk_darwin(v202);
  v1099 = (&v990 - v204);
  v1104 = _swiftEmptyArrayStorage;
  sub_10004DCBC(v1095, v187, _s10PredicatesOMa);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v390 = *v187;
      v391 = v187[8];
      swift_storeEnumTagMultiPayload();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v266 = 0;
      v244 = 1;
      LODWORD(v1098) = 1;
      LOBYTE(v271) = 1;
      if (v391)
      {
        goto LABEL_429;
      }

      goto LABEL_420;
    case 2u:
      v345 = *v187;
      v346 = v187[8];
      v347 = sub_1000F5104(&qword_10093C920, qword_1007AC750);
      v348 = v1081;
      v349 = v1025;
      v350 = v1082;
      (*(v1081 + 4))(v1025, &v187[*(v347 + 64)], v1082);
      v351 = v1079;
      v348[2](v1079, v349, v350);
      sub_1003E83B8(v351, v1099);
      v266 = v346 ^ 1;
      KeyPath = swift_getKeyPath();
      v353 = [v345 uuid];
      v354 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1096 + 56))(v354, 0, 1, v1100);
      sub_100390EB8(KeyPath, v354);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v980 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (v348[1])(v349, v350);
      goto LABEL_146;
    case 3u:
      v360 = *v187;
      v361 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
      v362 = *(v361 + 48);
      LODWORD(v1095) = v187[*(v361 + 64)];
      v363 = v1057;
      sub_1003EB670(&v187[v362], v1057);
      sub_10004DCBC(v363, v1099, _s10PredicatesO19CompletionPredicateOMa);
      v364 = swift_getKeyPath();
      if (v360 >> 62)
      {
        v365 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v365 = *((v360 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v365)
      {
        v1093 = v364;
        v1101 = _swiftEmptyArrayStorage;
        sub_100253038(v365);
        if ((v365 & 0x8000000000000000) == 0)
        {
          v366 = 0;
          v367 = (v1096 + 56);
          do
          {
            if ((v360 & 0xC000000000000001) != 0)
            {
              v368 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v368 = *(v360 + 8 * v366 + 32);
            }

            v369 = v368;
            v370 = [v368 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v367)(v179, 0, 1, v1100);
            v371 = v1101;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100253218(0, v371[2] + 1, 1);
              v371 = v1101;
            }

            v373 = v371[2];
            v372 = v371[3];
            if (v373 >= v372 >> 1)
            {
              sub_100253218(v372 > 1, v373 + 1, 1);
              v371 = v1101;
            }

            ++v366;
            v371[2] = v373 + 1;
            sub_100031B58(v179, v371 + ((*(v1098 + 80) + 32) & ~*(v1098 + 80)) + *(v1098 + 72) * v373, &unk_100939D90, "8\n\r");
          }

          while (v365 != v366);

          v364 = v1093;
          goto LABEL_433;
        }

        goto LABEL_530;
      }

      v371 = _swiftEmptyArrayStorage;
LABEL_433:
      sub_100016EF8(v364, v371, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000504F8(v1057, _s10PredicatesO19CompletionPredicateOMa);
LABEL_436:
      v244 = 0;
      LODWORD(v1098) = 0;
      LODWORD(v271) = 0;
LABEL_437:
      LOBYTE(v296) = v1095;
LABEL_438:
      if (v296 > 3u)
      {
        switch(v296)
        {
          case 4u:
            sub_1003E8200();
            goto LABEL_450;
          case 5u:
LABEL_447:
            sub_1003E8200();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (v1104[2] >= v1104[3] >> 1)
            {
              v897 = v1104[2];
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

LABEL_456:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            LOBYTE(v266) = v244;
            if (v271)
            {
              goto LABEL_429;
            }

            goto LABEL_457;
          case 6u:
            sub_1003E8200();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_10004F91C(v1104[2]);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            sub_1003E80CC();
LABEL_450:
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_10004F91C(v1104[2]);
            v1093 = v244;
            LODWORD(v1092) = v244;
            goto LABEL_422;
        }

LABEL_452:
        v898 = swift_getKeyPath();
        if (v296)
        {
          sub_1003EFC70(v898, &unk_100939F10, &qword_100797F30);
        }

        else
        {
          sub_10000E72C(v898, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        goto LABEL_456;
      }

      if (v296 != 2)
      {
        if (v296 == 3)
        {
          LOBYTE(v266) = v244;
          if (v271)
          {
            goto LABEL_429;
          }

          goto LABEL_457;
        }

        goto LABEL_452;
      }

      v266 = v244;
LABEL_420:
      v1093 = v244;
      sub_100023A14(0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v873 = v1104[2];
      v874 = v1104[3];
      LODWORD(v1092) = v266;
      if (v873 >= v874 >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

LABEL_422:
      v875 = v271;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v876 = swift_getKeyPath();
      sub_10000E72C(v876, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v975 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      inited = swift_initStackObject();
      v1095 = xmmword_100791340;
      *(inited + 16) = xmmword_100791340;
      v878 = swift_getKeyPath();
      v879 = sub_10000E72C(v878, 0x696E203D3D204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);

      *(inited + 32) = v879;
      v880 = swift_getKeyPath();
      v881 = sub_10000E72C(v880, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

      *(inited + 40) = v881;
      sub_100024F24(inited);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v976 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v882 = swift_initStackObject();
      *(v882 + 16) = v1095;
      v883 = swift_getKeyPath();
      v884 = sub_10000E72C(v883, 0x696E203D3D204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);

      *(v882 + 32) = v884;
      v885 = swift_getKeyPath();
      v886 = sub_10000E72C(v885, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

      *(v882 + 40) = v886;
      sub_100024F24(v882);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      LOBYTE(v266) = v1092;
      if (v1104[2] >= v1104[3] >> 1)
      {
        v977 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      LODWORD(v244) = v1093;
      if (v875)
      {
LABEL_429:
        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        v887 = swift_initStackObject();
        sub_100050238(v887, 2);
        v889 = v888;
        v890 = swift_getKeyPath();
        v891 = sub_10000E72C(v890, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

        *v889 = v891;
        v892 = swift_getKeyPath();
        v893 = sub_10000E72C(v892, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

        v889[1] = v893;
        REMCDList.cleanUpAfterLocalObjectMerge()();
        sub_10000C2B0(v894);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v895 = v1094;
        if (v1098)
        {
          goto LABEL_430;
        }

LABEL_458:
        if (!v244)
        {
          goto LABEL_460;
        }

        goto LABEL_459;
      }

LABEL_457:
      v895 = v1094;
      if (!v1098)
      {
        goto LABEL_458;
      }

LABEL_430:
      v896 = swift_getKeyPath();
      sub_10000E72C(v896, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v244)
      {
LABEL_459:
        v899 = swift_getKeyPath();
        v900 = [objc_opt_self() localInternalAccountID];
        v901 = [v900 uuid];

        v902 = v1091;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v1096 + 56))(v902, 0, 1, v1100);
        sub_1003EAC2C(v899, v902);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

LABEL_460:
      v903 = v1099;
      sub_10004DCBC(v1099, v895, _s10PredicatesO19CompletionPredicateOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload != 4)
          {
            goto LABEL_474;
          }

          v917 = swift_getKeyPath();
          sub_1003EFC70(v917, &unk_100939F10, &qword_100797F30);
          goto LABEL_472;
        }

LABEL_471:
        v941 = swift_getKeyPath();
        sub_10000E72C(v941, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);
LABEL_472:

        goto LABEL_473;
      }

      if (!EnumCaseMultiPayload)
      {
        v918 = v1088;
        v919 = v1084;
        v920 = v1087;
        (*(v1088 + 32))(v1084, v895, v1087);
        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        v921 = swift_initStackObject();
        sub_100050238(v921, 2);
        v923 = v922;
        v924 = swift_getKeyPath();
        v925 = sub_10000E72C(v924, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

        *v923 = v925;
        v926 = swift_getKeyPath();
        v927 = v1085;
        (*(v918 + 16))(v1085, v919, v920);
        (*(v918 + 56))(v927, 0, 1, v920);
        v928 = sub_1003E9FFC(v926, v927);

        v923[1] = v928;
        REMCDList.cleanUpAfterLocalObjectMerge()();
        sub_100024F24(v929);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v930 = v919;
        v903 = v1099;
        (*(v918 + 8))(v930, v920);
        goto LABEL_474;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v931 = sub_1003E7588(*v895, sub_100411AE4, &qword_100946070, &qword_1007A7668);

        if (sub_10025D30C(v931))
        {
          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
          v932 = swift_initStackObject();
          sub_100050238(v932, 2);
          v934 = v933;
          v935 = swift_getKeyPath();
          v936 = sub_10000E72C(v935, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

          *v934 = v936;
          v937 = swift_getKeyPath();
          v938 = sub_10004FAEC(v931);

          v939 = sub_100016EF8(v937, v938, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

          v934[1] = v939;
          REMCDList.cleanUpAfterLocalObjectMerge()();
          sub_100024F24(v940);
LABEL_473:
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_10004F91C(v1104[2]);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          goto LABEL_474;
        }

        goto LABEL_471;
      }

      v905 = v1088;
      v906 = v1084;
      v907 = v1087;
      (*(v1088 + 32))(v1084, v895, v1087);
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v908 = swift_initStackObject();
      sub_100050238(v908, 2);
      v910 = v909;
      v911 = swift_getKeyPath();
      v912 = sub_1003EFC70(v911, &unk_100939F10, &qword_100797F30);

      *v910 = v912;
      v913 = swift_getKeyPath();
      v914 = v1085;
      (*(v905 + 16))(v1085, v906, v907);
      (*(v905 + 56))(v914, 0, 1, v907);
      v915 = sub_1003EA414(v913, v914);

      v910[1] = v915;
      REMCDList.cleanUpAfterLocalObjectMerge()();
      sub_10000C2B0(v916);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v905 + 8))(v906, v907);
LABEL_474:
      if (v266)
      {
        v942 = swift_getKeyPath();
        sub_10000E72C(v942, 0x696E203D3D204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v781 = sub_10000C2B0(v1104);
      sub_1000504F8(v903, _s10PredicatesO19CompletionPredicateOMa);
      return v781;
    case 4u:
      v312 = *v187;
      v313 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
      v314 = *(v313 + 64);
      v315 = v1063;
      sub_100031B58(&v187[*(v313 + 48)], v1063, &unk_100938850, qword_100795AE0);
      v316 = v1052;
      sub_100031B58(&v187[v314], v1052, &unk_100938850, qword_100795AE0);
      swift_storeEnumTagMultiPayload();
      v317 = v1029;
      sub_100010364(v315, v1029, &unk_100938850, qword_100795AE0);
      v318 = v1088;
      v319 = *(v1088 + 48);
      v320 = v1087;
      if (v319(v317, 1, v1087) == 1)
      {
        sub_1000050A4(v317, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v809 = v1000;
        (*(v318 + 32))(v1000, v317, v320);
        v810 = swift_getKeyPath();
        v811 = v1085;
        (*(v318 + 16))(v1085, v809, v320);
        (*(v318 + 56))(v811, 0, 1, v320);
        sub_1003EA208(v810, v811);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v812 = v809;
        v316 = v1052;
        (*(v318 + 8))(v812, v320);
      }

      v813 = v1032;
      sub_100010364(v316, v1032, &unk_100938850, qword_100795AE0);
      if (v319(v813, 1, v320) == 1)
      {
        sub_1000050A4(v813, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v814 = v1088;
        v815 = v1006;
        (*(v1088 + 32))(v1006, v813, v320);
        v816 = swift_getKeyPath();
        v817 = v1085;
        (*(v814 + 16))(v1085, v815, v320);
        (*(v814 + 56))(v817, 0, 1, v320);
        sub_1003EA414(v816, v817);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v814 + 8))(v815, v320);
      }

      v818 = swift_getKeyPath();
      v819 = v1086;
      v820 = sub_1003E6C54(v312);
      v1086 = v819;

      sub_100016EF8(v818, v820, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000050A4(v316, &unk_100938850, qword_100795AE0);
      sub_1000050A4(v1063, &unk_100938850, qword_100795AE0);
      goto LABEL_493;
    case 5u:
      v418 = *v187;
      v419 = v187[8];
      v420 = *(v187 + 2);
      swift_storeEnumTagMultiPayload();
      v266 = v419 ^ 1;
      v421 = swift_getKeyPath();
      v422 = [v418 uuid];
      v423 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1096 + 56))(v423, 0, 1, v1100);
      sub_100390EB8(v421, v423);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v982 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v424 = v1043;
      v425 = v1040;
      if (v420)
      {
        *&v1098 = v418;
        v426 = [objc_opt_self() currentCalendar];
        static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

        v428 = v1016;
        v427 = v1017;
        (*(v1016 + 104))(v424, enum case for Calendar.Component.day(_:), v1017);
        if ((v420 & 0x8000000000000000) == 0)
        {
          v429 = v1084;
          Date.init()();
          v430 = v1085;
          Calendar.date(byAdding:value:to:wrappingComponents:)();
          (*(v1088 + 8))(v429, v1087);
          (*(v428 + 8))(v424, v427);
          (*(v1014 + 8))(v425, v1015);
          v431 = swift_getKeyPath();
          v432 = v1013;
          sub_100010364(v430, v1013, &unk_100938850, qword_100795AE0);
          sub_1003E9FFC(v431, v432);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_10004F91C(v1104[2]);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          sub_1000050A4(v430, &unk_100938850, qword_100795AE0);
LABEL_146:
          v244 = 0;
          LODWORD(v1098) = 0;
          LOBYTE(v271) = 0;
          goto LABEL_420;
        }

        goto LABEL_534;
      }

      goto LABEL_494;
    case 6u:
      v336 = *v187;
      swift_storeEnumTagMultiPayload();
      v459 = swift_getKeyPath();
      v460 = [v336 uuid];
      v461 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1096 + 56))(v461, 0, 1, v1100);
      sub_100390EB8(v459, v461);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v985 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_136;
    case 7u:
      v374 = *v187;
      swift_storeEnumTagMultiPayload();
      v375 = swift_getKeyPath();
      v376 = [v374 uuid];
      v377 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1096 + 56))(v377, 0, 1, v1100);
      sub_100390EB8(v375, v377);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v981 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      LODWORD(v244) = 0;
      LODWORD(v1098) = 0;
      LOBYTE(v271) = 0;
      goto LABEL_447;
    case 8u:
      v487 = *v187;
      v488 = sub_1000F5104(&unk_100942AF0, qword_1007A7520);
      v271 = v1081;
      v489 = v1026;
      v490 = v1082;
      (*(v1081 + 4))(v1026, &v187[*(v488 + 48)], v1082);
      v491 = v1079;
      (*(v271 + 2))(v1079, v489, v490);
      sub_1003E83B8(v491, v1099);
      v492 = swift_getKeyPath();
      v493 = [v487 uuid];
      v494 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1096 + 56))(v494, 0, 1, v1100);
      sub_100390EB8(v492, v494);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v989 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v271 + 1))(v489, v490);
      v244 = 0;
      LODWORD(v1098) = 0;
      LOBYTE(v271) = 0;
      v266 = 1;
      goto LABEL_420;
    case 9u:
      v330 = *v187;
      v331 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
      v296 = v187[*(v331 + 64)];
      v332 = v1081;
      v333 = v1027;
      v334 = v1082;
      (*(v1081 + 4))(v1027, &v187[*(v331 + 48)], v1082);
      LODWORD(v271) = (v296 - 2) < 5 || (v296 & 1) == 0;
      v793 = v1099;
      v794 = v1079;
      v332[2](v1079, v333, v334);
      sub_1003E83B8(v794, v793);
      v795 = swift_getKeyPath();
      v796 = [v330 uuid];
      v797 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1096 + 56))(v797, 0, 1, v1100);
      sub_100390EB8(v795, v797);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (v332[1])(v333, v334);
      goto LABEL_374;
    case 0xAu:
      v480 = *v187;
      v481 = sub_1000F5104(&qword_100946050, &qword_1007B0450);
      v482 = v1081;
      v483 = v1024;
      v484 = v1082;
      (*(v1081 + 4))(v1024, &v187[*(v481 + 48)], v1082);
      v485 = v1079;
      v482[2](v1079, v483, v484);
      sub_1003E83B8(v485, v1099);
      v486 = swift_getKeyPath();
      sub_100016EF8(v486, v480, &qword_100937028, &qword_100791C10, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v988 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v482[1])(v483, v484);
      goto LABEL_145;
    case 0xBu:
      v298 = v1081;
      v199 = v1022;
      v299 = v1082;
      (*(v1081 + 4))(v1022, v187, v1082);
      v300 = v1079;
      (*(v298 + 2))(v1079, v199, v299);
      sub_1003E83B8(v300, v1099);
      v301 = swift_getKeyPath();
      sub_10000E72C(v301, 0x696E203D21204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);
      goto LABEL_50;
    case 0xCu:
      v298 = v1081;
      v199 = v1023;
      v299 = v1082;
      (*(v1081 + 4))(v1023, v187, v1082);
      v328 = v1079;
      (*(v298 + 2))(v1079, v199, v299);
      sub_1003E83B8(v328, v1099);
      v329 = swift_getKeyPath();
      sub_1003EA64C(v329, 1);
LABEL_50:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] < v1104[3] >> 1)
      {
        goto LABEL_51;
      }

      goto LABEL_519;
    case 0xDu:
      v442 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
      v443 = v1081;
      (*(v1081 + 4))(v1061, v187, v1082);
      v444 = v1088;
      v445 = &v187[v442];
      v446 = v1067;
      v447 = v1087;
      (*(v1088 + 32))(v1067, v445, v1087);
      v448 = v1070;
      *&v1095 = SLODWORD(v1070[6].isa);
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v449 = v1084;
      sub_1003E8654(v446, v1084);
      v450 = swift_getKeyPath();
      v451 = v1085;
      (*(v444 + 16))(v1085, v449, v447);
      (*(v444 + 56))(v451, 0, 1, v447);
      v452 = sub_1003EA818(v450, v451);

      *&v1098 = *(v444 + 8);
      (v1098)(v449, v447);
      v453 = v1046;
      v454 = sub_1003E8D0C(&v1046[v1095], v452);

      *v453 = v454;
      v455 = v1068;
      sub_100010364(v453, v1068, &qword_100945FE8, qword_1007A6B20);

      sub_1003EB670(v455 + SLODWORD(v448[6].isa), v1099);
      v456 = v1047;
      sub_100010364(v453, v1047, &qword_100945FE8, qword_1007A6B20);
      v457 = *v456;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v984 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      isa_low = SLODWORD(v448[6].isa);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000050A4(v453, &qword_100945FE8, qword_1007A6B20);
      (v1098)(v1067, v447);
      v443[1](v1061, v1082);
      sub_1000504F8(v456 + isa_low, _s10PredicatesO19CompletionPredicateOMa);
      goto LABEL_417;
    case 0xEu:
      v288 = v1088;
      v289 = v1042;
      v290 = v1087;
      (*(v1088 + 32))(v1042, v187, v1087);
      swift_storeEnumTagMultiPayload();
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v291 = v1084;
      sub_1003E8654(v289, v1084);
      v292 = swift_getKeyPath();
      v293 = v1085;
      (*(v288 + 16))(v1085, v291, v290);
      (*(v288 + 56))(v293, 0, 1, v290);
      sub_1003EA818(v292, v293);

      v294 = *(v288 + 8);
      v294(v291, v290);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v979 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v294(v289, v290);
      goto LABEL_417;
    case 0xFu:
      v356 = v1081;
      v357 = v1079;
      v358 = v1082;
      (*(v1081 + 4))(v1079, v187, v1082);
      v359 = v1073;
      v356[2](v1073, v357, v358);
      sub_1003E83B8(v359, v1099);
      (v356[1])(v357, v358);
      goto LABEL_417;
    case 0x10u:
      v267 = *v187;
      v268 = v187[8];
      v269 = sub_1000F5104(&qword_100946040, &qword_1007A75B8);
      v270 = v1035;
      sub_100031B58(&v187[*(v269 + 64)], v1035, &unk_100938850, qword_100795AE0);
      LODWORD(v1095) = v268;
      LODWORD(v271) = (v268 - 2) < 5 || (v268 & 1) == 0;
      v782 = v1087;
      v783 = v1088;
      v784 = v1049;
      swift_storeEnumTagMultiPayload();
      v785 = swift_getKeyPath();
      v786 = [v267 uuid];
      v787 = v267;
      v788 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1096 + 56))(v788, 0, 1, v1100);
      sub_100390EB8(v785, v788);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100010364(v270, v784, &unk_100938850, qword_100795AE0);
      if ((*(v783 + 48))(v784, 1, v782) == 1)
      {
        sub_1000050A4(v270, &unk_100938850, qword_100795AE0);

        sub_1000050A4(v784, &unk_100938850, qword_100795AE0);
        v244 = 1;
      }

      else
      {
        v804 = *(v783 + 32);
        *&v1098 = v787;
        v805 = v1007;
        v804(v1007, v784, v782);
        v806 = swift_getKeyPath();
        v807 = v1085;
        (*(v783 + 16))(v1085, v805, v782);
        v808 = v270;
        v244 = 1;
        (*(v783 + 56))(v807, 0, 1, v782);
        sub_1003E9FFC(v806, v807);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*(v783 + 8))(v805, v782);
        sub_1000050A4(v808, &unk_100938850, qword_100795AE0);
      }

      LODWORD(v1098) = 1;
      goto LABEL_437;
    case 0x11u:
      v399 = v187[*(sub_1000F5104(&qword_100946038, qword_1007A7578) + 48)];
      v400 = v1033;
      sub_100031B58(v187, v1033, &unk_100938850, qword_100795AE0);
      LODWORD(v271) = (v399 - 2) < 5 || (v399 & 1) == 0;
      v798 = v1087;
      v799 = v1088;
      v800 = v1048;
      swift_storeEnumTagMultiPayload();
      sub_100010364(v400, v800, &unk_100938850, qword_100795AE0);
      if ((*(v799 + 48))(v800, 1, v798) == 1)
      {
        sub_1000050A4(v800, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v827 = v1003;
        (*(v799 + 32))(v1003, v800, v798);
        v828 = swift_getKeyPath();
        v829 = v1085;
        (*(v799 + 16))(v1085, v827, v798);
        (*(v799 + 56))(v829, 0, 1, v798);
        sub_1003EA818(v828, v829);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v799 + 8))(v827, v798);
      }

      LOBYTE(v296) = v399;
      v830 = swift_getKeyPath();
      sub_100390EDC(v830, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000050A4(v400, &unk_100938850, qword_100795AE0);
      v244 = 0;
      LODWORD(v1098) = 0;
      goto LABEL_438;
    case 0x12u:
      v462 = *v187;
      v463 = *(v187 + 1);
      v464 = sub_1000F5104(&qword_100938A98, &qword_1007A7570);
      v465 = v1081;
      (*(v1081 + 4))(v1062, &v187[*(v464 + 64)], v1082);
      v466 = v1070;
      v467 = SLODWORD(v1070[6].isa);
      v468 = v1084;
      Date.init()();
      v469 = sub_10023343C(v468);
      (*(v1088 + 8))(v468, v1087);
      v470 = v1069;
      v471 = sub_1003E8D0C((v1069 + v467), v469);

      *v470 = v471;
      v472 = v1068;
      sub_100010364(v470, v1068, &qword_100945FE8, qword_1007A6B20);

      sub_1003EB670(v472 + SLODWORD(v466[6].isa), v1099);
      v473 = v470;
      v474 = v1045;
      sub_100010364(v473, v1045, &qword_100945FE8, qword_1007A6B20);
      v475 = *v474;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v986 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v476 = SLODWORD(v466[6].isa);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000504F8(v474 + v476, _s10PredicatesO19CompletionPredicateOMa);
      v477 = swift_getKeyPath();
      v478 = [v463 uuid];
      v479 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1096 + 56))(v479, 0, 1, v1100);
      sub_100390EB8(v477, v479);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v987 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_1000050A4(v1069, &qword_100945FE8, qword_1007A6B20);
      v465[1](v1062, v1082);
      goto LABEL_514;
    case 0x13u:
      v679 = *v187;
      v680 = sub_1000F5104(&qword_10093A560, &qword_100797768);
      v681 = v1081;
      v682 = &v187[*(v680 + 48)];
      v683 = v1058;
      v684 = v1082;
      (*(v1081 + 4))(v1058, v682, v1082);
      v685 = v1079;
      v681[2](v1079, v683, v684);
      sub_1003E83B8(v685, v1099);
      v686 = swift_getKeyPath();
      if (v679 >> 62)
      {
        v687 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v687 = *((v679 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v687)
      {
        *&v1095 = v686;
        v1101 = _swiftEmptyArrayStorage;
        sub_100253038(v687);
        if (v687 < 0)
        {
LABEL_537:
          __break(1u);
          goto LABEL_538;
        }

        v688 = 0;
        v689 = (v1096 + 56);
        do
        {
          if ((v679 & 0xC000000000000001) != 0)
          {
            v690 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v690 = *(v679 + 8 * v688 + 32);
          }

          v691 = v690;
          v692 = [v690 uuid];
          v693 = v1089;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v689)(v693, 0, 1, v1100);
          v694 = v1101;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, v694[2] + 1, 1);
            v694 = v1101;
          }

          v696 = v694[2];
          v695 = v694[3];
          if (v696 >= v695 >> 1)
          {
            sub_100253218(v695 > 1, v696 + 1, 1);
            v694 = v1101;
          }

          ++v688;
          v694[2] = v696 + 1;
          sub_100031B58(v1089, v694 + ((*(v1098 + 80) + 32) & ~*(v1098 + 80)) + *(v1098 + 72) * v696, &unk_100939D90, "8\n\r");
        }

        while (v687 != v688);

        v681 = v1081;
        v684 = v1082;
        v686 = v1095;
      }

      else
      {

        v694 = _swiftEmptyArrayStorage;
      }

      sub_100016EF8(v686, v694, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v681[1])(v1058, v684);
      goto LABEL_493;
    case 0x14u:
      v407 = *v187;
      swift_storeEnumTagMultiPayload();
      v408 = swift_getKeyPath();
      if (v407 >> 62)
      {
        v409 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v409 = *((v407 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v409)
      {
        *&v1095 = v408;
        v1101 = _swiftEmptyArrayStorage;
        sub_100253038(v409);
        if (v409 < 0)
        {
LABEL_533:
          __break(1u);
LABEL_534:
          __break(1u);
          goto LABEL_535;
        }

        v410 = 0;
        v411 = (v1096 + 56);
        do
        {
          if ((v407 & 0xC000000000000001) != 0)
          {
            v412 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v412 = *(v407 + 8 * v410 + 32);
          }

          v413 = v412;
          v414 = [v412 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v411)(v174, 0, 1, v1100);
          v415 = v1101;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, v415[2] + 1, 1);
            v415 = v1101;
          }

          v417 = v415[2];
          v416 = v415[3];
          if (v417 >= v416 >> 1)
          {
            sub_100253218(v416 > 1, v417 + 1, 1);
            v415 = v1101;
          }

          ++v410;
          v415[2] = v417 + 1;
          sub_100031B58(v174, v415 + ((*(v1098 + 80) + 32) & ~*(v1098 + 80)) + *(v1098 + 72) * v417, &unk_100939D90, "8\n\r");
        }

        while (v409 != v410);

        v408 = v1095;
      }

      else
      {

        v415 = _swiftEmptyArrayStorage;
      }

      sub_100016EF8(v408, v415, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_493:
      v266 = 0;
LABEL_494:
      v244 = 0;
      LODWORD(v1098) = 0;
      LOBYTE(v271) = 0;
      goto LABEL_420;
    case 0x15u:
      v433 = *v187;
      v434 = sub_1000F5104(&qword_100941B90, &unk_1007A7560);
      v435 = v1081;
      v436 = v1028;
      v437 = v1082;
      (*(v1081 + 4))(v1028, &v187[*(v434 + 48)], v1082);
      v438 = v1079;
      v435[2](v1079, v436, v437);
      sub_1003E83B8(v438, v1099);
      v439 = swift_getKeyPath();
      v440 = v1086;
      v441 = sub_1003E6ED0(v433);
      v1086 = v440;

      sub_100016EF8(v439, v441, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v983 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v435[1])(v436, v437);
      goto LABEL_417;
    case 0x16u:
      v657 = *v187;
      swift_storeEnumTagMultiPayload();
      v658 = swift_getKeyPath();
      v659 = v1086;
      v660 = sub_1003E6ED0(v657);
      v1086 = v659;

      v661 = &qword_100946088;
      v662 = &unk_1007A7690;
      goto LABEL_414;
    case 0x17u:
      v712 = *v187;
      v713 = sub_1000F5104(&unk_100942AF0, qword_1007A7520);
      v714 = v1081;
      v715 = v1079;
      v716 = v1082;
      (*(v1081 + 4))(v1079, &v187[*(v713 + 48)], v1082);
      v717 = v1073;
      v714[2](v1073, v715, v716);
      sub_1003E83B8(v717, v1099);
      v718 = swift_getKeyPath();
      v719 = [v712 uuid];
      v720 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v244 = 1;
      (*(v1096 + 56))(v720, 0, 1, v1100);
      sub_100390EB8(v718, v720);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (v714[1])(v715, v716);
      goto LABEL_358;
    case 0x18u:
      v339 = *v187;
      v336 = *(v187 + 1);
      swift_storeEnumTagMultiPayload();
      v340 = swift_getKeyPath();
      v341 = sub_100270804(v339);

      sub_100016EF8(v340, v341, &qword_10093CB80, &qword_1007A7680, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v336)
      {
        goto LABEL_58;
      }

      goto LABEL_145;
    case 0x19u:
      v335 = *v187;
      v336 = *(v187 + 1);
      swift_storeEnumTagMultiPayload();
      v337 = swift_getKeyPath();
      v338 = sub_100270804(v335);

      sub_100016EF8(v337, v338, &qword_10093CB80, &qword_1007A7680, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v336)
      {
LABEL_58:
        v342 = swift_getKeyPath();
        v343 = [v336 uuid];
        v344 = v1091;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v1096 + 56))(v344, 0, 1, v1100);
        sub_100390EB8(v342, v344);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
LABEL_136:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

LABEL_145:
      v266 = 0;
      goto LABEL_146;
    case 0x1Au:
      v245 = *v187;
      swift_storeEnumTagMultiPayload();
      v743 = swift_getKeyPath();
      sub_1000F5104(&qword_10093EC20, &unk_10079D338);
      v744 = *(v1098 + 72);
      v745 = (*(v1098 + 80) + 32) & ~*(v1098 + 80);
      v746 = swift_allocObject();
      *(v746 + 16) = xmmword_100791300;
      v747 = [v245 uuid];
      v748 = v1074;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v749 = v1096;
      v750 = v1100;
      (*(v1096 + 32))(v746 + v745, v748, v1100);
      v244 = 1;
      (*(v749 + 56))(v746 + v745, 0, 1, v750);
      sub_100016EF8(v743, v746, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);
      goto LABEL_357;
    case 0x1Bu:
      v255 = *(sub_1000F5104(&qword_100946030, qword_1007A74D0) + 48);
      v256 = v1088;
      v257 = *(v1088 + 32);
      v258 = v1084;
      v259 = v1087;
      v257(v1084, v187, v1087);
      v260 = v1066;
      v257(v1066, &v187[v255], v259);
      swift_storeEnumTagMultiPayload();
      sub_1003EAE5C(v258, v260);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v261 = *(v256 + 8);
      v261(v260, v259);
      v261(v258, v259);
      goto LABEL_417;
    case 0x1Cu:
      v721 = *v187;
      swift_storeEnumTagMultiPayload();
      v722 = swift_getKeyPath();
      if (v721 >> 62)
      {
        v723 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v723 = *((v721 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v723)
      {
        *&v1095 = v722;
        v1101 = _swiftEmptyArrayStorage;
        sub_100253038(v723);
        if (v723 < 0)
        {
LABEL_539:
          __break(1u);
LABEL_540:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          JUMPOUT(0x10004CFC8);
        }

        v724 = 0;
        v725 = (v1096 + 56);
        do
        {
          if ((v721 & 0xC000000000000001) != 0)
          {
            v726 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v726 = *(v721 + 8 * v724 + 32);
          }

          v727 = v726;
          v728 = [v726 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v725)(v171, 0, 1, v1100);
          v729 = v1101;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, v729[2] + 1, 1);
            v729 = v1101;
          }

          v731 = v729[2];
          v730 = v729[3];
          if (v731 >= v730 >> 1)
          {
            sub_100253218(v730 > 1, v731 + 1, 1);
            v729 = v1101;
          }

          ++v724;
          v729[2] = v731 + 1;
          sub_100031B58(v171, v729 + ((*(v1098 + 80) + 32) & ~*(v1098 + 80)) + *(v1098 + 72) * v731, &unk_100939D90, "8\n\r");
        }

        while (v723 != v724);

        v722 = v1095;
      }

      else
      {

        v729 = _swiftEmptyArrayStorage;
      }

      v946 = v722;
      v947 = v729;
      goto LABEL_508;
    case 0x1Du:
      v732 = *v187;
      v733 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v734 = *(v733 + 64);
      v735 = v1064;
      sub_100031B58(&v187[*(v733 + 48)], v1064, &unk_100938850, qword_100795AE0);
      v736 = v1053;
      sub_100031B58(&v187[v734], v1053, &unk_100938850, qword_100795AE0);
      swift_storeEnumTagMultiPayload();
      v737 = v1030;
      sub_100010364(v735, v1030, &unk_100938850, qword_100795AE0);
      v738 = v1088;
      v739 = *(v1088 + 48);
      v740 = v1087;
      if (v739(v737, 1, v1087) == 1)
      {
        sub_1000050A4(v737, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v857 = v1004;
        (*(v738 + 32))(v1004, v737, v740);
        v858 = swift_getKeyPath();
        v859 = v1085;
        (*(v738 + 16))(v1085, v857, v740);
        (*(v738 + 56))(v859, 0, 1, v740);
        sub_1003E9FFC(v858, v859);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v860 = v857;
        v736 = v1053;
        (*(v738 + 8))(v860, v740);
      }

      v861 = v1036;
      sub_100010364(v736, v1036, &unk_100938850, qword_100795AE0);
      if (v739(v861, 1, v740) == 1)
      {
        sub_1000050A4(v861, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v862 = v1088;
        v863 = v1008;
        (*(v1088 + 32))(v1008, v861, v740);
        v864 = swift_getKeyPath();
        v865 = v1085;
        (*(v862 + 16))(v1085, v863, v740);
        (*(v862 + 56))(v865, 0, 1, v740);
        sub_1003EA414(v864, v865);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v862 + 8))(v863, v740);
      }

      v866 = swift_getKeyPath();
      v867 = v1086;
      v868 = sub_1003E6C54(v732);
      v1086 = v867;

      sub_100016EF8(v866, v868, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000050A4(v736, &unk_100938850, qword_100795AE0);
      v856 = v1064;
      goto LABEL_513;
    case 0x1Eu:
      v495 = *v187;
      v496 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v497 = *(v496 + 64);
      v498 = v1065;
      sub_100031B58(&v187[*(v496 + 48)], v1065, &unk_100938850, qword_100795AE0);
      v499 = v1054;
      sub_100031B58(&v187[v497], v1054, &unk_100938850, qword_100795AE0);
      swift_storeEnumTagMultiPayload();
      v500 = v1031;
      sub_100010364(v498, v1031, &unk_100938850, qword_100795AE0);
      v501 = v1088;
      v502 = *(v1088 + 48);
      v503 = v1087;
      if (v502(v500, 1, v1087) == 1)
      {
        sub_1000050A4(v500, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v844 = v1005;
        (*(v501 + 32))(v1005, v500, v503);
        v845 = swift_getKeyPath();
        v846 = v1085;
        (*(v501 + 16))(v1085, v844, v503);
        (*(v501 + 56))(v846, 0, 1, v503);
        sub_1003EA208(v845, v846);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v847 = v844;
        v499 = v1054;
        (*(v501 + 8))(v847, v503);
      }

      v848 = v1038;
      sub_100010364(v499, v1038, &unk_100938850, qword_100795AE0);
      if (v502(v848, 1, v503) == 1)
      {
        sub_1000050A4(v848, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v849 = v1088;
        v850 = v1009;
        (*(v1088 + 32))(v1009, v848, v503);
        v851 = swift_getKeyPath();
        v852 = v1085;
        (*(v849 + 16))(v1085, v850, v503);
        (*(v849 + 56))(v852, 0, 1, v503);
        sub_1003EA818(v851, v852);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(v1104[2]);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v849 + 8))(v850, v503);
      }

      v853 = swift_getKeyPath();
      v854 = v1086;
      v855 = sub_1003E6C54(v495);
      v1086 = v854;

      sub_100016EF8(v853, v855, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000050A4(v499, &unk_100938850, qword_100795AE0);
      v856 = v1065;
      goto LABEL_513;
    case 0x1Fu:
      v392 = *v187;
      swift_storeEnumTagMultiPayload();
      v393 = swift_getKeyPath();
      sub_1000F5104(&unk_100938E80, &unk_1007959D0);
      v394 = swift_allocObject();
      v244 = 1;
      sub_100050238(v394, 1);
      v396 = v395;
      sub_1000060C8(0, &qword_100940350, off_1008D4130);
      v397 = [swift_getObjCClassFromMetadata() entity];
      v396[3] = sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
      *v396 = v397;
      REMCDList.cleanUpAfterLocalObjectMerge()();
      sub_1003EB1AC(v393, 24868, 0xE200000000000000, 0xD000000000000016, 0x80000001007F7EA0, v392, v398);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      goto LABEL_102;
    case 0x20u:
      v504 = *v187;
      v505 = v1083;
      swift_storeEnumTagMultiPayload();
      *&v1095 = v504;
      v1093 = sub_10025D30C(v504);
      if (!v1093)
      {
        goto LABEL_483;
      }

      v507 = 0;
      v1037 = (v1020 + 32);
      v1036 = (v1020 + 16);
      v1035 = (v1020 + 88);
      v1032 = (v1020 + 8);
      v1063 = (v1018 + 8);
      v1062 = (v1018 + 32);
      v1061 = (v1018 + 16);
      v1060 = (v1018 + 88);
      v1067 = (v1019 + 32);
      v1066 = (v1019 + 104);
      *&v506 = 136315138;
      v1068 = v506;
      v1074 = (v1019 + 8);
      LODWORD(v1092) = enum case for REMSearchCriterion.itemTypes(_:);
      LODWORD(v1089) = enum case for REMSearchCriterion.objectID(_:);
      LODWORD(v1081) = enum case for REMSearchCriterion.accountID(_:);
      LODWORD(v1073) = enum case for REMSearchCriterion.listID(_:);
      LODWORD(v1065) = enum case for REMSearchCriterion.textualField(_:);
      LODWORD(v1059) = enum case for REMSearchCriterion.displayName(_:);
      LODWORD(v1054) = enum case for REMSearchCriterion.isCompleted(_:);
      LODWORD(v1052) = enum case for REMSearchCriterion.completionDate(_:);
      LODWORD(v1048) = enum case for REMSearchCriterion.hasLocation(_:);
      LODWORD(v1047) = enum case for REMSearchCriterion.location(_:);
      LODWORD(v1045) = enum case for REMSearchCriterion.dueDate(_:);
      LODWORD(v1044) = enum case for REMSearchCriterion.hasDueDate(_:);
      LODWORD(v1043) = enum case for REMSearchCriterion.modifiedDate(_:);
      LODWORD(v1042) = enum case for REMSearchCriterion.creationDate(_:);
      LODWORD(v1041) = enum case for REMSearchCriterion.isRecurrent(_:);
      LODWORD(v1040) = enum case for REMSearchCriterion.isFlagged(_:);
      LODWORD(v1039) = enum case for REMSearchCriterion.spotlightItemIdentifier(_:);
      LODWORD(v1038) = enum case for REMSearchCriterion.daCalendarItemUniqueIdentifier(_:);
      v505 = v1083;
      LODWORD(v1034) = enum case for REMSearchCriterion.listType(_:);
      LODWORD(v1033) = enum case for REMSearchableListType.grocery(_:);
      LODWORD(v1031) = enum case for REMSearchableListType.none(_:);
      LODWORD(v1058) = enum case for REMStringMatchingStyle.exact(_:);
      LODWORD(v1053) = enum case for REMStringMatchingStyle.prefix(_:);
      LODWORD(v1049) = enum case for REMStringMatchingStyle.word(_:);
      LODWORD(v1064) = enum case for REMSearchCriterion.Inclusion.includeForSiri(_:);
      v299 = v1075;
      v1090 = v1075 + 88;
      v1082 = v1075 + 96;
      *&v1098 = v1075 + 8;
      v1046 = (v1088 + 48);
      v1057 = (v1096 + 56);
      v508 = v1076;
      v298 = v1080;
      v509 = v1077;
      v510 = v1078;
      v1079 = (v1075 + 16);
      while (2)
      {
        if (v507 < *(v1095 + 16))
        {
          v512 = *(v299 + 2);
          v512(v510, v1095 + ((v299[80] + 32) & ~v299[80]) + *(v299 + 9) * v507, v508);
          v512(v509, v510, v508);
          v513 = (*(v299 + 11))(v509, v508);
          if (v513 == v1092)
          {
            v511 = *v1098;
            (*v1098)(v510, v508);
            v511(v509, v508);
            v505 = v1083;
            v199 = 0x4F4E203D3D204B25;
            goto LABEL_155;
          }

          if (v513 == v1089)
          {
            (*v1082)(v509, v508);
            v514 = *v509;
            v515 = swift_getKeyPath();
            v516 = v1086;
            v517 = sub_1003E6C54(v514);
            v1086 = v516;

            sub_100016EF8(v515, v517, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (v1104[2] >= v1104[3] >> 1)
            {
              v607 = v1104[2];
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v510 = v1078;
            (*v1098)(v1078, v508);
LABEL_162:
            v199 = 0x4F4E203D3D204B25;
LABEL_163:
            v298 = v1080;
LABEL_164:
            v509 = v1077;
            v505 = v1083;
            goto LABEL_155;
          }

          if (v513 == v1081)
          {
            (*v1098)(v509, v508);
LABEL_167:
            if (qword_100936028 != -1)
            {
              swift_once();
            }

            v518 = type metadata accessor for Logger();
            sub_100006654(v518, qword_100945FD0);
            v512(v298, v510, v508);
            v519 = Logger.logObject.getter();
            v520 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v519, v520))
            {
              v521 = swift_slowAlloc();
              v522 = swift_slowAlloc();
              v1101 = v522;
              *v521 = v1068;
              v512(v1056, v1080, v508);
              v523 = String.init<A>(describing:)();
              v525 = v524;
              v526 = *v1098;
              (*v1098)(v1080, v1076);
              v527 = sub_10000668C(v523, v525, &v1101);

              *(v521 + 4) = v527;
              v299 = v1075;
              _os_log_impl(&_mh_execute_header, v519, v520, "Dropping unsupported criterion for searching REMCDReminder. {criterion: %s}", v521, 0xCu);
              sub_10000607C(v522);
              v298 = v1080;

              v509 = v1077;

              v510 = v1078;
              v526(v1078, v1076);
              v508 = v1076;
              v199 = 0x4F4E203D3D204B25;
            }

            else
            {

              v536 = *v1098;
              (*v1098)(v298, v508);
              v537 = v299;
              v538 = v507;
              v539 = v298;
              v540 = v1078;
              v536(v1078, v508);
              v199 = 0x4F4E203D3D204B25;
              v510 = v540;
              v298 = v539;
              v507 = v538;
              v299 = v537;
            }

            goto LABEL_177;
          }

          if (v513 == v1073)
          {
            (*v1082)(v509, v508);
            v1070 = *v509;
            v528 = sub_1000F5104(&qword_100946020, &unk_1007A73E8);
            v529 = v1072;
            (*v1067)(v1071, &v509[*(v528 + 48)], v1072);
            v530 = v1050;
            (*v1066)(v1050, v1064, v529);
            v531 = static REMSearchCriterion.Inclusion.== infix(_:_:)();
            v1069 = *v1074;
            (v1069)(v530, v529);
            if ((v531 & 1) == 0)
            {
              if (qword_100936028 != -1)
              {
                swift_once();
              }

              v550 = type metadata accessor for Logger();
              sub_100006654(v550, qword_100945FD0);
              v551 = v1011;
              v510 = v1078;
              v512(v1011, v1078, v508);
              v552 = Logger.logObject.getter();
              v553 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v552, v553))
              {
                v554 = v551;
                v555 = swift_slowAlloc();
                v1030 = swift_slowAlloc();
                v1101 = v1030;
                *v555 = v1068;
                v512(v1056, v551, v508);
                v556 = String.init<A>(describing:)();
                v558 = v557;
                v559 = *v1098;
                (*v1098)(v554, v1076);
                v560 = sub_10000668C(v556, v558, &v1101);
                v508 = v1076;

                *(v555 + 4) = v560;
                _os_log_impl(&_mh_execute_header, v552, v553, "Dropping unsupported criterion for searching REMCDReminder. {criterion: %s}", v555, 0xCu);
                sub_10000607C(v1030);
                v299 = v1075;

                v510 = v1078;

                (v1069)(v1071, v1072);
                v559(v510, v508);
              }

              else
              {

                v564 = *v1098;
                (*v1098)(v551, v508);
                (v1069)(v1071, v1072);
                v564(v510, v508);
              }

              goto LABEL_162;
            }

            v532 = swift_getKeyPath();
            v533 = v1070;
            v534 = [v1070 uuid];
            v535 = v1091;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v1057)(v535, 0, 1, v1100);
            sub_100390EB8(v532, v535);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (v1104[2] >= v1104[3] >> 1)
            {
              v622 = v1104[2];
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            (v1069)(v1071, v1072);
            v510 = v1078;
            (*v1098)(v1078, v508);
            v199 = 0x4F4E203D3D204B25;
            v298 = v1080;
            v505 = v1083;
LABEL_155:
            if (v1093 == ++v507)
            {
LABEL_483:

              sub_1003EB670(v505, v1099);
              goto LABEL_514;
            }

            continue;
          }

          if (v513 == v1065)
          {
            (*v1082)(v509, v508);
            v541 = v509;
            v542 = *v509;
            v543 = *(v509 + 1);
            v544 = &v541[*(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48)];
            v545 = v1051;
            v546 = v1055;
            (*v1062)(v1051, v544, v1055);
            v547 = v1012;
            (*v1061)(v1012, v545, v546);
            v548 = (*v1060)(v547, v546);
            if (v548 != v1058)
            {
              v199 = 0x4F4E203D3D204B25;
              v299 = v1075;
              if (v548 != v1053 && v548 != v1049)
              {
                goto LABEL_540;
              }

              v563 = swift_getKeyPath();
              sub_1003EEA00(v563, v542, v543, 6, &unk_100939F10, &qword_100797F30);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v298 = v1080;
              if (v1104[2] >= v1104[3] >> 1)
              {
                v629 = v1104[2];
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              (*v1063)(v1051, v1055);
              v510 = v1078;
              (*v1098)(v1078, v508);
              goto LABEL_164;
            }

            v549 = swift_getKeyPath();
            sub_1003910F4(v549, v542, v543);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v199 = 0x4F4E203D3D204B25;
            v299 = v1075;
            if (v1104[2] >= v1104[3] >> 1)
            {
              v628 = v1104[2];
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (*v1063)(v1051, v1055);
            v510 = v1078;
            (*v1098)(v1078, v508);
            goto LABEL_163;
          }

          if (v513 == v1059)
          {
            (*v1082)(v509, v508);
            v561 = *(v509 + 1);

            v562 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
            (*v1063)(&v509[*(v562 + 48)], v1055);
            goto LABEL_167;
          }

          if (v513 == v1054)
          {
            (*v1098)(v510, v508);
            sub_1000504F8(v505, _s10PredicatesO19CompletionPredicateOMa);
            (*v1082)(v509, v508);
            v199 = 0x4F4E203D3D204B25;
            *v509;
            swift_storeEnumTagMultiPayload();
            goto LABEL_155;
          }

          v199 = 0x4F4E203D3D204B25;
          if (v513 == v1052)
          {
            (*v1082)(v509, v508);
            if (qword_100936028 != -1)
            {
              swift_once();
            }

            v565 = type metadata accessor for Logger();
            sub_100006654(v565, qword_100945FD0);

            v1070 = Logger.logObject.getter();
            v566 = static os_log_type_t.fault.getter();

            LODWORD(v1069) = v566;
            if (os_log_type_enabled(v1070, v566))
            {
              v567 = swift_slowAlloc();
              v568 = swift_slowAlloc();
              v1101 = v568;
              *v567 = v1068;
              v569 = Array.description.getter();
              v571 = sub_10000668C(v569, v570, &v1101);
              v299 = v1075;

              *(v567 + 4) = v571;
              v199 = 0x4F4E203D3D204B25;
              v572 = v1070;
              _os_log_impl(&_mh_execute_header, v1070, v1069, "Searching REMCDReminder by completionDate is unsupported. {criteria: %s}", v567, 0xCu);
              sub_10000607C(v568);
              v298 = v1080;

              v510 = v1078;
            }

            else
            {
            }

            (*v1098)(v510, v508);
            v583 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
            v509 = v1077;
            sub_1000050A4(v1077 + *(v583 + 48), &unk_100938850, qword_100795AE0);
            v584 = v509;
LABEL_211:
            sub_1000050A4(v584, &unk_100938850, qword_100795AE0);
LABEL_177:
            v505 = v1083;
            goto LABEL_155;
          }

          if (v513 == v1048)
          {
LABEL_205:
            if (qword_100936028 != -1)
            {
              swift_once();
            }

            v575 = type metadata accessor for Logger();
            sub_100006654(v575, qword_100945FD0);

            v1070 = Logger.logObject.getter();
            v576 = static os_log_type_t.fault.getter();

            LODWORD(v1069) = v576;
            if (os_log_type_enabled(v1070, v576))
            {
              v577 = swift_slowAlloc();
              v578 = swift_slowAlloc();
              v1101 = v578;
              *v577 = v1068;
              v579 = Array.description.getter();
              v581 = sub_10000668C(v579, v580, &v1101);
              v299 = v1075;

              *(v577 + 4) = v581;
              v199 = 0x4F4E203D3D204B25;
              v582 = v1070;
              _os_log_impl(&_mh_execute_header, v1070, v1069, "Searching REMCDReminder by location is unsupported. {criteria: %s}", v577, 0xCu);
              sub_10000607C(v578);
              v298 = v1080;

              v510 = v1078;
            }

            else
            {
            }

            (*v1098)(v510, v508);
            goto LABEL_164;
          }

          if (v513 == v1047)
          {
            (*v1082)(v509, v508);
            v573 = *(v509 + 1);

            v574 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
            (*v1063)(&v509[*(v574 + 48)], v1055);
            goto LABEL_205;
          }

          if (v513 == v1045)
          {
            (*v1082)(v509, v508);
            v585 = *(sub_1000F5104(&qword_100938C18, &qword_1007957A0) + 48);
            v586 = v998;
            sub_100031B58(v509, v998, &unk_100938850, qword_100795AE0);
            sub_100031B58(&v509[v585], v997, &unk_100938850, qword_100795AE0);
            v587 = *v1046;
            if ((*v1046)(v586, 1, v1087) != 1)
            {
              v588 = v587;
              v589 = swift_getKeyPath();
              v590 = v1085;
              sub_100010364(v998, v1085, &unk_100938850, qword_100795AE0);
              sub_1003EA208(v589, v590);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (v1104[2] >= v1104[3] >> 1)
              {
                v645 = v1104[2];
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v298 = v1080;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v509 = v1077;
              v587 = v588;
            }

            v591 = v997;
            v592 = v587(v997, 1, v1087);
            v510 = v1078;
            if (v592 != 1)
            {
              v593 = swift_getKeyPath();
              v594 = v1085;
              sub_100010364(v591, v1085, &unk_100938850, qword_100795AE0);
              sub_1003EA414(v593, v594);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (v1104[2] >= v1104[3] >> 1)
              {
                v646 = v1104[2];
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v510 = v1078;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v509 = v1077;
            }

            (*v1098)(v510, v508);
            sub_1000050A4(v591, &unk_100938850, qword_100795AE0);
            v584 = v998;
            goto LABEL_211;
          }

          if (v513 == v1044)
          {
            (*v1082)(v509, v508);
            v595 = *v509;
            v596 = swift_getKeyPath();
            if (v595 == 1)
            {
              v597 = 555764517;
            }

            else
            {
              v597 = 1025526565;
            }

            sub_10000E72C(v596, v597 | 0x696E203D00000000, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);
            goto LABEL_239;
          }

          if (v513 == v1043)
          {
            v598 = v1077;
            (*v1082)(v1077, v1076);
            v599 = *(sub_1000F5104(&qword_100938C18, &qword_1007957A0) + 48);
            v600 = v995;
            sub_100031B58(v598, v995, &unk_100938850, qword_100795AE0);
            sub_100031B58(v598 + v599, v996, &unk_100938850, qword_100795AE0);
            v601 = *v1046;
            if ((*v1046)(v600, 1, v1087) != 1)
            {
              v602 = swift_getKeyPath();
              v603 = v1085;
              sub_100010364(v995, v1085, &unk_100938850, qword_100795AE0);
              sub_1003EA208(v602, v603);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (v1104[2] >= v1104[3] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            if (v601(v996, 1, v1087) != 1)
            {
              v604 = swift_getKeyPath();
              v605 = v1085;
              sub_100010364(v996, v1085, &unk_100938850, qword_100795AE0);
              sub_1003EA414(v604, v605);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (v1104[2] >= v1104[3] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            v510 = v1078;
            v508 = v1076;
            (*v1098)(v1078, v1076);
            sub_1000050A4(v996, &unk_100938850, qword_100795AE0);
            v606 = v995;
          }

          else
          {
            if (v513 != v1042)
            {
              if (v513 == v1041)
              {
                v616 = v1077;
                (*v1082)(v1077, v1076);
                v617 = *v616;
                v618 = swift_getKeyPath();
                if (v617 == 1)
                {
                  sub_10004D350(v618, 0);
                }

                else
                {
                  sub_10004D178(v618, 0);
                }
              }

              else if (v513 == v1040)
              {
                v619 = v1077;
                (*v1082)(v1077, v1076);
                v620 = *v619;
                v621 = swift_getKeyPath();
                if (v620 == 1)
                {
                  sub_1003EB48C(v621, 0);
                }

                else
                {
                  sub_100390F14(v621, 0);
                }
              }

              else
              {
                if (v513 == v1039)
                {
                  v623 = *v1098;
                  (*v1098)(v1077, v1076);
                  if (qword_100936028 != -1)
                  {
                    swift_once();
                  }

                  v624 = type metadata accessor for Logger();
                  sub_100006654(v624, qword_100945FD0);
                  v625 = Logger.logObject.getter();
                  v626 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v625, v626))
                  {
                    v627 = swift_slowAlloc();
                    *v627 = 0;
                    _os_log_impl(&_mh_execute_header, v625, v626, "Searching by spotlightItemIdentifier in CoreData is unsupported", v627, 2u);
                  }

                  v510 = v1078;
                  v508 = v1076;
                  v623(v1078, v1076);
                  v299 = v1075;
                  goto LABEL_163;
                }

                if (v513 != v1038)
                {
                  if (v513 != v1034)
                  {
                    goto LABEL_540;
                  }

                  v634 = v1077;
                  (*v1082)(v1077, v1076);
                  v635 = v991;
                  v636 = v634;
                  v637 = v992;
                  (*v1037)(v991, v636, v992);
                  v638 = v990;
                  (*v1036)(v990, v635, v637);
                  v639 = (*v1035)(v638, v637);
                  if (v639 == v1033)
                  {
                    v640 = swift_getKeyPath();
                    sub_10000E72C(v640, 0x4559203D3D204B25, 0xE900000000000053, &unk_100939F10, &qword_100797F30);

                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (v1104[2] >= v1104[3] >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  }

                  else
                  {
                    if (v639 != v1031)
                    {
                      goto LABEL_540;
                    }

                    if (qword_100936028 != -1)
                    {
                      swift_once();
                    }

                    v641 = type metadata accessor for Logger();
                    sub_100006654(v641, qword_100945FD0);
                    v642 = Logger.logObject.getter();
                    v643 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v642, v643))
                    {
                      v644 = swift_slowAlloc();
                      *v644 = 0;
                      _os_log_impl(&_mh_execute_header, v642, v643, "Dropping unsupported .none list type criterion", v644, 2u);
                    }
                  }

                  (*v1032)(v991, v992);
                  goto LABEL_242;
                }

                v630 = v1077;
                (*v1082)(v1077, v1076);
                v631 = *v630;
                v632 = v630[1];
                v633 = swift_getKeyPath();
                sub_1003910F4(v633, v631, v632);
              }

LABEL_239:

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (v1104[2] >= v1104[3] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_242:
              v510 = v1078;
              v508 = v1076;
              (*v1098)(v1078, v1076);
              v299 = v1075;
              goto LABEL_163;
            }

            v608 = v1077;
            (*v1082)(v1077, v1076);
            v609 = *(sub_1000F5104(&qword_100938C18, &qword_1007957A0) + 48);
            v610 = v993;
            sub_100031B58(v608, v993, &unk_100938850, qword_100795AE0);
            sub_100031B58(v608 + v609, v994, &unk_100938850, qword_100795AE0);
            v611 = *v1046;
            if ((*v1046)(v610, 1, v1087) != 1)
            {
              v612 = swift_getKeyPath();
              v613 = v1085;
              sub_100010364(v993, v1085, &unk_100938850, qword_100795AE0);
              sub_1003EA208(v612, v613);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (v1104[2] >= v1104[3] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            if (v611(v994, 1, v1087) != 1)
            {
              v614 = swift_getKeyPath();
              v615 = v1085;
              sub_100010364(v994, v1085, &unk_100938850, qword_100795AE0);
              sub_1003EA414(v614, v615);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (v1104[2] >= v1104[3] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            v510 = v1078;
            v508 = v1076;
            (*v1098)(v1078, v1076);
            sub_1000050A4(v994, &unk_100938850, qword_100795AE0);
            v606 = v993;
          }

          sub_1000050A4(v606, &unk_100938850, qword_100795AE0);
          v299 = v1075;
          goto LABEL_163;
        }

        break;
      }

      __break(1u);
LABEL_519:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_51:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v298 + 1))(v199, v299);
      goto LABEL_417;
    case 0x21u:
      v295 = *v187;
      v296 = v187[8];
      LODWORD(v271) = (v296 - 2) < 5 || (v296 & 1) == 0;
      swift_storeEnumTagMultiPayload();
      v789 = swift_getKeyPath();
      v790 = [v295 uuid];
      v791 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v792 = *(v1096 + 56);
      LODWORD(v1098) = 1;
      v792(v791, 0, 1, v1100);
      sub_100390EB8(v789, v791);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v244 = 0;
      goto LABEL_438;
    case 0x22u:
      v228 = *v187;
      swift_storeEnumTagMultiPayload();
      v262 = swift_getKeyPath();
      v263 = [v228 uuid];
      v264 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v265 = *(v1096 + 56);
      LODWORD(v1098) = 1;
      v265(v264, 0, 1, v1100);
      sub_100390EB8(v262, v264);
      goto LABEL_19;
    case 0x23u:
      v245 = *v187;
      swift_storeEnumTagMultiPayload();
      v246 = swift_getKeyPath();
      v247 = [v245 uuid];
      v248 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v244 = 1;
      (*(v1096 + 56))(v248, 0, 1, v1100);
      sub_100390EB8(v246, v248);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v249 = swift_getKeyPath();
      sub_100391108(v249, 1);
LABEL_357:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_358;
    case 0x24u:
      v228 = *v187;
      swift_storeEnumTagMultiPayload();
      v250 = swift_getKeyPath();
      v251 = [v228 uuid];
      v252 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v253 = *(v1096 + 56);
      LODWORD(v1098) = 1;
      v253(v252, 0, 1, v1100);
      sub_100390EB8(v250, v252);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v254 = swift_getKeyPath();
      sub_1003EB48C(v254, 0);
      goto LABEL_19;
    case 0x25u:
      v228 = *v187;
      swift_storeEnumTagMultiPayload();
      v229 = swift_getKeyPath();
      v230 = [v228 uuid];
      v231 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v232 = *(v1096 + 56);
      LODWORD(v1098) = 1;
      v232(v231, 0, 1, v1100);
      sub_100390EB8(v229, v231);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v233 = swift_getKeyPath();
      sub_10004D350(v233, 0);
LABEL_19:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v266 = 0;
      v244 = 0;
      goto LABEL_419;
    case 0x26u:
      v741 = *v187;
      v742 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
      v296 = v187[*(v742 + 64)];
      sub_1003EB670(&v187[*(v742 + 48)], v199);
      LODWORD(v271) = (v296 - 2) < 5 || (v296 & 1) == 0;
      sub_10004DCBC(v199, v1099, _s10PredicatesO19CompletionPredicateOMa);
      v801 = swift_getKeyPath();
      v802 = [v741 uuid];
      v803 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1096 + 56))(v803, 0, 1, v1100);
      sub_100390EB8(v801, v803);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_1000504F8(v199, _s10PredicatesO19CompletionPredicateOMa);
LABEL_374:
      v244 = 0;
      LODWORD(v1098) = 0;
      goto LABEL_438;
    case 0x27u:
      v664 = *v187;
      v665 = sub_1000F5104(&qword_100946018, qword_1007A71C8);
      sub_100031B58(&v187[*(v665 + 48)], v1059, &unk_100938850, qword_100795AE0);
      v666 = swift_getKeyPath();
      if (v664 >> 62)
      {
        v667 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v667 = *((v664 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v668 = v1099;
      v669 = v1087;
      if (v667)
      {
        *&v1095 = v666;
        v1101 = _swiftEmptyArrayStorage;
        sub_100253038(v667);
        if (v667 < 0)
        {
LABEL_536:
          __break(1u);
          goto LABEL_537;
        }

        v670 = 0;
        v671 = (v1096 + 56);
        do
        {
          if ((v664 & 0xC000000000000001) != 0)
          {
            v672 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v672 = *(v664 + 8 * v670 + 32);
          }

          v673 = v672;
          v674 = [v672 uuid];
          v675 = v1090;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v671)(v675, 0, 1, v1100);
          v676 = v1101;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, v676[2] + 1, 1);
            v676 = v1101;
          }

          v678 = v676[2];
          v677 = v676[3];
          if (v678 >= v677 >> 1)
          {
            sub_100253218(v677 > 1, v678 + 1, 1);
            v676 = v1101;
          }

          ++v670;
          v676[2] = v678 + 1;
          sub_100031B58(v1090, v676 + ((*(v1098 + 80) + 32) & ~*(v1098 + 80)) + *(v1098 + 72) * v678, &unk_100939D90, "8\n\r");
        }

        while (v667 != v670);

        v669 = v1087;
        v668 = v1099;
        v666 = v1095;
      }

      else
      {

        v676 = _swiftEmptyArrayStorage;
      }

      sub_100016EF8(v666, v676, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v948 = v1021;
      sub_100031B58(v1059, v1021, &unk_100938850, qword_100795AE0);
      v949 = v1088;
      if ((*(v1088 + 48))(v948, 1, v669) == 1)
      {
        sub_1000050A4(v948, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v950 = *(v949 + 32);
        v951 = v999;
        v950(v999, v948, v669);
        v950(v668, v951, v669);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_493;
    case 0x28u:
      v322 = *v187;
      v321 = *(v187 + 1);
      v323 = sub_1000F5104(&qword_100946010, &qword_1007A71C0);
      v324 = v1039;
      sub_100031B58(&v187[*(v323 + 64)], v1039, &unk_100938850, qword_100795AE0);
      v325 = v1034;
      sub_100010364(v324, v1034, &unk_100938850, qword_100795AE0);
      v326 = v1088;
      v327 = v1087;
      if ((*(v1088 + 48))(v325, 1, v1087) == 1)
      {
        sub_1000050A4(v325, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v821 = *(v326 + 32);
        v822 = v1001;
        v821(v1001, v325, v327);
        v821(v1099, v822, v327);
      }

      swift_storeEnumTagMultiPayload();
      v823 = v1084;
      Date.init()();
      sub_10023343C(v823);
      (*(v326 + 8))(v823, v327);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v824 = swift_getKeyPath();
      v825 = [v321 uuid];
      v826 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v244 = 1;
      (*(v1096 + 56))(v826, 0, 1, v1100);
      sub_100390EB8(v824, v826);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_517;
    case 0x29u:
      v401 = *v187;
      v402 = &v187[*(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48)];
      v403 = v1060;
      sub_100031B58(v402, v1060, &unk_100938850, qword_100795AE0);
      v404 = v1037;
      sub_100010364(v403, v1037, &unk_100938850, qword_100795AE0);
      v405 = v1088;
      v406 = v1087;
      if ((*(v1088 + 48))(v404, 1, v1087) == 1)
      {
        sub_1000050A4(v404, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v831 = *(v405 + 32);
        v832 = v1002;
        v831(v1002, v404, v406);
        v831(v1099, v832, v406);
      }

      swift_storeEnumTagMultiPayload();
      v833 = swift_getKeyPath();
      if (v401 >> 62)
      {
        v834 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v834 = *((v401 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v834)
      {
        *&v1095 = v833;
        v1101 = _swiftEmptyArrayStorage;
        sub_100253038(v834);
        if (v834 < 0)
        {
LABEL_532:
          __break(1u);
          goto LABEL_533;
        }

        v835 = 0;
        v836 = (v1096 + 56);
        do
        {
          if ((v401 & 0xC000000000000001) != 0)
          {
            v837 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v837 = *(v401 + 8 * v835 + 32);
          }

          v838 = v837;
          v839 = [v837 uuid];
          v840 = v1092;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v836)(v840, 0, 1, v1100);
          v841 = v1101;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, v841[2] + 1, 1);
            v841 = v1101;
          }

          v843 = v841[2];
          v842 = v841[3];
          if (v843 >= v842 >> 1)
          {
            sub_100253218(v842 > 1, v843 + 1, 1);
            v841 = v1101;
          }

          ++v835;
          v841[2] = v843 + 1;
          sub_100031B58(v1092, v841 + ((*(v1098 + 80) + 32) & ~*(v1098 + 80)) + *(v1098 + 72) * v843, &unk_100939D90, "8\n\r");
        }

        while (v834 != v835);

        v833 = v1095;
      }

      else
      {

        v841 = _swiftEmptyArrayStorage;
      }

      sub_100016EF8(v833, v841, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v856 = v1060;
LABEL_513:
      sub_1000050A4(v856, &unk_100938850, qword_100795AE0);
LABEL_514:
      v266 = 0;
      v244 = 1;
LABEL_515:
      LODWORD(v1098) = 1;
      LOBYTE(v271) = 1;
      goto LABEL_420;
    case 0x2Au:
      v697 = *v187;
      swift_storeEnumTagMultiPayload();
      v698 = swift_getKeyPath();
      v699 = sub_100270804(v697);

      sub_100016EF8(v698, v699, &qword_10093CB80, &qword_1007A7680, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v700 = _swiftEmptyArrayStorage;
      v1101 = _swiftEmptyArrayStorage;
      v701 = static CharacterSet.hashtagTokenPrefixCharacterArray.getter();
      v702 = *(v701 + 16);
      if (v702)
      {
        v1103 = _swiftEmptyArrayStorage;
        sub_100253020(v702);
        v703 = 32;
        v700 = v1103;
        v704 = v1086;
        do
        {
          v705 = *(v701 + v703);
          v706 = sub_1003E9E88();
          v708 = v707;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100026EF4(0, v700[2] + 1, 1);
            v700 = v1103;
          }

          v710 = v700[2];
          v709 = v700[3];
          if (v710 >= v709 >> 1)
          {
            sub_100026EF4((v709 > 1), v710 + 1, 1);
            v700 = v1103;
          }

          v700[2] = v710 + 1;
          v711 = &v700[2 * v710];
          v711[4] = v706;
          v711[5] = v708;
          v703 += 4;
          --v702;
        }

        while (v702);
      }

      else
      {

        v704 = v1086;
      }

      v952 = sub_10025D30C(v700);
      v1086 = v704;
      if (v952)
      {
        v953 = v952;
        if (v952 < 1)
        {
LABEL_538:
          __break(1u);
          goto LABEL_539;
        }

        *&v1095 = v700;
        v954 = v700 + 5;
        v1098 = xmmword_100791340;
        do
        {
          v955 = *(v954 - 1);
          v956 = *v954;
          v957 = swift_getKeyPath();
          sub_1000F5104(&qword_100946000, qword_1007A7178);
          v958 = swift_initStackObject();
          v959 = v1098;
          *(v958 + 16) = v1098;
          *(v958 + 32) = v959;
          swift_setDeallocating();
          swift_deallocClassInstance();
          swift_bridgeObjectRetain_n();
          sub_1003EEA00(v957, v955, v956, 6, &unk_100939F10, &qword_100797F30);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_10004F91C(v1101[2]);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v960 = swift_getKeyPath();
          v961 = swift_initStackObject();
          v962 = sub_100050238(v961, 2);
          *v963 = v1098;
          v964 = *(v962 + 32);
          v965 = *(v962 + 40);

          if ((v965 & ~v964) != 0)
          {
            v966 = v965;
          }

          else
          {
            v966 = 0;
          }

          sub_1003EEA00(v960, v955, v956, v966 | v964, &unk_100939F10, &qword_100797F30);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_10004F91C(v1101[2]);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v954 += 2;
          --v953;
        }

        while (v953);
        v967 = v1101;
      }

      else
      {

        v967 = _swiftEmptyArrayStorage;
      }

      sub_100024F24(v967);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      goto LABEL_509;
    case 0x2Bu:
      *v187;
      swift_storeEnumTagMultiPayload();
      sub_1003EB670(v196, v1099);
      v1101 = _swiftEmptyArrayStorage;
      v205 = static CharacterSet.hashtagTokenPrefixCharacterArray.getter();
      v206 = v1086;
      v207 = sub_1003E7318(v205);

      v208 = sub_10025D30C(v207);
      if (v208)
      {
        v209 = v208;
        *&v1095 = v206;
        if (v208 >= 1)
        {
          v1093 = v207;
          v210 = v207 + 5;
          v1098 = xmmword_100791340;
          do
          {
            v212 = *(v210 - 1);
            v211 = *v210;
            v213 = swift_getKeyPath();
            sub_1000F5104(&qword_100946000, qword_1007A7178);
            v214 = swift_initStackObject();
            v215 = v1098;
            *(v214 + 16) = v1098;
            *(v214 + 32) = v215;
            swift_setDeallocating();
            swift_deallocClassInstance();
            swift_bridgeObjectRetain_n();
            sub_1003EEA00(v213, v212, v211, 6, &unk_100939F10, &qword_100797F30);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_10004F91C(v1101[2]);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v216 = swift_getKeyPath();
            v217 = swift_initStackObject();
            v218 = sub_100050238(v217, 2);
            *v219 = v1098;
            v220 = *(v218 + 32);
            v221 = *(v218 + 40);

            if ((v221 & ~v220) != 0)
            {
              v222 = v221;
            }

            else
            {
              v222 = 0;
            }

            sub_1003EEA00(v216, v212, v211, v222 | v220, &unk_100939F10, &qword_100797F30);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_10004F91C(v1101[2]);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v210 += 2;
            --v209;
          }

          while (v209);
          v223 = v1101;

          v206 = v1095;
          break;
        }

        __break(1u);
LABEL_529:
        __break(1u);
LABEL_530:
        __break(1u);
        goto LABEL_531;
      }

      v223 = _swiftEmptyArrayStorage;
      break;
    case 0x2Cu:
      v273 = *v187;
      v274 = *(v187 + 1);
      v187[16];
      swift_storeEnumTagMultiPayload();
      sub_1003EB670(v193, v1099);
      v1103 = _swiftEmptyArrayStorage;
      v275 = static CharacterSet.hashtagTokenPrefixCharacterArray.getter();
      v206 = v1086;
      v276 = sub_1003E7318(v275);

      v277 = sub_10025D30C(v276);
      if (v277)
      {
        v1093 = v274;
        v1092 = v273;
        v1090 = v206;
        if (v277 >= 1)
        {
          v1089 = v276;
          v278 = v276 + 5;
          v279 = v1093;
          do
          {
            *&v1098 = v277;
            v280 = *(v278 - 1);
            v281 = *v278;
            v282 = swift_getKeyPath();
            *&v1095 = v280;
            v1101 = v280;
            v1102 = v281;
            swift_bridgeObjectRetain_n();
            v283 = v1092;
            v284._countAndFlagsBits = v1092;
            v284._object = v279;
            String.append(_:)(v284);
            sub_1003EEA00(v282, v1101, v1102, 2, &unk_100939F10, &qword_100797F30);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (v1103[2] >= v1103[3] >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v285 = swift_getKeyPath();
            v1101 = v1095;
            v1102 = v281;
            v286._countAndFlagsBits = v283;
            v286._object = v279;
            String.append(_:)(v286);
            sub_1003EEA00(v285, v1101, v1102, 2, &unk_100939F10, &qword_100797F30);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (v1103[2] >= v1103[3] >> 1)
            {
              v287 = v1103[2];
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v278 += 2;
            v277 = v1098 - 1;
          }

          while (v1098 != 1);
          v223 = v1103;

          v206 = v1090;
          break;
        }

        goto LABEL_529;
      }

      v223 = _swiftEmptyArrayStorage;
      break;
    case 0x2Du:
      v647 = *v187;
      swift_storeEnumTagMultiPayload();
      v648 = swift_getKeyPath();
      sub_10000E72C(v648, 0x696E203D21204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v647 >> 62)
      {
        v649 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v649 = *((v647 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v649)
      {
        v1101 = _swiftEmptyArrayStorage;
        sub_100253050(v649);
        if (v649 < 0)
        {
LABEL_535:
          __break(1u);
          goto LABEL_536;
        }

        v650 = 0;
        do
        {
          if ((v647 & 0xC000000000000001) != 0)
          {
            v651 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v651 = *(v647 + 8 * v650 + 32);
          }

          v652 = v651;
          v653 = [v651 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v654 = v1101;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253258(0, v654[2] + 1, 1);
            v654 = v1101;
          }

          v656 = v654[2];
          v655 = v654[3];
          if (v656 >= v655 >> 1)
          {
            sub_100253258(v655 > 1, v656 + 1, 1);
            v654 = v1101;
          }

          ++v650;
          v654[2] = v656 + 1;
          (*(v1096 + 32))(v654 + ((*(v1096 + 80) + 32) & ~*(v1096 + 80)) + *(v1096 + 72) * v656, v1093, v1100);
          v1101 = v654;
        }

        while (v649 != v650);
      }

      else
      {

        v654 = _swiftEmptyArrayStorage;
      }

      v944 = swift_getKeyPath();
      v945 = sub_10004FAEC(v654);

      v946 = v944;
      v947 = v945;
LABEL_508:
      sub_100016EF8(v946, v947, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
LABEL_509:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_514;
    case 0x2Eu:
      v324 = v1044;
      sub_100031B58(v187, v1044, &unk_100938850, qword_100795AE0);
      swift_storeEnumTagMultiPayload();
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v751 = swift_initStackObject();
      sub_100050238(v751, 2);
      v753 = v752;
      v754 = swift_getKeyPath();
      v755 = sub_10000E72C(v754, 0x696E203D21204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);

      *v753 = v755;
      v756 = swift_initStackObject();
      sub_100050238(v756, 2);
      v758 = v757;
      v759 = swift_getKeyPath();
      v760 = sub_10000E72C(v759, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

      *v758 = v760;
      v761 = swift_getKeyPath();
      v762 = sub_10004D350(v761, 0);

      v758[1] = v762;
      REMCDList.cleanUpAfterLocalObjectMerge()();
      v764 = sub_10000C2B0(v763);
      if (v764)
      {
        v765 = v764;
        v766 = [objc_opt_self() notPredicateWithSubpredicate:v764];
      }

      else
      {
        v766 = 0;
      }

      v968 = v1087;
      v969 = v1088;
      v970 = v1041;
      v753[1] = v766;
      REMCDList.cleanUpAfterLocalObjectMerge()();
      sub_100271454(v971);
      sub_100010364(v324, v970, &unk_100938850, qword_100795AE0);
      if ((*(v969 + 48))(v970, 1, v968) == 1)
      {
        sub_1000050A4(v324, &unk_100938850, qword_100795AE0);
        v856 = v970;
        goto LABEL_513;
      }

      v972 = v1010;
      (*(v969 + 32))(v1010, v970, v968);
      v973 = swift_getKeyPath();
      v974 = v1085;
      (*(v969 + 16))(v1085, v972, v968);
      v244 = 1;
      (*(v969 + 56))(v974, 0, 1, v968);
      sub_1003E9FFC(v973, v974);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v969 + 8))(v972, v968);
LABEL_517:
      sub_1000050A4(v324, &unk_100938850, qword_100795AE0);
      v266 = 0;
      goto LABEL_515;
    case 0x2Fu:
      v234 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
      v235 = v1096;
      v236 = v1074;
      v237 = v1100;
      (*(v1096 + 32))(v1074, v187, v1100);
      v238 = v1081;
      v239 = v1079;
      v240 = v1082;
      (*(v1081 + 4))(v1079, &v187[v234], v1082);
      v241 = v1073;
      v238[2](v1073, v239, v240);
      sub_1003E83B8(v241, v1099);
      v242 = swift_getKeyPath();
      v243 = v1091;
      (*(v235 + 16))(v1091, v236, v237);
      v244 = 1;
      (*(v235 + 56))(v243, 0, 1, v237);
      sub_100390EB8(v242, v243);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v238[1])(v239, v240);
      (*(v235 + 8))(v1074, v237);
      goto LABEL_358;
    case 0x30u:
    case 0x37u:
      swift_storeEnumTagMultiPayload();
      v297 = swift_getKeyPath();
      sub_10000E72C(v297, 0x696E203D21204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);
      goto LABEL_42;
    case 0x31u:
      swift_storeEnumTagMultiPayload();
      v302 = swift_getKeyPath();
      sub_1003EA64C(v302, 1);
LABEL_42:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v303 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_416;
    case 0x32u:
    case 0x33u:
    case 0x35u:
    case 0x39u:
    case 0x3Bu:
    case 0x3Cu:
    case 0x40u:
      swift_storeEnumTagMultiPayload();
      goto LABEL_417;
    case 0x34u:
      swift_storeEnumTagMultiPayload();
      v224 = swift_getKeyPath();
      v225 = [objc_opt_self() siriFoundInAppsListID];
      v226 = [v225 uuid];

      v227 = v1091;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1096 + 56))(v227, 0, 1, v1100);
      sub_100390EB8(v224, v227);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v1104[2] >= v1104[3] >> 1)
      {
        v978 = v1104[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_298;
    case 0x36u:
      swift_storeEnumTagMultiPayload();
LABEL_298:
      v266 = 0;
      v244 = 0;
      goto LABEL_418;
    case 0x38u:
      swift_storeEnumTagMultiPayload();
      v663 = swift_getKeyPath();
      sub_10004D178(v663, 0);
      goto LABEL_415;
    case 0x3Au:
    case 0x3Du:
    case 0x3Fu:
    case 0x43u:
    case 0x44u:
      swift_storeEnumTagMultiPayload();
      v355 = swift_getKeyPath();
      sub_10000E72C(v355, 0x696E203D21204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);
      goto LABEL_415;
    case 0x3Eu:
      swift_storeEnumTagMultiPayload();
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v304 = v1066;
      Date.init()();
      v305 = v1084;
      sub_1003E8654(v304, v1084);
      v306 = v1088;
      v307 = *(v1088 + 8);
      v308 = v1087;
      v307(v304, v1087);
      v309 = swift_getKeyPath();
      v310 = v1085;
      (*(v306 + 16))(v1085, v305, v308);
      v244 = 1;
      (*(v306 + 56))(v310, 0, 1, v308);
      sub_1003EA818(v309, v310);

      v307(v305, v308);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v311 = swift_getKeyPath();
      sub_1003910E0(v311, 1);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
LABEL_102:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_358:
      v266 = 0;
      goto LABEL_418;
    case 0x41u:
      swift_storeEnumTagMultiPayload();
      v272 = swift_getKeyPath();
      sub_10004D350(v272, 0);
      goto LABEL_415;
    case 0x42u:
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v767 = swift_initStackObject();
      v1100 = sub_100050238(v767, 2);
      v769 = v768;
      v770 = swift_initStackObject();
      sub_100050238(v770, 3);
      v772 = v771;
      v773 = swift_getKeyPath();
      v774 = sub_10000E72C(v773, 0x4559203D3D204B25, 0xE900000000000053, &unk_100939F10, &qword_100797F30);

      *v772 = v774;
      v775 = swift_getKeyPath();
      v776 = sub_10000E72C(v775, 0x4559203D3D204B25, 0xE900000000000053, &unk_100939F10, &qword_100797F30);

      v772[1] = v776;
      v777 = swift_getKeyPath();
      v778 = sub_10000E72C(v777, 0x4559203D3D204B25, 0xE900000000000053, &unk_100939F10, &qword_100797F30);

      v772[2] = v778;
      REMCDList.cleanUpAfterLocalObjectMerge()();
      *v769 = sub_100024F24(v779);
      v769[1] = sub_100023A14(0);
      REMCDList.cleanUpAfterLocalObjectMerge()();
      return sub_10000C2B0(v780);
    default:
      v378 = *v187;
      if (v187[8])
      {
        v379 = 3;
      }

      else
      {
        v379 = 2;
      }

      LODWORD(v1095) = v379;
      swift_storeEnumTagMultiPayload();
      v380 = swift_getKeyPath();
      if (v378 >> 62)
      {
        v381 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v381 = *((v378 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v381)
      {
        v1093 = v380;
        v1101 = _swiftEmptyArrayStorage;
        sub_100253038(v381);
        if (v381 < 0)
        {
LABEL_531:
          __break(1u);
          goto LABEL_532;
        }

        v382 = 0;
        v383 = (v1096 + 56);
        do
        {
          if ((v378 & 0xC000000000000001) != 0)
          {
            v384 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v384 = *(v378 + 8 * v382 + 32);
          }

          v385 = v384;
          v386 = [v384 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v383)(v183, 0, 1, v1100);
          v387 = v1101;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, v387[2] + 1, 1);
            v387 = v1101;
          }

          v389 = v387[2];
          v388 = v387[3];
          if (v389 >= v388 >> 1)
          {
            sub_100253218(v388 > 1, v389 + 1, 1);
            v387 = v1101;
          }

          ++v382;
          v387[2] = v389 + 1;
          sub_100031B58(v183, v387 + ((*(v1098 + 80) + 32) & ~*(v1098 + 80)) + *(v1098 + 72) * v389, &unk_100939D90, "8\n\r");
        }

        while (v381 != v382);

        v380 = v1093;
      }

      else
      {

        v387 = _swiftEmptyArrayStorage;
      }

      sub_100016EF8(v380, v387, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(v1104[2]);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_436;
  }

  sub_100024F24(v223);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_10004F91C(v1104[2]);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000F5104(&qword_100945FF8, qword_1007A7100);
  v869 = swift_initStackObject();
  sub_100050238(v869, 2);
  *v870 = xmmword_100791300;
  REMCDList.cleanUpAfterLocalObjectMerge()();
  v872 = v871;
  v658 = swift_getKeyPath();
  v660 = sub_1003E74A4(v872);
  v1086 = v206;

  v661 = &unk_100946080;
  v662 = &unk_1007A7688;
LABEL_414:
  sub_100016EF8(v658, v660, v661, v662, &unk_100939F10, &qword_100797F30);
LABEL_415:

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_10004F91C(v1104[2]);
LABEL_416:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_417:
  v266 = 0;
  v244 = 1;
LABEL_418:
  LODWORD(v1098) = 1;
LABEL_419:
  LOBYTE(v271) = 1;
  goto LABEL_420;
}

id sub_10004D128@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 list];
  *a2 = result;
  return result;
}

uint64_t sub_10004D178(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D350(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10004D528@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentList];
  *a2 = result;
  return result;
}

id sub_10004D578@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentReminder];
  *a2 = result;
  return result;
}

id sub_10004D5C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 markedForDeletion];
  *a2 = result;
  return result;
}

id sub_10004D610@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 completed];
  *a2 = result;
  return result;
}

id sub_10004D6B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 inactive];
  *a2 = result;
  return result;
}

id sub_10004D6FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daIsEventOnlyContainer];
  *a2 = result;
  return result;
}

id sub_10004D744@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daIsNotificationsCollection];
  *a2 = result;
  return result;
}

id sub_10004D7D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recurrenceRules];
  *a2 = result;
  return result;
}

id sub_10004D8BC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 sharingStatus];
  *a2 = result;
  return result;
}

id sub_10004DA00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 flagged];
  *a2 = result;
  return result;
}

id sub_10004DA48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldCategorizeGroceryItems];
  *a2 = result;
  return result;
}

id sub_10004DB24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmStorage];
  *a2 = result;
  return result;
}

id sub_10004DC34@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 ckDirtyFlags];
  *a2 = result;
  return result;
}

uint64_t sub_10004DCBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_10004DD24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);

      goto LABEL_72;
    case 1u:
    case 0x21u:
      v50 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v51 = v50;
      goto LABEL_72;
    case 2u:
      v40 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v41 = v40;
      v42 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
      v43 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v43 - 8) + 16))(a1 + v42, a2 + v42, v43);
      goto LABEL_72;
    case 3u:
      *a1 = *a2;

      v63 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
      v64 = *(v63 + 48);
      v65 = _s10PredicatesO19CompletionPredicateOMa(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        *(a1 + v64) = *(a2 + v64);

        swift_storeEnumTagMultiPayload();
      }

      else if (EnumCaseMultiPayload > 1)
      {
        memcpy((a1 + v64), a2 + v64, *(*(v65 - 8) + 64));
      }

      else
      {
        v67 = type metadata accessor for Date();
        (*(*(v67 - 8) + 16))(a1 + v64, a2 + v64, v67);
        swift_storeEnumTagMultiPayload();
      }

      *(a1 + *(v63 + 64)) = *(a2 + *(v63 + 64));
      goto LABEL_72;
    case 4u:
      *a1 = *a2;

      v68 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
      v69 = *(v68 + 48);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      v70 = *(v12 + 48);
      if (v70(a2 + v69, 1, v11))
      {
        v71 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy((a1 + v69), a2 + v69, *(*(v71 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(a1 + v69, a2 + v69, v11);
        (*(v12 + 56))(a1 + v69, 0, 1, v11);
      }

      v10 = *(v68 + 64);
      if (v70(a2 + v10, 1, v11))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    case 5u:
      v48 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = a2[2];
      v49 = v48;
      goto LABEL_72;
    case 6u:
    case 7u:
    case 0x1Au:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      goto LABEL_72;
    case 8u:
    case 0x17u:
      v32 = *a2;
      *a1 = *a2;
      v33 = v32;
      v34 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
      v35 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v35 - 8) + 16))(a1 + v34, a2 + v34, v35);
      goto LABEL_72;
    case 9u:
      v79 = *a2;
      *a1 = *a2;
      v80 = v79;
      v81 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
      v82 = *(v81 + 48);
      v83 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v83 - 8) + 16))(a1 + v82, a2 + v82, v83);
      *(a1 + *(v81 + 64)) = *(a2 + *(v81 + 64));
      goto LABEL_72;
    case 0xAu:
      *a1 = *a2;

      v36 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
      v37 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v37 - 8) + 16))(a1 + v36, a2 + v36, v37);
      goto LABEL_72;
    case 0xBu:
    case 0xCu:
    case 0xFu:
      v58 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v58 - 8) + 16))(a1, a2, v58);
      goto LABEL_72;
    case 0xDu:
      v26 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v26 - 8) + 16))(a1, a2, v26);
      v27 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
      v28 = type metadata accessor for Date();
      (*(*(v28 - 8) + 16))(a1 + v27, a2 + v27, v28);
      goto LABEL_72;
    case 0xEu:
      v57 = type metadata accessor for Date();
      (*(*(v57 - 8) + 16))(a1, a2, v57);
      goto LABEL_72;
    case 0x10u:
      v87 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v88 = v87;
      v10 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    case 0x11u:
      v84 = type metadata accessor for Date();
      v85 = *(v84 - 8);
      if ((*(v85 + 48))(a2, 1, v84))
      {
        v86 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(a1, a2, *(*(v86 - 8) + 64));
      }

      else
      {
        (*(v85 + 16))(a1, a2, v84);
        (*(v85 + 56))(a1, 0, 1, v84);
      }

      v94 = sub_1000F5104(&qword_100946038, qword_1007A7578);
      *(a1 + *(v94 + 48)) = *(a2 + *(v94 + 48));
      goto LABEL_72;
    case 0x12u:
      v18 = *a2;
      v19 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v19;
      v20 = v18;
      v21 = v19;
      v22 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
      v23 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v23 - 8) + 16))(a1 + v22, a2 + v22, v23);
      goto LABEL_72;
    case 0x13u:
      *a1 = *a2;

      v38 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
      v39 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v39 - 8) + 16))(a1 + v38, a2 + v38, v39);
      goto LABEL_72;
    case 0x14u:
    case 0x16u:
    case 0x1Cu:
    case 0x20u:
    case 0x2Au:
    case 0x2Du:
      *a1 = *a2;

      goto LABEL_72;
    case 0x15u:
      *a1 = *a2;

      v24 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
      v25 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
      goto LABEL_72;
    case 0x18u:
    case 0x19u:
      v29 = *a2;
      v30 = a2[1];
      *a1 = v29;
      *(a1 + 8) = v30;

      v31 = v30;
      goto LABEL_72;
    case 0x1Bu:
      v90 = type metadata accessor for Date();
      v91 = *(*(v90 - 8) + 16);
      v91(a1, a2, v90);
      v92 = sub_1000F5104(&qword_100946030, qword_1007A74D0);
      v91(a1 + *(v92 + 48), (a2 + *(v92 + 48)), v90);
      goto LABEL_72;
    case 0x1Du:
      *a1 = *a2;

      v44 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v45 = *(v44 + 48);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      v46 = *(v12 + 48);
      if (v46(a2 + v45, 1, v11))
      {
        v47 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy((a1 + v45), a2 + v45, *(*(v47 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(a1 + v45, a2 + v45, v11);
        (*(v12 + 56))(a1 + v45, 0, 1, v11);
      }

      v10 = *(v44 + 64);
      if (!v46(a2 + v10, 1, v11))
      {
        goto LABEL_54;
      }

      goto LABEL_61;
    case 0x1Eu:
      *a1 = *a2;

      v59 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v60 = *(v59 + 48);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      v61 = *(v12 + 48);
      if (v61(a2 + v60, 1, v11))
      {
        v62 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy((a1 + v60), a2 + v60, *(*(v62 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(a1 + v60, a2 + v60, v11);
        (*(v12 + 56))(a1 + v60, 0, 1, v11);
      }

      v10 = *(v59 + 64);
      if (v61(a2 + v10, 1, v11))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    case 0x26u:
      v72 = *a2;
      *a1 = *a2;
      v73 = v72;
      v74 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
      v75 = *(v74 + 48);
      v76 = _s10PredicatesO19CompletionPredicateOMa(0);
      v77 = swift_getEnumCaseMultiPayload();
      if (v77 == 2)
      {
        *(a1 + v75) = *(a2 + v75);

        swift_storeEnumTagMultiPayload();
      }

      else if (v77 > 1)
      {
        memcpy((a1 + v75), a2 + v75, *(*(v76 - 8) + 64));
      }

      else
      {
        v78 = type metadata accessor for Date();
        (*(*(v78 - 8) + 16))(a1 + v75, a2 + v75, v78);
        swift_storeEnumTagMultiPayload();
      }

      *(a1 + *(v74 + 64)) = *(a2 + *(v74 + 64));
      goto LABEL_72;
    case 0x27u:
      *a1 = *a2;

      v10 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    case 0x28u:
      v6 = *a2;
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v7;
      v8 = v6;
      v9 = v7;
      v10 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    case 0x29u:
      *a1 = *a2;

      v10 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
LABEL_61:
        v93 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy((a1 + v10), a2 + v10, *(*(v93 - 8) + 64));
      }

      else
      {
LABEL_54:
        (*(v12 + 16))(a1 + v10, a2 + v10, v11);
        (*(v12 + 56))(a1 + v10, 0, 1, v11);
      }

      goto LABEL_72;
    case 0x2Cu:
      v89 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v89;
      *(a1 + 16) = *(a2 + 16);

      goto LABEL_72;
    case 0x2Eu:
      v15 = type metadata accessor for Date();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2, 1, v15))
      {
        v17 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(a1, a2, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v16 + 16))(a1, a2, v15);
        (*(v16 + 56))(a1, 0, 1, v15);
      }

      goto LABEL_72;
    case 0x2Fu:
      v54 = type metadata accessor for UUID();
      (*(*(v54 - 8) + 16))(a1, a2, v54);
      v55 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
      v56 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v56 - 8) + 16))(a1 + v55, a2 + v55, v56);
LABEL_72:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v13 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v13);
      break;
  }

  return result;
}

uint64_t sub_10004F55C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10093B458);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = Array.description.getter();
    v13 = a3;
    v14 = sub_10000668C(v11, v12, &v17);

    *(v9 + 4) = v14;
    a3 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "(daemon) Trigger DataAccess sync {accountIDs: %s}", v9, 0xCu);
    sub_10000607C(v10);
  }

  v17 = a1;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v15 = *(a2 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_dataAccessRequestsWriter);

  sub_10004F728(&v17);
  a3(0);
}

void sub_10004F728(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v3;
  v16[2] = *(a1 + 32);
  v17 = *(a1 + 48);
  if (qword_100936210 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100948430);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000668C(v1[2], v1[3], &v15);
    *(v7 + 12) = 2080;
    v8 = v1[5];
    v9 = sub_10047D4B8();
    v11 = sub_10000668C(v9, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Putting event {identifier: %s, reader: %s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v2[5];
  v13 = *(v12 + 48);
  if (v13)
  {
    v14 = *(v12 + 56);

    v13(v16);

    sub_10003E114(v13);
  }
}

uint64_t sub_10004F91C(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void sub_10004F944(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v8 = a1[1];
  v15 = *a1;
  v16 = v8;
  v17 = a1[2];
  v18 = *(a1 + 48);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a5();
  }

  else
  {
    if (qword_100936210 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100948430);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10000668C(a3, a4, &v14);
      _os_log_impl(&_mh_execute_header, v10, v11, "Dropping reader message because target has been deallocated {identifier: %s}", v12, 0xCu);
      sub_10000607C(v13);
    }
  }
}

void *sub_10004FAEC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_100253218(0, v11, 0);
    v12 = v22;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v19 = *(v13 + 56);
    v20 = v14;
    do
    {
      v20(v6, v15, v2);
      swift_dynamicCast();
      v22 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_100253218(v16 > 1, v17 + 1, 1);
        v12 = v22;
      }

      v12[2] = v17 + 1;
      sub_100031B58(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, &unk_100939D90, "8\n\r");
      v15 += v19;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_10004FD30(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v7;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_10004F944(v8, v2, v3, v4, v5);
}

uint64_t sub_10004FD78(void *a1, __int128 *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  v38 = a2[2];
  v39 = *(a2 + 48);
  v10 = a1[4];
  *v8 = v10;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    if (qword_100935C58 == -1)
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
  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10093DD90);
  swift_retain_n();
  sub_10005024C(&v36, v35);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_100050600(&v36);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_10000668C(a1[2], a1[3], v35);
    *(v15 + 12) = 2080;
    v16 = sub_100050B00();
    v18 = sub_10000668C(v16, v17, v35);

    *(v15 + 14) = v18;
    *(v15 + 22) = 1024;
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_unknownObjectRelease();
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    *(v15 + 24) = v20;

    _os_log_impl(&_mh_execute_header, v13, v14, "RDDARequestsQueue: Appending new request {identifier: %s, request: %s, hasDelegate: %{BOOL}d}.", v15, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_beginAccess();
  v21 = a1[8];
  sub_10005024C(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a1[8] = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_100050D94(0, *(v21 + 2) + 1, 1, v21);
    a1[8] = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = sub_100050D94((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  v25 = &v21[56 * v24];
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v25[80] = v39;
  *(v25 + 3) = v27;
  *(v25 + 4) = v28;
  *(v25 + 2) = v26;
  a1[8] = v21;
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    sub_100006654(v12, qword_100951C70);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_10000668C(a1[2], a1[3], v35);
      _os_log_impl(&_mh_execute_header, v30, v31, "RDDataAccess: Did add pending request {from: %{public}s}.", v32, 0xCu);
      sub_10000607C(v33);
    }

    sub_100050DF8(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005023C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t initializeWithCopy for RDDARequest(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_100050470(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

void *sub_10005032C(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_100050470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 2 || a7 == 1)
  {
  }

  else if (!a7)
  {
  }

  return result;
}

uint64_t sub_1000504F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100050558(uint64_t *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v5 = *a1;
  }

  else if (result <= 1)
  {
    v3 = type metadata accessor for Date();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

uint64_t sub_100050654(id a1, unint64_t a2, Class isa, uint64_t a4)
{
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v8 setAffectedStores:isa];

  [v8 setPredicate:a4];
  if (a2)
  {

    sub_100050AD0(v10);

    v29 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v22 = Array._bridgeToObjectiveC()().super.isa;

        [v8 setRelationshipKeyPathsForPrefetching:v22];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v27 = a1;
      v28 = v8;
      v12 = 0;
      v30 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v30)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v29 + 16))
          {
            goto LABEL_25;
          }

          v13 = *(a2 + 8 * v12 + 32);
        }

        v14 = a2;
        v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = v15;
        v18 = v16;

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          sub_100026EF4((v19 > 1), v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * v20];
        v21[4] = v17;
        v21[5] = v18;
        ++v12;
        a2 = v14;
        if (a1 == v8)
        {
          a1 = v27;
          v8 = v28;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v26._object = 0x80000001007EC120;
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v26);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100050AD0(v23);

      sub_1003FE084(&_swiftEmptySetSingleton, &unk_100939F10, &qword_100797F30, &unk_1009464A0, &qword_1007A8698);

      v24 = Array._bridgeToObjectiveC()().super.isa;

      [v8 setPropertiesToFetch:v24];
    }

    else
    {
    }

    return v8;
  }

  return result;
}

uint64_t sub_100050A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 2 || a7 == 1)
  {
  }

  else if (!a7)
  {
  }

  return result;
}

char *sub_100050C70(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_1000F5104(a5, a6);
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

uint64_t sub_100050DB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100050DF8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v1;
  aBlock[4] = sub_1000523D0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008FE540;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void *sub_100051088(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100051184(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_10037F9A0(v5, v6);
LABEL_10:

  return sub_10019BE3C(a1, v2);
}

void sub_100051184(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for REMObjectID_Codable();
    sub_1001A3B50(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
    Set.Iterator.init(_cocoa:)();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
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

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_10001B860();
      return;
    }

    while (1)
    {
      v18 = sub_10019EA98(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for REMObjectID_Codable();
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1000513B4(uint64_t a1)
{
  v2 = _s10PredicatesOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100051410(id *a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 0x14u:
    case 0x16u:
    case 0x1Cu:
    case 0x20u:
    case 0x2Au:
    case 0x2Du:
      v3 = *a1;
      goto LABEL_7;
    case 1u:
    case 5u:
    case 6u:
    case 7u:
    case 0x1Au:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
      v2 = *a1;
      goto LABEL_3;
    case 2u:

      v36 = &qword_10093C920;
      v37 = qword_1007AC750;
      goto LABEL_50;
    case 3u:
      v17 = *a1;

      v18 = &qword_100946068;
      v19 = &unk_1007A7650;
      goto LABEL_30;
    case 4u:
      v24 = *a1;

      v12 = &qword_100946060;
      v13 = &qword_1007A7648;
      goto LABEL_25;
    case 8u:
    case 0x17u:

      v8 = &unk_100942AF0;
      v9 = qword_1007A7520;
      goto LABEL_40;
    case 9u:

      v8 = &qword_100946058;
      v9 = qword_1007A75D0;
      goto LABEL_40;
    case 0xAu:
      v21 = *a1;

      v8 = &qword_100946050;
      v9 = &qword_1007B0450;
      goto LABEL_40;
    case 0xBu:
    case 0xCu:
    case 0xFu:
      v4 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      goto LABEL_22;
    case 0xDu:
      v39 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v39 - 8) + 8))(a1, v39);
      v29 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
      goto LABEL_48;
    case 0xEu:
      v4 = type metadata accessor for Date();
LABEL_22:
      v6 = *(*(v4 - 8) + 8);
      v23 = v4;
      v7 = a1;
      goto LABEL_53;
    case 0x10u:

      v31 = &qword_100946040;
      v32 = &qword_1007A75B8;
      goto LABEL_42;
    case 0x11u:
    case 0x2Eu:
      v5 = type metadata accessor for Date();
      v42 = *(v5 - 8);
      if ((*(v42 + 48))(a1, 1, v5))
      {
        return;
      }

      v6 = *(v42 + 8);
      v7 = a1;
      goto LABEL_46;
    case 0x12u:

      v36 = &qword_100938A98;
      v37 = &qword_1007A7570;
LABEL_50:
      v29 = *(sub_1000F5104(v36, v37) + 64);
      goto LABEL_51;
    case 0x13u:
      v22 = *a1;

      v8 = &qword_10093A560;
      v9 = &qword_100797768;
      goto LABEL_40;
    case 0x15u:
      v38 = *a1;

      v8 = &qword_100941B90;
      v9 = &unk_1007A7560;
      goto LABEL_40;
    case 0x18u:
    case 0x19u:
      v10 = *a1;

      v2 = a1[1];
LABEL_3:

      return;
    case 0x1Bu:
      v35 = type metadata accessor for Date();
      v44 = *(*(v35 - 8) + 8);
      (v44)((v35 - 8), a1, v35);
      v7 = (a1 + *(sub_1000F5104(&qword_100946030, qword_1007A74D0) + 48));
      v23 = v35;
      v6 = v44;
      goto LABEL_53;
    case 0x1Du:
    case 0x1Eu:
      v11 = *a1;

      v12 = &qword_100946028;
      v13 = &unk_1007A7498;
LABEL_25:
      v25 = sub_1000F5104(v12, v13);
      v26 = *(v25 + 48);
      v5 = type metadata accessor for Date();
      v43 = *(v5 - 8);
      v27 = *(v43 + 48);
      if (!v27(a1 + v26, 1, v5))
      {
        (*(v43 + 8))(a1 + v26, v5);
      }

      v28 = *(v25 + 64);
      if (!v27(a1 + v28, 1, v5))
      {
        goto LABEL_45;
      }

      return;
    case 0x26u:

      v18 = &unk_100939F00;
      v19 = &unk_1007972A0;
LABEL_30:
      v29 = *(sub_1000F5104(v18, v19) + 48);
      _s10PredicatesO19CompletionPredicateOMa(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v41 = *(a1 + v29);
LABEL_7:
      }

      else if (EnumCaseMultiPayload <= 1)
      {
LABEL_48:
        v40 = type metadata accessor for Date();
LABEL_52:
        v23 = v40;
        v6 = *(*(v40 - 8) + 8);
        v7 = (a1 + v29);
LABEL_53:

        v6(v7, v23);
      }

      return;
    case 0x27u:
      v33 = *a1;

      v15 = &qword_100946018;
      v16 = qword_1007A71C8;
      goto LABEL_35;
    case 0x28u:

      v31 = &qword_100946010;
      v32 = &qword_1007A71C0;
LABEL_42:
      v28 = *(sub_1000F5104(v31, v32) + 64);
      goto LABEL_43;
    case 0x29u:
      v14 = *a1;

      v15 = &qword_100946008;
      v16 = &qword_1007A71B8;
LABEL_35:
      v28 = *(sub_1000F5104(v15, v16) + 48);
LABEL_43:
      v5 = type metadata accessor for Date();
      v43 = *(v5 - 8);
      if ((*(v43 + 48))(a1 + v28, 1, v5))
      {
        return;
      }

LABEL_45:
      v6 = *(v43 + 8);
      v7 = (a1 + v28);
LABEL_46:
      v23 = v5;
      goto LABEL_53;
    case 0x2Cu:
      v20 = a1[1];
      goto LABEL_7;
    case 0x2Fu:
      v34 = type metadata accessor for UUID();
      (*(*(v34 - 8) + 8))(a1, v34);
      v8 = &qword_100945FF0;
      v9 = &qword_1007AC720;
LABEL_40:
      v29 = *(sub_1000F5104(v8, v9) + 48);
LABEL_51:
      v40 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      goto LABEL_52;
    default:
      return;
  }
}

uint64_t sub_100051AE4(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v43);
  v42 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v41);
  v50 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000523D8();
  v9 = *(v8 + 16);
  if (v9)
  {
    v39 = (v2 + 8);
    v40 = v52;
    v38 = (v5 + 8);
    v37[1] = v8;
    v10 = (v8 + 80);
    v11 = v42;
    do
    {
      v17 = *(v10 - 6);
      v18 = *(v10 - 5);
      v19 = *(v10 - 4);
      v20 = *(v10 - 3);
      v21 = *(v10 - 2);
      v22 = *(v10 - 1);
      if (*v10)
      {
        v23 = *(v10 - 6);
        v24 = *(v10 - 5);
        v25 = *(v10 - 4);
        v26 = *(v10 - 3);
        v27 = *(v10 - 2);
        v28 = *(v10 - 1);
        if (*v10 == 1)
        {
          sub_100050470(v23, v24, v25, v26, v27, v28, 1);

          sub_100552444(1, v17, v18, v19, v20, v21, v22);
          v29 = v17;
          v30 = v18;
          v31 = v19;
          v32 = v20;
          v33 = v21;
          v34 = v22;
          v35 = 1;
        }

        else
        {
          sub_100050470(v23, v24, v25, v26, v27, v28, 2);

          sub_100552444(2, v17, v18, v19, v20, v21, v22);
          v29 = v17;
          v30 = v18;
          v31 = v19;
          v32 = v20;
          v33 = v21;
          v34 = v22;
          v35 = 2;
        }

        sub_100050A48(v29, v30, v31, v32, v33, v34, v35);
      }

      else
      {
        sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
        sub_100050470(v17, v18, v19, v20, v21, v22, 0);

        v48 = static OS_dispatch_queue.main.getter();
        v12 = swift_allocObject();
        v49 = v21;
        v13 = v44;
        *(v12 + 16) = v17;
        *(v12 + 24) = v13;
        v52[2] = sub_100052BD4;
        v52[3] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v52[0] = sub_100019200;
        v52[1] = &unk_1008FE590;
        v46 = _Block_copy(aBlock);

        v47 = v19;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        v45 = sub_10000AB38();
        sub_1000F5104(&unk_100939E50, &unk_100791AD0);
        sub_10000AB90();
        v14 = v43;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v15 = v46;
        v16 = v48;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v15);

        sub_100050A48(v17, v18, v47, v20, v49, v22, 0);
        (*v39)(v11, v14);
        (*v38)(v50, v41);
      }

      v10 += 56;
      --v9;
    }

    while (v9);
  }
}

void sub_100051FA4(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_100051FE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100949BB0);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136446210;
      v8 = *&v3[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
      v26 = *&v3[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
      *v27 = v8;
      *&v27[14] = *&v3[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30];
      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v9 = swift_allocObject();
      v10 = v9;
      *(v9 + 16) = xmmword_100791340;
      if (((*&v27[28] << 32) & 0xC10000000000) == 0x810000000000)
      {
        v11 = 0xD000000000000011;
      }

      else
      {
        v11 = 0;
      }

      if (((*&v27[28] << 32) & 0xC10000000000) == 0x810000000000)
      {
        v12 = 0x80000001007EECE0;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      *(v9 + 56) = &type metadata for String;
      v13 = sub_100006600();
      v10[8] = v13;
      v10[4] = v11;
      v10[5] = v12;
      v14 = sub_1000063E8();
      v10[12] = &type metadata for String;
      v10[13] = v13;
      v10[9] = v14;
      v10[10] = v15;
      v16 = String.init(format:_:)();
      v18 = sub_10000668C(v16, v17, aBlock);

      *(v6 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v4, v5, "Connection was invalidated {clientIdentity: %{public}s}", v6, 0xCu);
      sub_10000607C(v7);
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_listenerQueue);
      v21 = v19;
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      *(v22 + 24) = v21;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_100052BDC;
      *(v23 + 24) = v22;
      aBlock[4] = sub_1000529DC;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F160;
      aBlock[3] = &unk_1008F45F0;
      v24 = _Block_copy(aBlock);
      v3 = v3;
      swift_unknownObjectRetain();

      dispatch_sync(v20, v24);
      _Block_release(v24);
      LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

      swift_unknownObjectRelease();

      if ((v20 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_100052380()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000523D8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[4];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_100935C58 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10093DD90);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_10000668C(v1[2], v1[3], &v17);
    *(v12 + 12) = 2048;
    swift_beginAccess();
    *(v12 + 14) = *(v1[8] + 16);
    *(v12 + 22) = 1024;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    *(v12 + 24) = v14;

    _os_log_impl(&_mh_execute_header, v10, v11, "RDDARequestsQueue: Draining {identifier: %s, count: %ld, hasDelegate: %{BOOL}d}.", v12, 0x1Cu);
    sub_10000607C(v13);
  }

  else
  {
  }

  swift_beginAccess();
  result = v1[8];
  v1[8] = _swiftEmptyArrayStorage;
  return result;
}

void sub_100052690(void *a1, char *a2)
{
  if (qword_100935AF0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10093A260);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Client connection closed: %@", v8, 0xCu);
    sub_100039860(v9);
  }

  v11 = OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnections;
  swift_beginAccess();
  v12 = sub_100052BE4(v5);
  swift_endAccess();

  v13 = *&a2[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnectionDidClosePassthroughSubject];
  v20 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  v21 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 8];
  v22 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
  v23 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 24];
  v24 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 32];
  v26 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44];
  v25 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 40];
  sub_10000C71C(v20, v21, v22, v23, v24, v25 | (v26 << 32));
  PassthroughSubject.send(_:)();
  sub_10000CC4C(v20, v21, v22, v23, v24, v25 | (v26 << 32));
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    v18 = *&a2[v11];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *(v18 + 16);
    }

    *(v17 + 4) = v19;

    _os_log_impl(&_mh_execute_header, v15, v16, "Connection count: %ld", v17, 0xCu);
  }

  else
  {

    v15 = v14;
  }
}

uint64_t sub_100052954()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100052994(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return _swift_deallocObject(v1, 32, 7);
}

void sub_1000529E4()
{
  if (qword_100936860 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100951C70);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    v5 = Array.description.getter();
    v7 = sub_10000668C(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "RDDataAccess RDDARequest.updateContentsOfAllFolders {accountIDs: %{public}s}", v3, 0xCu);
    sub_10000607C(v4);
  }

  v8 = [objc_opt_self() sharedManager];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v8 updateContentsOfAllFoldersForAccountIDs:isa];
}

void sub_100052BD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000529E4();
}

uint64_t sub_100052BE4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1001A1548(v4, v6, sub_10037FBE4, type metadata accessor for RDClientConnection);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for RDClientConnection();
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B93C(&qword_10093A810, &unk_100797D70);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_100052DA4(v13);
  result = v20;
  *v10 = v21;
  return result;
}

unint64_t sub_100052DA4(unint64_t result)
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
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100052F58()
{
  v0 = type metadata accessor for REM_os_activity.Scope();
  v33 = *(v0 - 8);
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REM_os_activity.Options();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for REM_os_activity();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, &unk_1009359A0);
  sub_1000E9B88();
  sub_1000E9D7C(65537);
  static REM_os_activity.Options.ifNonePresent.getter();
  REM_os_activity.init(_:dso:options:)();
  REM_os_activity.Scope.init()();
  REM_os_activity.Scope.enter(_:)();
  v36 = 0;
  v35.rlim_cur = 0;
  v35.rlim_max = 0;
  getrlimit(8, &v35);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v0;
    v37 = v14;
    *v13 = 136446466;
    swift_beginAccess();
    rlim_cur = v35.rlim_cur;
    sub_1000F508C();
    v15 = BinaryInteger.description.getter();
    v17 = sub_10000668C(v15, v16, &v37);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    rlim_cur = v35.rlim_max;
    v18 = BinaryInteger.description.getter();
    v20 = sub_10000668C(v18, v19, &v37);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "getrlimit(RLIMIT_NOFILE) = (%{public}s, %{public}s)", v13, 0x16u);
    swift_arrayDestroy();
    v0 = v30;
  }

  v21 = objc_autoreleasePoolPush();
  sub_1000EA72C(&v36, &v37);
  objc_autoreleasePoolPop(v21);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Notifying daemon did launch", v24, 2u);
  }

  notify_post(_REMStoreDaemonDidLaunchNotificationName);
  REM_os_activity.Scope.leave()();
  v25 = v36;
  do
  {
    v26 = objc_autoreleasePoolPush();
    v27 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 86400.0, 1u);
    v28 = v25 & gDADMainRunloopStopped;
    objc_autoreleasePoolPop(v26);
  }

  while ((v28 & 1) == 0 && (v27 - 1) > 1);
  (*(v33 + 8))(v3, v0);
  (*(v31 + 8))(v9, v32);
}

void sub_100053464()
{
  v1 = OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction;
  if (*(v0 + OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction))
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction);
    swift_unknownObjectRetain();
    if (os_transaction_copy_description())
    {
      if (qword_1009362C0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100006654(v4, qword_100949BB0);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v13 = v8;
        *v7 = 136315138;
        v9 = String.init(cString:)();
        v11 = sub_10000668C(v9, v10, &v13);

        *(v7 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v5, v6, "os_transaction RELEASE {name: %s}", v7, 0xCu);
        sub_10000607C(v8);
      }
    }

    swift_unknownObjectRelease();
    v12 = *(v2 + v1);
    *(v2 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

id sub_100053730()
{
  v1 = v0;
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094C8A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deallocating RDXPCStorePerformer", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_sharingObserverForAccountID;
  swift_beginAccess();
  v7 = *&v1[v6];
  *&v1[v6] = &_swiftEmptyDictionarySingleton;

  v9.receiver = v1;
  v9.super_class = type metadata accessor for RDXPCStorePerformer();
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t sub_100053954(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 32));
  a2(*(v3 + 48));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1000539C0()
{
  v1 = *(v0 + 16);

  sub_10000CC4C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64) | (*(v0 + 68) << 32));

  return _swift_deallocObject(v0, 70, 7);
}

void sub_100053A1C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100053A94(int a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {
    v4 = 2 * (a1 == 1);
  }

  else
  {
    v4 = 1;
  }

  return v2(v4);
}

uint64_t sub_100053AD0(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  os_transaction_create();
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100942610);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction INIT {name: com.apple.remindd._MobileKeybagStateProvider.mkbEventRegistration.callback}", v10, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v12 = Strong;
  v13 = *(Strong + 56);
  *v6 = v13;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v13)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        *(v12 + 97) = 1;
        sub_100346D90();
      }

      else
      {
        v16 = sub_100053D2C();
        v17 = *(v12 + 96);
        *(v12 + 96) = v16;
        sub_100053D84(v17);
      }
    }

LABEL_12:
    sub_10005476C();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_100053D2C()
{
  if (qword_100935EF8 != -1)
  {
    swift_once();
  }

  v0 = MKBGetDeviceLockState();
  if (v0 < 8)
  {
    return v0 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100053D84(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  __chkstk_darwin(v4);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  v7 = *(v62 + 64);
  __chkstk_darwin(v64);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = os_transaction_create();
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100942610);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: com.apple.remindd._MobileKeybagStateProvider.eventQueue_lockState.didSet}", v18, 2u);
  }

  v19 = *(v1 + 56);
  *v14 = v19;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v19)
  {
    v22 = a1;
    v23 = *(v1 + 96);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    if (v23 == v22)
    {
      if (v26)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "os_transaction RELEASE {name: com.apple.remindd._MobileKeybagStateProvider.eventQueue_lockState.didSet}", v27, 2u);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        v28 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v28 = 136446466;
        if (v22 <= 3)
        {
          v38 = 0xE700000000000000;
          v39 = 0xE600000000000000;
          v40 = 0x64656B636F6CLL;
          if (v22 != 2)
          {
            v40 = 0x676E696B636F6CLL;
            v39 = 0xE700000000000000;
          }

          v41 = 0x64656B636F6C6E75;
          if (v22)
          {
            v38 = 0xE800000000000000;
          }

          else
          {
            v41 = 0x6E776F6E6B6E75;
          }

          if (v22 <= 1)
          {
            v35 = v41;
          }

          else
          {
            v35 = v40;
          }

          if (v22 <= 1)
          {
            v36 = v38;
          }

          else
          {
            v36 = v39;
          }
        }

        else
        {
          v29 = 0x5065636172476E69;
          v30 = 0xED0000646F697265;
          v31 = 0x7472657373416E69;
          v32 = 0xED000079616C6544;
          if (v22 != 7)
          {
            v31 = 0x6C6E556F69426E69;
            v32 = 0xEB000000006B636FLL;
          }

          if (v22 != 6)
          {
            v29 = v31;
            v30 = v32;
          }

          v33 = 0xE800000000000000;
          v34 = 0x64656C6261736964;
          if (v22 != 4)
          {
            v34 = 0xD000000000000010;
            v33 = 0x80000001007F57C0;
          }

          if (v22 <= 5)
          {
            v35 = v34;
          }

          else
          {
            v35 = v29;
          }

          if (v22 <= 5)
          {
            v36 = v33;
          }

          else
          {
            v36 = v30;
          }
        }

        v42 = sub_10000668C(v35, v36, aBlock);

        *(v28 + 4) = v42;
        *(v28 + 12) = 2082;
        if (v23 <= 3)
        {
          v51 = 0xE700000000000000;
          v52 = 0xE600000000000000;
          v53 = 0x64656B636F6CLL;
          if (v23 != 2)
          {
            v53 = 0x676E696B636F6CLL;
            v52 = 0xE700000000000000;
          }

          v54 = 0x64656B636F6C6E75;
          if (v23)
          {
            v51 = 0xE800000000000000;
          }

          else
          {
            v54 = 0x6E776F6E6B6E75;
          }

          if (v23 <= 1)
          {
            v49 = v54;
          }

          else
          {
            v49 = v53;
          }

          if (v23 <= 1)
          {
            v50 = v51;
          }

          else
          {
            v50 = v52;
          }
        }

        else
        {
          v43 = 0x5065636172476E69;
          v44 = 0xED0000646F697265;
          v45 = 0x7472657373416E69;
          v46 = 0xED000079616C6544;
          if (v23 != 7)
          {
            v45 = 0x6C6E556F69426E69;
            v46 = 0xEB000000006B636FLL;
          }

          if (v23 != 6)
          {
            v43 = v45;
            v44 = v46;
          }

          v47 = 0xE800000000000000;
          v48 = 0x64656C6261736964;
          if (v23 != 4)
          {
            v48 = 0xD000000000000010;
            v47 = 0x80000001007F57C0;
          }

          if (v23 <= 5)
          {
            v49 = v48;
          }

          else
          {
            v49 = v43;
          }

          if (v23 <= 5)
          {
            v50 = v47;
          }

          else
          {
            v50 = v44;
          }
        }

        v37 = v66;
        v55 = sub_10000668C(v49, v50, aBlock);

        *(v28 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v24, v25, "_MobileKeybagStateProvider: Transition: %{public}s -> %{public}s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v37 = v66;
      }

      v56 = *(v2 + 64);
      v57 = swift_allocObject();
      *(v57 + 16) = v2;
      *(v57 + 24) = v23;
      *(v57 + 32) = v67;
      aBlock[4] = sub_100054944;
      aBlock[5] = v57;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008EE9C0;
      v58 = _Block_copy(aBlock);
      v59 = v56;

      swift_unknownObjectRetain();
      static DispatchQoS.unspecified.getter();
      v68 = _swiftEmptyArrayStorage;
      sub_10005464C(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
      v60 = v63;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v58);
      swift_unknownObjectRelease();

      (*(v65 + 8))(v60, v37);
      (*(v62 + 8))(v9, v64);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100054604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005464C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100054694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000546DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100054724(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10005476C()
{
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100942610);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd._MobileKeybagStateProvider.mkbEventRegistration.callback}", v2, 2u);
  }
}

void sub_100054854(uint64_t a1)
{
  v1 = *(a1 + 80);
  PassthroughSubject.send(_:)();
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100942610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "os_transaction RELEASE {name: com.apple.remindd._MobileKeybagStateProvider.eventQueue_lockState.didSet}", v5, 2u);
  }
}

void sub_100054944()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  sub_100054854(*(v0 + 16));
}

uint64_t sub_10005495C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1000549E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000549F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100054A58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054AA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054AD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054B14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100054B6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100054B94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054BD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100054C44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054C7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054CC4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054CFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054D3C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054E00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054EE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t sub_100054F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100055068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000551B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10005525C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100055300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100055430(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100055570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000556AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t _s7remindd14MigrateRequestV6OptionOwet_0(uint64_t a1, int a2)
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

uint64_t _s7remindd14MigrateRequestV6OptionOwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_100055828(uint64_t a1)
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

uint64_t sub_100055844(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100055864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000558DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100055958(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for UnknownStorage();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_100055ADC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for UnknownStorage();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100055CA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 36)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100055D4C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 36)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100055DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100055F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100056068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000560D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100056144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 <= 1)
    {
      return 0;
    }

    else
    {
      return v4 ^ 0xFF;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000561E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = ~a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s7remindd37RDAutoCategorizerPromptInputProcessorV37RDAutoCategorizationReminderWithIndexVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_100056310()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056360()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v6);

  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return _swift_deallocObject(v0, ((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10005647C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10005670C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056744()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100056784@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 lastAccessedSinceReferenceDate];
  *a2 = result;
  return result;
}

uint64_t sub_1000567CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056804()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056844()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005687C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000569AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100056ADC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056B2C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056B6C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056BAC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100056BF4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056C3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056C74()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056CBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056CF8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056D78()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056DB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056DF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056E30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *_s7remindd22RDSavedTemplateSectionVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

id sub_100056EDC()
{
  v1 = [*v0 account];

  return v1;
}

uint64_t sub_100056F14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056FC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056FF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100057050@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 markedForDeletion];
  *a2 = result;
  return result;
}

uint64_t sub_1000570E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057124()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000571E8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000572E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000573BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000573F8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1000574A8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000574F0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057530()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057568()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 24);

  v8 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100057674()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v7);

  v12 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v3 | 7);
}

uint64_t sub_100057768()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000577A4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  v11 = *(v0 + v8 + 8);

  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16, v3 | 7);
}

uint64_t sub_1000578F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

id sub_10005795C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

uint64_t sub_1000579AC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  v11 = *(v0 + v6 + 8);

  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16, v3 | 7);
}

uint64_t sub_100057AFC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100057B6C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057BBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057E08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_100057ED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_100057F94()
{
  v1 = type metadata accessor for REMUrgentReminder();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100058074()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000580D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005810C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005814C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100058288(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

id sub_1000583C4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 ckDirtyFlags];
  *a2 = result;
  return result;
}

uint64_t sub_100058424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100058554(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10005868C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000586C4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10005870C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 activityTypeRawValue];
  *a2 = result;
  return result;
}

uint64_t sub_100058764(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100058810(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100058900()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058978()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000589F0()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100058A38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058A70()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058AA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058AF0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058B38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058BB0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058BF8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100058C40()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058C78()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100058CC0()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100058D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 56) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100058E9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 56) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000592E0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100059328()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100059360()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059398()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

BOOL sub_1000593F4(id *a1)
{
  v1 = [*a1 name];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id sub_100059444@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

uint64_t sub_100059580()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000595B8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000595F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100059630()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100059670()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000596B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100059778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100059848@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  v4 = v2;
}

uint64_t sub_100059884()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000598C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10005998C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

id sub_100059AC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_100059B10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

id sub_100059B70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

id sub_100059BC0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 displayDateIsAllDay];
  *a2 = result;
  return result;
}

uint64_t sub_100059C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100059C94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100059D18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100059DC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100059E78()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059EB0()
{
  sub_10000607C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

id sub_100059EFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_100059F6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 smartList];
  *a2 = result;
  return result;
}

id sub_100059FBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 markedForDeletion];
  *a2 = result;
  return result;
}

id sub_10005A004@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

uint64_t sub_10005A1D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005A224()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10005A2CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10005A33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RDXPCEventStream.Token(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005A3FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RDXPCEventStream.Token(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005A4BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10005A5A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_10005A644@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 remObjectID];
  *a2 = result;
  return result;
}

uint64_t sub_10005A688()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10005A6E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

uint64_t sub_10005A760()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005A910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_10005A9E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10005AAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F5104(&qword_10093F968, &unk_10079E200);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 60);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 68));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10005ABD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F5104(&qword_10093F968, &unk_10079E200);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 68)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 60);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10005ACF8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005AD30()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10005AD68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005ADB0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

id sub_10005AE98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderedIdentifierMap];
  *a2 = result;
  return result;
}

uint64_t sub_10005AEE8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005AF30()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005AF68()
{
  sub_10000607C(v0 + 2);
  if (v0[10])
  {
    sub_10000607C(v0 + 7);
  }

  v1 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10005AFB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005AFF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10005B034@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarm];
  *a2 = result;
  return result;
}

uint64_t sub_10005B084()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10005B0C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarm];
  *a2 = result;
  return result;
}

id sub_10005B114@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dueDateResolutionTokenAsNonce];
  *a2 = v4;
  return result;
}

id sub_10005B18C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_10005B20C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

id sub_10005B268@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 list];
  *a2 = result;
  return result;
}

id sub_10005B2C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daIsEventOnlyContainer];
  *a2 = result;
  return result;
}

id sub_10005B33C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daIsNotificationsCollection];
  *a2 = result;
  return result;
}

id sub_10005B39C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 inactive];
  *a2 = result;
  return result;
}

id sub_10005B408@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 completed];
  *a2 = result;
  return result;
}

id sub_10005B488@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExtraneous];
  *a2 = result;
  return result;
}

id sub_10005B50C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 markedForDeletion];
  *a2 = result;
  return result;
}

id sub_10005B580@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 ckDirtyFlags];
  *a2 = result;
  return result;
}

uint64_t sub_10005B628()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005B660()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005B79C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10029EB68();
  *a2 = result;
  return result;
}

uint64_t sub_10005B88C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005B8D4()
{
  v1 = v0[2];

  sub_10000607C(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10005B92C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  sub_10000607C((v0 + v5));
  v8 = *(v0 + v6);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}